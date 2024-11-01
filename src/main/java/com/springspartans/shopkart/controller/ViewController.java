package com.springspartans.shopkart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.service.CustomerService;

@Controller
@RequestMapping("/")
public class ViewController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("cartitem/cart")
	public String cart(Model model) {
		Customer customer = customerService.getCustomer();
        model.addAttribute("customer", customer);
		return "cartitem/cart";
	}
}
