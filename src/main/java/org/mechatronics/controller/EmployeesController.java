package org.mechatronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeesController {
	@RequestMapping(value = "/employees", method = RequestMethod.GET)
	public String employees() {
		return "employees";
	}
}
