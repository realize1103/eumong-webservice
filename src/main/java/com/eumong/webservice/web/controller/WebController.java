
package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.MenuService;
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

    @GetMapping("/")
    public String main(Model model) {
        List<MenuVo> menus = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0,"Y");
        model.addAttribute("menus", menus);
        return "index";
    }
    @GetMapping("/about")
    public String about(Model model) {
        return "about";
    }
    @GetMapping("/work")
    public String work(Model model) {
        return "work";
    }
    @GetMapping("/blog")
    public String blog(Model model) {
        return "blog";
    }
    @GetMapping("/contact")
    public String contact(Model model) {
        return "contact";
    }
}