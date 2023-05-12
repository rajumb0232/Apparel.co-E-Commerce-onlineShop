package com.onlineshop.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlineshop.entity.Category;
import com.onlineshop.entity.Gender;
import com.onlineshop.repository.CategoryRepository;
import com.onlineshop.repository.GenderRepository;

@Service
public class CategoryService {
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	GenderRepository genderRepository;
	
	public Gender findGender(int id) {
		return genderRepository.findById(id).get();
	}
	
	public List<Gender> renderAllGender(){
		return genderRepository.findAll();
	}
	
	public List<Category> maleCategories(List<Category> categories){
		List<Category> maleCategories = new ArrayList<>();
		for(Category cat: categories) {
			if(cat.getGender().getGenderId()==1) {
				maleCategories.add(cat);
			}
		}
		
		return maleCategories;
				
	}
	public List<Category> femaleCategories(List<Category> categories){
		List<Category> femaleCategories = new ArrayList<>();
		for(Category cat: categories) {
			if(cat.getGender().getGenderId()==2) {
				femaleCategories.add(cat);
			}
		}
		
		return femaleCategories;
				
	}
	
	public void addCategory(Category category) {
		categoryRepository.save(category);
	}
	
	public List<Category> renderAllCategories(){
		return categoryRepository.findAll();
	}
	
	public void deleteCategory(int id) {
		categoryRepository.deleteById(id);
	}
	public Category editCategory(int id) {
//		Optional<Category> optional= categoryRepository.findById(id);
//		Category category=null;
//		if(optional.isPresent()) {
//			category=optional.get();
//		}
//		else {
//			throw new RuntimeException("category not found");
//		}
		return categoryRepository.findById(id).get();
//		System.out.println(optional);
//		return optional;
	}
	
	
}
