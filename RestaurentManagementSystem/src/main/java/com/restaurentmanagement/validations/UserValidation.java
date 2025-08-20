package com.restaurentmanagement.validations;


import com.restaurentmanagement.model.User;
import com.restaurentmanagement.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.ValidationUtils;



@Component
public class UserValidation implements Validator {

    @Autowired
    UserService userService;


    @Override
    public boolean supports(Class<?> aClass) {
        return false;
    }

    @Override
    public void validate(Object target, Errors errors) {

        User user = (User) target;

        if (userService.alreadyExist(user.getUid())) {
            System.out.println("user already exist");
            errors.rejectValue("uid", "user.uid.alreadyExist");
        }

        if(user.getUid()<=0){
            System.out.println("");
            errors.rejectValue("uid", "user.uid.notNegative");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "uname", "user.uname.isEmpty");
        if (!user.getUname().matches("[a-zA-Z\\s]+")) {
            System.out.println("name not follow formate");
            errors.rejectValue("uname", "user.name.formateError");

        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "upassword", "user.upassword.isEmpty");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "urole", "user.urole.isEmpty");







    }
}
