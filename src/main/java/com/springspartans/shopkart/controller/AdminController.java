package com.springspartans.shopkart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@GetMapping("/dashboard/siteWidgets")
	public String getSiteWidgets() {
		return "admin/siteWidgets";
	}
	@GetMapping("/dashboard")
	public String getDashboard() {
		return "admin/dashboard";	
	}
	@GetMapping("/dashboard/product/add")
	public String addNewProduct() {
		return "admin/addNewProduct";
	}
	@GetMapping("/dashboard/product")
	public String manageProductCatalogue() {
		return "admin/manageProductCatalogue";
	}
	@GetMapping("/dashboard/customer")
	public String manageCustomers() {
		return "admin/manageCustomers";
	}
	@GetMapping("/dashboard/order")
	public String manageOrder() {
		return "admin/manageOrders";
	}

	
}
