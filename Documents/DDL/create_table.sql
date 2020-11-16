-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: db_eumong
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board` (
  `board_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `cont_type` varchar(10) NOT NULL,
  `content` text NOT NULL,
  `img_url` varchar(500) NOT NULL,
  `mod_date` date DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `use_yn` varchar(1) NOT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board`
--

LOCK TABLES `tb_board` WRITE;
/*!40000 ALTER TABLE `tb_board` DISABLE KEYS */;
INSERT INTO `tb_board` VALUES (34,'about','I am Java full stack developer. I am familiar with JAVA, SQL, and Python. I hope you interested in work with me.\n&lt;br/&gt;&lt;br/&gt;\nAcademically, I have a bachelor’s degree in Computer Engineering from Daejeon University in Republic of Korea. After graduating, I built a name for myself as an experienced programmer who can manage the workload of several employees by myself. As a worker, I am diligent, focused, quick, and meticulous. I also love learning new things and am constantly trying to expand my knowledge and skillset. For instance, I recently completed a language program in the Philippines to become more proficient in English.\n&lt;br/&gt;&lt;br/&gt;\nProfessionally, my programming efforts have been focused on the financial sector. My clients have included insurance companies, banks, and credit card companies. I have over 12 years of experience in developing and maintaining platforms to handle payments and contract modifications. For instance, I created a simulation service that calculates cancellation refunds for Company; a website that receives customer information and suggests appropriate insurance products based on a customer’s income; a program to transfer credit card usage data to a head office server; and a program to transmit contract details, changes, and payments from headquarters to a server at each branch. In addition, I launched the mobile site which is not in the company in a short period of time with teamed up with four developers and developed the mobile site into a large-scale project because it was well-received within the company. Moreover, I have experience working with foreigners. When I was working on the renewal project of the company&apos;s homepage, I successfully carried it out using Skype. I have experienced several projects and have always achieved good results.\n&lt;br/&gt;&lt;br/&gt;\nMoving forward, I will develop requirements quickly and agilely to help the company. And I want to leverage my experience and skills to develop your system efficiently. I feel I can modify the source to reduce the load on the system by minimizing unnecessary tasks and errors. Finally, least once a month, source refactoring can be conducted and applied to the system periodically, which will help reduce your company&apos;s operating costs for the server.\n&lt;br/&gt;&lt;br/&gt;\nPlease find the resume section for further details on my skills and experience. I would love to discuss in person how I can best meet your team’s needs. Feel free to contact me on a phone or email.\n&lt;br/&gt;&lt;br/&gt;\nThank you for your time and consideration. ','/assets/img/kw_logo.png','2020-09-25','2020-09-25','A developer who enjoy developing (Java-Entwickler) / Back-end / Front-End','Y');
/*!40000 ALTER TABLE `tb_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_member_info`
--

DROP TABLE IF EXISTS `tb_member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_member_info` (
  `member_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) DEFAULT NULL,
  `cell_phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `git_hub_url` varchar(100) DEFAULT NULL,
  `linked_in` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `pass_word` varchar(100) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `skype_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_type` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`member_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member_info`
--

LOCK TABLES `tb_member_info` WRITE;
/*!40000 ALTER TABLE `tb_member_info` DISABLE KEYS */;
INSERT INTO `tb_member_info` VALUES (1,'Danziger Straße 5 | 61440 Oberursel, Germany','+49 173 660 7314','kwanwooLeeDeveloper@gmail.com','github.com/realize1103','www.linkedin.com/in/kwanwooleeprofile','Kwanwoo Lee','Republic of Korea','$2a$10$5/1upcZxgUtz7zxjkiAXguodVxTaD4D2Snt0P39beeB7INmCyvC5m','Full Stack Developer','realize1103','realize1103','Y');
/*!40000 ALTER TABLE `tb_member_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu_info`
--

DROP TABLE IF EXISTS `tb_menu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menu_info` (
  `menu_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `depth` int(11) NOT NULL,
  `landing_page` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `order_no` int(11) NOT NULL,
  `use_yn` varchar(1) NOT NULL,
  PRIMARY KEY (`menu_no`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu_info`
--

LOCK TABLES `tb_menu_info` WRITE;
/*!40000 ALTER TABLE `tb_menu_info` DISABLE KEYS */;
INSERT INTO `tb_menu_info` VALUES (33,0,'main','Main',0,'Y'),(34,0,'about','About',1,'Y'),(35,0,'resume','Resume',2,'Y'),(36,0,'work','Work',3,'Y'),(37,0,'blog','Blog',4,'Y'),(38,0,'contact','Contact',5,'Y');
/*!40000 ALTER TABLE `tb_menu_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resume_info`
--

DROP TABLE IF EXISTS `tb_resume_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_resume_info` (
  `resume_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `order_no` int(11) NOT NULL,
  `section` varchar(20) NOT NULL,
  `use_yn` varchar(1) NOT NULL,
  PRIMARY KEY (`resume_no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resume_info`
--

LOCK TABLES `tb_resume_info` WRITE;
/*!40000 ALTER TABLE `tb_resume_info` DISABLE KEYS */;
INSERT INTO `tb_resume_info` VALUES (14,'&lt;p&gt; WorkVisa (I&apos;ll get it soon.)&lt;/p&gt;',0,'Visa','Y'),(15,'\n&lt;p&gt;&lt;strong&gt;Back-end&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;- Java, Python, Oracle, MS-SQL, PL/SQL, Golang &lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Front-end&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;- jQuery, Javascript, React, React-Native, Html5&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Others&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;- Git &amp; Github, Junit, AWS, Firebase, ETL, Kotlin, Swift&lt;/p&gt;\n',1,'Skills','Y'),(16,'\n&lt;div class=&quot;row&quot;&gt;&lt;!--Asiana IDT--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Asiana IDT&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;June, 2015 ~ December, 2019&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Full Stack Developer (Manager)&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Development and Maintenance of web sites&lt;/li&gt;\n            &lt;li&gt;Participated in various projects&lt;/li&gt;\n            &lt;li&gt;Managed Projects&lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;hr&gt;\n&lt;div class=&quot;row&quot;&gt;&lt;!--ICAN Management--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;ICAN Management&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;May, 2012 ~ April, 2015&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Full Stack Developer (Manager)&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Development and Maintenance of web sites&lt;/li&gt;\n            &lt;li&gt;Participated in various projects&lt;/li&gt;\n            &lt;li&gt;Managed Projects&lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;hr&gt;\n&lt;div class=&quot;row&quot;&gt;&lt;!--KIWOONG Information Communication--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;KIWOONG Information &amp; Communication&lt;/strong&gt;, Seoul, Republic of\n            Korea&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;February, 2008 ~ May, 2012&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Front-End Developer (Assistant Manager)&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Participated in various projects&lt;/li&gt;\n            &lt;li&gt;Development of front-end screens&lt;/li&gt;\n            &lt;li&gt;Developed and Provided a common part of utility code&lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n',2,'Work Experience','Y'),(18,'&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Daejeon University&lt;/strong&gt;, Daejeon,\n            Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;- Bachelor of Computer Engineering&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;February, 2008&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;',4,'Education','Y'),(19,'&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Engineer Information Processing Specialist&lt;/strong&gt;&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;June, 2007&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;Human Resources Development Service of Korea, Republic of Korea&lt;/p&gt;&lt;/td&gt;\n    &lt;/div&gt;\n&lt;/div&gt;',5,'Certificates','Y'),(21,'&lt;div class=&quot;row&quot;&gt;&lt;!--Prudential Life Insurance Company--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Prudential Life Insurance Company&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;September, 2010 ~ December, 2019&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Full Stack Developer (Role : System Manager)&lt;/p&gt;\n        &lt;p&gt;Manager(2015-2019), Assistant Manager(2010~2014) &lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Development of the mobile site&lt;/li&gt;\n            &lt;li&gt;Development of site that introduce insurance products (&lt;a\n                    href=&quot;https://www.prudential.co.kr&quot;&gt;https://www.prudential.co.kr&lt;/a&gt;)\n            &lt;/li&gt;\n            &lt;li&gt;Development of site that customer data changing (&lt;a\n                    href=&quot;https://cyber.prudential.co.kr&quot;&gt;https://cyber.prudential.co.kr&lt;/a&gt;)\n            &lt;/li&gt;\n            &lt;li&gt;Maintenance of sites (Introduces insurance products, customer data and\n                contract changing site, EMS,\n                SMS, administrator’s site, insurance sales site, mobile site)\n            &lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Projects&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Mobile sales insurance application for iPad&lt;/li&gt;\n            &lt;li&gt;Mobile site for calculate expecting premium&lt;/li&gt;\n            &lt;li&gt;Site renewal 4 times.(&lt;a href=&quot;http://www.prudential.co.kr&quot;&gt;www.prudential.co.kr&lt;/a&gt;\n                / &lt;a\n                        href=&quot;http://cyber.prudential.co.kr&quot;&gt;cyber.prudential.co.kr&lt;/a&gt;)\n            &lt;/li&gt;\n        &lt;/ul&gt;\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Working for 10 years, I was involved in and developed big and small projects\n                of the company, and\n                played an important part development role and architecture.\n            &lt;/li&gt;\n            &lt;li&gt;The company entrusted the renewal project of the company&apos;s homepage to the\n                Malaysian company and I\n                successfully carried out the project using Skype with them.\n            &lt;/li&gt;\n            &lt;li&gt;I have been doing the maintenance work all by myself. The work was shared by\n                six employees before.\n                That reason I could do that I increased productivity by refactoring legacy\n                codes. the company\n                recognized cost savings and stability.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;hr&gt;\n&lt;div class=&quot;row&quot;&gt;&lt;!--Prudential Life Insurance Company--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Prudential Life Insurance Company&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Front-End Developer&lt;/p&gt;\n        &lt;p&gt;Assistant Manager&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;Lips + Financial Security Planning (Ver 1.5)&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;May, 2009 ~ September, 2009&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;Lips + Financial Security Planning (Ver 1.0)&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;May, 2008 ~ September, 2008&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n\n\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;A program to calculate the required funds or loans by receiving information\n                from customers and\n                introducing insurance policies accordingly.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Development of front-end screens&lt;/li&gt;\n            &lt;li&gt;Developed and Provided a common part of utility code&lt;/li&gt;\n            &lt;li&gt;Development of handout for customers&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;It was carried out as two projects. It was a short period\n                schedule, but my team and I\n                members proceeded stably and led to additional projects. as a result, Client\n                has increased sales\n                benefit. The client was satisfied as a result. After that the client wanted\n                to work with me.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;hr&gt;\n&lt;div class=&quot;row&quot;&gt;&lt;!--Prudential Life Insurance Company--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Prudential Life Insurance Company&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Front-End Developer&lt;/p&gt;\n        &lt;p&gt;Assistant Manager&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;Project to save printing costs&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;June, 2010 ~ September, 2010&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Project to save on total costs by controlling the amount of ink used,\n                printing mode.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Development of front-end screens&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Achievement &lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;It was a project that was conducted in a test format to work with me at\n                Prudential, which actually\n                30% reduced ink consumption by adjusting the saturation of the print.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;hr&gt;\n&lt;div class=&quot;row&quot;&gt;&lt;!--Korea Exchange Bank - STX Pan Ocean--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Korea Exchange Bank - STX Pan Ocean&lt;/strong&gt;, Seoul, Republic of Korea\n        &lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Back-End Developer&lt;/p&gt;\n        &lt;p&gt;Assistant Manager&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;Customized Communication Module&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;April, 2010 ~ June, 2010&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Development of a communication module for the correspondence between STX\n                Pan Ocean ERP and Korea\n                Exchange Bank.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Create transmission server by Java&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Achievement &lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;I removed the old transmission server, which is made of visual basic,\n                and implemented a Java server to\n                reliably sync the data.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;hr&gt;\n&lt;div class=&quot;row&quot;&gt;&lt;!--Credit Union--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Credit Union&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Full-stack-End Developer&lt;/p&gt;\n        &lt;p&gt;Assistant Manager&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;Planning Of Registration Process (CUFP)&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;January, 2010 ~ April, 2010&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;A program that calculates service fees, cancellation refunds etc. based\n                on customer data.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Developed a new simulation service that calculates cancellation refunds\n                in local computer with out\n                Internet.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;It was carried out two projects, and the client company liked my program\n                and attitude from the first\n                project, so they proceeded with additional projects. It helped a lot in\n                our company&apos;s profits.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;hr&gt;\n&lt;div class=&quot;row&quot;&gt;&lt;!--Kiwoong Information &amp; Communication--&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;&lt;strong&gt;Kiwoong Information &amp; Communication&lt;/strong&gt;, Seoul, Republic of Korea&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;p&gt;- Java Full-stack-End Developer&lt;/p&gt;\n        &lt;p&gt;Assistant Manager&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-8&quot;&gt;\n        &lt;p&gt;Tax Calculator (billmate)&lt;/p&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;col-xs-12 col-md-4&quot;&gt;\n        &lt;p&gt;December, 2009&lt;/p&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-xs-12 col-md-12&quot;&gt;\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Describe of Project&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;A program that helps electronic tax invoices (&lt;a\n                    href=&quot;http://www.billmate.co.kr&quot;&gt;http://www.billmate.co.kr&lt;/a&gt;)\n            &lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Responsible for&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;Development of front-end screens&lt;/li&gt;\n            &lt;li&gt;Developed and Provided a common part of utility code&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;p&gt;&lt;br&gt;\n        &lt;/p&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;&lt;strong&gt;Achievement&lt;/strong&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n\n        &lt;ul&gt;\n            &lt;li&gt;I built a site that makes tax invoices easy to manage, and fully\n                implements complex tax voucher\n                screen processing and simulation.\n            &lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/div&gt;\n&lt;/div&gt;',3,'Projects','Y');
/*!40000 ALTER TABLE `tb_resume_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-04 21:59:44
