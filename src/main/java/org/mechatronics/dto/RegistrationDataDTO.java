package org.mechatronics.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class RegistrationDataDTO {
    @Size(min = 3, max = 30)
    @NotNull
    private String firstName;
    @Size(min = 3, max = 30)
    @NotNull
    private String lastName;
    @Size(min = 5, max = 30)
    @NotNull
    private String email;
    @Size(min = 6)
    private String password;
    @Size(min = 6)
    private String password2;
    private boolean enabled;
}
