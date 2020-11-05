SELECT * from tb_menu_info tmi 

DELETE FROM db_eumong.tb_menu_info;
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Main', 'main',0, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'About', 'about',1, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Resume', 'resume',2, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Work', 'work',3, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Blog', 'blog',4, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Contact', 'contact',5, 0, 'Y');


SELECT * FROM tb_board tb 

update tb_board 
set img_url = '/assets/img/kw_logo.png'
, title = 'A developer who enjoy developing (Java-Entwickler) / Back-end / Front-End'
, content ='I am Java full stack developer. I am familiar with JAVA, SQL, and Python. I hope you interested in work with me.
&lt;br/&gt;&lt;br/&gt;
Academically, I have a bachelor’s degree in Computer Engineering from Daejeon University in Republic of Korea. After graduating, I built a name for myself as an experienced programmer who can manage the workload of several employees by myself. As a worker, I am diligent, focused, quick, and meticulous. I also love learning new things and am constantly trying to expand my knowledge and skillset. For instance, I recently completed a language program in the Philippines to become more proficient in English.
&lt;br/&gt;&lt;br/&gt;
Professionally, my programming efforts have been focused on the financial sector. My clients have included insurance companies, banks, and credit card companies. I have over 12 years of experience in developing and maintaining platforms to handle payments and contract modifications. For instance, I created a simulation service that calculates cancellation refunds for Company; a website that receives customer information and suggests appropriate insurance products based on a customer’s income; a program to transfer credit card usage data to a head office server; and a program to transmit contract details, changes, and payments from headquarters to a server at each branch. In addition, I launched the mobile site which is not in the company in a short period of time with teamed up with four developers and developed the mobile site into a large-scale project because it was well-received within the company. Moreover, I have experience working with foreigners. When I was working on the renewal project of the company&apos;s homepage, I successfully carried it out using Skype. I have experienced several projects and have always achieved good results.
&lt;br/&gt;&lt;br/&gt;
Moving forward, I will develop requirements quickly and agilely to help the company. And I want to leverage my experience and skills to develop your system efficiently. I feel I can modify the source to reduce the load on the system by minimizing unnecessary tasks and errors. Finally, least once a month, source refactoring can be conducted and applied to the system periodically, which will help reduce your company&apos;s operating costs for the server.
&lt;br/&gt;&lt;br/&gt;
Please find the resume section for further details on my skills and experience. I would love to discuss in person how I can best meet your team’s needs. Feel free to contact me on a phone or email.
&lt;br/&gt;&lt;br/&gt;
Thank you for your time and consideration. '
where board_no = 34




DELETE FROM tb_member_info 

INSERT INTO db_eumong.tb_member_info
(address, cell_phone, email, git_hub_url, linked_in, name, nationality, pass_word, `position`, skype_id, user_name, user_type)
VALUES('Danziger Straße 5 | 61440 Oberursel, Germany', '+49 173 660 7314', 'kwanwooLeeDeveloper@gmail.com', 'github.com/realize1103'
, 'www.linkedin.com/in/kwanwooleeprofile', 'Kwanwoo Lee', 'Republic of Korea', '$2a$10$5/1upcZxgUtz7zxjkiAXguodVxTaD4D2Snt0P39beeB7INmCyvC5m', 'Full Stack Developer'
, 'realize1103', 'realize1103','Y');


SELECT * from db_eumong.tb_member_info

SELECT * from db_eumong.tb_resume_info tri 

delete from  db_eumong.tb_resume_info

INSERT INTO db_eumong.tb_resume_info
(content, order_no, `section`, use_yn)
VALUES('&lt;p&gt; WorkVisa (I&apos;ll get it soon.)&lt;/p&gt;', 0, 'Visa', 'Y');

