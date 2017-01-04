package com.niit.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
@RequestMapping("/controller")
public class nikkocontroller {
 
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String defaultMultiControllerAction() {
        return "index";
    }
 
    @RequestMapping(value="/test", method=RequestMethod.GET)
    public String nextDefaultMultiControllerAction() {
        return "test";
    }
    @RequestMapping(value="/signup", method=RequestMethod.GET)
    public String next2DefaultMultiControllerAction() {
        return "Signupandlogin";
    }
}