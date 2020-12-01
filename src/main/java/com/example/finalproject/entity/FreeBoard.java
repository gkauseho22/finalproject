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

    @Column(columnDefinition = "int default 1")
    private int board_code;

    private String list_title;

    @Column(length = 4000)
    private String list_content;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_code", insertable = false, updatable = false)
    private User_listEntity user_code;

    @CreationTimestamp
    private Timestamp createtime;

    @Column(columnDefinition = "int default 0")
    private int views;

    @Column(columnDefinition = "int default 0")
    private int declaration;

    private Long add_file;

    @Builder
    public FreeBoard(Long list_code, int board_code, String list_title, String list_content, User_listEntity user_code, Timestamp createtime, int views, int declaration, Long add_file) {
        this.list_code = list_code;
        this.board_code = board_code;
        this.list_title = list_title;
        this.list_content = list_content;
        this.user_code = user_code;
        this.createtime = createtime;
        this.views = views;
        this.declaration = declaration;
        this.add_file = add_file;
    }
}
