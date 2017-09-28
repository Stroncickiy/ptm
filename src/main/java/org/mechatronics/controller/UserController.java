package org.mechatronics.controller;

import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("users")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public String allUsersPage(Model model) {
        model.addAttribute("users", userService.getAll());
        return "users";
    }

    @RequestMapping(path = "edit/{userId}", method = RequestMethod.GET)
    public String openUpdateUserData(Model model, @PathVariable Long userId) {
        if (!model.containsAttribute("userToEdit")) {
            model.addAttribute("userToEdit", userService.getById(userId));
        }
        return "editUser";
    }

    @RequestMapping(path = "remove/{userId}")
    public String removeUser(@PathVariable("userId") Long id) {
        userService.remove(userService.getById(id));
        return "redirect:/users/all";
    }

}
