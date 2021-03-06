package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/mainchat")
    public String gotoMain(Model model){
        return "/WEB-INF/mainChat/chat.html";
    }
    @RequestMapping("/register")
    public String register(Model model){
        return "/WEB-INF/mainChat/register.html";
    }
    @RequestMapping("/login")
    public String login(Model model){
        return "/WEB-INF/mainChat/login.html";
    }
    @RequestMapping("/")
    public String indexPage() throws Exception {
        return "redirect:/login";
    }
}
