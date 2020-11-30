package com.example.finalproject.repository;

import com.example.finalproject.entity.UserList;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserListRepository extends JpaRepository<UserList, Long> {
    Optional<UserList> findByUser_Id(String userId);

}
