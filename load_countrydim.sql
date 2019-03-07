/* List of countries taken from
https://datahub.io/JohnSnowLabs/country-and-continent-codes-list */

USE NWDataMart

insert into countrydim values(1,'Asia','AS','Afghanistan, Islamic Republic of','AF')
insert into countrydim values(2,'Europe','EU','Albania, Republic of','AL')
insert into countrydim values(3,'Antarctica','AN','Antarctica (the territory South of 60 deg S)','AQ')
insert into countrydim values(4,'Africa','AF','Algeria, People''s Democratic Republic of','DZ')
insert into countrydim values(5,'Oceania','OC','American Samoa','AS')
insert into countrydim values(6,'Europe','EU','Andorra, Principality of','AD')
insert into countrydim values(7,'Africa','AF','Angola, Republic of','AO')
insert into countrydim values(8,'North America','NA','Antigua and Barbuda','AG')
insert into countrydim values(9,'Europe','EU','Azerbaijan, Republic of','AZ')
insert into countrydim values(10,'Asia','AS','Azerbaijan, Republic of','AZ')
insert into countrydim values(11,'South America','SA','Argentina','AR')
insert into countrydim values(12,'Oceania','OC','Australia, Commonwealth of','AU')
insert into countrydim values(13,'Europe','EU','Austria','AT')
insert into countrydim values(14,'North America','NA','Bahamas, Commonwealth of the','BS')
insert into countrydim values(15,'Asia','AS','Bahrain, Kingdom of','BH')
insert into countrydim values(16,'Asia','AS','Bangladesh, People''s Republic of','BD')
insert into countrydim values(17,'Europe','EU','Armenia, Republic of','AM')
insert into countrydim values(18,'Asia','AS','Armenia, Republic of','AM')
insert into countrydim values(19,'North America','NA','Barbados','BB')
insert into countrydim values(20,'Europe','EU','Belgium','BE')
insert into countrydim values(21,'North America','NA','Bermuda','BM')
insert into countrydim values(22,'Asia','AS','Bhutan, Kingdom of','BT')
insert into countrydim values(23,'South America','SA','Bolivia, Republic of','BO')
insert into countrydim values(24,'Europe','EU','Bosnia and Herzegovina','BA')
insert into countrydim values(25,'Africa','AF','Botswana, Republic of','BW')
insert into countrydim values(26,'Antarctica','AN','Bouvet Island (Bouvetoya)','BV')
insert into countrydim values(27,'South America','SA','Brazil','BR')
insert into countrydim values(28,'North America','NA','Belize','BZ')
insert into countrydim values(29,'Asia','AS','British Indian Ocean Territory (Chagos Archipelago)','IO')
insert into countrydim values(30,'Oceania','OC','Solomon Islands','SB')
insert into countrydim values(31,'North America','NA','British Virgin Islands','VG')
insert into countrydim values(32,'Asia','AS','Brunei Darussalam','BN')
insert into countrydim values(33,'Europe','EU','Bulgaria, Republic of','BG')
insert into countrydim values(34,'Asia','AS','Myanmar, Union of','MM')
insert into countrydim values(35,'Africa','AF','Burundi, Republic of','BI')
insert into countrydim values(36,'Europe','EU','Belarus, Republic of','BY')
insert into countrydim values(37,'Asia','AS','Cambodia, Kingdom of','KH')
insert into countrydim values(38,'Africa','AF','Cameroon, Republic of','CM')
insert into countrydim values(39,'North America','NA','Canada','CA')
insert into countrydim values(40,'Africa','AF','Cape Verde, Republic of','CV')
insert into countrydim values(41,'North America','NA','Cayman Islands','KY')
insert into countrydim values(42,'Africa','AF','Central African Republic','CF')
insert into countrydim values(43,'Asia','AS','Sri Lanka, Democratic Socialist Republic of','LK')
insert into countrydim values(44,'Africa','AF','Chad, Republic of','TD')
insert into countrydim values(45,'South America','SA','Chile, Republic of','CL')
insert into countrydim values(46,'Asia','AS','China, People''s Republic of','CN')
insert into countrydim values(47,'Asia','AS','Taiwan','TW')
insert into countrydim values(48,'Asia','AS','Christmas Island','CX')
insert into countrydim values(49,'Asia','AS','Cocos (Keeling) Islands','CC')
insert into countrydim values(50,'South America','SA','Colombia, Republic of','CO')
insert into countrydim values(51,'Africa','AF','Comoros, Union of the','KM')
insert into countrydim values(52,'Africa','AF','Mayotte','YT')
insert into countrydim values(53,'Africa','AF','Congo, Republic of the','CG')
insert into countrydim values(54,'Africa','AF','Congo, Democratic Republic of the','CD')
insert into countrydim values(55,'Oceania','OC','Cook Islands','CK')
insert into countrydim values(56,'North America','NA','Costa Rica, Republic of','CR')
insert into countrydim values(57,'Europe','EU','Croatia, Republic of','HR')
insert into countrydim values(58,'North America','NA','Cuba, Republic of','CU')
insert into countrydim values(59,'Europe','EU','Cyprus, Republic of','CY')
insert into countrydim values(60,'Asia','AS','Cyprus, Republic of','CY')
insert into countrydim values(61,'Europe','EU','Czech Republic','CZ')
insert into countrydim values(62,'Africa','AF','Benin, Republic of','BJ')
insert into countrydim values(63,'Europe','EU','Denmark','DK')
insert into countrydim values(64,'North America','NA','Dominica, Commonwealth of','DM')
insert into countrydim values(65,'North America','NA','Dominican Republic','DO')
insert into countrydim values(66,'South America','SA','Ecuador, Republic of','EC')
insert into countrydim values(67,'North America','NA','El Salvador, Republic of','SV')
insert into countrydim values(68,'Africa','AF','Equatorial Guinea, Republic of','GQ')
insert into countrydim values(69,'Africa','AF','Ethiopia, Federal Democratic Republic of','ET')
insert into countrydim values(70,'Africa','AF','Eritrea, State of','ER')
insert into countrydim values(71,'Europe','EU','Estonia, Republic of','EE')
insert into countrydim values(72,'Europe','EU','Faroe Islands','FO')
insert into countrydim values(73,'South America','SA','Falkland Islands (Malvinas)','FK')
insert into countrydim values(74,'Antarctica','AN','South Georgia and the South Sandwich Islands','GS')
insert into countrydim values(75,'Oceania','OC','Fiji, Republic of the Fiji Islands','FJ')
insert into countrydim values(76,'Europe','EU','Finland','FI')
insert into countrydim values(77,'Europe','EU','Faroe Islands','AX')
insert into countrydim values(78,'Europe','EU','France','FR')
insert into countrydim values(79,'South America','SA','French Guiana','GF')
insert into countrydim values(80,'Oceania','OC','French Polynesia','PF')
insert into countrydim values(81,'Antarctica','AN','French Southern Territories','TF')
insert into countrydim values(82,'Africa','AF','Djibouti, Republic of','DJ')
insert into countrydim values(83,'Africa','AF','Gabon, Gabonese Republic','GA')
insert into countrydim values(84,'Europe','EU','Georgia','GE')
insert into countrydim values(85,'Asia','AS','Georgia','GE')
insert into countrydim values(86,'Africa','AF','Gambia, Republic of the','GM')
insert into countrydim values(87,'Asia','AS','Palestinian Territory, Occupied','PS')
insert into countrydim values(88,'Europe','EU','Germany','DE')
insert into countrydim values(89,'Africa','AF','Ghana, Republic of','GH')
insert into countrydim values(90,'Europe','EU','Gibraltar','GI')
insert into countrydim values(91,'Oceania','OC','Kiribati, Republic of','KI')
insert into countrydim values(92,'Europe','EU','Greece, Hellenic Republic','GR')
insert into countrydim values(93,'North America','NA','Greenland','GL')
insert into countrydim values(94,'North America','NA','Grenada','GD')
insert into countrydim values(95,'North America','NA','Guadeloupe','GP')
insert into countrydim values(96,'Oceania','OC','Guam','GU')
insert into countrydim values(97,'North America','NA','Guatemala, Republic of','GT')
insert into countrydim values(98,'Africa','AF','Guinea, Republic of','GN')
insert into countrydim values(99,'South America','SA','Guyana, Co-operative Republic of','GY')
insert into countrydim values(100,'North America','NA','Haiti, Republic of','HT')
insert into countrydim values(101,'Antarctica','AN','Heard Island and McDonald Islands','HM')
insert into countrydim values(102,'Europe','EU','Holy See (Vatican City State)','VA')
insert into countrydim values(103,'North America','NA','Honduras, Republic of','HN')
insert into countrydim values(104,'Asia','AS','Hong Kong, Special Administrative Region of China','HK')
insert into countrydim values(105,'Europe','EU','Hungary, Republic of','HU')
insert into countrydim values(106,'Europe','EU','Iceland, Republic of','IS')
insert into countrydim values(107,'Asia','AS','India, Republic of','IN')
insert into countrydim values(108,'Asia','AS','Indonesia, Republic of','ID')
insert into countrydim values(109,'Asia','AS','Iran, Islamic Republic of','IR')
insert into countrydim values(110,'Asia','AS','Iraq, Republic of','IQ')
insert into countrydim values(111,'Europe','EU','Ireland','IE')
insert into countrydim values(112,'Asia','AS','Israel, State of','IL')
insert into countrydim values(113,'Europe','EU','Italy','IT')
insert into countrydim values(114,'Africa','AF','Cote d''Ivoire, Republic of','CI')
insert into countrydim values(115,'North America','NA','Jamaica','JM')
insert into countrydim values(116,'Asia','AS','Japan','JP')
insert into countrydim values(117,'Europe','EU','Kazakhstan, Republic of','KZ')
insert into countrydim values(118,'Asia','AS','Kazakhstan, Republic of','KZ')
insert into countrydim values(119,'Asia','AS','Jordan, Hashemite Kingdom of','JO')
insert into countrydim values(120,'Africa','AF','Kenya, Republic of','KE')
insert into countrydim values(121,'Asia','AS','Korea, Democratic People''s Republic of','KP')
insert into countrydim values(122,'Asia','AS','Korea, Republic of','KR')
insert into countrydim values(123,'Asia','AS','Kuwait, State of','KW')
insert into countrydim values(124,'Asia','AS','Kyrgyz Republic','KG')
insert into countrydim values(125,'Asia','AS','Lao People''s Democratic Republic','LA')
insert into countrydim values(126,'Asia','AS','Lebanon, Lebanese Republic','LB')
insert into countrydim values(127,'Africa','AF','Lesotho, Kingdom of','LS')
insert into countrydim values(128,'Europe','EU','Latvia, Republic of','LV')
insert into countrydim values(129,'Africa','AF','Liberia, Republic of','LR')
insert into countrydim values(130,'Africa','AF','Libyan Arab Jamahiriya','LY')
insert into countrydim values(131,'Europe','EU','Liechtenstein, Principality of','LI')
insert into countrydim values(132,'Europe','EU','Lithuania, Republic of','LT')
insert into countrydim values(133,'Europe','EU','Luxembourg, Grand Duchy of','LU')
insert into countrydim values(134,'Asia','AS','Macao, Special Administrative Region of China','MO')
insert into countrydim values(135,'Africa','AF','Madagascar, Republic of','MG')
insert into countrydim values(136,'Africa','AF','Malawi, Republic of','MW')
insert into countrydim values(137,'Asia','AS','Malaysia','MY')
insert into countrydim values(138,'Asia','AS','Maldives, Republic of','MV')
insert into countrydim values(139,'Africa','AF','Mali, Republic of','ML')
insert into countrydim values(140,'Europe','EU','Malta, Republic of','MT')
insert into countrydim values(141,'North America','NA','Martinique','MQ')
insert into countrydim values(142,'Africa','AF','Mauritania, Islamic Republic of','MR')
insert into countrydim values(143,'Africa','AF','Mauritius, Republic of','MU')
insert into countrydim values(144,'North America','NA','Mexico','MX')
insert into countrydim values(145,'Europe','EU','Monaco, Principality of','MC')
insert into countrydim values(146,'Asia','AS','Mongolia','MN')
insert into countrydim values(147,'Europe','EU','Moldova, Republic of','MD')
insert into countrydim values(148,'Europe','EU','Montenegro, Republic of','ME')
insert into countrydim values(149,'North America','NA','Montserrat','MS')
insert into countrydim values(150,'Africa','AF','Morocco, Kingdom of','MA')
insert into countrydim values(151,'Africa','AF','Mozambique, Republic of','MZ')
insert into countrydim values(152,'Asia','AS','Oman, Sultanate of','OM')
insert into countrydim values(153,'Africa','AF','Namibia, Republic of','NA')
insert into countrydim values(154,'Oceania','OC','Nauru, Republic of','NR')
insert into countrydim values(155,'Asia','AS','Nepal, State of','NP')
insert into countrydim values(156,'Europe','EU','Netherlands, Kingdom of the','NL')
insert into countrydim values(157,'North America','NA','Netherlands Antilles','AN')
insert into countrydim values(158,'North America','NA','Cura√ßao','CW')
insert into countrydim values(159,'North America','NA','Aruba','AW')
insert into countrydim values(160,'North America','NA','Sint Maarten (Netherlands)','SX')
insert into countrydim values(161,'North America','NA','Bonaire, Sint Eustatius and Saba','BQ')
insert into countrydim values(162,'Oceania','OC','New Caledonia','NC')
insert into countrydim values(163,'Oceania','OC','Vanuatu, Republic of','VU')
insert into countrydim values(164,'Oceania','OC','New Zealand','NZ')
insert into countrydim values(165,'North America','NA','Nicaragua, Republic of','NI')
insert into countrydim values(166,'Africa','AF','Niger, Republic of','NE')
insert into countrydim values(167,'Africa','AF','Nigeria, Federal Republic of','NG')
insert into countrydim values(168,'Oceania','OC','Niue','NU')
insert into countrydim values(169,'Oceania','OC','Norfolk Island','NF')
insert into countrydim values(170,'Europe','EU','Norway','NO')
insert into countrydim values(171,'Oceania','OC','Northern Mariana Islands, Commonwealth of the','MP')
insert into countrydim values(172,'Oceania','OC','United States Minor Outlying Islands','UM')
insert into countrydim values(173,'North America','NA','United States Minor Outlying Islands','UM')
insert into countrydim values(174,'Oceania','OC','Micronesia, Federated States of','FM')
insert into countrydim values(175,'Oceania','OC','Marshall Islands, Republic of the','MH')
insert into countrydim values(176,'Oceania','OC','Palau, Republic of','PW')
insert into countrydim values(177,'Asia','AS','Pakistan, Islamic Republic of','PK')
insert into countrydim values(178,'North America','NA','Panama, Republic of','PA')
insert into countrydim values(179,'Oceania','OC','Papua New Guinea, Independent State of','PG')
insert into countrydim values(180,'South America','SA','Paraguay, Republic of','PY')
insert into countrydim values(181,'South America','SA','Peru, Republic of','PE')
insert into countrydim values(182,'Asia','AS','Philippines, Republic of the','PH')
insert into countrydim values(183,'Oceania','OC','Pitcairn Islands','PN')
insert into countrydim values(184,'Europe','EU','Poland','PL')
insert into countrydim values(185,'Europe','EU','Portugal','PT')
insert into countrydim values(186,'Africa','AF','Guinea-Bissau, Republic of','GW')
insert into countrydim values(187,'Asia','AS','Timor-Leste, Democratic Republic of','TL')
insert into countrydim values(188,'North America','NA','Puerto Rico, Commonwealth of','PR')
insert into countrydim values(189,'Asia','AS','Qatar, State of','QA')
insert into countrydim values(190,'Africa','AF','Reunion','RE')
insert into countrydim values(191,'Europe','EU','Romania','RO')
insert into countrydim values(192,'Europe','EU','Russian Federation','RU')
insert into countrydim values(193,'Asia','AS','Russian Federation','RU')
insert into countrydim values(194,'Africa','AF','Rwanda, Republic of','RW')
insert into countrydim values(195,'North America','NA','Saint Barthelemy','BL')
insert into countrydim values(196,'Africa','AF','Saint Helena','SH')
insert into countrydim values(197,'North America','NA','Saint Kitts and Nevis, Federation of','KN')
insert into countrydim values(198,'North America','NA','Anguilla','AI')
insert into countrydim values(199,'North America','NA','Saint Lucia','LC')
insert into countrydim values(200,'North America','NA','Saint Martin','MF')
insert into countrydim values(201,'North America','NA','Saint Pierre and Miquelon','PM')
insert into countrydim values(202,'North America','NA','Saint Vincent and the Grenadines','VC')
insert into countrydim values(203,'Europe','EU','San Marino, Republic of','SM')
insert into countrydim values(204,'Africa','AF','Sao Tome and Principe, Democratic Republic of','ST')
insert into countrydim values(205,'Asia','AS','Saudi Arabia, Kingdom of','SA')
insert into countrydim values(206,'Africa','AF','Senegal, Republic of','SN')
insert into countrydim values(207,'Europe','EU','Serbia, Republic of','RS')
insert into countrydim values(208,'Africa','AF','Seychelles, Republic of','SC')
insert into countrydim values(209,'Africa','AF','Sierra Leone, Republic of','SL')
insert into countrydim values(210,'Asia','AS','Singapore, Republic of','SG')
insert into countrydim values(211,'Europe','EU','Slovakia (Slovak Republic)','SK')
insert into countrydim values(212,'Asia','AS','Vietnam, Socialist Republic of','VN')
insert into countrydim values(213,'Europe','EU','Slovenia, Republic of','SI')
insert into countrydim values(214,'Africa','AF','Somalia, Somali Republic','SO')
insert into countrydim values(215,'Africa','AF','South Africa, Republic of','ZA')
insert into countrydim values(216,'Africa','AF','Zimbabwe, Republic of','ZW')
insert into countrydim values(217,'Europe','EU','Spain','ES')
insert into countrydim values(218,'Africa','AF','South Sudan','SS')
insert into countrydim values(219,'Africa','AF','Western Sahara','EH')
insert into countrydim values(220,'Africa','AF','Sudan, Republic of','SD')
insert into countrydim values(221,'South America','SA','Suriname, Republic of','SR')
insert into countrydim values(222,'Europe','EU','Svalbard & Jan Mayen Islands','SJ')
insert into countrydim values(223,'Africa','AF','Swaziland, Kingdom of','SZ')
insert into countrydim values(224,'Europe','EU','Sweden','SE')
insert into countrydim values(225,'Europe','EU','Switzerland','CH')
insert into countrydim values(226,'Asia','AS','Syrian Arab Republic','SY')
insert into countrydim values(227,'Asia','AS','Tajikistan, Republic of','TJ')
insert into countrydim values(228,'Asia','AS','Thailand, Kingdom of','TH')
insert into countrydim values(229,'Africa','AF','Togo, Togolese Republic','TG')
insert into countrydim values(230,'Oceania','OC','Tokelau','TK')
insert into countrydim values(231,'Oceania','OC','Tonga, Kingdom of','TO')
insert into countrydim values(232,'North America','NA','Trinidad and Tobago, Republic of','TT')
insert into countrydim values(233,'Asia','AS','United Arab Emirates','AE')
insert into countrydim values(234,'Africa','AF','Tunisia, Tunisian Republic','TN')
insert into countrydim values(235,'Europe','EU','Turkey, Republic of','TR')
insert into countrydim values(236,'Asia','AS','Turkey, Republic of','TR')
insert into countrydim values(237,'Asia','AS','Turkmenistan','TM')
insert into countrydim values(238,'North America','NA','Turks and Caicos Islands','TC')
insert into countrydim values(239,'Oceania','OC','Tuvalu','TV')
insert into countrydim values(240,'Africa','AF','Uganda, Republic of','UG')
insert into countrydim values(241,'Europe','EU','Ukraine','UA')
insert into countrydim values(242,'Europe','EU','Macedonia, The Former Yugoslav Republic of','MK')
insert into countrydim values(243,'Africa','AF','Egypt, Arab Republic of','EG')
insert into countrydim values(244,'Europe','EU','UK','GB')
insert into countrydim values(245,'Europe','EU','Guernsey, Bailiwick of','GG')
insert into countrydim values(246,'Europe','EU','Jersey, Bailiwick of','JE')
insert into countrydim values(247,'Europe','EU','Isle of Man','IM')
insert into countrydim values(248,'Africa','AF','Tanzania, United Republic of','TZ')
insert into countrydim values(249,'North America','NA','USA','US')
insert into countrydim values(250,'North America','NA','United States Virgin Islands','VI')
insert into countrydim values(251,'Africa','AF','Burkina Faso','BF')
insert into countrydim values(252,'South America','SA','Uruguay, Eastern Republic of','UY')
insert into countrydim values(253,'Asia','AS','Uzbekistan, Republic of','UZ')
insert into countrydim values(254,'South America','SA','Venezuela','VE')
insert into countrydim values(255,'Oceania','OC','Wallis and Futuna','WF')
insert into countrydim values(256,'Oceania','OC','Samoa, Independent State of','WS')
insert into countrydim values(257,'Asia','AS','Yemen','YE')
insert into countrydim values(258,'Africa','AF','Zambia, Republic of','ZM')
insert into countrydim values(259,'Oceania','OC','Disputed Territory','XX')
insert into countrydim values(260,'Asia','AS','Iraq-Saudi Arabia Neutral Zone','XE')
insert into countrydim values(261,'Asia','AS','United Nations Neutral Zone','XD')
insert into countrydim values(262,'Asia','AS','Spratly Islands','XS')