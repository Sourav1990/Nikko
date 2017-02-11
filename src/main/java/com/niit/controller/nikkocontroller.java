package com.niit.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.nikkobackend.dao.UserDAO;
import com.niit.nikkobackend.model.User;
 


@Controller

public class nikkocontroller {
	/*@Autowired
	private UserDAO userDAO;
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String defaultMultiControllerAction() {
        return "test3";
    }
    */
    @RequestMapping(value="/test", method=RequestMethod.GET)
    public String nextDefaultMultiControllerAction() {
        return "test";
    }

    @RequestMapping(value="/signup", method=RequestMethod.GET)
    public String nextDefaultMultiControllerAction1() {
        return "Signupandlogin";
    }
    
    @RequestMapping(value="/contact", method=RequestMethod.GET)
    public String nextDefaultMultiControllerAction2() {
        return "Contact";
    }
    @RequestMapping(value="/service", method=RequestMethod.GET)
    public String nextDefaultMultiControllerAction3() {
        return "serviceandsupport";
    }
    @RequestMapping(value="/test3", method=RequestMethod.GET)
    public String next2DefaultMultiControllerAction() {
        return "test3";
    }
    /*@RequestMapping(value="/productdetail1", method=RequestMethod.GET)
    public String next3DefaultMultiControllerAction() {
        return "productdetail";
    }
    /*@RequestMapping(value="/prodpage", method=RequestMethod.GET)
    public String next4DefaultMultiControllerAction() {
        return "productpage";
    }*/
    
  /*@RequestMapping(value = "/adduser", method = RequestMethod.POST)
    public String addUser(@ModelAttribute(value="user") User user, BindingResult result,ModelMap map,Model model)
    {
    	String heading="Successfully Registered";
    	if(userDAO.save(user)){
    	map.addAttribute("heading", heading);
        
    	}
    	
    
    	return "redirect:/usergor";
    	
    		
    }
    */
    
    public class CombatController {
    	 
    	@RequestMapping("home")
    	public String home(){
    		return "index";
    	}
}
}