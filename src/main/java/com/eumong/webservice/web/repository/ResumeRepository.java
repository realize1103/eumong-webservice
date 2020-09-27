package com.eumong.webservice.web.repository;

import com.eumong.webservice.web.vo.MenuVo;
import com.eumong.webservice.web.vo.ResumeVo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.List;

@Repository
public interface ResumeRepository extends JpaRepository<ResumeVo, Long> {

    public List<ResumeVo> findAllByUseYn(String useYn);

}
