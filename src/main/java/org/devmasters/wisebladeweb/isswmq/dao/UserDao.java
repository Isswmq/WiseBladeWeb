package org.devmasters.wisebladeweb.isswmq.dao;

import lombok.SneakyThrows;
import org.devmasters.wisebladeweb.isswmq.entity.Role;
import org.devmasters.wisebladeweb.isswmq.entity.User;
import org.devmasters.wisebladeweb.isswmq.util.ConnectionManager;

import java.util.Optional;

import static java.sql.Statement.*;

public class UserDao implements Dao<Integer, User> {
    private static final UserDao INSTANCE = new UserDao();

    private static final String SAVE_SQL = "INSERT INTO wisebladeweb.wisebladelog.users (name, email, password, role) VALUES (?, ?, ?, ?)";

    @Override
    public Optional<User> findById(Integer id) {
        return Optional.empty();
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

    public static UserDao getInstance(){
        return INSTANCE;
    }
}
