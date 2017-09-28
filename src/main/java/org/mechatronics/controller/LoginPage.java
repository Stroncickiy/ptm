package org.mechatronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginPage {
    @RequestMapping(method = RequestMethod.GET, path = "/login")
    public String loginPage() {
        return "login";
    }

}
