package com.eumong.webservice.web.service;

import com.eumong.webservice.web.vo.MenuVo;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.BDDAssertions.then;

@SpringBootTest(
        properties = {"testMenuName=testName", "testLandingPage=index", "testDepth=0", "testOrderNo=0","testUseYn=Y"} //classes = {TestJpaRestController.class, MemberService.class},
)
class MenuServiceTest {
    @Autowired
    private MenuService menuService;
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

    @BeforeEach
    void setup() throws Exception {
        menuService.deleteAll();
        menuService.save(new MenuVo(testMenuName,testLandingPage,testDepth,testOrderNo,testUseYn));
        menuList = new ArrayList<>();
        menuService.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(0,"Y").forEach(e -> menuList.add(e));
    }

    @Test
    void findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo() {
        long lKey = menuList.get(0).getMenuNo();
        Optional<MenuVo> resultMenulist = menuService.findByMenuNo(lKey);
        if (resultMenulist.isPresent()) {
            then(testMenuName).isEqualTo(resultMenulist.get().getName());
            then(lKey).isEqualTo(resultMenulist.get().getMenuNo());
        }
    }

    @Test
    void findByMenuNo() {
        long lKey = menuList.get(0).getMenuNo();
        Optional<MenuVo> resultMenulist = menuService.findByMenuNo(lKey);
        if (resultMenulist.isPresent()) {
            then(testMenuName).isEqualTo(resultMenulist.get().getName());
            then(lKey).isEqualTo(resultMenulist.get().getMenuNo());
        }
    }

    @Test
    void deleteByMenuNo() {
        long lKey = menuList.get(0).getMenuNo();
        menuService.deleteByMenuNo(lKey);
        List<MenuVo> expected = menuService.findAll();
        assertThat(true).isEqualTo(expected.isEmpty());
    }

    @Test
    void deleteAll() {
        menuService.deleteAll();
        List<MenuVo> expected = menuService.findAll();
        assertThat(true).isEqualTo(expected.isEmpty());
    }

    @Test
    void save() {
        long lKey = menuList.get(0).getMenuNo();
        Optional<MenuVo> resultMenulist = menuService.findByMenuNo(lKey);
        if (resultMenulist.isPresent()) {
            then(testMenuName).isEqualTo(resultMenulist.get().getName());
            then(lKey).isEqualTo(resultMenulist.get().getMenuNo());
        }
    }

    @Test
    void updateByMenuNo() {
        MenuVo expected = menuList.get(0);
        expected.setUseYn("N");

        menuService.updateByMenuNo(expected.getMenuNo(), expected);
        Optional<MenuVo> menuList = menuService.findByMenuNo(expected.getMenuNo());
        if (menuList.isPresent()) {
            assertThat(expected).isEqualTo(menuList.get());
        }
    }
}