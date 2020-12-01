package com.example.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    // 공지 등록
    @RequestMapping("/admin_Notice")
    public String Admin_Notice(Model model)
    {
        model.addAttribute("pp", "../admin/admin_Notice.jsp");

        return "view/template/template";
    }

    // 공지 개설 신청 현황
    @RequestMapping("/admin_NoticeList")
    public String Admin_NoticeList(Model model)
    {
        model.addAttribute("pp", "../admin/admin_NoticeList.jsp");

        return "view/template/template";
    }

    // 게시판 개설 신청 현황
    @RequestMapping("/admin_Status")
    public String Admin_Status(Model model)
    {
        model.addAttribute("pp", "../admin/admin_Status.jsp");

        return "view/template/template";
    }

}