INSERT INTO db_eumong.tb_resume_info
(content, order_no, `section`, use_yn)
VALUES('
&lt;p&gt;&lt;strong&gt;Back-end&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;- Java, Python, Oracle, MS-SQL, PL/SQL, Golang &lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Front-end&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;- jQuery, Javascript, React, React-Native, Html5&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Others&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;- Git &amp; Github, Junit, AWS, Firebase, ETL, Kotlin, Swift&lt;/p&gt;
', 1, 'Skills', 'Y');

INSERT INTO db_eumong.tb_resume_info
(content, order_no, `section`, use_yn)
VALUES('
&lt;div class=&quot;row&quot;&gt;&lt;!--Asiana IDT--&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Asiana IDT&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;June, 2015 ~ December, 2019&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Full Stack Developer (Manager)&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;

        &lt;ul&gt;
            &lt;li&gt;Development and Maintenance of web sites&lt;/li&gt;
            &lt;li&gt;Participated in various projects&lt;/li&gt;
            &lt;li&gt;Managed Projects&lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;hr&gt;
&lt;div class=&quot;row&quot;&gt;&lt;!--ICAN Management--&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;&lt;strong&gt;ICAN Management&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;May, 2012 ~ April, 2015&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Full Stack Developer (Manager)&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;

        &lt;ul&gt;
            &lt;li&gt;Development and Maintenance of web sites&lt;/li&gt;
            &lt;li&gt;Participated in various projects&lt;/li&gt;
            &lt;li&gt;Managed Projects&lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;hr&gt;
&lt;div class=&quot;row&quot;&gt;&lt;!--KIWOONG Information Communication--&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;&lt;strong&gt;KIWOONG Information &amp; Communication&lt;/strong&gt;, Seoul, Republic of
            Korea&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;February, 2008 ~ May, 2012&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Front-End Developer (Assistant Manager)&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;

        &lt;ul&gt;
            &lt;li&gt;Participated in various projects&lt;/li&gt;
            &lt;li&gt;Development of front-end screens&lt;/li&gt;
            &lt;li&gt;Developed and Provided a common part of utility code&lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
', 2, 'Work Experience', 'Y');

DELETE FROM db_eumong.tb_resume_info
where `section` ='projects'

INSERT INTO db_eumong.tb_resume_info
(content, order_no, `section`, use_yn)
VALUES('&lt;div class=&quot;row&quot;&gt;&lt;!--Prudential Life Insurance Company--&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Prudential Life Insurance Company&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;September, 2010 ~ December, 2019&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Full Stack Developer (Role : System Manager)&lt;/p&gt;
        &lt;p&gt;Manager(2015-2019), Assistant Manager(2010~2014) &lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Development of the mobile site&lt;/li&gt;
            &lt;li&gt;Development of site that introduce insurance products (&lt;a
                    href=&quot;https://www.prudential.co.kr&quot;&gt;https://www.prudential.co.kr&lt;/a&gt;)
            &lt;/li&gt;
            &lt;li&gt;Development of site that customer data changing (&lt;a
                    href=&quot;https://cyber.prudential.co.kr&quot;&gt;https://cyber.prudential.co.kr&lt;/a&gt;)
            &lt;/li&gt;
            &lt;li&gt;Maintenance of sites (Introduces insurance products, customer data and
                contract changing site, EMS,
                SMS, administrator’s site, insurance sales site, mobile site)
            &lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Projects&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Mobile sales insurance application for iPad&lt;/li&gt;
            &lt;li&gt;Mobile site for calculate expecting premium&lt;/li&gt;
            &lt;li&gt;Site renewal 4 times.(&lt;a href=&quot;http://www.prudential.co.kr&quot;&gt;www.prudential.co.kr&lt;/a&gt;
                / &lt;a
                        href=&quot;http://cyber.prudential.co.kr&quot;&gt;cyber.prudential.co.kr&lt;/a&gt;)
            &lt;/li&gt;
        &lt;/ul&gt;
        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;
        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Working for 10 years, I was involved in and developed big and small projects
                of the company, and
                played an important part development role and architecture.
            &lt;/li&gt;
            &lt;li&gt;The company entrusted the renewal project of the company&apos;s homepage to the
                Malaysian company and I
                successfully carried out the project using Skype with them.
            &lt;/li&gt;
            &lt;li&gt;I have been doing the maintenance work all by myself. The work was shared by
                six employees before.
                That reason I could do that I increased productivity by refactoring legacy
                codes. the company
                recognized cost savings and stability.
            &lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;hr&gt;
&lt;div class=&quot;row&quot;&gt;&lt;!--Prudential Life Insurance Company--&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Prudential Life Insurance Company&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Front-End Developer&lt;/p&gt;
        &lt;p&gt;Assistant Manager&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;Lips + Financial Security Planning (Ver 1.5)&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;May, 2009 ~ September, 2009&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;Lips + Financial Security Planning (Ver 1.0)&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;May, 2008 ~ September, 2008&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;


&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;A program to calculate the required funds or loans by receiving information
                from customers and
                introducing insurance policies accordingly.
            &lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Development of front-end screens&lt;/li&gt;
            &lt;li&gt;Developed and Provided a common part of utility code&lt;/li&gt;
            &lt;li&gt;Development of handout for customers&lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;It was carried out as two projects. It was a short period
                schedule, but my team and I
                members proceeded stably and led to additional projects. as a result, Client
                has increased sales
                benefit. The client was satisfied as a result. After that the client wanted
                to work with me.
            &lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;hr&gt;
&lt;div class=&quot;row&quot;&gt;&lt;!--Prudential Life Insurance Company--&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Prudential Life Insurance Company&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Front-End Developer&lt;/p&gt;
        &lt;p&gt;Assistant Manager&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;Project to save printing costs&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;June, 2010 ~ September, 2010&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Project to save on total costs by controlling the amount of ink used,
                printing mode.
            &lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Development of front-end screens&lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Achievement &lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;It was a project that was conducted in a test format to work with me at
                Prudential, which actually
                30% reduced ink consumption by adjusting the saturation of the print.
            &lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;hr&gt;
&lt;div class=&quot;row&quot;&gt;&lt;!--Korea Exchange Bank - STX Pan Ocean--&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Korea Exchange Bank - STX Pan Ocean&lt;/strong&gt;, Seoul, Republic of Korea
        &lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Back-End Developer&lt;/p&gt;
        &lt;p&gt;Assistant Manager&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;Customized Communication Module&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;April, 2010 ~ June, 2010&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Development of a communication module for the correspondence between STX
                Pan Ocean ERP and Korea
                Exchange Bank.
            &lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Create transmission server by Java&lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Achievement &lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;I removed the old transmission server, which is made of visual basic,
                and implemented a Java server to
                reliably sync the data.
            &lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;hr&gt;
&lt;div class=&quot;row&quot;&gt;&lt;!--Credit Union--&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Credit Union&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Full-stack-End Developer&lt;/p&gt;
        &lt;p&gt;Assistant Manager&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;Planning Of Registration Process (CUFP)&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;January, 2010 ~ April, 2010&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;A program that calculates service fees, cancellation refunds etc. based
                on customer data.
            &lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Developed a new simulation service that calculates cancellation refunds
                in local computer with out
                Internet.
            &lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;It was carried out two projects, and the client company liked my program
                and attitude from the first
                project, so they proceeded with additional projects. It helped a lot in
                our company&apos;s profits.
            &lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;hr&gt;
&lt;div class=&quot;row&quot;&gt;&lt;!--Kiwoong Information &amp; Communication--&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Kiwoong Information &amp; Communication&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;- Java Full-stack-End Developer&lt;/p&gt;
        &lt;p&gt;Assistant Manager&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;Tax Calculator (billmate)&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;December, 2009&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;A program that helps electronic tax invoices (&lt;a
                    href=&quot;http://www.billmate.co.kr&quot;&gt;http://www.billmate.co.kr&lt;/a&gt;)
            &lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;Development of front-end screens&lt;/li&gt;
            &lt;li&gt;Developed and Provided a common part of utility code&lt;/li&gt;
        &lt;/ul&gt;

        &lt;p&gt;&lt;br&gt;
        &lt;/p&gt;

        &lt;ul&gt;
            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;
        &lt;/ul&gt;

        &lt;ul&gt;
            &lt;li&gt;I built a site that makes tax invoices easy to manage, and fully
                implements complex tax voucher
                screen processing and simulation.
            &lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
&lt;/div&gt;', 3, 'Projects', 'Y');



INSERT INTO db_eumong.tb_resume_info
(content, order_no, `section`, use_yn)
VALUES('&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Daejeon University&lt;/strong&gt;, Daejeon,
            Republic of Korea&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;- Bachelor of Computer Engineering&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;February, 2008&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;', 4, 'Education', 'Y');


INSERT INTO db_eumong.tb_resume_info
(content, order_no, `section`, use_yn)
VALUES('&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;
        &lt;p&gt;&lt;strong&gt;Engineer Information Processing Specialist&lt;/strong&gt;&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;
        &lt;p&gt;June, 2007&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;row&quot;&gt;
    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;
        &lt;p&gt;Human Resources Development Service of Korea, Republic of Korea&lt;/p&gt;&lt;/td&gt;
    &lt;/div&gt;
&lt;/div&gt;', 5, 'Certificates', 'Y');



