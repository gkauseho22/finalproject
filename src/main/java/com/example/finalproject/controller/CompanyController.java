package com.example.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyController {

    //기업정보 확인하기
    @RequestMapping("/Company_Data")
    public String Enterprise_Information(Model model)
    {
        model.addAttribute("pp", "../enterprise_info/Company_Data.jsp");

        return "view/template/template";
    }

    //기업 정보 자세히 보기
    @RequestMapping("/Company_Detail")
    public String Enterprise_detail(Model model)
    {
        model.addAttribute("pp","../enterprise_info/Company_detail.jsp");

        return "view/template/template";
    }

    //달력


    //우수기업
    @RequestMapping("/Company_Strong")
    public String Enterprise_Strong(Model model)
    {
        model.addAttribute("pp", "../enterprise_info/Company_strong.jsp");

        return "view/template/template";
    }

    // 노무정보
    @RequestMapping("/Labor_Data")
    public String Labor_Information(Model model)
    {
        model.addAttribute("pp", "../enterprise_info/labor_data.jsp");

        return "view/template/template";
    }

    //노무 글쓰기 보기는 게시판 글쓰기 뷰 완료 후에.
}
