package com.example.finalproject.controller;

import com.example.finalproject.dto.FreeBoardDTO;
import com.example.finalproject.service.FreeBoardService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

@AllArgsConstructor
@Controller
public class BoardController {

    private FreeBoardService freeBoardService;

    @RequestMapping("/view")
    public String writeView(Model model){

        model.addAttribute("pp", "../board/write.jsp");

        return "view/template/template";
    }

    @GetMapping("/Free_Board")
    public String Free_Board(@RequestParam(value = "page", defaultValue = "1") Integer pageNum, Model model){
        List<FreeBoardDTO> freeBoardDTOList = freeBoardService.getBoard(pageNum);
        Integer[] pageList = freeBoardService.getPageList(pageNum);

        model.addAttribute("boardList", freeBoardDTOList);
        model.addAttribute("pageList", pageList);
        model.addAttribute("pp", "../main/main.jsp");

        return "view/template/template";
    }


    @PostMapping("/write")
    public String write(@Valid FreeBoardDTO freeBoardDTO){

        freeBoardService.save(freeBoardDTO);

        return "redirect:/";
    }

}
