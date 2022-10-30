-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: paint
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `imgid` int NOT NULL,
  `date` date NOT NULL,
  `author` varchar(45) NOT NULL,
  `image` blob NOT NULL,
  `result` varchar(45) NOT NULL,
  PRIMARY KEY (`imgid`),
  UNIQUE KEY `imgid_UNIQUE` (`imgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (0,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0rIDATx�\�\�\�S�g\0\�\��&!�%l\�V�PD,�����%\�*�\�Z�\�(j]q\�\"\n�/\���G@(��\n�ȨH�h	�E,6bPG-�\�w�\�\���\�w\��\�\�\�\0&L�\0\�\�^=\���d�D\�أ\�U�9\r�L\�\�L1r�p\�\�[\�*(\����\�k\���}<�y\n�h\�EX��E�8\��}\��\��H�f�Q>2���Z\�\�#�f�3�\"#nl4\�ʝQ��S\�a�S\rzڪ�te\rG�^\�큖=+�ɶY�\�\�Ӏ��n�\'\� `�\�\�C\�6\�\0�c\�\n9Ԭz;\�b\�\�\r�Fp��8R_���\�0ٛ�;(�gw1���#�{\�z�˔!���{�\�ܣ]P���\�}Kѵz\�\\ƍzo$6ۓ#i���\\��𷃡�@�8\�\�d�\�q+�v\�#r��h�B\�Ef�\��Ӕ��`}f\Z�\'/�\\�=]!\�S���\��;�5�%�\�\r!8\�\�U18y\�+\'\�.��&(_J\�!�8)\�\��X\0\\\�`�͈ҕv`\�ui%\�:&%E-\��\��b`x�^�\�tX�IE\�\�۰�V\�\�\�ȉzs\�i��5e��M����՜\�s6]>3�ۧoJ2H��~\�\r\�=Pe�\�\�s�Kn�r�aCX\�uU৔<ۯԔ:� ��\�Ga�\��\�YW�k\�W\�M��\�8�\�\0�\�\�.\Zy�\�Բ�G.1;\�bK-\����s]<�	nc\�L�ײ\�gP�\�\�?h����\�ܽ�61\�Yb5t��\"\�V1\�n~H���rҤ���-8ɪol!���6�)\�sqe��.���I�N�L�PlZ��7\�^H7|N�7�����?H�[f��\�\Z:\�S��/x\�8\�y�\�!�\'̟UK�88ߔ\�T\���M@�\�1�ALIB��� ���4a���^��?ԤJ�\rث�E�\�)\�܁�]\�J���H�\�\�9\�|�\�\Z�/\�+g8 ��T\�l^EsrK賣{���9J�ǚ\�\'Q��\�HQ�5�E\�d.�\�/)G�^�y��0+\n\�v\�53��Ə�\�#)�p⾀Uv9T�˙XM#�<|Y�\�B̬�d�\�(\�\�\��s\�\�\�|.\�\��|=o\�5�j-GH�\�\0�\�P\�]iuh`\�2I\�r��{�L\�%[�&�@�X\�6g�Z;5B�2dG\��\���iGk]s�\�\���i\�_�/H_\�̨\�ae�\��p�\Z���\��qc��\"fo����{�0a\��\�?Ѯ\�%K��0\0\0\0\0IEND�B`�','pass'),(1,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\03IDATx�\�kP�U\�\�y�l,\��Ȱ��\\�h%ʅ�\�e\�\�\"\�0�	\�Qi�K�{C�\�16 2��D0��I\�^n+!\�&�&̀��\��\�\"�o�dtr��\��}:3ϙ\�7\�9\��Xg�gIё�h$\�\\�	�Y��j�\��\�dN.�>M\nt�8����N+��W��\�\�[\�\�l\�0e[\�-�R\�Fx��\�\�ӭ�d�\�~�����\�\�<�sA\'��<I�|y�\�\'�I\�x϶?\r�\�V��\�I6��y�Ǒ\�f�ct(���E�\�(ϻ�\�\�\�Z¯�\�\'�3�n\��[\�\�\�I\�\�\�CDM\�ƹ\�\�\�\��b\"\��N\�sR��o\�w�v��W5\�҄�a\�@F�8$\\8f��9�B�ˀf�=\�*���\0ďv/\�\�9�)�v\�\�q\r��H?j�\�lp\�\0کn�=9D(\����r\�x\��\�\���ɯ{1ڐ�\�+\�S\��ETF�\0\�\"\�X�\�\�\n�\�\�\�9d�9�x�|�i�\��\�R�\�ۀ����Ђ�\��xDN�p�$q�\�@	�\n��F����0m/\�eE\��\�+Ħ\�2�\�;\�\�`#\�yO8n[\�\�%\�;\�C\�\0?\�t��\�\�I\��\"�5%XQ�\n�(\�N�\�\�ð,\��\�R\�\'���cjVj\��v�k*\�\\�\�(o�h\�Y\ZFWN3�\n�e��}�\�\�C#\�Q\�	�\�<yJ�=���]\�\�c	��Q\�B\0\0x3�#oK��\Z{�H^\� \��\�{\�@�\�gx.L�\�Ȣ\�}dH\�nyګ\����0�\�.)�\nš\��\�\�]|ژ;_d�\�^n�\�۴\�/���`s�P\���Q�}�H\�~�T�\Zb\\\�S\"�.8蜄B���,Wc\��o�K\�jɣ\�x�\r��V�>im\�]Ɖ�l*����@�^�k�IK\�g\n-1c�\�\�y�\� Z�7\"`}\�\����萶Y糑\�\�(�\��Ѱ\�E�:?�t�>=\�ѲR\�e�M���\�s`r06�\���||\�\"</\r\�\�c\\����6���zv\'\��gŨ�.W�ƭ\�\�\�Mda�%��,\�)���zg��\�-K��I,\���S\��2\�&_\�L�)�/v�\\I�,��\\��\�@\"N�I`e�MY�w^�d\�=��~�\�\�F�\��`VohUX�=\���\���jH��ĭ\"�\0\0\0\0IEND�B`�','pass'),(2,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0dIDATx�\�iL\�wǿ�+�*�NP��\��P(r�s \��\"��q\Z h[\n�UBה\�`P��C�Ph�\�8<�Q<Q.W�E\�b{�%K�KX�b|\�?\�\'\�	\�2\�,�_�D.\���\�Or\'�\�	\�y��\�u����\�7��O\�gNz�3\��G$ê|V�ߕ�\�/\\gZH\0@��u�lQ+���\"\�\�\�Tu�UT�3�e *�:ΟI!\0\�`��*�\n^��\�S��ؔ\�]\�\�\�2;��-�պ�p9�B\�TR\r�\n\�\Z\'QiN�%{1����;J\�6\Z`b\�kxg˩v�3\�aJ�\�v%VU\�A[fF\�YQϬ\�sӋ\�/63��8v��j\�~�\r��HJ\�\�h��c\�i/�P�\�\�N\�~\�Y6��\Z!qKsG\�\��\�V��@[:\��C�ɭhkNݵɑ� \�m\�\�G���\��\�\���\�`\�\�մ�p\���)9Ƹ����\�\� \�$\0ܧ��n�g�\0#&!U\�!Wg�ѝ�\�\�\�+kw\r]�M��\�2\Z���j��kvF\r����T׎�+\�>Z�2|r{	s�f#}\�{ߝ\�HM:>:x�\�Lv\�\�F\�\�x��;\�Vȃ(\\��\�\�/��\�\�?Kj\�h\�P�FP\�+tͅ\�!��\�C\�\��\��1\�Ē\�2�K����Hy1}i�\��\�\�!ϫ�Ǳm�\�0\nyM\�>Aqy�\���*Ė�g�i\�\"�\�\�\�\�z\��v��L��@\��I)\"٩��H!g1��yh�	U�\�t\�i\�B�P\�\�d~�sbu\Z�3�m=D|b��]\�+\��g���+�\\q\�L\�\��\�\���/���c<ݚE<��dnǄ�\r�ߠFj\nϒVL<X\�\�{�&d}/�P�(q\�#��1\�*&\�\�\�tz�(É��\�@�s\0,`50\'�\\>\"-�\�\�WpP�:	o_S�\�R\���ʩ\n\0x�R�d\�7\�\�\����\�\�#�Pl���\��g��O�F\�\�\�\�\�Wf�\���\�\Z\�=��F1=\�L��\�%T}�g�)\�WQ�:���D\�}/t}]ч\nO%x\�P�\nz.֊(�QI�]=d\Z�Z&4\�/�8|-�\'{8O����\�u�tݤ�|�\0���\�\�&�\\��!\�}\�mO~�O���<��#Fo\�\'��%�\'��j\���ڟ\�t\�\"c\��Qo�L\�\�\�\�woa���xQ�\�\�3\�\�\�Ot�\���#\0\0\0\0IEND�B`�','pass'),(3,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0�IDATx�\�\�iL\�w�\�\�:9DD�\�%\�Q@%��\�ɑqDg<Љ���6.��(HD�E�NA]U\Z�KQE��\�/LH6\�2�,\��\�O�O��~�\�|\�\'��UX\�\�\�\��+¾oRv�9�8ZpZD���\�\�\��ș!��\�gT�ܕ\�ۮ��bÍ\�Mu�L\�uR\�r�!)��\�\�AX��j�\�q�*jXo�ծ\0-d�i�8�\�+�s�\�\�\�Oˆ/H6V\'�%��S\�\�R�;g\�߅�\�t�@؁\�� V���B,���\'h;�\�:�V\�G�jC.5IE�U	����sQ�k��\�\�Y؍�j\Z\n~�PWl��e>�Q�<)\�\�M툲�\�\�p��&�!\�_7��/�\�&��z\��~�JYM	\"�\�\�\��ϡ 1a�Oe\��\�e摗[/Q�u\�\�m\�&��,�ݥ\�W\��\�e\"\�f;u\��׶��mضR�,\�	��7���6�\�ż`k�\�[��\�\'Iin�\��Ǜ4M`o�}H\�S�AI#�K(fq�L(\�#,\�5�o;�\�Vf��q�bn�?�\�98\"\��k-#\�u��ɮ\�uᓚ��_Ej�ﮂ��ce\�\�ӡ��A&5Ӵ	�L�`��υahe_Ơ\�ބ{\�\"BD\�s(�c\�:J	�\�tׇ8\�\�[(�}_ZS\�\�8&\�\�e:I5�d��q\�;�\���\�e\� \�tYJ�b�\�+�URQ�\�\�j?\��|\�V)NO\�\�\�dܰ\�Ci\�|\�D�@\�WfA�\�f��%\�Tlc;�\'��+\�n��`\���5\�M�5��\�=g��\����5@\�Vp����[*�\�S0\�\Z\�gx�>&h\�\�AR�Etv�|z�\�ZS�&�\�3\�\�#\�<2��$�H�\�<���h\�N}\�j����j\n�]��mǭe%�꺍\'S�s~��J�\�S�0\n�<\"RU\�\r��q�a���\'�}&�,v�A\�Y.Fy(\�u������wxi4��d�|�`q��\�\�Z��S+�\�|54O\�\�Ʉ\�Qa��\�osKmrvKo?]!\�<v��I3�.\�o�\�ͬN���\Zz͖Xջ\�\�E>\�\�Wo\�)X\�y��\�\�ߡ�\�>\�n?\�M]\�:�T 9!\�>�Z��\�\��	\�\�v~i\�i�2� �͛\�TbN�\�ˋW�`X\�$K\�[�\�S\�D7\��|(;�u�.\�\�Oy$\��r?\�\r�u�\\\�a��U�\�.\��.\�E�n.���\r\�\��#�^�|X��ӮZP+�.��\�\0�~b\0-+m�X�N4�c\�F�\�=��ETc�SDo\�7�^᯽&Wޝ\�W����ӱi~d\Z�\�*�\��JI�O\�\��|�����M�\0\��	i@΁@\0\0\0\0IEND�B`�','pass'),(4,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0�IDATx�\�{TMy\��9��\�K���(��\�IW2^y�T\�Јb�\�=�sn*bU\�+�PTԠ�ng��V�j*L)\Z��\"S\�\��3�\�\��\�\�\�\�w\��\�\�k���?�\0@\�\�\�-�n&*jV\�T\�$\�\0I�T8vC�\����.9ցM\�a葆�\�\�:Ɠ9��\�\�S���҂rc�\�sWP\�y	���>~��pj�	]Hn\��] ��e�0\�x�55W�\��بg��3�M\�\�aˊ��E4G:��\�+Bo\�\�%�\�XW��\�K�	�4\�\�ښ>��\n9Ty\�H\�1�i�p\�7�\�O�{t���PJdަ�\\\�Q�Y�js��]3͸K�t.�!ZV;{�\�GO$��rmx\�}�\��LՆ��.\��\r\�:v\�V�\�de\�4d*\�E�\0g64ҟ�����N)g\� a\�����er\�\�2\�<\�j\�\'���ج�$�\�\��[Z�\��\Z|eY,\�\��&H���\��E���{��h\�+�!�س�ow?�Yx�?_��\�d���rb�`\�\�\�|Ig;ۑ�Y�\�o\�~1:&�\�=*\�\�/\��� +1gde1�2z���(\�\�ʋ�?\�{:�tw�\�\'HP=ZD\�[��J?|I\�\�\Z\n��f�\��Qbk�tU�_�\�*\���\n\�;�\�\���b��\Z$]#\�\�d\�-6�\'��\�	�kᙠ�d_u\���o\�`\�x̟�gK$\�e�\�ӓ9�c{럢����\\\�~\���Ԥ��<}�T\�`�A;\\\�\rpg\�\\Jgmn�����kdXU5s��\�$��R\�g	\�T|s}\�L�롓��J��\�d~��Rap��\�ǜZ*\�3f\��L\�!\nMCQ�:�M]�����1��_J\�&\�E=	�H_\�x .�P\�vY��\�Sm���uĔ\�tl�\r\�\��4\�G�$��\�X^Qg\�Gv\��GV���NGI\�K\�]^\"�F�I� iCد�4je̜\�y�9�\�Ф4H%^�yE\�xU\'[}�,�\�J\�-\�>�\���H9\�B�|�1\��S�\�\�.T��\�u*\��\"��\�{��\�m�\Z\'Y\�\�vjK���\�=���\��xQmLR�\�+��\r\�\�;WP\�f[�w�ll{C]PFMa6\�Z\�5N�S)��\�6f��^2\�m3O�[�]\']�*��Ӛ@�%Q�\r�	��ɦxr\�\�\�\�\�\�^��� �\�$\�\�W��VU�8,�4�.�Ӌ?0�\�v����\�\nW��\�P\�Z��ѳI8�\�n\�~�\�)5|�\�@TE���w\�\��q*s�\�أ�8h��C\�T�r?�� ��YjC\Z�ϢꟖQ�j�ɰ\'�\�{2Qe\'��-\�o�7\0�\�\�kG+VY�s\��\�\ZSi\�x�\�Gyثn\�iN���\�=�F\\)\�n�#^+�ou|�\�zjC�\Z�F=B��d\�\��k�b\���܏\�]ý��ׂM�\�\��[�WW\�\�4FK\�\�}\�e�8�0߬\�ԿZ��\�6}\�N\��ł\�dNx$�����~�������٦�Ϗ�8��� �W\��SJ�\�O�\�\�fj���\�3\�Cr<톔�\�U����q\�F\�\"}\�\�\n�\�K/�\'���\�<zL\0\0\0\0IEND�B`�','pass'),(5,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0\�IDATx�\�iPSW\�\�{!�\�\"b��AAQ�����TG�j��X�Q*nX�*Y��VApC@�FFeU\��R�:�ET���\�{�\�EC����|��\��\�\��_\��\�\"$�6;\�Z\�M�4��J�R�\�҇�\�!Si�0ܛ��b�8�z?�\�L\�wh��.��i��X\n�\���4��djBK\�!_��\rӲ��]\�\��.1`\�́߰Q\�P\�F�Ĳ0z�>и��Ejd��\�}�/@4(�.1&\�\Zg\�\�\�\�Y\�6��n5\�$\�\�H�� �\��\"�Cp�A�>x-f`��\�<� \�w9*3\rfJ\�\�_�E\�!fE\�Ġ�ES\�\�\�{>Kk�i�\���\0\���\�<��c�\�Q\�\�\�d�Aʴ~0����@�K/65\�\"�d6\���\0�pk.;ng�fmFm��r\�QN��[Uz�{\r��C�(-\�=`�ف��ĝB#x٭\�Wy\�	QR\�^�9�M�8\rxNg\�/d`�\�]\\\�}䥹���yqf�0��p��\0&?8Cߖ�S���l�\�K�od\�\�E����\�V\�K��\Z*-`R��x�#vZ��|%\0XX75g�FƝ\�_Խ]Z�\�q�X�!\04\�\����\�\�c�?d\��&\�޵\�bN$Y\�\�G%\�7���x9\\โ��ɳY��N\��<>\0\�C\���C�Ϩ9�\�(��@�%\�?D�\�E\�3z�*M\\\�3Z�gE\��w\�D\��\�\��`�����S\�J\�G\�%\0�Cs��ӃK\�̰\�\����n\�A���\\\�U\�\�Y�n\�GN\n�G����\ndO%\�\�\�-\�\�\�#�\�vW�/\�\�5\0�J\�\�D�BE>)��|R\�\�\�\�?�T\�|\�4��zi4n\�\\\�Rͧ�\����\�6\���u߸1�9\�-ĕ\�7	u_8�:\�d#*J)wIʠ-�j}\�\�+���\�u�Iw\�m�v:�<��&4׃\�I#Q+����\\\0pP|=�\�.�\�žZ�:\�[XŹ`\�Їd\�~DP\�>�\�\05m+I��FhNZ\�J)�A�\�\�h��v5��� \�,��T\0r6�6��\�����ꒇŵe��y\�ھK;�5%�\�~��a�nO@]uR\�\�Q~\�]�\��L�\�vrt.5�q��N\�Y:�L\�\'Kj\�\�\� �7�\�T��\�f\�\��=\�\�2�\�tǁY\���UA�L��\�E�\�&]��\r�[��2�\�69Z\�\�V.�-�Vn�����\Z��YNM-|��\�{�Y�\Z%\"��<�\����\�p\r�]c\n�\��Nu���\�4\'1����$zK�09Ɩp\�\��\�\�g�YV��\'SR��\�^��0.��bH�\�t�\n\\X���L\�l\�V8iI\�\�ݜ\��сi��\"\�-\�}�\�B\�\�\�q�\�\r	�1[}R\�6\�$Ռ��@D���C\�,�\�9 d�[��t�xI�\�^�[�Ee|\�\n\�\�G�찣yC\�\�\0\�Q{���\�ڮ5PVW+��ш�$��{݄b\���\���G\��b\��kb���h���L�ad�y\0�\�\�|Sa�S�\�NN �\�kVI\�\"0V� �W;^�7U�I�&ǗQ1�~�\�r	1��D�O� \�E6ЌE\��Wp>˃\�\�j�\�9O\� \��Q�\�\�\�aX�.ة\0\0\0\0IEND�B`�','pass'),(6,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0�IDATx�\�kX�i\��\�L���\�\��U\�R$M�\��\�\n\�\"]�9EVv�y߷\r�l�X-RN騔�j\�ҁN\niq���\�\�i\�\�O�a3l{��\�\�\�\�s�����\����&z0S9dY\�G|֤\�4�b�3|&\��L\�~���W��Q��*P6\�\� D+f9\���\0��9\�6K\�}�`[MDhEF�����\rT\�-�4\�3D\���\�\n\\�=\�W�\ny\��%y���\0�z\�\�̧���^S�\�<y\�M��z��y\�>L0�gt\�\�ӗ,\�y��nk�s��$�m.��WM�\��\Z\�9&DM\�\��J�^\��$RS\�ϒ�HO�oa&?\�L�2b/��\�I�;\�jH\'\���\�\�/\�#9e\�O-��\�^K\�R\��\�\�z\�do��@�l�\��/M\�)�G�\�\"%->J_\�\�e��\�Z�s�w_\���<\�ФH�8>���P茺B\�\�>=j�8\�]m�\�\�\��\�p��\�\�N�^\�5{Fb\�\�O�\�U�zvқ\�l`4z벅g\�c:��Ȇ\�+캛�\�\�MdKr{�87\�8���K\��u+l\�{\�Hvi�i{�x�\�Y��,�z.\naH{9\�׃\�)KosD�\�&b���!rEĽ٦0ߞE\�\r�>���y�B�V���\�!\�d��]J�tl�.�4z\r\�6��V�|\�U�ԫfo�j��\�猎8L/�b\�\�\\���Ϻ*���\�3ӭ�,�.!�q�婢�W=V�l$l��T\�3:*;@G&���\�].�2xו��O��OnZc�\�q�\�\�A\�}|�);x��\0>\0@|\�Z�ݝ�X\��0\�Տ���?�vR#\rHr�!\���\�N�(�\�wrlCLmoI\�,dϹ�oЃ]\n��\�F�g�`�\0`rk;5;�r�İc�:�_׀\�%\0���\�\�C\Z\�\�q��.�|\�\�;�t͙\�\�\�L;\rk;�GOJ�7�#�\�\0\0�\\Ԉ,�\�\�Z\�\�\�~9H�H��\�\"�\�\�\�\�(!$�a.�/\�w�\r)��N���$\��\�n��L+\�4[�����\�\�L,�n��8H\�\�Ǩ�\�R��\"U�a@9\�`ѡ\Z\�߀\�BW\��נ\�=q8y�F�1O\�i�8�ٞ\0\�}s�麣��\�\�H��\�)�-uǿ\�Q\���\Z�\�\�2\��8:tv���� �:��5\�DXd|�\�k�C�o\�\�\\�$A��T�Y;\�Q\�R�Vς�6%\�\��z%i����ՂѳX!�eg�L�r�>�\�>\�N~N�\�XӠ\0�Z�.��2\0\�-���t��\�~!\�\�r\Z��s�\�\�T���4o�m\�;Vj�_\�?-\'��\�\�\�Frm���\� \��Me�R�s��W�F]7\�F*EH�A\Z�EK�Vl�t�n\�\�q{�\�Ox\�A\�Z�WgY\\эX\�h�G�7���\���W�,�\�H�i\�b3ڻ\�}^$>�\�Eȷ�U9\����܊i�]2��:\�Vw�yKݡ_Ao\�)\�\"�\�Ně��cM�ZiW�\�\�s�hֿH\r��H��{7,��Q�\'ח-�\�/\�\�\�\�m\Z�Ժ>[�s\Z��\�(�1�Gx2��>���\�ƚ\n�*v60���?\���nP\�%#i\��\�38�\��ҧ�[N5b\�\�(�-<��Rl�#x^�)P\�S,s^\�\�^U\����/�_\�7\�V�\�ۄ\�(\0\0\0\0IEND�B`�','fail'),(7,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0IDATx�\�}P\�y\�\�\�_�v+\�*ɖ򐤄\"\�SZ)ѓR׃�r�%��J�\�JJ\�N\�X\�sR�\�(\�){�<D�\�Rz��\���qc������\�\�\�\�g^��\�|?���C\0@\�\�\�ĲJ�\�V��X!�_{�\�6T Խ\rW��\�8\\�a�}\�\�U\�P\�t�\nV�\�Z̏��.��\�0!�\�6W{���FA6�·E\�\Z��6\�>k�v	\�\0\��\\|�\�w�w�v�س\�\�*�ޟm�\�ډ�s\�hɕbF\�hZz\�P�<2����\�<����\��f0�\�\��F\�]	���\�dhpIg\�ԟD�_G	;^N\'\0p~��u�׳�\\T\�\�\�ڈ\�����\����5\�hƆ\�j���:\�7\'\�\�nQ��jخ#x�d�\�!X�48Q|H\��\��o\�/�\Z\��I8\�P� ^�@c�YW��\�0�]\�foR#~}SN=%KE)G�\�\�Nԙ�\�\�^W ���\�\�B\�9��0�>�Q\�\�r\�\�X\�\"\"�\�T\���bl\�*�\�\�&]|�\�G\\��\�%S�\�\�- \�c��\0�P~���}<b\�UP̷Ew\�\��5��ë5�CI./��6��9F�_G\�N�s�\�`Эt�K�;�i/�e\�E:2�\�\�jçt�H\�P\�\�M4�������Y\0��ף\���hʆ\���\�\Z�\�\�Eݽ���ϋn\�\���\�\��n\�\0\�tkQ�r�\�.~$��\0�O�ũ�\�+o\�LL�\�V\��V�q�J��\�\�g�W�\��!�z\� ���i�j\\fZ\'�\\a\�\�M�Fo�0aG�\�%3�?�	>\��*5\�1�\�\�<�d��Ҿ༩���4��볫��T\�6q���\�N�\�V�\��\n\�G0�e	)ϸǠ�N6}<\�y}�X�N���g�ꘋw*ag�`�\Z1�gڝ\���\Z-*Ĭd��Ez�ǻ\�-;�\�A/..t aD�\�F\0\�I;\�GW��DW\�\�Nt\�K�n%/\�þ�&T\�b^\n�Ǡ��G\�\�Ţ�GT�KeE�OX\0�\�j4\�{8Ѩ\���\Z�6\�5`�UɠprLT�S1X�`�:�\�~�\�m��Q���-\�X\�u�!;.\�бB�\�\�=��frN�t\'y\�C�]<��*{\�a���*\�\�\nlx6�`�0X\���-���ۈ\��\�M�Q&4\�#��i\�B\�\�\�;�\'�aJd�����ߗ�\�<G��8����Ը��\�\"�tG2�JS���It>�C\�\�ԧ�ej\�i�\'<83�\Z]��w\�\�!ű,]T(	֬|�*8�\��֢�\�!�W)*��]��S4?�\"߼\ru��oW\�\�6/a�ͩ$\�܈DR\�F�\��}�CRx\�o�^\��\��E2W\�#\�F~\�\�\�l��3�\��qS\r�\����X�\�ts�|\�Jj��	�\�:����rE�a_\Zu��é	�\�\�-4d,[qN\�.8�֠W=�r�]\��B޿�\�\�#�ݝX�D�,g�\�\�u,ha\�O��\n�����vݩG\���PVC����JP~2^N\"���=~\�\r�K1V�\�\�[N�m!�-���I&\\\�@\\󜅲�Z,�\r5�<Ș�N�o�B\�\�\�\�yr*\�\�ݠu�ڠC\�%Cz\��h���\�\n%_��\�iۦxm�g���|-la����F�\�\�\�\�M�+�!�\�\n{�d�\�n�\�XPḶea{�����o���Ĕu(��\�\�\0\0\0\0IEND�B`�','pass'),(8,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0IDATx�\�\�yL�w�\�m9\'\n\�iq\�j\'9<��`y��A� \�P)(ʊ��\�\�.�(\�a��x\rA�\�h�V,��\�a�=\�:e� �\��X�4ٲlɖ���<\�\'\�\��\��)�\�\�R2\�b�+=�B�E�y��\��װ�\�Ǭ\�F�e4�!ܬ\�^{\�\�\�PlT��4w\�3����J�Q�\�9i\�>\�wϕ\�{W�\�����nma �X��w���9\�g�i\�\rV!U����\�وK���U����|\�\�h�\�	Qg�\��ך\�r�Mu�e)�+�I���V�r]H�*˔5�A��4Z�\��r��\�9�G+>�ӓ�vO{\�\��_߆*��?\��x Sd�����#i��\"7\�\�57/x\�/e�\0y�\"j�:@,�\n%6\���0^\"��m�ɴ�0I\�\�\�G�;rd��fh�w��t�\�a�\�\��r��;p�\�lkn0�\�U���\�\�.Z�JF�V�\�΃\�8�wnA\�\�\�7!ʾ�-J��h}�]v�Yy^�\�Y6ɋ� \�\��V��N�\�j�}�op⦾\\2�n*���\�B �\�F\��\\\��dJ\\�\��c\�5o�&�h��\�\�Dd\�\�`6\�iB��#A�w\�ԧȧ$6~!\Z\�K�@+\0H��YK]uH&r�\�\�BLz}�m�5y�qB�rX\�\�\'�v7<\�%�΄�9L��\�\�,�A��\�/F��l�2\\���<@�1�\�ݶ;%\�1,\�\����\�\�V^��[\�`�B0#\�\�>�y��ݸ\�\0�\�\�Vfy��<\�a\Z^�\ZCݵ�\�AsC���YJ݋l�k\�d\�R�x,R.\�Q>K�8�9(�\�>���\�\�|�}\�\�+\� \�\�\'��p\�B\r9.]�_��kN�EI\��\�(���\�yeU;\�iZ��\�\�r[��\�\����^�\�X :�t\�m�\�-��\�2íH�b��C�`.0v\�L�7�����6\"tk	��\�\'���#�\�\�F\�DEC�\�k�(-\����\�\0��\'\�y\�6^�X\\\�8�6���\'��q�Tu�!�i\"h4c�J��G\�\�B�7\���\�\�i�hD\�#Da�%QV\�$��#�\'�ӫ�*��c�[��\�t\���M��q ?�\�V\'\�cЦJ�ݭ\�\n.�&���C\��i��8B7b��\\��(z&C��&�&O��x\�X���[Z����c�a�M82�\�~!2yc\r\�\�\��_K�\�ih�\�\�/\�_\�>\�Ჽ\���;HO\�!�`\�3@tb�\�^ZMlvI��\�\�s\�,I�sz��\�v\����#w�z�90\�\�\�P�\��1�R�`T4��\�#��@H/AQ�6�1���x+-���!X�cD�Y\�\�\�`\�2�d\�n>r\�e�S\Z@\�\�5\�f�a��\'l�/\�+���Z\�*\�2\�\�^E2Zp\�\�� !�\"�e��.mP\�EBv4�{\\`�\�PKz^(O�\�\�-\���\��Rc_\��\�rI/#��\�\�G�\�\"\"�Q\��q\�	\0^l�f�\�$v�\�\�˴\\I�\�L$��\�>V���\0\��b5\��*�ɧ���@��0��\�\�]�\�0\�G�j?I\��	%�\��R�|\�v\�$�;��#��>\n\0�x\�,K8<D2鸃\�֨���t�.\0H>Q	~�\n�Å\�kޏ\���X��|\��;�\���b�J(\0\0\0\0IEND�B`�','pass'),(9,'2022-10-27','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0\�IDATx�\�{P�UƟ��K �\�D�D(e�ew\�&x5/\�\r�)�\"\�^�oWC�RҍuP���\�\�\�Ȧ�\ncW\�n���\�\�\�/\�l����\�y\��\�3\��\�!\�;<��_\�\�\��D=\�\�`Gf;b��\rZ�R�:=�3���ޑ\',?1��\��1\�=\�`\�Mq\�\��\� �\n\�W]u��\�;P\�\�Kn}�d��\�\�T\�4���\�9��\�o&W��!5�YP�h�i\�V\�K�W\�\�.�N�7*0p�Uog°�#\�x\�᳻?�L�4f�T\�$\�xf�O3\"R��\�[���>�4\�\�q\�g\n���\�\��+<H��e��\��Q/\����\�\�z���ƪ?\nR�\��\�\�\�1g\�^(ڿ8�^!��+f{L\�\�9\�yش|ˢ\�u�!\�\�c\�\'��]�b�\�Z�\�\�:@\�y,�8��}\�b���\�\��b�\�\�\�\�K�*XG5/���\�/�\�PZii\�w\�\�z)�O8e\�Ѝ�z\�ĩn��g��<ϙ�W\�@\�B��yY�m\0u[s�\�]\�J!N\�ldoF����㚉\�O�x!JXm,	$kɗuۉ�\�ɴ@Ui�)+�v�d�Y�\�\�\�9�uV�3���\�H\��\��\�\�HlE�C��kh���ٛ7����pƶ5^\�\�\�\�\�+z�W	�~\�\0�\�bZ�|(i��\0̯Tz�9�\�P\�+&,�\�L\"��߃��^{pž;\�]�S\�aq�\�Y#��E?Y0)�K\�\�܉\�ǋa\�\�ΉR\Z���R$�\��&$����\0 �l��\�@/�\���\�W\�\�\�8�~r�V�\�Y\�,I:ʴGϢw���\�L�6$\0�{�w��\��ce\�v{\�5\�]ټS�\�_���\�fw2\�cݸ\�ԭ�	q�\�\�Ė]�\"\���n�\���+��\�NI Y{�\�\�\�/uBRP��\�=�=�5��\�\�a$�\�\���\�m�eʌ!�w����\�o�Uf�}\r�\�\�\�\�_NR�\�\0\0�F@2�vQ�m\�\n���\�]��ʭ��jc\�?>��X\�ֈ�}|J�����\�\0�{b�\�@{E9¢߀���\�A�\�_*k\'q��.n�\�$\�-m\0�#\�!,��\�6T4r�fj�w��j\�\\�o\���=\�\�\�\�<��t�4��o�\�\�ǝ�@L\��c�d�\��\��\"AUW\�Z>OK�e\�\0\0`��刔�r����h\n�7�)�g�\�f\� &<dY!_	M\�q���F\Z�,\���s���tǃ\�n�ǌ\�\�Z\�\�\�\�h\�\�}�K\�R�\�i�nK\�S\0\0C�ce·*��~BG8\�y#���kW��aa`\�lNn\\R�\�Ү\�\r���\��b�H�js�f\�a]6y\�n\�ڢ\�\�\�\�o\�@\\\���9	\�\"�\�k΋D\0\0\�\�J��\�΢r�,J�:?�[�\'��@�\�1\�`\r$[���7<�?ڪ���ു�ݰrc�\"k\�gG\�\�\�Q\�\n\�\�\�\�\nP\�2NT�Hq�aX~٥�\0j\�2ă�\\\�dH0��)t�o�<z�if�BR,\�V+\�)�����O4\�\�\�DI��f�-�\�و\�c���\�ٮW�lg\\[\�r�l\�\�W%��\�|��{�.�L�YT_e\�N`����U�\�\�ڽ������L�&_)�m5M\�v>�x\�Yh�\�Y-\����~\�n_���	�[�Hlp�\0\0\0\0IEND�B`�','fail'),(10,'2022-10-30','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0\�IDATx�\�kP�U\��\�\�\nJ�ĢrI@	GP �,��I����6(�Ws\�+Ȼ���hV`�\�\� V$�!�\�\�MQV@�)r�B\n֢˞���5*6��\�ߧ3s.�\�9\�s���-QM\'D\�%:\nz\\%w\�Η��6\�c�]��\"�5#GTr��\"\�?\�sQ��h�)v��\�5n#.\�sָ��R|�\�\�ð&���n7}]u�\�J\�r�kϖ�h?\�e��<!?,+��\�7OP\�x��1�~ZP}��\�\�P\n5�B�=n�\Z;�\�\�Q���\�\�륋:\�b�g\�\�\�\��n~��a��B�>E�N\r�6���|Z\"�\�\�%\�o�y\�_�]ԶGRh2\r���SU&��Y�L鰣\�\�8�}�c�޽i�\��r\�\�T���֓&\�ٺc���b\�W@\�W\nʜ��z\�\�\'�p\�W\�^X?\0�18_v\��\n)���8�V?�>�\����\�n��|l��\�*�_\�N*�\�J\���^[I��T�(s-`7ʜS`��FJ���\�@)3�:o�\�J�?�9\�sܻ\��\�\��d�\�0\�\�%%ZMx�V!#�\r�Xc�\�zj��-\�\��&:�	\�m]\�[�\�m�^�\'k�\�vv_\��� ���ªR�%{�X�{�O\r0.��\�߳(�]��7ӡL���壱�A�>sB\��\�r��\�ՙz���\�a�us|0(�~��8\Zc�\�[QZ��=\�Hsqbl�D��U�~\�;��^g\'0�\����f6�qe\0Fvդ\��p����i�\�!�+,\�KH]�X\�\�Aj�\�\�\n�^�{�X\�o�8\\N\�!|��\�\�\�\�#�\�<%���\�Z���m�q�\�[Q4��a�6j\�i�]ȃ\�H6P:Q�d\n��r\���\�e\�e�,\0h\0�6�;��\��\�%lA��9Ɉ��:�Oy{:\���+m\�J�S�cC&F2�\'�t/A\�U\r&YE=J�\�j�I\�����\�\�D�f\�\�G{\�V\Z��c9�>.Hz0\�\�j\�f55!j\Z/����0I\�c�~A�\�Hs�{�\�u\���s\n\�zE�\��N\�2�=	��@?:���˲\�\�^\�S\�Z��c������\�hC��RW�w�\���2\�i8O\00�\�HUT\�\�r\���b�y\'\�Q)�T\�-���\�<\�:f\�\\�}\�\�<�k[d\�7&i��\��WDu\Z\�RV\�\�̡\�\����a\0u\�J.���)Y�\�Y�a��\�5��I3�e}�t�\�\Z\'\�Z0\�\�&���xN��[�\�׌�Kf\��H\�\�\�!�k�;6!fJ\�G\�M\r�#*\�\����-61Uw�����&\�j%cϻsf��Qٜ�\'�\�2[�#�\\\�JNq��Q��s���\\G\\���\�!\����\0\0\0\0IEND�B`�','pass'),(11,'2022-10-30','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0�IDATx�\�[L�gƟ����E����etH,k�\0΢\�F�ul�%n.,��k;X\�!cᔹ1ڔ�6w�m&\�6Y�\�̰H\�v����\�~|q���\�<��y.��\Z\0\�/]H{\�oq��l���L�Z�\�ح\�]]���\��\�#�\\��lLq��\��-�M���1��U�2\��~�&ڇ�\�\�թ�ɼ\�\Z�p�\�4L\�\���IU\�?|¿�HD;\�\�=�\�(\� >\�v]�\���J�.Bֆ�F�\�٤�\��0���i��Ǽh��#��o딖��tąȜsX�aOl#.ٛ��.	L��\�>\����\�Х\�Ӎ\�2˗\�w%�d\�\�#�Ӥ�	\�`\�c��LPNJ�\���3C\�\�<Pp\��KYe,%�i`�?*\'�4Ů	{?��_o6ȋm~`�\��\n��[�Ih�L\��\��\���x\�-2\�#�\�H��O(LP\�\�Go/ �&\�k�[2\0��>�k+\�ZC\�p\�$\�w]��@�m�+N:\�\�!�כ��k=��u��C\�A\�7��ȃ�o�\�)`l\�\�\�\�\�\�ml\�uwz)��\�\�\�\�\�\��G��(\��\�m\�\r�Yѳ�Ь}\�\r��<j��r�8i\�W�\�]�A�c�L%\�\��p��5<�\�\�kC�,N������ \�֓6\\��׌U\'\�ƺY�e�p�M\�]�4_�\�R�\�\rm`\�ܘz>�<�˥\�\�\���R\�S\�°\�0���w\�v�X�a\�\��Y�\�Y�|<��?�3s�K�Gs�tE�\�\Z5ܝ5�\�\"�m,E��I�̻�yj1	�N {:\0\�\�c\�\�\�\Z��s\Z.B\�K#.\�C]g\�4?$�4\�yQTx��<\�+.���E�w�\�|����l\�\�\��V�\�������M�\�oH5rH����o,�\�c?m�S8uLD_���2wb\�]λ:��l���={?�W\rcL�\��\�Sz�2\n\nҍwʭ\�)m�[�b�j�8\�\��)n٬���O��\�/�xV�\�2��\�\�꿿\�\Zk��\�c-\�\r\0\0\0\0IEND�B`�','fail'),(12,'2022-10-30','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0KIDATx�\�}L\�q\�\�w=�Z�P�,�:#\�VW]?�kڴ���d-�����\�wW!Y]+VW��5y\�\�kJ�����tåt�s��\�\�\�ٽ��|�\�kｷ`ƌ3f��/�\�\�=R+�\�I�X�\�uo�\�\rVE=//\�\�~8\��O>\���e\'�\�_q��z3\�]n(���B�a0\�i�?(��@�\����@��\�X�3�\�\�C�\����\�0ڗ��n\���\�m1�(�\�\��Y�͐��j\�K��a&�Y�\�\���\��������~5i[Hԋ�T\�upF\��\�=q/�%�ϩQӥA\�\�O\0�M6,ho�:���\�U���B���.�j�A/��N0�G��Xc\�Ll\�o\�\�&x\�a��}5�>&@w�\�o����\�t=�;Gg�\�CL6z�@\'woͼ�t|�L@\�R]^a`TG.M$}�\Z�\�=�!`#\�kډ:\�	y��\�HkF�#ZVf��=.\�\�\�y�\r�� F���!F7\�)\�ϡ/Sŭ���\�g(��W\�s+\�\�\�}X\�\�=�-\�$>K){ܚV��EU�Bv�\�2�?/l\\\�\'����\�\r\�/�\�\n\�[fH�\�#�\�#.��H���\�o\�`b�5�<a�,�K`\�\0v�\��(�9A�vsީD�\�:�iL\�j�!<B\�7W)IJ��{���4�@\�|��\�Q`g�����#{�c�\�U���1_��3K�\'�\��\�>r\��\0\�\�p��i�W\n�\�\n\�L�/_L\"l_dL.�V\�:\��}v5���\�d��=ɣ\�cXw\'�\0KL���\�\�F���\�\0jE\���\�o�K�r�9�@N�vE\�\�+�<\�@E٤Z�\��Y�OP�~7O5ȑ�D�6֥�y\�q޴_��8z�^�ʬ�\�\�W��\�7\Z*DpSX<�\0\0\0\0IEND�B`�','fail'),(13,'2022-10-30','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0\�IDATx�\�}L\�q\�߿\�\�ay����\�CRCr*wu�(iKKk&��	\����[��՘�������s\�\�z��芛\�A���\�u����L\�/����\���}>��k(\0�Z���\�\���aq\�\�}\�wj\�<�!��iQ\�\�\�����\�� \�\�\0N���F��}�r�ꯀ��dI���\�D|���\�z�\"W_�UM)�������fڳ�\�\� lLy��\�\�trƲ|�\Z&<҅�}����nc���j\�ʟ$�v\�s�\�Q�\Z��\����;y�	\0\�! <v\09s��t�\n�\�Iް�1�ia,\�s��dߧ�\��_�`5��\�g6�c� ;��\�m��V�F\�/3��,��(f�`\�\�\'�=;J�s�\��6q��xI���YB1X��A+�\�p\�\��\�\Z�~\��_�\�\�^B�Q�Kg\��CU�.�^#Ԇ��\�\�^�\��QOv`X-�\�2�\�N\��\'�-?r��hs2\�M�Xà���8�e\\\�\�J\�Q!\�\�b_�e�\�I\�{k͒�s$�\�\��:\�tM���;��\�%f\�\�j��\�*�ύ��n\�h��âK_�\���Z�\�9:\��5\�;ޒ��]\�3λy�r냨i,�tɍj�O�����ӹ�\���z\r[/\�ha)k�<3\�\�-\"�\"\�\�P$�\��\�G谙8��)�k/�E�6%�o�`Utg�B��l��\�F�M\�/#\�(B\�\��nYG\Z\�9�*ɭw}\�w\�)Ib_r��Û>�\� \�+vq�Uǽ��۫c\�\�N.�\n\�l��\Z0���\�.\�}��e\0\0\0\0IEND�B`�','fail'),(14,'2022-10-30','manu',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0r\rߔ\0\0\08tEXtDescription\0This image encodes float32 28x28 array data.jOt�\0\0\0ItEXtSoftware\0Saved/loadable with \"imgarray\" at \"github.com/mverleg/imgarray\".#\�\�\�\0\0\0\rtEXtdtype\0float32ԟ2x\0\0PIDATx�\�{0�i\0Ɵ\�r\�)�\�eU*$�\�r�Z\�$r)Rd�-�أ4b�\�q�hw�\�ڥ���\�!-�qJ{:��[c\�\�5ɥ\�s���s��iwfgv�߿＿g�g\��\�E\�\�\�[��\�<}!�\�\�$9���\�\�&\�ZZ�d�o�\�d\�-IBY� M���cjB\��4��\r�⢄���ެ���r��ѯ\�\�\�n\� =V%\�|.\��\�F<K\�O\�r\�/r�,\0�9��\�T�G;\�Ք@3� ��d\�\�8\�i��w����@�\�VW\�}\��M�̀���\�\"\�\�.��\�%4ŰY|7vh+\�sN���hD�\�\Z~��\�{�\�/�[�B�)���\�`l��\Z\��Βw�\�&}\�Vsݜ,�\�\�30:5\�N@@\�	E�W\�\�\�\�u��\�u�,c@�5�D�\"�P\n����\�s\�\�\�\�z\�O{?p߀%ah�\�\01n^<��\�䏬��cq\�\�-��ܝ̑Zi�X��/)���d��&����\�]���.�s0�\�\�\n�{�E}���+4nҹ�\�rm�91�H�)\�~+\�\�(�W\�m��\�3=��n�	q\�܊�\�I�v��\�P�5M�^�ŞA(�\�D\�L\'j�؅B�\�d\�\�/\�vFJ\�\�ať��Zw5J\�iدbh�Xk�Jd:\n67�3X�A�u\�u�͵ƬP\��Z�ˢ��n\�\"Q��e9}�$�x�}��I�ΈI�6�P��\�cvc.\�9\����^A\�Bb�G!,K\�wJ)��\0\�`\�\n}�d\�m�Cxló���\�m\��\�\0\���\"5I/v5�ߞ�_\�&�\�\0�\�\�zO�;\���W�\�\0:o8x�3F֊\����\�\�aޭ���|x4S\��\ZJN������\�-Wp�p%�\�4;�\��c�㩌S\n�xl3ű\�\�O8��N�\�\�\'Ì%\�qv貭��{#�һS\n42�\�kt�IP+\�e\�\�ޓ\�;Vƿ\"��c�p�*C\�\�}\�\�x�H\�瑄m�訧�tK|\�#-�8y��\'�T&T�2Pچ2\�:�U;\�\�ʤĻ���п\�\�vu$*v<C��\0�\�=Ph\�G��3����Q)+�\�U=a\��\ri\�\�2qy/r^�#\�\�I]\�]I\�I\�!O\�hq��\�h\�r\�I\�f�Ţ��}\�d,}�(%H�*0ĭ�zC\0p\�ގ��0\�s]\�!N\�\��\�2\0�\�\�*X\�\'m�Ѣ\"Bmٚ\�m\�S�p�q\�84\'\�cIC\�\�npEpNRW�52]P���K\��|&\�~��2\r\'\��+�A|q9M���z�u�91�\�<�6)\0�C#ӗ�S�\�\�V}���@��ͥ���)�\�*Ƿ��0ң1⠒5��\\]��N^�a��/�\r\�#sь-�\�+D0�\�\�\"�^ޅ��M\Z��	�\�\�a��\�jdL\�3L�J�\�>�G&�O@>}���Ugkn,���j.=�\�#�\��c�\\�B\'\�{�\0\0\0\0IEND�B`�','pass');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-30  0:58:31
