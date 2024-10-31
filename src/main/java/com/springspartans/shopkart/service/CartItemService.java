package com.springspartans.shopkart.service;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springspartans.shopkart.model.CartItem;
import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.model.Product;
import com.springspartans.shopkart.repository.CartItemRepository;
import com.springspartans.shopkart.repository.CustomerRepository;
import com.springspartans.shopkart.repository.ProductRepository;

import jakarta.annotation.PostConstruct;

@Service
public class CartItemService
{
	@Autowired
	private CartItemRepository cart;
	@Autowired
	private ProductRepository prodRepo;
	
	public List<CartItem> getAllCartItems()
	{
		List<CartItem> items = cart.findAll();
	    return items;
	}
	public void incrementQuantity(int itemId)
	{
		CartItem item=cart.findById(itemId).get();
		item.setQuantity(item.getQuantity()+1);
		cart.save(item);
	}
	public void deleteCartItem(int itemId)
	{
		cart.deleteById(itemId);
	}
	public double getCartItemPrice(int itemId)
	{
		CartItem item = cart.findById(itemId).get();
		Product prod=item.getProduct();
		return prod.getPrice();
	}
	public double getCartPrice()
	{
		List<CartItem> list=getAllCartItems();
		double total=0;
		Product prod;
		for(CartItem item : list)
		{
			prod=item.getProduct();
			total+=prod.getPrice()*item.getQuantity();		
		}
		return total;
	}
	public void addToCart(int itemId, Customer cust)
	{
		 Product prod = prodRepo.findById(itemId).orElse(null);
		 if (prod == null) 
		 {
			 System.out.println("Product not found for id: " + itemId);
		     return;
		 }
		CartItem item=new CartItem();
		item.setCustomer(cust);
		item.setProduct(prod);
		item.setQuantity(1);
		cart.save(item);
	}
}
