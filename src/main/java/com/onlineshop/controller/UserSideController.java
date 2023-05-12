package com.onlineshop.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onlineshop.entity.Product;
import com.onlineshop.service.CategoryService;
import com.onlineshop.service.ProductService;

@Controller
public class UserSideController {
	
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;
	
	@GetMapping({"/mshop" , "/mshop/allcategories"})
	public String viewMshop(Model model) {
		model.addAttribute("male", categoryService.maleCategories(categoryService.renderAllCategories()));
		List<Product> products =productService.getAllProductsByGender_Id(1);
		model.addAttribute("products",products );
		return "mshop";
	}
	@GetMapping("/mshop/bycategory")
	public String viewMshopByCategory(Model model, @RequestParam int id) {
		model.addAttribute("male", categoryService.maleCategories(categoryService.renderAllCategories()));
		model.addAttribute("products",productService.getAllProductsByCategoryId(id) );
		return "mshop";
	}
	@GetMapping({"/fshop" , "/fshop/allcategories"})
	public String viewFshop(Model model) {
		model.addAttribute("female", categoryService.femaleCategories(categoryService.renderAllCategories()));
		model.addAttribute("products",productService.getAllProductsByGender_Id(2) );
		return "fshop";
	}
	@GetMapping("/fshop/bycategory")
	public String viewFshopByCategory(Model model, @RequestParam int id) {
		model.addAttribute("female", categoryService.femaleCategories(categoryService.renderAllCategories()));
		model.addAttribute("products",productService.getAllProductsByCategoryId(id) );
		return "fshop";
	}
	
	@GetMapping("/apparels")
	public String apparelsHome(Model model) {
		model.addAttribute("male", categoryService.maleCategories(categoryService.renderAllCategories()));
		model.addAttribute("female", categoryService.femaleCategories(categoryService.renderAllCategories()));
		model.addAttribute("genders", categoryService.renderAllGender());
		model.addAttribute("categories", categoryService.renderAllCategories());
		model.addAttribute("products", productService.renderAllProducts());
		return "apparels";
	}
	
	@GetMapping("/mshop/product/view")
	public String viewProduct(Model model, @RequestParam long id) {
		Product product = productService.findProductById(id).get();
		List<String> productSizes =  Arrays.asList(product.getProductSizes().split(","));
		model.addAttribute("productSizes", productSizes);		
		model.addAttribute("product",product);
		return "viewProduct";
	}
	
	
}
