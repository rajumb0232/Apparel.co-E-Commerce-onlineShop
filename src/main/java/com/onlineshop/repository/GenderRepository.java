package com.onlineshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.onlineshop.entity.Gender;

public interface GenderRepository extends JpaRepository<Gender, Integer> {

}
