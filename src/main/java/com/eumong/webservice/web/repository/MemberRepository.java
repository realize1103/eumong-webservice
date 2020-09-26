package com.eumong.webservice.web.repository;

import com.eumong.webservice.web.vo.MemberVo;
import com.eumong.webservice.web.vo.MenuVo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface MemberRepository extends JpaRepository<MemberVo, Long> {
    Optional<MemberVo> findByUserName(String userName);
}
