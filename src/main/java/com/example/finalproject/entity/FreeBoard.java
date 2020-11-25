package com.example.finalproject.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
@Getter
@NoArgsConstructor
public class FreeBoard {

    @Id @GeneratedValue
    private Long list_code;

    private int board_code;
    private String list_title;
    private String list_content;
    private int user_code;
    private Timestamp create_time;
    private int views;
    private int declaration;
    private String add_file;

    @Builder
    public FreeBoard(Long list_code, int board_code, String list_title, String list_content, int user_code, Timestamp create_time, int views, int declaration, String add_file) {
        this.list_code = list_code;
        this.board_code = board_code;
        this.list_title = list_title;
        this.list_content = list_content;
        this.user_code = user_code;
        this.create_time = create_time;
        this.views = views;
        this.declaration = declaration;
        this.add_file = add_file;
    }
}
