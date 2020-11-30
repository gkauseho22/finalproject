package com.example.finalproject.dto;

import com.example.finalproject.entity.FreeBoard;
import com.example.finalproject.entity.UserList;
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

    private int board_code;
    private String list_title;
    private String list_content;
    private UserList user_code;
    private Date create_time;
    private int views;
    private int declaration;
    private Long add_file;

    @Builder
    public FreeBoardDTO(int board_code, String list_title, String list_content, UserList user_code, Date create_time, int views, int declaration, Long add_file) {
        this.board_code = board_code;
        this.list_title = list_title;
        this.list_content = list_content;
        this.user_code = user_code;
        this.create_time = create_time;
        this.views = views;
        this.declaration = declaration;
        this.add_file = add_file;
    }

    public FreeBoard toEntity(){
        return FreeBoard.builder()
                .list_title(list_title)
                .add_file(add_file)
                .list_content(list_content)
                .board_code(board_code)
                .user_code(user_code)
                .create_time(create_time)
                .views(views)
                .declaration(declaration)
                .build();
    }
}
