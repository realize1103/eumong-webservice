package com.eumong.webservice.web.vo;

import lombok.*;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity(name = "tb_resume_info")
public class ResumeVo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long resumeNo;

    @Column(length = 20, nullable = false)
    private String section;

    @Column(columnDefinition = "TEXT", nullable = false)
    private String content;

    private int orderNo;

    @Column(length = 1, nullable = false)
    private String useYn;

    @Builder
    public ResumeVo(String section, String content, int orderNo, String useYn) {
        this.section = section;
        this.content = content;
        this.orderNo = orderNo;
        this.useYn = useYn;

    }

}
