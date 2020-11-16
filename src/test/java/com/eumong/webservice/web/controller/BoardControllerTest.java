package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.util.Utility;
import com.eumong.webservice.web.service.BoardService;
import com.eumong.webservice.web.vo.BoardVo;
import com.google.gson.Gson;
import jdk.nashorn.internal.ir.annotations.Ignore;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.BDDAssertions.then;
import static org.hamcrest.Matchers.hasSize;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest(
        properties = {"testContType=about", "testTitle=textTitle", "testContent=content", "testImgUrl=/skkdfll","testUseYn=Y"} //classes = {TestJpaRestController.class, MemberService.class},
        , webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@Transactional
@AutoConfigureMockMvc
class BoardControllerTest {
    private final Logger log = LoggerFactory.getLogger(this.getClass());
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

    private Date dt = new java.util.Date();
    private Timestamp timestamp;
    @Autowired
    MockMvc mvc;
    @Autowired
    private TestRestTemplate restTemplate;
    @Autowired
    private WebApplicationContext ctx;

    @BeforeEach() //Junit4의 @Before("")
    public void setup() {
        this.mvc = MockMvcBuilders.webAppContextSetup(ctx).addFilters(new CharacterEncodingFilter("UTF-8", true)) // 필터 추가
                .alwaysDo(print()).build();

    }

    void setTimestamp() throws ParseException {
        java.util.Date dt = new java.util.Date();
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(dt);
        timestamp = new Timestamp(DATE_TIME_FORMAT.parse(currentTime).getTime());
    }

    @Ignore//@Test
    void deleteAll() throws Exception {
        log.info("deleteAll Test Start");

        log.info("******** START : MOC MVC test **********");
        mvc.perform(delete("/board/all")).andExpect(status().isNoContent()).andDo(print());
        log.info("******** END : MOC MVC test **********");

        log.info("deleteAll Test End");
    }
    @Ignore//@Test
    void getBoards() throws Exception {
        log.info("getBoards Test Start");
        log.info("******** START : MOC MVC test **********");
        deleteAll();
        save();
        /*
        mvc.perform(delete("/board/all")).andExpect(status().isNoContent()).andDo(print());
        mvc.perform( MockMvcRequestBuilders
                .post("/board").content(Utility.asJsonString(new BoardVo(testBoardName,testLandingPage,testDepth,testOrderNo,testUseYn)))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.boardNo").exists()).andReturn();
        */
        mvc.perform(get("/board").accept(MediaType.APPLICATION_JSON)).andExpect(status().isOk()).andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(content().contentType("application/json"))
                .andExpect(jsonPath("$", hasSize(1))).andDo(print());
        log.info("******** END : MOC MVC test **********");

        log.info("getBoards Test End");

    }

    @Ignore//@Test
    void getBoardNo() throws Exception {
        log.info("getBoards Test Start");
        log.info("******** START : MOC MVC test **********");
        deleteAll();
        save();

        Gson gson = new Gson();

        MvcResult a = mvc.perform(get("/board").accept(MediaType.APPLICATION_JSON)).andExpect(status().isOk()).andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(content().contentType("application/json"))
                .andExpect(jsonPath("$", hasSize(1))).andDo(print()).andReturn();

        BoardVo[] returnListVos = gson.fromJson(a.getResponse().getContentAsString(),BoardVo[].class);
        assertThat(testTitle).isEqualTo(returnListVos[0].getTitle());


        if (returnListVos.length > 0) {
            BoardVo boardVo = returnListVos[0];
            long lKey = boardVo.getBoardNo();

            mvc.perform(get("/board/".concat(String.valueOf(lKey))).accept(MediaType.APPLICATION_JSON)).andExpect(status().isOk()).andExpect(content().contentType(MediaType.APPLICATION_JSON))
                    .andExpect(content().contentType("application/json"))
                    .andExpect(MockMvcResultMatchers.jsonPath("$.contType").value(testContType)).andDo(print());
            log.info("******** END : MOC MVC test **********");

        }
    }


    @Ignore//@Test
    void updateBoard() throws Exception {
        log.info("getBoards Test Start");
        log.info("******** START : MOC MVC test **********");
        deleteAll();
        save();

        log.info("******** START : MockBean test **********");
        Gson gson = new Gson();

        MvcResult a = mvc.perform(get("/board").accept(MediaType.APPLICATION_JSON)).andExpect(status().isOk()).andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(content().contentType("application/json"))
                .andExpect(jsonPath("$", hasSize(1))).andDo(print()).andReturn();

        BoardVo[] returnListVos = gson.fromJson(a.getResponse().getContentAsString(),BoardVo[].class);
        assertThat(testTitle).isEqualTo(returnListVos[0].getTitle());


        if (returnListVos.length > 0) {
            BoardVo boardVo = returnListVos[0];
            long lKey = boardVo.getBoardNo();
            boardVo.setUseYn("N");
            mvc.perform(MockMvcRequestBuilders.put("/board/".concat(String.valueOf(lKey)))
                .content(Utility.asJsonString(boardVo))
                //.param("returnYn","Y")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(MockMvcResultMatchers.jsonPath("$.useYn").value("N"));

        }
        log.info("******** END : MockBean test **********");
        log.info("getBoards Test End");
    }

    @Ignore//@Test
    void save() throws Exception {
        log.info("save Test Start");
        log.info("******** START : MOC MVC test **********");
        mvc.perform( MockMvcRequestBuilders
                .post("/board").content(Utility.asJsonString(new BoardVo(testContType, testTitle,testContent,testImgUrl, dt, dt,testUseYn)))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.boardNo").exists()).andDo(print());
        log.info("******** END : MOC MVC test **********");

        log.info("save Test End");

    }
}