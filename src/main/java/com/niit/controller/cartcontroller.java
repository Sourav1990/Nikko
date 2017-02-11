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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.nikkobackend.dao.MyCartDAO;
import com.niit.nikkobackend.dao.ProductDAO;
import com.niit.nikkobackend.model.Cart;
import com.niit.nikkobackend.model.Category;
import com.niit.nikkobackend.model.Order;
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
	@Autowired
	Order order;
	@Autowired
	Product product;

	@RequestMapping(value = "/mcart", method = RequestMethod.GET)
	public String myCart(Model model, HttpSession session, String product_id,
			@ModelAttribute(value = "product") Product product) {
		log.debug("--------->Starting of the method myCart");
		model.addAttribute("myCart", new Cart());
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		List<Product> products = productDAO.getAll();
		// Product product=productDAO.get(product_id);
		model.addAttribute("product", new Product());
		model.addAttribute("productlist", products);
		model.addAttribute("category", new Category());
		/*
		 * if(loggedInUserid==null){ return"redirect:/admin"; }
		 */

		int cartcount = cartDAO.getAll(cart.getUser_id()).size();
		if (cartcount == 0) {
			model.addAttribute("errorMessage", "You do not have any products in your cart");
		} else {
			model.addAttribute("cartList", cartDAO.getAll(loggedInUserid));
			model.addAttribute("totalAmount", cartDAO.getTotalAmount(loggedInUserid));
			model.addAttribute("displayCart", "true");
		}
		log.debug("Ending of the method myCart");
		return "/productpage";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/selectedproduct/mcart/addCart")
	public String getCart(@Valid @ModelAttribute("cart") Cart cart, Model model) {
		log.debug("Starting of the method addtoCart");
		cart.setPrice(cart.getPrice() * cart.getQuantity());
		cartDAO.save(cart);
		int cartcount = cartDAO.getAll(cart.getUser_id()).size();
		model.addAttribute("cartcount", cartcount);
		log.debug("Ending of the add method of cart");
		session.putValue("cartcount", cartcount);
		Product product = productDAO.get(cart.getProduct_id());
		model.addAttribute("product", product);
		List<Product> products = productDAO.getAll();
		model.addAttribute("productlist", products);
		return "forward:/productlist/viewproduct/" + cart.getProduct_id();
	}

	@RequestMapping(value = { "/productlist/viewproduct/{product_id}" })
	public String viewSingleProduct(@PathVariable("product_id") String product_id, Model model) throws IOException {
		log.debug("starting of view single product");
		Product product = productDAO.get(product_id);
		model.addAttribute("product", product);
		List<Product> products = productDAO.getAll();
		model.addAttribute("productlist", products);
		return "productdetail";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/selectedproduct/mcart/then/viewCart")
	public String viewCart(@Valid @ModelAttribute("cart") Cart cart, Model model) {
		log.debug("Starting of the method ViewCart");
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		int cartcount = cartDAO.getAll(cart.getUser_id()).size();

		if (cartcount == 0) {
			model.addAttribute("errorMessage", "You do not have any products in your cart");
		} else {
			model.addAttribute("cartList", cartDAO.getAll(loggedInUserid));
			model.addAttribute("totalAmount", cartDAO.getTotalAmount(loggedInUserid));
			model.addAttribute("displayCart", "true");
		}
		log.debug("Ending of the method ViewCart");
		return "ViewCart";
	}

	@RequestMapping(value = "/webflow")
	public String webFlowStarter() {
		return "memberwelcome";
	}

	@RequestMapping(value = "/wishlist")
	public String wishlist(Model model, @Valid @ModelAttribute("cart") Cart cart) {
		model.addAttribute("wish", "Your product is successfully added to wishlist");
		Product product = productDAO.get(cart.getProduct_id());
		model.addAttribute("product", product);
		List<Product> products = productDAO.getAll();
		model.addAttribute("productlist", products);
		return "forward:/productlist/viewproduct/" + cart.getProduct_id();
	}

	@RequestMapping(value = "/inventory")
	public String inventory() {
		return "inventorycontrol";
	}

	/*@RequestMapping(value = "/searchproduct/viewmyproduct/{product_id}")
	public String searchProduct(@Valid @ModelAttribute(value = "product") Product product,@PathVariable("product_id") String product_id, BindingResult result,Model model) {
		product=productDAO.searchProduct(product.getProduct_id());
		model.addAttribute("product", product);
		List<Product> products = productDAO.getAll();
		model.addAttribute("productlist", products);
		return "forward:/mcart";
	}*/
}
