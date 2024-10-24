package com.springspartans.shopkart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springspartans.shopkart.model.CartItem;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {

}
