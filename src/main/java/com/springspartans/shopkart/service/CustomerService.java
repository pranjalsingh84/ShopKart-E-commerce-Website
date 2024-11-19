package com.springspartans.shopkart.service;

import com.springspartans.shopkart.exception.InvalidImageUploadException;
import com.springspartans.shopkart.exception.InvalidPasswordException;
import com.springspartans.shopkart.model.Customer;
import com.springspartans.shopkart.repository.CustomerRepository;
import com.springspartans.shopkart.util.ImageUploadValidator;
import com.springspartans.shopkart.util.PasswordEncoder;
import com.springspartans.shopkart.util.PasswordValidator;

import jakarta.annotation.PostConstruct;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.Optional;

@Service
public class CustomerService {
	
	@Autowired
	private String uploadPath; 
	
    @Autowired
    private CustomerRepository customerRepository;
    
    @Autowired
    private HttpSession httpSession;
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Autowired
    private PasswordValidator passwordValidator;

    @Autowired
    private ImageUploadValidator imageUploadValidator;

    @PostConstruct
    void addDemoUser() {
        if (customerRepository.findByEmail("demo@springspartans.com").isEmpty()) {
            Customer demoUser  = new Customer(0, "Demo User", "demo@springspartans.com", passwordEncoder.encode("shopkart123@AD"), "JD Block, Sector III, Salt Lake City, Kolkata-700106", 9876543210L, "user1.jpg",Timestamp.from(Instant.now()),null);
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

    public boolean signup(Customer customer) throws InvalidPasswordException {
        if (customerRepository.findByEmail(customer.getEmail()).isPresent()) {
            return false;
        }
        if (!passwordValidator.isValidPassword(customer.getPassword())) {
        	throw new InvalidPasswordException("Invalid password entered!");
        }
        customer.setPassword(passwordEncoder.encode(customer.getPassword()));
        customerRepository.save(customer);
        return true;
    }

    public Customer getCustomer() {
        return (Customer) httpSession.getAttribute("loggedInCustomer");
    }

    public boolean updateCustomer(
    	String newName, long newPhone, String newAddress, 
    	String newPassword, String oldPassword, MultipartFile profilePicture
    ) throws IOException, InvalidPasswordException, InvalidImageUploadException {
        Customer loggedInCustomer = (Customer) httpSession.getAttribute("loggedInCustomer");
        if (loggedInCustomer != null && passwordEncoder.matches(oldPassword, loggedInCustomer.getPassword())) {
        	if (!passwordValidator.isValidPassword(newPassword)) {
        		throw new InvalidPasswordException("Invalid password entered!");
        	}
            String encodedPassword = newPassword.isEmpty() ? loggedInCustomer.getPassword() : passwordEncoder.encode(newPassword);
            String profilePictureName = (profilePicture != null && !profilePicture.isEmpty()) ? "user" + loggedInCustomer.getId() + ".jpg" : null;
            Customer updatedCustomer = new Customer(loggedInCustomer.getId(), newName, loggedInCustomer.getEmail(), encodedPassword, newAddress, newPhone, profilePictureName, loggedInCustomer.getSignup_date(), loggedInCustomer.getLast_login_date());
            customerRepository.save(updatedCustomer);
            httpSession.setAttribute("loggedInCustomer", updatedCustomer);
            
            if (imageUploadValidator.isValidImage(profilePicture)) {
            	String customerUploadPath = uploadPath + "\\customer";
                File destination = new File(customerUploadPath);
                if (!destination.exists()) {
                	destination.mkdirs();
                }
                File fileToSave = new File(destination, profilePictureName);
                profilePicture.transferTo(fileToSave);
            }  else if (profilePicture != null && !profilePicture.isEmpty()) {
            	throw new InvalidImageUploadException("Improper file format!");
            }
            return true;
        }
        return false;
    }

    public void logout() {
        httpSession.invalidate();
    }
    
}
