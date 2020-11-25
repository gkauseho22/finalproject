package com.example.finalproject.controller;

import com.example.finalproject.dto.FreeBoardDTO;
import com.example.finalproject.dto.UserListDTO;
import com.example.finalproject.service.FreeBoardService;
import com.example.finalproject.service.UserListService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private UserListService userListService;

    @Autowired
    private FreeBoardService freeBoardService;

    @GetMapping("/")
    public String main(){
        return "/view/template/template";
    }

    @GetMapping("/join")
    public String join(){
        return "/view/join/jointemplate";
    }

    @PostMapping("/joinPro")
    public String joinPro(UserListDTO userListDTO){
        userListService.save(userListDTO);
        return "redirect:/";
    }

    @GetMapping("/board")
    public String board(){
        return "/view/board/write";
    }

//    @PostMapping("/write")
//    public String boardMain(FreeBoardDTO freeBoardDTO){
//        freeBoardService.save(freeBoardDTO);
//        return "redirect:/";
//    }

    @PostMapping("/write")
    public String boardMain(@RequestParam("add_file") MultipartFile files, FreeBoardDTO freeBoardDTO){

            String baseDir = "C:\\FileUpload";
            String filePath = baseDir + "\\" + files.getOriginalFilename();
            freeBoardDTO.setAdd_file(filePath);
            freeBoardService.save(freeBoardDTO);

        return "/";
    }

    @GetMapping("/result")
    public String result(Model model){
        List<FreeBoardDTO> freeBoardDTOList = freeBoardService.getBoard();
        model.addAttribute("boardList", freeBoardDTOList);
        return "/view/board/result";
    }
}
