package com.springspartans.shopkart.service;

import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.repository.CustomerRepository;
import com.springspartans.shopkart.util.PasswordEncoder;

import jakarta.annotation.PostConstruct;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;
    
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private HttpSession httpSession;

    @PostConstruct
    void addDemoUser() {
        if (customerRepository.findByEmail("demo@springspartans.com").isEmpty()) {
            Customer demoUser  = new Customer(0, "Demo User", "demo@springspartans.com", passwordEncoder.encode("shopkart123"), "JD Block, Sector III, Salt Lake City, Kolkata-700106", 9876543210L);
            customerRepository.save(demoUser);
        }
    }

    public boolean login(String email, String password) {
        Optional<Customer> customer = customerRepository.findByEmail(email);
        if (customer.isPresent() && passwordEncoder.matches(password, customer.get().getPassword())) {
            httpSession.setAttribute("loggedInCustomer", customer.get());
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
        return (Customer) httpSession.getAttribute("loggedInCustomer");
    }

    public boolean updateCustomer(String newName, long newPhone, String newAddress, String newPassword, String oldPassword) {
        Customer loggedInCustomer = (Customer) httpSession.getAttribute("loggedInCustomer");
        if (loggedInCustomer != null && passwordEncoder.matches(oldPassword, loggedInCustomer.getPassword())) {
            String encodedPassword = newPassword.isEmpty() ? loggedInCustomer.getPassword() : passwordEncoder.encode(newPassword);
            Customer updatedCustomer = new Customer(loggedInCustomer.getId(), newName, loggedInCustomer.getEmail(), encodedPassword, newAddress, newPhone);
            customerRepository.save(updatedCustomer);
            httpSession.setAttribute("loggedInCustomer", updatedCustomer);
            return true;
        }
        return false;
    }

    public void logout() {
        httpSession.invalidate();
    }
    
}
