package org.mechatronics.converter;

import org.mechatronics.model.SiteUser;
import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class UserConverter implements Converter<String, SiteUser> {
    @Autowired
    private UserService userService;

    @Override
    public SiteUser convert(String id) {
        return userService.getById(Long.valueOf(id));
    }
}
