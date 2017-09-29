package org.mechatronics.model;

import org.mechatronics.dto.RegistrationDataDTO;
import org.mechatronics.enums.UserRole;

import java.util.Collections;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString(of = {"id", "firstName", "lastName", "email"})
@EqualsAndHashCode(of = {"id"})
@Entity
public class SiteUser {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Size(min = 3, max = 30)
    @NotNull
    private String firstName;
    @Size(min = 3, max = 30)
    @NotNull
    private String lastName;
    @Size(min = 5, max = 30)
    @NotNull
    private String email;
    private boolean enabled;
    @Size(min = 6)
    private String password;
    @Enumerated(EnumType.STRING)
    @ElementCollection(targetClass = UserRole.class)
    @Size(min = 1, max = 2)
    private List<UserRole> roles;

    public void updateFields(RegistrationDataDTO userDTO) {
        if (userDTO.getFirstName() != null) {
            setFirstName(userDTO.getFirstName());
        }
        if (userDTO.getLastName() != null) {
            setLastName(userDTO.getLastName());
        }

        if (userDTO.getEmail() != null) {
            setEmail(userDTO.getEmail());
        }

        if (userDTO.getPassword() != null) {
            setPassword(userDTO.getPassword());
        }
        setEnabled(userDTO.isEnabled());
        setRoles(Collections.singletonList(UserRole.ADMIN));

    }

    public String getFullName() {
        return firstName + " " + lastName;
    }

}
