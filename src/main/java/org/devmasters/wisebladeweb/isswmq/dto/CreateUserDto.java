package org.devmasters.wisebladeweb.isswmq.dto;


import lombok.Builder;
import lombok.Value;

@Value
@Builder
public class CreateUserDto {
    String name;
    String email;
    String password;
    String role;
}
