package org.mechatronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin")
public class AdminController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index() {
        return "admin/fields";
    }


    @RequestMapping(value = "/fields", method = RequestMethod.GET)
    public String fileds() {
        return "admin/fields";
    }

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String newsManage() {
        return "admin/news";
    }

}
