
package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.BoardService;
import com.eumong.webservice.web.service.MenuService;
import com.eumong.webservice.web.vo.BoardVo;
import com.eumong.webservice.web.vo.MenuVo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class WebController {

    private MenuService menuService;
    private BoardService boardService;

    @GetMapping("/")
    public String main(Model model) {
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0,"Y");
        model.addAttribute("menus", menus);
        return "index";
    }
    @GetMapping("/about")
    public String about(Model model) {
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0,"Y");
        List<BoardVo> boardVos = boardService.findByContTypeOrderByRegDateDesc("about");

        model.addAttribute("menus", menus);
        model.addAttribute("boardVo", boardVos.get(0));
        return "about";
    }
    @GetMapping("/work")
    public String work(Model model) {
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0,"Y");
        model.addAttribute("menus", menus);
        return "work";
    }
    @GetMapping("/blog")
    public String blog(Model model) {
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0,"Y");
        model.addAttribute("menus", menus);
        return "blog";
    }
    @GetMapping("/contact")
    public String contact(Model model) {
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0,"Y");
        model.addAttribute("menus", menus);
        return "contact";
    }
}