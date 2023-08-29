package org.devmasters.wisebladeweb.isswmq.entity;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
    private Integer id;
    private String name;
    private String email;
    private String password;
    private Role role;
}
