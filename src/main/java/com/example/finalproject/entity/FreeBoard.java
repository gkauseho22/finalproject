package com.example.finalproject.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.sql.Date;
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

    @ManyToOne
    private UserList user_code;

    @Column(columnDefinition = "date default sysdate")
    private Date create_time;

    @Column(columnDefinition = "int default 0")
    private int views;

    @Column(columnDefinition = "int default 0")
    private int declaration;
    private Long add_file;

    @Builder
    public FreeBoard(Long list_code, int board_code, String list_title, String list_content, UserList user_code, Date create_time, int views, int declaration, Long add_file) {
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
