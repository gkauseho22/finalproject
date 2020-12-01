package com.example.finalproject.entity;


import lombok.*;

import javax.persistence.*;
import java.security.Timestamp;


@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Setter
@Entity
@Table(name = "user_list")
public class User_listEntity{

        @Id
        @GeneratedValue
        private Long user_code;

        @Column(unique = true)
        private String user_id;

        @Column(nullable = false)
        private String user_pw;

        @Column(unique = true)
        private String user_name;

        private String mbti_mbti;

        private String user_job;

        @Column(columnDefinition = "int default 0" ,nullable = false)
        private int certification;

        private String inter_job1;

        private String inter_job2;

        private String inter_job3;

        @Column(columnDefinition = "int default 0" ,nullable = false)
        private int buy_point;

        @Column(columnDefinition = "int default 0" ,nullable = false)
        private int get_point;

        @Column(columnDefinition = "varchar2(50) default 'Lv.1'")
        private String user_level;

        private String file1;

        private String file2;

        private String file3;

        private int url_code1;

        private int url_code2;

        private int url_code3;

        private int url_code4;

        private int url_code5;

        @Column(columnDefinition = "int default 0" )
        private int bad_report;

        private Timestamp block_date;

        @Column(columnDefinition = "int default 0" )
        private int block_count;

        @Builder
        public User_listEntity(Long user_code, String user_id, String user_pw, String user_name, String mbti_mbti, String user_job,
                               int certification, String inter_job1, String inter_job2, String inter_job3, int buy_point, int get_point,
                               String user_level, String file1, String file2, String file3, int url_code1, int url_code2,
                               int url_code3, int url_code4, int url_code5, int bad_report, Timestamp block_date, int block_count) {
                this.user_code = user_code;
                this.user_id = user_id;
                this.user_pw = user_pw;
                this.user_name = user_name;
                this.mbti_mbti = mbti_mbti;
                this.user_job = user_job;
                this.certification = certification;
                this.inter_job1 = inter_job1;
                this.inter_job2 = inter_job2;
                this.inter_job3 = inter_job3;
                this.buy_point = buy_point;
                this.get_point = get_point;
                this.user_level = user_level;
                this.file1 = file1;
                this.file2 = file2;
                this.file3 = file3;
                this.url_code1 = url_code1;
                this.url_code2 = url_code2;
                this.url_code3 = url_code3;
                this.url_code4 = url_code4;
                this.url_code5 = url_code5;
                this.bad_report = bad_report;
                this.block_date = block_date;
                this.block_count = block_count;
        }
}

