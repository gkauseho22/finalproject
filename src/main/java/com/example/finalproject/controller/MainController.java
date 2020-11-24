package com.example.finalproject.controller;

import com.example.finalproject.dto.UserListDTO;
import com.example.finalproject.service.UserListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

    @Autowired
    private UserListService userListService;

    @GetMapping("/")
    public String main(){

        return "/view/join/jointemplate";
    }

    @PostMapping("/joinPro")
    public String join(UserListDTO userListDTO){
        userListService.save(userListDTO);
        return "redirect:/view/main/main";
    }
}
