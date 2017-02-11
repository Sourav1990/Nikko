package com.niit.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.nikkobackend.dao.MyCartDAO;
import com.niit.nikkobackend.dao.MyCartDAOImpl;
import com.niit.nikkobackend.dao.ProductDAO;
import com.niit.nikkobackend.dao.UserDAO;
import com.niit.nikkobackend.model.Category;
import com.niit.nikkobackend.model.Product;
import com.niit.nikkobackend.model.User;

@Controller
public class usercontroller {
	Logger log = LoggerFactory.getLogger(usercontroller.class);

	@Autowired
	User user;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	MyCartDAO cartDao;

	@RequestMapping(value = { "/"}, method = RequestMethod.GET)
	public ModelAndView welcomePage() {
		List<Product> products = productDAO.getAll();
		
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is welcome page!");
		model.setViewName("test2");
		model.addObject("product", new Product());
		model.addObject("productlist", products);
		model.addObject("category", new Category());
		return model;

	}


	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		  ModelAndView model = new ModelAndView();
		  model.addObject("title", "Spring Security Login Form - Database Authentication");
		  model.addObject("message", "This page is for ROLE_ADMIN only!");
		  model.setViewName("admin");
		  return model;

		}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {

	  ModelAndView model = new ModelAndView();
	  if (error != null) {
		model.addObject("error", "Invalid username and password!");
	  }

	  if (logout != null) {
		model.addObject("msg", "You've been logged out successfully.");
	  }
	  model.setViewName("springseclogin");

	  return model;

	}
	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String loginerror(ModelMap model) {
        model.addAttribute("error", "true");
        return "denied";
    }
@RequestMapping(value = "/checkuser")
	public ModelAndView checkUser(@RequestParam(value = "user_id", required = false) String user_id,
			@RequestParam(value = "password", required = false) String password, HttpSession session,
			@ModelAttribute(value = "user") User user) {
		log.debug("Starting of the method login");
		log.info("user_id is {}  password is {}", user_id, password);
		ModelAndView mv = new ModelAndView("Signupandlogin");
		user = userDAO.isValidUser(user_id, password);
		if (user != null) {
			log.debug("Valid Credentials");
			user = userDAO.get(user_id);
			session.setAttribute("loggedInUserID", user.getUser_id());
			session.setAttribute("loggedInUserEMAIL", user.getUser_email());
			session.setAttribute("user", user);
			if (user.getRole().equals("ROLE_ADMIN")) {
				log.debug("Logged in As Admin");
				mv.addObject("isAdmin", "true");
			} else {
				log.debug("Logged in As a User");
				mv.addObject("isAdmin", "false");
			}
		} else  {
			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");
			log.debug("Invalid credentials");
		}
		log.debug("Ending of the method login");
		return mv;

	}
@RequestMapping(value = "/outuser")
public String logoutuser(HttpSession session)
{
	
session.invalidate();
	return "test2";
	
}
	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute(value = "user") User user, BindingResult result, ModelMap map, Model model) {
		String heading = "Successfully Registered";
		if (userDAO.save(user)) {
			map.addAttribute("heading", heading);

		}

		return "redirect:/Signupandlogin";

		// public ModelAndView login(@RequestParam(value="user_name") String
		// userid,
		// @RequestParam(value = "user_password") String password, HttpSession
		// session,ModelMap map,Map<String, Object>
		// model,@ModelAttribute(value="user") User user) {
		// User userForm1 = new User();
		// model.put("userForm1", userForm1);
		// log.debug("Starting of the method login");
		// log.info("userid is {} password is {}", userid, password);
		// System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiii");
		// ModelAndView mv=new ModelAndView("success");
		// map.addAttribute("users", userDAO.getAll());

		// user= userDAO.isValidUser(userid, password);

		// if (user!=null) {
		// log.debug("Valid Credencials");
		// user = userDAO.get(userid);
		// session.setAttribute("loggedInUser", user.getUser_name());
		// session.setAttribute("loggedInUserID", user.getUser_id());
		// session.setAttribute("user", user);
		// if (user.getRole().equals("ROLE_ADMIN")) {
		// log.debug("Logged in As Admin");
		// mv.addObject("isAdmin", "true");
		// session.setAttribute("supplier",supplier);
		// session.setAttribute("categorylist", categoryDao.list());
		// session.setAttribute("category",category);
		// session.setAttribute("supplierlist", supplierDao.list());

		// } /*else {
		// log.debug("Logged in As a User");
		// mv.addObject("isAdmin", "false");

		// fetch the cart based on userid
		// cart = cartDao.get(userID);
		// mv.addObject("cart", cart);
		// List<Cart> cartlist = cartDao.list();
		// mv.addObject("cartlist", cartlist);
		// mv.addObject("cartSize", cartlist.size());
		// }

		// } else {

		// mv.addObject("invalidCredentials", "true");
		// mv.addObject("errorMessage", "Invalid Credentials");

		// }
		// log.debug("Ending of the method login");
		// return mv;
		/*
		 * @RequestMapping(value = "/add", method = RequestMethod.POST) public
		 * String addCategory(@ModelAttribute(value="category") Category
		 * category, BindingResult result,ModelMap map) { String heading=
		 * "Successfully Inserted"; if(categorydao.save(category))
		 * map.addAttribute("heading", heading); return
		 * "redirect:/controller/catgor";
		 * 
		 * }
		 * 
		 * @RequestMapping(value = "/update", method = RequestMethod.POST)
		 * public String updateCategory(@ModelAttribute(value="category")
		 * Category category, BindingResult result) {
		 * categorydao.update(category); return "redirect:/controller/catgor"; }
		 * 
		 * @RequestMapping(value = "/delete", method = RequestMethod.POST)
		 * public String deleteCategory(@ModelAttribute(value="category")
		 * Category category, BindingResult result) {
		 * categorydao.delete(category); return "redirect:/controller/catgor"; }
		 */
	}
	
}
