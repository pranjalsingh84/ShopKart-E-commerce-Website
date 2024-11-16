package com.springspartans.shopkart.exception;

public class InvalidImageUploadException extends RuntimeException {
    private static final long serialVersionUID = 1L;
    
    public InvalidImageUploadException(String message) {
        super(message);
    }
}