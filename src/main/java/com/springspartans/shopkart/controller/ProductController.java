package com.springspartans.shopkart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springspartans.shopkart.model.Product;
import com.springspartans.shopkart.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService; 
	
	@GetMapping
	public String getAllProducts(Model model) {
		List<Product> productList = productService.getAllProducts();
		model.addAttribute("productList", productList);
		List<String> categoryList = productService.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		return "product/home";
	}
	
	@GetMapping("/{id}")
	public String getProductById(@PathVariable int id, Model model) {
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		List<String> categoryList = productService.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		return "product/details";
	}
	
	@GetMapping("/category/{category}")
	public String getProductsByCategory(@PathVariable String category, Model model) {
		List<Product> productList = productService.getProductsByCategory(category);
		model.addAttribute("productList", productList);
		model.addAttribute("category", category);		
		List<String> categoryList = productService.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		return "product/home";
	}
	
	@GetMapping("/search")
	public String getProductsByStartName(@RequestParam String prefix, Model model) {
		List<Product> productList = productService.getProductsByStartName(prefix);
		model.addAttribute("productList", productList);
		List<String> categoryList = productService.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		return "product/home";
	}
	
}
