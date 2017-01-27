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
@RequestMapping("/controller")
public class categorycontroller {

@Autowired
	private CategoryDAO1 categoryDAO;
@Autowired
private ProductDAO productDAO;
@Autowired
Product product;

   @RequestMapping("/catgor")
    public String home(Model model) {
	   List<Category> categories=categoryDAO.getAll();
       // List<Supplier> suppliers=supplierDao.list();
	   List<Product> products = productDAO.getAll();
	//if (products!=null && !products.isEmpty()) {
	
	model.addAttribute("product", new Product());
	//model.addAttribute("category", new Category());
	//model.addAttribute("supplier", new Supplier());
	model.addAttribute("productlist", products);
	model.addAttribute("categorylist",categories);
	//model.addAttribute("supplierlist",suppliers);
	//log.debug("Ending Greetings");
	//}
        return "productcrud";
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute(value="category") Category category, BindingResult result,ModelMap map)
    {
    	String heading="Successfully Inserted";
    	if(categoryDAO.save(category))
    		map.addAttribute("heading", heading);
        return "redirect:/controller/catgor";
    	
    }
   
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateCategory(@ModelAttribute(value="category") Category category, BindingResult result)
    {
        categoryDAO.update(category);
        return "redirect:/controller/catgor";
    }
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteCategory(@ModelAttribute(value="category") Category category, BindingResult result)
    {
        categoryDAO.delete(category);
        return "redirect:/controller/catgor";
    }
}
