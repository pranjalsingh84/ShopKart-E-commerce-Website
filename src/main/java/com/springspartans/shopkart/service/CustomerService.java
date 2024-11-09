package com.springspartans.shopkart.service;

import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.repository.CustomerRepository;
import com.springspartans.shopkart.util.PasswordEncoder;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;
    
    @Autowired
    private PasswordEncoder passwordEncoder;

    private Customer loggedInCustomer; 

    @PostConstruct
    void addDemoUser() {
        if (customerRepository.findByEmail("demo@springspartans.com").isEmpty()) {
            Customer demoUser = new Customer(0, "Demo User", "demo@springspartans.com", passwordEncoder.encode("shopkart123"), "JD Block, Sector III, Salt Lake City, Kolkata-700106", 9876543210L);
            customerRepository.save(demoUser);
        }
    }

    public boolean login(String email, String password) {
        Optional<Customer> customer = customerRepository.findByEmail(email);
        if (customer.isPresent() && passwordEncoder.matches(password, customer.get().getPassword())) {
            loggedInCustomer = customer.get(); 
            return true;
        }
        return false;
    }

    public boolean signup(Customer customer) {
        if (customerRepository.findByEmail(customer.getEmail()).isPresent()) {
            return false;
        }
        customer.setPassword(passwordEncoder.encode(customer.getPassword()));
        customerRepository.save(customer);
        return true;
    }

    public Customer getCustomer() {
        return loggedInCustomer; 
    }

    public boolean updateCustomer(String newName, long newPhone, String newAddress, String newPassword, String oldPassword) {
        if (loggedInCustomer != null && passwordEncoder.matches(oldPassword, loggedInCustomer.getPassword())) {
        	Customer newCustomer = new Customer(loggedInCustomer.getId(), newName, loggedInCustomer.getEmail(), passwordEncoder.encode(newPassword), newAddress, newPhone);
        	customerRepository.save(newCustomer);
            loggedInCustomer = newCustomer;
            return true;
        }
        return false;
    }

	public void logout() {
		loggedInCustomer = null;		
	}
    
}
