package com.example.finalproject.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@NoArgsConstructor
@Entity
@Getter
public class UserList implements UserDetails {

    @Id @GeneratedValue
    private Long user_code;
    private String user_id;
    private String user_pw;
    private String user_name;
    private String mbti_mbti;
    private String user_job;
    private int certification;
    private String inter_job1;
    private String inter_job2;
    private String inter_job3;
    private int buy_point;
    private int get_point;
    private String file1;
    private String file2;
    private String file3;
    private int url_code1;
    private int url_code2;
    private int url_code3;
    private int url_code4;
    private int url_code5;
    private int bad_report;
    private Timestamp block_date;
    private int block_count;

    @Builder
    public UserList(String user_id, String user_pw, String user_name, String mbti_mbti, String user_job, String inter_job1, String inter_job2, String inter_job3) {
        this.user_id = user_id;
        this.user_pw = user_pw;
        this.user_name = user_name;
        this.mbti_mbti = mbti_mbti;
        this.user_job = user_job;
        this.inter_job1 = inter_job1;
        this.inter_job2 = inter_job2;
        this.inter_job3 = inter_job3;
    }

    // 사용자의 권한을 컬렉션 형태로 반환
    // 단, 클래스 자료형은 GrantedAuthority를 구현해야함
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<GrantedAuthority> roles = new HashSet<>();
        for (String role : auth.split(","))
        return null;
    }

    @Override
    public String getPassword() {
        return null;
    }

    @Override
    public String getUsername() {
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return false;
    }
}
