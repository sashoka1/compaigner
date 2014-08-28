package com.saInfosoft.compaigner.models;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

    @RequestMapping(method = RequestMethod.GET, value = "/web")
    public String loginProcess() {
        return "index";
    }

}
