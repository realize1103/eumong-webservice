package com.eumong.webservice.web.vo;

import lombok.*;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity(name = "tb_menu_info")
public class MenuVo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long menuNo;

    @Column(length = 200, nullable = false)
    private String name;

    @Column(length = 200, nullable = false)
    private String landingPage;

    private int depth;

    private int orderNo;

    @Column(length = 1, nullable = false)
    private String useYn;

    @Builder
    public MenuVo(String name, String landingPage, int depth, int orderNo, String useYn) {
        this.name = name;
        this.landingPage = landingPage;
        this.depth = depth;
        this.orderNo = orderNo;
        this.useYn = useYn;

    }
}
