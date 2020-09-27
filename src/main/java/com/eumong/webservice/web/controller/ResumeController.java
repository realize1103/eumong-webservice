package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.BoardService;
import com.eumong.webservice.web.service.MemberService;
import com.eumong.webservice.web.service.MenuService;
import com.eumong.webservice.web.service.ResumeService;
import com.eumong.webservice.web.vo.BoardVo;
import com.eumong.webservice.web.vo.MemberVo;
import com.eumong.webservice.web.vo.MenuVo;
import com.eumong.webservice.web.vo.ResumeVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("resume")
public class ResumeController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    ResumeService resumeService;
    @Autowired
    MenuService menuService;
    @Autowired
    MemberService memberService;

    @PostMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<ResumeVo> save(@RequestBody ResumeVo resumeVo) {
        return new ResponseEntity<ResumeVo>(resumeService.save(resumeVo), HttpStatus.CREATED);
    }

    private String markdownToHTML(String markdown) {
        Parser parser = Parser.builder()
                .build();

        Node document = parser.parse(markdown);
        HtmlRenderer renderer = HtmlRenderer.builder()
                .build();

        return renderer.render(document);
    }

}

