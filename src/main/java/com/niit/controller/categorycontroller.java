package com.niit.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.nikkobackend.dao.CategoryDAO1;
import com.niit.nikkobackend.dao.ProductDAO;
import com.niit.nikkobackend.model.Category;
import com.niit.nikkobackend.model.Product;

@Controller
public class categorycontroller {

@Autowired
	private CategoryDAO1 categoryDAO;
@Autowired
private ProductDAO productDAO;
@Autowired
Product product;

   @RequestMapping("/admincatgor")
    public String home(Model model,@ModelAttribute(value="category") Category category) {
	   List<Category> categories=categoryDAO.getAll();
       // List<Supplier> suppliers=supplierDao.list();
	   //List<Product> products = productDAO.getAll();
	//if (products!=null && !products.isEmpty()) {
	
	//model.addAttribute("product", new Product());
	model.addAttribute("category", new Category());
	//model.addAttribute("supplier", new Supplier());
	//model.addAttribute("productlist", products);
	model.addAttribute("categorylist",categories);
	//model.addAttribute("supplierlist",suppliers);
	//log.debug("Ending Greetings");
	//}
        return "categorycrud";
    }
    @RequestMapping(value = "/admincatadd", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute(value="category") Category category, BindingResult result,ModelMap map)
    {
    	String heading="Successfully Inserted";
    	if(categoryDAO.save(category))
    		map.addAttribute("heading", heading);
        return "redirect:/admincatgor";
    	
    }
   
    @RequestMapping(value = "/admincatupdate", method = RequestMethod.POST)
    public String updateCategory(@ModelAttribute(value="category") Category category, BindingResult result)
    {
        categoryDAO.update(category);
        return "redirect:/admincatgor";
    }
    @RequestMapping(value = "/admincatdelete", method = RequestMethod.POST)
    public String deleteCategory(@ModelAttribute(value="category") Category category, BindingResult result)
    {
        categoryDAO.delete(category);
        return "redirect:/admincatgor";
    }
    @RequestMapping(value = "/accessdenied", method = RequestMethod.POST)
    public String accessdenied(@ModelAttribute(value="category") Category category, BindingResult result)
    {
        return "denied";
    }
}
