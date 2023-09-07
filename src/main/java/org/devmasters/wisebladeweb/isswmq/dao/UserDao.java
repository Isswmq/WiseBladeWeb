package org.devmasters.wisebladeweb.isswmq.dao;

import lombok.SneakyThrows;
import org.devmasters.wisebladeweb.isswmq.entity.Role;
import org.devmasters.wisebladeweb.isswmq.entity.User;
import org.devmasters.wisebladeweb.isswmq.util.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

import static java.sql.Statement.*;

public class UserDao implements Dao<Integer, User> {
    private static final UserDao INSTANCE = new UserDao();

    private static final String SAVE_SQL = "INSERT INTO wisebladeweb.wisebladelog.users (name, email, password, role) VALUES (?, ?, ?, ?)";
    private static final String GET_BY_EMAIL_AND_PASSWORD = "SELECT * FROM wisebladeweb.wisebladelog.users WHERE email = ? AND password = ?";

    @SneakyThrows
    public Optional<User> findByEmailAndPassword(String email, String password) {
        try (var connection = ConnectionManager.get()){
            var statement = connection.prepareStatement(GET_BY_EMAIL_AND_PASSWORD);
            statement.setString(1, email);
            statement.setString(2, password);

            var resultSet = statement.executeQuery();
            User user = null;
            if(resultSet.next()){
                user = buildEntity(resultSet);
            }

            return Optional.ofNullable(user);
        }
    }

    @Override
    @SneakyThrows
    public User save(User entity) {
        try (var connection = ConnectionManager.get()){
            var statement = connection.prepareStatement(SAVE_SQL, RETURN_GENERATED_KEYS);
            statement.setObject(1, entity.getName());
            statement.setObject(2, entity.getEmail());
            statement.setObject(3, entity.getPassword());
            statement.setObject(4, String.valueOf(Role.USER));

            statement.executeUpdate();

            var generatedKeys = statement.getGeneratedKeys();
            generatedKeys.next();
            entity.setId(generatedKeys.getObject("id", Integer.class));

            return entity;
        }
    }


    private User buildEntity(ResultSet resultSet) throws SQLException {
        return User.builder()
                .id(resultSet.getObject("id", Integer.class))
                .name(resultSet.getObject("name", String.class))
                .email(resultSet.getObject("email", String.class))
                .password(resultSet.getObject("password", String.class))
                .role(Role.valueOf(resultSet.getObject("role", String.class)))
                .build();
    }

    public static UserDao getInstance(){
        return INSTANCE;
    }
}
