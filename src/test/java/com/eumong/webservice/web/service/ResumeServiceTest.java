package com.eumong.webservice.web.service;

import com.eumong.webservice.web.vo.BoardVo;
import com.eumong.webservice.web.vo.ResumeVo;
import jdk.nashorn.internal.ir.annotations.Ignore;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.BDDAssertions.then;
import static org.junit.jupiter.api.Assertions.*;

import com.eumong.webservice.web.vo.ResumeVo;
import com.eumong.webservice.web.vo.MenuVo;
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
        properties = {"testSection=section","testContent=content","testOrderNo=0", "testUseYn=Y"}
)

@Transactional
class ResumeServiceTest {
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

    //@Test
    @Ignore
    void findAllByUseYn() {
        List<ResumeVo> resumeVos = resumeService.findAllByUseYn("Y");
        assertThat(resumeVos).isNotNull();
    }

    @Ignore
    void save() {
        assertThat(testSection).isEqualTo(resumeService.save(new ResumeVo(testSection,testContent,testOrderNo,testUseYn)).getSection());
    }
}