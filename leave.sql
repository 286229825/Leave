/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.54 : Database - leave
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`leave` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `leave`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2502',1,'LeaveProcess.png','2501','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0‡\0\0\0¼œ¡É\0\0(IDATxœíİlÜõ}?pw¥`\n[ÖÛ©ÅİTai@¬¥S\"&5i\'í[,­*^ÿHOšDSÑQ4¡ÎİD3­eÖÔ–°¶(İÖÌÚÄæ©\nµT Y!Ìc@=ÁüHëBRÜ¨K=–ÄN>ßOü¡×ãÎ¾¾;~Üã¡—¢ËùsŸ÷yó~?yçãÏ§+\0\0€ôëŠ{\0\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ\0\0²@®\0 äZ e\n…Âäää¶mÛ†‡‡ahh(|gbb\"ŸÏÇ½ƒ\0ÄC®R#Œ³a~íîîm˜bwíºãŞ=÷Euç]wßtÓçFFFzzz6nÜ8>>÷Î°ÖäZ fffÃ8æ×“‹ÕëÚ²åãSSSqï8\0kG®’nll,©÷î¹¯f¢-­½îÛ´iÓÖ­[…BÜG\0ÀZkä\n#éÈÈÈèèhC‰¶´¾vÛmƒƒƒóóóq\n\0m\'×	†Ú7NLL¬:Ô/K×377÷Ğ^r-P###Í‡Úâ5	a´uA@¶Éµ@5sùAeíÚuÇğğpÜ‡@Éµ@âÌÌÌ´0ÔFuíµŸØ±cGÜ@»Èµ@â„¡vï£ûZk=÷üÅ÷¹\Z «äZ Y&\'\'‡‡‡[j£ºşúOoß¾=îC -äZ Y½UmCS¶½½½q\"\0m!×	’Ïç{zzÚj£Ú°aÃôôtÜ\n@ëÉµ@‚Œçr¹¶æÚ/Ü|óèèhÜ\n@ëÉµ@‚lİºuÇmÍµ÷î¹opp0î õäZ A†††î¼ëî¶æÚ^|q_Ü\n@ëÉµ@‚´é_¥uôØñîîî¸€Ö“kéíí=ôÜómÍµauuéú\02Hç$HÿSû÷Ëµ\0¬‚ÎH¶Ş¼Öõµ\0Ù&×	’Ëå¾±sg[sí>´aÃ†¸€Ö“kÙ¾}ûõ×º­¹6ÌÍ[¶|<î õäZ AæææúúúÚšk7oŞ¼{÷î¸€Ö“kdië¯=v¼§§§P(Ä}”\0´\\$K[/EøÒ—¿®<îC -äZ Y\n…B___;îb{ôØñ‹/î›ŸŸûh¹Hœ‰‰‰^sÉZ\0\Z\"×Iôá«¯Şµë†Ú§öï_·nİÑcÇã>2\0ÚE®’(ŸÏoØ°¡U¿@vø¥#a¨=pğ`Ü‡@Éµ@BÍÎÎ†Ñ6£Í‡Ú_}õwİ÷Ğ^r-\\333ëÖ­{àÁ‡š¹ü ÇB-@\'kDËçó›6mºé¦Ï~éHC‰öè±ã_úò—£‹â>\0Ö‚\\$]¡Psí%—ô‡95L«õ„ÚoìÜ.ıõŸÓpÜ»À\Z‘kt˜ŸŸ¿á†zzz>|õÕalİûè¾²,¾sûíÿöÑk®	—Ù²åãsssqï2\0kJ®Ò¤P(LNNær¹uëÖu½YøNj\'&&òù|Ü»	@äZ İÂŒ÷.\0r-n]]ú1\0Î0\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é&×1\0é311ÆÙîîîğEoooøçÛßşöÙÙÙ¸w\r€ØÈµ@ú|ë[ßêªpå•WNNNÆ½k\0ÄF®Ò§P(œsÎ9¥¡öòË/ïííÍçóqï\Z\0±‘kTúìg?{ÖYgsí\'?ùÉÑÑÑ¸w\n€8Éµ@Z]tÑEQ¨½æškúúú\n…BÜ{@œäZ ­î¿ÿş·½íma®\Z\Zre-\0r-bW]uU”kãŞ\0â\'×)6??æZ·÷ k´ó\\\0\"Æ`5\n…ÂÄÄÄÈÈÈàà`___åİd;Dxìá70<<<>>î.c\0ñ’k†íŞ½;Ìsa¨½ıöÛïİ³çÀÁƒ\':³Âc¿]»vmÙ²%üNÂt÷Éè\\r-Ğ€|>ŸËå6oŞ|è¹C\'NªÒ:üÒá0İ†_Îüü|Ü\'\n Éµ@½ÂP;00ğÿtrá„Z©î¼ëÎ\r6ÌÍÍÅ}º\0:\\Ô+—Ë-…Ú×UõºwÏ=›6}0îÓĞqäZ .»wïŞ¼ùC‹UO}æ/n¼ùæÏÇ}Ò\0:‹\\ÔV(úúú{~nañ5UO;şóuë.wc]€µ$×µçr¹…ÅW‹uåĞÕy\'¬ÒOuTİ|óßŒÆ}ê\0:ˆ\\Ô6<<¼ëÿøe¨ıĞæŸÁOÏ,ß?<~\"Ø{lqû÷}÷ùW>üo!x¸<ğjpÏëÁß?ğäµ[?{ÄŒ¥İ7=00÷©è r-P[ÿşı-,ª««ëX?¼²¼|2x5şü/?×õ+çoüĞğóÁ¡Á¡×ƒ¹Bp`1øæ÷_š²=Şuìø‘îîî¸O@‘kÚzzz^:òüÂâ±¨Â¨úê©àÄ©3?Z<}æÏoßıŸïşíKÿê_Z‚£‹Á+ÁËA>îyä‰¥\\{¬3«Ë3~Ö>¨m)›-Vø×ã‹Á‘×‚“§ŞX ŸÏßòÕ¯ş‹_=ôÂ™G,œN.åİ‡}¼ì³Ur-ÀZÒçµ-eÓÿ+Ö™\\{*8üjğ³cÁBœ<q¢ÿ’KººŞÚÕÕı‘?ÙRúÁ½û+ûlG•\\°–ô¹@mKÙô•bE×!y-xáhğâëÁŞı?ºè¢‹ŞzÖÙç¾ã#{S®}äÑ}eŸí¨’kÖ’>¨m)›æ‹şõµÓÁË…3óµ‡_ö<2{ÙºõïüßÑsÁ×ÿå›¯Á±Á«\'Î|ğéGÊ>ÛQ%×¬%}.P[˜Ï^¬(®…Ñö•…àç\'ƒ.<ôäÜºßıÀ•ğ‡/~V^,GNa²}àáGÊ>ÛQ%×¬%}.P[Y6¼rÓ?xfï“³Ó3³î›}ğ±§zâà=üıï=ùìıûşŸ}?|ğ±N?şô“Ïüä¶ØùÑk>\Z{¾”k:>¨m)×¾\\Z×]÷‰z6öÇùHÙ;ªäZ€µ¤Ïj[ÊµGT£%×¬%}.PÛ™\\{ê%ÕhÉµ\0kIŸÔ¶”k«FK®XKú\\ ¶¥\\û¢j´äZ€µ¤Ïj[Êµ?S–\\°–ô¹@mK¹v^5Zr-ÀZÒçµÉµr-@òésÚ–ríO­eïhÛè\Zj¾Sııú®[\rm(îSĞAô¹@ma>;uê…F«òSeïTy CÙGêY¬ôÍe—©²c\rm«¡o îSĞAô¹@mK©îùFk…t¸âÂu®s¥7Kÿ¬\\¾j†nj—ªïmÜ§ ƒèsÚ–Şsm­š›X.¾é³¥V®¶rù*Û­²­F*îSĞAô¹@mKÁîPCUu~tùåWZIõÅŠË”®¿rs¥\\öu=ÛZÅ—÷©è ú\\ ¶¥„÷“†j¥¬îı•#ò›–©¾?ÕWRç¶\Zıâ>u\0DŸÔÖd®]éuCy·l*y´,›Ö¿?õlK®H,}.PÛR°ûqCUú‘•^¯´ü²ï/7ú¦e–İJå‹z^WÙV£_BÜ§ ƒèsÚÎ»Ós\rUéGVz½ÒòË¾_¶@å:™A—ûTeT-]¾şm5ú%Ä}ê\0:ˆ>¨m)Ø=»ºŠ>û‹Yc±*ï/—GË7QöÁÊeê|]e[{Ü§ ƒèsÚ–‚İ\Z­_$Âjï”ş¨úJ*WUöºú;­ÚV£ß@Ü§ ƒèsÚ–‚İÁúëqÅŸ—©zyÀ/.}Q¹şâ\n—]r¥¨ò~•m5ú=Ä}ê\0:ˆ>¨m)ØP–\\°–ô¹@mK¹öÕhÉµ\0kIŸÔ&×Êµ\0É§ÏjóÙéÓO«FK®XKú\\ ¶¥\\ûCÕhÉµ\0kIŸÔ¶”kgU£%×¬%}.PÛR®ıj´äZ€µ¤Ïjëîî~íµÇNŸş¾j¨äZ€µ¤Ïjëëë{öÙï>½_5Tr-ÀZÒçµ\r\r\r}g÷ÓÁSªşúÁì·ûûûã>u\0D®jıÓØ“bºêŸÇ¿Ëåâ>u\0D®j›››ëïßk…½§ƒ\'U5<|ÕäädÜ§ ƒÈµ@]¶±õtğ„ª§ş}âïFF†â>i\0E®êR(?0=ı¯Ağ¸ª^óó{úûß—Ï?÷Iè,r-P¯ÙÙÙKfg\'ƒ`F­Ta¨\rÿ`jêŸâ>]\0G®\Z0==FÛ±±?‚ÇTeMN~¹¿¿ojêã>Q\0H®\ZS(FGsƒƒëÇÇÿz~ş Ø§òùÿ˜øÛ‘‘ÍÃÃƒáë¸O@‡’kÕ˜ššÊåş_oï¯wÑÕÕÓó«##\n£mÜ§ £Éµ@º¹G,\0¹H·.Ïª`‰ñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0H7¹€ˆñ\0HŸ‰‰‰0Îvww„/z{{Ã?ßşö·ÏÎÎÆ½k\0ÄF®Òç[ßúVW…+¯¼rrr2î] 6r->…BáœsÎ)\rµ—_~yooo>Ÿ{×\0ˆ\\¤Òg?ûÙ³Î:«˜k?ùÉOÆ½S\0ÄI®Òê¢‹.ŠBí5×\\Ó××W(âŞ#\0â$×iuÿı÷¿ímosíĞĞ+kk»êª«¢\\÷\0?¹H±ùùù0×º½\0\\¤ç2\01\0)–Ïçs¹œÛ{Èµ@z…qvÓ¦MßØ¹sppP´@®R)\nµ{İwra1üS´@®Ò§4ÔF%Ú ×)SjE[\0¹H—•B­h€\\¤FõP+Út8¹H‡zB­hĞÉäZ êµ¢-@Ç’k¤k4ÔŠ¶\0I®mu¡V´è@r-\\•¡öÎ»î¾ä’ş.d¿tdİºußØ¹S´è@r-PË†Úîîî®®®‹/î«Œ¶Q¨íZ\"Út ¹H¢*¡6RmKC­hĞ™äZ q*CíÑcÇ{{{»Ş¬m+Cm(Á‡{^´èr-,U“ÛÓÓSm÷=öØ²¡öÎ»îökd\0E®¤æcr+£íÙgŸ]O¨m2O®’¢ÎÇäVFÛ:C­hmr-\r=&w¥h[3ÔŠ¶\0&×‰†Ú{÷ÜWçşkê¿ßúÖ·–…Ú·¼å-;wşsk·FÛ¸\Z€V’kD˜™™	£íá—ÔŒ¤ËŞı økd+=²¡l\ra¨\r·÷AĞJr-õDÛ*¡¶Îh+Ôd•\\$Hõh»l¨}Ë[ŞR´j2L®’e¥h»ÒÃşş+_]ö¾¶Ë>hW¨È0¹HœÊh»R¨î~°Ò#Ê´+Ôd›\\$Qe´İ²åãË†Ú•nşµyóæ£Çµ\0C®ªJ´]é1¹Åh[j{{{o»í¶¸€ö’käšœœ¬Œ¶Õ“FÛÊ™Ú»ï¾{hh(—Ëy@†Éµ@B\rTÎÚV&ÙSû÷¯tùÁøøxÿîİ»ã=.\0ÚD®gvvvãÆ£££…B!hä‘\r5ï~0??oâ «äZ Y¢iÚéééÒ7¶ÕQÌÄ-@&Éµ@R”MÓ–ièA»5ï~`â {äZ vìØQ9M[¦ÎíÖK/·\0Y\"×Bºº–ÿO¯keÕWU¶@õ¿®z[mMnİºuÙiÚ25´Ûè}j×râ¶…ç€J:MˆA=y¥ÎLS\\¬tù²`T3*ÕŸŸZÀV1cZåA»«~øÂÚLÜ¶ğ¼Ò0@İÄ`Õù¦J”)M±¥kX6øÖ³­·^Qºæ+n=°Š£¨¢™‰Òe´ÛäÅÖ`âvÕç½İç t…ƒÎÛÕ\\¬Û:“ª®ıÎªÖ¼’æçGK£m“ÛÖ‰Ûd€ÌĞÂÚ©œ:mt5Xî\ZƒÊåıêê©è;×.—¤V›¥òù|«¦E£h{ààÁV…ÚH4q\n_4¹ªzæ×+?Re…­=\0£+„µ³R-¾¨\'•½¨‘W\nOõæ­·^ñ‹ö^EJ+³{÷îÖÎ††q¶¯¯¯…¡¶(ÚÕñññ®3Qç {ô}°Fº–Ë²Aƒy4X!×vÕ7Y»Râ©ƒ¾sí2WsÖüT¥|>ŸËåZ2	ºfZ»Ï•gªÊbËjÕ¹\0È*]!¬‘*Y¶¡¬Y–P›OKUºÒ¿{×»İH;æ>×L«v¾é3ÕšsaúAXÕƒl£s¨+-YÌ7-›¯-ù‡ïe?Rs\'Ó8M[©ù£¨g†¾ÆO›>\0™§„ÔAj¦ŸÊùÚF§„kÿt…)Â:SZª§i+5s8-ÈµÍ€N „¬:×–Í¹–eš*Yvµ×!Ôµpå;…Batt4íÓ´•V7q[Ï7VÏš\\3@æéaMU¹ ¡e‚º3MõµÕ¹­Ò…kşhzzz```ll¬u¦Qı·u~c¥ï´ö\\\0t}Ğ2Ñ4íÆgggãŞ—öÊÆuÃ\0#×­‘ùiÚJ»€ íäZ Y3M[©8q;77÷¾\0t:¹hJ˜eÃDÛQÓ´•¢‰Ûÿ\0b\'×«&¹v<Æ6u:yÒ\Z !äZ`5¢iÚ0É…y.î}I¼È 9äZ aÑ4m˜áâŞ‘$2q¹h€iÚ:™¸X{r-P¯;v˜¦­Ÿ‰[€5&×µÍÏÏ\r\rmİºÕ4m£LÜ¬¹¨a||¼¿¿÷îİqïHZ™¸Xr-°¢hš6—Ëåóù¸÷%õLÜ´›\\,Ï4mË™¸h+¹(—ÏçMÓ¶O4q»mÛ6+´–\\¼IôHXÓ´m&Ú0×º¹@kÉµĞ‰n¼ñÆñññ²7óù|.—\Z\ZšŸŸc§:ÎJ7şÊW¾ ¸ö\n ½äZè8×]w]WW×9çœS\Z§¢iÚÊ°K»•=¼-ü¿‹ğì\\pÁaŞwÇ\0RG®…ÎòğÃw-¹ì²Ë&\'\'Ó´	P:q{Ë-·D\'(Œ¶®ohˆ\\å½ï}o›Î;ï¼K/½t×®]¦i\"š¸}÷»ß /¼ğSŸúTÜ;&r-t[o½µëÍÎ?ÿü§Ÿ~:îıâ\rûØÇJÏÎ»Şõ®™™™¸w\n 5äZèù|¾»»»,×^qÅ###qï\ZgÜxãegçì³Ï^¿~}Üû\Zr-tŠááásÏ=÷òË/ÿûßÁô÷÷÷õõ…I×E	1::\ZfÙŞŞŞğÔüŞïı^x²Î;ï¼÷¼ç=N@äZè7nŒ.<X¿~ı¶mÛ¦¦¦æææâŞ)Ê…\'%<5á	Êår¿õ[¿²‹/¾8îH¹:‚\'¸¦TñV	qï@\nÈµd\\˜ç&&&FFFûúúº:Uxìá70<<<>>îîQi¡õF´^ Nr-Y¶{÷îpDcÁí·ß~ï=<¹°Ğ™{ø\rìÚµkË–-áwâ’ÍäÓzµ^ Qr-Ù=k`óæÍ‡;trá¤*­Ã/óAøåxC2i½Z/°:r-Æ‚oìü§“\'ÔJuç]wnØ°Á¯%Ö«õ«&×’A¹\\n)¼®ª×½{îÙ´éƒqŸ.ŞDëÕzU“kÉšİ»woŞü¡…Å‚ª§>ó7Ş|óçã>i¼AëÕzfÈµdJ¡Pèëë{îù¹…Å×T=uìøÏ×­»ÜÍ¿’@ëÕz&ÉµdÊøøx.—[X|µXWıQ÷*ıTGÕÍ7ÿÛ£&Ö«õM’kÉ”ááá]wüÇ/cÁ‡6ÿ4~|*xf!øş‰àñÁŞc‹Ûï¸ï»Ï¿òğÉàÁÃ…àWƒ{^şş\'¯İú‰ØéXêÑ}ÓqŸ:´^­h–\\K¦ô÷÷ïßÿØÂâñ¨ºººÁñÓÁ+‹ÁË\'ƒWƒàÏÿòs]¿rşÆ\r?¿:z=˜+ƒo~ïñ¥I¯ãXÇéîîûÔ¡õj½@³äZ2¥§§ç¥#Ï/,‹*ì_=œ8uæG‹§Ïüùí»ÿóİ¿}é_}áK‹Apt1xe!xy!ÈÁ=<±”uf…Çï‰#Ğzµ^ iº2eit?Z¬ğ¯Çƒ#¯\'O½±@>Ÿ¿å«_ÿü¿zè…37u_8œ\\J=úxÙg;ª$ƒ$Ğzµ^ Iº2eitÿ¿bI§‚Ã¯?;,ÁÉ\'ú/¹¤«ë­]]İù“-¥Ü»ï±²ÏvTII õj½@“tdÊÒèşJ±¢É=òZğÂÑàÅ×ƒ½ûtÑE½õ¬³Ï}Ç;G>ö¦dğÈ£ûÊ>ÛQ%$Ö«õMÒ)K£{¾Xá__;¼\\83ãuøõ`Ï#³—­[ÿÎß¸ğ=|ı_¾ùz;¼zâÌ˜~¤ì³U’Ah½Z/Ğ$İ™p‹‹?/V4à…áà•…àç\'ƒ.<ôäÜºßıÀ•ğ‡/~V^,GNa6xàáGÊ>ÛQ%$Ö«õMÒ)e£ûà•›øÁ3{Ÿœ™}pßìƒ=ıĞÿëáïïÉgïß÷ôÿìûáƒıpúñ§Ÿ|æ\'·ıÃÎ^óÑØGhÉ “i½Z/Ğ$İ™²”^.­ë®ûD=kúã|¤ìƒU’Ah½Z/Ğ$İ™²”¨FK2H­Wëš¤; SÎ$ƒS/©FK2H­Wëš¤; S–’ÁaÕhII õj½@“tdÊR2xQ5Z’Ah½Z/Ğ$İ™²”~¦\Z-É 	´^­h’î€LYJóªÑ’’@ëÕz&éÈÉ@2H/­Wëš¤; S–’ÁOÛTõ¬¼şXiÉâû•/ÚzhqŸ:ÚÛzëi¢Z/vº2%áNz¡åUvü²wÊ–¬üà²+©T¶†Êí+É 	Úq¢ëi¥Z/º2ei}~\rª¸¡²-–¾¿Òê\\a•í8œ¸Omi½Ñ:‹.—Gµ^ ;tdÊÒØù\\Ë«tµÑëâ;e[,‰\r¬sÙWn¢MG­9îSG[Zoi[ª\\¿ÖdŒî€LY\Z;µ£¢5×_ö×²Åª¬d%•k(ûiû-ZyÜ§¶´Ş²ÖUO#×zôÒ)KÃçOZ[+å?)n®Ê_\\¸tùz^—­¼åÇUvŒqŸ:ÚÕz«4T­Èİ™Òî´Êø]ııš¢l™š«’²g\rríêZµÖ¤…î€LY\ZDÜòªÅ\\ÜPÙWz¿òÍe_×_sU-?À¸Omi½¥Íu…HªõÙ¡; SÎ¢§çZ^¥«^ß)Ûbå’e?]qÆ«âS+m¢M÷©£-­·¬uU6`­Èİ™²4ˆ>Ûò*]môºdD_fÉâûeT®§ÊëÒ\r-»¶Ö`Ü§¶´ŞšMTë²Dw@¦,?jyUÌNıh¥\r¨òNñı•ÖPöÁÒwÚqtÑšã>u´¥õV¶ÆÒ5ÛªÖ¤‹î€LY\Z;¶¼JW½^iCõïÀ²Kş\"\r,³ÑÒµã\0ã>u´¥õV6İe›Ödƒî€LY\Z;¨FK2H­Wëš¤; S–’Á3ªÑ’’@ëÕz&éÈÉ@2H/­Wëš¤; SÂîôé§U£%$Ö«õMÒ)KÉà‡ªÑ’’@ëÕz&éÈ”¥d0«\Z-É 	´^­h’î€LYJ?P–dZ¯Ö4Iw@¦tww¿öÚc§O_5T’Ah½Z/Ğ$İ™Ò××÷ì³ß=}z¿j¨$ƒ$Ğzµ^ Iº2ehhè;»wœRõ×f¿İßß÷©CëÕzfÉµdÊØØØèèŸÆ>Ö¦«şyü¹\\.îS‡Ö«õÍ’kÉ”¹¹¹şş÷½VØ{:xRÕYÃÃWMNNÆ}êĞzµ^ Yr-Y³íŒ­§ƒ\'T=õï722÷Iã\rZ¯Ö4C®%k\n…Âàà¦§ÿ5WÕk~~Oÿûòùâ>i¼AëÕzfÈµdĞìììÀÀ%³³“A0£Vª0„jjêŸâ>]¼‰Ö«õ«&×’MÓÓÓa8û³ xLUÖää—ûûû¦¦ş1îÅ2´^­X¹–Ì*\n££¹ÁÁõãã=?OìSùüOLüíÈÈæááÁğuÜ§ˆi½Z/°\nr-755•Ëı¿ŞŞ_ï¢««§çWGF>†ƒ¸OuÑzKi½@Mr-dÜÖ­[§§§ãŞš5;;÷.\0$\\æ¡7\n…¸÷…U\Zˆ{/\0’N®…£0İšóKÿ[P?¹:ÅÌÌÌÀÀ@pãŞêMÓºŒ Nr-t¥ß²İ¸qãüü|ÜûB5¦iVA®…3==İßß?>>÷°<Ó´\0«#×B\'Êçó¹\\nxx8|÷¾ğK¦iš!×Bçšœœìïïß½{wÜ;Â¦iš$×BG›ŸŸ\Z\ZÊår&cdš %äZ 7SÓ´\0­\"×g§ãŞ‘bš µäZà—<¾aÍŒ‡_µiZ€’k7	“–Ç7´Uñšf7£\0h-¹(=¾!Ì^ßĞrãããîAĞ&r-°¼0{y|C™¦h7¹XQôø†‘‘Q¬I¦iÖ€\\Ô011!“­šiZ€5#×µEáì†npGª†˜¦XKr-P¯íÛ·{‚@LÓ¬=¹h@ô(mÛ¶Å½#‰fš r-Ğ°0×z|Ã²LÓÄH®V#z|Ã;âŞ‘ñv\0ñ’kU*\n[·nõø†À\rÑ\0’A®š=¾abb\"î‰X\0$„\\4+ŸÏŒŒtàE¥Ñ4­k€„kÖè´›\0˜¦H\Z¹h™èn\0£££Ù~|ƒiZ€d’kËğãLÓ$–\\´Şìììàà`pãŞ‘V2Mpr-Ğ…Batt43o0M|r-ĞFÑãRMÓ¤…\\´W¡PHo.4M\"r-°¢€˜¢»€yš\Z@êÈµÀ\ZÉçóaLLÅã¢Ë\'vìØ÷\0Ğ\0¹XSÑãÊîö•¯|åÆo\\ã=	·XyAÆ~İ\r £ÈµÀZ›ŸŸƒcññ\rù|¾««ë‚.ß©çãá§&\'\'·mÛ6<<<øCCCá;aN­ó²ë®».Üè9çœSú‰hš6c·\'èr-èñ\r333·ÜrK×’0ÚV¿D!Œ³a–íª%º„ Ê3Ï~øáhÉË.»,\\g`š äZ 6aˆüßù³Î:+J™^xá§>õ©e—œšš\nCgÍD[ª¯¯/Ê¬•ŞûŞ÷FËœwŞy—^zé½÷Şkš äZ 6_üâËÂè»Şõ®™™™Òe¢Û„UÎÈ~æ3±k×÷î¹¯X7İô¹Í›7—-9<<\\6|ë­·–-sî¹ç>òÈ#k{è\0´\\Äæª«®úµ_ûµÒˆyöÙg¯_¿¾¸@t%né×_ÿé\\X\\©¿täk·İÖÛÛ[:q[ÌÊaÆíîî.ËµW\\qÅÈÈHLß\0-#×±‰åfĞşşşßÿıßÇ;ŞqÎ9çüæoşft›‚¹¹¹0’ÓçĞĞPõD[–noºésÅÏ†Y6ºÃğğğ¹ç{ùå—¿ÿıï¿à‚Âí†›êÉ\0 ×1óëÔÔÔ¶mÛÂŒ&Î0†¾ç=ï)\n¥3µ_¸ùæ:miİ~û¿ggÃüZœı=ÿüó×¯_n1Ün¸õ¸¿\0\0ZC®’%LŸCCCï{ßûŠ¡v×®;Vj£Úûè¾h=üàİô\0 ÃäZ q&\'\'›œ©-­;ïº»¸¶íÛ·Ç}p\0´‹\\$ÎÀÀ@ñšÚ&CmTÅkm{{{«Ü×€T“kd™˜˜(ş²×¡çoI®=zìxñ	7ÜpCÜ‡@[Èµ@²oéÕ’PÕ7vîŒVÛÓÓ÷!Ğr- ù|¾x-l«&k‹uñÅoÜ5ljj*î õäZ AÆÇÇ£è988ØÚPÖµ×~\"ZùèèhÜ\n@ëÉµ@‚lİºµU·A¨¬{÷Ü­|ãÆq(\0­\'×	244EÏ;ïº»å¹öÀÁƒÅg4Ä} \0´\\$Hñ_{İ×ò\\Vñâİ¸€ÖÓ¹	R¼×ƒÛ‘k‹ëû@h=; ıııQî|jÿşväÚîîn¹ «tî@‚o^{ïûZj¿tÄ-l2L®$—ËEÑók·İÖò\\ûÔşıÑÊâ>P\0ZO®dll,Š[¶|¼å¹ö7ß­|dd$î õäZ Afgg‹—\n=v¼µ¹vÓ¦MÑÊÇÇÇã>P\0ZO®’¥¯ï§İîÚuGCmñæµ¡|>÷QĞzr-,£££Qú\\·n]§l?|õÕÑj‡‡‡ã>D\0ÚB®’%ŸÏï2Ûª§é>ğàCÅÉÚ™™™¸€¶kÄÙ¾}{”A»»»›¿á×ƒ‹AyëÖ­q\0í\"×I´qãÆ(‰†‘´™g=v|İºuÅUÍÏÏÇ}d\0´‹\\$ÑÜÜ\\OOO1î}tß*Bí¡ç/†Úîîî©©©¸€6’k„\nchñ¢Ø0•6ú¤†|¨xùAhûöíq\0í%×É599Yœµîpç]w×3MûÑk®é*!Ôt¹H´ÙÙÙşşşÒ\Z¦Û›núÜSû÷WÆÙ¯İvÛæÍ›Kc±Ë\0:„\\$]>Ÿß¶m[www×r6lØ°ÒFFFü¢@çktj.—[6¿V\Zœ{—XSr-&…Babb\"¸eY¶¯¯oxxxÇæh:“\\\0@Èµ\0\0d\\\0@Èµ\0\0d\\\0@Èµ\0\0dÁÿÇié‘<â|\0\0\0\0IEND®B`‚',0),('2503',1,'LeaveProcess.bpmn','2501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask1\" name=\"å‘˜å·¥è¯·å‡ç”³è¯·\" activiti:candidateGroups=\"å‘˜å·¥\"></userTask>\n    <userTask id=\"usertask2\" name=\"éƒ¨é•¿å®¡æ‰¹\" activiti:candidateGroups=\"éƒ¨é•¿\"></userTask>\n    <userTask id=\"usertask3\" name=\"é™¢é•¿å®¡æ‰¹\" activiti:candidateGroups=\"é™¢é•¿\"></userTask>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"å°äºæˆ–ç­‰äº7å¤©\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days<=7}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"å¤§äº7å¤©\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days>7}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"usertask2\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"240.0\" y=\"260.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"474.0\" y=\"260.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"387.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"407.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"407.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"407.0\" y=\"230.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"292.0\" y=\"260.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"312.0\" y=\"230.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"407.0\" y=\"230.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"526.0\" y=\"260.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"439.0\" y=\"230.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"292.0\" y=\"315.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"526.0\" y=\"315.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','45001',19),('schema.history','create(5.20.0.1)',1),('schema.version','5.20.0.1',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10002','myProcess:1:2504','10001','10001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:39:45','2017-08-01 19:39:45',25,''),('10005','myProcess:1:2504','10001','10001','usertask1','10006',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 19:39:45',NULL,NULL,''),('10010','myProcess:1:2504','10009','10009','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:40:57','2017-08-01 19:40:57',3,''),('10013','myProcess:1:2504','10009','10009','usertask1','10014',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 19:40:57','2017-08-01 19:40:58',1067,''),('10016','myProcess:1:2504','10009','10009','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:40:58','2017-08-01 19:40:58',3,''),('10017','myProcess:1:2504','10009','10009','usertask3','10018',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-01 19:40:58','2017-08-01 22:47:41',11203899,''),('12502','myProcess:1:2504','12501','12501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:41:49','2017-08-01 19:41:49',26,''),('12505','myProcess:1:2504','12501','12501','usertask1','12506',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 19:41:49','2017-08-01 19:41:50',1074,''),('12508','myProcess:1:2504','12501','12501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:41:50','2017-08-01 19:41:50',33,''),('12509','myProcess:1:2504','12501','12501','usertask3','12510',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-01 19:41:50','2017-08-01 22:47:54',11164233,''),('15002','myProcess:1:2504','15001','15001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:43:28','2017-08-01 19:43:28',15,''),('15005','myProcess:1:2504','15001','15001','usertask1','15006',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 19:43:28','2017-08-01 19:43:29',1086,''),('15008','myProcess:1:2504','15001','15001','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:43:29','2017-08-01 19:43:29',15,''),('15009','myProcess:1:2504','15001','15001','usertask3','15010',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-01 19:43:29','2017-08-01 22:48:01',11072662,''),('15013','myProcess:1:2504','15012','15012','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:54:22','2017-08-01 19:54:22',3,''),('15016','myProcess:1:2504','15012','15012','usertask1','15017',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 19:54:22','2017-08-01 19:54:22',675,''),('15019','myProcess:1:2504','15012','15012','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:54:22','2017-08-01 19:54:22',3,''),('15020','myProcess:1:2504','15012','15012','usertask2','15021',NULL,'éƒ¨é•¿å®¡æ‰¹','userTask',NULL,'2017-08-01 19:54:22','2017-08-01 22:58:06',11024311,''),('17502','myProcess:1:2504','17501','17501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 20:06:08','2017-08-01 20:06:09',30,''),('17505','myProcess:1:2504','17501','17501','usertask1','17506',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 20:06:09','2017-08-01 20:06:09',336,''),('17508','myProcess:1:2504','17501','17501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 20:06:09','2017-08-01 20:06:09',31,''),('17509','myProcess:1:2504','17501','17501','usertask3','17510',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-01 20:06:09','2017-08-01 22:30:38',8669352,''),('20002','myProcess:1:2504','17501','17501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:30:38','2017-08-01 22:30:38',1,''),('22502','myProcess:1:2504','10009','10009','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:47:41','2017-08-01 22:47:41',1,''),('22504','myProcess:1:2504','12501','12501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:47:54','2017-08-01 22:47:54',0,''),('22506','myProcess:1:2504','15001','15001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:48:01','2017-08-01 22:48:01',0,''),('27501','myProcess:1:2504','15012','15012','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:58:06','2017-08-01 22:58:06',0,''),('30002','myProcess:1:2504','30001','30001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 19:36:49','2017-08-02 19:36:49',25,''),('30005','myProcess:1:2504','30001','30001','usertask1','30006',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 19:36:49','2017-08-02 19:36:49',898,''),('30008','myProcess:1:2504','30001','30001','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 19:36:49','2017-08-02 19:36:49',31,''),('30009','myProcess:1:2504','30001','30001','usertask2','30010',NULL,'éƒ¨é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 19:36:49','2017-08-02 19:41:51',302288,''),('30013','myProcess:1:2504','30012','30012','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 19:36:52','2017-08-02 19:36:52',3,''),('30016','myProcess:1:2504','30012','30012','usertask1','30017',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 19:36:52','2017-08-02 19:36:52',299,''),('30019','myProcess:1:2504','30012','30012','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 19:36:52','2017-08-02 19:36:52',3,''),('30020','myProcess:1:2504','30012','30012','usertask3','30021',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 19:36:52','2017-08-02 19:39:25',153356,''),('30024','myProcess:1:2504','30012','30012','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 19:39:25','2017-08-02 19:39:25',0,''),('32502','myProcess:1:2504','30001','30001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 19:41:51','2017-08-02 19:41:51',0,''),('35002','myProcess:1:2504','35001','35001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:20:14','2017-08-02 20:20:14',16,''),('35005','myProcess:1:2504','35001','35001','usertask1','35006',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:20:14','2017-08-02 20:20:15',1311,''),('35008','myProcess:1:2504','35001','35001','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:20:15','2017-08-02 20:20:15',19,''),('35009','myProcess:1:2504','35001','35001','usertask3','35010',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:20:15','2017-08-02 20:21:40',85570,''),('35013','myProcess:1:2504','35012','35012','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:20:17','2017-08-02 20:20:17',4,''),('35016','myProcess:1:2504','35012','35012','usertask1','35017',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:20:17','2017-08-02 20:20:17',455,''),('35019','myProcess:1:2504','35012','35012','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:20:17','2017-08-02 20:20:17',3,''),('35020','myProcess:1:2504','35012','35012','usertask2','35021',NULL,'éƒ¨é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:20:17','2017-08-02 20:22:33',136555,''),('35025','myProcess:1:2504','35001','35001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:21:40','2017-08-02 20:21:40',0,''),('35028','myProcess:1:2504','35012','35012','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:22:33','2017-08-02 20:22:33',0,''),('35031','myProcess:1:2504','35029','35029','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:29:48','2017-08-02 20:29:48',3,''),('35034','myProcess:1:2504','35029','35029','usertask1','35035',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:29:48','2017-08-02 20:29:49',1507,''),('35037','myProcess:1:2504','35029','35029','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:29:49','2017-08-02 20:29:49',3,''),('35038','myProcess:1:2504','35029','35029','usertask3','35039',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:29:49','2017-08-02 20:30:47',58524,''),('35042','myProcess:1:2504','35041','35041','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:29:53','2017-08-02 20:29:53',6,''),('35045','myProcess:1:2504','35041','35041','usertask1','35046',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:29:53','2017-08-02 20:29:53',749,''),('35048','myProcess:1:2504','35041','35041','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:29:53','2017-08-02 20:29:53',2,''),('35049','myProcess:1:2504','35041','35041','usertask2','35050',NULL,'éƒ¨é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:29:53','2017-08-02 20:38:04',491050,''),('35053','myProcess:1:2504','35052','35052','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:29:55','2017-08-02 20:29:55',3,''),('35056','myProcess:1:2504','35052','35052','usertask1','35057',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:29:55','2017-08-02 20:29:55',759,''),('35059','myProcess:1:2504','35052','35052','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:29:55','2017-08-02 20:29:55',6,''),('35060','myProcess:1:2504','35052','35052','usertask3','35061',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:29:55','2017-08-02 20:45:18',923496,''),('35065','myProcess:1:2504','35029','35029','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:30:47','2017-08-02 20:30:47',0,''),('35068','myProcess:1:2504','35041','35041','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:38:04','2017-08-02 20:38:04',0,''),('35071','myProcess:1:2504','35052','35052','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:45:18','2017-08-02 20:45:18',0,''),('35074','myProcess:1:2504','35072','35072','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:47:39','2017-08-02 20:47:39',4,''),('35077','myProcess:1:2504','35072','35072','usertask1','35078',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:47:39','2017-08-02 20:47:39',750,''),('35080','myProcess:1:2504','35072','35072','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:47:39','2017-08-02 20:47:39',2,''),('35081','myProcess:1:2504','35072','35072','usertask2','35082',NULL,'éƒ¨é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:47:39','2017-08-02 20:48:00',21773,''),('35086','myProcess:1:2504','35072','35072','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:48:00','2017-08-02 20:48:00',0,''),('35089','myProcess:1:2504','35087','35087','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:51:55','2017-08-02 20:51:55',4,''),('35092','myProcess:1:2504','35087','35087','usertask1','35093',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:51:55','2017-08-02 20:51:56',1023,''),('35095','myProcess:1:2504','35087','35087','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:51:56','2017-08-02 20:51:56',5,''),('35096','myProcess:1:2504','35087','35087','usertask3','35097',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:51:56','2017-08-02 20:52:32',36358,''),('35100','myProcess:1:2504','35099','35099','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:51:57','2017-08-02 20:51:57',3,''),('35103','myProcess:1:2504','35099','35099','usertask1','35104',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:51:58','2017-08-02 20:51:58',129,''),('35106','myProcess:1:2504','35099','35099','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:51:58','2017-08-02 20:51:58',1,''),('35107','myProcess:1:2504','35099','35099','usertask3','35108',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:51:58','2017-08-02 21:02:17',619203,''),('35112','myProcess:1:2504','35110','35110','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:51:59','2017-08-02 20:51:59',2,''),('35115','myProcess:1:2504','35110','35110','usertask1','35116',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:51:59','2017-08-02 20:51:59',737,''),('35118','myProcess:1:2504','35110','35110','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:51:59','2017-08-02 20:51:59',2,''),('35119','myProcess:1:2504','35110','35110','usertask3','35120',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:51:59','2017-08-02 21:06:46',887904,''),('35124','myProcess:1:2504','35122','35122','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:52:01','2017-08-02 20:52:01',36,''),('35127','myProcess:1:2504','35122','35122','usertask1','35128',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 20:52:01','2017-08-02 20:52:01',235,''),('35130','myProcess:1:2504','35122','35122','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:52:01','2017-08-02 20:52:01',2,''),('35131','myProcess:1:2504','35122','35122','usertask3','35132',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 20:52:01','2017-08-02 21:00:14',493322,''),('35136','myProcess:1:2504','35087','35087','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:52:32','2017-08-02 20:52:32',1,''),('35139','myProcess:1:2504','35122','35122','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 21:00:14','2017-08-02 21:00:14',0,''),('35142','myProcess:1:2504','35099','35099','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 21:02:17','2017-08-02 21:02:17',0,''),('35144','myProcess:1:2504','35110','35110','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 21:06:46','2017-08-02 21:06:46',1,''),('37502','myProcess:1:2504','37501','37501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 21:20:07','2017-08-02 21:20:07',17,''),('37505','myProcess:1:2504','37501','37501','usertask1','37506',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-02 21:20:07','2017-08-02 21:20:08',1347,''),('37508','myProcess:1:2504','37501','37501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 21:20:08','2017-08-02 21:20:08',24,''),('37509','myProcess:1:2504','37501','37501','usertask3','37510',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-02 21:20:08','2017-08-02 22:08:26',2898066,''),('40003','myProcess:1:2504','37501','37501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 22:08:26','2017-08-02 22:08:26',2,''),('42502','myProcess:1:2504','42501','42501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-03 21:36:26','2017-08-03 21:36:26',42,''),('42505','myProcess:1:2504','42501','42501','usertask1','42506',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-03 21:36:26','2017-08-03 21:36:27',1140,''),('42508','myProcess:1:2504','42501','42501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-03 21:36:27','2017-08-03 21:36:27',19,''),('42509','myProcess:1:2504','42501','42501','usertask3','42510',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-03 21:36:27','2017-08-03 21:37:25',58265,''),('42513','myProcess:1:2504','42512','42512','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29',8,''),('42516','myProcess:1:2504','42512','42512','usertask1','42517',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29',661,''),('42519','myProcess:1:2504','42512','42512','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29',3,''),('42520','myProcess:1:2504','42512','42512','usertask3','42521',NULL,'é™¢é•¿å®¡æ‰¹','userTask',NULL,'2017-08-03 21:36:29',NULL,NULL,''),('42525','myProcess:1:2504','42501','42501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-03 21:37:25','2017-08-03 21:37:25',0,''),('5002','myProcess:1:2504','5001','5001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:35:07','2017-08-01 19:35:07',16,''),('5004','myProcess:1:2504','5001','5001','usertask1','5005',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 19:35:07',NULL,NULL,''),('7502','myProcess:1:2504','7501','7501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:37:28','2017-08-01 19:37:28',20,''),('7504','myProcess:1:2504','7501','7501','usertask1','7505',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask',NULL,'2017-08-01 19:37:28',NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('20001','comment','2017-08-01 22:30:37',NULL,'17510','17501','AddComment','è¿™ä¸æ˜¯ç†ç”±ï¼','è¿™ä¸æ˜¯ç†ç”±ï¼'),('22501','comment','2017-08-01 22:47:41',NULL,'10018','10009','AddComment','å¯¹ä¸èµ·ï¼Œæ²¡æœ‰ç†ç”±å“¦','å¯¹ä¸èµ·ï¼Œæ²¡æœ‰ç†ç”±å“¦'),('22503','comment','2017-08-01 22:47:54',NULL,'12510','12501','AddComment','å¯¹ä¸èµ·ï¼Œæ²¡æœ‰ç†ç”±å“¦','å¯¹ä¸èµ·ï¼Œæ²¡æœ‰ç†ç”±å“¦'),('22505','comment','2017-08-01 22:48:01',NULL,'15010','15001','AddComment','å¯¹ä¸èµ·ï¼Œæ²¡æœ‰ç†ç”±å“¦','å¯¹ä¸èµ·ï¼Œæ²¡æœ‰ç†ç”±å“¦'),('30023','comment','2017-08-02 19:39:25',NULL,'30021','30012','AddComment','æ‰¹å‡†äº†ï¼','æ‰¹å‡†äº†ï¼'),('32501','comment','2017-08-02 19:41:50',NULL,'30010','30001','AddComment','å¥½çš„ï¼ŒåŠ æ²¹ï¼Œå°ä¼™å­1','å¥½çš„ï¼ŒåŠ æ²¹ï¼Œå°ä¼™å­1'),('35023','comment','2017-08-02 20:21:40','èµµè‹±ç”·ã€é™¢é•¿ã€‘','35010','35001','AddComment','å¯ä»¥ï¼Œé”»ç‚¼èº«ä½“ï¼Œå»å§ï¼','å¯ä»¥ï¼Œé”»ç‚¼èº«ä½“ï¼Œå»å§ï¼'),('35026','comment','2017-08-02 20:22:33','ç§‹æ°´ã€éƒ¨é•¿ã€‘','35021','35012','AddComment','å¯ä»¥ï¼Œé©¬è·¯æ€æ‰‹ï¼ŒåŠ æ²¹1','å¯ä»¥ï¼Œé©¬è·¯æ€æ‰‹ï¼ŒåŠ æ²¹1'),('35063','comment','2017-08-02 20:30:47','èµµè‹±ç”·ã€é™¢é•¿ã€‘','35039','35029','AddComment','æ³¨æ„èº«ä½“ï¼','æ³¨æ„èº«ä½“ï¼'),('35066','comment','2017-08-02 20:38:03','ç§‹æ°´ã€éƒ¨é•¿ã€‘','35050','35041','AddComment','å»å§','å»å§'),('35069','comment','2017-08-02 20:45:18','èµµè‹±ç”·ã€é™¢é•¿ã€‘','35061','35052','AddComment','ç©å»å§ï¼Œå°ä¼™å­!','ç©å»å§ï¼Œå°ä¼™å­!'),('35084','comment','2017-08-02 20:48:00','ç§‹æ°´ã€éƒ¨é•¿ã€‘','35082','35072','AddComment','æ»š!','æ»š!'),('35134','comment','2017-08-02 20:52:32','èµµè‹±ç”·ã€é™¢é•¿ã€‘','35097','35087','AddComment','æµ‹è¯•01','æµ‹è¯•01'),('35137','comment','2017-08-02 21:00:14','èµµè‹±ç”·ã€é™¢é•¿ã€‘','35132','35122','AddComment','æµ‹è¯•06','æµ‹è¯•06'),('35140','comment','2017-08-02 21:02:17','èµµè‹±ç”·ã€é™¢é•¿ã€‘','35108','35099','AddComment','æµ‹è¯•02','æµ‹è¯•02'),('35143','comment','2017-08-02 21:06:46','èµµè‹±ç”·ã€é™¢é•¿ã€‘','35120','35110','AddComment','æµ‹è¯•05','æµ‹è¯•05'),('40001','comment','2017-08-02 22:08:25','èµµè‹±ç”·ã€é™¢é•¿ã€‘','37510','37501','AddComment','æµ‹è¯•07','æµ‹è¯•07'),('42523','comment','2017-08-03 21:37:25','èµµè‹±ç”·ã€é™¢é•¿ã€‘','42510','42501','AddComment','æœ•å‡†äº†ï¼','æœ•å‡†äº†ï¼');

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10007','å‘˜å·¥','candidate',NULL,'10006',NULL),('10015','å‘˜å·¥','candidate',NULL,'10014',NULL),('10019','é™¢é•¿','candidate',NULL,'10018',NULL),('12507','å‘˜å·¥','candidate',NULL,'12506',NULL),('12511','é™¢é•¿','candidate',NULL,'12510',NULL),('15007','å‘˜å·¥','candidate',NULL,'15006',NULL),('15011','é™¢é•¿','candidate',NULL,'15010',NULL),('15018','å‘˜å·¥','candidate',NULL,'15017',NULL),('15022','éƒ¨é•¿','candidate',NULL,'15021',NULL),('17507','å‘˜å·¥','candidate',NULL,'17506',NULL),('17511','é™¢é•¿','candidate',NULL,'17510',NULL),('30007','å‘˜å·¥','candidate',NULL,'30006',NULL),('30011','éƒ¨é•¿','candidate',NULL,'30010',NULL),('30018','å‘˜å·¥','candidate',NULL,'30017',NULL),('30022','é™¢é•¿','candidate',NULL,'30021',NULL),('35007','å‘˜å·¥','candidate',NULL,'35006',NULL),('35011','é™¢é•¿','candidate',NULL,'35010',NULL),('35018','å‘˜å·¥','candidate',NULL,'35017',NULL),('35022','éƒ¨é•¿','candidate',NULL,'35021',NULL),('35024',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35001'),('35027',NULL,'participant','ç§‹æ°´ã€éƒ¨é•¿ã€‘',NULL,'35012'),('35030',NULL,'starter','ç§‹æ°´ã€éƒ¨é•¿ã€‘',NULL,'35029'),('35036','å‘˜å·¥','candidate',NULL,'35035',NULL),('35040','é™¢é•¿','candidate',NULL,'35039',NULL),('35047','å‘˜å·¥','candidate',NULL,'35046',NULL),('35051','éƒ¨é•¿','candidate',NULL,'35050',NULL),('35058','å‘˜å·¥','candidate',NULL,'35057',NULL),('35062','é™¢é•¿','candidate',NULL,'35061',NULL),('35064',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35029'),('35067',NULL,'participant','ç§‹æ°´ã€éƒ¨é•¿ã€‘',NULL,'35041'),('35070',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35052'),('35073',NULL,'starter','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35072'),('35079','å‘˜å·¥','candidate',NULL,'35078',NULL),('35083','éƒ¨é•¿','candidate',NULL,'35082',NULL),('35085',NULL,'participant','ç§‹æ°´ã€éƒ¨é•¿ã€‘',NULL,'35072'),('35088',NULL,'starter','ç§‹æ°´ã€éƒ¨é•¿ã€‘',NULL,'35087'),('35094','å‘˜å·¥','candidate',NULL,'35093',NULL),('35098','é™¢é•¿','candidate',NULL,'35097',NULL),('35105','å‘˜å·¥','candidate',NULL,'35104',NULL),('35109','é™¢é•¿','candidate',NULL,'35108',NULL),('35111',NULL,'starter','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35110'),('35117','å‘˜å·¥','candidate',NULL,'35116',NULL),('35121','é™¢é•¿','candidate',NULL,'35120',NULL),('35123',NULL,'starter','ç§‹æ°´ã€éƒ¨é•¿ã€‘',NULL,'35122'),('35129','å‘˜å·¥','candidate',NULL,'35128',NULL),('35133','é™¢é•¿','candidate',NULL,'35132',NULL),('35135',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35087'),('35138',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35122'),('35141',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'35099'),('37507','å‘˜å·¥','candidate',NULL,'37506',NULL),('37511','é™¢é•¿','candidate',NULL,'37510',NULL),('40002',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'37501'),('42507','å‘˜å·¥','candidate',NULL,'42506',NULL),('42511','é™¢é•¿','candidate',NULL,'42510',NULL),('42518','å‘˜å·¥','candidate',NULL,'42517',NULL),('42522','é™¢é•¿','candidate',NULL,'42521',NULL),('42524',NULL,'participant','èµµè‹±ç”·ã€é™¢é•¿ã€‘',NULL,'42501'),('5006','å‘˜å·¥','candidate',NULL,'5005',NULL),('7506','å‘˜å·¥','candidate',NULL,'7505',NULL);

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('10001','10001',NULL,'myProcess:1:2504','2017-08-01 19:39:45',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL),('10009','10009',NULL,'myProcess:1:2504','2017-08-01 19:40:57','2017-08-01 22:47:41',11204904,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('12501','12501',NULL,'myProcess:1:2504','2017-08-01 19:41:49','2017-08-01 22:47:54',11165235,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('15001','15001',NULL,'myProcess:1:2504','2017-08-01 19:43:28','2017-08-01 22:48:01',11073667,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('15012','15012',NULL,'myProcess:1:2504','2017-08-01 19:54:22','2017-08-01 22:58:06',11024382,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('17501','17501',NULL,'myProcess:1:2504','2017-08-01 20:06:08','2017-08-01 22:30:38',8670358,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('30001','30001',NULL,'myProcess:1:2504','2017-08-02 19:36:49','2017-08-02 19:41:51',302296,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('30012','30012',NULL,'myProcess:1:2504','2017-08-02 19:36:52','2017-08-02 19:39:25',153360,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35001','35001',NULL,'myProcess:1:2504','2017-08-02 20:20:14','2017-08-02 20:21:40',86573,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35012','35012',NULL,'myProcess:1:2504','2017-08-02 20:20:17','2017-08-02 20:22:33',136558,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35029','35029',NULL,'myProcess:1:2504','2017-08-02 20:29:48','2017-08-02 20:30:47',59526,'ç§‹æ°´ã€éƒ¨é•¿ã€‘','startevent1','endevent1',NULL,NULL,'',NULL),('35041','35041',NULL,'myProcess:1:2504','2017-08-02 20:29:53','2017-08-02 20:38:04',491054,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35052','35052',NULL,'myProcess:1:2504','2017-08-02 20:29:55','2017-08-02 20:45:18',923497,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35072','35072',NULL,'myProcess:1:2504','2017-08-02 20:47:39','2017-08-02 20:48:00',21775,'èµµè‹±ç”·ã€é™¢é•¿ã€‘','startevent1','endevent1',NULL,NULL,'',NULL),('35087','35087',NULL,'myProcess:1:2504','2017-08-02 20:51:55','2017-08-02 20:52:32',37360,'ç§‹æ°´ã€éƒ¨é•¿ã€‘','startevent1','endevent1',NULL,NULL,'',NULL),('35099','35099',NULL,'myProcess:1:2504','2017-08-02 20:51:57','2017-08-02 21:02:17',620211,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35110','35110',NULL,'myProcess:1:2504','2017-08-02 20:51:59','2017-08-02 21:06:46',887914,'èµµè‹±ç”·ã€é™¢é•¿ã€‘','startevent1','endevent1',NULL,NULL,'',NULL),('35122','35122',NULL,'myProcess:1:2504','2017-08-02 20:52:01','2017-08-02 21:00:14',493324,'ç§‹æ°´ã€éƒ¨é•¿ã€‘','startevent1','endevent1',NULL,NULL,'',NULL),('37501','37501',NULL,'myProcess:1:2504','2017-08-02 21:20:07','2017-08-02 22:08:26',2899072,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('42501','42501',NULL,'myProcess:1:2504','2017-08-03 21:36:26','2017-08-03 21:37:25',59267,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('42512','42512',NULL,'myProcess:1:2504','2017-08-03 21:36:29',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL),('5001','5001',NULL,'myProcess:1:2504','2017-08-01 19:35:07',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL),('7501','7501',NULL,'myProcess:1:2504','2017-08-01 19:37:28',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10006','myProcess:1:2504','usertask1','10001','10001','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 19:39:45',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('10014','myProcess:1:2504','usertask1','10009','10009','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 19:40:57',NULL,'2017-08-01 19:40:58',1060,'completed',50,NULL,NULL,NULL,''),('10018','myProcess:1:2504','usertask3','10009','10009','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-01 19:40:58',NULL,'2017-08-01 22:47:41',11203863,'completed',50,NULL,NULL,NULL,''),('12506','myProcess:1:2504','usertask1','12501','12501','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 19:41:49',NULL,'2017-08-01 19:41:50',1059,'completed',50,NULL,NULL,NULL,''),('12510','myProcess:1:2504','usertask3','12501','12501','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-01 19:41:50',NULL,'2017-08-01 22:47:54',11164227,'completed',50,NULL,NULL,NULL,''),('15006','myProcess:1:2504','usertask1','15001','15001','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 19:43:28',NULL,'2017-08-01 19:43:29',1077,'completed',50,NULL,NULL,NULL,''),('15010','myProcess:1:2504','usertask3','15001','15001','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-01 19:43:29',NULL,'2017-08-01 22:48:01',11072656,'completed',50,NULL,NULL,NULL,''),('15017','myProcess:1:2504','usertask1','15012','15012','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 19:54:22',NULL,'2017-08-01 19:54:22',668,'completed',50,NULL,NULL,NULL,''),('15021','myProcess:1:2504','usertask2','15012','15012','éƒ¨é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-01 19:54:22',NULL,'2017-08-01 22:58:06',11024268,'completed',50,NULL,NULL,NULL,''),('17506','myProcess:1:2504','usertask1','17501','17501','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 20:06:09',NULL,'2017-08-01 20:06:09',333,'completed',50,NULL,NULL,NULL,''),('17510','myProcess:1:2504','usertask3','17501','17501','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-01 20:06:09',NULL,'2017-08-01 22:30:38',8669300,'completed',50,NULL,NULL,NULL,''),('30006','myProcess:1:2504','usertask1','30001','30001','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 19:36:49',NULL,'2017-08-02 19:36:49',882,'completed',50,NULL,NULL,NULL,''),('30010','myProcess:1:2504','usertask2','30001','30001','éƒ¨é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 19:36:49',NULL,'2017-08-02 19:41:51',302247,'completed',50,NULL,NULL,NULL,''),('30017','myProcess:1:2504','usertask1','30012','30012','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 19:36:52',NULL,'2017-08-02 19:36:52',291,'completed',50,NULL,NULL,NULL,''),('30021','myProcess:1:2504','usertask3','30012','30012','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 19:36:52',NULL,'2017-08-02 19:39:25',153334,'completed',50,NULL,NULL,NULL,''),('35006','myProcess:1:2504','usertask1','35001','35001','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:20:14',NULL,'2017-08-02 20:20:15',1296,'completed',50,NULL,NULL,NULL,''),('35010','myProcess:1:2504','usertask3','35001','35001','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:20:15',NULL,'2017-08-02 20:21:40',85560,'completed',50,NULL,NULL,NULL,''),('35017','myProcess:1:2504','usertask1','35012','35012','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:20:17',NULL,'2017-08-02 20:20:17',448,'completed',50,NULL,NULL,NULL,''),('35021','myProcess:1:2504','usertask2','35012','35012','éƒ¨é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:20:17',NULL,'2017-08-02 20:22:33',136551,'completed',50,NULL,NULL,NULL,''),('35035','myProcess:1:2504','usertask1','35029','35029','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:29:48',NULL,'2017-08-02 20:29:49',1503,'completed',50,NULL,NULL,NULL,''),('35039','myProcess:1:2504','usertask3','35029','35029','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:29:49',NULL,'2017-08-02 20:30:47',58515,'completed',50,NULL,NULL,NULL,''),('35046','myProcess:1:2504','usertask1','35041','35041','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:29:53',NULL,'2017-08-02 20:29:53',743,'completed',50,NULL,NULL,NULL,''),('35050','myProcess:1:2504','usertask2','35041','35041','éƒ¨é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:29:53',NULL,'2017-08-02 20:38:04',491038,'completed',50,NULL,NULL,NULL,''),('35057','myProcess:1:2504','usertask1','35052','35052','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:29:55',NULL,'2017-08-02 20:29:55',755,'completed',50,NULL,NULL,NULL,''),('35061','myProcess:1:2504','usertask3','35052','35052','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:29:55',NULL,'2017-08-02 20:45:18',923493,'completed',50,NULL,NULL,NULL,''),('35078','myProcess:1:2504','usertask1','35072','35072','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:47:39',NULL,'2017-08-02 20:47:39',740,'completed',50,NULL,NULL,NULL,''),('35082','myProcess:1:2504','usertask2','35072','35072','éƒ¨é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:47:39',NULL,'2017-08-02 20:48:00',21768,'completed',50,NULL,NULL,NULL,''),('35093','myProcess:1:2504','usertask1','35087','35087','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:51:55',NULL,'2017-08-02 20:51:56',1017,'completed',50,NULL,NULL,NULL,''),('35097','myProcess:1:2504','usertask3','35087','35087','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:51:56',NULL,'2017-08-02 20:52:32',36356,'completed',50,NULL,NULL,NULL,''),('35104','myProcess:1:2504','usertask1','35099','35099','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:51:58',NULL,'2017-08-02 20:51:58',124,'completed',50,NULL,NULL,NULL,''),('35108','myProcess:1:2504','usertask3','35099','35099','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:51:58',NULL,'2017-08-02 21:02:17',619196,'completed',50,NULL,NULL,NULL,''),('35116','myProcess:1:2504','usertask1','35110','35110','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:51:59',NULL,'2017-08-02 20:51:59',734,'completed',50,NULL,NULL,NULL,''),('35120','myProcess:1:2504','usertask3','35110','35110','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:51:59',NULL,'2017-08-02 21:06:46',887895,'completed',50,NULL,NULL,NULL,''),('35128','myProcess:1:2504','usertask1','35122','35122','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 20:52:01',NULL,'2017-08-02 20:52:01',231,'completed',50,NULL,NULL,NULL,''),('35132','myProcess:1:2504','usertask3','35122','35122','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 20:52:01',NULL,'2017-08-02 21:00:14',493320,'completed',50,NULL,NULL,NULL,''),('37506','myProcess:1:2504','usertask1','37501','37501','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-02 21:20:07',NULL,'2017-08-02 21:20:08',1330,'completed',50,NULL,NULL,NULL,''),('37510','myProcess:1:2504','usertask3','37501','37501','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-02 21:20:08',NULL,'2017-08-02 22:08:26',2898030,'completed',50,NULL,NULL,NULL,''),('42506','myProcess:1:2504','usertask1','42501','42501','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-03 21:36:26',NULL,'2017-08-03 21:36:27',1128,'completed',50,NULL,NULL,NULL,''),('42510','myProcess:1:2504','usertask3','42501','42501','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-03 21:36:27',NULL,'2017-08-03 21:37:25',58258,'completed',50,NULL,NULL,NULL,''),('42517','myProcess:1:2504','usertask1','42512','42512','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-03 21:36:29',NULL,'2017-08-03 21:36:29',651,'completed',50,NULL,NULL,NULL,''),('42521','myProcess:1:2504','usertask3','42512','42512','é™¢é•¿å®¡æ‰¹',NULL,NULL,NULL,NULL,'2017-08-03 21:36:29',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('5005','myProcess:1:2504','usertask1','5001','5001','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 19:35:07',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('7505','myProcess:1:2504','usertask1','7501','7501','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2017-08-01 19:37:28',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10003','10001','10001',NULL,'days','null',0,NULL,NULL,NULL,NULL,NULL,'2017-08-01 19:39:45','2017-08-01 19:39:45'),('10004','10001','10001',NULL,'leaveId','integer',0,NULL,NULL,4,'4',NULL,'2017-08-01 19:39:45','2017-08-01 19:39:45'),('10011','10009','10009',NULL,'days','integer',1,NULL,NULL,12,'12',NULL,'2017-08-01 19:40:57','2017-08-01 22:47:41'),('10012','10009','10009',NULL,'leaveId','integer',1,NULL,NULL,4,'4',NULL,'2017-08-01 19:40:57','2017-08-01 22:47:41'),('12503','12501','12501',NULL,'days','integer',1,NULL,NULL,12,'12',NULL,'2017-08-01 19:41:49','2017-08-01 22:47:54'),('12504','12501','12501',NULL,'leaveId','integer',1,NULL,NULL,4,'4',NULL,'2017-08-01 19:41:49','2017-08-01 22:47:54'),('15003','15001','15001',NULL,'days','integer',1,NULL,NULL,12,'12',NULL,'2017-08-01 19:43:28','2017-08-01 22:48:01'),('15004','15001','15001',NULL,'leaveId','integer',1,NULL,NULL,4,'4',NULL,'2017-08-01 19:43:28','2017-08-01 22:48:01'),('15014','15012','15012',NULL,'days','integer',1,NULL,NULL,6,'6',NULL,'2017-08-01 19:54:22','2017-08-01 22:58:06'),('15015','15012','15012',NULL,'leaveId','integer',1,NULL,NULL,5,'5',NULL,'2017-08-01 19:54:22','2017-08-01 22:58:06'),('17503','17501','17501',NULL,'days','integer',1,NULL,NULL,8,'8',NULL,'2017-08-01 20:06:08','2017-08-01 22:30:38'),('17504','17501','17501',NULL,'leaveId','integer',1,NULL,NULL,6,'6',NULL,'2017-08-01 20:06:08','2017-08-01 22:30:38'),('30003','30001','30001',NULL,'days','integer',1,NULL,NULL,4,'4',NULL,'2017-08-02 19:36:49','2017-08-02 19:41:51'),('30004','30001','30001',NULL,'leaveId','integer',1,NULL,NULL,7,'7',NULL,'2017-08-02 19:36:49','2017-08-02 19:41:51'),('30014','30012','30012',NULL,'days','integer',1,NULL,NULL,8,'8',NULL,'2017-08-02 19:36:52','2017-08-02 19:39:25'),('30015','30012','30012',NULL,'leaveId','integer',1,NULL,NULL,8,'8',NULL,'2017-08-02 19:36:52','2017-08-02 19:39:25'),('35003','35001','35001',NULL,'days','integer',1,NULL,NULL,10,'10',NULL,'2017-08-02 20:20:14','2017-08-02 20:21:40'),('35004','35001','35001',NULL,'leaveId','integer',1,NULL,NULL,9,'9',NULL,'2017-08-02 20:20:14','2017-08-02 20:21:40'),('35014','35012','35012',NULL,'days','integer',1,NULL,NULL,5,'5',NULL,'2017-08-02 20:20:17','2017-08-02 20:22:33'),('35015','35012','35012',NULL,'leaveId','integer',1,NULL,NULL,10,'10',NULL,'2017-08-02 20:20:17','2017-08-02 20:22:33'),('35032','35029','35029',NULL,'days','integer',1,NULL,NULL,10,'10',NULL,'2017-08-02 20:29:48','2017-08-02 20:30:47'),('35033','35029','35029',NULL,'leaveId','integer',1,NULL,NULL,11,'11',NULL,'2017-08-02 20:29:48','2017-08-02 20:30:47'),('35043','35041','35041',NULL,'days','integer',1,NULL,NULL,4,'4',NULL,'2017-08-02 20:29:53','2017-08-02 20:38:04'),('35044','35041','35041',NULL,'leaveId','integer',1,NULL,NULL,12,'12',NULL,'2017-08-02 20:29:53','2017-08-02 20:38:04'),('35054','35052','35052',NULL,'days','integer',1,NULL,NULL,8,'8',NULL,'2017-08-02 20:29:55','2017-08-02 20:45:18'),('35055','35052','35052',NULL,'leaveId','integer',1,NULL,NULL,13,'13',NULL,'2017-08-02 20:29:55','2017-08-02 20:45:18'),('35075','35072','35072',NULL,'days','integer',1,NULL,NULL,4,'4',NULL,'2017-08-02 20:47:39','2017-08-02 20:48:00'),('35076','35072','35072',NULL,'leaveId','integer',1,NULL,NULL,14,'14',NULL,'2017-08-02 20:47:39','2017-08-02 20:48:00'),('35090','35087','35087',NULL,'days','integer',1,NULL,NULL,12,'12',NULL,'2017-08-02 20:51:55','2017-08-02 20:52:32'),('35091','35087','35087',NULL,'leaveId','integer',1,NULL,NULL,15,'15',NULL,'2017-08-02 20:51:55','2017-08-02 20:52:32'),('35101','35099','35099',NULL,'days','integer',1,NULL,NULL,9,'9',NULL,'2017-08-02 20:51:57','2017-08-02 21:02:17'),('35102','35099','35099',NULL,'leaveId','integer',1,NULL,NULL,16,'16',NULL,'2017-08-02 20:51:57','2017-08-02 21:02:17'),('35113','35110','35110',NULL,'days','integer',1,NULL,NULL,9,'9',NULL,'2017-08-02 20:51:59','2017-08-02 21:06:46'),('35114','35110','35110',NULL,'leaveId','integer',1,NULL,NULL,17,'17',NULL,'2017-08-02 20:51:59','2017-08-02 21:06:46'),('35125','35122','35122',NULL,'days','integer',1,NULL,NULL,9,'9',NULL,'2017-08-02 20:52:01','2017-08-02 21:00:14'),('35126','35122','35122',NULL,'leaveId','integer',1,NULL,NULL,18,'18',NULL,'2017-08-02 20:52:01','2017-08-02 21:00:14'),('37503','37501','37501',NULL,'days','integer',1,NULL,NULL,8,'8',NULL,'2017-08-02 21:20:07','2017-08-02 22:08:26'),('37504','37501','37501',NULL,'leaveId','integer',1,NULL,NULL,19,'19',NULL,'2017-08-02 21:20:07','2017-08-02 22:08:26'),('42503','42501','42501',NULL,'days','integer',1,NULL,NULL,8,'8',NULL,'2017-08-03 21:36:26','2017-08-03 21:37:25'),('42504','42501','42501',NULL,'leaveId','integer',1,NULL,NULL,21,'21',NULL,'2017-08-03 21:36:26','2017-08-03 21:37:25'),('42514','42512','42512',NULL,'days','integer',0,NULL,NULL,8,'8',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29'),('42515','42512','42512',NULL,'leaveId','integer',0,NULL,NULL,20,'20',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29'),('5003','5001','5001',NULL,'leaveId','integer',0,NULL,NULL,4,'4',NULL,'2017-08-01 19:35:07','2017-08-01 19:35:07'),('7503','7501','7501',NULL,'leaveId','integer',0,NULL,NULL,4,'4',NULL,'2017-08-01 19:37:28','2017-08-01 19:37:28');

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('å‘˜å·¥',NULL,'èŒå·¥',NULL),('éƒ¨é•¿',NULL,'ç®¡ç†å‘˜',NULL),('é™¢é•¿',NULL,'ç®¡ç†å‘˜',NULL);

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`) values ('äºŒå‚»å­','å‘˜å·¥'),('é˜¿é£å“¥','å‘˜å·¥'),('æ–‡è‰ºé’å¹´','éƒ¨é•¿'),('èŠ±æœ¨å…°','é™¢é•¿');

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('äºŒå‚»å­',NULL,'è‚–','çº¢','456@qq.com','77',NULL),('æ–‡è‰ºé’å¹´',NULL,'ç§‹','æ°´','123@qq.com','66',NULL),('èŠ±æœ¨å…°',NULL,'èµµ','è‹±ç”·','789@qq.com','88',NULL),('é˜¿é£å“¥',NULL,'å¼ ','å°é£','345@qq.com','66',NULL);

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('2501','LeaveFlow.zip',NULL,'','2017-07-30 10:11:28');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('myProcess:1:2504',1,'http://www.activiti.org/test','My process','myProcess',1,'2501','LeaveProcess.bpmn','LeaveProcess.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('10001',1,'10001',NULL,NULL,'myProcess:1:2504',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL),('42512',2,'42512',NULL,NULL,'myProcess:1:2504',NULL,'usertask3',1,0,1,0,1,2,'',NULL,NULL),('5001',1,'5001',NULL,NULL,'myProcess:1:2504',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL),('7501',1,'7501',NULL,NULL,'myProcess:1:2504',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10007',1,'å‘˜å·¥','candidate',NULL,'10006',NULL,NULL),('42522',1,'é™¢é•¿','candidate',NULL,'42521',NULL,NULL),('5006',1,'å‘˜å·¥','candidate',NULL,'5005',NULL,NULL),('7506',1,'å‘˜å·¥','candidate',NULL,'7505',NULL,NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10006',1,'10001','10001','myProcess:1:2504','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-08-01 19:39:45',NULL,NULL,1,'',NULL),('42521',1,'42512','42512','myProcess:1:2504','é™¢é•¿å®¡æ‰¹',NULL,NULL,'usertask3',NULL,NULL,NULL,50,'2017-08-03 21:36:29',NULL,NULL,1,'',NULL),('5005',1,'5001','5001','myProcess:1:2504','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-08-01 19:35:07',NULL,NULL,1,'',NULL),('7505',1,'7501','7501','myProcess:1:2504','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-08-01 19:37:28',NULL,NULL,1,'',NULL);

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10003',1,'null','days','10001','10001',NULL,NULL,NULL,NULL,NULL,NULL),('10004',1,'integer','leaveId','10001','10001',NULL,NULL,NULL,4,'4',NULL),('42514',1,'integer','days','42512','42512',NULL,NULL,NULL,8,'8',NULL),('42515',1,'integer','leaveId','42512','42512',NULL,NULL,NULL,20,'20',NULL),('5003',1,'integer','leaveId','5001','5001',NULL,NULL,NULL,4,'4',NULL),('7503',1,'integer','leaveId','7501','7501',NULL,NULL,NULL,4,'4',NULL);

/*Table structure for table `wzh_leave` */

DROP TABLE IF EXISTS `wzh_leave`;

CREATE TABLE `wzh_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_` varchar(255) DEFAULT NULL,
  `leavedate` date DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `leavereason` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `processinstanceid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `wzh_leave` */

insert  into `wzh_leave`(`id`,`id_`,`leavedate`,`days`,`leavereason`,`state`,`processinstanceid`) values (6,'äºŒå‚»å­','2017-08-01',8,'å­¦è½¦','å®¡æ ¸æœªé€šè¿‡','17501'),(7,'äºŒå‚»å­','2017-08-01',4,'ç›¸äº²','å®¡æ ¸æœªé€šè¿‡','30001'),(8,'äºŒå‚»å­','2017-08-01',8,'ç”Ÿå­©å­','å®¡æ ¸æœªé€šè¿‡','30012'),(9,'äºŒå‚»å­','2017-08-02',10,'æ‰“ç¯®çƒ','å®¡æ ¸æœªé€šè¿‡','35001'),(10,'äºŒå‚»å­','2017-08-02',5,'è€ƒé©¾ç…§','å®¡æ ¸æœªé€šè¿‡','35012'),(11,'äºŒå‚»å­','2017-08-02',10,'æ‹‰è‚šå­','å®¡æ ¸é€šè¿‡','35029'),(12,'äºŒå‚»å­','2017-08-02',4,'ä¸–ç•Œè¿™ä¹ˆå¤§ï¼Œæˆ‘æƒ³å»çœ‹çœ‹','å®¡æ ¸é€šè¿‡','35041'),(13,'äºŒå‚»å­','2017-08-02',8,'æˆ‘è¦ç©å‡ å¤©æ¸¸æˆ','å®¡æ ¸é€šè¿‡','35052'),(14,'äºŒå‚»å­','2017-08-02',4,'æ²¡æœ‰åŸå› ï¼','å®¡æ ¸æœªé€šè¿‡','35072'),(15,'äºŒå‚»å­','2017-08-02',12,'æµ‹è¯•01','å®¡æ ¸é€šè¿‡','35087'),(16,'äºŒå‚»å­','2017-08-02',9,'æµ‹è¯•02','å®¡æ ¸æœªé€šè¿‡','35099'),(17,'äºŒå‚»å­','2017-08-02',9,'æµ‹è¯•05','å®¡æ ¸é€šè¿‡','35110'),(18,'äºŒå‚»å­','2017-08-02',9,'æµ‹è¯•06','å®¡æ ¸æœªé€šè¿‡','35122'),(19,'äºŒå‚»å­','2017-08-02',8,'æµ‹è¯•07','å®¡æ ¸é€šè¿‡','37501'),(20,'äºŒå‚»å­','2017-08-02',8,'æµ‹è¯•08','å®¡æ ¸ä¸­','42512'),(21,'äºŒå‚»å­','2017-08-02',8,'æµ‹è¯•09','å®¡æ ¸é€šè¿‡','42501');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
