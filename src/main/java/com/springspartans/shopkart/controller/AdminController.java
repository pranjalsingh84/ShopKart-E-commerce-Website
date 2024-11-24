package com.springspartans.shopkart.controller;
import com.springspartans.shopkart.model.Admin;
import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.service.AdminService;
import com.springspartans.shopkart.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private CustomerService customerService;

    @GetMapping
    public String login() {
        return "admin/admin_login";
    }

    @GetMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password , @RequestParam String security_key) {
        if (email == null || password == null || security_key == null) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST);
        }
        boolean success = adminService.login(email, password , security_key);
        if (success) {
            return "redirect:/admin/dashboard";
        } else {
        	return "redirect:/admin?msg=failed";
        }
    }
    @GetMapping("/logout")
    public String logout() {
        adminService.logout();
        return "redirect:/admin?msg=logout";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
    	Admin admin = adminService.getAdmin();
		Customer customer = customerService.getCustomer();
    	if(admin == null &&  customer == null) {
    		throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
    	}
    	else if (admin == null && customer != null) {
    		throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    	}
        return "admin/dashboard";
    }

    @GetMapping("/dashboard/siteWidgets")
    public String getSiteWidgets() {
    	Admin admin = adminService.getAdmin();
		Customer customer = customerService.getCustomer();
    	if(admin == null &&  customer == null) {
    		throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
    	}
    	else if (admin == null && customer != null) {
    		throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    	}
        return "admin/siteWidgets";
    }

    @GetMapping("/dashboard/product/add")
    public String addNewProduct() {
    	Admin admin = adminService.getAdmin();
		Customer customer = customerService.getCustomer();
    	if(admin == null &&  customer == null) {
    		throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
    	}
    	else if (admin == null && customer != null) {
    		throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    	}
        return "admin/addNewProduct";
    }

    @GetMapping("/dashboard/product")
    public String manageProductCatalogue() {
    	Admin admin = adminService.getAdmin();
		Customer customer = customerService.getCustomer();
    	if(admin == null &&  customer == null) {
    		throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
    	}
    	else if (admin == null && customer != null) {
    		throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    	}
        return "admin/manageProductCatalogue";
    }

    @GetMapping("/dashboard/customer")
    public String manageCustomers() {
    	Admin admin = adminService.getAdmin();
		Customer customer = customerService.getCustomer();
    	if(admin == null &&  customer == null) {
    		throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
    	}
    	else if (admin == null && customer != null) {
    		throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    	}
        return "admin/manageCustomers";
    }

    @GetMapping("/dashboard/order")
    public String manageOrder() {
    	Admin admin = adminService.getAdmin();
		Customer customer = customerService.getCustomer();
    	if(admin == null &&  customer == null) {
    		throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
    	}
    	else if (admin == null && customer != null) {
    		throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    	}
        return "admin/manageOrders";
    }
}
