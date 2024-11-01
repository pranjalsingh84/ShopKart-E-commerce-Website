package com.springspartans.shopkart.service;

import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.repository.CustomerRepository;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    private Customer loggedInCustomer; 

    @PostConstruct
    void addDemoUser() {
        if (customerRepository.findByEmail("demo@springspartans.com").isEmpty()) {
            Customer demoUser = new Customer(0, "Demo User", "demo@springspartans.com", "shopkart123", "JD Block, Sector III, Salt Lake City, Kolkata-700106", 9876543210L);
            customerRepository.save(demoUser);
        }
    }

    public boolean login(String email, String password) {
        Optional<Customer> customer = customerRepository.findByEmail(email);
        if (customer.isPresent() && customer.get().getPassword().equals(password)) {
            loggedInCustomer = customer.get(); 
            return true;
        }
        return false;
    }

    public boolean signup(Customer customer) {
        if (customerRepository.findByEmail(customer.getEmail()).isPresent()) {
            return false;
        }
        customerRepository.save(customer);
        return true;
    }

    public Customer getCustomer() {
        return loggedInCustomer; 
    }

    public boolean updateCustomer(String newName, long newPhone, String newAddress, String newPassword, String oldPassword) {
        if (loggedInCustomer != null && loggedInCustomer.getPassword().equals(oldPassword)) {
        	Customer customer = new Customer(loggedInCustomer.getId(), newName, loggedInCustomer.getEmail(), newPassword, newAddress, newPhone);
        	customerRepository.save(customer);
            loggedInCustomer = customer;
            return true;
        }
        return false;
    }

	public void logout() {
		loggedInCustomer = null;		
	}
    
}
