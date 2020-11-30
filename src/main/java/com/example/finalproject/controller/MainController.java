package com.example.finalproject.controller;

import com.example.finalproject.dto.FileDTO;
import com.example.finalproject.dto.FreeBoardDTO;
import com.example.finalproject.dto.UserListDTO;
import com.example.finalproject.entity.FreeBoard;
import com.example.finalproject.service.FileService;
import com.example.finalproject.service.FreeBoardService;
import com.example.finalproject.service.UserListService;
import com.example.finalproject.util.MD5Generator;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private UserListService userListService;

    @Autowired
    private FreeBoardService freeBoardService;

    @Autowired
    private FileService fileService;

    @GetMapping("/")
    public String main(Model model){

        List<FreeBoardDTO> freeBoardDTOList = freeBoardService.getBoard();
        model.addAttribute("boardList", freeBoardDTOList);

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

    @GetMapping("/just")
    public String test_Just() {
        return "/view/board/result";
    }

    @GetMapping("/board")
    public String board(){
        return "/view/board/write";
    }

//    @PostMapping("/write")
//    public String boardMain(@RequestBody FreeBoardDTO freeBoardDTO, MultipartFile files){
//        try{
//            String origFilename = files.getOriginalFilename();
//            String filename = new MD5Generator(origFilename).toString();
//            String savePath = System.getProperty("C:\\Users\\Administrator\\IdeaProjects\\finalproject\\src\\main\\resources\\static") + "\\upload";
//            if(!new File(savePath).exists()){
//                try{
//                    new File(savePath).mkdir();
//                }catch (Exception e){
//                    e.getStackTrace();
//                }
//            }
//            String filePath = savePath + "\\" + filename;
//            files.transferTo(new File(filePath));
//
//            FileDTO fileDTO = new FileDTO();
//            fileDTO.setOrigFilename(origFilename);
//            fileDTO.setFilename(filename);
//            fileDTO.setFilePath(filePath);
//
//            Long fileId = fileService.save(fileDTO);
//            freeBoardDTO.setAdd_file(fileId);
//            freeBoardService.save(freeBoardDTO);
//        } catch (Exception e){
//            e.printStackTrace();
//        }
//
//
//        freeBoardService.save (freeBoardDTO);
//        return "redirect:/";
//    }

    @PostMapping("/write")
    public String boardMain(FreeBoardDTO freeBoardDTO) {

        freeBoardService.save(freeBoardDTO);

        return "redirect:/";
    }


}
