package org.devmasters.wisebladeweb.isswmq.mapper;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.devmasters.wisebladeweb.isswmq.dto.UserDto;
import org.devmasters.wisebladeweb.isswmq.entity.User;

import java.util.Map;
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class UserMapper implements Mapper<User, UserDto> {

    private static final UserMapper INSTANCE  = new UserMapper();
    @Override
    public UserDto mapFrom(User object) {
        return UserDto.builder()
                .id(object.getId())
                .email(object.getEmail())
                .name(object.getName())
                .role(object.getRole())
                .build();
    }

    public static UserMapper getInstance(){
        return INSTANCE;
    }
}
