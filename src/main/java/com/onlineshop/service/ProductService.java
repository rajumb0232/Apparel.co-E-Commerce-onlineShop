package com.onlineshop.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlineshop.entity.Product;
import com.onlineshop.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	public List<Product> renderAllProducts(){
		return productRepository.findAll();
	}
	
	public void addProduct(Product product) {
		productRepository.save(product);
	}
	
	public void deleteProduct(long productId) {
		productRepository.deleteById(productId);;
	}
	
	public Optional<Product> findProductById(long id) {
		return productRepository.findById(id);
	}
	public List<Product> getAllProductsByCategoryId(int id){
		
		return productRepository.findAllByCategory_Id(id) ;
	}
	public List<Product> getAllProductsByGender_Id(int id){
		List<Product> products= productRepository.findAll();
		List<Product> filterProducts = new ArrayList<>();
		
		for(Product p: products) {
			if(p.getGender().getGenderId()==id) {
				filterProducts.add(p);
			}
		}
		return filterProducts;
	}
	
}
