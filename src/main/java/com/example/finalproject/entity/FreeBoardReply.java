package com.example.finalproject.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class FreeBoardReply {

    @Id @GeneratedValue
    private Long reply_code;

    private int list_code;
    private int user_code;

    private String reply_content;
    private int reply_step;
    private int declaration;

    @Builder
    public FreeBoardReply(Long reply_code, int list_code, int user_code, String reply_content, int reply_step, int declaration) {
        this.reply_code = reply_code;
        this.list_code = list_code;
        this.user_code = user_code;
        this.reply_content = reply_content;
        this.reply_step = reply_step;
        this.declaration = declaration;
    }
}
