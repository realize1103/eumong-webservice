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

    @Column(length = 50, nullable = false)
    private String userName;

    @Column(length = 100, nullable = false)
    private String passWord;

    @Column(length = 50)
    private String name;

    @Column(length = 50)
    private String address;

    @Column(length = 50)
    private String nationality;

    @Column(length = 20)
    private String cellPhone;

    @Column(length = 100)
    private String email;

    @Column(length = 50)
    private String position;

    @Column(length = 100)
    private String gitHubUrl;

    @Column(length = 100)
    private String linkedIn;

    @Column(length = 50)
    private String skypeId;

    @Column(length = 1)
    private String userType;

    @Builder
    public MemberVo(String userName, String passWord, String name,String address, String nationality,String position, String cellPhone, String email, String gitHubUrl, String linkedIn, String skypeId, String userType) {
        this.userName = userName;
        this.passWord = passWord;
        this.name = name;
        this.address = address;
        this.nationality = nationality;
        this.cellPhone = cellPhone;
        this.email = email;
        this.position = position;
        this.gitHubUrl = gitHubUrl;
        this.linkedIn = linkedIn;
        this.skypeId = skypeId;
        this.userType = userType;
    }

}
