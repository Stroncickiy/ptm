package org.mechatronics.controller;

import org.mechatronics.dto.ActionResult;
import org.mechatronics.dto.RegistrationDataDTO;
import org.mechatronics.model.SiteUser;
import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.PostConstruct;

@RestController
public class SignUpController {
    @Autowired
    private UserService userService;

    @PostConstruct
    private void init() {
        RegistrationDataDTO registrationDataDTO = new RegistrationDataDTO();
        registrationDataDTO.setEmail("admin@lp.edu");
        registrationDataDTO.setFirstName("Admin");
        registrationDataDTO.setLastName("Admin");
        registrationDataDTO.setPassword("adminadmin");
        registrationDataDTO.setPassword2("adminadmin");
        registrationDataDTO.setEnabled(true);
        signUpUser(registrationDataDTO);
    }

    @RequestMapping(path = "/signup", method = RequestMethod.POST)
    public ActionResult signUpUser(RegistrationDataDTO registrationDataDTO) {
        ActionResult actionResult = new ActionResult();
        if (!registrationDataDTO.getPassword().equals(registrationDataDTO.getPassword2())) {
            actionResult.setInfo("Паролі не відповідають один одному");
            return actionResult;
        }
        SiteUser siteUser = new SiteUser();
        siteUser.updateFields(registrationDataDTO);
        SiteUser addedSiteUser = userService.add(siteUser);
        if (addedSiteUser != null && addedSiteUser.getId() != null) {
            actionResult.setSuccess(true);
        }
        return actionResult;
    }
}
