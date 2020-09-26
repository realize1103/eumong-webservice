
package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.BoardService;
import com.eumong.webservice.web.service.MemberService;
import com.eumong.webservice.web.service.MenuService;
import com.eumong.webservice.web.vo.BoardVo;
import com.eumong.webservice.web.vo.MemberVo;
import com.eumong.webservice.web.vo.MenuVo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@AllArgsConstructor
public class WebController {

    private MenuService menuService;
    private BoardService boardService;
    private MemberService memberService;


    @GetMapping("/")
    public String home(Model model, HttpServletRequest request) {
        MemberVo adminInfo = memberService.getAdminInfo(request);
        //System.out.println("memberVo = " + memberVo);
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0, "Y", request);
        model.addAttribute("menus", menus);
        model.addAttribute("adminInfo", adminInfo);
        return "index";
    }

    @GetMapping("/main")
    public String main(Model model, HttpServletRequest request) {
        MemberVo adminInfo = memberService.getAdminInfo(request);
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0, "Y", request);
        model.addAttribute("menus", menus);
        model.addAttribute("adminInfo", adminInfo);
        return "index";
    }

    @GetMapping("/about")
    public String about(Model model, HttpServletRequest request) {
        MemberVo adminInfo = memberService.getAdminInfo(request);
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0, "Y", request);
        List<BoardVo> boardVos = boardService.findByContTypeOrderByRegDateDesc("about");

        model.addAttribute("menus", menus);
        model.addAttribute("boardVo", boardVos.get(0));
        model.addAttribute("adminInfo", adminInfo);
        return "about";
    }


    @GetMapping("/resume")
    public String resume(Model model, HttpServletRequest request) {
        MemberVo adminInfo = memberService.getAdminInfo(request);
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0, "Y", request);
        model.addAttribute("menus", menus);
        model.addAttribute("adminInfo", adminInfo);
        return "resume";
    }

    @GetMapping("/work")
    public String work(Model model, HttpServletRequest request) {
        MemberVo adminInfo = memberService.getAdminInfo(request);
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0, "Y", request);
        model.addAttribute("menus", menus);
        model.addAttribute("adminInfo", adminInfo);
        return "work";
    }

    @GetMapping("/blog")
    public String blog(Model model, HttpServletRequest request) {
        MemberVo adminInfo = memberService.getAdminInfo(request);
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0, "Y", request);
        model.addAttribute("menus", menus);
        model.addAttribute("adminInfo", adminInfo);
        return "blog";
    }

    @GetMapping("/contact")
    public String contact(Model model, HttpServletRequest request) {
        MemberVo adminInfo = memberService.getAdminInfo(request);
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0, "Y", request);
        model.addAttribute("menus", menus);
        model.addAttribute("adminInfo", adminInfo);
        return "contact";
    }
}