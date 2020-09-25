package com.eumong.webservice.web.service;


import com.eumong.webservice.web.repository.BoardRepository;
import com.eumong.webservice.web.vo.BoardVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;

    @Transactional(readOnly = true)
    public List<BoardVo> findByContTypeOrderByRegDateDesc(String contType) {
        List<BoardVo> boards = new ArrayList<>();
        boardRepository.findByContTypeOrderByRegDateDesc(contType).forEach(e -> boards.add(e));
        return boards;
    }
    
    public Optional<BoardVo> findByBoardNo(Long boardNo) {
        Optional<BoardVo> board = boardRepository.findById(boardNo);
        return board;
    }

    public void deleteByBoardNo(Long boardNo) {
        boardRepository.deleteById(boardNo);
    }

    public void deleteAll(){
        boardRepository.deleteAll();
    }

    @Transactional
    public BoardVo save(BoardVo board) {
        boardRepository.save(board);
        return board;
    }

    @Transactional
    public void updateByBoardNo(long boardNo, BoardVo board) {
        Optional<BoardVo> e = boardRepository.findById(boardNo);
        if (e.isPresent()) {
            e.get().setBoardNo(board.getBoardNo());
            boardRepository.save(board);
        }
    }

    public List<BoardVo> findAll() {
        List<BoardVo> boards = new ArrayList<>();
        boardRepository.findAll().forEach(e -> boards.add(e));
        return boards;
    }
}
