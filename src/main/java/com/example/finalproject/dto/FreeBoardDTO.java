package com.example.finalproject.dto;

import com.example.finalproject.entity.FreeBoard;
import com.example.finalproject.entity.User_listEntity;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@Setter
@NoArgsConstructor
public class FreeBoardDTO {

    private Long list_code;
    private int board_code;
    private String list_title;
    private String list_content;
    private User_listEntity user_code;
    private Timestamp createtime;
    private int views;
    private int declaration;
    private Long add_file;

    @Builder
    public FreeBoardDTO(Long list_code, int board_code, String list_title, String list_content, User_listEntity user_code, Timestamp createtime, int views, int declaration, Long add_file) {
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

    public FreeBoard toEntity(){
        return FreeBoard.builder()
                .list_code(list_code)
                .list_title(list_title)
                .add_file(add_file)
                .list_content(list_content)
                .board_code(board_code)
                .user_code(user_code)
                .createtime(createtime)
                .views(views)
                .declaration(declaration)
                .build();
    }
}
