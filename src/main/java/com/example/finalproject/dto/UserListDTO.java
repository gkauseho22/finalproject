package com.example.finalproject.dto;

import com.example.finalproject.entity.UserList;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class UserListDTO {

    private Long user_code;
    private String user_id;
    private String user_pw;
    private String user_name;
    private String mbti_mbti;
    private String user_job;
    private String inter_job1;
    private String inter_job2;
    private String inter_job3;

    @Builder
    public UserListDTO(Long user_code, String user_id, String user_pw, String user_name, String mbti_mbti, String user_job, String inter_job1, String inter_job2, String inter_job3) {
        this.user_code = user_code;
        this.user_id = user_id;
        this.user_pw = user_pw;
        this.user_name = user_name;
        this.mbti_mbti = mbti_mbti;
        this.user_job = user_job;
        this.inter_job1 = inter_job1;
        this.inter_job2 = inter_job2;
        this.inter_job3 = inter_job3;
    }

    public UserList toEntity(){
        return UserList.builder()
                .user_code(user_code)
                .user_id(user_id)
                .user_pw(user_pw)
                .user_name(user_name)
                .user_job(user_job)
                .mbti_mbti(mbti_mbti)
                .inter_job1(inter_job1)
                .inter_job2(inter_job2)
                .inter_job3(inter_job3)
                .build();
    }

}
