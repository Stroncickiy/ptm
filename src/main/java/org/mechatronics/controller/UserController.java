package org.mechatronics.controller;

import javax.validation.Valid;

import org.mechatronics.model.User;
import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

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

	@RequestMapping(path = "edit", method = RequestMethod.POST)
	public ModelAndView updateUserData(@Valid @ModelAttribute User userToEdit, BindingResult bindingResult,
			Model model) {
		ModelAndView modelAndView = new ModelAndView("editUser", model.asMap());
		if (bindingResult.hasErrors()) {
			model.addAttribute("userToEdit", userToEdit);
			model.addAttribute("validationErrors", bindingResult.getAllErrors());
			return modelAndView;
		}
		User currentUser = userService.getById(userToEdit.getId());
		if (currentUser != null) {
			currentUser.updateFields(userToEdit);
			userService.update(currentUser);
			return new ModelAndView(new RedirectView("/users/all"));
		}
		return modelAndView;
	}

	@RequestMapping(path = "remove/{userId}")
	public String removeUser(@PathVariable("userId") Long id) {
		userService.remove(userService.getById(id));
		return "redirect:/users/all";
	}

}
