package com.eumong.webservice.web.service;


import com.eumong.webservice.web.repository.MenuRepository;
import com.eumong.webservice.web.vo.MemberVo;
import com.eumong.webservice.web.vo.MenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class MenuService {
    @Autowired
    private MenuRepository menuRepository;

    @Transactional(readOnly = true)
    public List<MenuVo> findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(int depth, String useYn, HttpServletRequest request) {
        List<MenuVo> menus;

        HttpSession httpSession = request.getSession();
        menus = (List) httpSession.getAttribute("menuInfo");
        if(null == menus || menus.isEmpty()){
            menus = new ArrayList<>();
            menuRepository.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(depth,"Y").forEach(menus::add);
            httpSession.setAttribute("menuInfo", menus);
        }
        return menus;
    }

    @Transactional(readOnly = true)
    public List<MenuVo> findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(int depth, String useYn) {
        List<MenuVo> menus = new ArrayList<>();
        menuRepository.findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(depth,"Y").forEach(e -> menus.add(e));
        return menus;
    }
    
    public Optional<MenuVo> findByMenuNo(Long menuNo) {
        Optional<MenuVo> menu = menuRepository.findById(menuNo);
        return menu;
    }

    public void deleteByMenuNo(Long menuNo) {
        menuRepository.deleteById(menuNo);
    }

    public void deleteAll(){
        menuRepository.deleteAll();
    }

    @Transactional
    public MenuVo save(MenuVo menu) {
        menuRepository.save(menu);
        return menu;
    }

    @Transactional
    public void updateByMenuNo(long menuNo, MenuVo menu) {
        Optional<MenuVo> e = menuRepository.findById(menuNo);
        if (e.isPresent()) {
            e.get().setMenuNo(menu.getMenuNo());
            e.get().setName(menu.getName());
            menuRepository.save(menu);
        }
    }

    public List<MenuVo> findAll() {
        List<MenuVo> menus = new ArrayList<>();
        menuRepository.findAll().forEach(e -> menus.add(e));
        return menus;
    }
}
