package com.example.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

    //로그인 페이지
    @RequestMapping("/member_Login")
    public String Member_login(Model model)
    {
        model.addAttribute("pp","../member/member_login.jsp");

        return "view/template/template";
    }

    //회원기능
    @RequestMapping("/member_Joinform")
    public String Member_JoinForm(Model model)
    {
        model.addAttribute("pp", "../join/joinform.jsp");

        return "view/template/template";
    }


    //마이페이지
    @RequestMapping("/member_Mypage")
    public String Member_mypage(Model model)
    {
        model.addAttribute("pp", "../member/member_mypage.jsp");

        return "view/template/template";
    }

    //적성검사사

    //마이페이지 체크하기
    @RequestMapping("/member_Mypage_Check")
    public String Member_Mypage_Check(Model model)
    {
        model.addAttribute("pp", "../member/member_mypage_check.jsp");

        return "view/template/template";
    }

    //마이페이지 수정하기
    @RequestMapping("/member_Mypage_Update")
    public String Member_Mypage_Update(Model model)
    {
        model.addAttribute("pp", "../memer/member_mypage_update.jsp");

        return "view/template/template";
    }

    //제직자 페이지
    @RequestMapping("/member_Mypage_Selfpage")
    public String Member_MypageSelf(Model model)
    {
        model.addAttribute("pp", "../member/member_myselfpage.jsp");

        return "view/template/template";
    }

    //등급 페이지
    @RequestMapping("/member_Mypage_Grade")
    public String Member_Mypage_Grade(Model model)
    {
        model.addAttribute("pp", "../member/member_mypage_grade.jsp");

        return "view/template/template";
    }

    //포인트 안내
    @RequestMapping("/member_Mypage_Point_Guide")
    public String Member_Mypage_point_guide(Model model)
    {
        model.addAttribute("pp", "../member/member_mypage_point_guide.jsp");

        return "view/template/template";
    }

    //charge 1하고 2가 있음. 아직 보류
    //포인트 충전
    @RequestMapping("/member_Mypage_Point_Charge")
    public String Member_Mypage_Point_Charcge(Model model)
    {

        model.addAttribute("pp", "../member/member_mypage_point_charge.jsp");

        return "view/template/template";
    }

    //포인트 충전 2 카드 결제 화면
    @RequestMapping("/member_Mypage_Point_Charge2")
    public String Member_Mypage_point_Charge2(Model model)
    {
        model.addAttribute("pp", "../member/member_mypage_point_charge2.jsp");

        return "view/template/template";
    }

    //포인트 충전 확인
    @RequestMapping("/member_Point_Charge_Check")
    public String Member_Point_Charge_Check(Model model)
    {
        model.addAttribute("pp", "../member/member_point_charge_check.jsp");

        return "view/template/template";
    }
    

    //포인트 환전
    @RequestMapping("/member_Mypage_Point_Charge_Point")
    public String Member_Mypage_Point_Charge_Point(Model model)
    {
        model.addAttribute("pp", "../member/member_point_charge_point.jsp");

        return "view/template/template";
    }
}
