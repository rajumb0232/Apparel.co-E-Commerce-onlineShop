package com.onlineshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.onlineshop.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>{

}
