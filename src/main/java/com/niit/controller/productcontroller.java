package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

	@RequestMapping("/adminproductgor")
	public String prohome(Model model,@ModelAttribute(value = "product") Product product) {

		List<Category> categories = categoryDAO.getAll();
		List<Product> products = productDAO.getAll();
		List<Supplier> suppliers = supplierDAO.getAll();

		if (products != null && !products.isEmpty()) {

			model.addAttribute("product", new Product());
			model.addAttribute("category", new Category());
			model.addAttribute("supplier", new Supplier());
			model.addAttribute("productlist", products);
			model.addAttribute("categorylist", categories);
			model.addAttribute("supplierlist", suppliers);
			log.debug("Ending Greetings");
		}
		return "productcrud";
	}

	@RequestMapping(value = "/adminadd", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute(value = "product") Product product, BindingResult result, ModelMap map,HttpServletRequest request) {
		if ((productDAO.get(product.getProduct_id())) == null) {
			productDAO.save(product);
			// ................................... multi part starts
			// here....................

			// need to have a transient field of type MultipartFile in Product
			// model class
			MultipartFile productImage = product.getFile();

			// only if file exist upload the image
			if(productImage!=null && productImage.getSize() > 0) {
					// first get the root directory and then append the directory where
					// you want to store
					String rootPath = request.getSession().getServletContext().getRealPath("/");
					String directoryPath = rootPath + "resources\\images\\productimages";
					// append the file name
					String filePath = directoryPath + File.separator + product.getProduct_id() + ".jpg";
					// ========================================================
					// If directory does not exist create the directory
					if (!Files.exists(Paths.get(directoryPath))) {
						try {
							// create the directories recursively
							Files.createDirectories(Paths.get(directoryPath));
						}

						catch (IOException ex) {
							ex.printStackTrace();
						}
					}
					// =======================================================
					// transfer the file

				try {
						productImage.transferTo(new File(filePath));
					} catch (Exception ex) {
						ex.printStackTrace();
					}

					// ................................... ends
					// here..................................				
			}
		}
		return "redirect:/adminproductgor";
		}

	//}

	@RequestMapping(value = "/adminupdate", method = RequestMethod.POST)
	public String updateProduct(@ModelAttribute(value = "product") Product product, BindingResult result,HttpServletRequest request) {
		if ((productDAO.get(product.getProduct_id())) == null) {
			productDAO.save(product);
			// ................................... multi part starts
			// here....................

			// need to have a transient field of type MultipartFile in Product
			// model class
			MultipartFile productImage = product.getFile();

			// only if file exist upload the image
			if(productImage!=null && productImage.getSize() > 0) {
					// first get the root directory and then append the directory where
					// you want to store
					String rootPath = request.getSession().getServletContext().getRealPath("/");
					String directoryPath = rootPath + "resources\\images\\productimages";
					// append the file name
					String filePath = directoryPath + File.separator + product.getProduct_id() + ".jpg";
					// ========================================================
					// If directory does not exist create the directory
					if (!Files.exists(Paths.get(directoryPath))) {
						try {
							// create the directories recursively
							Files.createDirectories(Paths.get(directoryPath));
						}

						catch (IOException ex) {
							ex.printStackTrace();
						}
					}
					// =======================================================
					// transfer the file

				try {
						productImage.transferTo(new File(filePath));
					} catch (Exception ex) {
						ex.printStackTrace();
					}

					// ................................... ends
					// here..................................				
			}
		}
		else{
			MultipartFile productImage = product.getFile();

			// only if file exist upload the image
			if(productImage!=null && productImage.getSize() > 0) {
					// first get the root directory and then append the directory where
					// you want to store
					String rootPath = request.getSession().getServletContext().getRealPath("/");
					String directoryPath = rootPath + "resources\\images\\productimages";
					// append the file name
					String filePath = directoryPath + File.separator + product.getProduct_id() + ".jpg";
					// ========================================================
					// If directory does not exist create the directory
					if (!Files.exists(Paths.get(directoryPath))) {
						try {
							// create the directories recursively
							Files.createDirectories(Paths.get(directoryPath));
						}

						catch (IOException ex) {
							ex.printStackTrace();
						}
					}
					// =======================================================
					// transfer the file

				try {
						productImage.transferTo(new File(filePath));
					} catch (Exception ex) {
						ex.printStackTrace();
					}

					// ................................... ends
					// here..................................				
			}
		
		productDAO.update(product);
		}
		return "redirect:/adminproductgor";
	}

	@RequestMapping(value = "/admindelete", method = RequestMethod.POST)
	public String deleteProduct(@ModelAttribute(value = "product") Product product, BindingResult result) {
		productDAO.delete(product);
		return "redirect:/adminproductgor";
	}
	

}
