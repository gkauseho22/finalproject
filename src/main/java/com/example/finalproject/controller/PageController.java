package com.example.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PageController {

    @RequestMapping("/")
    public String main(Model model){
        model.addAttribute("pp", "../main/main.jsp");

        return "view/template/template";
    }

    //자유게시판
    @RequestMapping("/Free_Board")
    public String Free_Board(Model model)
    {
        model.addAttribute("pp", "../main/main.jsp");

        return "view/template/template";
    }

    //이거 vs 이거?
    @RequestMapping("/Topic_Board")
    public String Topic_Board(Model model)
    {
        model.addAttribute("pp", "../board/topic_notice.jsp");

        return "view/template/template";
    }

    //게시판 확인하기
    @RequestMapping("/Job_Board")
    public String Job_Board1(Model model, @RequestParam("notic_num") String notic_num)
    {
        //만약 notic_num이 null일 경우 자유 게시판 이동
        if(notic_num == null)
            return "redirect:Free_Board";

        //게시판 번호
        switch(notic_num)
        {
            //경영 / 행정 / 사무
            case "01":
                model.addAttribute("notic_name", "경영 / 행정 / 사무");
                break;

                //연구 / 개발
            case "02":
                model.addAttribute("notic_name", "연구 / 개발");
                break;

                //사회 / 복지
            case "03":
            model.addAttribute("notic_name", "사회 / 복지");
            break;

            //금융 / 보험험
            case "04":
                model.addAttribute("notic_name", "금융 / 보험");
                break;
                // 교육
            case "05":
                model.addAttribute("notic_name", "교육");
                break;

                // 경찰 / 소방 / 교도
            case "06":
                model.addAttribute("notic_name", "경찰 / 소방 / 교도");
                break;

                //법률
            case "07":
                model.addAttribute("notic_name", "법률");
                break;

                //음식
            case "08":
                model.addAttribute("notic_name", "음식");
                break;

                //보건 / 의료
            case "09":
                model.addAttribute("notic_name", "보건 / 의료");
                break;

                // 군인
            case "10":
                model.addAttribute("notic_name", "군인");
                break;

                // 스포츠 / 레그레이션
            case "11":
                model.addAttribute("notic_name", "스포츠 / 레크레이션");
                break;


                //예술 / 디자인
            case "12":
                model.addAttribute("notic_name", "예술 / 디자인");
                break;


                // 방송
            case "13":
                model.addAttribute("notic_name", "방송");
                break;

                // 미용 / 예식
            case "14":
                model.addAttribute("notic_name", "미용 / 예식");
                break;

                // 항공 / 여행 / 숙박
            case "15":
                model.addAttribute("notic_name", "항공 / 예술 / 숙박");
                break;

                // 제조 / 생산
            case "16":
                model.addAttribute("notic_name", "제조 / 생상");
                break;

                // 종교
            case "17":
                model.addAttribute("notic_name", "종교");
                break;

            default:
                return "redirect:Free_Board";

        }

        // 게시판이 멀쩡히 왔을 경우
        //페이지 가져오기
        model.addAttribute("pp", "../board/Job_Board.jsp");

        return "view/template/template";
    }


    @RequestMapping("/Memo_Board")
    public String Memo_Board(Model model)
    {
        model.addAttribute("pp", "../board/board_first.jsp");

        return "view/template/template";
    }
}
