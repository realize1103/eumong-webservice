package com.eumong.webservice.web.repository;

import com.eumong.webservice.web.vo.BoardVo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BoardRepository extends JpaRepository<BoardVo, Long> {
    public List<BoardVo> findByContTypeOrderByRegDateDesc(String contType);
}
