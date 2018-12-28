/*
MySQL Backup
Source Server Version: 5.5.5
Source Database: projectend
Date: 12/24/2018 14:29:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `tbl_condiction2`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_condiction2`;
CREATE TABLE `tbl_condiction2` (
  `type_payment` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `qty_payment` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `tbl_condition`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_condition`;
CREATE TABLE `tbl_condition` (
  `ID_codition` int(20) NOT NULL,
  `One_month` int(20) DEFAULT NULL,
  `Six_month` int(20) DEFAULT NULL,
  `Twelve_year` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID_codition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `tbl_home`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_home`;
CREATE TABLE `tbl_home` (
  `ID_home` varchar(10) NOT NULL,
  `Address_home` varchar(10) DEFAULT NULL,
  `Name_home` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Area_home` text,
  `Payment_home` int(10) DEFAULT NULL,
  `ID_soi` varchar(20) DEFAULT NULL,
  `ID_status` varchar(20) DEFAULT NULL,
  `Pointion_home` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_home`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tbl_show_status`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_show_status`;
CREATE TABLE `tbl_show_status` (
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `จำนวนเดือนที่จ่ายแล้ว` int(2) NOT NULL,
  `สเตตัส` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `tbl_soi`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_soi`;
CREATE TABLE `tbl_soi` (
  `ID_soi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Home_soi` int(10) DEFAULT NULL,
  `Quality_home` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_soi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `tbl_status`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_status`;
CREATE TABLE `tbl_status` (
  `ID_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `tbl_condiction2` VALUES ('One_month','1'), ('','0');
INSERT INTO `tbl_home` VALUES ('01','143/1','นางสาวกลิ่นบุปผา  วรรณแก้ว','42.1','700','01_soi','status_2','1'), ('02','143/2','นางลาลิตพรรณ  วงศ์ถาวร','25.8','596','01_soi','status_2','2'), ('03','143/3','คุณอรุณกมล พันทวีศักดิ์','42.1','700','01_soi','status_2','3'), ('04','143/4','นางสาวกรกานต์ สมิทธิพงษ์พันธ์','29.2','664','01_soi','status_2','4'), ('05','143/5','นายธนวัฒน์  เมฆโตหุ่นเอก','22.8','536','01_soi','status_2','5'), ('06','143/6','นายกฤติธนกร  แผ่ความดี','32.3','700','02_soi','status_2','1'), ('07','143/7','นายศุภฤกษ์','48.8','700','02_soi','status_2','2'), ('08','143/8','นายทศพร ตั้งเขียวเจริญ','19.7','474','02_soi','status_2','3'), ('09','143/9','นางชา่ลี-นายคุณาสิน อิน','19.7','474','02_soi','status_2','4'), ('10','143/10','นายประวิทย์  ธารทองรัตนชัย','33.3','700','02_soi','status_2','5'), ('100','143/100','นางสาววารินทน์ เสมสูงเนิน','25.4','588','06_soi','status_2',''), ('101','143/101','นายเอนก กอสนาน','25.4','588','07_soi','status_2',NULL), ('102','143/102','นายยุทธพงค์ พรมสิงห์','19.1','462','07_soi','status_2',NULL), ('103','143/103','นางสาวสุพรรณี จันทะชาติ','22.4','528','07_soi','status_2',NULL), ('104','143/104','นางวริษกร ทองงาม','24.2','564','07_soi','status_2',NULL), ('105','143/105','นายสมชาย พรผุดผ่อง','19.1','462','07_soi','status_2',NULL), ('106','143/106','นางทวี สุระโส','19.1','462','07_soi','status_2',NULL), ('107','143/107','นางสาวภูริตา','19.1','462','08_soi','status_2',NULL), ('108','143/108','นางกันยา อร่ามงาม','19.1','462','08_soi','status_2',NULL), ('109','143/109','นายดำรงชัย ชูสกุล','22.2','524','08_soi','status_2',NULL), ('11','143/11','ว่าที่ ร.ต.หญิง ราชิตา อมาต','41.7','700','02_soi','status_2',NULL), ('110','143/110','นางสาวนริศรา','22.2','524','08_soi','status_2',NULL), ('111','143/111','นายธีระ อุดมไพบูลย์วงศ์','19.1','462','08_soi','status_2',NULL), ('112','143/112','นางสาวเบญญาภา จันทร์ตรี','19.1','462','08_soi','status_2',NULL), ('113','143/113','นางสาวปฏิพร วราชุน','19.1','462','08_soi','status_2',NULL), ('114','143/114','นายสุทัศน์ แซ่เตีย','19.1','462','08_soi','status_2',NULL), ('115','143/115','นางสาวอริศรา โรหิตาคนี','26.8','616','08_soi','status_2',NULL), ('116','143/116','หจก.พิเอ็นแอคเค้าท์ติ้งแอนดิ์เซอรวิส','27.1','622','08_soi','status_2',NULL), ('117','143/117','นายณัชพัฒน์ สุทิพยกุล','19.1','462','08_soi','status_2',NULL), ('118','143/118','นางสาวอุไรวรรณ อิ่มใจ','19.1','462','08_soi','status_2',NULL), ('119','143/119','นายอรรถชัย','19.1','462','08_soi','status_2',NULL), ('12','143/12','นายศรวุธ  อันเรืองปัญญา','19','460','02_soi','status_2',NULL), ('120','143/120','นายอำนาจ ภิญโย','19.1','462','08_soi','status_2',NULL), ('121','143/121','นางสาวนฤมล ภวนันท์','22.2','524','08_soi','status_2',NULL), ('122','143/122','นายภัทร ปัญญาจักร','22.2','524','08_soi','status_2',NULL), ('123','143/123','นายเนติ ภุมมา','19.1','462','08_soi','status_2',NULL), ('124','143/124','นางสาวน้ำทิพย์ เศรฐบุตร','19.1','462','08_soi','status_2',NULL), ('125','143/125','นายขรรค์ชัย ศรีณรงค์','19.1','462','08_soi','status_2',NULL), ('126','143/126','นางสาวธนิตา','19.1','462','08_soi','status_2',NULL), ('127','143/127','นายศักดา รอดเที่ยง','23.7','554','08_soi','status_2',NULL), ('128','143/128','นางสาวดวงนภา รตสา','26.2','604','08_soi','status_2',NULL), ('129','143/129','นายมนูศักดิ์ เลาแก้วหนู','19.7','474','08_soi','status_2',NULL), ('13','143/13','นางสาวนวรัตน์  ขอสินกลาง','19','460','02_soi','status_2',NULL), ('130','143/130','นางสาวสถาพร จักรรัตน์','26.8','616','08_soi','status_2',NULL), ('131','143/131','นายยุทธศาสตร์ เย็นทรวง ','23.9','558','09_soi','status_2',NULL), ('132','143/132','นางสาวสลักจิต พงศ์ศักดาพร','17.5','430','09_soi','status_2',NULL), ('133','143/133','นายจักรพันธ์ หวังนุช','23.4','548','09_soi','status_2',NULL), ('134','143/134','นางสาวสุภา กระต่ายป้อง','23.7','554','09_soi','status_2',NULL), ('135','143/135','นายธนรัช บุญส่งเสริมสุข','19.1','462','09_soi','status_2',NULL), ('136','143/136','นางสาวสุชาดา สอแจ่มจิตต์','19.1','462','09_soi','status_2',NULL), ('137','143/137','นายอนุชา ฐีระวงศ์','19.1','462','010_soi','status_2',NULL), ('138','143/138','นายวุฒิพล เลิศศิริรัตนกุล','19.1','462','010_soi','status_2',NULL), ('139','143/139','นายนิรุตติ์','22.2','524','010_soi','status_2',NULL), ('14','143/14','นางสาวอุษณีย์ ศุภกฤตกุล','19','460','02_soi','status_2',NULL), ('140','143/140','นายณัฐพัฒน์','22.2','524','010_soi','status_2',NULL), ('141','143/141','นางสาวปาริฉัตร ตุ้มทอง','19.1','462','010_soi','status_2',NULL), ('142','143/142','นายอำนาจ อิ่มเจริญ','19.1','462','010_soi','status_2',NULL), ('143','143/143','นางปัทมา พิทักษ์สกุล','19.1','462','010_soi','status_2',NULL), ('144','143/144','นางนิษฐ์วดี ศุภกิจธนาพัฒน์','19.1','462','010_soi','status_2',NULL), ('145','143/145','นางเบญจมาศ ภูมิมาตร','27','620','010_soi','status_2',NULL), ('146','143/146','นางสาวสุคนธรัตน์','24.2','564','010_soi','status_2',NULL), ('147','143/147','นายศุภชัย  เส็งสาย','17.5','430','010_soi','status_2',NULL), ('148','143/148','นายอนันต์','17.5','430','010_soi','status_2',NULL), ('149','143/149','นางอรไทย หอมเลิศ','17.5','430','010_soi','status_2',NULL), ('15','143/15','นายพรชัย ลาภบิดร','25.3','586','02_soi','status_2',NULL), ('150','143/150','นายสมหมาย พุดวัน','17.5','430','010_soi','status_2',NULL), ('151','143/151','นางสาวอุไรวรรณ ศรีธรรมมา','17.5','430','010_soi','status_2',NULL), ('152','143/152','นางสาววรรณยา ประพินพงษ์','21.5','510','010_soi','status_2',NULL), ('153','143/153','นางสาวกุลลาดา คงแสงชัย','21.5','510','010_soi','status_2',NULL), ('154','143/154','นางสาวณัชชารีย์ ก้องภพธิติพงศ์','17.5','430','010_soi','status_2',NULL), ('155','143/155','นางสาวกันจนา ลิ้มทรงเกียรติ','17.5','430','010_soi','status_2',NULL), ('156','143/156','นางสาวพริม อบทอง','17.5','430','010_soi','status_2',NULL), ('157','143/157','นางสาวฉวีวรรณ ชนะทาน','17.5','430','010_soi','status_2',NULL), ('158','143/158','นายวีรศักดิ์ ลี','23.8','556','010_soi','status_2',NULL), ('159','143/159','นางสาวจิราภรณ์ เดชทวิทย์','23.6','552','010_soi','status_2',NULL), ('16','143/16','นายภณธน  ศิริทศพร','34.8','700','02_soi','status_2',NULL), ('160','143/160','นายบวร มณีรัตนอมรชัย','17.5','430','010_soi','status_2',NULL), ('161','143/161','นางสาวศรีเดือนแรม ศรีวรรณ','23.7','554','010_soi','status_2',NULL), ('162','143/162','นางสาววรนาถ สินสมภาค','23.7','554','011_soi','status_2',NULL), ('163','143/163','นายสุรสิทธ์ สลับลึก','17.5','430','011_soi','status_2',NULL), ('164','143/164','นางสาววรรณา สถิตย์ปิยะรัต','23.6','552','011_soi','status_2',NULL), ('165','143/165','นางสาวอาภา อมฤต','23.8','556','011_soi','status_2',NULL), ('166','143/166','นางสาวเพ็ญพิชญา วัฒนศิริจรชัย','17.5','430','011_soi','status_2',NULL), ('167','143/167','นายเฉลิมพล ทองประศรี','17.5','430','011_soi','status_2',NULL), ('168','143/168','นางสาวสิริลักษณ์-นางสาววิไล','17.5','430','012_soi','status_2',NULL), ('169','143/169','นางสาวนงลักษณ์ กาญจสุทธากล','17.5','430','012_soi','status_2',NULL), ('17','143/17','นางสาวทัศนีย์ แซ่อุ๊ย','17.5','430','02_soi','status_2',NULL), ('170','143/170','นายโชคชัย ดีเพิ่มพรยิ่ง','21.5','510','012_soi','status_2',NULL), ('171','143/171','นางสาวหนึ่งฤทัย บุนนาค','21.5','510','012_soi','status_2',NULL), ('172','143/172','นายวิทยา ชัยวงษ์','17.5','430','012_soi','status_2',NULL), ('173','143/173','นางสาวจุฑาลักษณ์ ลก','17.5','430','012_soi','status_2',NULL), ('174','143/174','นายวิศาน หล่อสุวรรณ','17.5','430','012_soi','status_2',NULL), ('175','143/175','นายเมษา-นายวาทิน','17.5','430','012_soi','status_2',NULL), ('176','143/176','นางลิขิต บุญส่งเสริมสุข','17.5','430','012_soi','status_2',NULL), ('177','143/177','นายสมบัติ ศรีสุวรรณ','24.2','564','012_soi','status_2',NULL), ('178','143/178','นายสายมาศ นุชิต','23.9','558','012_soi','status_2',NULL), ('179','143/179','คุณอรอุมา ณ บางช้าง','17.5','430','012_soi','status_2',NULL), ('18','143/18','นายภูษิต  เลี่ยวกุล','17.5','430','02_soi','status_2',NULL), ('180','143/180','นายสืบตระกูล ตันฤดี ','17.5','430','012_soi','status_2',NULL), ('181','143/181','นางสาวทอปัด สมบุญ','17.5','430','012_soi','status_2',NULL);
INSERT INTO `tbl_home` VALUES ('182','143/182','นางสาวรัตนา','17.5','430','012_soi','status_2',NULL), ('183','143/183','นางสาวลัดดา สุดธารใจ','17.5','430','012_soi','status_2',NULL), ('184','143/184','นางสาวชุติญา ก่อเกษมวงศ์','21.5','510','012_soi','status_2',NULL), ('185','143/185','นางสาวสุภาพร อัสสันตชัย','21.9','518','012_soi','status_2',NULL), ('186','143/186','นางสาวปทิตตา เยสูงเนิน','17.5','430','012_soi','status_2',NULL), ('187','143/187','นายเชิดชู หาญมนต์สุข','17.5','430','012_soi','status_2',NULL), ('188','143/188','นางสาวกัญญรัต์ นอขุดทด','17.5','430','012_soi','status_2',NULL), ('189','143/189','นางปิยดา','17.5','430','012_soi','status_2',NULL), ('19','143/19','นางสาวอินทิรา ลีศิริวัฒนากุล','17.5','430','02_soi','status_2',NULL), ('190','143/190','นางสาวทิพย์ดนยา จิราริรัชน์','23.6','552','012_soi','status_2',NULL), ('191','143/191','นางคมเพชร พรมมี','23.6','552','012_soi','status_2',NULL), ('192','143/192','นางสาวเรณู','17.5','430','012_soi','status_2',NULL), ('193','143/193','นายธวัชชัย บุญญรัตน์โต','23.7','554','012_soi','status_2',NULL), ('194','143/194','นางสาวณิชารีย์','26.6','612','013_soi','status_2',NULL), ('195','143/195','ว่าที่ ร.ต.ศิริพงษ์ เพ็ญสว่าง','19.7','474','013_soi','status_2',NULL), ('196','143/196','นางสาวฉัตรดาว สินธุชัย','26.4','608','013_soi','status_2',NULL), ('197','143/197','นางสาวเรวดี สินธุ์พรม','26.4','608','013_soi','status_2',NULL), ('198','143/198','นางสภาพร กัวพานิช','19.7','474','013_soi','status_2',NULL), ('199','143/199','นางสาววลัยพร โอภาส','19.7','474','013_soi','status_2',NULL), ('20','143/20','นายเอกสิทธิ มีลินธสูตร','39.6','700','02_soi','status_2',NULL), ('200','143/200','คุณพิชาติ','19.7','474','013_soi','status_2',NULL), ('201','143/201','นายบวรรัตน์ แขดวง','19.7','474','014_soi','status_2',NULL), ('202','143/202','นางกวินนา ชมภูนุช','24.5','570','014_soi','status_2',NULL), ('203','143/203','นางณิชมน','24.2','564','014_soi','status_2',NULL), ('204','143/204','นายธนิต โหจิวิวัฒน์','19.7','474','014_soi','status_2',NULL), ('205','143/205','นายจักกฤษ เชื้อขำดี','19.7','474','014_soi','status_2',NULL), ('206','143/206','นายมาโนด ฉิมเกิด','19.7','474','014_soi','status_2',NULL), ('207','143/207','นางสาวสาวิตรี ต้นสุวรรณ','19.7','474','014_soi','status_2',NULL), ('208','143/208','นายณรงค์ คูหาวสินี','19.7','474','014_soi','status_2',NULL), ('209','143/209','นางสาวธัญญพัทธ์ พิพัฒน์เน','26.7','614','014_soi','status_2',NULL), ('21','143/21','นายอำนาจ  คงมี','39.9','700','02_soi','status_2',NULL), ('210','143/210','นายสุธี ตันเจริญ','27.9','638','014_soi','status_2',NULL), ('211','143/211','นางสาวฤทธิญา เข็มแก้ว','22','520','014_soi','status_2',NULL), ('212','143/212','นายสันติ นาอุดมทรัพย์','23.2','544','014_soi','status_2',NULL), ('213','143/213','นายจักรพันธุ์ วาณิชย์เสริมกุล','24.3','566','014_soi','status_2',NULL), ('214','143/214','นายมณี ยามดี','25.5','590','014_soi','status_2',NULL), ('215','143/215','นายภฺษิต-นาบสรศักดิ์','26.7','614','014_soi','status_2',NULL), ('216','143/216','นายสมัย บุตรมงคล','39.9','878','014_soi','status_2',NULL), ('217','143/217','นายคันธรส รอดอู่','39.5','700','014_soi','status_2',NULL), ('218','143/218','นายสงกรานต์ บัวคลี่','25.3','586','014_soi','status_2',NULL), ('219','143/219','นางสาวอรวรรณ แย้ม','23.3','546','014_soi','status_2',NULL), ('22','143/22','นางสาวขวัญตา  สอาดรักษ์','17.6','432','02_soi','status_2',NULL), ('220','143/220','นางสาวชนิกานต์ วัฒนศรีสูงสุด','31.1','700','014_soi','status_2',NULL), ('221','143/221','นางสาวผกาพร ธนปริสุทธิ','30.2','684','015_soi','status_2',NULL), ('222','143/222','นางสุวิมล ภูมิพฤกษ์','20','480','015_soi','status_2',NULL), ('223','143/223','นายรักชาติ สิงยะเมือง','20','480','015_soi','status_2',NULL), ('224','143/224','นางสาวจินตนา กันทะเสน','20','480','015_soi','status_2',NULL), ('225','143/225','นางสาวนงเยาว์','20','480','015_soi','status_2',NULL), ('226','143/226','นางสาวชีวนันท์ แจ่มจำรัส','19.9','478','015_soi','status_2',NULL), ('227','143/227','นายรัชพล จันทร์กลัด','26.9','618','015_soi','status_2',NULL), ('228','143/228','นายทศพร ทศทิศโยธิน','26.8','616','015_soi','status_2',NULL), ('229','143/229','นายสุริยัน วันหวัง','19.6','472','015_soi','status_2',NULL), ('23','143/23','คุณพรินทร์','17.6','432','02_soi','status_2',NULL), ('230','143/230','นางสาวสุทธิรัตน์ สิทธิศิลป์','19.5','470','015_soi','status_2',NULL), ('231','143/231','นางสิตางค์ นาคน้อย','19.3','466','015_soi','status_2',NULL), ('232','143/232','นางสาวนัฐรัตน์ ฤทัยพันธ์','19.2','464','015_soi','status_2',NULL), ('233','143/233','นายสมพงศ์ ธัญญาเจริญ','19','460','015_soi','status_2',NULL), ('234','143/234','นางสาววรรณทิชา เอื้อพงษ์','26.1','602','015_soi','status_2',NULL), ('24','143/24','นายเสกสรร  อามาตย์มนตรี','17.6','432','02_soi','status_2',NULL), ('25','143/25','นางสาววารินทร์ วิเชียรดี','17.6','432','02_soi','status_2',NULL), ('26','143/26','นางสาวศุภวรรณ  ประภามณร','28.8','656','02_soi','status_2',NULL), ('27','143/27','นางสาวสินีพัฒน์  เจริญประสิทธิ','25.5','590','02_soi','status_2',NULL), ('28','143/28','นางสาวอรรถยา ศรีสังข์งาม','19','460','02_soi','status_2',NULL), ('29','143/29','นายวิทยา เทียนชัยแสง','19','460','02_soi','status_2',NULL), ('30','143/30','นายชาตรี สดสุชาติ','19','460','02_soi','status_2',NULL), ('31','143/31','นางสาวณัฐวสา ชามาตย์','19','460','02_soi','status_2',NULL), ('32','143/32','นายอภิสิทธิ์ อ๊อกฉิม','22.2','524','02_soi','status_2',NULL), ('33','143/33','นายณภัทร ธิคม','23','540','02_soi','status_2',NULL), ('34','143/34','นางสาวพิศมัย  ปฏิวรณ์','19','460','02_soi','status_2',NULL), ('35','143/35','นายวรรณชัย  ศิริรัตน์','19','460','02_soi','status_2',NULL), ('36','143/36','นางสาวสุพัตรา  โพธิ์ศรี','19','460','02_soi','status_2',NULL), ('37','143/37','นางสาวรัตติกาล ยิ้มสท้าน','19','460','02_soi','status_2',NULL), ('38','143/38','นายพัฒนา','25.3','586','02_soi','status_2',NULL), ('39','143/39','นายวุฒิ  คุ้มโภคา','33.9','700','02_soi','status_2',NULL), ('40','143/40','นายธนากร  สว่างพงค์พันธ์','32.5','700','02_soi','status_2',NULL), ('41','143/41','นางสาวสราพร','25.4','588','03_soi','status_2',NULL), ('42','143/42','นายปรีชา แขนสูงเนิน','19','460','03_soi','status_2',NULL), ('43','143/43','นางสาวสุพักตร์  สมบัติ','22.4','528','03_soi','status_2',NULL), ('44','143/44','นายวจนคม เชี่ยวน้อย','25.3','586','03_soi','status_2',NULL), ('45','143/45','นายสมจิตร์ โดดสู้','19','460','03_soi','status_2',NULL), ('46','143/46','นางสาววงศ์จันทร์ แก้วทุมทอง','19','460','03_soi','status_2',NULL), ('47','143/47','นายอรรณพ บุญมี','19','460','04_soi','status_2',NULL), ('48','143/48','นางสาวศิรัชชา สิงห์สูงเนิน','19','460','04_soi','status_2',NULL), ('49','143/49','นายอภิชัย สระโร','23','540','04_soi','status_2',NULL), ('50','143/50','นางสาวรัตสณี ธรรมเกตุ','22.2','524','04_soi','status_2',NULL), ('51','143/51','นางสาววชิราภาณ์ บุญเสริม','19','460','04_soi','status_2',NULL), ('52','143/52','นายปราโมทย์ งานหมั่น','19','460','04_soi','status_2',NULL), ('53','143/53','นายรหัต สันป่าแก้ว','19','460','04_soi','status_2',NULL), ('54','143/54','นายทวิช เพชรรัตน์','19','460','04_soi','status_2',NULL), ('55','143/55','นางสาวชุติมา สุขเจริญราษฏร์','25.5','590','04_soi','status_2',NULL), ('56','143/56','นางสาวอนัญญา','26.7','614','04_soi','status_2',NULL), ('57','143/57','นางพจนีย์ วงศ์ปาน','19.7','474','04_soi','status_2',NULL), ('58','143/58','นางสาวกนกพร ว่างปรีดากุล','19.7','474','04_soi','status_2',NULL), ('59','143/59','นายธนาคาร บุญพิเศษ','19.7','474','04_soi','status_2',NULL), ('60','143/60','นางสาวสุภารัตน์ พิมลศรี','19.7','474','04_soi','status_2',NULL), ('61','143/61','นางสาวดาวเรือง จันต๊ะคาด','26.6','612','04_soi','status_2',NULL), ('62','143/62','นายดนุพร ฤกษ์เจริญ','26.6','612','04_soi','status_2',NULL), ('63','143/63','พ.ต.ต.หญิง สุนิสา เมี้ยน','19.7','474','04_soi','status_2',NULL), ('64','143/64','นางสาวอรุณทิพย์ เด่นไพโรจน์ศักดิ์','19.7','474','04_soi','status_2',NULL), ('65','143/65','นางสาวสุนันท์','19.7','474','04_soi','status_2',NULL);
INSERT INTO `tbl_home` VALUES ('66','143/66','นางสาวกัลยา จงกลสภาพร','19.7','474','04_soi','status_2',NULL), ('67','143/67','นางสาวนันท์นภัส','29.4','668','04_soi','status_2',NULL), ('68','143/68','นายสายัน-นางอารี คำทราย','25.3','586','04_soi','status_2',NULL), ('69','143/69','นายวรพล ณธิกุล','19','460','04_soi','status_2',NULL), ('70','143/70','นางสาวณัฐสุรางค์ ดีสุติน','25.4','588','04_soi','status_2',NULL), ('71','143/71','นายปวริศ กัณฑ์บุญมี','25.4','588','05_soi','status_2',NULL), ('72','143/72','นางสาววราลักษณ์ สืบ','19','460','05_soi','status_2',NULL), ('73','143/73','นายทัตสัณฑ์ชัย ตรีสัตย์','25.3','586','05_soi','status_2',NULL), ('74','143/74','นายกฤษดา อภิชิตนรานนท์','26.2','604','05_soi','status_2',NULL), ('75','143/75','นายณัฐสิษฏ์ วรรณพันธ์','17.5','430','05_soi','status_2',NULL), ('76','143/76','นางสาวอธิกา ธูปวิโรจน์','17.5','430','05_soi','status_2',NULL), ('77','143/77','นางสาวสินทวี ล้ำเลิศ','17.5','430','06_soi','status_2',NULL), ('78','143/78','นางวิไล เจริญไพรัชธรรม','17.5','430','06_soi','status_2',NULL), ('79','143/79','นายเพิ่มศักดิ์ ฤทธิ์เล็ก','23.7','554','06_soi','status_2',NULL), ('80','143/80','นางสาวกุลธิดา ธรรมสูงเนิน','23.7','554','06_soi','status_2',NULL), ('81','143/81','คุณกิติศักดิ์','17.5','430','06_soi','status_2',NULL), ('82','143/82','นางสาวภัทรพร ชินพรทวีสุข','17.5','430','06_soi','status_2',NULL), ('83','143/83','นางสาวสิริเพ็ญ สมัยรัฐ','17.5','430','06_soi','status_2',NULL), ('84','143/84','นางกัลยา สุพงศ์','17.5','430','06_soi','status_2',NULL), ('85','143/85','นางสาวสุวพัชร ปรางงาม','23.7','554','06_soi','status_2',NULL), ('86','143/86','นางสาวณัฐนันท์ ติเยาว์','26.9','618','06_soi','status_2',NULL), ('87','143/87','นางสาวชมศิริ ประไพ','19.1','462','06_soi','status_2',NULL), ('88','143/88','นางสาวสายทิพย์ ทวีวงษ์','19.1','462','06_soi','status_2',NULL), ('89','143/89','นางสาวรัตนา อันทะแสง','19.1','462','06_soi','status_2',NULL), ('90','143/90','นายประพันธ์ แซ่จง','19.1','462','06_soi','status_2',NULL), ('91','143/91','นายประทักษ์พร นิมมานสนทรท์','22.2','524','06_soi','status_2',NULL), ('92','143/92','นางสาวอารีรัตน์ ศรีนุ้ย','22.2','524','06_soi','status_2',NULL), ('93','143/93','นางสาววีระนุช โรจน์เจริญวัฒนา','19.1','462','06_soi','status_2',NULL), ('94','143/94','นายศิริชัย รักธรรม','19.1','462','06_soi','status_2',NULL), ('95','143/95','นายเทอดศักดิ์ กลิ่นปาน','19.1','462','06_soi','status_2',NULL), ('96','143/96','นายประสิทธ์ ลำจวน','19.1','462','06_soi','status_2',NULL), ('97','143/97','นายอนุศักดิ์ เชียรสิริไกรสุฒิ','24.2','564','06_soi','status_2',NULL), ('98','143/98','นางสาวชลธิดา จันตรี','22.4','528','06_soi','status_2',NULL), ('99','143/99','นางสาวอารีย์ โทคง','19.1','462','06_soi','status_2',NULL);
INSERT INTO `tbl_show_status` VALUES ('PP','0','N');
INSERT INTO `tbl_soi` VALUES ('01_soi','1','5'), ('010_soi','10','25'), ('011_soi','11','6'), ('012_soi','12','26'), ('013_soi','13','7'), ('014_soi','14','20'), ('015_soi','15','14'), ('02_soi','2','35'), ('03_soi','3','6'), ('04_soi','4','24'), ('05_soi','5','6'), ('06_soi','6','24'), ('07_soi','7','6'), ('08_soi','8','24'), ('09_soi','9','6');
INSERT INTO `tbl_status` VALUES ('status_1','จ่ายแล้ว'), ('status_2','ยังไม่จ่าย');
