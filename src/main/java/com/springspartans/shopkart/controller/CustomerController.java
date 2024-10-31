package com.springspartans.shopkart.controller;

import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.service.CustomerService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;



@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    @GetMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password, Model model) {
        boolean success = customerService.login(email, password);
        if (success) {
            return "redirect:/product/home";
        } else {
            return "redirect:/customer/login?msg=failed";
        }
    }
    @PostMapping("/signup")
    public String signup(Customer customer, Model model) {
        boolean success = customerService.signup(customer);
        if (success) {
            return "redirect:/customer/login";
        } else {
            return "redirect:/customer/signup?msg=failed";
        }
    } 
    @GetMapping("/name")
    public String getCustomer(Model model) {
        Customer customer = customerService.getCustomer();
        model.addAttribute("customer", customer);
        return "customer/info"; 
    }
    @PostMapping("/update")
    public String updateCustomer(Customer customer,Model model) {
        customerService.updateCustomer(customer);
        model.addAttribute("message", "Customer information updated successfully.");
        model.addAttribute("customer", customer);
        return "redirect:/product/home";
    }
}