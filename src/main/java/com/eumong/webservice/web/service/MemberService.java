package com.eumong.webservice.web.service;


import com.eumong.webservice.web.repository.MemberRepository;
import com.eumong.webservice.web.vo.MemberVo;
import lombok.AllArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class MemberService implements UserDetailsService {
    private MemberRepository memberRepository;
    /*
    // 회원가입
    @Transactional
    public Long signUp(MemberVo memberVo) {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        memberVo.setPassWord(passwordEncoder.encode(memberVo.getPassWord()));
        return memberRepository.save(memberVo).getMemberNo();
    }*/
    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        // 로그인을 하기 위해 가입된 user정보를 조회하는 메서드
        Optional<MemberVo> memberWrapper = memberRepository.findByUserName(userName);
        MemberVo memberVo = memberWrapper.get();
        /*
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        memberVo.setPassWord(passwordEncoder.encode(memberVo.getPassWord()));
        */

        List<GrantedAuthority> authorities = new ArrayList<>();

        // 여기서는 간단하게 username이 'admin'이면 admin권한 부여
        if("A".equals(memberVo.getUserType())){
            authorities.add(new SimpleGrantedAuthority(MemberRole.ADMIN.getValue()));
        } else {
            authorities.add(new SimpleGrantedAuthority(MemberRole.MEMBER.getValue()));
        }

        // 아이디, 비밀번호, 권한리스트를 매개변수로 User를 만들어 반환해준다.
        return new User(memberVo.getUserName(), memberVo.getPassWord(), authorities);
    }

    public MemberVo getAdminInfo(HttpServletRequest request){
        MemberVo memberVo;
        HttpSession httpSession = request.getSession();
        memberVo = (MemberVo) httpSession.getAttribute("adminInfo");
        if(null == memberVo){
            Optional<MemberVo> memberWrapper = memberRepository.findByUserName("realize1103");
            memberVo = memberWrapper.get();
            memberVo.setPassWord("");
            memberVo.setUserType("");
            httpSession.setAttribute("adminInfo",memberVo);
        }
        return memberVo;
    }

}