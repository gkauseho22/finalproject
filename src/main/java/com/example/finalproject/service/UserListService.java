package com.example.finalproject.service;/*
package com.example.fproject.Service;

import com.example.fproject.Dto.UserListDTO;
import com.example.fproject.Entity.UserList;
import com.example.fproject.Repository.UserListRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class UserListService {

    @Autowired
    private UserListRepository userListRepository;

    public Long save(UserListDTO userListDTO){

        return userListRepository.save(UserList.builder()
                .user_id(userListDTO.getUser_id())
                .user_name(userListDTO.getUser_name())
                .user_job(userListDTO.getUser_job())
                .mbti_mbti(userListDTO.getMbti_mbti())
                .inter_job1(userListDTO.getInter_job1())
                .inter_job2(userListDTO.getInter_job2())
                .inter_job3(userListDTO.getInter_job3())
                .user_pw(userListDTO.getUser_pw()).build()).getUser_code();
    }
}
*/
