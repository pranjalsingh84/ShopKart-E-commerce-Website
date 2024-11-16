package com.springspartans.shopkart.Exception;

public class InvalidImageUploadException extends RuntimeException {
    private static final long serialVersionUID = 1L;
    
    public InvalidImageUploadException(String message) {
        super(message);
    }
}