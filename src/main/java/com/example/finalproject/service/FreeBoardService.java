package com.example.finalproject.service;

import com.example.finalproject.dto.FreeBoardDTO;
import com.example.finalproject.entity.FreeBoard;
import com.example.finalproject.repository.FreeBoardRepository;
import com.google.gson.Gson;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class FreeBoardService {

    @Autowired
    private FreeBoardRepository freeBoardRepository;

    private static int block_page_num_count = 5;
    private static int page_post_count = 4;

//    @Autowired
//    private MultipartFile multipartFile;

    @Transactional
    public Long save(FreeBoardDTO freeBoardDTO){

//        try{
//            String basedir = "C:\\Users\\Administrator\\IdeaProjects\\finalproject\\src\\main\\resources\\static\\upload";
//            String filePath = basedir + "\\" + multipartFile.getOriginalFilename();
//            multipartFile.transferTo(new File(filePath));
//            freeBoardDTO.setAdd_file(filePath);
//        } catch (Exception e){
//            e.printStackTrace();
//        }

        return freeBoardRepository.save(freeBoardDTO.toEntity()).getList_code();
    }

//    public List<FreeBoardDTO> getBoard(){
////        Gson gson = new Gson();
//        List<FreeBoard> freeBoardList = freeBoardRepository.findAll();
//        List<FreeBoardDTO> freeBoardDTOList = freeBoardList.stream().map(freeBoard -> {
//            FreeBoardDTO freeBoardDTO = new FreeBoardDTO();
//            freeBoardDTO.setList_title(freeBoard.getList_title());
//            freeBoardDTO.setAdd_file(freeBoard.getAdd_file());
//            freeBoardDTO.setList_content(freeBoard.getList_content());
//            return freeBoardDTO;
//        }).collect(Collectors.toList());
//
////        String freeBoardDTOList = gson.toJson(freeBoardList);
////        for(FreeBoard freeBoard : freeBoardList){
////            FreeBoardDTO freeBoardDTO = FreeBoardDTO.builder()
////                    .list_title(freeBoard.getList_title())
////                    .add_file(freeBoard.getAdd_file())
////                    .list_content(freeBoard.getList_content())
////                    .build();
////            freeBoardDTOList.add(freeBoardDTO);
////        }
//        return freeBoardDTOList;
//    }

    @Transactional
    public Long getBoardCount(){
        return freeBoardRepository.count();
    }

    @Transactional
    public List<FreeBoardDTO> getBoard(int pageNum){
        Page<FreeBoard> page = freeBoardRepository.findAll(PageRequest.of(pageNum - 1, page_post_count, Sort.by(Sort.Direction.ASC
        , "createtime")));

        List<FreeBoard> freeBoardList = freeBoardRepository.findAll();
        List<FreeBoardDTO> freeBoardDTOList = new ArrayList<>();

        for(FreeBoard board : freeBoardList){
            FreeBoardDTO freeBoardDTO = FreeBoardDTO.builder()
                    .board_code(board.getBoard_code())
                    .list_title(board.getList_title())
                    .list_content(board.getList_content())
                    .declaration(board.getDeclaration())
                    .views(board.getViews())
                    .add_file(board.getAdd_file())
                    .createtime(board.getCreatetime())
                    .user_code(board.getUser_code())
                    .build();
            freeBoardDTOList.add(freeBoardDTO);
        }
        return freeBoardDTOList;
    }

    public Integer[] getPageList(Integer curPageNum) {
        Integer[] pageList = new Integer[block_page_num_count];

        // 총 게시글 개수
        Double postsTotalCount = Double.valueOf(this.getBoardCount());

        // 총 게시글 기준으로 계산한 마지막 페이지 번호 계산(올림으로 계산)
        Integer totalLastPageNum = (int) (Math.ceil(postsTotalCount / page_post_count));

        // 현재 페이지를 기준으로 블럭의 마지막 페이지 번호 계산
        Integer blockLastPageNum = (totalLastPageNum > curPageNum + block_page_num_count)
                ? curPageNum + block_page_num_count
                : totalLastPageNum;

        // 페이지 시작 번호 조정
        curPageNum = (curPageNum <= 3) ? 1 : curPageNum - 2;

        // 페이지 번호 할당
        for(int val = curPageNum, i = 0; val <= blockLastPageNum; val++, i++){
            pageList[i] = val;
        }

        return pageList;
    }
}
