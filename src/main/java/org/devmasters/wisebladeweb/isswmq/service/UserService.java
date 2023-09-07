package org.devmasters.wisebladeweb.isswmq.service;


import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.devmasters.wisebladeweb.isswmq.dao.UserDao;
import org.devmasters.wisebladeweb.isswmq.dto.CreateUserDto;
import org.devmasters.wisebladeweb.isswmq.dto.UserDto;
import org.devmasters.wisebladeweb.isswmq.entity.User;
import org.devmasters.wisebladeweb.isswmq.mapper.CreateUserMapper;
import org.devmasters.wisebladeweb.isswmq.mapper.UserMapper;

import java.util.Optional;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {

    private static final UserService INSTANCE = new UserService();

    private final UserDao userDao = UserDao.getInstance();
    private final CreateUserMapper createUserMapper = CreateUserMapper.getInstance();
    private final UserMapper userMapper = UserMapper.getInstance();

    public Integer create(CreateUserDto userDto){
        //validation
        var userEntity = createUserMapper.mapFrom(userDto);
        userDao.save(userEntity);
        return userEntity.getId();

    }

    public Optional<UserDto> login(String email, String password){
        return userDao.findByEmailAndPassword(email, password)
                .map(userMapper::mapFrom);
    }

    public static UserService getInstance(){
        return INSTANCE;
    }
}
