package com.eumong.webservice.web.vo;

import lombok.*;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity(name = "tb_board")
public class BoardVo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long boardNo;

    @Column(length = 10, nullable = false)
    private String contType;

    @Column(length = 200, nullable = false)
    private String title;

    @Column(columnDefinition = "TEXT", nullable = false)
    private String content;

    @Column(length = 500, nullable = false)
    private String imgUrl;

    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date regDate;

    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date modDate;

    @Column(length = 1, nullable = false)
    private String useYn;

    @Builder
    public BoardVo(String contType, String title, String content, String imgUrl, Date regDate, Date modDate, String useYn) {
        this.contType = contType;
        this.title = title;
        this.content = content;
        this.imgUrl = imgUrl;
        this.regDate = regDate;
        this.modDate = modDate;
        this.useYn = useYn;

    }

}
