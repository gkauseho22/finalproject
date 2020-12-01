package com.example.finalproject.controller;/*
package com.example.fproject.Controller;

import com.example.fproject.Service.FreeBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RController {

    @Autowired
    private FreeBoardService freeBoardService;


//    @RequestMapping("/jsonresult")
//    public ResponseEntity<List<FreeBoardDTO>> result(){
//        List<FreeBoardDTO> freeBoardDTOList = freeBoardService.getBoard();
//
//        ResponseEntity<List<FreeBoardDTO>> entity =
//                new ResponseEntity<List<FreeBoardDTO>>(freeBoardDTOList, HttpStatus.OK);
//
//        return entity;
//    }

    @RequestMapping("/jsonresult")
    public ResponseEntity result(){
        return ResponseEntity.ok(freeBoardService.getBoard());
    }
}
*/
