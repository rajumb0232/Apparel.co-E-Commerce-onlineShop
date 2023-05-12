package com.onlineshop.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.onlineshop.dto.CategoryDTO;
import com.onlineshop.dto.ProductDTO;
import com.onlineshop.entity.Category;
import com.onlineshop.entity.Product;
import com.onlineshop.repository.GenderRepository;
import com.onlineshop.service.CategoryService;
import com.onlineshop.service.ProductService;

@Controller
public class AdminController {
	public static String uploadDir = System.getProperty("user.dir") + "/src/main/resources/static/product_images";
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private GenderRepository genderRepository;

	@GetMapping("/admin_dashboard")
	public String adminDashboard() {
		return"adminDashboard";
	}
	@GetMapping("/admin/categories")
	public String adminCategories(Model model) {
		List<Category> categories=categoryService.renderAllCategories();
		model.addAttribute("categories",categories );
		return"adminCategories";
	}
	@GetMapping("/admin/categories/add")
	public String addCategory(Model model) {
		model.addAttribute("categoryDTO",new CategoryDTO());
		model.addAttribute("genders", categoryService.renderAllGender());
		return "addCategory";
	}
	@PostMapping("/save_category")
	public RedirectView saveCategory(@ModelAttribute("categoryDTO")@Validated CategoryDTO categoryDTO,BindingResult result, Model model) {
		Category category = new Category();
		category.setCategoryName(categoryDTO.getCategoryName());
		category.setGender(categoryService.findGender(categoryDTO.getGenderId()));
		categoryService.addCategory(category);
		 RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/admin/categories");
		return redirectView;
	}
	@GetMapping("/delete_category")
	public RedirectView deleteCategory(@RequestParam int id) {
		categoryService.deleteCategory(id);
		 RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/admin/categories");
		return redirectView;
	}
	
	@GetMapping("/edit_category")
	public String editCategory(@RequestParam int id, Model model) {
		Category category = categoryService.editCategory(id);
		CategoryDTO categoryDTO = new CategoryDTO();
//		System.out.println(category.getId());
		categoryDTO.setId(category.getId());
//		System.out.println(categoryDTO.getId());
		categoryDTO.setCategoryName(category.getCategoryName());
		categoryDTO.setGenderId(category.getGender().getGenderId());
		model.addAttribute("genders", genderRepository.findAll());
		model.addAttribute("categoryDTO", categoryDTO);
		return "editCategory";
	}
	@PostMapping("/save_edited_category")
	public RedirectView saveEditedCategory(@ModelAttribute("categoryDTO")@Validated CategoryDTO categoryDTO,BindingResult result, Model model) {
		Category category = new Category();
//		System.out.println(categoryDTO.getId());
		category.setId(categoryDTO.getId());
		category.setCategoryName(categoryDTO.getCategoryName());
		category.setGender(categoryService.findGender(categoryDTO.getGenderId()));
		categoryService.addCategory(category);
		 RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/admin/categories");
		return redirectView;
	}
	
	//product section  
	
	@GetMapping("/admin/products")
	public String adminProducts(Model model) {
		List<Product> products = productService.renderAllProducts();
		model.addAttribute("categories", categoryService.renderAllCategories());
		model.addAttribute("products", products);
		return "adminProducts";
	}
	@GetMapping("/admin/products/bycategory")
	public String adminViewProductsByCategory(Model model, @RequestParam int id) {
		model.addAttribute("categories", categoryService.renderAllCategories());
		model.addAttribute("products", productService.getAllProductsByCategoryId(id));
		return "adminProducts";
	}
	@GetMapping("/admin/products/add")
	public String addProduct(Model model) {
		model.addAttribute("productDTO",new ProductDTO());
		model.addAttribute("categories", categoryService.renderAllCategories());
		List<String> productSizes =  Arrays.asList("S","M","L","X","XL","XXL");
		model.addAttribute("productSizes", productSizes);
		model.addAttribute("genders", genderRepository.findAll());
		return "addProduct";
	}
	
	@PostMapping("/admin/products/add")
	public RedirectView saveProduct(@ModelAttribute("productDTO")@Validated ProductDTO productdto,
									BindingResult result, Model model,
									@RequestParam("productImageName")MultipartFile file,
									@RequestParam("imgName")String imgName
									) throws IOException
	{
		Product product=new Product();
		product.setProductId(productdto.getProductId());
		product.setProductName(productdto.getProductName());
		product.setCategory(categoryService.editCategory(productdto.getCategoryId()));
		product.setPrice(productdto.getPrice());
		product.setQuantity(productdto.getQuantity());
		product.setDescription(productdto.getDescription());
		product.setProductSizes(productdto.getProductSizes());
		product.setGender(categoryService.findGender(productdto.getGenderId()));
		String imageUUID;
		if(!file.isEmpty()) {
			imageUUID = file.getOriginalFilename();
			Path fileNameAndPath = Paths.get(uploadDir, imageUUID);
			Files.write(fileNameAndPath, file.getBytes());
		}
		else {
			imageUUID = imgName;
		}
		product.setProductImageName(imageUUID);
		productService.addProduct(product);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/admin/products");
		return redirectView;
	}
	
	@GetMapping("/admin/product/delete")
	public RedirectView deleteProduct(@RequestParam Long id) {
		productService.deleteProduct(id);
		 RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/admin/products");
		return redirectView;
	}
	
	@GetMapping("/admin/product/edit")
	public String updateProduct(@RequestParam long id, Model model) {
		Product product = productService.findProductById(id).get();
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductId(product.getProductId());
		productDTO.setProductName(product.getProductName());
		productDTO.setPrice(product.getPrice());
		productDTO.setQuantity(product.getQuantity());
		productDTO.setDescription(product.getDescription());
		productDTO.setProductImageName(product.getProductImageName());
//		System.out.println(product.getGender().getGenderId());
		productDTO.setGenderId(product.getGender().getGenderId());
		List<String> productSizes =  Arrays.asList("S","M","L","X","XL","XXL");
		productDTO.setProductSizes(product.getProductSizes());
		model.addAttribute("productSizes", productSizes);		
		model.addAttribute("genders", genderRepository.findAll());
		model.addAttribute("productDTO",productDTO);
		int catId=product.getCategory().getId();
		productDTO.setCategoryId(catId);
		model.addAttribute("categories", categoryService.renderAllCategories());
		return "addProduct";
	}

	// shop section
	
	



}










