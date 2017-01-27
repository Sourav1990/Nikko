package com.niit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.nikkobackend.dao.MyCartDAO;
import com.niit.nikkobackend.dao.ProductDAO;
import com.niit.nikkobackend.model.Cart;
import com.niit.nikkobackend.model.Category;
import com.niit.nikkobackend.model.Product;
import com.niit.nikkobackend.model.User;

@Controller
public class cartcontroller {
	Logger log = LoggerFactory.getLogger(cartcontroller.class);


@Autowired
HttpSession session;

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	Category category;
	@Autowired
	Cart cart;
	@Autowired
	MyCartDAO cartDAO;

@RequestMapping(value="/mcart", method=RequestMethod.GET)
public String myCart(Model model, HttpSession session,String product_id,@ModelAttribute(value = "product") Product product)
{
log.debug("--------->Starting of the method myCart");	
model.addAttribute("myCart", new Cart());
String loggedInUserid = (String) session.getAttribute("loggedInUserID");
List<Product> products = productDAO.getAll();
//Product product=productDAO.get(product_id);
model.addAttribute("product", new Product());
model.addAttribute("productlist", products);
model.addAttribute("category", new Category());
/*if(loggedInUserid==null){
	return"redirect:/admin";
}*/

int cartSize=cartDAO.getAll(loggedInUserid).size();
if(cartSize==0)
{
	model.addAttribute("errorMessage","You do not have any products in your cart");
}else{
	model.addAttribute("cartList",cartDAO.getAll(loggedInUserid));
	model.addAttribute("totalAmount",cartDAO.getTotalAmount(loggedInUserid));
	model.addAttribute("displayCart","true");
}
log.debug("Ending of the method myCart");
return"/productpage";
}


@SuppressWarnings("deprecation")
@RequestMapping(value = "/selectedproduct/mcart/addCart")
public String getCart(@Valid @ModelAttribute("cart")Cart cart,Model model) {
	log.debug("Starting of the method addtoCart");		
	cartDAO.save(cart);
	int cartcount = cartDAO.getAll(cart.getUser_id()).size();
	model.addAttribute("cartcount", cartcount);
	log.debug("Ending of the add method of cart");
	session.putValue("cartcount", cartcount);
	return "productdetail";
}
@RequestMapping(value={"/productlist/viewproduct/{product_id}"})
public String viewSingleProduct(@PathVariable("product_id") String product_id,Model model) throws IOException
{
	log.debug("starting of view single product");
	Product product=productDAO.get(product_id);
	model.addAttribute("product",product);
	
	return "productdetail";
}
@SuppressWarnings("deprecation")
@RequestMapping(value = "/selectedproduct/mcart/viewCart")
public String viewCart(@Valid @ModelAttribute("cart")Cart cart,Model model) {
	log.debug("Starting of the method ViewCart");	
	String loggedInUserid = (String) session.getAttribute("loggedInUserID");
	int cartcount = cartDAO.getAll(cart.getUser_id()).size();
	if(cartcount==0)
	{
		model.addAttribute("errorMessage","You do not have any products in your cart");
	}else{
		model.addAttribute("cartList",cartDAO.getAll(loggedInUserid));
		model.addAttribute("totalAmount",cartDAO.getTotalAmount(loggedInUserid));
		model.addAttribute("displayCart","true");
	}
	log.debug("Ending of the method ViewCart");	
	return "ViewCart";
}
}
