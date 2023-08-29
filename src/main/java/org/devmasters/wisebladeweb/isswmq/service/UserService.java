package org.devmasters.wisebladeweb.isswmq.service;


import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.devmasters.wisebladeweb.isswmq.dao.UserDao;
import org.devmasters.wisebladeweb.isswmq.dto.CreateUserDto;
import org.devmasters.wisebladeweb.isswmq.entity.User;
import org.devmasters.wisebladeweb.isswmq.mapper.CreateUserMapper;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {

    private static final UserService INSTANCE = new UserService();

    private final UserDao userDao = UserDao.getInstance();
    private final CreateUserMapper userMapper = CreateUserMapper.getInstance();

    public Integer create(CreateUserDto userDto){
        //validation
        var userEntity = userMapper.mapFrom(userDto);
        userDao.save(userEntity);
        return userEntity.getId();

    }

    public static UserService getInstance(){
        return INSTANCE;
    }
}
