package com.me.demo.controller;


import com.me.demo.pojo.User;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.ValidationUtils;

public class UserValidator implements Validator {

    public boolean supports(Class aClass)
    {
        return aClass.equals(User.class);
    }

    public void validate(Object obj, Errors errors)
    {
        User user = (User) obj;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "error.invalid.user", "User Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.invalid.password", "Password Required");
        //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "error.invalid.firstname", "Firstname Required");
        //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname", "error.invalid.lastname", "Lastname Required");
    }
}
