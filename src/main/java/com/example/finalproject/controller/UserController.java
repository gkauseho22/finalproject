package com.example.finalproject.controller;


import com.example.finalproject.dto.UserDTO;
import com.example.finalproject.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@AllArgsConstructor
@Controller
public class UserController {


  UserService userService;


    @RequestMapping("/login")
    public String login(){

        return "view/member/member_login";
    }

        @RequestMapping("/loginaction")    //로그인 액션
    public String loginaction(HttpServletRequest request, HttpSession httpSession, Model model){
        boolean check =  userService.logincheck(request,httpSession);

        if(check == true)
            return "view/template/template";

        return "view/member/member_login";
    }


        @RequestMapping("/joinform")
        public String joinform(UserDTO userDTO){

        return "view/join/joinform";
        }

        @RequestMapping("/postjoin")          // 회원가입 액션
        public String insertjoin(UserDTO userDTO) {
             userService.savejoin(userDTO);
                return "redirect:/";
            }
        }

