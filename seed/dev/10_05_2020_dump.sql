-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: heraut
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animals_type`
--

DROP TABLE IF EXISTS `animals_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `animals_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals_type`
--

LOCK TABLES `animals_type` WRITE;
/*!40000 ALTER TABLE `animals_type` DISABLE KEYS */;
INSERT INTO `animals_type` VALUES (1,'chien'),(2,'chat'),(3,'rongeur'),(4,'reptile'),(5,'oiseaux'),(6,'insectes');
/*!40000 ALTER TABLE `animals_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces`
--

DROP TABLE IF EXISTS `announces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `fare_per_day` decimal(19,2) DEFAULT NULL,
  `fare_per_hour` decimal(19,2) DEFAULT NULL,
  `fare_per_month` decimal(19,2) DEFAULT NULL,
  `street_address` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `picture` longblob,
  PRIMARY KEY (`id`),
  KEY `FKhrk61v9pg80cuogbbjiknubcb` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces`
--

LOCK TABLES `announces` WRITE;
/*!40000 ALTER TABLE `announces` DISABLE KEYS */;
INSERT INTO `announces` VALUES (1,_binary '','Paris','2020-01-27 08:08:27','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-04-25 16:28:52','db33d8b3-b138-4963-85d8-abea0a7cbcc3',1,_binary 'ÿ\Øÿ\á\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0ÿ\ì\0Ducky\0\0\0\0\0\0\0ÿ\á{http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"39DA2E0FD78FB37140990EC4B7FC096F\" xmpMM:DocumentID=\"xmp.did:37F196F4E7EB11E7979CF626567B9EB6\" xmpMM:InstanceID=\"xmp.iid:37F196F3E7EB11E7979CF626567B9EB6\" xmp:CreatorTool=\"Adobe Photoshop Lightroom 6.7 (Macintosh)\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:5c9b3fb6-ba6d-4074-9d87-8049929faea0\" stRef:documentID=\"xmp.did:5c9b3fb6-ba6d-4074-9d87-8049929faea0\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ÿ\í\0HPhotoshop 3.0\08BIM\0\0\0\0\0Z\0%G\0\0\0\08BIM%\0\0\0\0\0ü\á‰È·\Éx/4b4Xw\ëÿ\î\0Adobe\0dÀ\0\0\0ÿ\Û\0„\0\r\Z\Z\Z\Z#%\'%#//33//@@@@@@@@@@@@@@@\Z\Z&\Z\Z\Z\Z&0##0+.\'\'\'.+550055@@?@@@@@@@@@@@@ÿÀ\0\"\0ÿ\Ä\0®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQ\"aq2‘¡B±ÁR#\Ñb3ğ\ár‚$ñC’S¢²\Â\Òc\âs4DT\0\0\0\0!1AQaq‘¡\"ğ±2ÁB\Ñ\áñRb‚’rC\Â#3ÿ\Ú\0\0\0?\0\ã	\0Œú\Ç\Ãl•\rIPÔ¤’\Z¥2\Ø*\Z†¡ƒ2\n„j ’¤¨j0X&¢\Ô5i‚ Œ•4\áYœM) ™¾‡Nõ3BK¥I–®³‹G¶¶‘\Äqe€L3h`#T‹\Z¦Y\ÑG\0#	–iC$’\rF\0¯luI`H\áaØª¢`!fM$\n’£T•!AP‰$€$’ 0Ü’H†`iA$2T\0E1\â˜˜. \"h\È	ˆLc+iR2Ø®ó;¶²Ç¹Y­R8İ±z\ÉQ‚\ÃSF“fT¤`ŠDz€¬#-\Ô5\Z¡©d&\Ø@RTH*\nRTH*JP) ¬ˆ*9T²e¡*±\êJ‰$	¶\r²Ê’¢K´¯l›e•D“i^\Ù\n\Ë*M±#iV\Ù6\Ë6\ÉQ#i^\Ø\n\ËvÉ¶$m(\ÙI~\Ø6\Ë$\ÚPR)IyX6\Ë&vöI²^V\r±&v\Î8§\ÒV²\î#\ãFoN\r“AH\nK¸\Ï\Û3”ŠP\Í%\"”‰#¡ŸdR³F\Ø\nK$\Úg\Û&\Ó/\Û\Ù$m9€B€FS«d\Z’¡©I$*\Zƒ2J†J†¥$’%Bl‚X‰ k‚He‚7 ©b½i¤ˆ’+5”j\ÆÀ\Ë\Öc\Æf”3ª{8¹%,µe*eªg&MY`\"\ÂaG7$\Z‘\î‚#,µD­¸i2\ÍT FL›%CP\É!A&IHI$À\É\0%C$\0±\à€, CPˆ$¤¨d†¤\0€ˆjJ”	Pˆ%!SE©q[•8\"i3\rd]%5.k•‘:T\ãmE¨D•\rMˆµ,¨*$4(Ty\"D\Ô,1e“-RTj’ RTj’¢D	RTj‚R@•%F©*Y3Ô•\Z¡¨‘T• ©$°-AQ\êJ–D	P\Ôj’¤‘G©*Y$	RTj’¢D	Pm–T B°T² ©dW¶\r²Ê‚¢I{`\Û,¨*Y$\íƒl¶ \"$›JŠ\Å+.\")\ÉJJ\Å+/+¬I—R’°m—mƒl²M§@ÀN†%CRT5’T5%CR™’C%CPI$2C2CR\É•%B4\02¤\æ…2 *:f-“·Û‚\å¹j4­c¨\Örgª­\à¼Fi\Ìô&Œ±µŒ¨\"0‚2lt–‰R\Ëa›E‚0Š#	“a‚I 	$€ †\0d‚’A\0IPÁ\02I$C2\"0Š#‰\n	*\Z’\0Œ\"Ô²¤\"Y$	QKV*#3²\Äd©{-D«94PD‘\İj-M&sj²T5%J@I$5\0SF©*R@µ%F© \r@`ŒY*\Z’¥ µ%F©*	\Ô5\rCPX ¨õ@jJRT¤¨\Õ@jJRT¨*=IQ%*JRTH‚² ©mA¶$UPT´ˆµ,’¨*=IR\É J‚£\Ô B\"‘,¨*$VV\n–TK&`¬ˆ*XD \à\Z§s\Ê\Ø*\Z†¡©I ¨j\Z† Ì‚¡¨j\Z”’\n†¤¨j	$©*\Z† ’\n†J† ’HE‰*:#,€D*#…˜lôV£,µbNlôS \Â\"	b\Ì4wNB%«+Z¢a* \ZÆ¨B\ÌÉ¸\Å@–	†m!„0fM’C\0²I‰*’d(d’H’I !€H\Ñc	qF‘šA’	 $\"#ÁR\É ¬­\Ä(D¾ \"Ub:™Y|egI£ ™\Øk:Uœn T0\ÔÑj!©ˆ*YQH‰\r$5%JAd\" ‚Ô•\Z ©I\0©*\Z’ @*\Z†¤©\0¨*5IP©*5ARˆIQª\n@µ%F©*Q\Ô;c\rI%HJ’£Ô„D–¨RTI ¬ˆ¤KŠD©™h®¤¨\ÄAR’¨*=APH ¨õJH \"=APH ¨õK$ƒ€5 ªzO`¨j\Z† ’\n†¡¨j\È!©*\Z‚I*\Z’¡¨$‚¡¨v˜Á\"D1@Œ:¤`²6n´\î&ÁV=F2\Ù\ÑQIc€™l\ì‘` 0™f\Ğ\Â:ˆ KL3µGQ,Q‰`“gz¢@Œ\ÃgDˆ2C! \Ã\0d’H)*$0	haT’’\\†I\0„À †HRÀEŒ$eAÁ…$’C\0CRT\0T B!€\n€\Z)€S‘ffZ3[	C‰Ò¬\åtURCRMœRC$\0IP\É\0Z’£@D¤j\nRT¤¤¨\Õ%@jJRTHj\Z†¤©\0‚£T•\0Z’£T•©*\Z’ ¤¨\Õ%Dˆ•\Z¤©$°	$©*\0*\n\0ˆğH\ÊÈ‹R\Â\"Ô¦Z¤¨õ¥’@µG¨*$%AQ\ê\n–I\Ô ¨‘\Z†¡©\ë>d‚¡¨j\Z‚H*\Z’¡¨$’¡©\0$‰6(\Â\Æ	,\ËgJ\ĞP±‚\Ç,\ËgeA\Æ\Ûl;d“{\nÀŒm°$…R\rB I&\Ò\0€ÀI&’ – ˆµÅ™Öˆu\ÕTKN-š #	“d©$†@	!’PA$’@†d(d2I\0I$C ÁF‚\n\Ò2 C$i\n	!‚ I$2\É €I0@+a)È³A¬ƒIº³X3\Ôˆ*t“Œ$b ©I\0’ \Õ@J$Z’£T•¨j\Z† @µ$5%@€A\Z ¨\0’\Z’ ¤†¤¨’¡\Z°,•\Z¡¨’Àµ\ê ®HH‚S €Æ‚\0µz‹RZ’£T•,’¨A J‚£\Ô*JRT¢;PÔ•\rOaò$•\rIQ‚\ÜR8I4¨Øª²À°…Œ\Ãgj\ĞaÀI\'ER	\0Œ\ÃgTP\Ô5\rI& Z†£T5H\Õ\ÔIRCP\Ô I& Š%\è4•(—/I‹3¯\ZGq9³º\ZI“&†a!CRT’@IP\Ô5\0’@$’I\0C$T5$\0T2I\0\"0Q„1Di’„C ’\n!I\n	$’!‚‚ \0\Äh\æ)•e,°T°­ÀVnL4TD,\")šL\ÃBT•\Z ”	* RTj’ -CP\É\0%C$T2@¤¨d¨\n’¡©*	\0©*\Z’ °J†I$)$’HŠcE0\0`¨d©L‹%F¨*Q\Ô ¨ µ%CRTj%•%Dˆ*¨*XDR%’@•G\"\n‚A\çj	©,öIò$°,`±‚\È\Ù\Ñq¡B\Ç€™“¢¨\0Œ B\ËgEP@Œ’m 2i\"T5%CR\ZCP\Ô5P\Ô CQ%€T CPÔ’XÅˆ#‰–t¨\Â8ˆ#‰†tCC\0†d\Ùa\0 $ H!\ĞjJ’\0*\nPT¢’5AQ$•\rI C$ C ‚4\ÈTEŒ$*\Z\0†¦MC$’L’’I$@dÀ\É$’™E1\â™Ped@DcM#› ¨\Õ%K$*JŒD) %CR@••\0CRT\0I\rIPj’ \nRTa¨jH\0©*  ’$ÁQŒZ’£AP@IF‚P\n’\Z’ HjC ˆcJF!Tz‚¥$0±‚\Æ,ô\Éó\Õ@0	$Ò¨ F#$šH\0B5	$\Ò@!\Z™“i¡¨j\Z‰,\0j\Z†¤’À*0T`$’¤\n†¡¨jI5\Ô5\Z¤¨’Àa !PDq\Âe›CÀ@#	–tD5@#2Ê’¡¤†I ¤’¡’\0*H`€¤\É)\n9œ”\áñ3ròÉ•\Z\ì\í3\Ã\ãı\É\É\äó[//›—Œ:cı9Ûtò\röõ‹÷— \áö]€\ÑÏ•S\ìP\\ÿ\0>rù\âG~³­6ª\Ë\êrºv{Sj;w=xı\ç\Ì\ã¸G\Ë\Ç\æ\ãûŸ˜].t0şùö\ç ø™XõÖ—\ï\"|ô¹=!Y~‡ı£m—÷\Øún?İ\Ò\Ê±BM\nµ}\Õ:\\_söşPuk\è	\Úò0eØ¹Y±#ğ\í÷C\â£\ÒP\İÈº\Ö\Ş\Ğ}Q\Öó>\îÿ\0s\á®\Üg~¿C\Û)\'ü¿\á=÷¶s³òxØ›™pò]A|k\Ñ	\èº\Ï73¯ªµ—\Ö\â§~-\×Mªµ·St’\ru\ê<aĞ²C%J@I2@\ÉP\É)QH ¬ˆ*94™†…B#I\"-K*J–Iu²¢‘,‘¡a’¡‚ RTd¨j\É•\0CR@\É\0T2TF‚\0²Tj‚#IP‚5IR’©*5IQ\"©*4’¨h¦R\n`Z‚4•)@@\äñ\í\0€„ÀI%@Œ FI4µ\rF\Z‰*B\Ô5\rCRI¤P\Ô5\rI& \Z¤¨jI,¡\Z†¤’¤J’¡†\r@*\Z†J’D¡JŒIR €€ÀL¶m ˆD‰“C\Â(Œ$fa’\nI$’@H!‚PI$’$†H\É\Z\n‚;ÿ\0öfÁ\Â>’2=|mVxz$\Ïmÿ\0ûÿ\0ø<­N:|$ö\r{\Ç\Ş.xĞºtj¥/†üˆ£H`¹¸‚j.\0	!T\Ä\ĞRI\ì\' ö¿iZ\är@nOTN£ø·ğœ?#ò©ÁM\Ö\ËÆ½Y×‡‚Ü¶…¢Õ‡Ú½¯ô\áy\\‘ÿ\0uÇŒÿ\0\íƒĞŸó	\èx~\à0©õ	&s\Éû\â÷wŸ—šü\×w»\Ëù.\Èú”\ã­+¶«¬\ár‹¨ÉˆÚŸ©Còğ3§\Öyelù²lúxø¼\Ì\0\êg¨€\İø7½ª\Ó\Ík£g—òkT\ÓZ²CRI=§œ’¤$’I\0C%A¨*=IRÈ‚² –¥L$$A)bB ŒJ’¡¨e$$j‚ @$†¤\É@I$0@$\É €#A\É\0%C$\0TÁ\0C\0A\Z ©H,\Z¤¨$PTj’¥rÀ„ÀB\ë\'–\0 F\"K\0!5I& P!¨\Õ\rI%j\ZRTI`Z†¡¨jI,¡¨j\Z‚Àµ\Z¤¨jBÀ*\Z†¤©\nI!¨`°@!T\"Fi ‚“D†`¡\ÄQL•!¤’I ¤’H%!$’!$’H)$’H{ö\á\î~\×\È\á\Õ\äeß„øeO2„ù[q>Æ¦˜>Q\ï˜\İy˜+\è\Ìõò\'pü\ë\ÄõG>E¡\Í&i“.EÇ‰K»\ZUI–qø¹ùy},¹º±\èª<Xö\íøx8\ÈO>V“1\ZŸ‚ø,óş_\æSGò\äzWüNÿ\0øö\åsüi\ßü\nı·\Û‚¾£\ÓòˆÕº„ÒŸ\ÌÍ¤À`\ë>\'%ù,\ïw¹¿\Ö©JV‰VªX\ØÑ²0PB÷,\ÄÄ“f4£©3#œÌªŠÀ¾v\ÛZ¿›\à\á·-¡b«[v\'\'%h³–ôG«öø³d#\0®:ˆ\ÕG6J¶\É]”\åû\çyI*\ê43\Îû\0\Å\Ç—#…d\rWù˜\ê\ÄW`4üYFFrº¡¢¬:\Z\ë>¯kT«]$ğò·io±l0C;I2AE\"\n ‚\É’Ô\ÈPAQ €,†% „Aˆ¦X$†IH-IQ ‰\n’¡’\0µ%C$²HAQ¤¨\ÉPÔ•\0%CRT\0I\rIP$5%@¤¨d€-IQ¤‚@µ$2@Hd¨Ô••( ¨\Õ%A‚£A\0F‚ \à#:\É\ç€T F$’À*\Z†¡¨’À*\Z†¡©$°\n’£T5X¤¨\Õ%I\"RT5\rA`\rCRTP\Ô5\rI%a†J‚’I!C †CD†Hd„QHh2I$…\É\0I$¤2T5\0’I€C$\0Oûÿ\0·ó9¸9\É€¸+’µ|t=?\ìŸCœ¿~\áq²q[—‘?¿ˆ\Æ\à‘v~“\ã1\Ë~Jñ\İñµ[mÕ›\ã­-z«¦\Ô\é\äò\Ø0\à\ã\ãô° Æk©c\âÇ¹–\\%uø@k¤ø-»6\Ûm½[>²I(J¦eE,\æ€\êbfÏo\È~\0w\'ÀLx²d\äò« Qh‡\Ï\ã;pğ[‘ö¯Wş99wØ·­\Î\ä…QX\Ô\Ö<}Ù‰\Ú¥\îY±q†ªh½Yf\Z}\Õ\ÒlöTl8¹\\À¶\Øq\äu¾–\ÕüLÁ\Ã\Ê\Ë\ÈR§©°NuŸMV´ª­T#Æ¦ÖµYµWÜ¸œ5Ï›\ÔÀù2ze@/…ueS\Ûwy\í¸ù1eÁ.\ZôA@4\0\Òpqsö61\æl\Ù\0\àƒt\Ú|\ÇËƒ7¬®°v·ó+N¦n›¬\Çñg~!›9I$€H!’\0*\nC$A‚4R\nD\ZH µ%CRT¤ ¨\0©* @*\n\0I\rIPAa¨jJ€-IQªJ\É\rIP %CR@d†I@$’H\0‚4$ ‰\0’\"@²CRK Z’¡’	\Ô\ZH‘\0!\0\â\Âl\ãT5\0a\á€\Ô5\åñŒ5\é‚T•%€,À2!4€j†¤zF‰,¤¨jJ’K\0¨j\Z†¢D¤¨d‰,¤†¤\0’$,%C Œ ‰\n$†BF‹i †@$’\nI$’!’J€I!’\0 wDFw`¨¢Ù€\Ş\Ãı\Ë\Ëaxˆûú™\Ï]?\"ÿ\09›\İR®İR»¬«Ü«\Ür¦\ÇRqa_¯”\Ôò©\éö\Ï7“Ş½\Ç?$bò\åPdõwou:©\Ñ|D\Ïîœ¶\ã¿Šz¸Ô¶M\Ñ\İ~\İl/Z˜ø~ç™³]ø³e}\Ç6ómVñ\Üüg\nQò\Ó}\Üï˜¯D´;;Wûj¿ŒK\êÎ·#Øˆ‰\Ã0İ·K\ØøV.^NC\ìEôÁS\ê~À\"doS>W-t\è¿mk.6L‰³BÍ§\Ú&W\áp§£~¬\×şW$tCr°\çbY\á,\ã\ã®Yğd#\î©n3\ë¢\Zš|uh\àñ\Ùò\â$j\ÇaüVm¥D’\Ä­\Ú[;x°./`\çn\Zzd\në®¿\Æy…C¹B\êN‚§·÷l=§‘…¾ \ÒA3\Ép\Î\Î*À}8 çµ\Â-\Ñx5Ç£~OUÁ\ãûo+‹\ÇNB.l˜l\ãP	Ñ¨w\é:¸ñbÄ»1\"\ã^»P„Á\ínR)\ärñ\âL\Ùy6\Ş\ÃÂ§Ft¢ÁÇ‘\çP\É$“f	$’@$’I\0’I$\0I$’A2@Á)	$’A	$2@H\ĞTd¨\Õ$¤¨d€\n’¡’\0$†\0’ I$”€©* d€,‘ \0’ @²C$©*5AP Z’£T©*5Aû†:ˆ\Üı\ßG\ã¤\â¯$F?¬£[›\\\Ü}U‘‹~?/GX:\Ù9Î« ¿¶Qş\ãœô¡0®Toıe ¨+\Í\ÃúG~?\ä7<3W\ë3\×\Õ.\Ã\ÎÌ¢7Ç¤\ç¶eX={øM}\Î7Ö¦~\×5\\Å™\Ô~{2\Õ\ÑøJ1Fİ¸ßŒÅ¸ñ·¥³¥‘›.Y—Gƒ©ÜŠõ7.\í\ã8Â¼c(‡J>¡_•tù\Ä÷,m.Nn&5s†R\Ë\î\Ã\ãGZòZ4=º·C\Zp°òrc:56\â÷Ñ´œ\İ\Z\Ó\'J\İ=T	%I\ÈF\Zş¢ø\Ìd\Ş¨jWê¯Œ!ÇŒd¸¤¨»\×\ÆM\ã\Æ205IQwn„1A„\0\ĞÁ$2I$€0Á$¤’H)!’HÁ€’I$LÙ“‰ó\äúY>\íG>FÍ‘\İõg%õ\Ôÿ\0„\ìûÿ\0\'ËŠ¿ÿ\0S%}\Ê?œ\ákzş\ÉùWş\Õ\îz?Ÿ\İ\Ü\Å\Ï\áFˆô>d\èa\Òy\\ƒ/. ®Dÿ\0‹_„öó7\Ûñ\æóª+­Œô?=Œ\ãÁù/kl\Õ\çÑyxU\á¬Yns”ª±ò†\Ü\ì{™¿#œ¼¯X}	\åO™˜¿BØş;3……dü§¡¾?\Ê\ÍÀ\ã\às±\ìòXu\ŞM\í\nuGy\êû\Õjj\ä\åö¬¿’ğq\Æ<¸×³\äjş3½\í|LG³Z¶:Ê­\Øm:\ÂP\Ül	ŸŒ­d+¹Ó­U	\è1aEÄ«ŒR›\r\ß\ëü¯\è?’rC™û7b4\Õ}YENO\Û\\µ#&øÊ’¶›o\ï?|ıO\ébˆ\Ã[\Û÷¦¢¾Û–pù‹“z¹_\ÊZ«\Î?…\Õ\ËhÜ§°«j;6\'Ãƒ,½\Ğ\0\Íñ–À·´_Z\ë\ê´G«0r}ÿ\0Ù¸™[#–‰•\r:b\Çh31ı\İût_ş`Ó¯‘ÿ\0ı³\Í~\ê {÷ \r+\ïqaŸ(QÜºuø\ÍV³õ´µ£t/\ãUmO§/\î\ÏÛ‡ÿ\0ó\Ğ_õ\Åfş\'¸p9\Ê[‡\ÈÇœ¾›#\æ:Ï˜qñ*\Ñ,¥	¢\Ûu,zuüŸ\Ó\É\ï¿\í\\\Ó`Ã$aSÊ¤a.I\Êo©;(\ã7~=º91N]\Î\"¢A<¦\Ü\'?g\ä\æÏ•“\Ü\"eW\n\Ãv\à1»tÛ¯\á=>FF5É‰\Õ\Ãò›vÿ\09š‚\É$’RI ¸‚K‚\à‚KwA\Ôz‚42³™|`–X!l‘=Q\'ª £\É\Ô€H‚Vs§8–t’Ÿ\Ô	?P\"]\ÎyB)\å\ÑJ5I2~¨øEnKK’l±\åñœ\çä¿Œ¬òú¥\ÚM\Ş­,NA\å\ä^÷¿	v1¿ÁØ±&“‹ş\å—\Ä@}\×\'\Â62o]İˆ¥—\Æp»fñt¡ı\Ó;¨…\Æû‡¤Ş¾2Zø\Ï0}\Ã9ü\í}Ï”¿˜Ÿ˜H¯\àôšI¤ó§\Ş9#°„{\×\'úG\ß&\Ækwƒ\Ğ\é&3\Î7¼r\Ï@¢)÷~_\Ãî¬n=%,x\Ï2}ß™\â¿t\î¼\ãù—î¬nğzk2Xñcı×œ?:ı\Ğ»ó{¸û£k¼¢ÇŒ¾3ËŸw\æ\Î>Áı×™\ê~6±\'š¤#P$<”û%k\Â\ÎM§\Ê8\àò/¦“†\å\Ü\ï\ì:òñ/C¬±}Á{´ {~v\é§\Ù{nZ\ë¬MD_± {†?\êj\ë÷\ÌM\íù‡Kû£o\ÊGy~\ã\ë\ìkÄ®\ßaú¼g\Æbıq\ã÷Fıe[£(•\Ü}]«\ÈBtij\çóL¸™[¨\"^8yÔšË¹!ÿ\0´\Ò9Fôc.NKó\'\é4\Ğ\ëx\îYwù&\Ï\Ö3Ÿb\æc\Ğ\ÌC/ybn	š\Üû“oƒjò2¡¯”°srô&c\0\Ë\Ş6)ücş¯\'õL\ÊF\0.\ã;M#‘õ2\Õ\Î\ß\Õ2B@\Ü\Æ\Ôo\\\Ç\Æ\\¹	\ï0#~3,’\rŠòÀ\Ó2“.[‚—\Ñ8¤†I C$!€C!I$’@$\"D\0\Îg»ûÿ\0\ÚT®S\êòHµ\ã!óW‹Ÿ\Ê\'÷\î¶\ã;p½¹¶¸%ròjÍ\n\â\êû§‹É™™\É,\îm™µ$üL\ï\ÇÁ9¶n§ót¦_~†\Ïs÷~o3—“’\Ù[;)ˆUğQ*O~\ç\â\Õ\Ê\ç[\ék_õ-L$“¯³£\ì¾\Ş9#(¼8€ôg\ê\Èu“ò©øôâµ¯J\Âñ™õ7øö\æµ\Õk{Kø|\ŞH|8ò\æC²J\Ú\Õô\ÔKPzü\âE|ª\Õ\á\á?8\í-\Æ3¡ö\ÆEË‹O­A#¡\ï÷\ÄÁ\Éÿ\0nÎ¼’»…„\ÈH¶\ØO]\ß©\ËV\Èp\æ`j‰ò“şVøÃŸ©‰ñ\Øeu+~%¥\íK¦ş\Ñm]\Õk¹·\Ü=\Äa\É\Å(Ip·kTõ\ÜøùDÍ‡TeµÁ—\æ©ò\ßr\çd\Å\îğ\ä?\Û\\8\ÅÖ·\é…?ˆ£ö¼dõ±{o!‹·\'­\ê«t\İÿ\0Z\×\Ú\'\ÕX²\î</5k­Y\Ôı\Å\Í<.&\'B£\Z\ælm¼•¦q¿¹\Êö\Ü\Üñ3 É 96œ“VƒA \ÔV¾3¥û“‹‡¹qrAl9—P¶@õ0±R¿hiŸ\í~Ú¾Ó“..5È©\ê.]š\îCD\×Nó<¿“U<[f\ÕN\Óı\ã\ÚW.\è­\â»©\Ğ\ÄÜ·\ã¾Ô¶.G¡\ÉZa™\0±\ê\'\àg[OW\nd°K($¯K\ïSÍ¯\è\ÆN7)FAŒ\é°Ár¨\Ôu\Zy‡ŒÛƒ”=»\ê\æa\è©vÉ}\'\Z¯©\ê-x\Ş3<÷½\Õ\Z¬9\Ó\ÒQy¸kJ»)ŸÔc÷v@?p\ç×“ÿ\0ğ8<x\Ùò>C”…Q”¶\ß/‡I\Öı\îûóº\ê¹ŸJp•±®&boû‹\åjŸ²z\ël¯gô{mÿ\0*£½\Å\Æ‚J\Õvª\î\ÜA\èwt¿¶q½\å\ÆOq\äyh¥+‘ ~é¯ƒ\ÌÀ‡kd\Ä\Êk\\•¹@ğ&ss:f\æóm\ã#1V\Z\ÚŞ„Nü—N<\Ü\\m6\Ù\Ù\ÄŞŸ¶ñS.Liˆ\îg,@ó\0¯\ÃğŸk\æd\á{\Öp	¹Àr1e\Ê7d\ÇGóÒ¦~Rc\Å\Ç\âmÌ˜q¶<w“\"ú˜¨\Íğøø\Î>O|99X} }3“\Æg­\ÛÙ¼\Ù\ßOª¾‘\ĞN\ìğeª—[yÁõdbÈ¬E\0‘\àOhe\\SŒññúF\Óh£w\×\ã\Ş[!‚!‚\0 R\"iB£q\Z\å\ÚE @ƒ)\rq…‰qQ€‰b,\Â	\Õ €\ÈMÀhIb$@§¬5%\\5 F#¼¨j$@·\0\Æ\Z\"\04‰Ë…J\Ü Ç’W»]fŒˆ(\Ìmr;²ª¢\Ö*D­‚\Äø\Ê\Şüd\Şû—b\ì9TˆÊ«¬£&ğ,˜ò;5}²«[¹kØ±ù”\Ñ\"Ïû\Å8‘›şPÆ‡\Â7¾\ì›P\ç.+‡rQ|>\×*v\ïo#j#\ípŒkW¤oS\Zƒ\çKª\ÒMök\Z‘œV$õ0¦\n\ãu¸\İn\ì»Wd0LG\ÂOM„P\Ø@ĞŠŠr\âñ“}»±µvE…÷}=\ÄÕ´Ñ…øõö\î6®\Ä<}¤Y\ëÒŒ³ô«·¨³,$ˆ¿¸ÊR\\5Š>G1%Ø»ö\Ñl\r\Ç\æ#bP\Z G‰—\í\Ü\0>4eG\Ú÷6ş7\'iğ\Z\ÉT\í¸´t$8\ç+<Œi£¿\ã)oa÷%‡%…õª6O\Û|¦o>fc\âeØ»“{\ìt\Ñ}mq\ßl%2)¦B\Êsøş\Ù\îüm\Ê?+\0Dõq\0p5\ÒM¾Fÿ\0\ïPÀ| w?\Z\ìøñ5€º\à\ÎZûBdfR\Õd‘qq\Ô\n=£\ì/Zñ›ñ{z\àSŒ\Ó`\á®Â«ß¼¹s1k½%„€j\æ\ÑÁ)µø‘*\Ë\í­“T5Œ\å\ÔhL4*Á\Òö®Jå®¼v\Ã\Ëô\Êm7\ØĞ—83]\Ü`{3+p}À\èN\Ù~$\ä\á\Æq°\Ü{\Zš!¡	:KWMe8S.›¦\Ìh yªT\È\Ñ\Üvm>Y79\í6`±WIb¾Ş²´õiBo´©³^< \Í\Âsñ©f!)\rJe‚T¢X²h`†$’I\n`’\0d’œÿ\0{÷\\^\ÕÀ|\ÌÕŸ d\ã(Õ›!~KÔ™ĞŸ<ı\ß\ÍÍŸŞ³``UxÕ‹\ZŸ\n\Ü[ş\ë¹ÓŠŠÖ‡¢\Ë1\ÉgZ\ãWƒ‰‘‹9f\Ô÷=ef¡b%d\êg­\Ú5POŒõœk\Å\à`F\Z\í\ÃÅŸ\Ìg‘vd\ÇÙˆyÃ\ÔÊ£± >ZO‘ÿ\0¶\åq\ÇÆº»Yû©ô¿õôşv~~UC†Rº’zxGvòEiS\ã\ÔúNG2®ı¡ŠŠuş¥ÿ\0”©o›v3ô\ä\ëö?ø\Íj\ÅH t…ñ(Ö¯ô±ğšs§B«k÷\'¦\\|µú2¤Fõ\é÷‰\×ı·‘pğñr\ŞV\ÈÎ—I\åÆ·à£´\á\Â¸9°‹`F\ìgúYu\'7öö|«—\"‘\Å\İ\å\Èz­Vz¾\å­ø±?W\ë\ï^Ÿ¯\rµ¯\äONJ¿S\İ{\ÖC›i“)\ÆW¯ú€D×“\éû^^8Smë©¿‰©\ç±òy\'7®–v2\äj€­:OS\ÅÌ™Å¸\Ø\åC-«o\Ót\ß«\É\Ékÿ\0¹mö3\É4¥WJ¹÷<§’xùÕ˜o\ÄH%H±c\éjñY«÷(É‹ö÷=1ê“\Z\ã#¶<Œ,\á1òğ?\'7ÿ\0\í¹\å\Ûğ–ò9¿nû\'%\Î4\\Š:è¬³Ÿ\â\ÙÓ–µ}-ó\Ğ\×\ä-\Üm÷G¢\à\á\áò8\\<|„Ç—:qñ¿œÕ·n\áı\Ú?ÿ\0“ù?Y}Ë“\ìü?\Û\Ü\ÎYó0Ìœ…^§B¬/Ä®†{\\n™rc`ø\ÜF\Z‚ ‰õ­X\ÏG\'Î­§RG‘ı\í\í<>Õ‰¸\ØWCz~`‰\çfÅ‡›}1‚w\à{O¨şõÿ\0\ÆùOj¯cc-ı[€òüj\ç\ÉN¤“©½L\Ä\'\çQy9²`ı2f\'¯ö\ï³u_—\Â>c\ëœmœXÃ\ÓÆ¨Š.q\ë[\Z6ñ³\çs°°*:¹~\âfë†œ¿Ô¢_±ôo\ÙY\ØğK^eQ‘\ß~û\İ\ÓpFŸJøOK<o\ìk÷L²s²ƒƒ‡™6ún»_+_•¶ö\âz\Ïe#Õ…¢$\É ˆ*5IPˆ\ÂYP\0¤‰Kn&–X…,\ÊB€ZB\Äv—úr6- \ÎJ$Oia\Æ$ô\àóf(·S	\æ\å-¢\é:Y±\îZ˜\Î\0I_û‘U²¦Tşÿ\0ƒ¶\r÷M\ÇV½&\\şÚŒtc )û‹Û²]\ä\0 \é}\ë\Û\Ü\é•~ù\Í\å{7RBÑœôö•K\Ü5‚±y\ÜR¶}ò~»‹ıc\ï@{J\Ñ\Ø|1[\ÙT\ê]\Çı\ÆB\Ëõ¼jú\Ä_\ÕqÛ£\Ï\"¾Ëo›#ŸûŒ\Û6ş\Ög_“Èƒ\Ö;ca£L™u£8É>ş»7\ÌÜµ2g#Ss-2£]\ê|\Ñ]\Û1>o\á-p¬¥E\\M(29r/I1ü@ñ3ø\×\Û\"ñÚµ«ùÌ¶Ê’df£ ;‹´\áö\Ê98yAó‘qå®µ\ãË¶ |Ê´\Æ:ò+ª\éó•úZ\î\Ì\ìt,ø&\Ôiõ2¾3®“Qœ±~\èpMQdB7bl9Š\éö&0kOºsò6Lm¸~1[ÜŠ­°\Ôv¨—\ÑKVu­¯„©À=²sŞ˜uKğĞ‰f/|G¦4\ë\×ù\Ë\ì>\çM3*.«_ö\ÂyX€\Üü³\0÷\ÌLd\Ûö\Ìy½\ç\Êj¯\Â\äJİ‡\Ó\Ü\ëœ\Êúo\Ä£.2	Ò‡Y\Ãÿ\0|f`	do¬o÷\ì€\ì\Ó\Õme\Ùn\Ä\İ^\æ†öÿ\0pÏ\ÎF\0şV¦Dö\ït\ãeş\ÆB>\Z\×\ÜgWÿ\0­\ìÉ”„±=\×£&\Õñ#üe–º)\âû¯?‹i\ËÅ¸Ì·ü\'Gƒ\Ë^P,¿ı\'C÷D^·\çK\Ï\Ëü%øWSv%¯ˆ©z%\Ìu¡+<r\ÖT\ÕøKA»X\Å#7Lm\Óş;D	\"\âBÛˆñ\ë4c8U ~^ù\Û\à\"¯¤\Ç\Ê\ÅH\í\ÒtŸ°Ñ\é[bu?9r¥ô\ï,œŠE›\ì—\0·}0\Ö\Ê:©”\ä\å…a¸h{Ü¼m*Ù¡€ZCX\ä#Œ\Î7gYn ‘(U®’¢ŠÃ¤oP\î\n\Æ8QŞ\Ù*D“9ÀjÁ…17s5*^£.-f•Y—dg˜\á/¾\àŸ	b¤\Ö\Ó.\Å+ˆ\ËF=5–ª\Ôp²\Í\èÑ–¢T³h„Q\Z\ZB„C\0†$’I\nH`†\0d’H<\Î^\'+;Çˆ©­\ÍZ ø™ò¾g\'//——“˜\Ş\\\Ì]\Ï\Äö.“¿û\çù=\Ë^*Qÿ\0uü\Äı‹By’Ã¨\é=\\U\ÛYz\Ûö<ü¶›B\Ñ~\åe¼\Û{E\'\Ì\"¹\Öü:\Â\İ†\æBZ\rƒ^güEş\"z¬Í»8ğ\ZŸ¾y<¹œs\á‘O\ã=i×’|ø\ßû?ÿ\0¥ül}OÀşõF’× \é&£¶‘A\Ó\ãÒ§Ï­º¦‰-Â©‘½,µ_EnÁ»_\ÂT!š B¾7e+¡¦S\Ö\Ä\å`\Âps³pA$6~-™\Öÿ\0”\í¯¸dUÛ—f^\ß\ÜP\Ç\ï\ë./h÷,ƒi\áò‰\r‡‘Œi‹0ú[­Q\ï7Vœ\ÖRİŒ÷\è\ÌY=a¸\ìS\íYñ\á\ÊK©SEM}HOR³«—“—/!œ2¢\ß\Ôd\ÆI³<\Ö<\î=\Ë?—ô¼\ÜD¢\Ù^‡™ñ\İhz„ô<Ê¨¡\Ôr0·œ­\Ê¨)üD›oKl´\Ñ\Ê}ÿ\0\Ô\Ü\Ò\Õİ‹a¢¿yÆ¹¹i\Ê\0œyaO6=\rı\âsò¨h\É{}W\Ú,\í%A«„À\ÙOo\ÊJ·Ö™+U\È:h|W¬\à{£¾?a\ædf§\Ï\é\â\ÆO\æoP\äõ?·n^“¹ò}oÊ‰“‡\×^>Eh…O§\Ğ\Íî¼Œ¿¸s`l@qøs\è\áS\æq`ng®–§¯\çr\Ø?nƒ\Ä\Î\\X7ù­›@\Íüg\Ìx­\î	˜g,\Z–\'A=F|\äs}‹ı»•„c\å\ãÍ·-)TóXğm\Ú>·6(±\n§\Ì\àM\Ş&]»û×ºû¾%\ãó2úƒú˜Ö•|Õ·òşˆl„u¤\Ø1\Û\ĞõS224\à€	‡\Õö\ßY³•¡\ÖcR=W\ìŸe\Í\Ï\æ\'$©^·\å\Ëÿ\0\Üqô\â_\ç8\\.>!\Ê\Ç\ê\åU\ÂH\ŞûK?\éñŸ[öLO‡\Û\Ó.%E\'\Ñoo¦|\Ëõw\×Y—Œ2®\è\ß$’H	$2@\É\0Th \nDcÔ•\0M²¤¨%!\Û,©*C$¡ğ\Ü\ÜV)\Æ —\r\r 8\rÍ£„¬¤ƒ•ŸUT\áó°ò\í\Üõ„Kñº‹E1\æ\Øk5zE\ÔX©\İ\É\í\è\İ¥¸A‚œ\\¸i4û§76F\Æ\ß)\İ\Ë\Â\Éfs¹~\ŞÀ\ŞBœ¦\å³f£\â\ä\äñ±ğ„{x`K]‚öâ‚¬\ë\ã‹f\ç¸:\Æ8\ç¾\Í×¨™Ç¶\äº¤¸pœ.ª\ÆIE\È\ÜrUØ¸1óò1\ê!\É\Ã\ÜZJ—€ÀŠ\Ò%f\Ó\Ë]sFd\Ë\Ê#U5öˆ2û{±\Üt®ƒY[p\È]Í d˜ó\ÙE\İı±]‘Áa§\È\Å|N¢…GG\Â1\íĞŸ€¹¬v&{–a÷£ªƒöK\\ù\Z¶\Ğø\é2F4>\ë£øK0•eò¯˜÷¢;sG«˜‡\×\îğ\ãmBiò•ŒyC‹¿’ñˆ­³0ó™Å‚ªÂ„([c\Ğô¾¦M‹\ä?.W³¿\Ôg\İ_:—®|\'ı;\İØ€e–HEY8TN1\æ#ÂŒË›\Ù\Å|m^$ûgD\æ 6(\ßÕ®F÷«ş\ÖEP«\×\Äı‚U=ˆ\Î?/Ûœm^2}zŸ\ã(ÿ\0e\æ\Şò\Ş~\ßúNğ\æc\ÌAB4\é\Ò9õÃ6§òü%„9Ü~^3\î8W*\n{² _\Õñ¶c\ÉĞVYŸ&\\\ØÂœb\Ï\æZ&sù¼?Nƒ\ç,•j\Ç\Âsª«\ÃÁÑ¶´;xù\Ş\ÚÀX”€:¬Ñ‹\Üx*—eö=\'‘LŞ\é\á¹™+m\r½võı¢}\Ã\Ô?;‡•¿°\ÍC©%¼\\˜ö¾\ÌÛ¯\é­\Ï/\Ä\ç\ã\Æ\Í\ê\ã Õ¢tûgy2ûO#»gEôº™›U®\æ“Mt:\nÜ<\é¸ù\Ä6W\ÚAR:\Ø\"ûƒ\ÚU\æ\È\ë¡tRE|L\Õ\ËÏ‰pc\å\á\Æ\n@$“\'\Õ\ÕteJx¡I»Gx±Ÿ2°*\'œ\å{†_Ô¾\Ş1\Æ\è¤\Êi_w\å;L:h\Õÿ\0)½–1¹w;µÖ¬	R\í\à+¬Á\Ã÷B1ò{¨$N“\å\à+zmgÀ¤Ya£RdÒœ•Z[ş2\âÄ­\Ğ„\âföÿ\0WspùD8\ÕT÷L%}ğ0³_\0eJz¢7á¨0ªaP]öœL>\é“	•”•Ğ¡\êf£ûƒ\"=\\¨0¢&\è—YF.\ßD™\×UÀ¢rÿ\0ù¶ª\î/WÚ\Å?¹ı¤&\ïT\Ø\ê ~\é\×\ÎY\ìu\ê0\İx\\\Ì^¶  \ĞŞ”~74/+4\à’»‚ñ\ZT3\ãş¡÷\È9O\ç|†‹d•~§õ¾O\Ô\àş±÷À/†T¹ñ\Û\ÔO\êxnW\ê\ãş¡÷\ÅnW~¬Š>\Ñ\0¾ä™¿\Ü8_ı\äÿ\0\êŸ\î_¹x\\*L\ß\Ê*§\ÌÀ;ROß¹}Û‘mƒ\ÓÄƒµn?Œƒ\İ}û.\Ô‘w~`¢F\Ñaö=”«•\Ê\Ã\Ã\ãe\å\ç5‹\n—z\êk 3¤óù^öAQ\ÍRGr¢\ç/ß¹¾ç‹‹\É\å±õ]@\0C 5\âe\ã‹\ÙUu%\æµvƒ‡\Ì\æd\æs9ò\é—+¶Còcuöt”;®\Ê †¿¾&me^Ÿ\È\ÂÎ¬õ·ªøzh\Ñş¤¯(\ï\0qAO~†mFº%n+O“­Q\ÕVT1Ã”\Ê¸¯\ã=?6@\İÈ³ö\Ï\Ô\Î\æ~#\Z«b;ª²0#Z\ĞTùÿ\0›\Ã\ÉË³ewF\ï™\íü^Jq\îV{f@\r´\ë7€œŒ^û\Ç\è\Ê\Ë\âH¿\á5\ã÷nj(_Ÿ\Æ|\Û~?55\ãºÿ\0¤ö.N;iz¿sn\ïR«\"\"óxO\Ó2ÿ\0P–+\ão¥\Ô\ÌC\ëó5\ì\0‰\ÔkóŒ(w‡h?›ñ“lÚ[e^\ã\ÂovÀ¬ŒG¹p\Æş&OÏ‘\Ìp|Otø\é\Şiö.^\\øO\'\í\íl¸N‹‘N…Ó¸?úJ\×r0eò²U‡PGI\Ë\çó³ûW¼\ã\ç\â\Å\Ü\'\åv¡“mö¿=|ç¢‹\îWc\Í\é?Nµÿ\0•×»ûmü¿\Äö<\ìªFqÀoP¬|znùñ?ºy+”cÇ r¶FEúEv3»\È÷˜3?0«qò\î°KwB6Ö ô;\İy˜ù|ò\ÉC\Zg\Æ\á\ß\É÷g\éNZo\Zœ¹ùUxş\ß÷5ÿ\0>Nn6TËA8\È`\r‘c\Æw½\Ã\İxüü‹\ËÀk\Õ[ËhWÇhS#\n\â­u\Öy\í\ÆÀÿ\0œ½Ãª\r«»\0\ï\ßQ>—%e%=O¶·h\èY‘\ÔŞº\ÄÜ§BC_iP\ãù\Ê\äb¤uR>ô@6\Ò\Ôı¦t§\r£¢3nTŞ’köüX[™2YÀ\ìZg4zx/\ÌÏ®a¿I-v •\î/±Ÿ$\âû¯3\ê\Ø\Øiğ_:\ÏÙ¿wg\ä\ã«\Æ\ìoO)±\â†9x-	\×ê‰šs$şµ¶{e{®I\Æ¹x¤Ã”ùJ\ëş\è\â~†b|6O,£\Òv\ä{/\î\Ükc37kG\ŞeIû£›\Z\â# g¿\áM$ò§ß½\íĞ”ÃˆÀY™y>÷û\Ó%Tc?IE†{K’\ÄùşOuıÓ•AÇ\0&?÷/\Ü‰-“=÷\Ö_uñ&{L¹,O™7\î|F\0\ç\È	ñ\"]÷»·•ó1\ÍÀG\Ñ[\"(,\Ì\0I\ĞD^Wşœª\ß&xPÜ®RÛ–*\İw1£ \ág\Â=Lh¿!3¹\Z\Ú\ÏwúŒ^¢\ß\ÌD~o\r6dÀ°“ú€›³ _\r³š\Ø\Îò\ÛK©šY#MMt\à!¦Î—ÿ\0P•·½ûZ£9\ä%/Z\Ôı\Â|\Èe\æ—ß@\ì#ñı\ç‘\Äo>=\ïº\ÈaQ¤dú7÷³ò\Éy¹z«§\îicû\ç´\ã4ü¬jO@Z|\Ùıó7¨rúH›\ép)\ÄË›Œ¹2¥´©\"İ‹ÿ\0#\è-û“\Ùƒ–„øL‰û‡\Ú2P^B’z\rgÌ²{’¾Eq„)¼~\éw\ŞW–|\0\ÙĞ¯Q+V‚c¹ô&ı\Ñ\ì*HnZ¦ˆ\ïbşK\ì9\0\Û\Ë\Æo\ã<µq½»\İıW|AZú&‘\ìş\Ï\ÇÜ™1\è5¿ŒÃ¼a\êiVtjF\Ş\ï\í¥½tÄšœ¾g½û=‘ú„?÷NYö¿o\Èú\ã%O\ÒHÀöœaT\â[&H\Ş]ƒ\å÷\ßj\ÆÛƒ†®”nQ“÷/\0€@\'\ÃBe\Ç\Úı©]v¢›\Z#À\ÆÈŠE‘\ÒM\Õ\ìÊ«n\è\Çÿ\0\Éx·\å\Æ\å`¦>\Ü,\ÎU¸\Îc¶hN\Z½2\0Ÿ9\è·\à]Õ¤J\ì!€{‚”±ˆ–\î+¤S\ÍGÈ¸ñ/œ\"\Å\ÈU(\Ä+øƒ\Ö>.(|G.0Ğ“\ŞL*\É\Î\äb?\İ\Â@\í­Ê³{§e<ü^ğ\ï­=t\"s²c÷q\Õ\Z‡›UOª2\Û]À\Õú\æ\È\ìW\Zi4`ô\è¶\\fª\×J\ÖqW\'¹bcF\0õò\Ü+\î\äÓŒšÿ\0,®¯ V]N\Óú8qŒ¹S\ã\áü¦w÷ü8\Ûûxw|o¿\İ9\Ïî¼ª—=\èŠ„L\êXŠÄ w»…^\ë\æ»?‘£—\ï\Ì\ä8P‰\Ø^³~g\'1¶\ÈhşPtü\">t{\Ü\r@\ídIµZø0\íoR\Ä\ä\æ@UH\×\á	\çs6…\0\Z\ÊK)ƒ\äb–X\Ü\ÎY\Ô\äk/\'8mıO\Æ2+6”~t\ÂC941’C^\â_a_ˆ6PƒbŒĞ¾õ\Î™NKb(dü\Ã_&\ßôIqÔƒ,\'r¼ú‰—·¹sØ¡9œŒ`mr+¼‡3db\\’Ç¹0”`He£\ÓbzP\æ’Dlbhk¡€\Ñ\ïP…,5\ÖOLö”€\Z\n¿¶X[­DôX÷û£¯ª\è‘\0ec·#\Ã\ÂZœ\îJ‹™\Õ.\Â;o\å)\ì\Ç\ì3W†s>İ¦¼D®°TŸB¬œ¾NW\r“!%z&¼ñ\ÌLk‰J±[¢À^³¬Ÿ¶0dE|9‹\Ø\Ô\Æqs{g92”ô£A»Lî¥°X²-\ãr±‡eÍ…X±İ½ta7ñıÃ„\Ù\ÊIs\çR }““Û¹²Ì„3t\ï4cö`\Ì²Ñ«+U\îZ·\Øõü.O³»\ãÅ½NG \èL\àû\Î>R{†FRËŒšK\ÖÄ«²*é±J!Á¦oÉG\ê2\È4blL\Õ\Õ?÷É¿øœ¿\Ñû†El¬…\ëCT\Æ\Øy»¶¾,ª\å7¤õòo\ÄX·©Œ\êĞ‚\"‹;\0ršü\Æõ	¯»\áû~Y\ç[…\È\ên\×\Û:<?i\Ær.¬¯˜ju2µQro@l“Veø™6³‘\æJ×¡37\äoL\Z¥#\\œo²eD#†ÿ\0Ú«(:–ûO›‚³\â£¹\ÚÛ¿œ\íŸqÀ¸\×M4%¤\Ç\ÍÀ:‘©$TÄ¸ƒP¦D\Ë\í¸lŒqen¢ü¦g\Ë\íş;“~S\Ö_—:e#s†±\íŸ`ò:lÙ¹œö5‰9£]bdÁ\Z^F\Ü¥F\Ï\îr.ò\0ª¿ŒÏ”qX†~A\0\ë]¥U#f\Ö\âÅ—c³)­/¤œ¿zÆ¨?Kn\ãB\rˆY=¨\Ø[Í‘u©‡\Ó\È\ë·m\"Á\é7\êfm\Ğ\çv\Îú6sfC\É\äf: ~Q6/…‰|(1‘Õ‹ó3“Ÿ\İp\â\Ì}1\ë:šoK\èÿ\0\ê›[z#V¬Ô¼nS\Å\ß6pø\Æ_;W C¤Áƒ÷\Z\ãO/2\é(}\âZ?q8ó§·»\ß\æ-şU•×‘\éW\ì¸Ö¶^\æôö\ÄGú´n\Ã\Â[“ğd&¾•™¸Ÿ¹8Y‰œM\Ã\ÉZ3\ê‡ş\ê\Ó\í–dı\Å\í\ØWzgL\Û>š\Ş\æ=—uT\ÇÖœ5“LJxğÅ°pò?!\Æ\'*\Ã:j\Óló9¹\\C(\ädlv©m|½tšù>ã›?\'VsJ€\r¡Gaş[\é_39\Ù5Z\0š6¬I\ì\ã\ãt®\ç\Ï?\äy/É¾\Í,Ucü\Ã^R§\é\íö\Ê\r¡\Úu¡…²¸ \Ú\ĞVt¿\ãµ^˜k¹Rk^ 5Tcqğ7+/¢2*5…\Í#¢ß‰•\í,ê·©\Òşm\å7/\Úù}·/¥™150Ú¬µ`\İz·8Y\ä\ëTcÆo7n¢hT¡`\ÜÍ»\ÌY~µğ–®U\î´g^7TwVeŸ\ß	*û¶/¨.\Ğ×ˆ\êÿ\0P«\èz\Âtš÷1>˜=T}€\ëª3/È‘²\Ï÷J\ÎR5\İ÷\Ì\Ùñ\èÒ·ÀµŞ²›©°s9\ÉÓkü\Ô\ß\ÆX÷\Ï\ÅÕ‘şkGğ3ú‡\íü!3ƒğœ-\Ãø\Öÿ\0ê¯µNË›ö?û\Æ/Üœ\Ñ\×\n?\ÚD_t÷t\çñ\áÙ‘2°k\Z\èÂªrˆ\Î~£´|LlQºEø¼5j\Õ\ãu²\Ês)+üV¢\×M<<I¯“\î|F<^«„	\áZnø“(\å\æÇ“2”]©46(’ª,Ÿ™Q\Â¤˜ñù\ÅÁ\ÆÉ™õò­\êL\ê¸\ÚU¥k¢Zy9»©µ\íorc+A\Zyø\ß\æû<&Ğ©€­eoŒ¬²0¨½zñ…h\ã{a\ÛM\'zq*¹S8\Ú\í¯ö®\İ}\ÅõI¢lG]~2>wb7N\ĞY«i¼\Ú\é¥Ê€##u\"\È\0u\ÒiÙ¬taV¯´£J#\äCé¯˜p:ş¯€d\ä\á\Ã\Í\\n\Å\×&€-¸|[\Æs\Õ\Ømm\Æ¨;Şšø\Êü\Ør‚§Ì\å?3oC1-§ê¡r\Æ/y$‘ˆ§v´\è\×ğ˜_\ß=½\ë²{	½€÷`Ïˆõ\Í\Ç,Ÿõ(\Ş?„ñ#‡™€!\ÒÀ ÏŸ\ÉO­¹‰=\\Wú\ìw\Û\ßxyX¡;4±y<& ©\ë¬óm\Æ\Ì\r\ĞÎ§« :\\Ã«\îtV]\Ş~z\ãüvkSã¤‹\ïÜ´R¾S}\Úq?O“ZË¨ñ“ôœ\æS¹O„\Ö\ÕÔ’ú¬~ÿ\0\Í\ÙZùMx½\ã zy\Ô{‰\æ[‡\Î\Æl©#\àCú¤Ô©w\éWa¹÷=c\áá¾¥A>­FNÿ\0¦o¼òü~fEo\î–?g¡ö¾vGö\×\Ì{Ò¦Z4¬™©<BÀ¤\×\Çr½­{Üƒ2v…ø\Ê\İ5w®‚s6ia\Ã\ä\ne\Û^3+‚¤7¢V\í4\ã«\"\Ù\ì~‰E%W@|d‚œs\Ç\åb}\Üu_I•r¸<®V0QO[¼\ì(Ll\\°,~\épÊ„„J›Z¤ğy#\ì<²z¯\Ê/ÿ\0\åweû\'¬ÉƒF\ÜEnğ2ƒ\Å\ã© 9\İ\Ü\\\ŞûØ4o\æPK\ä\0„¯€g\Êm\03\Ñ 0\Ú\Ô:“0Ÿö\Ì\Í\é\ä4\Ä\Ö\æ¹ú«\Ó\Ô<LX¸Ï»)viU\ÙX†O—/\Úx¹I9\Ô5h/\Æf\Ç\Ä\Ä\Ú\ã\çf€\Òg\\š\Ğ\éJŒdeN—ÿ\0)V\î&RW![]|db96\í\å\ä^\á\Ğ\Ìù?nòzeŠ66‰w+Å™}·‡“\\yH®¥M\Î\ä{3\êa\Ì\ÌMõmhE\Ù\ÈÁœ\×$€;ÿ\0t|óew\\O®\Z€$\ĞQğš–´fa=QıŸ–®GÀ±ƒô\Ş\ïF\ÇÉ°ô\ÚIüœ|\ï‚òa.?1S®\âu@¨\Êô~”­G\ã\ßd6¯\'œo÷^¯“(\ìI2`^Z)Û—*\Ô\Şzœ˜F\Ï(\Ü\ÇZ?	‰ğbõKúg]v‚*ş\Óü$6ùg-y|À¢ó½ø‘,Oq\å%^\ë³/ü\ç@p\Ç%	R¸\ÚœÇ›\Ùy6öF\0ı@DÕ–ÇE1È¢ú\ècş±vyr&\ã\Ò\Ä\Ì=d[9Baÿ\0d\Çd@¡\ÔË\ä\ÏbÃ›>E,F*„\\xğ\ç¥É±v\Ò*û6\"i¹D/Mx\ã\Ù@%qò}A\à\ÄF\å\ÜGO·ğ÷S:š¥y8-\Ã\ÒÈº\rA®²\ßö\ÖT%Ï˜h °e\âbEBÏ°6Œ[\Æ7ù&\ß\'·ğ\íw\çA}z„¸{g·&¬\ê\İ\î\âc\àp\Ü…rW\Ç_\å37>\Â6\ë¯ü\\ªË»_dll<b\Ûq:Š\é\ÒZ\Ã\"\"\î¦S\Òsÿ\0\Û1\æ\Ğ,2¤V?Y\âóq…\Æ\êÔºŠ³ü£\é\îO«±\Ö\á¿h1\Æ\Èh©$\\\ÒøqF47æ½ºš\Ğ\çÏ› wc¸T©ï–ÄŒ¦]:\rjHRT\Ü\Z8¼N/#Ë§\Æş3S{\'	Wp\È[ş\á§\Îju\â\á¦Ó¾´4?S?!1d\Î\Ñùv\İ}³;›Ñ´‹µvL\Äün\ÆvúŒ°\ê\Û/ß‰±n\Æ,ø“<\nC>#§\æ:\Í!P \Ú¾–jşNÏ£aUuHÆ˜\èT5\r(K1af]ôÁjŒ\è¦<˜±\ÓaªgI^>^;+\é2Ö¤Ÿñ™\Ü\Ùa\Îlx±—ldv6:|´Š9\\M×‰\Ò<\Ş\"t2\çS€†eY¸”a\âû^\\nw*•2\'\ŞJı~Ù““’—±À\Ú3	v~2z¬­œ\ã¨³\×\ï”qy!8\ízxÕ´ùÜ¥Á\ÊÆ©‘\ÆU°M\å\'Rô+\ä.$K9T“Ğ°ó}“*¦İ‘F^›\Ğö,\Í\Ã\ãò2 ÉŒ¢º™ÿ\0K\ÃC\édBªlú€\éC\ã4‘–^€²n\Ş\ÚıN:\Z\Ã\Æùò6<LM}E\Çiœzv\Ë\Çbª46š>4\ä³Œ\0:i ®\â\â•r\Ñ0r=$W\ÊGV\ÄiD eÉ\ï\Î\ã\æ,\ÚØ<mZ/\íB$\\\Ìc\É\Çp[¦e$œ\å\äzy8Ş™Ab5š×“ˆ²©VRGPnÀ\í5²Ú•È…¼,SLyx³ v\'5Ñ«\ÆH]pY}2i^1\ËL¤•#K\×Y[ppİ’‰\×hĞˆœ~?\'İ‹1ôõ\nzÍ\ÈËi\ä(Ê¬5j\ÔC]˜\æ¾Éˆ©`\ï\å\êA3N/é»\ãÉ“5¼=;Ş¶4R1ô:\ë\á\ìlaT©\ÆÚ°«#Á\ÃÃ\Ôõ\î«\árŸ” p:z	\ÒV\Ær•m«´t:~0ry\\J[&\ÔE¢\ÍZTÒ\Òe\Ïx0\ã\å!\ÊZf:Ö’\î_\î|b	õ˜¤û§\Üı\Ó/1ı>0¸ù>… ×¦ç®‹\à&4š\ÚõŸ«\Ë\Úv§\ì\ÙA\ÊÜ±Š¹6{—;\İ9\ä~±\Æ,‚˜W\é\0÷ uûf||~0Zff\İF\Ô\ÕQğ\ÓCñ\n(øQc¥«\à%û[i´;J\Ó\Ê;t\Öz¸\éE¢<¼œ–xo\á‚·\Ør¼rFÓ°u:÷¹N^*b} €\Õ\æ\ØÆ”øX—\È8\ÕF\Ùt^‹\Ùkµ™Õ¶\0ŠÕ±\ë]4b¯ûNj\×S6ø˜1b\Ìi1\æt\n»²ÿ\0¦n¾2œ¯\íy8\êø…_\ÌK3³w€XvŠUø\Îv“´D“Ğò4?|¯ª\Ïò,?Š2eWÆ ®BøÆŠA\éğ#¨ˆ¤“«ø\Í\é\ÃõólV§\ÚNûşŸœË—Š\Ã#b*lf›\Zô=\íOKøN6¥“••¤IÖ¼•xo:ŠE¶%gı\"¡6¢Å²/](ƒ\à\Ñ\ÔŞ½b+l4o+B€™­nÆ ˆC†3^¸ùü%ûDŒµ\ãz™‡\ÃO\âk\î~‘œ©\Æu¢§¡±#A»\á#am¾O2vÿ\0„®uW\âne\'G¦>%•e®F(M« \î?\n“ÕŸ\î„\ä\ÆŒ»k¬\í$½5/\ÍÁ|8ñ6W#.U:­¨n¥cw³7û\ï#lœnVV¼{)ºd¯\Ã\Í0z¥µº©˜ük«q§uõ¹™õ/*j\ÍWA\Â\Ğ\Äg@hOùem‘œ\Òô–cM¢\ÏY\ßv\ìUc¹\Î#6~\ÄUCõ\r|.å”ƒÁG\ã*9\0;SV2(,j\í¿€–¯¢\Ë\r=[ƒF=¤Yúš\îj2\Ê\Ô*•K4\n£¬P¦\Õğ:fL||ªÚ—*JH¾\Ú\Î\Ê§9….`B¥S@kÕº¾ôjX«˜\âNÒŒ\0O$ù¦\È\ìA&öı#°¯	\Ø\Æ1³\â\×6Ü´:P7¶üz\Îj\éÏƒV£Æ_±K³ ıC€Ê¬7ƒd\êF“7)9r“°“H½[ş\ã\ĞKófLü—`i†\ëÖ¶š„(\ã\Õ\énÆ­º\ÇVQ\ÕD\ÕV\ì½C/\éMWµğTAı9\É@m‹ñø”Gd&ú\Ñ#±\Ò¹\ß.Gw½‹\è#;·Ä¨ùF\äıCZõ=\×\í\\Ë“…‡S\ÕW©?/”\çñ½ËŠª«“.¶VªÎ†¡ı¼3&<9V\Å+_\ëü\"\áöş].<˜1¹o1\Ênxÿ\0%);ş-œ3¢x<,\åv¹¦Ô‘3û‡µ`P(³dQ{{T9ß\íø\Õ™‰\0eco÷-Ì¹?s{b+d\ÌG}»Wñ\Öp¥.\ßÒ™èµª—\Õ¹g\Úxù6¶^9VM\ë.mÄ•\è©]£J3•›÷O.\Ø\àDÃ\Ö\ä‚{øi9ùp{¶]\ê¶*©Ktºş²ünW«K\ŞN_¢o\ÌA\è¹G“vÇ¹::ƒñœŸr\å¡Q‚1¨¸ı\ëÜ°¾\Ì\Ù\Û(X«»-¿9\Şö\Î\Ü\ÒÏ„b\Î\ÓZ7\Ê[~5ø\Ö\èW\İ\×òiw¶]wi:?s\Ê;\æZE²zv•\ä\Ç\ÈÃ”£Z:x\î\Û\ÚøY\èú*+£®š‰\Ë\å~\ÜÃ³.FO–\×\ÂqW\îu\Ù\Ø\æ{_*\Ír2>\ÑÕ·tğüX˜!Ï+dyA\ï8g\Øy\Ügõp:œŠl)7Œş\â˜A9»…L–†«\ä\ë«nP[\ê\î\"\ìO\æœO÷>r1V\Ê.\é)~¨ÿ\0ï®§nD¶\Zª\ë3“~L*Í¦„v”\å\Ú\çn\\d\"\ê\nš™‡½3ÿ\0\ì‹ÿ\0¨]J³û‰f8ó\â¢E\í\rZ†\\\Ç\ÆlcŞ¶,07W}³\"…|y·°é»©ù\ÎpÁ—Ë“†\ïXt\Ş(}òô>\ê/(\Î`\Ğ~\éc³3>¢\à\ÌU½DPz\Z37#\Úğ2€Â»\\/qNV\å,Ej=\æ\Æ|\Éõ\rÀu“G\Õ,ÿ\0¶1ebQˆ=‰”Úª<¹¾¤V“¸ü•\reI\Ô\Ò8\äSjU‡r4š\ßn\ä\Û^\Ç{W¼qGö9A½?ôÔ\Ş\Ü8½\ìÿ\0s.d\0V®\çYX=†&üD%\\¬»\ÔUV†e·\ã\àT—Ÿ‰\ÆN\'¸\Û\å9¹$€EK8xsoõ«\İ\ît\×*Uzg\Ã\Í>´©^$’”¦LÆÒ¤§´«7#¯X¸¾¡\îÀ\Ğw—n¤\"c|{€*P_$À¹ù«ô›|M\Ü\Ï\ÊV\\\áÛÁ«\éFÒ§K&r™©q³©\ëË ¦\Æ\ÖtY}ˆqr®3Û‡—Mt\"¾fi\áñ°¶4\ÈNMM\Û\å56\'Rw²› A\ïñ“³¹÷W[òı\Ò6 ÏŸ\Ú0rQœ3«xj\'=ı˜.<T\ĞbX‹>&w”\çC±²!¯c*\ä\åÊ‰¶\Ó¸´v×§\Êi6F‘\Åÿ\0a\ÊN\ÅGF\ê\İöPTòs\×wAò\é‰v\Ù\æºfE;nËƒ–\Âõq\Ş\èÔ¾\á$rù\Ù\Ï\ÇX\×>Lª5òÖŸ9«—\è*d¬¨A\0¸·\ßI¥yxø—}Ùoœ³$¿e|mĞƒ\Ú2\\ñ{xÅ1\00\è€üL».ºLKgRoøM)\Êã«©É„µhQ_\Ï\ÈÀ?\Óp/©\0šø,˜°‚¥±²›Á\ÒW˜\áF\'c\ä\0v=&¬¾`2aÆ®g\Ë\Ä\äc\Ê1œlY`>«R\n˜½»&=í……şk\ïñ½¿hoM®´7¯Î¥98ü\Í\êˆ\å(@ÿ\0P•&nHW\Ä\Ùÿ\0ºH\Ô:^¿„±\ä{í‘†F]«e!Ağ¼¿‰\È`K½	e*ø,\ç7µò›9	‘\Ûn¡[ø†—j~6aI™T°]ûÿ\0˜¨„%\Ë\Ê$Gôõ øE\ærø}¸\'*‹8\ëP~a\â\ä93»!\ÜE3Û¯ß©šı\ÃÚ†|jø1³\ç\"\Ï÷(˜:™UT¤\Ùp\à\æò}÷&L­\éíŠú™[{Ÿ-¼©:7ó¹[{w;w¤xÍ¸ôºŒ±=³\ŞÀûGe\"§X\ã_\í9\Í\ßs`\äû\Òysc­Eòš““\È)xaÀ.­µG\Ì4ó\ãõ§Àô\'¡e^V\\#&fU&€,ô¶<f-U\à\Õlüc\ÈL_ë  ^\Ó\àeY=Ãˆ£b÷“m´\íkù@\É\É}7\Ä//–™|Nx\\XùK&$¡§BG\ÊÌ•¤\ê\Ê\ïk‘\î\é‡\Êp«£P\Ú\\Í‹\Üøüœ§q§ˆ¾§ÀKG$…Eı*\çMAE[¯Œ€qó9p•+r€5ğ7$xù–sşF…\á\àd¬,ıEOif/¦ÎŒonPùKwpxJ2g97Aº\îû¥¾¶&\ã–\ã8Æ•´\"ÇŒŸ2™#*³\ât\'Q´>\Ö\0J±§3PÜœºJ‹\ÜÀ\ì$<\\ş·ê…ƒ\ç`µwğŸƒ›3Z•\Èh\Ój¬¿\r:‰L›±rp2©b28\ê\ÃÀ\Ê3ñıl™N\àª\n¢š$\ßyRq2œj™²j¢\è\è\Z\Ór1£˜C¨6®¬F\Ñ\àGX\ÇB\äD¡”\0»Tš5QC	vl†6Iga`^šøA“ƒ‹.#–‹Ş¨¡´±\×Xü|ø\n6<A\Ô\âó\Ã_\n\à™\ĞÁ“º2k|ƒV¾Ò¬|_vRyTš‘_*‹\î\Ş\ë\î<<Ì«BƒÔƒµ”—\ÒX¾õ‡2cÅ‡.$Ô’T÷\ë\Önai\\™‰z\ÛÌ¼qpU$N\Îô/\ï3”ü\Îf\îC\ã||m@Q·\Ñlõc=Rò½\Å\\®\ì\\ŒÂ‘fµ°\'#÷\'7‘\ÉÉƒ‘}1Š\Øc\Z‚§\ÌÔ´M¼Gœ’\îg\àrQ\ß\Z–\ævª(›0|k‘‘Y¬‡\Ó[\ê§JùJ1\ìuJq\Ô\Ø\Zu‹±1¨`vµ\è@¯¼öU4¢p\Ï¡¹ˆkö |m‘v\ã\Ùf—k\Zñ\ïrõq€»\ßSvG™Ï‡\ÊgÆB¾[Q­ Ğš\éP¯ oS\0¯¦‰\Ôôû\æª\ã^¦n§ø\Î>c8\Äwf1\ã\Æ_!g\İ“úµd\Ï\Ë^!\Ú fFM\Ä\í§\Æ\Õ}„ÿ\0\ra\å/\'·¦¹Ó\É\ã+V-¶\Ù\\À®O\rd\ä•\àğ“ƒ¹yd\\\ä\ã\Õø\ê~¡/q¡¬Õ¯“¦\'û›ıd\å®7u¯\ÄXüD¸£2·C¡\ÚAû¦6\Ì\ç9:ºüõ—£.\í½tûf)e¡\ÖÕ¶;šk)V\Ü\Ûwm‘©\ï¥xT§67\Ê\Ì\ìXd½Äz\çN°\îu@uPZ˜\Z­#\ãWÈ­lw(ó\Än^f\Ü3š••\Zô2eÉ–\Ï!FÖ½¹”\r/±•¶lc.õuQ\ãŞ¦‡uLŠÍª¸Ù0\é\àk¹0«q³zN¡\ÑÏ”Ş—ó“I¸m\Ã\ëÙ¾¾\çehXYJR\î—Oc(}\0 ‚4¿\à…Õµ+\×\í\è\Ñ\Ë\ã/ú˜À±­wğ?Ÿ£\ê/®O¢\Î7•\ë¶s\äV£‡\Ì\é[V\êWº2¹;¿(\ì#B\Ñ@>=D\êaÃ‹P\â¨\Í\ÅÍ€—\'”õ°kü¿\Âg\áğ¸ŠqdLøód°\Z‚¨=X_ZœÕŸI7²z%Û¡\ÌÏ‰±d­¥w\rÀZ€úü\î{¦.g8cb¡\Û`=5õP—\á¯\Âr,\Ù\ÊGQĞ‰RM·§€\åa•°\'R\0ùF\ïC ø\ÈÕ§Ï§y`G‡ñšTM½Y\Â\'öñº\Å\'.B\0A\ézA\å”ùô\æeü|!›Í¨\ê\Ä÷\Òm\'g·D»mUny~Dl#\Ğ\æ`	û{K¸»(Şª\Ëù—±•e5‘”j·¡øHHS\ä6z‚gExXF\\º\Ãz¢\à¤\Ö\Æ\êÀ\Ó\àNf8•}<Gp?Sk¦¦¦bw c«]·Q’†„‘3/“ÀT\ë>\ŞE¹\Ñ\ãel˜\ÑY\Ê&\Æ\Í\à¬w\r\'4&ô©ğ–.R\Ë\åVò\íşs’´jt²\r\Ë\é\ã\ÆXc.¬Á\È6\0\×Ç¯I2g\ÈAÀ±\î¿*\ë\ã×¬¤±\Üv•¯A§I£ˆ¹7d\Ëd­>zmh¬/C‚¢n^z\ä§2.\ä$w£\Z\é\ãAjE(ü£s} \×dø\ÖT\ÃÎ½(Qøjfx\Şt{\0\ßíŸ¶óòP)q‰Ql\çr¡ú§•\Ë\ï<üª\ã.bÃ¢ ò­ÿ\0\Û7{Ç»a\Ï\íi\Â\ã#Võ/”Š´}+ò3€ÀŠZ\Ğü\Ì\åiVn\rq©¢O\Üm\ÄÙ¢@\ëÿ\08\êGstm—ş¸±\æÈ¬1)q¦òƒ\ÂX˜6 \ÈÎ¥A£Œ}@QøElÍµŸ&»kV!Ÿ\ç\Û\î—ñ¤Ş­\Ñ\Çemwz\ĞQ2mv\Ş\Ó}:\ë\ÚkÀø±¨f(\Ø\ì*ü¯\ÑCNÔ¶rq\äQXR\ç©VdŸ­µ\' ø\Ô\éû;•9€·ˆ³tq±úHo„\â\İGV\îLµ\êoj¨ş[ùw3SºW±a-;\è}\':Y†\Æ\'ø\Øt*d;Mi\ã^3—ûw\Üqû§{~M9<`N&=Y|4\ÒnL(ŒYjW\ç\ã>o-,\×Àöñ\İ^©õ\ê‹Mw\Ã\ÂQ\É\ãUÛŠ\é-\ØFB\Ê½hi\àW€ºü¦\r™ƒ¼©Ø¥—¯K‹“„+c\Ş¯Œ»\"w6£\Æ!õq)|nY¾#\á$Ç—\ØøÌ£û!k½Ñ™ó{\n\äá‚¯Ó®·ó7\É\ËT²»Ô¯q&FF\ãœ\ÙA\\z­Qş\Ùa’Q\Âo\Û—3¨=|Äˆ˜=‡\İ1d¬|ˆ;’„\é?¸r•¿¶\Ò\è-Q•\å\åòs?¦¨\Ø[Ä°«š‹n¥Cö\ç%˜\å<½w¹¥\Ø=«Ÿ\ÆpG;\ÖV\è¹,u\ï)\Å\Èç«Ÿ\ïT\è¬\Ã_”½}\İò)V¤·}$+S¼Nf<A_\Ó\ÈÃ£k9G#*€¯c2?¸…A\Ë\ã\ËıC¡11òR†\×İº÷\Z\×^‡\ç3µö5¹w:\ëB6º}<¤•¢ Šş3”¹ó†8†`µ¨$~\Å÷>gö+RLS[\áÎˆYSq^…»Ê›—K®7F\é`>¿\Ü\ÛK\Ó+t\Ätüeƒ˜i[\"údôd‚”\â\å6O\ìù‹u\Ñh€#\È\×YHñ£Q4dË¦\äaZQ®7$Q ‡@?4¸&J‰Ä¤S\ï§_”|Y\ç&û4”.tw(ª>>>¼\Ü}\Êl²v\0k¸I‚\ä\Ô\Ç¸V·}ŒCE*Î¢úø\Î!Á“Š\0+“\"¶€–\éöK0·¦§/¤\ÊG\Ô2µ\r!&¼\Ş\Î\ÏaB‘\ÛÍ©”\äöşjÚZ…)\ë@xF^N\\ª5\í\ê§\êûÑƒ—œ)9À¤\r„€Ét\Æ\Ä\ág¯\Ì\0\Çh¹!€ı1[\êHv#=eP	\éP9@|Œ	ğn«,ˆ8ùğŒ\Ä?£gó#\áğ-A\\{tè¤ŠV›][\íÇ» ,·](\é÷I \æ!(&\Í4u6Ò¼\ÉÇŒ`fZü\ä©ğ¨]q¾\ÇR…¾“\Øı±YŒ)\Ş\ÕF‹\ã(8øó\æBS.LY·%ƒ¹DÕ‹“\ÉÊ¡?´Î½‹i4/\ê2f-»Šø@ÀÓ‰kqH\Ñ\ïRÀkC;>p	lHO\æ\é÷\Ìş¦&`çŠ‹•šùZ\ÅN\Ã\ĞR‚zi_t‡‰›x;”¯…CbÎ¹}Ff\Ì\Ãò)\0€zK†ù/g©½ô_Q\Ô2øƒ¥C\Ä\åp9§Ë°\ÛVF² óq\ã{uz¡H\Ùù±-c°£2\Üjh\ä\ãösƒ q\Êl{zùG~¤1–ñ\'F\Ù\ÊÅ“kVj|¥~;t‹\İ2ò9lF<Q€?\å‡ıƒˆ\ëµ/\0^…_p¡\â:\ë,÷\"Go\Üf\ç\àeÜ™÷3\ZÚ–CŸ¤+™\Æ2Ù\Õ[CÕ¶‘rO›‡\Ìa‡\ê;«W\Ó\ê=~S““\"^e\Ë\ê\á$¹7C\æú¡¤¼„\ä\Ğ=¯\ÉJl~›ÿ\0÷v‚~rœ~\Û\íÉŸ\ÓôKfQ`1;h÷\nt3IÉ‡\Z²Sf³´&M‰ğ¯	N|¯Œ-­úf÷–õ~Áû²\Â\ì*ªœ­”\ã!§uÆµŞy—:ó0©W\Ârb&Å•jğ\ß:	\Í\Í\Ë\Ä1\ÑmG×¥±?J\ÕUö\åg·	\İÿ\0P\è•7Ô…\à¿\'\Ô?\Û\n€\Éd=´šõ\Z’ù?\ÕRHc¦”{B\Ø0©99Qk\é#°\ZQ1vqŸ\"ú|—,¢ô4|[¡¢ğŸ›\è–}™Hò\Úÿ\0/\ÆN,qeEô²6™\Û	ú<	Y_7\Û0\ï\rƒ&~Ä…eô\Ç\ß\n!)\È\Ìtó^\×mt2Obd\ár‹cs\Êó¦¬‹ô›úY„\Í\Ê\æ\äc\ämdô…¯V:\î\Ğw\ë…w€©ú\ËÕš\ìfNo¸qğ0VºahUª\Éé¹»	T‡ Üœ¡K‚À\ÑõÚ•“Àç›‘U±6Òº–\Ù9\r\îyù?\Úõ\nñ\Í¹+z\é\ã\ŞU—‘¶ªcOI:\Ç\Í\á§i­Œ\Îã¡›3¡ôÛ™ÀqŒxşaR…÷À£>7![­e\ïñûeC/¸9q\äLk‹\ÊH`_a¬·~Q\Ê\Û\ë\ç8\n[v\×:kK²\êûMm¯\\™v}1\ìX\â\Ü\ì«\Ç\æ`+ˆÀ*H\î\×\Úl\Ë\í¾Å¡ı*\ä\éga_%o\íª\Ø\Ù\×!mÚŒe‰¯‹4G\ãó±m8²cÍ‰—by\ÊzlF»j\Ä\ËKû~’¦ÿ\0»>K\×ı¿eÁ\ÂTÅŠÍ°\n\Ö\íy\â3ó³ó½\Ã\', \Ş\ßN5¡\n\Ôó¹§)\Î=%lg¹¥š\Û\Õ.‰\ç–öü\ÛõXq¡9[\Z\æRl:q\'2²\ä\Ç-«µ\ÎNJ\ÊP*	5\Ò\î[ƒ‘‡v\Ç¡\Í¾aWı&<`¦^R\íÅŒ0ş¼•J«_L\È;N¿rÉ¯\Îo¶O\ÏTt™¸\ã#ƒ¶.»€µ?öõ—Æ£%£\î»ó/Cófƒğğ¹\È*O\å¯ÀÙ›û‰\ê \Ê\ãkF\Şƒó_O‹›Í´_U€£ÿ\0H\ÒQ—˜ù¦TX(‡V\Ç^úhfs•±bA\ÜYM_\ßş=\ê\íZU/\ß\ÖWy\ê¾$¯\ZZ§>…¡Y\nŒ¢ˆ\ÕOÃ¸–w:~^•\á(l¸l\ÑfÒ”·_‘\æl™z-ôº«¬ú\r¶yˆ6\Ûõ_3zv¿\Â]ƒ©\ÇV\rO¸\éòª\Òrğúù‰EnŠY‰4lÈ¹òŠ!Îš3Kš½S\ÒÛ†\Ú+$Ó“k/ª®ŒÀ\ÔM|\"\â¾FM\ÇúT,h\ßä™‡7>ÃŒ´ŠúEı†*gÈ™Š$õ¾“/–³*s†iqZ!\Æ3_\ÄÈ¡T•ş\åQ#Mnüf,¬r\Ä\ÜGk“6l\Åò1ó0ª\Zš\é*-n-@­Lò\İZ©y5\Ç]­³µ$qø9™\éœd,™4VÇ§”\×f¹Oºpxc{‡úXó1S\Ån«‘M2-v__\Üq°\Ç\Å\æb\Zy1f\ÆJd\ÄK\ÃYg¾&O\×&*llj¸v›:³1ñ\'¬\ä“f\Ûs—ş†?/•\Åm\Ü|­Œø¡ù’\Îg/0\ì£(i—oÓ—Á€\ìÃ¼\Ì~\Züd\Ú\ê£(\éeAø\è_Q±V¤\éñ¶ó´Y=¥z\Ş\ß’üxrœv€17z\ê&\ê\ç\é\Ñu2\ÔdÖˆ¡\æ½>>f&^6\æo3\rt°ex“K±l($\êu=Gó“&:\r“+ok¥Q û¾²½j°¥œ\íWgø”\Ùvø“¯\Úe\ï\ÆD\Ä2bq\Û+Š\ÔP»ùQ¬`©\ã¯\ÈÎ‡\Ã\ã\Î1©^>\Ò\ÇÅ‰º5®²¥¬\êf\Ï*4f|>K\ãr¨v\077@ó.§\Æ8\á\rª\å\×\Õ5xOP§¹=>s`\Î_;új\n‚\Ìq1};\İFûŠ\í+õ1W‘³Q°7Rõ*Gj>—O‰f\ÍÄ¯bF$8ñú+\æ¯\î(²	ş«?	‡P\Úx\ß\È\Í\Ï\ê\r\Ö\Ã\Ê-AG¡\ÓøLÆ²*\í³‘A\ßt(\ï~3•Ü³­,–(õQu\'\ê?óv3˜_¦¡S¶ºı½f^(S•µ,iEY\Òl\\©¨-¶»]™\Ñ\ÚL\Äò…a`Å™ú\Ù\è>BS“\\Œ@5ö	£>M\Ø]~•®¤l£\Z>|\ÃbXù@\ì\0\ëò8¨\Åñ—\Ñ0g?ø\êşE{a\âk¢Ê±e\Æåƒ *ª\Ål\ê[¶²\ßq\Ä1X†¬,»~S}+\áS?ª\æNá¼¤Ÿói¤\ç\Íf¹\Z\ÓC\\I:+.­´l‚( \ãÆ”m»°\éC©«\ë\'+(\È(]\\¯¨M\Z¶\Ş\Õùk÷\Ìù3d\ärTd\'\ËHªÇ ^\Úø\Æ\Ì\ny\0q\æ\Óğ™L­2\ç\Î\n­W@(u#2éŒ\ìkof\Æ-P$\İGğ\Ò—´\Ş\ãB€ñ=¡7%i8-”\ë±[\ÌO`:@ô\ïh\è?œl\î\í\Ç©\n¨z\ëş&QŒ€4º3¦\ìü\Ì%L_d÷\á{†,\é¥0\Ü>	î¹¹±ñsŒƒ Ç‹8Ş„‘´\îú€ùóU\ŞDkü{Og\ì\Üf÷¯i|\Ò2>»‰ˆ\íµ£­u\éfg»ª›ş\Òñ\Ûmñı\ÇC/0ã¡k¶Ml0:|%‰\Ê\Æ\Ûw6\Òz)¨ñ_/\Ûpò1.Oûœ«tùMøı\ÃûglªtbKY\Ö\Í\Ï6\ÎÇ£s¶Üœ!o cŒ;€Hn&L{\Ñ\ÕÁ\èz0œ®?8¿˜q 5)5\æ\èv™¨L­\ÇÉ‹\ÒÜ·‰ÿ\0©@¶m<<du€­&\æM¿FJn¤\èhÌœœ|Ì™\È	J¡´h>\é^N	øşšf8rŸ:\æCı\"\í”öœ®Wû\ï·\á/‡‘\ê\'\ÔÈ¿\Êz\0<k[\Ó_\èÅ?ª:Xø¶\ÅS^Œˆ¹^O\ÛùUL›÷hÄ‹+}ş59­\ï^ÿ\0Àô—«fÆ¹±ƒLN7\édj\Âi\ÃûŸ”\Ö\àš\ë»07ö\é;+\Ç\ày\İ_û¾%¹o\ç‚•p	\ÚÀQ#Æ¦L\Ã\ËSô±ÿ\0¤\Í\Ë\ïù\ée@O˜º‡\ËI¸û±\Ü\È\ŞA¨Ş”jm9\è\Ì9_Ü¾\'9ø\\\ì`A\Èyˆ˜\×\'×¬ƒ\"ó]\Z\Ã\î~÷JÊ¨ÀõDkñ”d\ÍÍ½ü®+?S§yzhÄ¹Íªfß l™2P\"PÂ¿Œ½[„§\ÔeÊ¡…µ\×\ÂX‹\É\Çu\Â\ãp~¥\é,\ÂYÃ„©Qª¶\æ\İ]ªq½\ÊL\íK¥­‘‘ˆ…lJÎ®\ß)\Ü+®“{\ï#…¶u\Ü5µNv^[¢&O\í´abP\Ût«8\äq&\ŞfïŒ°\0Z79m}V‡]Ë¥–J\Ç\înJÅ¼¡¯\Æ_‡\ßñ\çc³Œ\ím³® ‘\ØP•³ñU\à\ã+2‚N€~ùbû¯ÿ\0¤q\ê ùh~¦\ÓM$uZ\Ã.ç¤£BûŸ’ªBl?™¶=®_ƒ:“½ñ\äPMİ¹\İ1wö¬€\ì \äªˆ\r¸¯ù»\ÜF\çc%l­_­gB¢M¢N±\ÊÅŠc;\Õ(¸¡k}.)Í™[s\ê¥\Î.nod\\™ø\Ï\êŞ¥\×Ï¡—/7‹a}~^\0ú\ìİ¼müt¬»ƒ‘\Çr[\"(\É}\ín\æÑ“.£\á\â\'õŞ’§›\ê(4\ã\ÜGÀ\ËW\Ü8\Ù\Ïöy\ÈÕ¶\í^¿\å=\ä\ÚûQ\Õ\\ø\ÂÕ©×­Ñ„f\Â\èY%h³Xª=.p¹¼ó\ÆgW\â–\Ç\×T6Hÿ\00¯\Æq¹>\âwÿ\0\ã#…=Ö½t\ï*£dvHõ9}\Ï\Û\×+cÉ•\rX(%E˜w™\İıµ6,¯G¦\Û\×\ì]²\æ\È8¯‡o¶VOœoó7`§§øM}µ\Ü\Î÷\Øô\Ùq£–Lx›:§BŒ«¼p99	ı)9ˆ\Ú„ÿ\0I\İ\å3\Î\'w©`~]¦‡ü\ã+zz\"«9ª,>Ÿúcb\è]\Ìôn\Ş\Û\É##q†\0ƒû„XpN€\ZP\ï,É—…\ÆPO4(}\Òz\ê\êy}Ç’†ıP[óX\Ü>\ãb6/s\ä\"lğ¸²o&55~l·¯¸\İS¶\Ø1\ç¬øù÷€ù°Á¥%ò®AŒgOO\'R2ŸOO9+\îÜœ^qWZ—n\à;„H}\ïi=,~’¢Y\ï$[B\ÍOb=·‹Ÿ(\Î1\íJ\É~FN>!¢‚£Ë©;t™¹\'.\\,Ÿª\Ë\Å,,†­\Ãl\ÇÁıV,Ÿ¥Lc6G­™\Ü)?4‰®Ó”>¯\ØÜ¢üœ®®2q¸\Ør£Y_P²\ä®\ä†şRo\è[~E\ÄNJş\éË”…R\ßNÎ\çC‘“\"\ãş”\ã\Åa±5y\ËşN“›\Ê\ã{vlÀr\ß3\ä\Z³Ÿ\"?K1\06³I¯O@×¿©\Îõı ?f\Ï\Ó+3•M¸ü\ãñ±ûnzoÓ¶õ#p#\íø\Úô¢x¼|q\ä\â\' ’«pö\ê\ÄÊ°pøør\î\Ú8ˆz•ñ\à\×õ}ó{”uø™Œô6c\ÅÁFE|­…\ÜPP\ä\nQ“ùKğ~‹\0ô»\ÑT\Ñù±­Zœ‘•q M\ä\Z\Ü@$\ë@|%X8\Ëe1zˆ¬Kš\ícİµ\èf2k\Ò\árüŒyƒ\å\ÚQ\\=c\Â~\Ø\Ì\'\íøA\Í\ä)L(\ÈX³9¾\ê\07}%©“rN2…³¿6L$\ã5ù¼£\ÎL™x\ŞÙ~¨úˆ6º:2²üA\"‰½É»°˜\Ø3€ü¹2=!¶\í\Ğ%«\Äöt(½0	Ú¥%^º\"{g¶\åQ·……‡Pªº{\î“7µ{nFQ\É\ãnc\Ô(V‡ô\Ş#F!wb| rn\ãò‚’Æ±„\ÕQ&T\Ş\Í\Í\Ş\Ù8ù°b°\ãV;«_3w2cö/fÏÿ\0e°\Äzj\í­w]\İG\Æ]ş\ÏÀ\ã8G!YË‡1µ=(\×_º_ö5?³\ä´8³/ªV²úªrc\ÔhUt6<f<ß·9 6O\ÔbÈ«[‡¢\ÖW¾Õ¹oû¬2¦G\ÚAıI|¾ QE¼·\Úm\ás9¹™ÿ\0LŒ¼@|»\Ù7-\ê\Ô\ëõœ’ÖŒaô<ÿ\0™Ál§Q·^6Í‹J\é¢ı[¦o\ÙQ—\Òõ,¼ª† tİ1¨\Z²·&&@?¼\ËJËµV¼\'•\ÆÍò4Ws“Àõ-]D²úI:fN(?¡\È\ë™\×\\ c]5&¾RŒk\Èö÷–UÊ½Ñ··Ñ\ĞÁ‡8\\˜2aÃŒ^^€²·•\×f¾Q}\Ï\Êdl$\nùø­—>1M½UÛ»\Êôû|ª}&•\ÜCrˆ\ë™K&<~û\Å9Bó\Ø\á\Æ‹µ–\İE\Í|~o±`e\Ìü‚?¸¬ ©[\ìWBZi+í¸À8ø©¯\"\â2±Ğ•-Òˆ\èL\â{ÿ\0¶Y¹pXµ6\ì§E¯§*Ñ½¦«qšÎ‚\Z]sĞu\Âê™¸¼ƒ‰•8¹Á_(½B¨±<÷²7\èpû‡/:\íµ„¨—$i]¥xÿ\0qcN+;b\İ\ÏzW}iÀ\Ô\ØZ\ÎF>Nf\ä\êr±,£@wEMñ¨”ğc‘\ÌFM<Œøó°g‚-\n\Úóñp‡\Zh­­yOˆ\ë\Öe\Ü0K\Ó\é\ï\Ü\Í8\ÙÀ&Kr4\Ç\×N\Úöi\ë«VyS\äò\Ù:¥µ\Äb\0xJAÈ–Tµ\0H$\ßqR\'\"£]ÆºY•g\ÊÍˆ¦Ü“_”«f=\"\Ûú¤\ÜÅ­D\ãl›U\äjwG\Ì\Ó\é«Uu\ÒƒZ\í–/+œµL\Ú­\Ğ?dE\å\æV\Üv±£(#_„\ç5ò‘oCV×²Õ’<dL—\"¶\Â@cÀˆO)\Ê*¤.€D¤MO™N5\'e\Z.=F\Ò;š3uT}^ ÅŸ\"\èœ\ÉWDÎ¸Ÿe\å!\ÅB·Sôaò\"8öóW—½3ñü\àv¶_%m?\Ö6~N,/‹.LŠ¹¬’¦÷÷\Ëı\Ùğ\\u\ÄU±º\ätPuQ‘ıAººI.\Ê\Õ\Ä\Ì\İk)‡]\Ø~‡$cs\ĞY~2:¸~1ğ\äE\ä\ãr}$]z~2\Ü\ìJ¦ˆ\ãó\Ğw¾\ÓXm=\Ömº#©HpÖ¬½\0|(\ÜG±\Ô\á.ô²c™7-õ]G\áOM±°\Z°!•šw#N3€šœd<szœŠ¤>eİ¯\Ş*tó+\å\ÄiW±ôü4ñ:	\Ê\â0…º+k¨\Z|\È?\Â{q\åö\ï.Ò½ \àÀ¦\Z\ßğ_¾?ò~\İv\íİ»\Ì·\ã¾Kn\İ|I\ãNıª,“J·}(³¯\ÎöŒüok·\Ûx©\Øf\Éóg¶ğıov|\î/\İ^ÁŠùAH\Z“µ\Í\âO.,§\ëCH½«{\ë8\Ûò\ZqX‹/«\Ü\ê¸SI¹ú\\£Ã‚\0¿\å7qHf]G\Âú\ÌA˜#&”hŸY§Ô¶5>¨òf\Ëş@\İ\n–»øTN.d\É\Êa—D\Ì\n®—[º\Zù\Ê2d»\Æ”5±ñøD\Ô}:U\Ñügjj™\ÊÕ”ë¤—¨S™—5§h½7xöE,B\Üi4lw—ò¹k“:g@HdùCS¶´ÿ\0G\Z¾R\Ù	8qù›½öUûf¬úªmK\Æ<‰\ÈR\n\æ:‡R;Ÿ˜œ+’ö\ë­__ºtr\á\Å\é\äÍ°œ!HÆ¶N\ÏcúfN76Ju@W¡,@¯\ÆşS“y”tK\ËBñŸ.\×\Ê\è[¡ùj¦~^e¥Ã‰vc\Z‘ıG\ÆM²yŠ¨º	[¦l˜\×+ù’ı0~>›6\røöP‘`-WNº\È\ïx@ƒ  \å7\éñ\Åv§ ¯´\ën\âi÷\İØŸºt0…3©$Gÿ\0ªW\Ã~:º³«\îNÀŠ\'°?	ebÅ¡¶J •x£C”51$¢H}G·\Êu\áşG>_\ã\×\ØOq\'!\\¤1\İe¬\ßS¡\Ó\Æ`\Ô:ƒ\×ø¸\ålŒªE£6À ÿ\0\Îf\Ë\Ç8²¾<€\ãe4U† |g.lİ8”Q&=2Õ®K³şo\Ì?œ·cón·¨{©>6{w´ò}\Ó.\Şÿ\0eTF\\¿\é!\íñ\'\á=?µş\Ş{ñl\É\Ê{_T®öô\íRh\ã8[“nª’p0ş\Ù÷,¼v|Ê˜qıK\ê\êXjƒ\Í\Òdnğ\Ş\ß\"\ç*)mZÛ¦\åp\Ú`Lº\Õ3ªjø\×&$	_ü\\\Ï\î\\a\È\àr[\'\Ò2PrôS¶Àğ•\Î~F\ß\ZŒ|\ÏÁUŠ3_g^\Â8V$\ÙU^ˆ:[VQYX~=»M8™r(\è=1L.´º\Ü\×=ô†x\ï)/™qa—û8K\0\Ñ\Âù–ú\î\Ğö>nOn\äF\Öqÿ\0«cSé¶§]·9k·W\í`\ä+®¿‚\\…(\Ê\Ä\ã]S}¶\Ç\ã:¨j\\¬\×t\ê{?tÀ2Œ\\®\ÈÁ\Ï÷)Úš(\Ôj&\Å\Îô÷l\\¸üpf·\İ\ÑFÖ£+ı­\Íœ/ì¼’T7›Œze:\0\Ãú[ğ˜}\Ç\ß=Ï‹°cWÁ•wb\ä\î¦;?IOŸ\É\Çj^©\ïãºµ3ªÁ\ßN¸“#œœdm]r6Ì˜ô­­™‹7™\\|¼l92>6a\èfm¨Š¿I\ßz†\ë¤ó‡ß½Á\Ü6L¡¨m¼ˆ¬+\ã4ÿ\0òoqô\×u!E&Ñ·\Ó?\Õ]\Ç\Ôn*t3¿\î\'/q¸øĞ’\Ìw]v7	o\â1W¤³\âÏº…øi9˜p{†3~ª¹=K¨%µº&j~F\"¾†,YO\ç	¸Uê´º˜•nO öµ“´¼Ÿk\'c\"SSa\Ë\Î[‹“\íÁmY\ŞÒ¦°ğœn?;\Ù9”‹‹‘—\È\Ì\È=òz<5šóq½¬aFÍƒ$`tµº‹=%û\×Zş\Æ>\ÅŸ¹½y\Ü\'nlvR@ó2\Ì|œ‡öò£Ÿ\0\Ê	\Âomö\Èa\Ø/\ê\İ\ä> \á_böfB\Øñ\äF\ë\ÆWu\ãúªk\ïş \Ïş:óñ;\äb~»Mw$H¡k\ËU\à\'”\Ï\ìøWr°r³`~at£ú¨É‹·gÀ=Ñ°\ç#ûƒ+2UvL¿\ÑüIÿ\0¼üZY—®Ÿ9‘¸hü¥\ä/#\"/\n¿ö\È+<\ßûn7°ûše$\×ú\Ç\î,%-ÁÍ“\'1\Î\í\ã\ä(ñ\n÷öGŞŸöü\Ç\Ø_òù\Ì2=…\Ú\Æõ\ïb8 ª/­¥\ß\ÌO\ÇÉŸdOX\åv@\í\ì	cÓ½\ĞÇŸ5õñ{–\\.Ê™\Ûq\é\æ\Ñ4?)>\íü|~\Å<üQ\Û\å{w©ñb\Ä\Ö\ä>ßˆ\í0eöz¶\ì\'/S¿¸\ï\×I‰9\\w;sû©l{·Š\Èw¡Z\Z|¥9›—ú|>\èï¹‹²\äW¯\å¡ñ\Ö-±ÿ\0k*\áª\Ówı\È\íi\äu~??m<¶{2¿\í\î|{\Îƒ2õôòyhwHœsÀ]\äb÷1¹N·w7H.F\"Èé„«\èw‡]{‡¤\ç=¿c¦\Şÿ\0¹\Ù\ã{@\Ä\ÎV\\Jº–c…t\Z§·6ã“›n:õoN™<u\Æw	\ç1ûw¸\ç\ÂO±©\Ûk¦¿p\ë7ûwµ~\å\àd|ø6ò28*øYË‚\\\Ô\È\ßv‹\Ô<dv\âr\ÈN®-ö\ßPz^¥ŸgÍ“*¾\\|…T\Ş$\'ıMñœ\Şb{\ëò2r¹¼]\Ùú1\ïÇ´ô]t±ø\Å½\äñ€~G\Ó\Ì\íe¨\é¸\ÏF1\Ø~nN{q\nagôØ \ÜHS­\íü¾rk’§nP1\Õ¸Q\Òo\ãÿ\0½ñw\æ\áq\ãf,Î·\ÑQ\ÏO”B¾ıœle\Ğ|ÄŠ\Öõ\'øMV\Ívø™µSÿ\0C	Le\İB\ïdë¯„U$[\0	#P£@>3¡›…ï¼´VÏ½5P¿HªôßµE‘+h\ç  KM\áqns@\Ö\Âh\Ş77¹u„gkò\Îy\Ì\Ú :u\'øô„¹7\æ\Ü\Í\ß\é¡\à&ƒÁ\æ²6F\Äq \èr+(&\êºTvöÿ\0 %†6)N·\ÜiT>rJ\îXğb´T\×,v&YôÊ¹\Õ°è¡†M7_²i>Õ›Œ(²†\ÕN\â\Ë^\'A/ıl˜\Æ&L»·!\Æ\î\ÌùXxøL».Œª¯±\ËÍƒ&\'csı²\Ãiaò¨\n\Ùkmu´ü<\ÃÇ°ò—\Ó4û\åW2…s\Ğ\İye\'\Ú9Jë¸¹rv¸k°\ë \r4ñ•^°\Ó\Ô:9M/Ğ¾>R\Íx²jU_ûŠÃ±\Ç\Õo\ã:¸ù9x\åŸ.<œl\rJ\ÙXS#µ}0¶\Ê>s`Æ«•\ÅTÃ˜n¶`¥\İÿ\07˜\ê\ZºJ—6Lù\Ók„ÀõEÔ‡\à\à×¤\ã›u\Ğ\é„i\Ï\Æ~i,s98\ï\ÒDr\0{\ßş±¹¾YA…ÁÅ–·\Èq¿\Ôh“\Øuš1\ä\ã©ln\Ôø\ï9<—}YY¸\Ç=Ü€ÿ\0NRºu´m~rL¥pò¼¹p1\Æ?÷&0£§Z\ÓYW\ê“:œg2.Ea\çd!\rüƒnû&\Ï\Ó#GB\Æ\Î5pÀ¢\Î\Õj\æ>_\îoÅ‰°\ãrùF\Ø@)\âª\Ê4ùˆM¿!Àœ\å\ä\â\ã(\åñ°”\rµóac¶˜ùJª\ëºœxòqñ\âı0F8r/©\Öc\âúhgv-\È\Ù\'(ÈŠİˆ-\Öş\"\\\ŞO¬\é\È\åbR+)¼D\ä—r\×Oºo\á‚G\ÌÙ”Œ¹š\Ôqr\íX¶«\ã[\î–p óXú\ç!®aA[¸\Ï}\å§(|G¤2eWó +%\é{Î­G\á+<l/\Çb\ì0D>\ämü‡\Z1#Ë§J™‚:™óryªr¶.63\Å\ã>\Çp`z«/S5\á÷.F\\;\Ñ:.\à[!®¤`_\ÊX}L*¸‚ªñö\ïõ”\Ör\Ç]6ƒL~\"dfÌ®\Çf\äe \Ó)ª\Æ:Y}\Äı\ÓS$ˆ:\ÜNF\ÅW.\ÄÈ¨[b\ÛUû\ãtÁ—>J\\|nF<y%T\ß\Ót[Eô™¸“\Ïß‹™ƒ\Z6Â£ \r¸§[j£ZxÃˆqò²3ñÂ“{òÜ­T&\ëuÿ\0©´ùI£)k?¸ñù›™\ÎKrXqÀİˆ×”„lŸ|»\ÌN\\<Œ¸e5ƒp½F8›\Êk¦´g3\É\å\ãE}ôÁòeT6û\Ğ0+\×Cr‡÷\Ü(X\âÄ§)\Z\ï¥\Æ\áM©\Ø5\Ü>\èUm\á´–Y\ÒU\å·\ËW\'ûŠ¥2¢\êT2\ë»\ÅD\Òø\ÑS\"\ã+‹¦QgSĞ¨İª)­g\Ë\î\ç\ÊÆª¸ÿ\0KÆªw£\é»\Ü\Ç]¿d\Í\Æ\äû‚rNl<€¹\Êù(\å.¨:%ûn5ö&õ?\Ôõ™1>\İ\å/6\æ/ *•J°\Ôv\Ög;2zƒ\ÆË—±\Ü\Åı%ªı5>jR\ÖqŸ&L\îüW+ô\è¤k…G¦\Åz\Æ[MG„L¼\îka\î\ÖÕ±“>6Ç¸\ÊÖ¬²l©.\äj\Ï\îÏ‹\Õ\ã¡#kn\ÂÀŒ\Çq\×\ëì·¬\æ¶F&\Øz¹y».Ñ©_ˆƒŒÙ‹-1mB\é\àWmÉ—…—\Üb¾¡´-\åQ~§eµ.\Ì\ä\å¾\ç;™\Åiñ’ø›ó…;7x+wŒy%zE¢ü\'q½»‘\nd\äb8Ğ€q.Pª	`2\Õø\Î\'#	Á™±´\è\êl0ñ+g{„U¨_-\êO\Æ_\ÇVf»C1ÿ\0Q”}³*³h:ü&ŒyE”½N€ÿ\0‡\Æv¥”ö9]?Q¹©³Ó¯ \İkzşkû`\à¸Lû‰#\Ê@\Û\ÖÈ‰È°ˆ¥h£ğ11?§>´<:\Ék/¹1\ZWöÚœ\ç%\é›%„©\Z‹şw5®\\|…³„Œª/\È|\êø\Îr\ä^lOœÕ‡‘\Æ\Ä\é‘2>\ïÌ¤t\Òû\Æ\äúÀ\Û$«re\Øv®•]º\é,B›Wp\ëAº\ÕŒOqÎœ[\å\ÆAR4\Z	\æµ&†’ñ\åÙ‹\áU\Zı»\Ó\Ë\ï<A™\â|v\å«!g7=ş£.\áM½¯\çfj\Õ6§%Wr•`\rƒ\×\Äk(\äŸQ\ß1Ñ˜\ê.õ=N±\É=ı‰\Ç\áb\"L\ç¬\Ò3—ÉöÆ´G‰ş­{\Ì\Ò)*lNu´3¥ªšıu/\È\Î[q6O›\Ê@\Z÷\ÒF\Ì\Û(\ÓˆñŒ\Ø[b¸*CÂ\áó™\ØıóW•\îfû}#\ájc},4£õ•ƒ\ĞMÊ»°/G¶\ä\0ÿ\09\å\Óñ~>V8uÖ…~qñ\Ò\ï\ë[£(\Ï?%\éY£‰\Ã=7ƒb•Æ¾?ö¯O\ã&OrÀ\r\"³şñu½\ÇaÙö\îI\ÒQ“—Ÿ ¦`£úSO¼\Ï=ø›»õ=<V_n¾†F »\Ö\Õ÷Â®T\0½N—Œ¨#\íû§dseü\\Š™+w¥u\ëŞ£eUL®«ôŞŸ)B’?Œ\Şø‡+?©‚£mb”…\×}ô\Öv£ú}\ÎVQi\îŒ\è	m¤€¬<\Äô_—\ãglmµA¢CµQ³\Üı\Ñ\n\å\È<\00¿6ÁE\Ïk\íò©j¶C‰q\ì)›¹…y™lS\ç+dY†NNL\ØqŒ*\ÅnŸ0ô\î™=C!ô§B\ÊH»š¹Û“Ÿ&M\Ûwj×­\é\Óğ•qğ•Ïµ\È.Úƒ¶…\ÙùNmö7\Ì\îI\'wQ;7\á\0\0§}÷¾ñh\äm\Äõ6EüÄ±Q‡¨À\îò•SÙ‡R\İ&M\Z±0tflvÁ¼\Êo­\æ\Üú\ìlc\ã\Ò7]p\ÖD\ÖúA×­@û]†Ñ°¯Eÿ\0\ÔÎ‹C\rd˜\ÛB„éºş2”*1ºúšŸ.\Ï}ş\àWv\ìš7€\Ög¡\Í®ŠøÎœo=]c©©xKŸÉ‘˜\ç\×jc‰\Ç\Â\ç[\Ûÿ\0nq\n·+œ[:\ãp\n›?\ÕYv\ê(xM>\Ç\í<_\åË‘\Ó\Ì\Ì2\ã!My\èwğ¹\Ü\Å\Â\âğ\ĞcÊ­“6E*øÁ\Ü&Ğ›ñ\Ë\Í\Éÿ\0\ì¾zÁßŠŸEet’„\ÇÁ\ÎUpd\n¸\Ûn,x\\³¥lQ|9¸|F›“Axø]™“!c\ÆuGE¡©\é/‘\ÇË›“\íœp3d]„¿úŠ€yUM\×\Æ\æ6ö\Î\nûcrù®d\ãlŠmY‚­¯¨C,ı%®û\ÎGFS\Í\ä†L^\ì.CÙŒ¸\Ğ.\İĞ’Zq\ÛÜ¹»ÜŒ¯NÄ–|\0©\Î\Ë\Ê\È\ã\ÊlV„’v/eRecõq®»¨´\è«\âLÏóØFL•^­\áÒ\ã)Å¹òª¨²\ŞZ—dNFLt\à9B#\ê7¤8q6Fl,ª\Ì\í{KmÔ„ù~3¿\ÓÁ\ÊøNpo\ËH¢öùk¬œ°19\Äô\í¡4lD~\'5¦ƒd¨n¶_\Ì/\Äö•\äş\îÖ ¤\n \r»¹\éNV<%l¨5{?)¸\\¬y±k—Ş‡©\ÓFE¿=\î\î><\ã»ñ<Û¶\á\å(ñ\"ñ1?şöO+&< \å\0zÀ‚„\Ø?.\Şó\Ñ~\Ö\Û\ÊÁ\Èö\ÎiÛ–¬Bo¯\æ[Yj&“\ëUò/Ú³\íg×¿ƒƒ®…”•SCwBeG–Áö\ì*\åGã¨š9<l¸›\'7ú\ØY‘Ò¨nN†feË²‰ª\0wø\Üò\äô\àÉ½\È:‹­|dõ³c7…EPH…:]>\ØŞ›*ıü\ïI2\\ş©ò!\\ÀµyN‚õğ\ï5z\á\È\ã®\Ê\Ñq’5¯\ËSÀAV4EŸø¸•\æU=\ìËª}F:8ô6dõx©±zy4>k\ŞGr¿–P¹³/‘\"õ k\î©V\ÄV<o§\Ùpš°F\ÓŞªHğ\'\È\ê\ì\r®V\ÄÃ«+¡\ìn>üM\ä\Üú\Û¾\É\ëFg‡F*.‡€ûL‡6L\0j‡C÷‰gÀ‰\êŠM\Ô¼5ƒk­2³(\ê5…y\r•#`ü§@|dbX)n¤´\Ğx\Æ\ÊL™Ç™ò„ö³g\ÃY@`\ÆÈ–9Pƒx´¥±|Eô_Ì \íøi#*\"‚HTÇ \é|Q½µ¢/\Æ9lE\r^\àkh³r1³\åTt\r¡ûÆ’`d\n{\àI\Ö2”úlñ\Ò\".Vk@	\êÙ¡	õ!õº\ZJ™\ÙÒ¢Hóhj>.o/Yò \Z®\ÂSé°«\0œ‹U7\à<#%Á\Ó?¸}\à\â\\G–\Ìõj,Û»5õŒ~ó\îIô\åR\×\Ô\êhı³/¦ú\Ş5ø\ëş1BÂ•G\Â6®È›Ÿvm\Ë\ï\ç\rÜ‚ÿ\0@øõ„û¯8\îsœ+8\Ú[«|\Æs\Ù\\¶‹ø\é \Æ\ë©\Ğµ»	òkOqÉŒ“\ërº\ï~\Z\Ü\Ş=\İò\ãUV~@Ô¾,ê”õÆªÓ®oµÂ§>o*Öµ¬ED³{s\Æ\Âû²bcl7l+~Alhƒ&GU\Ñq’¡üeğŞŒJø0\×\ï=LA‘´\èU~ı\"\è†{³VNw#‹CCtK“ö”w%\ÉlY[m(v”‚q®¡X“Š*U ô:ò5\0o\×rUvş£#ù7?ù4@g\Ù\Üo?\ãN%=Á\ï¸\nY,_L_\á\ÖL\'¶Ë‚¸/õ.T#E/dX+ùÛ½\é2„\Å\Æ\ÎF^0õ„\Ó*§b\æ\Î\Ò>ˆ}\ÙFElxÔ‚i˜ø\é\ÒTş\ç\Î{\'!T:€ ü&,i\Ù\Ü\Üÿ\0jP¿ªFõTØ –\î†\î\ßº`\æ{¿Á^>\0iË®lúº17\ä	_Œ\ã\ï,w3\ÖI$ø\Ëñp99ğœ\Ø\Ôl¡`¬\ß¦kmVY7Y\è.nW#-\ï\È\ÏdŸ3©ğ^Ò½Œt=OA\Ş3&L-·.3´4Eu\é\î\ç©\éSj:r1|ƒ£¹†0\ÛÂ“¦á¥‰\Øm!lõ³©°o¤–Í¯aÚª@\ÛlXö\Z˜Ğ™.\Ë\Ì~^eË™[óeRY‰M4\×\ã;<sN7ÍµZˆuC¹\Ë~£Pa´h\03‚3t# ÿ\0\Òj\â>.#ƒŸ¯„‘¹Ò’5º­Hø\é1z&¿¡ºÙ¬|\ÏG\Ç÷?7‹”ŸS\Ü*”í“£”#\êZû¼f±\Å\É\Ç\âe`\Í\ÎUÍŒ–`•\Ó\Z]‚:\İü§˜\äû¶3&*Q]ƒ%7ú{~•Jh\ĞG\ãş\ç\æñOö€\Z\Ù\í}z™\Ï\íß¢ù›\ß^¬ô\\nGµf\ã\àl¥Ñ¹\"‡¬]7ÁMù\ÊW\Ë\â\æNAı>2ü[Î»\Ø\äf=J\Ø:\éô³ƒ—÷o\ïXñ\âÃ•\Ëzwc\n\ßPPú:ŸŒ8¿q\æ\Ã\Æ|80^˜Dk\æ\ÛdıCJûe\ÙnÈ›\ë\Ü\î7&\\„\\cv3¶*Vlv6ªú€YnŒ:^“> %\ÆS\æ*Q[Á©\0:d\Z¯7„Ï‹÷&g\Æ1úJ|áœ€z\ã°uYŸ?\î.If8)q\éùv°øhnq\n—\íóõ\îY\ËNv3\éò8\Ç\"×§…´¦\í‘lùMv®5±ó£mÛ—c€ŞŸô„=Û™œ¡vC°\ØdP­gMZ\îV2.F,\ÇkQ ¸“\Ò?œ\ëZ\ã(\çkgßŸ\ÆÍ0ópŒ‡.ŒnO0\Ô3-\Ø>•÷>\Òã…‰X\nW\ÊYò\n\ê|\íüf•ú0aˆjAMjBq.\Ä5öf¿¨‰v.\ß2n¤[“\Î\ã0\Ù\Ö\ÆDRw†ºr{—7>\Çgÿ\0\Çce\\_›­\íQ\ÖR§¬F\ãZo\î{¬a\Éc[+Ò¨ıAJˆ^0%…ƒ#7(ªŒ§>\Ü\ê1³[ ªøô¸Í“\Ü\Î\ÇsŸ5|<.Tr\âT}=ˆÀ\ÉBcR\Å‚¿E:o\â!\\\r»M¯\Ûh:ûMH\ï{Yt+F\È\î%L\ìI\'«&T\ë\ÕhF­8z÷4¿¨«µ”\ì\'¡¯ùDLx›\"Ñ±~dmü\åkŸ\"ŠRTU\0ú\çxc\ĞQ¢\ÔM;\Õÿ\0™¶S\"m[¢JŸş2\å\ã#.\àú\n\ßZ•³\á*T\n©RMŠ\"ø\Æ9q+«¨\ê\ÊMğ¸[31ıCw\ÄOô\'cy\\dB,0G\Û\Ş]c¡\ÅB-¦Ÿ˜v>72\àde·\Ú\r\íM\à`l¸·¼\Z€Rt\ìnn›k£F/6ÀnFL\ÕQ@\È\åG¼¿fé™˜=ùT|@©¥±\àla¾\à;¶¨\Ûö\ÌÅ°nQ~f$>Æ±ZC\Ñ9’“$gôîšøÅvwb¼Y!€I·\È\Ç\é•\È/\å§\ßZ\ÌRY–¶urŒŞŠ\Ê£.ufòt€¡öwû\åE\Ø\Å\Ü\Ş0u\ë\r¶å–«j„C \Ğß„ xô1ŸQ}¼d1¶m@°Iü½”B9 \0\0lVšÿ\09PfWU\ÔH[v§\ê\î|L\Ö\î\Ä\Û\ÜÚœ\Ì#¢lFt^„øùŒ´{X\Øm6¶\Ó_ú\È\Îuƒ¥\áq;^ m\êIş¸mEùyù]÷bU\Äj†\Ğ.¾-(Å“c†,\ËÜ•\ê`ô\Æå˜¸¹3\ä‘Yò¹¥¼“‰,¥m\ØÃŒJ\Æ\ì.„ü{\Ë0\â\Ã\É#,m—!\Ğ\ì½O‚„±}§6ª9\\|‡PF5\ïSz\ÚkS¡“•\í¼|\ã0\èŠ\Ù8\Î\ß\İ=\Ô„‡Mf\ßö\çö7Z.¸õ\ÔÁ\ä\ã\Ä\ÎÎ¬\Ê\ÃÀ²€,nüfs\Å\Î?)Š\Ñş&uñ\Û\Ú\Î`\Ì3\ç\Ê	\Ä\ì€\Çjæº¥1\é3/­\éS\\w´fß³‰9§&ôÀBõ\Ô\r?Y\âó[)ô—C\ÔV\Õ|\ëZõ¾\Â8qó\Ôÿ\0	\Ñ]ôÁ\Í\ÑO\Ûmş\ßÁ8s\äA\êf\ß`m;Š\èüt\èzÎŸ+„3g\Ë\ê\'­ƒ<$&&;Ã–f-Œ“¸}Zü>S…–qñ•Ø¡5?S©™\"º\Öt8œ\ßt>\èøs6,ü|[¸Ù¶\éo·S[}BH\ï\Òp\ä\Îz\ä\ï\Ç‹\Æ\ãû‹\à\ã\ãËƒ7•ñg\\mş–Db\Äùô#¿Zœ¾n~\ås9£&Äƒ2\ã\ÈKd\ã¦2\ÕN|MuøN\ÎN1\æp\Õ¿J\ÎWDFÉ(ò®\ß)º®Ÿ:™ß\ÈÍ—\ér\Æ\Ä6\à\äƒ\ÎTµ\è X›¯I•¬•®‡ÿ\0mÿ\0\âd\åbõQ0\0\ï‹2\ízmMi\à;\Ìm‰ˆK^ ~o„\é{\ç/2òO‰\È|¾š9ù6«\ä\ß\æ(]~½£¥ôœ´Ç‘E‡\0şm¶	ğù\ÎÕ–²r´\'39V\Æ3»\êRN\Õ\×\ã\ß\ì˜óª`M¾Vfp\ÊÀê¢¾“ó Ø‰›¥¦\è³x_IVS…±GŸª0\Z‘\ŞşsK“/8ƒ	2e\ÎY+Ê¥™E©?)°ò“-‹,UKZU÷¡v~¿l±1½Š?\ÔP5¢#YW5\Ìøq-*Y\0U¿1=xùûœ,¦İº{!ùEqé†‰ĞŒ—¸\í:£òˆ}³˜ün^&Z½á®µ\×Bx1ù™©A,z\×\á.Â™=`BÛ®¤vneÎ‹F6¥X\Õ\êz\Ï\İ\Ü/\Æ÷^81r€Ç˜‹­\Éô¿Í“øN¤›<¤­\ÍDWk³\ÙCû—¶n÷2ƒªšt|L+\Í\âI\å=Ã‹Ÿ‰\Ë\Í\Ã\ÎK\ä\Â\å\rV£±¡Øg\Æ\æ“\êwSµ6Š²l\ÇlÎ¤\íóm¦‰¿U\Ú\êö/\ÊHağù\È?£JıC§O„V\ÆYƒŒ!|\n\ZŸŒg\Ô\ÖW jª³ óT³t(\0ê†ºüj*#øj\r\0ºı‘N\ä1\ïZ(–HE›É­Ö ]…£\á+l‰ºö¹\é|ˆ?V\ÑV4¸³õ h€<|d’Áa\'\Ê\ßÇ¬„…\r¹·R5ª=¼$\ÙC\Äÿ\0\Z\ë&\Ó`\Z\'¨\Zˆ\ÈÀ,¥\rzˆÛ¶‚m\ÚüDFP\r]\ÖMµö\ëw&J1\È…¥\Ô\0¢‹Q¯x¡:Ö¾\Çi(o@5–X„7¬¶½7t\×\å*nB\îÚ£¡­;\ÆPIñ\Ó[\â]Ú\ãq–L® \Şjò¡ÿ\0¡Ü‚Q\0M\ÇVûbĞ£\æú	”ô¯ˆŒŒ\Ù2„°\Æ›#j^Û§S\Ôm\Ôu:\Ü§ùN¾\"¤†YD_n­»·NŸ\"b†¿\Â\êM\ß\ÆJ­oO@‹‘Á\ÔPÏ‘»šğ\éø\Å7WTºH¤ñQ  ‰\"û\ä#J0üo\í\í‚tşb \0*úGÛµA\Ş\rüuûecpZø@@«\é\0\Ğr½\r¨ ½¥LÃ¸\ÔıGN±Ad\Z6u:\ë}\à‘­ô‹k÷v\í![Ö¬AŞ¬x\Ö\rn\Ôø\Æ\0\'q¿\ËZıó®0pğq(Ç) ¶dRMõ\í\Òf\äbÁœÿ\0\ã\ä\Ã\Å\nªv¹a¿Ä6\é\n\ë³Á€;n½«f…WÇ´\ì{o/Œ0e	K\æ\Ü\êX¾—8Ş›1$°`;ÿ\0(\Ã&\\kµTÖ\î;›‹VP­¡\İø†Ã—‘‡™2*\Ã\"nÜ¥~ \Ï:\Ã&#N¦\î\èAğ \Å<Œ\Ì\Û\Ë1=\Î\â5…³–,O˜õ$õû\â•uPÜ‹4Ü¥;ü/\ÇY<õA@ñ­a\\\ë \Z“Û°ºÈ«´¬Ñ‘Bg¿-©\ìDwL\ìu\È\r—ø\ÆõTøEõ{Yo–¿Œ¤p-ôÇ¿S/\Ğj\0U\íJ%#.R\rCÃ¡û\ä\rhV»\\…4n\Øt\"‡[¢—ã¸­€’zÑ”ùûöñ“Ô±eş®‚¯¤²H4G\ÓLnN\Ô\ÑB±\Ğ\ÓÚ¬·)6lv\Ô\ÄVmş}¦şe\Û\Ø\Z^¾$\éQ\";b\ãcR72Yu‡\ì\Ò\\X\Ğnd¨,Mü\ê\â¨l–i\ên\Â\r™Á§\ÄÄ´~\"Iv:³ƒ\æ yÀ(a¢öÓ°\ï¨\ï¶v]Ë‹rô$JªA;k¸\ìH‰$/Cc‡É‘]q+º\r•õ7‰””\å®\â™§vº|>\ê3k\å`h%k\ÇH\ê\îË“\â\Æ\âJ—c3úŒw2O\ÂH…[\Z\n\Ô\Í\Ç>P*\Ç\Ãù\È\ÜÆ°HÓ¨ñ¿¶!Y…0\ä\Éj \é­ş0ş£\ßJğš\Æu$jHRt¾\Ç\ÆX2`cµ\Å1ü\ÛE\ß\Ùƒv9¹0:50\í\Ø\ÊÊ·„\è\ÃGx%ï¶¢VBö#F“f:=ÁƒI°½>b\í±\ÕU~:ş·ÈŸI&¦ÄƒCDõ€ñ\Ôı,Vüu“iw\É=\É?%­\Ô\Ñt4 :w=di„\×B¹4\èe\Ë\Æ\ÈÚb2qw¶\İ\Õf‹u!‰Fz’^\Ü\\©vÔb/¢Hµ!q\Ğ\ËJ¤–z9\Õ¿F š IT“RqV‰w\éù@0®\Ô\ã\Æ\ÙvıF\ÚI3\"3\ZQf\\8ùö\î\ÚH\é§i»\Çb»•\0\ÒöŞö	sñ›\"\Ö\ç\ZU€\0¿·´Ò¬¢;\Ã9xø\ÙrµI#­\è#¿.0 U\'ò“¯\Îoıt@O \íf¬\Ê\Ü;c-|‚ƒfª@Oùy\ZIgM·Œ˜JcR\0\ïSZM^nkœ|,92\äÊ…Ìs«Àö\î.W§\Î>ª\ã¦Cˆ\î\ØOÓú]õ\ÓO\Ş\\|C„ñxYq\âÊ¹JŒld\Ù}›\rı½§+r%¢“­x\Û\Ôó\éûc\"ñ\Æ~VV\Äì¤ŒE\ÚÃ v7_w\Ê.l–Ã‹‹\Í\ÄT†\Ú\Ş`\à\èB\Õ\ëğ¹\è3cË.|€\\rI\Å\ÄÈ™±È«»{nO1û.^q\Í\éc’\Öø™66\Ô!â¾¶zƒS­œú\Û\\\Zı³\Ù_\Z;g\ä;£ <gÇ•Õ‹\rOzó\ÒcöÇ“&~L\Ë\ÌV¼82ªm•i‹n#¥|µ^w¸q¸¼|Ì¸¶\"†)›eP#A\à|<u\íÙ¸\çNO~5p&2i•˜Wœk\Ô³9\ï%ö<™\äd\Ê!\æ\ÆM¸E\Æ÷¸‡ß¶¬–\ë):&‡\Ï\Âl\Ë\íù\ß\Üs»9\ÊGª­`c4W%\êÀ\Ì5\ë0+ñ²\r\Ê\Ê\Ë\â\íGNwY\Ğmø‡\æ\ÆMÁ´HğQ_Œ°õò¨?Q„u¶ğ^\æm3\r#\'2dÊ„¨SQ\Ûzn;u\Ò&\à\ã\ÆÍ—Ü².\\«»\"5¢>ÿ\0˜ô\ê\ÇQ9½İ”x[j6™\0\×zv\ÍıË‰“9r9G:aã£}OSE_†\ß	E\Ö|Ñˆòw	\Îø\ß—“\ÆÁ»\Ó\æd¡\éfUµLY‹\ÓO\á\Ûy\Ë\î>«eÏŒ{®=™0r‚mò¬”\ÊXGz¹F?i÷\Îô¸rm2TR1†{£~¦„\n±¯\Ù6ğø§›\Ì\Ç|Œa\ßõ\n\É\ê³\ä´¢€Ë¯\Óö‰\ÏLœ\îf>/\r‚!g\ÎŸ*¶\Õş­\Ê:Ÿi\Ê|ü\å|»Nş&cÉ™².Ä¼j?(±}¼\Æ/\é•\Ğm%kuY»T\ÄœL›Ó›•·/¨‹«n6\ZG\İ\Ô\íB\î¥x\ÜÁúL\Ş`C£¿	w\ï\Ør2½€\Øöš;´\×\ÆT\ßR4£\âÙ‘˜\äU·f\Ö\í\Ú\ÛóJ\Î	ÃŒ’Xnv\ìHÿ\0	³&€…R,’ (\Zı‘ñ*¾\'9E;[¦£°Ğ™\\\×)°¢øiOC7*qŠ[¾E\Ñ Ÿ¦j\ÆQ\Ó[\Ó\êªÜ¿.õ‹“UJ5T\Zñ&\r¤\ê\íC®\Õ\Ğ¶k\îZ\É&ğŒ¾*Õ¶–Y\ÖöFL|€3°!€A¸\î†Ÿ\Ò\Ë\å3¥û£\Ú2s8‰\î¸ñ2\å\ã§şHpw¾!ô°\ÙÔ \ëğoFEÙŒœxúJ‚~]\ç¦ı½\È\Ë`±\Î\ètõX¨\Å^\Ü\ëöNwÃ”j½™\â\Õ\ÔDPR\ÜlUøY­ey–ó¯Q¨¹\ßıÁ\í«\Â÷\\¸q\íN6Q\ëaUEB>~>“\é0mŠŸW\Ò\ÕK6”¤\È\Ü6g¿ $’€÷øığ5mĞ–_‡Z–²º\ĞpPŠ\ÕUöi\r\'\Ì«\ĞDL»GB\ÅI\èj:§”÷\ÜØš6‹òŠ­j@ [m÷ˆS[G˜·]O\ÄE$P­|Ÿ\Æh)©\nÛˆú~?ˆI\r]º `N¦\Çğ–\ïÀØŠºÿ\0p_Ÿ—ÿ\0©zHPl5­\ß3}.»\ÔŸj‘JH\Zˆq¿À\Ëö bº\Z¹6T£]5\é\0fş\Ï\Ò^–#£`©©\ÜH#ù\ÇË‹5°\r%l˜ôÚ¢ş]#\à>!%¶;=tû¬œah½³¬¼ñV…Ÿ5Y\èE\ÄSÀ\ëq\ìV]Ä«hzñŒ\ïñjX0!Ğª~\á\'\éqUª…®¥»ı‘ù)m47]IøıŒ[\ï/N#°ò• |v\Ä\É\ÇlF² Š»® I[7zÁT|;ı¿)=ü¶~ Àq°\è~ø‚\Èk¯›şp•YmGC\ÖWL\È\È‹\ÓO	\0\ÛO[³ğ¾‘[MzšI»v…oJ\é\Ò\ê\ë÷\Æ5\'¤šü\Ç\ãüL,w\05 |\0’$¯…ŸŒZ†—WG¨‡\áZŒ@‘\Éµ\Õ\ŞK\Æ;]øÅ­+u\×C%…¢O\ÎY$\ê\ã^Š\0øC½H\é§sq±¨¡\Ú1bÃª\é\Øi\ä{/ ¯-C\Ö\Ä]H;”\Î6\èTp`6\ï«ÃµG<Š\0?\Õ\ŞTGù¨‘T­\ÇùI,°‹ıR\â€\0w\Ğk\nn­m\\ ó^¶zBYtAº\Ô\Ê<\"X„^ˆ\å\ëÍ§™k\à%¸1¶]Å¶®\Û\ĞYcS>\ìDj]« ÿ\0”+\ÌÊªN \0\èKD±¼q@\Ç!­\ÓCò\ï3ú;K€5g¤lüœ®T1\Øõ4\Zü\â\âÌ w\Ì·\á÷J\ØH±‘´·%ô±Ö¾·w\ØÃŸ>òUIQ\ŞÍ’%Í¸·w÷Ì¶T£\ÒÆ‹°\îL½p©ó_bf\Üodm\0|7W„\ä¬	8\×\Ìj‰Ö¨Ta—:>÷qº´PbD=^Z¡+ˆb[6Hó7\Ê÷<c\\¨¹2ı$2ô>\'´Ë™\È#k5ƒ\Ğ§\ÇIz+õSk\×O‡\Î&4gR¼ü’\àR„\Â\nİ¯\ÂY“ƒ\êª\æ\âƒ\é‘ejB\"e\Ä\ç\ê$¹\êE²A\È\ä&‰l­\ëf%« \Ø8\Ù2L°¨µ\ÍqsbP \æ\0hE7\Îi\Å\È\Æ\Æ\Û\È\Ú\rŒ4?##&L …óª‹\İÔÒ¦F²a8\íEyXô\'Y+\î»Q\ÔiZ’H¿ñ€e4Vµ=d’Á,¹\×\åq\áj|\×Q\05\î\ë\Ò^¼52\r#ŠkTEÿ\0)œŒˆÄ®=P@?\Â2¶LLwNı¥\Ì\ã\Øfõ®\Ò\ËZ™i=~lš\í$ø	ˆúE\r?\â¦\ÔÍ‚\ÉW\Ê\âı‘r9\è\ÂÎº\×\ç,§\à\Ó\îb.I­µCR# \r\Üş˜f 	¿b+c\ØMØ¸j:„\Æ;‘\Ó]­u	\Èz*ü.µ‹Š\È\n„\0~\Ø\Ç\Z«G\ÆIf¡\Z°òó.1\ÆÁĞÀÍ˜±ûvd\\\Î\È\ÒğœüW#„S©½z-w\Ö˜²z¬»C¢\è«¯ISpaª\Ïbü£±(¢-ª½o\Æfu`ú ° UøKñğ¹iµU\ÂX³°:ô1—€A\ä\È\Ïwf¶\ßN’½\Ì\'Tfõ\ê\à6RBŒ]šû\Øğ–\ã¬\'v\ä\ãz\'Vÿ\0¨wšÿ\0B[Lgp>	¹\ÂÀ¹v?mÎ¸†oI2bR»\ÜX);u\éó1	&m¹Ú›3®qp8\Åu±\ä\Ó\Ã\å2r#);1•\'MªI\ë\Óÿ\0X\Ùòf<…C°¸b1?/‡†“\Ñq¸~\Ä=»s\ä8½À¡w,å”°Fºøñk\ÕBsV¶r\ÒX<‹a\åc\ÈØ˜[¯Ô§\Í_(\Ç.w\Ä1‚\ÛCo\ÚG“wBk¥Ë¹,98AU*\Z‰ó\r>’³Û³¾F<\æD6\è:²x|\æl’°j¸\é#ğ=«\Şó\çÅŸˆ…\Ù\ÈÛH¯û¬öø\ÏQ\Ç\\Ë—Nnœür ¦BÌrmòî¾3v%\álc\í…I\ÈŞªz\ìA\Ék\Ù\È\ìf¬„„‡\\3œF\ïa¯©~\Ï5­/DEkdNKqqñ›!ƒ#°\Ş2RŸNÂ³:œ şá—“\ÍFG\Ø\ÊÇ‹“\×\r´l]®º­I½<&\îºaö\Şl^/ 0/Œ\ï]\0_¶\İuñ\ï,opo\Ô\ã\â®\0\ã!¼­” \0U¾3\æ@Á¨÷“\Ô\ÒğsròŸ\î\Ì\Ã\ÓÉx\ã#0|°Se_23\êZ2\î?0c|yğ/­™\×\ÓwÅ•rŒ|…—Ë½S\ÍM\Õ{‰Ÿ?bÀ›\'Œ™²6&\ÆS\Ô\Äû\éu \ê/Y´ñ}¿.p`É—¹vúj2ƒcÎŸ— ×¯\ÙAd·\İx˜ù8òó8Ø”–\Â\×\Èõ=Ú ŠÈ \0\Õ\×Ï¤ù§Ÿ\×SD„÷|Ì˜8\\|œ¼Xr\â\äs\'÷d¶°\çk])*y^Gr\Ñ+F¨d]OıÃ¼\Õ-=IzJ\ÇC\Zó3)²‹.¿x©£œò²œY@Ue6VÁ”d\àrRöx©şR\Î\É\ÉV|l«DE\rD\ê\í‡\â©õ)]K/oG\ÓR?-Øš0f\İ\Î\ã0O&Î \ØÆš¿“§—¬É•x»‰\Æ1º®‡Æ¾«\ì\Ş\Ù\Ì|£”„.l¸re\â³m„…d5¡\Ü\Ò<\ÇIsÿ\0Q\Ñö[uş\Ó\ÓGŸ\Ç\ç\í\äqpÊñX\\™\ÉÖ®s}Ù¸Ë‹ôœF8°\äefÁG\Ô@¥f6n–Šü\"{rg\Ë\Â\Ë\ÆÆ‹³&3¹·[*d\ÕÀ(Ÿ)VE\àsw\ÆJ¸‡V!A ºÓ¤´‰\Ë\Ğ\Í\æ0µ8\ë\í\Ê1»e´izYc\×^‚\å˜ğ\ç\Æ@Q{z\0\ç4óp\åL‹9u$YP…•¨\è\ë\Ø\Ê\Å-E\È#PSh¾Ó´¯ô8\Ãÿ\0QUs‡\\ªV\È`t±¯\æù\Åô(ò›­\Z¶ŸÂ¥£G#{‘B\Ê*\Øüc5¶¬wZ\ÖY$\ß7RXÿ\0P¡]¿12\Ìxs)ş\ŞG~€‡¢¤‚÷—\ãTÖ¶\Zª\Î2¹\Æ\ä*\îÏ‡\Ù$\'ª’\ËO\Ì\0rGA\Ğÿ\0WøJö¹6zø\ß!.9VÁadN·¬h\Ær‡WiVSñ*®£sx“w\Øy›#d\È\È)UkO€İ¢\Î{6Cô/rtñò‡%0·÷m\Å\Ö\Ó\åKù)¹\ÒSG&šg®÷ŸW\Üod\äV<\Í\ÅuÊ¾“—l@©¸/O	\ãwg÷0õ\Z¡üD\×\É÷\ï{\ÄÍ‡\ÛJñø\Ô\â@»´\×\ë³2{Cò8œ¤\Ï\Ê\Ş\Øs+\â8£&ÿ\0&\ÂNƒ\ÌGMDÂºI›tn?H²¯¬W”­—õHFóª\Ê@:‰²+}$…4,€j\ã\å\â\å\Å\î9xYG\î}¾Ua‰¥u¾ñ°6lô4f\ê\ÓÉ‹&°VøŠ\ëfüj\Ç\İ‚Š\àç¹¢+\ì\×Hş£±Öˆ\ïW_ŒZÕ¾§ğšô\'©£‹.¥¼(¯ñ“Ì¤€T\ë\áÿ\0\êl\ÉZ1×©\'CöTP2­ùzõ ”-õOM4üU\ã§\ÔT!ğÈ–°$­\Õtdz²C\Û§\á + ¦\à\'u«ş&2\åb¶\Î|6©•\Å\Ğ\éù¯üP=C»\ÈÀşu”Š#g¤±\Z€\0\îL‡&?\Õ\0Æ£±¾¦$@UÁòŠ\'ğ2\Å\Èe\'¥wˆ¸ñ‘D8ñµO„GÀ€Xt$÷¢d`¾•…\0Uº\é\ÒZ\nÛ—°Ğ’(~÷Sh\Ì(õ–c\åòE/•\ÇÆµ‰\r\Z[\Ğ\Û{Mv­E\ÊØ†]\Å4ü`^k\0T\âQ\ãdó‹ú®J¹`1\íª	W^5,¢C,\Ã\Ç9—r(?V”\Û)ËŒ\âfDõWO²\È\ä-¶\å(j¿\ÂVÏ‘º°{Bˆ‘ul	b;\î\î\Ít\"\0\í¢)¹\'¼‡A\Ö\Ë\r)\ÈQ½,d$€;iÃ¥G\Î2\âª>e©a@™g˜\æº\ZT@“7\éØ‹\nG\Î#cPt\Ş3_¯Z\Ş+®½üen\á\Í\ì\Ø\rb–g*zŸ8+\ç¯]%\ÅCYğ\í\Üt~°zW\Æ\ä%;\ÊM¤Š½%v~\ÈAš\æMö\Ô\Û&\åª\àÕ…¨=F°‡ \Õjbzw€³\0¼)EA=\ê>pNÏ—·S\ã3‡eÓ¬\'#\Z$Ai×¨\0xBØ€t•± \×\Â5\íñ‰>ºø˜wY¯ø1Iğ}{E\Zv\È-\ÚI+À g\Z¦¤\è@ë¬¨³/·\ÆP\r:V õa&®¾)HÖŒF\Ê\ä’[¬OQµ$r5¸¤\\³ °¡¼Ã¯´L—fÌ¹rš\0\ã4œ…1«7»\Ç\ì„\áÈ«£†K\è~\ÙJgÈ·¢›ñ99}¤ô£\Ğ\Ê\rXó.\Ó\ê†ÜƒU U|\ÅCŒ«÷º\Ó\êr\Óumj›S~#I”¨\×K\é¯Û¤\èdÚ´jû;w—¦~6@¬X.N…H\ÒsAYWK\ÔŞµNä½ªo\á\0\êd\ã\ãÏò…^\Ê\Ê(ü:L\íùÂ“i[J³C\Äx\Ä\Å\Ï\\:¡R\rõT\Ù\Ç\ç\âuRH\È*¬o°\Ö\\=I•¡‹ô™6œ›‚.¿V%À\î\'\ê¯\á;3+«¨¢zjk¿„É‡ƒ\Ï÷	F}\rW\ß\ØOs*\å\Z\í\0µjŒ:\Åô\ÆB¬ \ã\Z€\Í\Ó\ã¬WÆ˜I\İ}H?;ˆ¹)Ô¨¢ ô¸9wC\'w¤r¨‹¹­\ï G\'#²©MGM§I2d%H\Ê6§B;\Ë’\Ñ9¢Â€@ \n™\Ğf9Y:h>\ç\ç¤5 —h½jû×Œ±cB\n›#M{ığl»\á9\Ò7U\Äß‡\Âh\Å\ÆR?¶\0û/¯rL\Ì\çf0ö\âš\ïKúD¸sL¾‘q\é-_n\Ş\ÓX\êa\ÏCf<w;nU]¯\ç}L\Ì[2\ãD_ôõ_\ÎSÁ\ãò9™qq6B¤+m4ã š\ÛÛ¹\ÃF?O\Ò\ÜÙ·‚\0U\éD\ÌzvªÄ¬t.\Û<ÀØ²SoÃ¯a}\ÏùH9¹0\Ç\È\nƒwúº\Ğ¬-™«\Ú\Ç–¹øMF6s‘	-¸*\î2®o¶d\ã&ODÉ²ó\ã`P¯S»Q¨\ÖO»]~\ÔÅµFÿ\0rç¯¶“ƒkr1\Å\ÈVb\×ù™HÖ¾\é\É\ä\ä~F?\Õò0e§\0eÈ”˜Üê‡Û³\æ\äpğ~ \'\'*)É¼VõS¦\Ñ_Ÿ\á9K\Ì\ãa\å\æzlO‘\Ë\äT\Ü\ã)¯*œ[|µ8®W\ÕKZ½N¯‰tp¼`\á\ä\\ó+ úºt\Zô•dËµ6ntº;;ıB\ç±\Ë\íş\×\Ë\â\â\Ë\éªdÿ\0W(A³(-¨\r*\â\ãM\ÄdnN.8	\0e\Ú\r±ğ\ÒWÌ»p¾ç’¬¹ŠH\î\È\î@Xı§^²\\¼k\Ò\È:X(À\ÑÒŒö\\u\Æé—À\æ\ã9ùnÍ\ÓXü\Ôh«İ£¿#/¹+~§Š\ãô™¿‡P5\0\n\İ\â{Hù[\éƒKŠ:{‘‹~[¿\'ˆp\êH\ÆHx\í=>s\í\Ïqg\çoË>nNpÁs3¬·ª\ìZ=\Ì\ìp9<«u\å*şƒhr1\\“qòŞ½À\é\ã3û›·µ.n=À\åb¸\ÉQ»€\ÙCt›z\Ì7&Òƒ‡\Î\Í\Ê\çò?ğ½¿\×\áñ[ !\Îô92·™\Ãy@_,\Û\é7°ó9<n?•™\Ôzß¨\È7ş¼X·^Ÿ~\\88Ï—”˜²`\ÈT\æÉ€9~.LBÃ°ò\Ğpu£\Ò>\áÜ½§õ[“#Õ¶\ÂT\äFLCs*„]\ŞjzI=–4/¯©W39øg9Ìœ\\¡s®5`2`Jøõ\ë/ö¾@\æ{V5A”c\â\Ş\ìY†ûbE‡\Ë\ÕG„l\í\Ã\är°\"e\ÆËŸ»û^t¦²\î\Ê;\Æj÷L¿§\á¶p¯…gl\ØY@ıU…Ù—aón\Ò\æ^™4µ<\ß\în.G¸8Ö‰¶öo?Y\ÃM&-Ä‹\î4\"cX—clÄ–?©–£ğ•\×“.\ê>PN—*¿é¿ˆŒ	±ºH,•òp\á\Æ®2Y\r§¡\Î?’ş‹‚Ø¹\\ ¿£Ä”\ãkR\æhµ²Aû\')\\	8ü^@\Ê·b$‘¨\ètš–\Ôv\îa\Õ\'1¯cÕp9˜¸\áº\âÌ©•~§\Ü\Ã6\æUG›O\Æ.^g\0®_O6 \é\éš(7.\ï-× –ñ¹CÜ½¿ddıIË—õxÊŒƒŒ\Ùr\×H(˜ù)Ÿ’£‹.%İh]\àm£P¿}\åL\Ì¸\'+’¸óñ‡¦Û².f\n¶£\éZGG\Ù(\ä>z>¢šq\ä¡C©óca\Õ[\ç¡\í&/k÷¸\ÑS‹\Âô›s²\×ùYñ²g\ä{WºaÉ‘ÿ\0G\Åôôİ…or­~Vú¾Ù¥3†a\ÇT#]U…Š‹;X\Ş\ï\é¡2N\ÖZ\Û]oHƒ€7¶B\n‘\å\Ædª=›¬­½½^\Øe9\0…\Ê?\×\êK99}-\ã\ìW&C‹£¨½~\ÈÊ•[À:Pm\ß|\Ê\Ø3+ZS\éEZ\Ë|<\ÃI¹*ÀL¼¶H?Oy7>¨»WFkl\Ù\ê§\à\ÆQ\Íl­\ÅÉ°\â‹mş‘\Ö\ã!\Èä’„6·¹A\×\íƒÿ\0(*\î°N´À\0s¤­¦‚«O\å\ÊÀv t˜ \í!¼\rÎ^˜š(\Êtû¥_\íøzœ^\'%\ÉVt|W^K9œqt`•\ß\Æ\åx®d9\r\êNƒh\İ=%­\é\Çùt\Z\ëC\ã(DÈŒ2g±2nÁÓ ŠûR\Ş|ÿ\0ø£·`Ç“‹\îŠğò“\ĞÍ›/Õ•\Å/!\È$|ö>S—\Æíˆ\Å	[R\0$\Z¾“©‹‡Ÿ—\íÇ‡\ÇoP6\ärcr»\"n,\È\ê@júHd\å^Á‘Ò˜ù2\r-3\'—\"0\ìÀ‹ø\Ü\×\ès\ä\Öu“\ÜuV\n@\îuù@K$\ä´ulq\é‘ş-\â\ËDÀvt\Ø\Û`\İü\'S\0EÅ©9\r­³uğR*w´A=~£¡° Yºı’\Üdİ—,O~ƒ\ì‰$%€¤\"÷¨-_(Œ\Å\Ğ\í=¨¥øö–\ïV$‚\ÔE±“ü#\r¦\È	úXê­§}\İ cGPw1u=\×M?œ°.\nİ•HÑ”‹t©ß£ô\Ô\î¡ó\ÖT¹u;®\Ç\å\ZXğ¯h˜&–Â¢Ø„e\î(Ü¬\á\0µ\'ü\ÚDlˆ\Î6/V&\Ãx`õBùt\İv ÿ\08”!n¾VE\Ñ_8:.„|@1_+j\ŞP|;¶#Y\×\ÓR:š#O\É=‹\Ë7=n\në ŠU/ÍŒ©n¤u€m©Z^\â\ì‚>\0\Â\Ì\ÖT\Û\Ô\Z°L\âî§­0¹h™N\ê\íÿ\09S0P<·ÿ\0Uş³altğ\×\ì\Ö\'\ĞG–ZQG•²‚>W¤±1\ã4}EoŸ–R2w‚\ÏA±\éLOˆ:TI \Ğ\ÙT\è™6¨\èilOS(†S_aˆê¨ú€£ğŠ\Ù-v²Y_£M!°‘hÏ”V\ê\ÓÁ‡\ã#rŠ×­\İ(S·L˜\êüª\n\ÒÇ„O’Ág­~ZùÁ\ê9k\Ñ~5¤OY¤_õ\ÊEÉŒŸ¤|\ïO\Æ\'È \èÆ¼j\rù>­ı;\Ç\r·¥¨?\"$Ş ;´»ú`An¾ò4=I)f\rû\È_H·]’Pğ³ñ”0“xP\Õı’\0¸7\ÛoP4‡\Ó5u¡\é,	\Ìu{\Zö(ùB\×\ãô\"F`½˜nû%‡›h ,\ßh†IE[Û·Cö2\ßMÇ§ZñŒj£G¡\ï$OI˜›>`.¡TP5[nµ}eƒŸ\"\è|~\È\í“Á\é \émõ\Ó.\ÒIŸaú€~Ú€¨¯Œ¹v‘«7ZFô‰ağ1JùI ô$k\Ç}N\Ú4Ğ‘\Úl\\Z+d\é¡0Æ»z\Ê\æ—“/“Á“ó’\È\ÜG`?\àG*\Ï\ä -j»_\İ-|Lhy«µi°P\İ÷°»\Äô¨\àWˆ³ÿ\0(|¢\×nõ^¢€ü\ÄGô\Ô\n \íğ¸Ap\Z)\í@õ\íq´+1\×&2@ºhƒ©­t¹Y|`ºö&Â•\î~\"‰I,½yv\ê>\è\Ù“…T\çe\ĞB\Ãw\Ï\ÆGVq•pdôòµİ’µyY_\0õ\Ğ\ïM=`,\éFsW\"1§\Ò\Ç\ÏC§„¿P\Ø\ë!gA[(\Øÿ\0¥„$V\Æ\æÉŒ0p]2Y\ÓrwN<(¸.v¥\éŒx°\í§Yy\Å\Ç\ÎfP	;K õøJ\Æ&\"ñ¯¨*ƒ\åF¾«I¸\ÎW!tl„)Û¢!\ÛKöwŒ˜pZ\Èñcu`lNí”…5©\'Md|\èôU²\Z \"\n>T\Û[@\0\ÒC”gÌ\0®¦´üŒ .bõ—q]‹©&($d/·icù´]5\×\ã\Ä#¢8»²\ïò5©m\Ô\é3F%r}<I{o\Ê\0ª˜0óN!·\Ò5b\Ö7k\ãò\í7\âÉcÚŒV\İFyu$Á£+“„*¾’ı·?úYŒ\×\Ì÷mñ\Ç“’\Ølv ²n\Ô\ÍL\ê\ìG 37Ò¤‹];Ğ\ÌÎŒ¸O…±\ä\ÆÉŸu–ğú¾š˜µ+)Ç®\r\Öö†§\Ó&‘\î\æ¬ë•+«P\Zt\é\Ğü¦¼~ó\ÈpW5+\Ğ\r™\riS¨°jq½lÌ§Ôº?×©ù‰\Ü8ø±úhŠ\Ì]OA\ÖxûnN\åÜw›\îU‘sz[•1\å\ÂJ3¨5¹\ÔwùNùn‰›•\Å\Ê\ì\Ê\à9X‡ÖcvŸ|\âVK¦1€.L™V²c±HtØ \é5û÷..P|˜}ooã£˜y…|ª:g6–\îtM¹Ÿ‘¯‡Ÿ\Û9(\ÏúöË‰ñ·\êS*¯\æò‘¿C\å\'IÀÊ¼~\ä`À‹\ë5c\\\è\å‰\Æ~¦¥8Ğ‰‡“\É‹õ0¿\éÙ‚o\ÛX\Ëu»¹©§‡\Ç\æg\Æ\ï‹\Zg\0 UF¶İ•KÒûk\Í\á“Î„™X™*\Â\ã.\"S(¢tª\é:û£\Ü.wË£m:MT\×i“›Ÿ\Ê[€•8Ÿv\å`vÀT«/±\çôóf\Í\ËDÈG\Z†%›úk­³Oky\"Ü‘o\Ş}.Y\äffôw\É\Åck“q\ÜWi°<\Ò\Æ\Ë\Ë÷\îSór2\ã\Âf£r-j7%\Øùªb\å\í\é\ÅÇ„pS.\\\Ìse$³!6®½uó@ş\â\Û\Ûô­\é·\"½TÆ¾š€¿H_ù\È\ë—°§¯Dz(\ä{~4\àû«±\ãs\"\åÇ„z˜\×v¾wS»¥Ui-\äò—‡”eÁ\Ä0ppc\Ï\ÇÍŒŒo¹›fB\åkr°Ett9\ÚY²\äHÛµ”?™¹\\ü‰9	L\0®{\ÜAü»Gi~\Ó\Öu\Ô}\Õ\Õi¡©ÿ\0\Úpr¸a\ä\ä\ÊIc‘[\Ù+‘\ÚÕ“Zñ”\å\æûw16\á\át\n79e\Ş\îÿ\0\æ\'\ç¤ËŸ\Z7d%ò%¿²sÂ¸R\ÅHK­\Õ\åÿ\0\ê\é+¢Mu%n\Ú}\r<7\'Œ\Äe_/g\Z©\\V½\æŸo\ç\Æp\æ}òn\ÔWqsFN/œ\rŒ:tÿ\0|i\èı.V¿’÷F Ú‹û~Q\Ãk\Ö+prõÁ‘s\Ô\æ”3d\Æv\äR§À\ÎnkÈ™¨iE£ ôa\ÚVº\\ \Ô\Ê\Ã4\á¡ø¼”\ãf\\>oE\Ôş¡Aúñu*?\ê\"{¦\ÃÁ÷¾3l	ƒš lÊ£U`nô¡ò\Å*\\o\0\ê½È¾—\Ún\áû–~\'!¹\nl¹·Q û$¾\éN½>dICO\ÛÁ»™\ì~\ï‡9\Ğdsô”bôúzøG\àóùœ|o\Ä\Ê=]’Ÿ¨½®+n\Ç:›>\"u°~\â\â\çÇµ\È\Õ|\à\ÌÜ¿uö\Úfm@±fÏ‡–\æ~ô\á\Õû ¸ŸF½\Ù\Ì\ä\ã9ğdÎ˜\ÑJ½\å(o\ÎGE#¨û\')ı6ÅnÁ\Z|i\éı<^\çÁlœl”1ƒ\ê\í\Æ	\Úô 5òó—Š\ÜlÍp\'/\ë\ê\ãµÒ®‡{µ. \åz92¦uJR®O\Ä\ÛWñ§É™šòHÛ¦\ÕQ_³±\Ìöş!öô\ä\à\\˜ù9+oÁ} 7\İz\é8§\Ô*[5&\ÓD«?ó{“F6À\Í\æWbÃ¥k $}\ã\n\ÈX°!´\×\àGB>0£m«g\å±\å3\ã)Í”?\Ó`€õ™»Ç©ÓM—Œ„µ\ëÿ\0):i\ß\ã%ƒ©\Ó\à:\Î;N\îÃ£7\Ò(Ç‡­“!-¸ ôòn\ÓI\rGPz‰¤\Ú2\Ò¹¿\Ù9ü\\<\ì9²dN-	\nv\äCù_hü¦u½\Ó\rórıÏ‚ÿ\0¨Á‘qş£A\Û!­¤§pdœòí‘±’Á\èGi\×öÿ\0v?£\É\íy°\áe\æd]\ÌY‘÷X¬Šúù”\ë,fQ\Î\Ú4ı\Ìy¸üg6Aly<¾›šÊ•ùXtù÷DZÀşL»\r\ê\rfv½÷Û¸\ÜnC;\ãß¼†6»k}\'‚C\ë\×À\ÎF~?(Şš\Õ\rš1;U¦¥3¥j™Kzd\í9\Ù\0Ö›~:E-TÔµ¯r\Özt\èdFR·ù¼BU›wvÕ¼>Z‰¼mŠ9\r]Ø\é§À\Ä\Øù\\ûkET¿\ç	ªB	=<\rC\êbÏ”\ã^;ğc\É¹	“#¨]\Úûb?2\0“¡ÔŸ”´\ä\ãÑ­ùoú_·¬¬\å]_J\êI=‡„B$²~‹›S\ÓRÿ\0b7Uù¨\êhY\ÓñšÂ€54Ç­_ñ\é¦B\Ç]\ÔI“ÇŒSc\ÌGıR:n\Æ/¬ª)\é÷õšÊ‚×Œo#¨4²R~lw_\ÄD™<F”\ÌE…(\ÈØ—Xo0°º\Ğ	{¨`c5ıT­ø\é+lj,\ê½\0«P>\Z\Ä!,Lx˜.ô¢?œw\â\äF½tòõÿ\0¸E8ğX­Æ¼\ç¤FˆAğÖŠÇ°~ n3\r‘ğ\" ñ\ĞPŒW_1`{\éø\îŒh^”;\Äxä­‚ƒjÅ\×X6²İƒc\ã,e\Ø:-Mõ;HWMµ\áF IY\Ô\î(MuPSş˜&úÜ·\ÊWN\İ?\à\Å:›\0\ãqE\Ô\×ö\ÂöÜš\èv‹ù\éjhG@4‚¨–u‘Ó®\ÚFµ_¯\Û!%\rWN¤\r-]¿\ÓşB•V°‘g¦¾T:õñ€ô‘\Ó\á\á\nzŸC°w FÚ€U\ëğ\é,D+©\"6\Õ W\ÊúA­:uh«\ëÚ \nP—„lj¨\Ù^\àB__²Œ‚\Z¼<`øq\0Z±ü¤‚LQ‹#y–©t ô6\ÌI\ìcŒmT\Ä\ìù\Ë\ìOr–¦:\èG„°»²\ì?OÀk÷\ÇŒ\n:\ëÓ¼€¨Òô`¬ :4–\"c\ÈI\Èôj–»˜ÊºUi\ÔH\Ä0 šwù|¥‚6(#Z¡\Úşp®„»5ŞŠ+\ê1ƒyWr\Ø\Zk\Ú/C¡ñ?\ã,¡@p\ØK2„ñ‹\Ûdõ\Ò>1V4¯\ËR\ÆUa@\Z†:£gú„‚¿\ê[\ê\Ø\ÌeHÍDó\'\æ^µ÷\ÇW,<\Ë\å„\'\Ûk¾H\å²5\Ø#ç¤¨‡\èsdÆšP#\åD@Cj*üt\î4\èV\È\ÛD\ßH\É\Ç\È\Í\à’\Ül\ĞbŒ\ÚX:g©\È\"\ÔZ[v–mø3;x\í£\Öõü#7¬8wÿ\07\Õø\Âøò]–POÕ¯Oº7¦Ì¶i\'±gÈ¡XyC/\Ìõ–. \Ö\×_—B\Â\0\neQ]\Ç\Õ®@i¿‰\ë*#0.¹=M\Ä»XDø\Ä\Ä3\ã°qi\ĞQ¡_d°\É\æPöª\í•\ä†\Ş\\.¶@\rø\"^Hùqn‘S6šù~\ZøE<œh\åF0/T7§\ÛR\Ìxğ\Ö\çó8:Ş•+ÏU¿·rŸ©\Ç\Ç\áƒ\Ô\é+zxƒ>\Õf\Ôl}\æ^A\ã\äGm¤\Ñ\0(\Ğ“\Êß¨\àv\rc\æ_2œNT ”\ë\æš\\²BE©Bq\â!k\ÌY«\Êz4b\ç`Å…W&-â¶—¼\'=†W r¯k>1¿M\ÉR?\î)ú•5?t™\è}=Y±yn\ãû8…Dz\Í¨z³ŒP\íöL<|©6\åk\ÖÆ“O+œªx\Î2³\Úú{	&ün}F\Õ\Ğ9™¾¡¦SµK€ˆ­ÿ\0TÒ\Ä\Ùri\Ë\ãŒ\â\Â\âV­\ÇÀ¤Ì‹›“¿n\ÕÇŒ\0Ş©*MŸ\é\ë7/·q±»˜º)`x\É~k\Ó\Ìı\Ä\çfúg\Ø\éTº¸÷:\\?b\ãûP\Í\îü¯•x\Ë\êclgJwz\ë¥Jù~õ—–\Æ\ãb\Í\êr†\í *>A´–õ5•\îÀü\Â\é™\Æ*Ú–\Éz²µ/À\é8y}×‘2\á\Õq«&\ÖÚ½62›S^–\ÛY\å3®ê¥†‚\ï\í\Ù=£¸\ßÁgp9É½\Ôÿ\0pf\Åùx\Ä\ã{’zi›–£(!‚ñ\Óv/H\Ş\Õú\Û3¾NQş\Ûy8\Äù°\âò\î\ì%¾¶\Î=<A\n€¿®ûŸúf\×²s|½Šù±‡&.F<‚™Ë\àıV\İ\"g\Í\Ê\ä¾^FF\ß\Ëz\Şøı\İ&Œ¸Ÿ:6\\›Zü¨4ûj N&,C/÷rbWAô½tóÎ‹tùœ\ß#\ëò3.\í˜P\ØN¬ô	û\ÄW‡.\æek;\ÆY(Á›#±´Ì¶¤i— ¾ñ_&, ¹R‰|\ÅO•™µ³„²\àSyPEB?˜/—Àˆ™_\Ô1«cP,ü®R­J’\îO•¿y\ìf\Õ\ã\çe]›p”\×oPÂ¿1ñ—=†¬\Â\á“\"QjÀ²<o½C‡“\ÈÅ‹\Ñ\\\Åq²”8«r‘ÿ\0GO·¬¼®6\ä`¤jZú\ÛIW!¸ë½\Ã?õ‘Z—\ç©\ë\Ô+4ñ+Ğ¤ñ\ß#\ãõr¢z‚ƒ‘\å]£@û—pò7ú)«0½¨I\ág!wc]„[N\ĞO\Äw/m÷ö\Ål™_–\Ãûn\ã°\rC7m\ÇO€œ\ì¡Ms\à\é[K‹`\ä\à\Ã\ÈÉ›\Ò\ã£\ÚùWFò‹oºl\Îü\î)ô}\Ã©u0µ)‘|­s^zš=\Ã\'w,hÌ„*8\é\æÖ»‰G¹{§+\Ü_lhœlU\éñ\Ö\Û#NŸŸ®:šú#ùd¥pb\Ìp\Ş\Ï\æ\Â\Ú8ù@”\ìe ÿ\0I\Òbp\Êå‚”­@\åùMx½È”ƒ:„\è\ã\í‡Tü·kşE\ë”C\íğ¼D\Û2j¹_	ğqc\ïú|G\é\å\ã#\ãbge½}\Íı\Êù^\ÅMŞŸ|¥÷L\Ğ\Ül_™Œ\Ä\İ\í¸\È\×\')úúT™¥W\áw]%û“ö\'\'!\är8@ù2&®E…½&Œ\ÕÀÁ\ÈÍ—*\ä\Æ\ØÃ–rK6\"N™”\İW\ÃI\Éö\ÎG¹\â¾f/öB•Ã‡Š[\Å\È7¥i\ã:i\î¼|¸2e\çğ×Ÿ2¬\ÇwŸ\ZS*ıu6\İ1m\\d«)N\nsóWƒ”–dt\Ìh™7:£c\Şÿ\0I^³\ÌÂ­‘ŸPŸ2¸;”÷v‹\Òl\ËûŸ›><¹¸Y\ã\àj<ù¾\ëY\ÎÉ›\Ù\Øzø1f\\§s>»”µø¨–²µL–õF<Aœ1K\nEk \Ü<±&<œ—9ø\ç\Õ,È·\æ\İZ|d\ä;³+\í¬¡U\Ó\ì˜\È!”•a\Ü\Z3MI£=KroÇ¦Ddÿ\0¨\"8\Ğ‘\×\Üyj(¾ñ\à\â\ä<\Äsı\Ş:5õ#\ÊdØ»—\î>À\rZCº\0xNt/€ü|\ËbËwhøÿ\0­5o„Ë£õ6¹ğtµ\ï\Ú/¥Y[\ëUşSğ…(\ë\Ôxö@Ò´¤N\nÔ“\Û=ï—ûº\'©Á\È¶[\ê\Ç\æ5˜}\ë\Ø9ü/ü#~«€u\\È¿\Ü\Çı\Ïñ\é9´£7{g\î>O¶6\Õc“	\Ğ\âc\Ó\å\"V®kÿ\0h²Où|NIÇ\ÈV7¾\É”]K×„Y­ƒ*÷ƒ­ÿ\0\Ñ\år?lû“œ›Û³IE\r‰\Å:²L>É›—¶?˜¨zHJ\æøŸHÎª\ëªuõ8º5£\İ\è`ÿ\0oÀ¿ûŒI\ê·Q„\Ä=t\Ü ıñr.\ÒqeEB§Ì¶Áÿ\0¤ô2›\Ã{|\ä_M\Äœéƒ›“B\à\ãºß¦_\']\ì\à_ÀÑ­<c\ãñYBø€\êO\ŞL\ÂF?\Êü}Ñ†,wn¬§\Æ\îÊºùV«ó÷k*<œ]I¨Q\ÎblhO”\î@Q	­E~sôÿ\0øbXƒS2‘\å\ÆGÍŠ‘7:÷u¾um>RŸE\Ê\îFüt\âu£T{•\"$^\Ùó\r\\ƒñ\Ô\Â\É:ùI=õşr¥\ÈwS³\Ğ7T7|õ„\ÙrQ›\"ö#\Ëö sŸ%iU×®¦Vs9mH\Ó\æ !\ïU\0ÀY“\Ó\Z\ë_\n¸eDõr\r,\à\İ$\Ş\ßÒ”u­#*oRE\r(\ãó.\Û\ÚFŠ‚`\ê\ØU&öª›Öº\Æ(\çRÀ_€¨›+V+~ú@	9+\é1\ä\î>ğ$(z¯\ŞZµ€\âc©¡ñ»\rdv)1\×EùiiüÀ\Â•Õˆ?–ú0ñ\"t«\íƒOû`ó_Wc]aòÿ\0N½*\n[4H8v\ê $ ¨ \É\"™1)*ôú«¬\0c7nEt\ÒV\r\éƒ\ç,ˆa}\Ú¿HJ\í Q£\n\æz\ÚM \"z–ih\Ò\à™Ú© \Ë.+\0¯\Ìõ‚Àõú¯¯h\ãi\ËNbDœ‹\ÑT)\ëd\ÜBn\È\ë‡\Ç^‡NñA\İ\Ğ\Ğ1\"\ãMI\0\Êl\ß[‹\å®÷%yt\í\0¶\ÇOøK®\ë#¡‹·%\r\ÂÁ\î¿Â¥˜“ZÛ¨û.]Hu\Zº\Ş=d\'\Õ[jE-u¨3 R\n\Ùz\×pĞ„¨d\Ô\é\ß\ê\íP\ßp—cZa`»¤< \\€’¦À\Z\×S(\Ì\Ê\nŒn¾1\×!qµ†ñ\Úş\"h\Ô\Ñ5Ş»\Éı²o«ñ¸­ˆ\Ú@\Zõ=~øË‘\Ûu¥8‘°\í6€\Ü\Z»kFL…j\Ôm!şWrm¡\á_tM\Î\Çh²%u\Ú$B\Z\çÀŞ¦&\Úõd\å)”«_šº|jÆ…\Ôo u\ÜA\Z\Çt~”ş:”+bü¿s\Z›¸\\l¼¬\ã \ÌöĞ»*,Ó´˜W\éŸ\\)¼ ë¦§\ï›pû—q\Â\ågÃ“r\ì?Ó·BÖ¾6vK\Ü\ÕU[\×\Øfö\î><¼®ÜŒbÁkÜ\á9Õ¨ ÷–\çLYy/\é?®2Ÿ¨Kv\êu™a¸q.´H¢k°©k®\ÓÜ–ôˆ\ì\\\n°f\ÄIUÑDD{\Ô_Í§h§;ƒ`¼[h0Ú¬f›İ²¡98\ÜlXfÌ§hd`Ç _\àevkE$UOWcw a\ã¶RA¶PI¯Œd\Ã\ÉÃ\Ô\äae\èÀhH–qıËœ\Ê\ÄËˆ¨¾T\Ú:¨\Æn\Éû.l\Ù2\ä\ã&C”\0¸ô*¢«\í™wº\Å\ZT£_É˜›\É`.\á\×\é\âuı°£­™\Ë.\İVÂ‹\éñ™ù|ü9¸¸ñq“ô\å\r½uğ˜\Ï#>\ÏMù´v†5ó‰\ä¶eTGq\r‡\í¿m\ãñ¹-Š²òñ‘±s5\r½\ëi\Öf\åpı›,Yy	Ÿ‡‘\ì1\ãdTW\æ*u\Öqñ-nPö·`³7ñ“%’US\Êz°0¸ìµ»ö#½^”^\çO¹û~\Æøc“f\Ò\ì¥Ap~½§^’ÌüFA“‹(\0\n+¡Œô‹jYŠõS©\ÆT2\î#\é=\Ík5¶½sÿ\0É™—\ÓüQ«\În_-™AÏ›5úŒ§h³ı5&>/!ú‹·p\×ô®\ì\ß…ó¾<Œ\Â\Ã(ª7§›\"Yvf\Z\ä•#\áSk\Òc6\ÇXı\Í\n¹¬!É¿Ğ¦€|~òeÄ¯ı\íùÏ˜€ı“qFğ[¸6AøˆØ¸¥\ëi_P\Zı±•\ĞaõŸbü™ø\å¤.\Å3w\éó‹ú\ÜF—%¸M)À„aU½2w\á\Óğ“’œn:¹\Èv±wùHß’¤§FSúĞ€*/§Œµ°\Ïc}b¿-\ßV\ÈÂ¯p¡´ü\rÊ˜\àuÛ…K¿K\Úu\'\ãôùİ€ØŠlYf§\å3™­¨<t²z¼„“v	\n¤uCqµºPå¬•#\ÌO€-^?[.C°\ÜôóŒØ½Pªª7(µ\Üi?\æf’2\Ù^6\\\Ül{W.C¶\Ô\îe[ò9o\Ç_D\Ş04/ë¸¢zÁ—\áÀ\Ì\Ø\Ô?\æ\Ì\Ã\ã0\ìvmûš\ê\ã¬Ô´H£6U\ÌÀ\æ\Ç\å\×nÕ¡g¹©J¨İ²™\Ãè£©ü&®?&˜\ë S¯\ß/\Ç\í\ë\Ç!•\Éİ¯ü¦a³R–ô§“	LŠ¶\éõPş«ˆ¨Ù²(\ÊH¡dõ=ôš2¹İ¡\Z\éÓ¿„«k.\ÒÁ«¸^µ\ŞRE)P>=ş2\å!™Sx@I\ë{E|½q\îñº;¨ı¢T\Èú´\Õbµû`Lˆ@\"\ÕG^ı\æfÆ¬\â”*\İ;M~™ k\Ê~–{\Ëq\ã@»Ïœ~eşr4Y(\Ç\í¨\Êi‰a\à{Lùø­\Ô5\Ój \é¸FŒ\ìpp73”8\ëX\Óóec¢¨úš‡a:Yø\ŞÓ›ğ\ß3a\Å\Ç$£:)uqCvm	_Vô\è;\ÎwµT(:R¶r\ä\ç~\Şö\ïl÷\ÉÀ\ä!’\Ã&,×¡U\Ó\Ñ5\Ò\ÏV—pı:qyl‡\ÖÃ•ƒ\àÃ‹\Ôvp¹ˆn\Õ|¢ÇÀ\Ê9œq\ìù,96rrb¬‰RU†ª–cv3^~lœ“\ËWB¥N01ù‡G;‰\Ïk´´ğoz®\Z\Éë½¯>V,ü>`|›²IşK·O—\ÊqpûŸ¸ñ?²9	Ÿ\È\\¹üøM\rCD„Á›\ÍËƒû¥Š\Şİ®l\r\Ş`È£\ã\ŞR™oÅ€™<Ş™>RG\æ¯\ç4¸»‘òö:YıÛ…¿G\ÃS„\îeL¦›ÿ\0¬†\ÙG`tœ\Ìü\ì\Ï\æô†-ÿ\0\Ğ6\r<H\ÔÀ[¥H\ÊU\Øğ\×YZò`¸\Ğ\ä[\Ğdú¦•2\îØ¨9,-D\Ø:iü\æv\Â\à\ÚUu\Ûÿ\0)~\\ˆ\Î\îSĞ…F‘\ï;q#’|\Û\0³K\Ôü¥‚IAfR,}Œ€ü¼e®5£‹f€\í\"ªşr¶ó\rºš\èµRAdR\Úö¯n,™°¶üLG\ËP~\ÉN\ßB®üc\ãgC¦‡\â5øÔ‚M˜òñ³hÿ\0øù\æ\Z\ã\'\â;K…\Èr‘;63s\ÅKPøõ¿Œ|Kœ\0ø[Cı&\İS\Õ|\n¬Ö\â\\}UÑ‘‡\ØeEYˆ\Ç\ì2\Õ\æ{‚ƒNô½l]B9ş\â\â\Ó#\â FÔº¿w·\Ñ|J“‰\É\È|˜\\ıŸ\ã:>\Ù\Ä÷/%2/\rÁ¯U˜X¯–\æ\Ôs²õ\È\ç\æ\Õ+ly6ÛŸ1\è/qüe…\å’_„wsñ“º¾|Y}t\å¢\æ-£~\"qNVJg@À\è¬t\é5\æ\å\ä\æDMqb\\J¶M\ïg¹™¹PhÙª\ï%t‚\ÛY!\ä#U(zwş0ƒŒ\Õ\Û(\í\ÓìŠ¸\ÔjzüzD}ôW|š¾sFY\ÓsW´|8×”\r4\ŞŸ½zJF=\ÆØ’%¸\É\Ä\Ä\ãb¸\Ï[ Ÿ™‰$>|4P*³v\ÇíŠ¸ˆº˜õ_ıaô\Ô\î!AfñÒ[8\Ëj	\É\×\ã\ÚTF†\ÚjŸkwº\×À\ÅDD%À8ô\Ô@ûblº\Ù\"ú¡û\ä \'Mj\ì\Ë\";…F¡K~bt?l0²\Zq¯QÓ§Â¢\ã6úXjoPb\İIiU\Ò	£”÷ó|¥9+TzY–o ]ı§X­•6-{ö²TYê€¨»œ\Ş?d´¶=¢·ñŠ,ö?\Ú H‡-\å3&öa\Õau\Æ\Ù\ÚV¶!C­Z»Ô…À\å†1\å\0‚:»¦ª\0½NB:\×\Ù\0IúG\ß&Öº\×q\éÊ¿=MwkC·xÀ\ÉH=º\Ë(ô¨BŸğ UR\æ\Û\ÜT+F†\ê¬›M\é\ÖOOK4>F5J4ş1h—\ÆY@\n¯õI³¸¨Fº\Ö2cf4Ó¼qˆI\Ğö/\å\n¢\êT•5¨\ë~2À‘±\ãaù‡\ß!-­¨5¥š@\r½Å`	’¨6z“\å—&a»H\é­ı¢\r‹»\ë£\×ş.2µQ \å´N\ŞdP\ŞUJ5`\ß\á ¯r \ël||#\Ş]\r~¥%K~Z?\nj \ß%– eÒ‹;_\åøÀ\Ç\n@;†\àÒ€7d_KŒ¥º\î²GH‘µJôQjq¯\ß\"¨v	PV\rjL%˜5“wü$(À{G·4`!ş\à=\ÇY.Á¯„Ò¼<ƒ®u\Çàº‘\à\ß(I‘µÔ¼\à\ãbM\ê*œ– ¡U­M~s%…ò±O˜¬\èb\Æ2cŸ¦ÀtK7÷\Í%=H\Ü-\0W:õÈ­b©È¯\æPÀıGZ©=÷³j\í\êXÔ‡\ÉıOT…\Z\Ğ:K‚K,ıB\íd\0\Z@øH­\Ä\ïEPo¬Å“36\Ò\Ù7\×b?‡>>\Ø\Ô|®M\Å\Úmn2…İö\â\Ğ^¿l5\ÈZõd\ÒL\çş¡o¡\Ó\ã-\\\ÙUoC$ø,y6ú\ì\ÌJb%o\ÌløÉ³B($\ÕlÌ»ò1¢Iñ\Ó[Š3\ç_+“öxK¸›M\'\à\í\Ú6Ÿ\Øü\ã6<H½\êyŸõ\r·\ÌZ¿)¶]ˆÛ¸\Ğ\ë\ÜŸk\î;¾7j¢Töƒö\Ëpú«¢†¡Ğ°\Ü*Q9@6;\rŒ·\'#¬Th\Z\éX>LlN\åòV£‚ş\"T99A\å°+¡\ÓÆ£®\ä\ã\È\â”b6\Î;ü¢.,¯Œ²¨\ïLM\É1\ÜÑ“µ¿/\ÚnX¿§\ÈK¶5\'RY\r}¦c\Âù”¢0ñ cª\Ã\Ò\Æ\Å¸ô•2:•\â|ŠNLtQ¯F\×\í^&,\Ô\ê\èhv3zˆ\ÈC\Ü¯º9õ±\Ó3ÿ\0)„\ã@\Ô\êtFÀv‚*ü½¾ø\0¸N½\'0r2hTl\Ûo\á+r–d \èH\Ñ@¾\ÚH\ÛeI#n¸‹j@v$}ø™¯/$²§ª˜Á@ö°fK*8bû±\İn\Zñj&K$”+ÔF\Ñ\Ú\ã 0q\Ó2©úR„e×¡\"_\Ç\âa\\;ò®ü¤‚@\Ô3\á?0U\ÜÂª\ìyuø\ÅR1¹\Åd…Õ† ³i£\r?%Ã¹¶ M.ş?¤É‘F<kºÕ˜\Ğø\×^’¤÷V\È\Ã½>‚{ıšE\ägl¬™s±´\nª1\Ö\åÜš3µ§ı\É9†Á¬k­úLÁ\Ó%­[ôuù\\Ù•öd(D]\ß]Oc{;¿\Ó\Å\rt\Ò<ª2@Ø¶\0[ûa`	±‘\Òõp‡O²\ä\Æ“\ê¡\nz2Q&š»#)õ¯Œ(I“i¥¹_\Ìzı±}U\0•\Ô\ß_ˆ\íÈ¢\Êl“D\rL¡²\"?¦ø\Éfˆ‰7\ìT»\ä½yZŸL[±:\n\å\È<\ÉLÃªü¥C˜\Ó\â¼šÎ¿4Û‡\Û9™p³¶%¬>v\ìÜ¿”\Â\ÉV^\n1R ùMx‹RQ±el€)R®ª\Ô\Ä\Ä“¤ö\Òq±¯#lÙ¶–|ŠB‘\Ø#v5\ã1\ä\æp+ô\ë\í\Ë\éß“>MÏ•A?W”ºf[\ÑX\Ô%«EÇŸ\ÄÃ‹\nñ†3ŸVõyu\î\ê\Î\İ~Uğš=\Ï\Üğ{§\r	oü†q»ŠÀª!\0\ÙD99—0 UF§\Ò\Õ\â|~pœ˜PY¦\0jF§ñµY–ò‡\Üq	j&c\É\'\Õ\ÈI#\Êv±f:xt“u\ÊF<*q\ä#ó\ĞM:ı±[ 4†ò1‹/”\éR‚ÊLu\×Y¸\í¡‰\ï¨S?÷<¤¨>P¤†ÿ\0œP¬O§‘Á9\r«\Zh±÷	\\!\İGÄ Œ\ì¹&V, ı+ß¯i0\\”ee\è¤51½À1Z|#z¿\Ú\Û\Z‚\Ş}\ê<\ŞYş\ä\Ë\êX\×c\ĞX“U*ò»»vm\ÃişReh\\2\Ğ ?Pj\Ğ\è>ù7rFÍ›S*\nó‘ó•\Ş6É¢lY\Ôşª-kLÿ\01\Z\É%‚¼‰–\Éq¹¤\Ù?\ÆD	*v–G[l±‹®K#S´t\ç\ä±\ã6\0Õ\í\äy\ÇÊ£%l\ëp­¿\Ò+\íŠÀ¤\Ñù\ëvN§\â5\Ê\Ìdz`\r\0¤n~n\"@ŠıÀ;\Ø\íó‘v±¼D\ã\é¾\ß±v-Õ¦…F\Û\äh¡\Ğ\ÔWõH\rò\äP\Èû\\{XI\ê\æZ­¬·®š\×ı¦gbÉª\Éİ«\ÆE&\É\r¨\Zmùw–I¡•ù*ñ\íˆ$\êƒÀ\ÊIÃ¸3\ãl\ZµƒWZ\"ˆ\Z¨:W\ÂZ\Ü\ÑØ‚+U#[ş\r7‘˜¨=j\Ç\ÈK¶‡]¹\èŠoœ¨gW6¶‚\èñ¼¢÷-š\â\r&1\ÄTRSÛ¿\å*\ÊJºYğñ¯Œt\Ê\àù\è\ßJ\ë_\ÎFÊ¯ :\×O\ÄJØ†§´j\îş\É]\ësF\ÍÆ‚\Ù\ìxJ³#­\0\îOZû \Ô\ÓBn´ÿ\0œµr€5\rŸ\Âcó¯\ÌiU¡—6 µ/ÿ\0H‘³Š\éw¨\È\rª c\â{ò\Ôc‰Áv‡\é±_|¯qBwUö?H\ä	ú|>  \0n!¸k¼õ±\Ö¥Í_•…\n•24B5 °?\ÂS½\è’:õË¶€|§¦½?	\İbÁğÿ\0h&V\\2Š_³§\ã\ÊFƒ¯4$%A£\åøˆ-n·WÇ¼ƒ\ì;µ`=0 š\Ó\ÆXü\Öd#^ŸŒAg%b\ï\Ã\ã\×\îŒ@=5®ğF£S\ãñ ¢\0¬	7Zş7a\ë_²Î§½w’’\ï¿\ÈÀ-­l\ë\á–´Ox4\0Ù‚\ï@/\ç!CZø˜\ÊuƒÌµG_Œœ~`\0€@\ÔUÁG²ı°\Û»pùF\×mˆ\0+ ±(B \ê5a“\ÌG\Ô÷\ív¥.I\ÏyH)t\Z\Õ|\Ä1[¯)\è–.=\æ\Çq}\"Œd˜ü¤Ÿ-\n\Ín|¤w\ï\ä Yw×’İ£iò\èÀj.\r€øığ\nSu\åQ©q\ï8\ë©ò“4*-h4Œ‰]l†b”únÚ­·‡qö\Æ²Á\è”|xŠ>\ë\áğ–¦DF>BÇ ªª–%ô22\ä\r`…e\è@Š¬\Î\Û	óxi¬\ØV÷_”İ…\'ZŒ0cÑR~„D	3\ã11*•«r¦¾rY\ÈU´\Â\×ı¢ÀY—:lYW®·ÂŒ70Rx‚zˆ|¥vukñƒôø\Ôÿ\0l62>¦V¿¶¡eÚ¥q\æ![°÷ ‰²\àiB†šxübŒª„\nv£):k\áre\áªyI?V\Òt?	Y\\ù]Gº\Çı.›Y¬øÊ”ô#q\Ô/Ln+Â€¯¾#/q! ôZ‰ \r©N¨À~c\Ö\"\æ\Ä?¦ÿ\0P\Z\\GØ“\Û÷2ªq\Ã÷,R\Ìx\Z¦u\Zº\éò…\Øp·¡U2\ÌIŒZ÷w\Ù\á\"H\Ón\Ù\ÉF-\æ$Q\r]~(\Ìv\äWfv\ìEWŒ\Ô!rysh½‰¹VOY²Œ™/\Ô_¥‡O\Â|1[>\è­*®º|F¿x–£)m\ÊU\ìy•…KüÙöPX\rvŠ»‘)~æµµ¾ºyVM­h]\É\êFLÿ\0¶N·\ÒEÙ»qS¦êº–`\âo¡\\¤®\Ò[\\|­°e\Æ	qô.¤\í\ìICoÄ¿\Ûˆ\ê\04.(A\íI\'MÆ˜xÜ±°6Lj]÷H\Ğ€A¶\0/p\Õb_©ôJ\ê7\èY5b,÷,.¼j\"\ìj«;\Øi^3V.$t:j,\è\Õ\ÛYjdÊ»\Ît\Ìug!””°ı\ì½Nx\Üù¶v.¾R7~2¬ÎŒˆ>±`ô\írÑ€w\äc-“e#c°ü»D\È\ØQ\Øù\æ¿ÿ\0–]±«&ù\Ñ\n¼|˜³´¸³\0\ÃM\Ş[\é,3\èwª­zoü¥y9™Tˆ\Ğ’q#>s…\ä\ÎôT(²Gq+ÚŒÅ˜‚ˆ.\Ô\ê\Özş^ññ(\Ì*¨…3h\á{0A\â•\Üh”ª>$É—‹…Wûœ\ì;—®/M‰¿\0\ÃC3¾½\ç\Ğ\Ş\ÛvS)u*7€Rú“_\Â;p²dş\æ%9,P\ëZ\Ş}»…•x‹•ñ\ØÉ™…oF\í±®˜N—÷/·¢œ~–oM	d\Æv·^‘ÿ\0¶M®?ùA\ç\Ñ©`k\"w\Z®¿1.È¸r\ê»…n\ì~\"z\Ïoÿ\0j÷¬2œW1\\`*²3¨•\ì|%9?nqƒ3œÎª ª Š¨\ásWª‚>tg”_S—Tt6¬£@G\Æ\Ät<uS[÷ªõ\Î\Ñı·\È#\ÕÁ™rq²}TX\Óú”N?7\Ú}\Ç0\ádbt;P2C-\\Ò½^†],µ3»\Ù\Ö‡y[»œY$qjJ\Ö\ïºm\Ç\í<Ç¬˜0PS°_\än¾m\Úıñ¹5„7•™L\' …÷\n\Â\å\Æeû,ŒÊ…ñ9Š¼–µ\Ä4\ÚN\Ó_0#ş­KXq‡\ßZ}m¦R|\×:|.G¶\â\ä.S\Æ9\ìS.fßRr¬œşnÓ‰}4\ÅdR¢©\n\Ç\ék2§¢,\ÓK«ŸÃ‹6bNDP \'®Ÿ)¨r¹nŒ\äv¹\07¼øÔ¯mµ\èôU\Ğ}nHZ\Ûù«_¶j;\ä\Ìû\'i|‡s\0¾§\í‚\×*\ì-°\r\Äñˆv\ä«g´¯ CŸ0\Zxiñ–IŒ´\ØP¡h\î\Ì\î•c\×uşV:} C«7N¿dS\Ók\émGOœ[.<…½,dY²€>Q2nUQÜ›ü%ÁÂ¨\ÄHO@)‰>>09 \É\æÖ\Z\ÚH,ƒfa—&Â´F\Ú×·I^D_Sn!\Ğ\é°Y\Ğõ+\Ş;c!\ÆmƒvtŸ)v½Qº\ZşU\'±PVl€n!\Ø\Ó5A/ù?R™º\ã\ê­\áñ®¢\Ø\ÊC3Q6\×İ¼wx\Çb\î\r¸7D² I“0[P§\Ìue£\åÿ\0«»m£Yñ\Ü\Ğ2d\Æû±Ó¢F \rŸŒ–™\0m»o\ë­óvû¦Z4›(ó$€À\èXuP\r\Äø\Ä\èe\ì»Tª \Ûù‡zùE\Ì1ª­\ÓUE?ñ\ÖH,•l4kò÷»\ëˆ!\\tvüû\ÇZ\ÕT¶\Ó{‡M|e§\"¶ ¹P—\Ç\åº\è>f IœP$Uÿ\0I\é_8ş®@¥Ò\Õc\ç \ÄwÌ½˜ÿ\0(};tu¢/\Ç\áÄ¢´m(hM\é\Ú2\Ü\nc¡º1­´«WPt?öÀ–\Ô(K-õ\nˆ\0CRkwÀŸ\Æ%`Ù­Mtûf\ĞC¨\\ˆ¦Æ†¢·Bùjşe=\å‚\'\à\Èş4Œ»hù€>?ò—y@!v\Ó\n4\0±wò•7g¡ˆ¿\á$EP©—Y¡3†«\Zö3>Ë­µóÖ¢’AÑ¬xD´0\Íh\Ê÷:\Â\Ù(\ïe·\ídL\áÎ…\Ğ{t1½M|ªO\ÄÄˆ3;YZğ…\ØA¨ƒZû\"+µ´\Ñ\è\0\Ğ\Ç9q©§M§¸#]?„CŸ\êù²H\Ö\ÏÀB\êöt¥T@H\î\"D¯¦XA°d(àªƒ]\Ô|?œ­¬y«\í\í¶\ëQ:K$\ïo\Ódx‘FEf\ÚI ›±P\\›4\ß\Æ*\ÈmIø\è`\"\Í\ë’Ú¶„…OC´ü:B£´f\Ú;\á¤ô+D`z}Ñ¶÷‡J\ÒBÃ¿\á.IwÖ¯\ã®+¼„+h52l®„\È	¯\Î\nRğ¨)ºAK¿·ğ¥$™)\Ê\ÖûB6ß›ğ\ë$’€k­\ÕwñŒ•\Úúvğ’H@Ù³\Ö\äÇ¾µº’H)g÷?õ€\îü\ÕöI$¦@Ş¦\İ:v¨\Ã}yª\ä’\n1\ß_„ô\ë	$‚	ùÛ®şé·¯i$€Wù\ÏK\ï}!;¬V\Ù$€\ÇOVÿ\0·W\ß\Ãí‰“}\ë_\ÊI%ø“\àXŸN›~2r¼•W­I$\Ò2ÿ\0R;n£_mu”÷\ç»\í$‘oq_b·ÿ\0ø»ª\İ\é›½:ü>\Ù$™4\"\Õy>\ØË¿]•ºI$46?W¿Nÿ\0\Õ4§«GoO\ÆI&«§Sö-[¯=_j»ü òù·^ûw{’I¯\ÖLş°g>÷7]i¶¾›û&ık\ßÿ\0¶¯\îmú\î’HZ‹hŒ\Üÿ\0_zz[}?\É\é\Õü\"sS¸ş£ë¤¯…\É$\Ëë©ªô\Ğ|¾¿¦›\êûW\Óƒ\Õ\Ûı\ëôtÿ\0Nú\É$t\ê:ô4\àõ¶K~\İk\Ôë·µ\\\ÎŞŸ«ÿ\0™\ê\í\Òı?÷ñ’IO\åı\Õÿ\0\êo\âÿ\0ñ‹şï¯¾¼¾¥\ìÿ\0»lU\Ùú\Ôı©\êYô½\rµºü»7kRI9¾¿\ËN§Jûk\Ğ\Ñ\Íÿ\0\ä^_÷ß¦±úŠ®—ùvş3›\ÈıO§‹¯£¯¡uşŸ\Ù$‘Mz{ÿ\0©1¶\Í\ç\Õÿ\0Wó_K–ñM´zÛ«pôvUşo„’M½•ª=gı\Ç\×_\Ñlın\ï\ï\í­•i\ë)¥¿\Üı\\¾¥\ë_şUn\Ù}º\éô\É$ó3º\Ğ\Ó\Å\İ\ê\Ñú^¥\ç\İu\êßš«\á/û•?ÿ\0\ÚúWıû·_m»uùI$w?¸ÿ\0¿ú\í³f\íƒ\Õ\Ù[«o\æ¿5WŒó¢¬õ\ê~W\ŞI\'n-:{¹u\ê\é\ä\é\"ı&ş\Ê\ëø\É$\ês»òß«§\Õ\Ò.KüÕ»óW\ÆI …m·h¿§\áı]¯\áıJZú¨\ï\ÛURI!Y-¥\nªü\Ğ.úÓ§\ÂI&¾&~ùS½=jİ·\Ëuuöw•Ss]\î\Ò\ïù\É$0ˆwW¶÷„}?\Ûú\ã\ÆI%V\èwVßŒ\è=?œ’H\n\Ş\ènº\ÓmxücK\Ò=jõ¿„’L½M-	›u\ë»\é\Öú\×\Û\"mı?®¼›>¿†\é$Ø­~£³wù«\çù¾\Û~ó\Ó\áò\ï\×ù\É$…&”vUş_ù@õ¸o«Ö¼d’\0\İ+\ê¹g–\Íu®ı~\É$„<»WN\×\ãğ“ûV/oMwõüd’R	“f\ï\ì\İ\éºşŠûb\'­¹½;ûzT’HTO?›o\ÕZ×‡yYİ°úw²õº\ë$’½]\Úz\Ş\ZxÁç³²ú>\Ù$‚—\çı^Ñº»VÎ4ª\í35Y\İõwñû$’\0M.Aº¼\Õ_$¤\ì?”q\Ó_«ùI$¨Œ†«µöñ¨Zlú¤’Eø¯w›\êøôš\élú¿Om—[¾;»I$|GÀ­¶z\Ãô\×\é×›mUw½\ÑÏ¥¦İ·g©[+üµ\æùI$\Ë÷/À™¿\Ú\è\íİ¿¶Ë¯\×3?£ÿ\0³¿ãº¯ğ’IWı^\ä~À«[¯Œ\"¨\İ\ßi$š!ÿ\Ù'),(2,_binary '','Paris','2020-01-27 08:31:39','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 08:31:39','dba77f99-d075-4d8d-8108-cff06c1d4f48',1,NULL),(3,_binary '','Paris','2020-01-27 09:25:52','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:52','1e4be04d-3264-4548-9e5e-14b20e17084a',1,NULL),(4,_binary '','Paris','2020-01-27 09:25:53','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:53','278b8076-3568-43bb-8d57-3ce25f0c1586',1,NULL),(5,_binary '','Paris','2020-01-27 09:25:54','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:54','53edadf6-9c7b-4f89-a80a-a9cbafa454c2',1,NULL),(6,_binary '','Paris','2020-01-27 09:25:55','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:55','74ed2965-3676-4f10-96af-aafb4beb0b46',1,NULL),(7,_binary '','Paris','2020-01-27 09:25:56','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:56','08ef2623-1522-4207-9523-2a247de801b7',1,NULL),(8,_binary '','Paris','2020-01-27 09:25:56','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:56','4fccc7b6-8148-4ed4-8ce4-e730310c3591',1,NULL),(9,_binary '','Paris','2020-02-09 10:51:13','Euro','75','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis metus massa, in molestie orci pretium sed. Integer cursus pellentesque quam quis tempus. Vivamus blandit orci at lorem auctor, ut malesuada tortor iaculis. Pellentesque blandit ante et nibh fermentum mattis. Nam blandit augue ut rutrum consectetur. In lobortis sagittis vehicula. Proin sed dolor id felis malesuada tempus. Nunc dictum metus finibus, euismod est eget, interdum lorem.Sed lacinia dolor at scelerisque pulvinar. Pellentesque non bibendum lectus. Sed congue quis lectus vitae ultrices. Praesent augue nulla cursus eget lacus non, dignissim iaculis risus. Sed blandit volutpat tellus nec semper. Nullam ex orci, malesuada sit amet auctor non efficitur vestibulum enim. Quisque ante dolor, semper quis ante vitae, facilisis aliquet neque. Aliquam ac cursus sem. Nunc elementum blandit lacus, vitae fringilla felis lobortis eu.',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-02-09 10:51:13','a9cb0f91-23fd-4329-816b-04ec3f773efb',1,NULL);
/*!40000 ALTER TABLE `announces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces_animals_type`
--

DROP TABLE IF EXISTS `announces_animals_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces_animals_type` (
  `announces_id` bigint(20) NOT NULL,
  `animals_type_id` bigint(20) NOT NULL,
  KEY `FKk610cvu8fhub2yl3b2rfwf1lh` (`animals_type_id`),
  KEY `FKrc49qnwg2ytybqugguvdgrvf6` (`announces_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces_animals_type`
--

LOCK TABLES `announces_animals_type` WRITE;
/*!40000 ALTER TABLE `announces_animals_type` DISABLE KEYS */;
INSERT INTO `announces_animals_type` VALUES (9,2);
/*!40000 ALTER TABLE `announces_animals_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces_equipments`
--

DROP TABLE IF EXISTS `announces_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces_equipments` (
  `announces_id` bigint(20) NOT NULL,
  `equipments_id` bigint(20) NOT NULL,
  KEY `FKcuo2tn860645t9lt91u031jfj` (`equipments_id`),
  KEY `FKaii0strpy25h6rr0ujr1bulye` (`announces_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces_equipments`
--

LOCK TABLES `announces_equipments` WRITE;
/*!40000 ALTER TABLE `announces_equipments` DISABLE KEYS */;
INSERT INTO `announces_equipments` VALUES (9,1),(9,2);
/*!40000 ALTER TABLE `announces_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces_services`
--

DROP TABLE IF EXISTS `announces_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces_services` (
  `announces_id` bigint(20) NOT NULL,
  `services_id` bigint(20) NOT NULL,
  KEY `FKi7yrltc6w8kevodu047y7vuim` (`services_id`),
  KEY `FKss70dxs79frvqp9xkop0t79mh` (`announces_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces_services`
--

LOCK TABLES `announces_services` WRITE;
/*!40000 ALTER TABLE `announces_services` DISABLE KEYS */;
INSERT INTO `announces_services` VALUES (9,2);
/*!40000 ALTER TABLE `announces_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `exp_month` varchar(255) DEFAULT NULL,
  `exp_year` varchar(255) DEFAULT NULL,
  `is_paid` bit(1) DEFAULT NULL,
  `last_card_numbers` varchar(255) DEFAULT NULL,
  `network` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url_receipt` varchar(255) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe4mlsjdf8jo93ntvxah5sk6xj` (`booking_id`),
  KEY `FKokk5gba50p3ummllh9al64ojs` (`user_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,_binary '',5000,'1234',127476492,'2020-02-20 08:35:23','eur','11','2019',_binary '\0','4242','visa','card','card','2020-02-20 08:35:23','http://local.com',1,1,'US'),(2,_binary '',5000,'1234',127476492,'2020-02-20 08:40:45','eur','11','2019',_binary '\0','4242','visa','card','card','2020-02-20 08:40:45','http://local.com',1,1,'US'),(3,_binary '',5000,'tok_1GEAfzJArVWS6ptEn6fqvnGc',127476492,'2020-02-20 08:46:33','eur','11','2019',_binary '\0','4242','visa','card','card','2020-02-20 08:46:33','http://local.com',1,1,'US'),(4,_binary '',6400,'tok_1GEApIJArVWS6ptEgqPn5foI',NULL,'2020-02-20 08:56:10',NULL,'11','2019',_binary '\0','4242','visa','card',NULL,'2020-02-20 08:56:10','TODO',1,1,NULL),(5,_binary '',2500,'tok_1GEBCWJArVWS6ptEXFhDthif',NULL,'2020-02-20 09:20:09',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 09:20:09','TODO',1,1,NULL),(6,_binary '',7100,'tok_1GEBDhJArVWS6ptE7mHd2xsC',NULL,'2020-02-20 09:21:23',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 09:21:23','TODO',1,1,NULL),(7,_binary '',8400,'tok_1GEBsfJArVWS6ptEr9WYeJ5Z',NULL,'2020-02-20 10:03:44',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:03:44','TODO',1,1,NULL),(8,_binary '',5100,'tok_1GEC54JArVWS6ptELsprcfga',NULL,'2020-02-20 10:16:33',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:16:33','TODO',19,1,NULL),(9,_binary '',5800,'tok_1GECCWJArVWS6ptEHWLWmHN2',NULL,'2020-02-20 10:24:15',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:24:15','TODO',22,1,NULL),(10,_binary '',1800,'tok_1GECJkJArVWS6ptEZnQZGSDC',NULL,'2020-02-20 10:31:42',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:31:42','TODO',28,1,NULL),(11,_binary '',1200,'tok_1GECOSJArVWS6ptEyQIJlPUU',1582194992,'2020-02-20 10:36:34',NULL,'2','2039',_binary '\0','4242','Visa','card','card','2020-02-20 10:36:34','TODO',29,1,'US'),(12,_binary '',5100,'tok_1GECZuJArVWS6ptEHTbJqYj9',1582195702,'2020-02-20 10:48:25','Eur','4','2024',_binary '\0','4242','Visa','card','card','2020-02-20 10:48:25','TODO',30,1,'US');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `capacity_animals` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_confirmed` bit(1) DEFAULT NULL,
  `is_paid` bit(1) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `announces_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi4vm6w3btnc6ss48gl4ef5ely` (`announces_id`),
  KEY `FK7udbel7q86k041591kj6lfmvw` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,_binary '',0,'2020-01-27 09:28:37','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:28:37','5a5579e6-2fb2-45ab-a229-2ce77c3006dc',2,1),(2,_binary '',0,'2020-01-27 09:29:07','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:29:07','5dab4ec6-4ba4-41be-877a-e788d870f211',1,1),(3,_binary '',0,'2020-01-27 09:29:08','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:29:08','b4636d95-8b4e-4fcd-87a9-b949c68c5f35',1,1),(4,_binary '',0,'2020-01-27 09:30:18','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:18','40177d48-dc6c-4096-9501-33f8599285bf',1,1),(5,_binary '',0,'2020-01-27 09:30:20','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:20','56fddfdc-0dd1-4a81-b7fb-b752288f14ee',1,1),(6,_binary '',0,'2020-01-27 09:30:30','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:30','fa878e5d-3375-40e3-bb95-46558c9e784d',1,1),(7,_binary '',0,'2020-01-27 09:30:55','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:55','a395622c-8c50-469e-988d-ea15f9e9b8ce',1,1),(8,_binary '',0,'2020-01-27 09:42:26','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:42:26','8b9f6221-2902-4a39-9eb1-5368e9c13774',1,1),(9,_binary '',0,'2020-01-27 09:43:45','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:43:45','d642407f-cc4e-4370-9655-3e619ecb9d44',1,1),(10,_binary '',0,'2020-01-27 09:43:47','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:43:47','74f84028-478f-4aa6-8b89-28edc0e8e728',1,1),(11,_binary '',0,'2020-01-27 09:43:49','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:43:49','b3828ccd-70ea-4552-aae2-092bc5419cae',1,1),(12,_binary '',0,'2020-02-20 10:03:42','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:03:42','7ad9e55f-93b5-469d-a1ca-8fb712fbfcc6',1,1),(13,_binary '',0,'2020-02-20 10:10:21','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:10:21','6e665c12-152e-423d-a1bf-991377567805',1,1),(14,_binary '',0,'2020-02-20 10:10:30','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:10:30','48c9baf3-b380-4d3c-a66e-6e3c71fd31e8',1,1),(15,_binary '',0,'2020-02-20 10:10:39','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:10:39','ab6c8ad7-9df7-4869-81d8-fc709e69ffad',1,1),(16,_binary '',0,'2020-02-20 10:11:02','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:11:02','a683eee3-0c15-4f1b-bead-4b66e43d2c80',1,1),(17,_binary '',0,'2020-02-20 10:11:09','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:11:09','4d68d5d8-621f-4a7a-8e30-3914988f85f0',1,1),(18,_binary '',0,'2020-02-20 10:11:26','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:11:26','045e5d13-5987-4e48-8b9c-cce653d64be9',1,1),(19,_binary '',0,'2020-02-20 10:16:31','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',51.00,'2020-02-20 10:16:31','37f78f8c-7802-402f-a7a7-add93b2c66bf',9,1),(20,_binary '',0,'2020-02-20 10:18:34','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:18:34','0e9f645b-2aa0-4455-9441-15ce7340e557',1,1),(21,_binary '',0,'2020-02-20 10:18:47','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:18:47','8ad509e8-4c38-4c45-95b3-82994dc1fae6',1,1),(22,_binary '',0,'2020-02-20 10:24:13','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',58.00,'2020-02-20 10:24:13','8f4040ca-04b3-4caa-bfc9-9dca12404318',9,1),(23,_binary '',0,'2020-02-20 10:25:18','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:25:18','be1e328d-428a-4979-a3ca-74c9332b9ac5',1,1),(24,_binary '',0,'2020-02-20 10:26:24','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:26:24','e6a63a3b-9610-4e0c-bfc2-65f5c248a91b',1,1),(25,_binary '',0,'2020-02-20 10:30:18','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:30:18','497c7321-6b46-4f59-b8fe-7234301756f6',1,1),(26,_binary '',0,'2020-02-20 10:30:46','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:30:46','e7eb49fa-4e34-44d1-a5d9-d74a425ba34e',1,1),(27,_binary '',0,'2020-02-20 10:30:58','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:30:58','a957655a-6e52-40d0-8f1e-fb89694418a7',1,1),(28,_binary '',0,'2020-02-20 10:31:41','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',18.00,'2020-02-20 10:31:41','bcf70dd6-65e5-467e-a7b0-2e2e831bda97',9,1),(29,_binary '',0,'2020-02-20 10:36:33','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',12.00,'2020-02-20 10:36:33','5b290b66-2ba8-4cc0-8496-f1789f2d1725',9,1),(30,_binary '',0,'2020-02-20 10:48:23','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',51.00,'2020-02-20 10:48:23','2570a1e2-6a8d-4542-98fb-603223f88407',9,1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings_animals_types`
--

DROP TABLE IF EXISTS `bookings_animals_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookings_animals_types` (
  `booking_id` bigint(20) NOT NULL,
  `animals_type_id` bigint(20) NOT NULL,
  KEY `FK8lrrd4pv1f5mdoyxvno8ikb9u` (`animals_type_id`),
  KEY `FKlrmul67eh9gjgviunhsss9co2` (`booking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings_animals_types`
--

LOCK TABLES `bookings_animals_types` WRITE;
/*!40000 ALTER TABLE `bookings_animals_types` DISABLE KEYS */;
INSERT INTO `bookings_animals_types` VALUES (8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,2),(20,4),(21,4),(22,2),(23,4),(24,4),(25,4),(26,4),(27,4),(28,2),(29,2),(30,2);
/*!40000 ALTER TABLE `bookings_animals_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings_services`
--

DROP TABLE IF EXISTS `bookings_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookings_services` (
  `booking_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  KEY `FKhx3qgb3cbqptycdppoaq10h82` (`service_id`),
  KEY `FKj4evdpolo3djlxes006ejj02` (`booking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings_services`
--

LOCK TABLES `bookings_services` WRITE;
/*!40000 ALTER TABLE `bookings_services` DISABLE KEYS */;
INSERT INTO `bookings_services` VALUES (8,1),(9,1),(10,1),(11,1),(12,2),(13,2),(14,2),(15,2),(16,2),(17,3),(18,3),(19,2),(20,3),(21,3),(22,2),(23,3),(24,3),(25,3),(26,3),(27,3),(28,2),(29,2),(30,2);
/*!40000 ALTER TABLE `bookings_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `equipments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,'gamelle'),(2,'niche'),(3,'jardin'),(4,'croquettes spÃ©ciales'),(5,'douche');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `services` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (2,'matinÃ©e'),(3,'midi'),(4,'aprÃ¨s-midi'),(5,'soirÃ©e'),(6,'nuit'),(7,'journÃ©e'),(8,'semaine'),(9,'mois'),(10,'annÃ©e');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'2020-05-10 10:17:41','accessoire','2020-05-10 10:17:41'),(2,'2020-05-10 10:18:21','jouets','2020-05-10 10:18:21'),(3,'2020-05-10 10:18:25','nourriture','2020-05-10 10:18:25');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_item`
--

DROP TABLE IF EXISTS `store_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `store_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `affiliate_link` varchar(255) DEFAULT NULL,
  `affiliate_picture` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `store_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrx7k8jab0chkjlrta661t51fi` (`store_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_item`
--

LOCK TABLES `store_item` WRITE;
/*!40000 ALTER TABLE `store_item` DISABLE KEYS */;
INSERT INTO `store_item` VALUES (1,_binary '','http://localhost:29292','http://localhost:29222','2020-05-10 10:19:00','my custom desc','Gamelle test',0,'2020-05-10 10:19:00','3e870afa-5d98-4523-98d5-4fdd812521c4',1),(2,_binary '','http://localhost:29292','http://localhost:29222','2020-05-10 10:19:10','my custom desc','Petit jouet chien',0,'2020-05-10 10:19:10','8e78203d-b9b8-4857-8b8b-d3de71ec767b',2),(3,_binary '','http://localhost:29292','http://localhost:29222','2020-05-10 10:19:26','my custom desc','Petit jouet chat',0,'2020-05-10 10:19:26','853d01ff-83fd-46fe-ad05-f180d34aa0bd',2);
/*!40000 ALTER TABLE `store_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FKhfh9dx7w3ubf1co1vdev94g3f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'ROLE_USER'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.fr','$2a$10$bIeUY.3OIvNRKgCs5UpfZ.THLpbrHQldlW41HXqiZDNUXtt//ppAi','admin'),(2,'sylvain@sylvain.fr','$2a$10$Oi.xG5sKgseHMivTGz7IxODZpci0klZlRHSqZ44SR5Fa25HT6bYRa','sylvain');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-10 12:30:28
