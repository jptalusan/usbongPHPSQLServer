
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2015 at 12:35 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a3630301_shrimp`
--

-- --------------------------------------------------------

--
-- Table structure for table `fits`
--

CREATE TABLE `fits` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILENAME` varchar(1024) NOT NULL,
  `FILEPATH` varchar(1024) DEFAULT NULL,
  `RATING` int(1) DEFAULT '0',
  `UPLOADER` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `ICON` varchar(1024) DEFAULT NULL,
  `YOUTUBELINK` varchar(1024) DEFAULT NULL,
  `YOUTUBELINK2` varchar(1024) DEFAULT NULL,
  `SCREENSHOT2` varchar(1024) DEFAULT NULL,
  `SCREENSHOT3` varchar(1024) DEFAULT NULL,
  `SCREENSHOT4` varchar(1024) DEFAULT NULL,
  `DATEUPLOADED` varchar(1024) DEFAULT NULL,
  `DOWNLOADCOUNT` int(255) DEFAULT '0',
  `VERSION` int(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `fits`
--

INSERT INTO `fits` VALUES(9, 'Promeng', 'promeng.utree', 3, 'user', 'It Doesn''t Take One By: Quiñones (Artist), Rex (Writer), Emnace (Developer), Morales (Evangelist)', NULL, 'https://youtu.be/8tSCx7dtdS4', '', NULL, NULL, NULL, 'November 20,2013', 90, NULL);
INSERT INTO `fits` VALUES(10, 'Usbong', 'Usbong.utree', 1, 'mikhaillouis.martelino', 'JSP4 Project - Dango - Calalang, Leetian, Martelino', NULL, 'https://youtu.be/S3bG_trUG1w', 'https://youtu.be/BYfXCSU5VVo', NULL, NULL, NULL, 'February 21,2014', 28, NULL);
INSERT INTO `fits` VALUES(11, 'Erisette', 'Erisette.utree', 1, 'siembies', 'Renz Alinas (Evangelist), Monique Flores (Writer), Rossette Romilla (Developer) and Charles Siloy (Artist). English: ', NULL, 'https://youtu.be/OvpvWDKU8RA', 'https://youtu.be/YSYBNUIjek8', NULL, NULL, NULL, 'February 21,2014', 42, NULL);
INSERT INTO `fits` VALUES(12, 'Goldilocks', 'goldilocks.utree', 0, 'magnojoan', 'Joan Magno (Coder & Artist) Julber Osio (Evangelist & Writer) Nikky Sacro (Artist & Evangelist) Karla Santos (Writer & Evangelist) Japanese', NULL, 'https://youtu.be/v6QJVJArugA', 'https://youtu.be/jMhYPyaMcbU', NULL, NULL, NULL, 'February 21,2014', 31, NULL);
INSERT INTO `fits` VALUES(13, 'Beginfof', 'beginfof.utree', 1, 'pamllaguno', 'BEGIN! Festival of Fate is an interactive Usbong tree designed to help beginner learners of the Japanese language in introducing themselves. By: Abuan (Evangelist), Camat (Artist), Llaguno (Developer), Solis (Writer) ', NULL, 'https://youtu.be/XdFALnFfgls', '', NULL, NULL, NULL, 'February 22,2014', 33, NULL);
INSERT INTO `fits` VALUES(14, 'Kokuhaku', 'kokuhaku.utree', 0, 'angela.agravia', 'JSP 4 Project using usbong. By: Agravia, Juan, Lobitaña and Marcilla The story is about two best friends having fun in their school''s cultural festival. Japanese -', NULL, 'https://youtu.be/2IQhQMahfdw', 'https://youtu.be/dkwv79H24Fs', NULL, NULL, NULL, 'February 22,2014', 29, NULL);
INSERT INTO `fits` VALUES(15, 'Sakura Beginning', 'SakuraBeginning.utree', 0, 'deankristianb', 'By Gemyr Galang (Writer), Renzo Dumalaog (Artist), Lorenz Noble(Developer), and Dean Kristian Bardeloza (Evangelist) A new beginning....', NULL, 'https://youtu.be/hGwRRanSAAw', '', NULL, NULL, NULL, 'February 26,2014', 28, NULL);
INSERT INTO `fits` VALUES(16, 'Chichibu Adventure', 'ChichibuAdventure.utree', 1, 'kimmaeang96', 'Chichibu Adventure by: Paolo Acabado (Writer), Kimberly Ang (Evangelist), Zach Tolentino (Developer), Peavey Vergara (Artist)', NULL, 'https://youtu.be/UAIXaQyOt0M', '', NULL, NULL, NULL, 'February 28,2014', 2, NULL);
INSERT INTO `fits` VALUES(17, 'Gakuensai', 'gakuensai.utree', 0, 'beabisuna', 'JSP4 Project: Bisuna, Escudero, Gocuan, Quion', NULL, 'https://youtu.be/8g29tvzs75A', 'https://youtu.be/BF40qRYC4M4', NULL, NULL, NULL, 'February 28,2014', 10, NULL);
INSERT INTO `fits` VALUES(18, 'Ryugakusei', 'Ryugakusei.utree', 0, 'kyosugaguy', 'Ryugakusei by Kyle Bartido(Developer), Fiona Beleo(Artist), Ray Dysico(Writer) and Jose Luis Reyes(Evangelist) ', NULL, 'https://youtu.be/Tm9BP00g_Ec', '', NULL, NULL, NULL, 'March 03,2014', 7, NULL);
INSERT INTO `fits` VALUES(19, 'Beginfof', 'beginfof.utree', 1, 'pamllaguno', 'BEGIN! Festival of Fate is an interactive Usbong tree designed to help beginner learners of the Japanese language in introducing themselves. By: Abuan (Evangelist), Camat (Artist), Llaguno (Developer), Solis (Writer) ', NULL, 'https://youtu.be/XdFALnFfgls', '', NULL, NULL, NULL, 'February 22,2014', 33, NULL);
INSERT INTO `fits` VALUES(20, 'Kokuhaku', 'kokuhaku.utree', 0, 'angela.agravia', 'JSP 4 Project using usbong. By: Agravia, Juan, Lobitaña and Marcilla The story is about two best friends having fun in their school''s cultural festival. Japanese -', NULL, 'https://youtu.be/2IQhQMahfdw', 'https://youtu.be/dkwv79H24Fs', NULL, NULL, NULL, 'February 22,2014', 29, NULL);
INSERT INTO `fits` VALUES(21, 'Sakura Beginning', 'SakuraBeginning.utree', 0, 'deankristianb', 'By Gemyr Galang (Writer), Renzo Dumalaog (Artist), Lorenz Noble(Developer), and Dean Kristian Bardeloza (Evangelist) A new beginning....', NULL, 'https://youtu.be/hGwRRanSAAw', '', NULL, NULL, NULL, 'February 26,2014', 28, NULL);
INSERT INTO `fits` VALUES(22, 'Chichibu Adventure', 'ChichibuAdventure.utree', 1, 'kimmaeang96', 'Chichibu Adventure by: Paolo Acabado (Writer), Kimberly Ang (Evangelist), Zach Tolentino (Developer), Peavey Vergara (Artist)', NULL, 'https://youtu.be/UAIXaQyOt0M', '', NULL, NULL, NULL, 'February 28,2014', 2, NULL);
INSERT INTO `fits` VALUES(23, 'Gakuensai', 'gakuensai.utree', 0, 'beabisuna', 'JSP4 Project: Bisuna, Escudero, Gocuan, Quion', NULL, 'https://youtu.be/8g29tvzs75A', 'https://youtu.be/BF40qRYC4M4', NULL, NULL, NULL, 'February 28,2014', 10, NULL);
INSERT INTO `fits` VALUES(24, 'Ryugakusei', 'Ryugakusei.utree', 0, 'kyosugaguy', 'Ryugakusei by Kyle Bartido(Developer), Fiona Beleo(Artist), Ray Dysico(Writer) and Jose Luis Reyes(Evangelist) ', NULL, 'https://youtu.be/Tm9BP00g_Ec', '', NULL, NULL, NULL, 'March 03,2014', 7, NULL);
INSERT INTO `fits` VALUES(25, 'Atarashii Utree Atarashiikazoku', 'AtarashiiKazoku.utree', 1, 'aaleahh', 'JSP1 - "Atarashii Kazoku" by Hannah de Guzman (writer), Rex Intal (artist), Josh Villanueva (evangelist), Karl Baysa (evangelist), Aleah Cunningham (developer).', NULL, 'https://youtu.be/76gUzr6Emwc', '', NULL, NULL, NULL, 'May 22,2014', 15, NULL);
INSERT INTO `fits` VALUES(26, 'Amnesia', 'amnesia.utree', 0, 'riafaye.paderanga', 'AMNESIA by Trisha Lim (Artist), Jomar Montemayor (Writer), Ria Paderanga (Developer), Justine Recio (Evangelist)', NULL, 'https://youtu.be/9SZEwoAUZfA', '', NULL, NULL, NULL, 'May 23,2014', 6, NULL);
INSERT INTO `fits` VALUES(27, 'Beginfof', 'beginfof.utree', 1, 'pamllaguno', 'BEGIN! Festival of Fate is an interactive Usbong tree designed to help beginner learners of the Japanese language in introducing themselves. By: Abuan (Evangelist), Camat (Artist), Llaguno (Developer), Solis (Writer) ', NULL, 'https://youtu.be/XdFALnFfgls', '', NULL, NULL, NULL, 'February 22,2014', 33, NULL);
INSERT INTO `fits` VALUES(28, 'Kokuhaku', 'kokuhaku.utree', 0, 'angela.agravia', 'JSP 4 Project using usbong. By: Agravia, Juan, Lobitaña and Marcilla The story is about two best friends having fun in their school''s cultural festival. Japanese -', NULL, 'https://youtu.be/2IQhQMahfdw', 'https://youtu.be/dkwv79H24Fs', NULL, NULL, NULL, 'February 22,2014', 29, NULL);
INSERT INTO `fits` VALUES(29, 'Sakura Beginning', 'SakuraBeginning.utree', 0, 'deankristianb', 'By Gemyr Galang (Writer), Renzo Dumalaog (Artist), Lorenz Noble(Developer), and Dean Kristian Bardeloza (Evangelist) A new beginning....', NULL, 'https://youtu.be/hGwRRanSAAw', '', NULL, NULL, NULL, 'February 26,2014', 28, NULL);
INSERT INTO `fits` VALUES(30, 'Chichibu Adventure', 'ChichibuAdventure.utree', 1, 'kimmaeang96', 'Chichibu Adventure by: Paolo Acabado (Writer), Kimberly Ang (Evangelist), Zach Tolentino (Developer), Peavey Vergara (Artist)', NULL, 'https://youtu.be/UAIXaQyOt0M', '', NULL, NULL, NULL, 'February 28,2014', 2, NULL);
INSERT INTO `fits` VALUES(31, 'Gakuensai', 'gakuensai.utree', 0, 'beabisuna', 'JSP4 Project: Bisuna, Escudero, Gocuan, Quion', NULL, 'https://youtu.be/8g29tvzs75A', 'https://youtu.be/BF40qRYC4M4', NULL, NULL, NULL, 'February 28,2014', 10, NULL);
INSERT INTO `fits` VALUES(32, 'Ryugakusei', 'Ryugakusei.utree', 0, 'kyosugaguy', 'Ryugakusei by Kyle Bartido(Developer), Fiona Beleo(Artist), Ray Dysico(Writer) and Jose Luis Reyes(Evangelist) ', NULL, 'https://youtu.be/Tm9BP00g_Ec', '', NULL, NULL, NULL, 'March 03,2014', 7, NULL);
INSERT INTO `fits` VALUES(33, 'Atarashii Utree Atarashiikazoku', 'AtarashiiKazoku.utree', 1, 'aaleahh', 'JSP1 - "Atarashii Kazoku" by Hannah de Guzman (writer), Rex Intal (artist), Josh Villanueva (evangelist), Karl Baysa (evangelist), Aleah Cunningham (developer).', NULL, 'https://youtu.be/76gUzr6Emwc', '', NULL, NULL, NULL, 'May 22,2014', 15, NULL);
INSERT INTO `fits` VALUES(34, 'Amnesia', 'amnesia.utree', 0, 'riafaye.paderanga', 'AMNESIA by Trisha Lim (Artist), Jomar Montemayor (Writer), Ria Paderanga (Developer), Justine Recio (Evangelist)', NULL, 'https://youtu.be/9SZEwoAUZfA', '', NULL, NULL, NULL, 'May 23,2014', 6, NULL);
INSERT INTO `fits` VALUES(35, 'Ai No Kokuhaku', 'ai_no_kokuhaku.utree', 0, 'jamzky.7', 'JSP1: "Ai no Kokuhaku" by Mita Urbano (writer), Julius Mendez (artist), Nathalie King (evangelist), Jam Labarentos (app developer), Bruce Reyes (video developer)', NULL, 'https://youtu.be/0j60oINDIWc', '', NULL, NULL, NULL, 'May 27,2014', 10, NULL);
INSERT INTO `fits` VALUES(36, 'Disaster Dates Japanese', 'disaster_dates_japanese.utree', 0, 'christopher.sy', 'Disaster Dates: Fuentes (Writer), Laguting (Evangelist), Rufino (Evangelist), Sy (Artist), Unana (Developer) ', NULL, 'https://youtu.be/fVDrqACI0p4', '', NULL, NULL, NULL, 'May 28,2014', 9, NULL);
INSERT INTO `fits` VALUES(37, 'First Semester, Ichirou', 'Ichirou.utree', 1, 'sabsci', 'FLC 4JSP, First Semester, 2014-2015: Sydney Chan (artist), Isabel Constantino (developer), Juan Daray (evangelist), Sammy Rabby (writer) ', NULL, 'https://youtu.be/7e4CiFfYME8', '', NULL, NULL, NULL, 'October 10,2014', 6, NULL);
INSERT INTO `fits` VALUES(38, 'Itadaki Mama', 'ItadakiMama5.utree', 1, 'joseph.singson1', '?????? (ItadakiMama)! It''s an app that let''s you create authentic and delicious Japanese Dishes! A JSP1 Project by: Kai Bartolome (Artist & Evangelist), Chester Ong (Writer & Evangelist), Joseph Singson (Coder & Evangelist)', NULL, 'https://youtu.be/mzBbQ0nsNWg', '', NULL, NULL, NULL, 'October 10,2014', 22, NULL);
INSERT INTO `fits` VALUES(39, 'A Stringed Fate', 'A_Stringed_Fate.utree', 1, 'jamalmazar', 'JSP1 project by Jasmine Almazar(developer), Michelle Carrillo(evangelist/writer), Jesse Lim(evangelist/writer), Beatrice Mendoza(artist).', NULL, 'https://youtu.be/J5OOkj1MhNE', '', NULL, NULL, NULL, 'October 11,2015', 28, NULL);
INSERT INTO `fits` VALUES(40, 'Butterfly', 'Butterfly.utree', 0, 'DeusRegis', 'Butterfly Pin Created by Team Takai: Na (Writer), Abais (Programmer), Bueno (Artist), Cubacub (Artist), Bas (Evangelist)', NULL, 'https://youtu.be/wH38KUXPE7Q', '', NULL, NULL, NULL, 'October 11,2015', 5, NULL);
INSERT INTO `fits` VALUES(41, 'Rizal Park Adventure', 'RizalParkAdventure.utree', 0, 'usbong', 'In this interactive storybook app, play the role of a college student who accompanies a cute Japanese international student to Rizal Park in Manila, Philippines. Practice and learn Japanese! (Writer, Artist, Developer, Evangelist: Michael Syson) ', NULL, 'https://youtu.be/26iOH9yJtnc', '', NULL, NULL, NULL, 'November 06,2014', 4, NULL);
INSERT INTO `fits` VALUES(42, 'Food Fight', 'FoodFight.utree', 1, 'Ed', 'The Pilot issue of a developing e-book/app about the food related adventures of Rap-San Theo-San and Enzo-San.', NULL, 'https://youtu.be/R4yywgzXZWM', '', NULL, NULL, NULL, 'March 23,2015', 1, NULL);
INSERT INTO `fits` VALUES(43, '', '???????????_.utree', 0, 'jretes', 'JSP1Project - ????????????? Members: Triz Patupat (Artist) Drinna Pepito (Writer) Connor Teh (Developer) Junius Retes (Evangelist)', NULL, 'https://youtu.be/0sSx5Abf7iU', '', NULL, NULL, NULL, 'March 24,2015', 0, NULL);
INSERT INTO `fits` VALUES(44, 'Final Omatsuri App V1', 'Final_Omatsuri_App_V1.utree.utree', 0, 'ninjas', '???????? Saijitsu no Gaido A festival guide for tourists Sandra Arances - artist?Janina Castro - evangelist?Daryl Gerona - developer?Sofia Nacpil - writer?Bea Zorrilla - artist', NULL, 'https://youtu.be/OhIwbn0LRc8', '', NULL, NULL, NULL, 'March 24,2015', 5, NULL);
INSERT INTO `fits` VALUES(45, 'Trip To Aki And Shibuya', 'Trip_to_Aki_and_Shibuya1.utree', 2, 'Jarvis', 'Trip to Akihabara and Shibuya, by William Go (Writer), Jarvis Pua (Developer), Joash Liwanag (Artist), and Aaron Velasco (Evangelist) ', NULL, 'https://youtu.be/xWBBg9-A_B4', '', NULL, NULL, NULL, 'March 24,2015', 5, NULL);
INSERT INTO `fits` VALUES(46, 'Ryu Gaido', 'RyuGaido.utree', 0, 'Ruiku', 'JSP1 - RyuGaido Luke Ampil (Developer) Gian Caedo (Artist) Junice Lagnada (Evangelist) John Santos (Writer) ', NULL, 'https://youtu.be/F9VyQ_MFVZo', '', NULL, NULL, NULL, 'March 25,2015', 3, NULL);
INSERT INTO `fits` VALUES(47, 'Festive Remade', 'Festive_Nights_Remade.utree', 0, 'kayatoizumi', 'Festive Nights A short visual novel-like app made by: Ian Z''dref Erl T. Sy Jaime Bernardo Lopez Karl Jimenez Basti Nodalo ', NULL, 'https://youtu.be/Gvv35tGuEtg', '', NULL, NULL, NULL, 'March 26,2015', 0, NULL);
INSERT INTO `fits` VALUES(48, 'Sushi Hai', 'Sushi_Hai.utree', 0, 'usbong', 'Sushi Hai is narrative to entertain and educate users on the culture and history of the world-famous Sushi. It is about a Japanese transfer student in your first day in school and your various adventures and misadventures with new friends.', NULL, 'https://youtu.be/7ysmGrimzpk', '', NULL, NULL, NULL, 'March 31,2015', 0, NULL);
