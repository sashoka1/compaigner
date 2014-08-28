package com.saInfosoft.compaigner.models;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller()
@RequestMapping(value = "/login")
public class LoginController {

    @RequestMapping(method = RequestMethod.POST, value = "/authenticate")
    public String loginProcess() {
        return "welcome";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/signUp")
    public String loginSignUp() {
        return "welcome";
    }

}
