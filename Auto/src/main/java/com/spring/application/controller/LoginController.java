package com.spring.application.controller;

import com.spring.application.AutoApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String loginMessage(ModelMap map){
        String line="text";
      //  while(line!=null) {
            line = AutoApplication.getServerData();
            //String time=DemoApplication.getTimeStamp();
            System.out.println("output " + line);
            //System.out.println("time "+time);
            map.addAttribute("servername", "Ansibel Server");
            map.addAttribute("status", line);
            map.addAttribute("time", "time");
      //  }
        return "login";
    }
}