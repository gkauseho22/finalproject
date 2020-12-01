package com.example.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobInfoController {



    //직업 정보??
    @RequestMapping("/job_Info")
    public String Job_Info(Model model)
    {
        model.addAttribute("pp", "../jobinfomation/job_info.jsp");

        return "view/template/template";
    }

    //구인 수요 랭킹
    @RequestMapping("/job_Demand")
    public String Job_Demand(Model model)
    {
        model.addAttribute("pp", "../jobinfomation/job_demand");

        return "view/template/template";
    }

    //직업 정보 보기 (차트 있는 곳)
    @RequestMapping("/job_Detail")
    public String Job_Detail(Model model)
    {
        model.addAttribute("pp", "../joinformation/job_detail.jsp");

        return "view/template/template";
    }

    //훈련 과정
    @RequestMapping("/job_Training")
    public String Job_Training(Model model)
    {
        model.addAttribute("pp", "../joinformation/job_training.jsp");

        return "view/template/template";
    }

    //자격증 정보
    @RequestMapping("/job_Certificate")
    public String Job_Certificate(Model model)
    {
        model.addAttribute("pp", "../jobinfomation/job_certificate.jsp");

        return "view/template/template";
    }

}
