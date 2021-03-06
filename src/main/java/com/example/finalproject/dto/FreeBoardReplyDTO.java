package com.example.finalproject.dto;

import com.example.finalproject.entity.FreeBoardReply;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class FreeBoardReplyDTO {

    private Long reply_code;
    private int list_code;
    private int user_code;
    private String reply_content;
    private int reply_step;
    private int declaration;

    public FreeBoardReplyDTO(Long reply_code, int list_code, int user_code, String reply_content, int reply_step, int declaration) {
        this.reply_code = reply_code;
        this.list_code = list_code;
        this.user_code = user_code;
        this.reply_content = reply_content;
        this.reply_step = reply_step;
        this.declaration = declaration;
    }

    public FreeBoardReply toEntity(){
        return FreeBoardReply.builder()
                .reply_code(reply_code)
                .list_code(list_code)
                .user_code(user_code)
                .reply_content(reply_content)
                .reply_step(reply_step)
                .declaration(declaration)
                .build();
    }
}
