package com.eumong.webservice.web.vo;

import lombok.*;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity(name = "tb_member_info")
public class MemberVo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long memberNo;

    @Column(length = 200, nullable = false)
    private String userName;

    @Column(length = 200, nullable = false)
    private String passWord;

    @Column(length = 20)
    private String cellPhone;

    @Column(length = 200)
    private String email;

    @Column(length = 400)
    private String gitHubUrl;

    @Column(length = 400)
    private String linkedIn;

    @Column(length = 200)
    private String skypeId;

    @Column(length = 1)
    private String userType;

    @Builder
    public MemberVo(String userName, String passWord, String cellPhone, String email, String gitHubUrl, String linkedIn, String skypeId, String userType) {
        this.userName = userName;
        this.passWord = passWord;
        this.cellPhone = cellPhone;
        this.email = email;
        this.gitHubUrl = gitHubUrl;
        this.linkedIn = linkedIn;
        this.skypeId = skypeId;
        this.userType = userType;
    }

}
