package org.mechatronics.converter;

import org.mechatronics.model.User;
import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class UserConverter implements Converter<String, User> {
    @Autowired
    private UserService userService;

    @Override
    public User convert(String id) {
        return userService.getById(Long.valueOf(id));
    }
}
