package org.mechatronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccessDeniedPage {
    @RequestMapping(method = RequestMethod.GET, path = "/denied")
    public String accessDeniedPage() {
        return "page_403";
    }

}
