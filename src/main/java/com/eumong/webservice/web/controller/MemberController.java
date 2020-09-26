package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.MemberService;
import com.eumong.webservice.web.service.MenuService;
import com.eumong.webservice.web.vo.MemberVo;
import com.eumong.webservice.web.vo.MenuVo;
import lombok.AllArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
@Controller
@AllArgsConstructor
public class MemberController {
    private MemberService memberService;

    @GetMapping("/member")
    public String index() {
        return "/member/index";
    }

    @GetMapping("/member/signup")
    public String signupForm(Model model) {
        //model.addAttribute("member",new MemberVo());

        return "/member/signupForm";
    }
    /*
    @PostMapping("/member/signup")
    public String signup(MemberVo memberVo) {
        memberService.signUp(memberVo);

        return "redirect:/";
    }*/

    @GetMapping("/member/login")
    public String login() {
        return "/member/loginForm";
    }
}
