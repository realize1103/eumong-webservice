package com.eumong.webservice.web.service;


import com.eumong.webservice.web.repository.BoardRepository;
import com.eumong.webservice.web.repository.ResumeRepository;
import com.eumong.webservice.web.vo.BoardVo;
import com.eumong.webservice.web.vo.MenuVo;
import com.eumong.webservice.web.vo.ResumeVo;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ResumeService {
    @Autowired
    private ResumeRepository resumeRepository;

    @Transactional(readOnly = true)
    public List<ResumeVo> findAllByUseYn(String useYn) {
        List<ResumeVo>  resumeVos = new ArrayList<>();
        resumeRepository.findAllByUseYn(useYn).forEach(e -> resumeVos.add(e));
        for(ResumeVo resumeVo : resumeVos){
            resumeVo.setContent(StringEscapeUtils.unescapeHtml4(resumeVo.getContent()));
        }
        return resumeVos;
    }

    @Transactional
    public ResumeVo save(ResumeVo resumeVo) {
        resumeRepository.save(resumeVo);
        return resumeVo;
    }

}
