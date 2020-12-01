package com.example.finalproject.service;


import com.example.finalproject.dto.UserDTO;
import com.example.finalproject.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

@AllArgsConstructor
@Service
public class UserService {

    private UserRepository userRepository;

   @Transactional       //회원가입
    public Long savejoin(UserDTO userDTO){

        return userRepository.save(userDTO.toEntity()).getUser_code();
    }

    @Transactional      /*로그인 체크 서비스*/
    public boolean logincheck (HttpServletRequest request, HttpSession httpSession){

       String userpw = request.getParameter("user_pw");

       String dbpw = userRepository.login(request.getParameter("user_id"));

       if(userpw.equals(dbpw))
       {
           httpSession.setAttribute("user_id",request.getParameter("user_id"));
           return true;
       }

    return false;
    }


    //아이디 중복 체크하기
    @Transactional
    public String User_Join_Check_Id(String user_id)
    {
        String check = userRepository.User_Join_Check_Id(user_id);

        if(check == null)
        {
            return "null";
        }
        return "check";
    }

    //닉네임 중복 체크하기
    @Transactional
    public String User_Join_Check_Name(String user_name)
    {
        String check = userRepository.User_Join_Check_Nick(user_name);

        if(check == null)
        {
            return "null";
        }
        return "check";
    }



}
