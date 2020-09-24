package com.eumong.webservice.web.repository;

import com.eumong.webservice.web.vo.MenuVo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface MenuRepository extends JpaRepository<MenuVo, Long> {
    public List<MenuVo> findAll();

    public List<MenuVo> findByName(String name);

    public List<MenuVo> findByNameLike(String keyword);

    public List<MenuVo> findAllByDepthEqualsAndUseYnEqualsOrderByOrderNo(int depth, String useYn);

}
