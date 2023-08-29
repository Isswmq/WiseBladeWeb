package org.devmasters.wisebladeweb.isswmq.mapper;

import org.devmasters.wisebladeweb.isswmq.dto.CreateUserDto;
import org.devmasters.wisebladeweb.isswmq.entity.User;

public class CreateUserMapper implements Mapper<CreateUserDto, User> {
    private static final CreateUserMapper INSTANCE = new CreateUserMapper();

    @Override
    public User mapFrom(CreateUserDto object) {
        return User.builder()
                .name(object.getName())
                .email(object.getEmail())
                .password(object.getPassword())
                .build();
    }

    public static CreateUserMapper getInstance(){
        return INSTANCE;
    }
}
