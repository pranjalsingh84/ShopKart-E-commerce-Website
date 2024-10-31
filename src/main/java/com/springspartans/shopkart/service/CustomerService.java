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
            Customer demoUser = new Customer(0, "Demo User", "demo@springspartans.com", "password", "123 Street", 1234567890L);
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

    public void updateCustomer(Customer customer) {
        customerRepository.save(customer);
        if (loggedInCustomer != null && loggedInCustomer.getEmail().equals(customer.getEmail())) {
            loggedInCustomer = customer;
        }
    }
}