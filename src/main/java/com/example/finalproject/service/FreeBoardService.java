package com.example.finalproject.service;

import com.example.finalproject.dto.FreeBoardDTO;
import com.example.finalproject.entity.FreeBoard;
import com.example.finalproject.repository.FreeBoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
@Service
public class FreeBoardService {

    @Autowired
    private FreeBoardRepository freeBoardRepository;

    public Long save(FreeBoardDTO freeBoardDTO){

        return freeBoardRepository.save(FreeBoard.builder()
        .list_title(freeBoardDTO.getList_title())
        .add_file(freeBoardDTO.getAdd_file())
        .list_content(freeBoardDTO.getList_content()).build()).getList_code();
    }

    public List<FreeBoardDTO> getBoard(){
        List<FreeBoard> freeBoardList = freeBoardRepository.findAll();
        List<FreeBoardDTO> freeBoardDTOList = new ArrayList<>();

        for(FreeBoard freeBoard : freeBoardList){
            FreeBoardDTO freeBoardDTO = FreeBoardDTO.builder()
                    .list_title(freeBoard.getList_title())
                    .add_file(freeBoard.getAdd_file())
                    .list_content(freeBoard.getList_content())
                    .build();
            freeBoardDTOList.add(freeBoardDTO);
        }

        return freeBoardDTOList;
    }
}
