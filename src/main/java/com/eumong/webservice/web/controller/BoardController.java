package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.BoardService;
import com.eumong.webservice.web.vo.BoardVo;
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
@RequestMapping("board")
public class BoardController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    BoardService boardService;

    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<BoardVo>> getBoards() {
        List<BoardVo> boardVoList = boardService.findAll();
        return new ResponseEntity<List<BoardVo>>(boardVoList, HttpStatus.OK);
    }

    @GetMapping(value = "/depth/{depth}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<BoardVo>> getBoards(@PathVariable("contType") String contType) {
        List<BoardVo> boardVoList = boardService.findByContTypeOrderByRegDateDesc(contType);
        return new ResponseEntity<List<BoardVo>>(boardVoList, HttpStatus.OK);
    }

    @GetMapping(value = "/{boardNo}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<BoardVo> getBoardNo(@PathVariable("boardNo") Long boardNo) {
        Optional<BoardVo> boardVoList = boardService.findByBoardNo(boardNo);
        return new ResponseEntity<BoardVo>(boardVoList.get(), HttpStatus.OK);
    }

    @DeleteMapping(value = "/{boardNo}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Void> deleteBoardNo(@PathVariable("boardNo") Long boardNo) {
        boardService.deleteByBoardNo(boardNo);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/all", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Void> deleteAll() {
        boardService.deleteAll();
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

    @PutMapping(value = "/{boardNo}", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<BoardVo> updateBoardNo(@PathVariable("boardNo") Long boardNo, @RequestBody BoardVo boardVo) {
        boardService.updateByBoardNo(boardNo, boardVo);
        return new ResponseEntity<BoardVo>(boardVo, HttpStatus.OK);
    }

    @PostMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<BoardVo> save(@RequestBody BoardVo boardVo) {
        return new ResponseEntity<BoardVo>(boardService.save(boardVo), HttpStatus.CREATED);
    }

}

