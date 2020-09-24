package com.eumong.webservice.web.controller;

import com.eumong.webservice.web.Utility;
import com.eumong.webservice.web.service.MenuService;
import com.eumong.webservice.web.vo.MenuVo;
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

import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.BDDAssertions.then;
import static org.hamcrest.Matchers.hasSize;
import static org.hamcrest.core.Is.is;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest(
        properties = {"testMenuName=testName", "testLandingPage=index", "testDepth=0", "testOrderNo=0","testUseYn=Y"} //classes = {TestJpaRestController.class, MemberService.class},
        , webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@Transactional
@AutoConfigureMockMvc
class WebControllerTest {
    private final Logger log = LoggerFactory.getLogger(this.getClass());
    @Value("${testMenuName}")
    private String testMenuName;
    @Value("${testLandingPage}")
    private String testLandingPage;
    @Value("${testDepth}")
    private int testDepth;
    @Value("${testOrderNo}")
    private int testOrderNo;
    @Value("${testUseYn}")
    private String testUseYn;

    private List<MenuVo> menuList;
    @Autowired
    MockMvc mvc;
    @Autowired
    private TestRestTemplate restTemplate; // Service로 등록하는 빈
    @Autowired
    private MenuService menuService;
    @Autowired
    private WebApplicationContext ctx;

    @BeforeEach() //Junit4의 @Before("")
    public void setup() {
        this.mvc = MockMvcBuilders.webAppContextSetup(ctx).addFilters(new CharacterEncodingFilter("UTF-8", true)) // 필터 추가
                .alwaysDo(print()).build();

    }

    @Test
    void main() throws Exception {
        log.info("main Test Start");

        String body = this.restTemplate.getForObject("/", String.class);

        //then
        assertThat(body).contains("Hello, my name is");
        log.info("main Test End");

    }

}