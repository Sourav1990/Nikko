package com.niit.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.nikkobackend.dao.CategoryDAO1;
import com.niit.nikkobackend.model.Category;

@Controller
@RequestMapping("/controller")
public class categorycontroller {

@Autowired
	private CategoryDAO1 categorydao;

    @RequestMapping("/catgor")
    public String home(ModelMap map,Map<String, Object> model) {
    	//String heading="Successfully Inserted";
    	Category userForm = new Category();    
        model.put("userForm", userForm);
        map.addAttribute("categories", categorydao.getAll());
        //model.addObject("c",new Category());
        //map.addAttribute("heading", heading);
        return "addadmin";
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute(value="category") Category category, BindingResult result,ModelMap map)
    {
    	String heading="Successfully Inserted";
    	if(categorydao.save(category))
    		map.addAttribute("heading", heading);
        return "redirect:/controller/catgor";
    	
    }
   
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateCategory(@ModelAttribute(value="category") Category category, BindingResult result)
    {
        categorydao.update(category);
        return "redirect:/";
    }
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteCategory(@ModelAttribute(value="category") Category category, BindingResult result)
    {
        categorydao.delete(category);
        return "redirect:/";
    }
}
