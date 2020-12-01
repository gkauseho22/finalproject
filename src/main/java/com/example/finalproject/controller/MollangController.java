package com.example.finalproject.controller;

import com.example.finalproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MollangController {

    @Autowired
    UserService userService;

    @RequestMapping("/member_join_check_id")
    public String member_join_check_id(@RequestParam("User_id") String id) {

        System.out.println("체크하기");

        String result = userService.User_Join_Check_Id(id);

        System.out.println(result);

        return result;
    }

    @RequestMapping("/member_join_check_name")
    public String member_join_check_name(@RequestParam("User_name") String name)
    {

        String result = userService.User_Join_Check_Name(name);

        return result;
    }
}
