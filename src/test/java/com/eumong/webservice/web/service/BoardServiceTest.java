package com.eumong.webservice.web.service;

import com.eumong.webservice.web.vo.BoardVo;
import com.eumong.webservice.web.vo.MenuVo;
import jdk.nashorn.internal.ir.annotations.Ignore;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.BDDAssertions.then;

@SpringBootTest(
        properties = {"testContType=about", "testTitle=textTitle", "testContent=content", "testImgUrl=/skkdfll","testUseYn=Y"} //classes = {TestJpaRestController.class, MemberService.class},
)

@Transactional
class BoardServiceTest {
    @Autowired
    private BoardService boardService;
    @Value("${testContType}")
    private String testContType;
    @Value("${testTitle}")
    private String testTitle;
    @Value("${testContent}")
    private String testContent;
    @Value("${testImgUrl}")
    private String testImgUrl;
    @Value("${testUseYn}")
    private String testUseYn;

    private List<BoardVo> boardList;

    private final SimpleDateFormat DATE_TIME_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private Timestamp timestamp;
    private Date dt = new java.util.Date();

    @Ignore//@BeforeEach
    void setup() throws Exception {
        boardService.deleteAll();
        boardService.save(new BoardVo(testContType, testTitle,testContent,testImgUrl, dt, dt,testUseYn));
        boardList = new ArrayList<>();
        boardService.findByContTypeOrderByRegDateDesc(testContType).forEach(e -> boardList.add(e));
    }

    void setTimestamp() throws ParseException {
        java.util.Date dt = new java.util.Date();
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(dt);
        timestamp = new Timestamp(DATE_TIME_FORMAT.parse(currentTime).getTime());
    }
    @Ignore//@Test
    void findAll(){
        List<BoardVo> boardVoList = boardService.findAll();
        if (!boardVoList.isEmpty()) {
            then(testTitle).isEqualTo(boardVoList.get(0).getTitle());
            then(testContType).isEqualTo(boardVoList.get(0).getContType());
        }
    }
    @Ignore//@Test
    void findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo() {
        long lKey = boardList.get(0).getBoardNo();
        Optional<BoardVo> resultBoardlist = boardService.findByBoardNo(lKey);
        if (resultBoardlist.isPresent()) {
            then(testTitle).isEqualTo(resultBoardlist.get().getTitle());
            then(lKey).isEqualTo(resultBoardlist.get().getBoardNo());
        }
    }

    @Ignore//@Test
    void findByBoardNo() {
        long lKey = boardList.get(0).getBoardNo();
        Optional<BoardVo> resultBoardlist = boardService.findByBoardNo(lKey);
        if (resultBoardlist.isPresent()) {
            then(testTitle).isEqualTo(resultBoardlist.get().getTitle());
            then(lKey).isEqualTo(resultBoardlist.get().getBoardNo());
        }
    }

    @Ignore//@Test
    void deleteByBoardNo() {
        long lKey = boardList.get(0).getBoardNo();
        boardService.deleteByBoardNo(lKey);
        List<BoardVo> expected = boardService.findAll();
        assertThat(true).isEqualTo(expected.isEmpty());
    }

    @Ignore//@Test
    void deleteAll() {
        boardService.deleteAll();
        List<BoardVo> expected = boardService.findAll();
        assertThat(true).isEqualTo(expected.isEmpty());
    }

    @Ignore//@Test
    void save() {
        long lKey = boardList.get(0).getBoardNo();
        Optional<BoardVo> resultBoardlist = boardService.findByBoardNo(lKey);
        if (resultBoardlist.isPresent()) {
            then(testTitle).isEqualTo(resultBoardlist.get().getTitle());
            then(lKey).isEqualTo(resultBoardlist.get().getBoardNo());
        }
    }

    @Ignore//@Test
    void updateByBoardNo() {
        BoardVo expected = boardList.get(0);
        expected.setUseYn("N");

        boardService.updateByBoardNo(expected.getBoardNo(), expected);
        Optional<BoardVo> boardList = boardService.findByBoardNo(expected.getBoardNo());
        if (boardList.isPresent()) {
            assertThat(expected).isEqualTo(boardList.get());
        }
    }
}