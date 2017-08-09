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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2502',1,'LeaveProcess.png','2501','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0����\0\0(IDATx���l��}?pw�`\n[�ց۩��Tai@��S\"&5i�\'�[,�*^�HO�DS�Q4���D3�e�Ԗ��(������\n�T�Y!�c@=��H�BR��K=���N>�O����ξ�;~�㡗���s��y�~?y��ϧ+\0\0���{\0\0��Z\0\0�@�\0 �Z\0\0�@�\0 �Z\0\0�@�\0 �Z\0\0�@�\0 �Z\0\0�@�\0 �Z\0\0�@�\0 �Z\0\0�@�\0 �Z\0\0�@�\0 �Z\0\0�@�\0 �Z e\n�����mۆ��ahh(|gbb\"��ǽ�\0�C�R#��a~���m�bw���=�Eu�]w�t��FFFzzz6n�8>>�����Z fff�8�ד���ڲ��SSSq�8\0kG��nll,��f�-����۴i�֭[�B�G\0�Z�k��\n#������hC����v�m������q\n\0m\'�	�ڍ7NLL�:�/K�377��^r-�P###͇��5	a�uA@�ɵ@���5s�Ae��u���p܇@ɵ@�����0�Fu�رcG�@�ȵ@℡v��Z�k=�����\Z ��Z Y&\'\'���[j����Oo߾=�C�-�Z Y�UmCS����q\"\0m!�	���{zz�j�ڰa���t�\n@�ɵ@�����r����/�|���h�\n@�ɵ@�lݺuǎm͵��opp0����Z A��������^|q_�\n@�ɵ@���_�u�������֓k����=���m͵auu��\02H�$H�S��˵\0���H��޼���\0�&�	��徱sg[s�>�aÆ��֓k�پ}������6��[�|<����Z A������ښk7o޼{���֓k�di믎=v����P(�}�\0��\\$K[/E�җ��<�C�-�Z Y\n�B___;�b{���/���h�H�����^s��Z\0\Z\"�I�᫯޵��ڧ��_�n��c��>2\0�E��(��oذ�U�@v��#a�=p�`܇@ɵ@B��Ά�6�͇�_}��w���^r-�\\333�֭{������ �B-@\'�k�D���6m���~�HC����_�򗣋�>\0ւ\\$]�Ps�%��95L����o��.����pܻ�\Z�k�t�����zzz>|��al��農,�s�����k�	�ٲ��sssq�2\0kJ�ҤP(LNN�r�u��u�Y�Nj\'&&��|ܻ	@�Z ��.\0�r-�n]]�1\0�0\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�&�1\0�311������Eooo��������ٸw\r��ȵ@�|�[��p�WNNNƽk\0�F�ҧP(�s�9�����/������q�\Z\0��k�T��g?{�Ygs�\'?����Ѹw\n�8ɵ@Z]t�EQ���k���\n�B�{@��Z �������ma�\Z\Zre-\0r-�bW]uU�k��\0�\'�)6??�Z�� �k���\\\0\"�`5\n����������`___��d;Dx��70<<<>>�.c\0�k���޽;�sa������ݳ����\':��c��]�vmٲ%�N�t���\\r-Ѐ|>���6o�|�C\'N��:���0݆_���|�\'\n�ɵ@��P;00����tr�Z����\r6����}�\0:�\\�+��-���U��w�=�6}0���q�Z�.�w�޼�C�UO}�/n�����}�\0:�\\�V(����{~na�5UO;��u�.wc]��$������r���W�u���y\'��OuT�|�ߌ���}�\0:�\\�6<<����e������O�,�?<~\"�{lq��}��W>�o!x�<�jp����?��[?{Č��7=00��� r-P[����-,�����X?���|2x5��/?��+�o��������׃�Bp`1���_��=ށu������O@�k��zzz^:���ⱨ¨���ĩ3?Z<}��o������K��_Z����+��A>�y䉥\\{�3��3~֐>�m)�-V�����ׂ���X ����կ��_=�G,�N.�݇}��Ur-�Z���-e��+֙\\{*8�j�c�B�<q���K��������?�R����+�lG�\\����@mK���bE�!y-x�h������?�袋�z����#{S�}��}e��k֒>�m)�������˅3�_�<2{ٺ������s���囯����\'�|���G�>�Q%��%}.P[��^�(��������\'��.<��ܺ������/�~V^,GNa�}��G�>�Q%��%}.P[Y6�r�?xf�3��}�z��=���=�������}?|�N?���������k>\Z{��k:�>�m)׾\\Z�]��z6���H�;��Z����j[ʵGT�%��%}.Pۙ\\{�%�hɵ\0kI�Զ�k�FK�XK�\\���\\��j��Z����j[ʵ?S��\\����@mK�v^5Zr-�Z���ɵr-@��s�ږr�O�e�h��\Zj�S����[\rm(�S�A��@ma>;u�F��Se�Ty�C�G�Y���e���c\rm��o �S�A��@mK���Fk�t���u�s�7K��\\�j�nj���mܧ���s�ږ�sm���X.��鳥V��r�*ۭ��F*�S�A��@mK��PCUu~t��WZI�Ŋ˔��rs�\\�u=�Zŗ��� �\\�������j������#򛖩�?�WR�\Z��>u\0D���d�]�uCy�l�*y�,�ֿ?�lK�H,}.P�R��qCU���^�����/7���e��J�z^W�V�_Bܧ���s�����s\rU�GVz���˾_�@�:�A��TeT-]��m5�%�}�\0:�>�m)�=���>��Yc�*�/�G�7Q���e�|]e[�{ܧ���s�ږ�ݏ\Z�_$�j����J*WU���;��V��@ܧ���s�ږ�����qş��zy�/.}Q���\n�]r���~�m5�=�}�\0:�>�m)�P��\\����@mK���hɵ\0kI��&�ʵ\0ɧ�j����O�FK�XK�\\���\\�C�hɵ\0kI�Զ�kgU�%��%}.P�R���j��Z����j���~��N���j��Z����j���{���>�_5Tr-�Z���\r\r\r}g����S���������>u\0D�j��ؓb��ǿ����>u\0D�j������k����\'U�5<|���dܧ��ȵ@]����t�����}��FF��>i\0�E��R(?0=��A�^��{��ߗ�?�I�,r-P���ف�Kfg\'�`F�Ta�\r�`j��>]\0G�\Z0==F۱�?��TeMN~���oj��>Q\0�H�\ZS(FGs������z~�� ا������ۑ���Ã��O@��k�՘�����_o�w�����##\n�mܧ��ɵ@��G,\0�H�.Ϫ`��\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H7����\0H����0�vww�/z{{�?�������ƽk\0�F���[��VW�+��rrr2�] 6r-�>�B�s�)\r��_~yooo>��{�\0��\\��g?�ٳ�:��k?��O���ƽS\0�I��ꢋ.�B�5�\\���W(��#\0�$�iu�����mos��А+k�k��ꪫ�\\��\0?�H����0׺�\0�\\���2\01\0)���s���{ȵ@z�qvӦM�عsppP�@�R)\n�{�wra1�S�@�ҧ4�F%� �)SjE[\0�H��B�h�\\�F�P+�t8�H�zB�h���Z ���-@ǒk��k4Ԋ�\0�I�mu�V��@r-�\\���λ���.d�tdݺu�عS��@r-�Pˆ�����/�Q��Z\"�t �H�*�6RmKC�hЙ�Z q*C��c�{{{�ެm+Cm(���{^��r-�,U����Sm�=�ز��λ��kd\0E���cr+���g�]O�m2O������VF�:C�h�mr-�\r=&w�h[3Ԋ�\0&����{��W��k���ַ��ڷ��-;w�s�k�F۸\Z�V�k�D���	��ᗎԌ������kd+=��l\ra�\r��A�Jr-��D�*���h+�d�\\$H�h�l�}�[�R�j2L��e�h�����+_]����>hW��0�H��h�R���~��#��+�d�\\$Qe�ݲ��ˆڕn��y��ǎ�\0�C��J�]�1��h[j{{{o�����k�䚜������F�ʙڻ�{hh(��y@�ɵ@B���\rT��V&�S���t����x��ݻ�=.\0�D�gvvv�ƍ����B!h�\r5�~0??o� ��Z Y�i�����7���Q��-@&ɵ@R�MӖi�A�5�~`� {�Z v��Q9M[����K/�\0Y\"�B����O�ke�WU�@���z[mM�nݺu�i�25���}j�rⶅ��J:M�A=y��LS\\�t��`T3*՟�Z��V1cZ�A��~���Lܶ��0@��`���J�)M��kX6�ֳ��^Q��+n=��������e�����`�v���� t�����\\��:����Ϊּ���GK�m��։�d�����ک�:mt5X�\Z�������;�.��V����|��E�h{���V��H4q\n_4��z��+?Re��=\0�+���R-��\'����W\nO���^��^EJ+�{���Ά�q�������(������3Q� {�}�F��˲A�y4X!�v�7Y�R���s�2Ws��T�|>���Z2	�fZ�ϕg��b�jչ\0�*]!��*Y���Y�P�OKU�ҿ{׻�H;�>�L�v��3՚s�a�AXՃl�s�+-Y�7-��-���e?Rs\'�8M[����g���O�>\0����Aj�����F��k�t�)�:SZ��i+5s8-ȵ͝�N���:ז͹�e�*Yv��!Եp�;�Batt4�Ӵ�V7q[�7VϏ�\\3@��aMU���e��3M��չ�҅k�hzzz```ll��u�Q��u~c���\\\0t}�2�4�ƍggg�ޗ���u�\0#����i�J�� ��Z�Y�3M[�8q;77��\0t:�hJ�e�D�QӴ�����\0b\'��&����v<�6u:y�\Z !�Z`5�i�0Ʌy.�}I��� 9�Z�a�4m���ޑ$2q�h�i�:��X{r-P�;v�����[�5&�����\r\rmݺ�4m�L����a||������q�HZ��Xr-��h�6�������%�L���\\,�4m˙�h+�(���MӶO4q�m�6+��\\�I�HXӴm&�0׺�@kɵЉn������7��|.�\Z\Z����c�:�J7��W�����\n ��Z�8�]w]WW�9�S\Z��i�ʰK��=�-�����\\p�aލw�\0RG������w-���&\'\'Ӵ	P:q{�-�D\'(���oh�\\���}o��;�K/�t׮]�i\"��}�����/��S��T�;�&r-t�[o�����?����~:���\r���J�λ�������w\n 5�Z��|����,�^q�###q�\Zg�x�eg���^�~}���\Zr-t����s�=���/�����������I�E	1::\Zf����������^x��;����=N@��Z�7n�.<X�~��mۦ�������)ʅ\'%<5�	��r��[����/�8�H�:�\'��T�V	q�@\nȵd\\��&&&FFF����:Ux��70<<<>>��Qi��F�^�Nr-Y�{��pDc���~�=<��Й{�\r�ڵk˖-�w����z�^�Qr-�=k`��͇�;tr�*��/�A��xC2i�Z/�:r-Ƃ���o����\'�Ju�]wnذ���%�֫��&גA�\\n)���׽{�ٴ�q�.�D��z�U�kɚݻwo����ł��>�7�|���>i�A��z�fȵdJ�P���{������T=u���׭��Ϳ�@��z�&ɵd���x.�[X|�XW�Q��*�TG��7��ۣ&�֫�M�kɔ���]w��/c��6�4~|*xf!�������c����Ͽ�����Å��W�{^���\'������X��}�q�:�^�h�\\K����������񨺺������+���\'�W�����s]�r��\r?�:z=�+�o~��I��Xǎ����ԡ�j�@��Z2����#�/,�*�_=�8u�G��������ݿ}�_}�K�Apt1xe!xy!��=�<���uf���#�z�^�i�2eit?Z����#�\'O��@>���_���z�37u_8�\\J=�x�g;�$�$�z�^�I�2eit��b�I��ï?;,��\'�/����]]���-�ܻﱲ�vTII��j�@�td����J���=�Z�����׃��t�E�����}�;G>��d�ȣ��>�Q%$�֫�M��)K�{�X�__;�\\83�u��`�#���[��߸�=|�_��z;�z���~��U�Ah�Z/�$���p��?/V4��������\'��.<��ܺ������/�~V^,GNa6x��G�>�Q%$�֫�M��)e��������3{�����}p�샏=��������g�������჏�p��|�\'���Ώ^���Ghɠ�i�Z/�$����^.���D=�k��|��U�Ah�Z/�$������FK2H�W���; S�$�S/�FK2H�W���; S���a�hII��j�@�td�R2xQ5Z�Ah�Z/�$����~�\Z-� 	�^�h��LYJ�ђ�@��z�&���@2H/�W���; S���O�T����Xi����/�zhq�:��z�i�Z/�v�2%�N�z��Uv��wʖ���+�T����+� 	�q��i�Z/��2ei}~\r����-���ҏ�\\a��8��Omi��:�.�G�^ ;td����\\˫t����;e[,�\r�sُWn�MG�9�SG[Zoi[�\\��d��LY\Z;���5�_�ײŪ�d%�k(�i�-Zyܧ���޲�UO#�z����)K��OZ[+��?)n�ʐ_\\�t�z^�����Uv�q�:��z�4T���������]����l�����g\rr��Z�����LY\ZD���\\�P�Wz���e_�_sU-?��Omi���u�H��١; S����Z^���^�)�b�e?]qƫ�S+m�M���-���uU6`�����4�>��*]m��dD_f���eT�����\r-���`ܧ���ޚMT��Dw@�,��?jyU�N�h�\r��N����P���w�qtњ�>u���V���5۪����LY\Z;��JW�^iC����K�\"\r,�����\0�>u���V6�e��d��LY\Z;�FK2H�W���; S���3�ђ�@��z�&���@2H/�W���; S����U�%$�֫�M��)K����ђ�@��z�&�Ȕ�d0�\Z-� 	�^�h��LYJ?P��d�Z��4Iw@�tww���c�O_5T�Ah�Z/�$��������=}z�j�$�$�z�^�I�2ehh�;�w��R��f������C��z�fɵd�������>֦��y��\\.�S�֫�͒kɔ�������V�{:xR�Y��WMNN�}��z�^�Yr-Y�팭��\'T=��722�I�\rZ��4C�%k\n�������5W�k~~O�����>i�A��z�fȵd������%���A0�V�0�jj��>]��֫��&גM���a8�� xLU���������1��2�^�X���*\n��������=?O�S��OL���������uܧ�i�Z/�\nr-755������_���WGF>���Ou�zKi�@Mr-d�֭[������5;;�.\0$�\\桍7���\n����U\Z�{/\0�N����0ݚ�K�[P?�:������@p���MӺ��Nr-t��߲ݸq���|��B5�iVA���3==���?>>���<Ӵ\0�#�B\'���\\nxx8|���K�i�!�B皜����߽{w�;��i�$�BG���\Z\Z��r&cd��%�Z 7SӴ\0�\"�g��ޑb����Z��<�a͌���_�iZ��k�7	���7�U�f7�\0h-�(=�!�^��r����A�&r-��0{y|C��h7�XQ�����Q�I�iր\\�011!���iZ�5#��E��npG����XKr-P��۷{�@�L��=�h@�(�m۶Ž#�f� r-а0�z|òL��H�V#z|Î;�ޑ�v\0�k�U*\n[�n����\r�\0�A��=�abb\"���X\0$�\\4+�Ϗ��t�E��4�k���k��贛\0��H\Z�h��n\0����~|�iZ�d�k����L�$�\\�������`p�ޑV2M�pr-��Batt43�o0M�|r-�F��RM���\\�W�PHo.4M�\"r-�������y�\Z@�ȵ�\Z���aLL����\'v����\0�\0�XS�������|��o\\�=	�Xy�A�~�\r��ȵ�Z����c��\r�|����.ߩ���&\'\'�m�6<<<�CCC�;aN��뮻.��9�S��h�6c�\'�r-���\r333��rKג0�V�D!��a��%����3�~��h��.�,\\g`� �Z 6a��������:+J�^x�>��e����\nCg�D[���/ʬ�����F˜w�y�^z���k� �Z 6_������������e�ۄU��~�3�k��X7���͛7�-9<<\\6|뭷�-s��>��#k{�\0��\\�檫���_��҈y��g�_���@t%n��_���\\X\\��t�k�����[:q[��a����.˵W\\q���HL�\0-#����f���������;�q�9���o�ft�����0�����P�D[�no��s�φY6������{�嗿������톛��\0 �1����Զm�&�0���=�)\n�3�_���:mi�~��gg��Z��=���ׯ_n1�n����\0\0ZC��%L�CCC�{����v׮;Vj���辞��h=����\0 ��Z q&\'\'���-�;ﺻ���۷�}p\0��\\$���@��&CmT�km{{{����T�k�d���(��ס�oI�=z�x�	7�pC܇@[ȵ@�o�ՒP�7v�V����!�r-� �|�x-l�&k�u��o�5ljj*����Z A��ǣ�988��Pֵ�~\"Z���h�\n@�ɵ@�lݺ�U�A��{���|�ƍq(\0�\'�	244E�;ﺻ������g4�}�\0��\\$H�_{���\\V��ݸ��ӹ	R�ׁ�ۑk���@h=�;� ���Q�|j��v����n� �t�@�o^{��Zj�t�-l2L�$��E��k����\\�������>P\0ZO�dll,��[�|���7��|dd$����Z Afgg��\n=v���vӦM������>P\0ZO�������uGCm�浡|>�Q�zr-�,���Q�\\�n]�l?|���j����>D\0�B��%���2۪��>��C��ڙ������k��پ}{�A������ׁ��Ay�֭q\0�\"�I�q��(�����g�=v|ݺu�U����}d\0��\\$���\\OOO1��}t�*B��/�������6�k��\nch��0�6���|�x�Ah���q\0�%��599Y����p�]w�3M��k��*!�t�H�������Ґ\Z�ۛn��S��W�ٯ�v��͛Kc��\0:�\\$]>�߶m[www�r6lذҏFFF��@�k�tj.�[6�V\Z����{�XSr-�&�Babb\"�eY���oxxxǎ�h:�\\\0@ȵ\0\0d�\\\0@ȵ\0\0d�\\\0@ȵ\0\0d���i�<�|\0\0\0\0IEND�B`�',0),('2503',1,'LeaveProcess.bpmn','2501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask1\" name=\"员工请假申请\" activiti:candidateGroups=\"员工\"></userTask>\n    <userTask id=\"usertask2\" name=\"部长审批\" activiti:candidateGroups=\"部长\"></userTask>\n    <userTask id=\"usertask3\" name=\"院长审批\" activiti:candidateGroups=\"院长\"></userTask>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"小于或等于7天\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days<=7}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"大于7天\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days>7}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"usertask2\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"240.0\" y=\"260.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"474.0\" y=\"260.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"387.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"407.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"407.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"407.0\" y=\"230.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"292.0\" y=\"260.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"312.0\" y=\"230.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"407.0\" y=\"230.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"526.0\" y=\"260.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"439.0\" y=\"230.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"292.0\" y=\"315.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"526.0\" y=\"315.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

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

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10002','myProcess:1:2504','10001','10001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:39:45','2017-08-01 19:39:45',25,''),('10005','myProcess:1:2504','10001','10001','usertask1','10006',NULL,'员工请假申请','userTask',NULL,'2017-08-01 19:39:45',NULL,NULL,''),('10010','myProcess:1:2504','10009','10009','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:40:57','2017-08-01 19:40:57',3,''),('10013','myProcess:1:2504','10009','10009','usertask1','10014',NULL,'员工请假申请','userTask',NULL,'2017-08-01 19:40:57','2017-08-01 19:40:58',1067,''),('10016','myProcess:1:2504','10009','10009','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:40:58','2017-08-01 19:40:58',3,''),('10017','myProcess:1:2504','10009','10009','usertask3','10018',NULL,'院长审批','userTask',NULL,'2017-08-01 19:40:58','2017-08-01 22:47:41',11203899,''),('12502','myProcess:1:2504','12501','12501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:41:49','2017-08-01 19:41:49',26,''),('12505','myProcess:1:2504','12501','12501','usertask1','12506',NULL,'员工请假申请','userTask',NULL,'2017-08-01 19:41:49','2017-08-01 19:41:50',1074,''),('12508','myProcess:1:2504','12501','12501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:41:50','2017-08-01 19:41:50',33,''),('12509','myProcess:1:2504','12501','12501','usertask3','12510',NULL,'院长审批','userTask',NULL,'2017-08-01 19:41:50','2017-08-01 22:47:54',11164233,''),('15002','myProcess:1:2504','15001','15001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:43:28','2017-08-01 19:43:28',15,''),('15005','myProcess:1:2504','15001','15001','usertask1','15006',NULL,'员工请假申请','userTask',NULL,'2017-08-01 19:43:28','2017-08-01 19:43:29',1086,''),('15008','myProcess:1:2504','15001','15001','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:43:29','2017-08-01 19:43:29',15,''),('15009','myProcess:1:2504','15001','15001','usertask3','15010',NULL,'院长审批','userTask',NULL,'2017-08-01 19:43:29','2017-08-01 22:48:01',11072662,''),('15013','myProcess:1:2504','15012','15012','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:54:22','2017-08-01 19:54:22',3,''),('15016','myProcess:1:2504','15012','15012','usertask1','15017',NULL,'员工请假申请','userTask',NULL,'2017-08-01 19:54:22','2017-08-01 19:54:22',675,''),('15019','myProcess:1:2504','15012','15012','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 19:54:22','2017-08-01 19:54:22',3,''),('15020','myProcess:1:2504','15012','15012','usertask2','15021',NULL,'部长审批','userTask',NULL,'2017-08-01 19:54:22','2017-08-01 22:58:06',11024311,''),('17502','myProcess:1:2504','17501','17501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 20:06:08','2017-08-01 20:06:09',30,''),('17505','myProcess:1:2504','17501','17501','usertask1','17506',NULL,'员工请假申请','userTask',NULL,'2017-08-01 20:06:09','2017-08-01 20:06:09',336,''),('17508','myProcess:1:2504','17501','17501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-01 20:06:09','2017-08-01 20:06:09',31,''),('17509','myProcess:1:2504','17501','17501','usertask3','17510',NULL,'院长审批','userTask',NULL,'2017-08-01 20:06:09','2017-08-01 22:30:38',8669352,''),('20002','myProcess:1:2504','17501','17501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:30:38','2017-08-01 22:30:38',1,''),('22502','myProcess:1:2504','10009','10009','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:47:41','2017-08-01 22:47:41',1,''),('22504','myProcess:1:2504','12501','12501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:47:54','2017-08-01 22:47:54',0,''),('22506','myProcess:1:2504','15001','15001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:48:01','2017-08-01 22:48:01',0,''),('27501','myProcess:1:2504','15012','15012','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-01 22:58:06','2017-08-01 22:58:06',0,''),('30002','myProcess:1:2504','30001','30001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 19:36:49','2017-08-02 19:36:49',25,''),('30005','myProcess:1:2504','30001','30001','usertask1','30006',NULL,'员工请假申请','userTask',NULL,'2017-08-02 19:36:49','2017-08-02 19:36:49',898,''),('30008','myProcess:1:2504','30001','30001','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 19:36:49','2017-08-02 19:36:49',31,''),('30009','myProcess:1:2504','30001','30001','usertask2','30010',NULL,'部长审批','userTask',NULL,'2017-08-02 19:36:49','2017-08-02 19:41:51',302288,''),('30013','myProcess:1:2504','30012','30012','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 19:36:52','2017-08-02 19:36:52',3,''),('30016','myProcess:1:2504','30012','30012','usertask1','30017',NULL,'员工请假申请','userTask',NULL,'2017-08-02 19:36:52','2017-08-02 19:36:52',299,''),('30019','myProcess:1:2504','30012','30012','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 19:36:52','2017-08-02 19:36:52',3,''),('30020','myProcess:1:2504','30012','30012','usertask3','30021',NULL,'院长审批','userTask',NULL,'2017-08-02 19:36:52','2017-08-02 19:39:25',153356,''),('30024','myProcess:1:2504','30012','30012','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 19:39:25','2017-08-02 19:39:25',0,''),('32502','myProcess:1:2504','30001','30001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 19:41:51','2017-08-02 19:41:51',0,''),('35002','myProcess:1:2504','35001','35001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:20:14','2017-08-02 20:20:14',16,''),('35005','myProcess:1:2504','35001','35001','usertask1','35006',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:20:14','2017-08-02 20:20:15',1311,''),('35008','myProcess:1:2504','35001','35001','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:20:15','2017-08-02 20:20:15',19,''),('35009','myProcess:1:2504','35001','35001','usertask3','35010',NULL,'院长审批','userTask',NULL,'2017-08-02 20:20:15','2017-08-02 20:21:40',85570,''),('35013','myProcess:1:2504','35012','35012','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:20:17','2017-08-02 20:20:17',4,''),('35016','myProcess:1:2504','35012','35012','usertask1','35017',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:20:17','2017-08-02 20:20:17',455,''),('35019','myProcess:1:2504','35012','35012','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:20:17','2017-08-02 20:20:17',3,''),('35020','myProcess:1:2504','35012','35012','usertask2','35021',NULL,'部长审批','userTask',NULL,'2017-08-02 20:20:17','2017-08-02 20:22:33',136555,''),('35025','myProcess:1:2504','35001','35001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:21:40','2017-08-02 20:21:40',0,''),('35028','myProcess:1:2504','35012','35012','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:22:33','2017-08-02 20:22:33',0,''),('35031','myProcess:1:2504','35029','35029','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:29:48','2017-08-02 20:29:48',3,''),('35034','myProcess:1:2504','35029','35029','usertask1','35035',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:29:48','2017-08-02 20:29:49',1507,''),('35037','myProcess:1:2504','35029','35029','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:29:49','2017-08-02 20:29:49',3,''),('35038','myProcess:1:2504','35029','35029','usertask3','35039',NULL,'院长审批','userTask',NULL,'2017-08-02 20:29:49','2017-08-02 20:30:47',58524,''),('35042','myProcess:1:2504','35041','35041','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:29:53','2017-08-02 20:29:53',6,''),('35045','myProcess:1:2504','35041','35041','usertask1','35046',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:29:53','2017-08-02 20:29:53',749,''),('35048','myProcess:1:2504','35041','35041','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:29:53','2017-08-02 20:29:53',2,''),('35049','myProcess:1:2504','35041','35041','usertask2','35050',NULL,'部长审批','userTask',NULL,'2017-08-02 20:29:53','2017-08-02 20:38:04',491050,''),('35053','myProcess:1:2504','35052','35052','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:29:55','2017-08-02 20:29:55',3,''),('35056','myProcess:1:2504','35052','35052','usertask1','35057',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:29:55','2017-08-02 20:29:55',759,''),('35059','myProcess:1:2504','35052','35052','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:29:55','2017-08-02 20:29:55',6,''),('35060','myProcess:1:2504','35052','35052','usertask3','35061',NULL,'院长审批','userTask',NULL,'2017-08-02 20:29:55','2017-08-02 20:45:18',923496,''),('35065','myProcess:1:2504','35029','35029','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:30:47','2017-08-02 20:30:47',0,''),('35068','myProcess:1:2504','35041','35041','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:38:04','2017-08-02 20:38:04',0,''),('35071','myProcess:1:2504','35052','35052','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:45:18','2017-08-02 20:45:18',0,''),('35074','myProcess:1:2504','35072','35072','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:47:39','2017-08-02 20:47:39',4,''),('35077','myProcess:1:2504','35072','35072','usertask1','35078',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:47:39','2017-08-02 20:47:39',750,''),('35080','myProcess:1:2504','35072','35072','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:47:39','2017-08-02 20:47:39',2,''),('35081','myProcess:1:2504','35072','35072','usertask2','35082',NULL,'部长审批','userTask',NULL,'2017-08-02 20:47:39','2017-08-02 20:48:00',21773,''),('35086','myProcess:1:2504','35072','35072','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:48:00','2017-08-02 20:48:00',0,''),('35089','myProcess:1:2504','35087','35087','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:51:55','2017-08-02 20:51:55',4,''),('35092','myProcess:1:2504','35087','35087','usertask1','35093',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:51:55','2017-08-02 20:51:56',1023,''),('35095','myProcess:1:2504','35087','35087','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:51:56','2017-08-02 20:51:56',5,''),('35096','myProcess:1:2504','35087','35087','usertask3','35097',NULL,'院长审批','userTask',NULL,'2017-08-02 20:51:56','2017-08-02 20:52:32',36358,''),('35100','myProcess:1:2504','35099','35099','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:51:57','2017-08-02 20:51:57',3,''),('35103','myProcess:1:2504','35099','35099','usertask1','35104',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:51:58','2017-08-02 20:51:58',129,''),('35106','myProcess:1:2504','35099','35099','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:51:58','2017-08-02 20:51:58',1,''),('35107','myProcess:1:2504','35099','35099','usertask3','35108',NULL,'院长审批','userTask',NULL,'2017-08-02 20:51:58','2017-08-02 21:02:17',619203,''),('35112','myProcess:1:2504','35110','35110','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:51:59','2017-08-02 20:51:59',2,''),('35115','myProcess:1:2504','35110','35110','usertask1','35116',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:51:59','2017-08-02 20:51:59',737,''),('35118','myProcess:1:2504','35110','35110','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:51:59','2017-08-02 20:51:59',2,''),('35119','myProcess:1:2504','35110','35110','usertask3','35120',NULL,'院长审批','userTask',NULL,'2017-08-02 20:51:59','2017-08-02 21:06:46',887904,''),('35124','myProcess:1:2504','35122','35122','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 20:52:01','2017-08-02 20:52:01',36,''),('35127','myProcess:1:2504','35122','35122','usertask1','35128',NULL,'员工请假申请','userTask',NULL,'2017-08-02 20:52:01','2017-08-02 20:52:01',235,''),('35130','myProcess:1:2504','35122','35122','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 20:52:01','2017-08-02 20:52:01',2,''),('35131','myProcess:1:2504','35122','35122','usertask3','35132',NULL,'院长审批','userTask',NULL,'2017-08-02 20:52:01','2017-08-02 21:00:14',493322,''),('35136','myProcess:1:2504','35087','35087','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 20:52:32','2017-08-02 20:52:32',1,''),('35139','myProcess:1:2504','35122','35122','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 21:00:14','2017-08-02 21:00:14',0,''),('35142','myProcess:1:2504','35099','35099','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 21:02:17','2017-08-02 21:02:17',0,''),('35144','myProcess:1:2504','35110','35110','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 21:06:46','2017-08-02 21:06:46',1,''),('37502','myProcess:1:2504','37501','37501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-02 21:20:07','2017-08-02 21:20:07',17,''),('37505','myProcess:1:2504','37501','37501','usertask1','37506',NULL,'员工请假申请','userTask',NULL,'2017-08-02 21:20:07','2017-08-02 21:20:08',1347,''),('37508','myProcess:1:2504','37501','37501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-02 21:20:08','2017-08-02 21:20:08',24,''),('37509','myProcess:1:2504','37501','37501','usertask3','37510',NULL,'院长审批','userTask',NULL,'2017-08-02 21:20:08','2017-08-02 22:08:26',2898066,''),('40003','myProcess:1:2504','37501','37501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-02 22:08:26','2017-08-02 22:08:26',2,''),('42502','myProcess:1:2504','42501','42501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-03 21:36:26','2017-08-03 21:36:26',42,''),('42505','myProcess:1:2504','42501','42501','usertask1','42506',NULL,'员工请假申请','userTask',NULL,'2017-08-03 21:36:26','2017-08-03 21:36:27',1140,''),('42508','myProcess:1:2504','42501','42501','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-03 21:36:27','2017-08-03 21:36:27',19,''),('42509','myProcess:1:2504','42501','42501','usertask3','42510',NULL,'院长审批','userTask',NULL,'2017-08-03 21:36:27','2017-08-03 21:37:25',58265,''),('42513','myProcess:1:2504','42512','42512','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29',8,''),('42516','myProcess:1:2504','42512','42512','usertask1','42517',NULL,'员工请假申请','userTask',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29',661,''),('42519','myProcess:1:2504','42512','42512','exclusivegateway1',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2017-08-03 21:36:29','2017-08-03 21:36:29',3,''),('42520','myProcess:1:2504','42512','42512','usertask3','42521',NULL,'院长审批','userTask',NULL,'2017-08-03 21:36:29',NULL,NULL,''),('42525','myProcess:1:2504','42501','42501','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-08-03 21:37:25','2017-08-03 21:37:25',0,''),('5002','myProcess:1:2504','5001','5001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:35:07','2017-08-01 19:35:07',16,''),('5004','myProcess:1:2504','5001','5001','usertask1','5005',NULL,'员工请假申请','userTask',NULL,'2017-08-01 19:35:07',NULL,NULL,''),('7502','myProcess:1:2504','7501','7501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-08-01 19:37:28','2017-08-01 19:37:28',20,''),('7504','myProcess:1:2504','7501','7501','usertask1','7505',NULL,'员工请假申请','userTask',NULL,'2017-08-01 19:37:28',NULL,NULL,'');

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

insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('20001','comment','2017-08-01 22:30:37',NULL,'17510','17501','AddComment','这不是理由！','这不是理由！'),('22501','comment','2017-08-01 22:47:41',NULL,'10018','10009','AddComment','对不起，没有理由哦','对不起，没有理由哦'),('22503','comment','2017-08-01 22:47:54',NULL,'12510','12501','AddComment','对不起，没有理由哦','对不起，没有理由哦'),('22505','comment','2017-08-01 22:48:01',NULL,'15010','15001','AddComment','对不起，没有理由哦','对不起，没有理由哦'),('30023','comment','2017-08-02 19:39:25',NULL,'30021','30012','AddComment','批准了！','批准了！'),('32501','comment','2017-08-02 19:41:50',NULL,'30010','30001','AddComment','好的，加油，小伙子1','好的，加油，小伙子1'),('35023','comment','2017-08-02 20:21:40','赵英男【院长】','35010','35001','AddComment','可以，锻炼身体，去吧！','可以，锻炼身体，去吧！'),('35026','comment','2017-08-02 20:22:33','秋水【部长】','35021','35012','AddComment','可以，马路杀手，加油1','可以，马路杀手，加油1'),('35063','comment','2017-08-02 20:30:47','赵英男【院长】','35039','35029','AddComment','注意身体！','注意身体！'),('35066','comment','2017-08-02 20:38:03','秋水【部长】','35050','35041','AddComment','去吧','去吧'),('35069','comment','2017-08-02 20:45:18','赵英男【院长】','35061','35052','AddComment','玩去吧，小伙子!','玩去吧，小伙子!'),('35084','comment','2017-08-02 20:48:00','秋水【部长】','35082','35072','AddComment','滚!','滚!'),('35134','comment','2017-08-02 20:52:32','赵英男【院长】','35097','35087','AddComment','测试01','测试01'),('35137','comment','2017-08-02 21:00:14','赵英男【院长】','35132','35122','AddComment','测试06','测试06'),('35140','comment','2017-08-02 21:02:17','赵英男【院长】','35108','35099','AddComment','测试02','测试02'),('35143','comment','2017-08-02 21:06:46','赵英男【院长】','35120','35110','AddComment','测试05','测试05'),('40001','comment','2017-08-02 22:08:25','赵英男【院长】','37510','37501','AddComment','测试07','测试07'),('42523','comment','2017-08-03 21:37:25','赵英男【院长】','42510','42501','AddComment','朕准了！','朕准了！');

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

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10007','员工','candidate',NULL,'10006',NULL),('10015','员工','candidate',NULL,'10014',NULL),('10019','院长','candidate',NULL,'10018',NULL),('12507','员工','candidate',NULL,'12506',NULL),('12511','院长','candidate',NULL,'12510',NULL),('15007','员工','candidate',NULL,'15006',NULL),('15011','院长','candidate',NULL,'15010',NULL),('15018','员工','candidate',NULL,'15017',NULL),('15022','部长','candidate',NULL,'15021',NULL),('17507','员工','candidate',NULL,'17506',NULL),('17511','院长','candidate',NULL,'17510',NULL),('30007','员工','candidate',NULL,'30006',NULL),('30011','部长','candidate',NULL,'30010',NULL),('30018','员工','candidate',NULL,'30017',NULL),('30022','院长','candidate',NULL,'30021',NULL),('35007','员工','candidate',NULL,'35006',NULL),('35011','院长','candidate',NULL,'35010',NULL),('35018','员工','candidate',NULL,'35017',NULL),('35022','部长','candidate',NULL,'35021',NULL),('35024',NULL,'participant','赵英男【院长】',NULL,'35001'),('35027',NULL,'participant','秋水【部长】',NULL,'35012'),('35030',NULL,'starter','秋水【部长】',NULL,'35029'),('35036','员工','candidate',NULL,'35035',NULL),('35040','院长','candidate',NULL,'35039',NULL),('35047','员工','candidate',NULL,'35046',NULL),('35051','部长','candidate',NULL,'35050',NULL),('35058','员工','candidate',NULL,'35057',NULL),('35062','院长','candidate',NULL,'35061',NULL),('35064',NULL,'participant','赵英男【院长】',NULL,'35029'),('35067',NULL,'participant','秋水【部长】',NULL,'35041'),('35070',NULL,'participant','赵英男【院长】',NULL,'35052'),('35073',NULL,'starter','赵英男【院长】',NULL,'35072'),('35079','员工','candidate',NULL,'35078',NULL),('35083','部长','candidate',NULL,'35082',NULL),('35085',NULL,'participant','秋水【部长】',NULL,'35072'),('35088',NULL,'starter','秋水【部长】',NULL,'35087'),('35094','员工','candidate',NULL,'35093',NULL),('35098','院长','candidate',NULL,'35097',NULL),('35105','员工','candidate',NULL,'35104',NULL),('35109','院长','candidate',NULL,'35108',NULL),('35111',NULL,'starter','赵英男【院长】',NULL,'35110'),('35117','员工','candidate',NULL,'35116',NULL),('35121','院长','candidate',NULL,'35120',NULL),('35123',NULL,'starter','秋水【部长】',NULL,'35122'),('35129','员工','candidate',NULL,'35128',NULL),('35133','院长','candidate',NULL,'35132',NULL),('35135',NULL,'participant','赵英男【院长】',NULL,'35087'),('35138',NULL,'participant','赵英男【院长】',NULL,'35122'),('35141',NULL,'participant','赵英男【院长】',NULL,'35099'),('37507','员工','candidate',NULL,'37506',NULL),('37511','院长','candidate',NULL,'37510',NULL),('40002',NULL,'participant','赵英男【院长】',NULL,'37501'),('42507','员工','candidate',NULL,'42506',NULL),('42511','院长','candidate',NULL,'42510',NULL),('42518','员工','candidate',NULL,'42517',NULL),('42522','院长','candidate',NULL,'42521',NULL),('42524',NULL,'participant','赵英男【院长】',NULL,'42501'),('5006','员工','candidate',NULL,'5005',NULL),('7506','员工','candidate',NULL,'7505',NULL);

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

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('10001','10001',NULL,'myProcess:1:2504','2017-08-01 19:39:45',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL),('10009','10009',NULL,'myProcess:1:2504','2017-08-01 19:40:57','2017-08-01 22:47:41',11204904,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('12501','12501',NULL,'myProcess:1:2504','2017-08-01 19:41:49','2017-08-01 22:47:54',11165235,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('15001','15001',NULL,'myProcess:1:2504','2017-08-01 19:43:28','2017-08-01 22:48:01',11073667,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('15012','15012',NULL,'myProcess:1:2504','2017-08-01 19:54:22','2017-08-01 22:58:06',11024382,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('17501','17501',NULL,'myProcess:1:2504','2017-08-01 20:06:08','2017-08-01 22:30:38',8670358,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('30001','30001',NULL,'myProcess:1:2504','2017-08-02 19:36:49','2017-08-02 19:41:51',302296,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('30012','30012',NULL,'myProcess:1:2504','2017-08-02 19:36:52','2017-08-02 19:39:25',153360,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35001','35001',NULL,'myProcess:1:2504','2017-08-02 20:20:14','2017-08-02 20:21:40',86573,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35012','35012',NULL,'myProcess:1:2504','2017-08-02 20:20:17','2017-08-02 20:22:33',136558,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35029','35029',NULL,'myProcess:1:2504','2017-08-02 20:29:48','2017-08-02 20:30:47',59526,'秋水【部长】','startevent1','endevent1',NULL,NULL,'',NULL),('35041','35041',NULL,'myProcess:1:2504','2017-08-02 20:29:53','2017-08-02 20:38:04',491054,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35052','35052',NULL,'myProcess:1:2504','2017-08-02 20:29:55','2017-08-02 20:45:18',923497,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35072','35072',NULL,'myProcess:1:2504','2017-08-02 20:47:39','2017-08-02 20:48:00',21775,'赵英男【院长】','startevent1','endevent1',NULL,NULL,'',NULL),('35087','35087',NULL,'myProcess:1:2504','2017-08-02 20:51:55','2017-08-02 20:52:32',37360,'秋水【部长】','startevent1','endevent1',NULL,NULL,'',NULL),('35099','35099',NULL,'myProcess:1:2504','2017-08-02 20:51:57','2017-08-02 21:02:17',620211,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('35110','35110',NULL,'myProcess:1:2504','2017-08-02 20:51:59','2017-08-02 21:06:46',887914,'赵英男【院长】','startevent1','endevent1',NULL,NULL,'',NULL),('35122','35122',NULL,'myProcess:1:2504','2017-08-02 20:52:01','2017-08-02 21:00:14',493324,'秋水【部长】','startevent1','endevent1',NULL,NULL,'',NULL),('37501','37501',NULL,'myProcess:1:2504','2017-08-02 21:20:07','2017-08-02 22:08:26',2899072,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('42501','42501',NULL,'myProcess:1:2504','2017-08-03 21:36:26','2017-08-03 21:37:25',59267,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('42512','42512',NULL,'myProcess:1:2504','2017-08-03 21:36:29',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL),('5001','5001',NULL,'myProcess:1:2504','2017-08-01 19:35:07',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL),('7501','7501',NULL,'myProcess:1:2504','2017-08-01 19:37:28',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

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

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10006','myProcess:1:2504','usertask1','10001','10001','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 19:39:45',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('10014','myProcess:1:2504','usertask1','10009','10009','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 19:40:57',NULL,'2017-08-01 19:40:58',1060,'completed',50,NULL,NULL,NULL,''),('10018','myProcess:1:2504','usertask3','10009','10009','院长审批',NULL,NULL,NULL,NULL,'2017-08-01 19:40:58',NULL,'2017-08-01 22:47:41',11203863,'completed',50,NULL,NULL,NULL,''),('12506','myProcess:1:2504','usertask1','12501','12501','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 19:41:49',NULL,'2017-08-01 19:41:50',1059,'completed',50,NULL,NULL,NULL,''),('12510','myProcess:1:2504','usertask3','12501','12501','院长审批',NULL,NULL,NULL,NULL,'2017-08-01 19:41:50',NULL,'2017-08-01 22:47:54',11164227,'completed',50,NULL,NULL,NULL,''),('15006','myProcess:1:2504','usertask1','15001','15001','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 19:43:28',NULL,'2017-08-01 19:43:29',1077,'completed',50,NULL,NULL,NULL,''),('15010','myProcess:1:2504','usertask3','15001','15001','院长审批',NULL,NULL,NULL,NULL,'2017-08-01 19:43:29',NULL,'2017-08-01 22:48:01',11072656,'completed',50,NULL,NULL,NULL,''),('15017','myProcess:1:2504','usertask1','15012','15012','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 19:54:22',NULL,'2017-08-01 19:54:22',668,'completed',50,NULL,NULL,NULL,''),('15021','myProcess:1:2504','usertask2','15012','15012','部长审批',NULL,NULL,NULL,NULL,'2017-08-01 19:54:22',NULL,'2017-08-01 22:58:06',11024268,'completed',50,NULL,NULL,NULL,''),('17506','myProcess:1:2504','usertask1','17501','17501','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 20:06:09',NULL,'2017-08-01 20:06:09',333,'completed',50,NULL,NULL,NULL,''),('17510','myProcess:1:2504','usertask3','17501','17501','院长审批',NULL,NULL,NULL,NULL,'2017-08-01 20:06:09',NULL,'2017-08-01 22:30:38',8669300,'completed',50,NULL,NULL,NULL,''),('30006','myProcess:1:2504','usertask1','30001','30001','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 19:36:49',NULL,'2017-08-02 19:36:49',882,'completed',50,NULL,NULL,NULL,''),('30010','myProcess:1:2504','usertask2','30001','30001','部长审批',NULL,NULL,NULL,NULL,'2017-08-02 19:36:49',NULL,'2017-08-02 19:41:51',302247,'completed',50,NULL,NULL,NULL,''),('30017','myProcess:1:2504','usertask1','30012','30012','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 19:36:52',NULL,'2017-08-02 19:36:52',291,'completed',50,NULL,NULL,NULL,''),('30021','myProcess:1:2504','usertask3','30012','30012','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 19:36:52',NULL,'2017-08-02 19:39:25',153334,'completed',50,NULL,NULL,NULL,''),('35006','myProcess:1:2504','usertask1','35001','35001','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:20:14',NULL,'2017-08-02 20:20:15',1296,'completed',50,NULL,NULL,NULL,''),('35010','myProcess:1:2504','usertask3','35001','35001','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:20:15',NULL,'2017-08-02 20:21:40',85560,'completed',50,NULL,NULL,NULL,''),('35017','myProcess:1:2504','usertask1','35012','35012','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:20:17',NULL,'2017-08-02 20:20:17',448,'completed',50,NULL,NULL,NULL,''),('35021','myProcess:1:2504','usertask2','35012','35012','部长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:20:17',NULL,'2017-08-02 20:22:33',136551,'completed',50,NULL,NULL,NULL,''),('35035','myProcess:1:2504','usertask1','35029','35029','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:29:48',NULL,'2017-08-02 20:29:49',1503,'completed',50,NULL,NULL,NULL,''),('35039','myProcess:1:2504','usertask3','35029','35029','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:29:49',NULL,'2017-08-02 20:30:47',58515,'completed',50,NULL,NULL,NULL,''),('35046','myProcess:1:2504','usertask1','35041','35041','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:29:53',NULL,'2017-08-02 20:29:53',743,'completed',50,NULL,NULL,NULL,''),('35050','myProcess:1:2504','usertask2','35041','35041','部长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:29:53',NULL,'2017-08-02 20:38:04',491038,'completed',50,NULL,NULL,NULL,''),('35057','myProcess:1:2504','usertask1','35052','35052','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:29:55',NULL,'2017-08-02 20:29:55',755,'completed',50,NULL,NULL,NULL,''),('35061','myProcess:1:2504','usertask3','35052','35052','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:29:55',NULL,'2017-08-02 20:45:18',923493,'completed',50,NULL,NULL,NULL,''),('35078','myProcess:1:2504','usertask1','35072','35072','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:47:39',NULL,'2017-08-02 20:47:39',740,'completed',50,NULL,NULL,NULL,''),('35082','myProcess:1:2504','usertask2','35072','35072','部长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:47:39',NULL,'2017-08-02 20:48:00',21768,'completed',50,NULL,NULL,NULL,''),('35093','myProcess:1:2504','usertask1','35087','35087','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:51:55',NULL,'2017-08-02 20:51:56',1017,'completed',50,NULL,NULL,NULL,''),('35097','myProcess:1:2504','usertask3','35087','35087','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:51:56',NULL,'2017-08-02 20:52:32',36356,'completed',50,NULL,NULL,NULL,''),('35104','myProcess:1:2504','usertask1','35099','35099','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:51:58',NULL,'2017-08-02 20:51:58',124,'completed',50,NULL,NULL,NULL,''),('35108','myProcess:1:2504','usertask3','35099','35099','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:51:58',NULL,'2017-08-02 21:02:17',619196,'completed',50,NULL,NULL,NULL,''),('35116','myProcess:1:2504','usertask1','35110','35110','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:51:59',NULL,'2017-08-02 20:51:59',734,'completed',50,NULL,NULL,NULL,''),('35120','myProcess:1:2504','usertask3','35110','35110','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:51:59',NULL,'2017-08-02 21:06:46',887895,'completed',50,NULL,NULL,NULL,''),('35128','myProcess:1:2504','usertask1','35122','35122','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 20:52:01',NULL,'2017-08-02 20:52:01',231,'completed',50,NULL,NULL,NULL,''),('35132','myProcess:1:2504','usertask3','35122','35122','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 20:52:01',NULL,'2017-08-02 21:00:14',493320,'completed',50,NULL,NULL,NULL,''),('37506','myProcess:1:2504','usertask1','37501','37501','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-02 21:20:07',NULL,'2017-08-02 21:20:08',1330,'completed',50,NULL,NULL,NULL,''),('37510','myProcess:1:2504','usertask3','37501','37501','院长审批',NULL,NULL,NULL,NULL,'2017-08-02 21:20:08',NULL,'2017-08-02 22:08:26',2898030,'completed',50,NULL,NULL,NULL,''),('42506','myProcess:1:2504','usertask1','42501','42501','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-03 21:36:26',NULL,'2017-08-03 21:36:27',1128,'completed',50,NULL,NULL,NULL,''),('42510','myProcess:1:2504','usertask3','42501','42501','院长审批',NULL,NULL,NULL,NULL,'2017-08-03 21:36:27',NULL,'2017-08-03 21:37:25',58258,'completed',50,NULL,NULL,NULL,''),('42517','myProcess:1:2504','usertask1','42512','42512','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-03 21:36:29',NULL,'2017-08-03 21:36:29',651,'completed',50,NULL,NULL,NULL,''),('42521','myProcess:1:2504','usertask3','42512','42512','院长审批',NULL,NULL,NULL,NULL,'2017-08-03 21:36:29',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('5005','myProcess:1:2504','usertask1','5001','5001','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 19:35:07',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('7505','myProcess:1:2504','usertask1','7501','7501','员工请假申请',NULL,NULL,NULL,NULL,'2017-08-01 19:37:28',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

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

insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('员工',NULL,'职工',NULL),('部长',NULL,'管理员',NULL),('院长',NULL,'管理员',NULL);

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

insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`) values ('二傻子','员工'),('阿飞哥','员工'),('文艺青年','部长'),('花木兰','院长');

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

insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('二傻子',NULL,'肖','红','456@qq.com','77',NULL),('文艺青年',NULL,'秋','水','123@qq.com','66',NULL),('花木兰',NULL,'赵','英男','789@qq.com','88',NULL),('阿飞哥',NULL,'张','小飞','345@qq.com','66',NULL);

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

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10007',1,'员工','candidate',NULL,'10006',NULL,NULL),('42522',1,'院长','candidate',NULL,'42521',NULL,NULL),('5006',1,'员工','candidate',NULL,'5005',NULL,NULL),('7506',1,'员工','candidate',NULL,'7505',NULL,NULL);

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

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10006',1,'10001','10001','myProcess:1:2504','员工请假申请',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-08-01 19:39:45',NULL,NULL,1,'',NULL),('42521',1,'42512','42512','myProcess:1:2504','院长审批',NULL,NULL,'usertask3',NULL,NULL,NULL,50,'2017-08-03 21:36:29',NULL,NULL,1,'',NULL),('5005',1,'5001','5001','myProcess:1:2504','员工请假申请',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-08-01 19:35:07',NULL,NULL,1,'',NULL),('7505',1,'7501','7501','myProcess:1:2504','员工请假申请',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-08-01 19:37:28',NULL,NULL,1,'',NULL);

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

insert  into `wzh_leave`(`id`,`id_`,`leavedate`,`days`,`leavereason`,`state`,`processinstanceid`) values (6,'二傻子','2017-08-01',8,'学车','审核未通过','17501'),(7,'二傻子','2017-08-01',4,'相亲','审核未通过','30001'),(8,'二傻子','2017-08-01',8,'生孩子','审核未通过','30012'),(9,'二傻子','2017-08-02',10,'打篮球','审核未通过','35001'),(10,'二傻子','2017-08-02',5,'考驾照','审核未通过','35012'),(11,'二傻子','2017-08-02',10,'拉肚子','审核通过','35029'),(12,'二傻子','2017-08-02',4,'世界这么大，我想去看看','审核通过','35041'),(13,'二傻子','2017-08-02',8,'我要玩几天游戏','审核通过','35052'),(14,'二傻子','2017-08-02',4,'没有原因！','审核未通过','35072'),(15,'二傻子','2017-08-02',12,'测试01','审核通过','35087'),(16,'二傻子','2017-08-02',9,'测试02','审核未通过','35099'),(17,'二傻子','2017-08-02',9,'测试05','审核通过','35110'),(18,'二傻子','2017-08-02',9,'测试06','审核未通过','35122'),(19,'二傻子','2017-08-02',8,'测试07','审核通过','37501'),(20,'二傻子','2017-08-02',8,'测试08','审核中','42512'),(21,'二傻子','2017-08-02',8,'测试09','审核通过','42501');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
