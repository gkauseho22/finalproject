package com.example.finalproject.repository;


import com.example.finalproject.entity.User_listEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User_listEntity, Long> {

        @Query("SELECT u.user_pw FROM User_listEntity u WHERE u.user_id = :user_id")
        public String login(String user_id);

        // 아이디 검색, 아이디 찾기 (아이디 중복 찾기 용)
        @Query("SELECT user_id FROM User_listEntity WHERE user_id = :user_id")
        public String User_Join_Check_Id(String user_id);

        //닉네임 검색, 닉네임 찾기 (닉네임 중복 찾기 용)
        @Query("SELECT user_name FROM User_listEntity WHERE user_name= :User_name")
        public String User_Join_Check_Nick(String User_name);

}
