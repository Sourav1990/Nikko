package com.niit.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.nikkobackend.dao.CategoryDAO1;
import com.niit.nikkobackend.dao.MyCartDAO;
import com.niit.nikkobackend.dao.ProductDAO;
import com.niit.nikkobackend.dao.SupplierDAO;
import com.niit.nikkobackend.model.Cart;
import com.niit.nikkobackend.model.Category;
import com.niit.nikkobackend.model.Product;
import com.niit.nikkobackend.model.Supplier;
import com.niit.util.FileUtil;

@Controller
@RequestMapping("/prodgor")
public class productcontroller {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO1 categoryDAO;
	@Autowired
	Product product;
	@Autowired
	Supplier supplier;
	@Autowired
	Category category;
	@Autowired
	Cart cart;
	@Autowired
	MyCartDAO cartDAO;
	Logger log = LoggerFactory.getLogger(productcontroller.class);

	/*
	 * @RequestMapping("/productgor") public String home(Model model) {
	 * 
	 * List<Category> categories=categoryDAO.getAll(); // List<Supplier>
	 * suppliers=supplierDao.list(); List<Product> products =
	 * productDAO.getAll(); List<Supplier> suppliers = supplierDAO.getAll();
	 * 
	 * //if (products!=null && !products.isEmpty()) {
	 * 
	 * model.addAttribute("product", new Product());
	 * model.addAttribute("category", new Category());
	 * model.addAttribute("supplier", new Supplier());
	 * model.addAttribute("productlist", products);
	 * model.addAttribute("categorylist",categories);
	 * model.addAttribute("supplierlist",suppliers); //log.debug(
	 * "Ending Greetings"); //} return "productdetail"; }
	 */
	/*
	 * @RequestMapping(value = "/add", method = RequestMethod.POST) public
	 * String addCategory(@ModelAttribute(value="product") Product product,
	 * BindingResult result,ModelMap map) {
	 * if((productDAO.get(product.getProduct_id()))==null) { MultipartFile
	 * image=product.getFile();
	 * 
	 * FileUtil.upload("D:/Nikko/src/main/webapp/resources/images", image,
	 * product.getProduct_id()+".jpg"); productDAO.save(product); } else{
	 * productDAO.update(product); } return "redirect:/productgor";
	 * 
	 * }
	 * 
	 * @RequestMapping(value = "/update", method = RequestMethod.POST) public
	 * String updateCategory(@ModelAttribute(value="product") Product product,
	 * BindingResult result) { productDAO.update(product); return
	 * "redirect:/productgor"; }
	 * 
	 * @RequestMapping(value = "/delete", method = RequestMethod.POST) public
	 * String deleteCategory(@ModelAttribute(value="product") Product product,
	 * BindingResult result) { productDAO.delete(product); return
	 * "redirect:/productgor"; }
	 */
	
	

}
