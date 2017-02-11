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
import com.niit.nikkobackend.dao.SupplierDAO;
import com.niit.nikkobackend.model.Category;
import com.niit.nikkobackend.model.Product;
import com.niit.nikkobackend.model.Supplier;

@Controller
public class suppliercontroller {

	@Autowired
	private CategoryDAO1 categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Supplier supplier;
	@Autowired
	Product product;

	@RequestMapping("/adminsuppliergor")
	public String suphome(Model model) {
		List<Category> categories = categoryDAO.getAll();
		List<Supplier> suppliers = supplierDAO.getAll();
		List<Product> products = productDAO.getAll();
		// if (products!=null && !products.isEmpty()) {

		model.addAttribute("product", new Product());
		// model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productlist", products);
		model.addAttribute("categorylist", categories);
		model.addAttribute("supplierlist", suppliers);
		// log.debug("Ending Greetings");
		// }
		return "productcrud";
	}

	@RequestMapping(value = "/adminsupplieradd", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute(value = "supplier") Supplier supplier, BindingResult result,
			ModelMap map) {
		String heading = "Successfully Inserted";
		if (supplierDAO.save(supplier))
			map.addAttribute("heading", heading);
		return "redirect:/controller/adminsuppliergor";

	}

	@RequestMapping(value = "/adminsupplierupdate", method = RequestMethod.POST)
	public String updateSupplier(@ModelAttribute(value = "supplier") Supplier supplier, BindingResult result) {
		supplierDAO.update(supplier);
		return "redirect:/controller/adminsuppliergor";
	}

	@RequestMapping(value = "/adminsupplierdelete", method = RequestMethod.POST)
	public String deleteSupplier(@ModelAttribute(value = "supplier") Supplier supplier, BindingResult result) {
		supplierDAO.delete(supplier);
		return "redirect:/controller/adminsuppliergor";
	}
}
