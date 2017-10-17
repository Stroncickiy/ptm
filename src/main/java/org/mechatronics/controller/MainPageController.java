package org.mechatronics.controller;

import org.mechatronics.repositories.DirectionRepository;
import org.mechatronics.repositories.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainPageController {
    @Autowired
    private DirectionRepository directionRepository;
    @Autowired
    private NewsRepository newsRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("fields", directionRepository.findAll());
        try {
            modelAndView.addObject("news", newsRepository.findTop3ByOrderByCreatedDesc());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return modelAndView;
    }

}
