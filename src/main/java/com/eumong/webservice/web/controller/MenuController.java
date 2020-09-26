package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.MenuService;
import com.eumong.webservice.web.vo.MenuVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("menu")
public class MenuController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    MenuService menuService;

    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<MenuVo>> getMenus() {
        List<MenuVo> menuVoList = menuService.findAll();
        return new ResponseEntity<List<MenuVo>>(menuVoList, HttpStatus.OK);
    }

    @GetMapping(value = "/depth/{depth}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<MenuVo>> getMenus(@PathVariable("depth") int depth, String useYn) {
        List<MenuVo> menuVoList = menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(depth, useYn);
        return new ResponseEntity<List<MenuVo>>(menuVoList, HttpStatus.OK);
    }

    @GetMapping(value = "/{menuNo}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<MenuVo> getMenuNo(@PathVariable("menuNo") Long menuNo) {
        Optional<MenuVo> menuVoList = menuService.findByMenuNo(menuNo);
        return new ResponseEntity<MenuVo>(menuVoList.get(), HttpStatus.OK);
    }

    @DeleteMapping(value = "/{menuNo}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Void> deleteMenuNo(@PathVariable("menuNo") Long menuNo) {
        menuService.deleteByMenuNo(menuNo);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/all", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Void> deleteAll() {
        menuService.deleteAll();
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

    @PutMapping(value = "/{menuNo}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<MenuVo> updateMenuNo(@PathVariable("menuNo") Long menuNo, @RequestBody MenuVo menuVo) {
        menuService.updateByMenuNo(menuNo, menuVo);
        return new ResponseEntity<MenuVo>(menuVo, HttpStatus.OK);
    }

    @PostMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<MenuVo> save(@RequestBody MenuVo menuVo) {
        return new ResponseEntity<MenuVo>(menuService.save(menuVo), HttpStatus.CREATED);
    }

}

