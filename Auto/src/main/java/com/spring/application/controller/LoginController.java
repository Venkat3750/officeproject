package com.spring.application.controller;

import com.spring.application.AutoApplication;
import com.spring.application.Bean.ServerStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Iterator;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String loginMessage(ModelMap map) {

        ArrayList<ServerStatus>  serverStatusArrayList=AutoApplication.getStatus();

            map.addAttribute("serverStatus", serverStatusArrayList);
           /* map.addAttribute("status", itr.next());
            map.addAttribute("time", itr1.next());
*/


        return "login";
    }
}

