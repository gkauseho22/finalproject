package com.example.finalproject.service;

import com.example.finalproject.dto.UserListDTO;
import com.example.finalproject.entity.UserList;
import com.example.finalproject.repository.UserListRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class UserListService{

    @Autowired
    private UserListRepository userListRepository;

    public Long save(UserListDTO userListDTO){

//        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//        userListDTO.setUser_pw(passwordEncoder.encode(userListDTO.getUser_pw()));

        return userListRepository.save(userListDTO.toEntity()).getUser_code();
    }




}
