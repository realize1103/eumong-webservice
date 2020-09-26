DELETE FROM db_eumong.tb_menu_info;
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Main', 'index',0, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'About', 'about',1, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Resume', 'resume',2, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Work', 'work',3, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Blog', 'blog',4, 0, 'Y');
INSERT INTO db_eumong.tb_menu_info(name, landing_page,  order_no,`depth`, use_yn) VALUES( 'Contact', 'contact',5, 0, 'Y');


INSERT INTO db_eumong.tb_member_info
(pass_word, user_name, cell_phone, email, git_hub_url, linked_in, skype_id, user_type)
VALUES('gogo1103', 'realize1103', '+49 173 660 7314', 'kwanwooLeeDeveloper@gmail.com', 'https://github.com/realize1103', 'https://www.linkedin.com/in/kwanwooleeprofile/?locale=en_US', 'live:realize1103', 'A');

