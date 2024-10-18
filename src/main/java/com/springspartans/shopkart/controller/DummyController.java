package com.springspartans.shopkart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class DummyController {

	@GetMapping
	public String login() {
		return "customer/login";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "customer/signup";
	}
	
	@GetMapping("/updateinfo")
	public String updateinfo() {
		return "customer/updateinfo";
	}
	
	@GetMapping("product/home")
	public String home() {
		return "product/home";
	}
	
	@GetMapping("product/details")
	public String details() {
		return "product/details";
	}
	
	@GetMapping("cartitem/cart")
	public String cart() {
		return "cartitem/cart";
	}
}
