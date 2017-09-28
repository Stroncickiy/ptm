package org.mechatronics.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class ExceptionController {
    @ExceptionHandler(Exception.class)
    public ModelAndView handleError(HttpServletRequest request, Exception e) {
        return new ModelAndView("page_500");
    }

    @ExceptionHandler(NoHandlerFoundException.class)
    public ModelAndView handleError404(HttpServletRequest request, Exception e) {
        return new ModelAndView("page_404");
    }
}

