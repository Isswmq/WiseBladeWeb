package org.devmasters.wisebladeweb.isswmq.dto;

import lombok.Builder;
import lombok.Value;
import org.devmasters.wisebladeweb.isswmq.entity.Role;

@Value
@Builder
public class UserDto {
    Integer id;
    String email;
    String name;
    Role role;
}
