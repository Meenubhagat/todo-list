package com.todolist.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.todolist.model.Shop;

public interface ShopRepository extends JpaRepository<Shop, Integer> {

}
