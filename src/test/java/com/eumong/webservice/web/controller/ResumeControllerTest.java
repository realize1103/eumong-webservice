package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.service.ResumeService;
import com.eumong.webservice.web.util.Utility;
import com.eumong.webservice.web.vo.ResumeVo;
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
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;

import java.util.List;

import static org.assertj.core.api.BDDAssertions.then;
import static org.hamcrest.Matchers.hasSize;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest(
        properties = {"testSection=section","testContent=content","testOrderNo=0", "testUseYn=Y"}
        , webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@Transactional
@AutoConfigureMockMvc
class ResumeControllerTest {
    private final Logger log = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ResumeService resumeService;
    @Value("${testSection}")
    private String testSection;
    @Value("${testContent}")
    private String testContent;
    @Value("${testOrderNo}")
    private int testOrderNo;
    @Value("${testUseYn}")
    private String testUseYn;

    private List<ResumeVo> resumeList;
    @Autowired
    MockMvc mvc;
    @Autowired
    private TestRestTemplate restTemplate; // Service로 등록하는 빈
    @Autowired
    private WebApplicationContext ctx;

    @BeforeEach() //Junit4의 @Before("")
    public void setup() {
        this.mvc = MockMvcBuilders.webAppContextSetup(ctx).addFilters(new CharacterEncodingFilter("UTF-8", true)) // 필터 추가
                .alwaysDo(print()).build();
    }


    @Ignore//@Test
    void save() throws Exception {
        log.info("postBorrowList Test Start");
        log.info("******** START : MOC MVC test **********");
        mvc.perform( MockMvcRequestBuilders
                .post("/resume").content(Utility.asJsonString(new ResumeVo(testSection,testContent,testOrderNo,testUseYn)))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.resumeNo").exists()).andDo(print());
        log.info("******** END : MOC MVC test **********");

        log.info("postBorrowList Test End");

    }
}