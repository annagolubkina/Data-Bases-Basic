-- --------CATALOGS---------------------------
INSERT INTO catalogs VALUES
	(NULL, '������'),
	(NULL, '������'),
	(NULL, '����'),
	(NULL, '�����������'),
  	(NULL, '������'),
	(NULL, '�����');
 -- ------------------------------------------------------ 
 
 -- ---------ORDER STATUS---------------------------
INSERT INTO `order_statuses` VALUES 
	(1,'��������'),
	(2,'� ���������'),
	(3,'������� � ��������'),
	(4,'��������');
-- ------------------------------------------------------

-- --------	TREATMENT TYPES---------------------------
INSERT INTO `treatment_types` VALUES 
	(1,'������', 7890.00,60),
	(2,'�������/�������', 7890.00,80),
	(3,'�������', 7890.00,40),
	(4,'�����������', 7890.00,120),
	(5,'�������', 7890.00,90);
-- ------------------------------------------------------
-- --------	USERS---------------------------
INSERT INTO users VALUES 
(1, '����', '�������', 'kkeijser0@desdev.cn', '������','145-240-0842',  '1980-02-12'),
(2, '�������', '�������', 'phowling1@github.com', '��������', '277-932-5189', '1966-08-03'),
(3, '�����', '��������', 'telse2@pagesperso-orange.fr','������',  '727-161-7829', '1988-11-19'),
(4, '���������', '�������', 'nclausewitz3@springer.com', '�����',  '703-951-7256','1970-01-14'),
(5, '�����', '���������', 'eportal4@msu.edu', '�������', '640-883-9863', '1978-02-08'),
(6, '�����', '������', 'mgillie5@mozilla.com',  '������','169-901-8089', '2000-02-17'),
(7, '����', '��������', 'ccull6@wikia.com', '������', '217-596-3359', '1991-01-29'),
(8, '����', '��������', 'gkinny7@seattletimes.com', '��������', '140-698-8553', '1998-12-27'),
(9, '�����', '��������', 'noliva8@artisteer.com',  '������', '847-531-6773','1992-10-19'),
(10, '������', '������', 'nvigneron9@uol.com.br', '������� �����','560-606-3266',  '1996-04-11'), -- ����� email
(11,'������','���������','rgouldstone0@examiner.com','���������','168-114-2896', '1970-08-21'),
(12,'������','����������','bpettican1@yelp.com','��������','145-257-1691','1987-10-10'),
(13,'��������','���������','glinfn@ye.com','������','147-157-1891','1991-05-31'),
(14,'������','��������','arlo50102@example.org','�������','9374071116','2001-01-24'),
(15,'������','������','terrence.cartwright@example.org','�����������','9127498182','1991-01-03'),
(16,'���������','����������','rupert55@example.org','�����','9921090703','1999-01-01'),
(17,'��������','��������','rebekah29@example.net','�����-���������','9592139196','1989-10-14'),
(18,'����������','����������','von.bridget@example.net','������������','9909791725','1973-11-02'),
(19,'����','��������','sdfsdf@sdasd.rt','������','678-789-789','1996-02-08'),
(20,'�������','���������','rbeautywoman0@cbsnews.com','������','444-426-6173','1984-08-24'),
(21, '���', '�������', 'xeichmann@example.net', '����������','545-210-0842',  '1985-04-17'),
(22, '����', '�������', 'telly.miller@example.net', '��������', '577-912-5289', '1969-10-13'),
(23, '�����', '��������', 'damaris34@example.net','�������',  '777-761-7129', '1988-12-25'),
(24, '������', '���������', 'antonietta.swift@example.com', '��������',  '713-953-7286','1972-02-23'),
(25, '��������', '���������', 'qcremin@example.org', '�������', '660-843-9863', '1978-04-14'),
(26, '������', '��������', 'idickens@example.com',  '��������','189-988-6089', '2001-03-17'),
(27, '�������', '�������', 'jennifer27@example.com', '������', '277-588-3359', '1991-10-19'),
(28, '���������', '���', 'weimann.richard@example.com', '�����-���������', '150-648-5553', '1998-12-31'),
(29, '������', '���������', 'hassan.kuphal@example.org',  '������', '857-571-6873','1992-11-29'),
(30, '����', '����������', 'gutkowski.janiya@example.com', '����','561-706-3166',  '1996-05-11'), -- ����� email
(31,'�������','�����','gail.lockman@example.net','�������','186-411-2856', '1971-07-21'),
(32,'�������','����������','jswift@example.org','���������','155-254-1491','1986-11-11'),
(33,'�����','������������','cartwright.seamus@example.com','���������','157-157-1571','1990-06-21'),
(34,'������','��������','flavio.hammes@example.com','����������','917-407-2216','2001-02-24'),
(35,'��������','��������','tdbartell@example.net','������','913-749-8182','1991-01-03'),
(36,'����','�������','xheidenreich@example.net','���������','172-109-1703','1998-02-01'),
(37,'���','����������','velda32@example.org','������������','982-159-1956','1988-10-18'),
(38,'��������','��������','kaley.rolfson@example.net','����','990-979-1725','1972-11-12'),
(39,'������','����������','emmanuelle.hegmann@example.org','�������','688-769-739','1995-04-08'),
(40,'������','����������','bosco.sage@example.net','�����','484-320-6673','1985-07-24'),
(41, '�����', '������', 'rolando45@example.org', '������','245-354-0842',  '1981-04-12'),
(42, '��������', '��������', 'isaiah.gerlach@example.ne', '�����������', '277-932-5159', '1967-09-05'),
(43, '�����', '��������', 'terry.antone@example.org','�����������',  '787-161-7829', '1989-01-19'),
(44, '�����', '��������', 'benny76@example.net', '�����������',  '752-951-7256','1970-03-14'),
(45, '�����', '���������', 'zturner@example.com', '�������', '614-883-9863', '1979-03-08'),
(46, '����', '��������', 'zemlak.foster@example.com',  '�������������','168-981-8089', '2002-12-07'),
(47, '�������', '�������', 'jbeer@example.net', '�����', '227-586-3359', '1992-11-19'),
(48, '�������', '�������', 'reynold.feil@example.net', '����', '141-698-8553', '1997-11-27'),
(49, '����', '������', 'ohnathan.waelchi@example.org',  '������', '478-530-7673','1992-11-19'),
(50, '������', '����� ', 'noemie38@example.org', '�������','160-706-3166',  '1997-08-21');
-- ------------------------------------------------------

-- -------STAFF---------------------------
INSERT INTO staff VALUES 
(1, '�����', '������'),
(2, '��������', '������'),
(3, '�����', '�������'),
(4, '������', '������'),
(5, '�������', '�������'),
(6, '�����', '��������'),
(7, '����', '���������'),
(8, '���������', '��������'),
(9, '���������', '���������'),
(10, '������', '�������');
-- ------------------------------------------------------	
-- --------	APPOINTMENTS---------------------------
INSERT INTO appointments VALUES 
(1, 16, 5, 1, '2020-09-05 22:21:16', '2020-05-31 13:55:26'),
(2, 53, 3, 5, '2020-02-04 17:04:05', '2020-05-08 07:38:49'),
(3, 8, 1, 1, '2020-04-21 16:03:05', '2020-07-17 15:23:49'),
(4, 50, 2, 5, '2020-04-20 10:29:39', '2020-05-25 04:44:20'),
(5, 51, 3, 1, '2020-07-05 14:03:29', '2020-07-01 19:12:38'),
(6, 7, 5, 2, '2020-04-13 21:33:57', '2020-06-26 00:31:39'),
(7, 49, 10, 4, '2020-12-09 07:11:47', '2020-09-24 08:59:21'),
(8, 38, 10, 3, '2020-10-26 23:02:08', '2020-08-19 21:40:43'),
(9, 42, 4, 3, '2020-07-05 16:24:18', '2020-04-04 14:35:35'),
(10, 42, 1, 2, '2020-03-24 19:34:12', '2020-05-21 06:59:59'),
(11, 55, 6, 2, '2020-03-07 02:46:58', '2020-02-09 20:22:57'),
(12, 53, 5, 1, '2020-03-18 18:32:38', '2020-11-09 06:18:06'),
(13, 43, 6, 2, '2020-08-07 14:52:03', '2020-12-28 22:01:44'),
(14, 19, 4, 3, '2020-11-22 20:54:59', '2020-02-09 06:28:43'),
(15, 18, 7, 3, '2020-02-26 21:20:43', '2020-05-11 10:07:40'),
(16, 20, 4, 1, '2020-09-28 03:31:27', '2020-04-13 20:53:35'),
(17, 20, 3, 1, '2020-06-15 08:13:43', '2020-11-06 01:28:26'),
(18, 39, 7, 4, '2020-05-03 23:30:59', '2020-04-06 20:51:00'),
(19, 53, 6, 2, '2020-11-09 21:30:59', '2020-05-28 03:15:55'),
(20, 21, 1, 2, '2020-10-17 03:19:04', '2020-05-24 09:39:14'),
(21, 34, 9, 2, '2020-03-14 12:24:18', '2020-09-16 14:31:51'),
(22, 46, 8, 3, '2020-10-24 23:54:34', '2020-11-20 05:02:04'),
(23, 26, 5, 2, '2020-07-10 13:01:19', '2020-07-23 19:20:31'),
(24, 25, 1, 2, '2020-12-11 13:14:21', '2020-10-31 20:19:35'),
(25, 10, 9, 1, '2020-06-01 13:32:09', '2020-08-10 14:59:44'),
(26, 12, 6, 5, '2020-10-20 00:39:17', '2020-07-01 23:39:40'),
(27, 52, 6, 3, '2020-01-27 09:27:19', '2020-01-21 10:49:40'),
(28, 3, 10, 5, '2020-08-05 11:32:19', '2020-10-21 13:14:47'),
(29, 33, 7, 3, '2020-02-02 00:46:48', '2020-06-27 18:31:27'),
(30, 1, 7, 4, '2020-06-16 09:56:56', '2020-01-04 22:41:20'),
(31, 42, 7, 3, '2020-08-23 01:48:27', '2020-02-04 19:04:22'),
(32, 31, 1, 1, '2020-07-04 11:11:17', '2020-09-01 22:23:34'),
(33, 34, 4, 5, '2020-12-01 06:32:12', '2020-06-15 16:42:04'),
(34, 19, 2, 5, '2020-12-23 09:43:37', '2020-04-24 23:42:25'),
(35, 49, 7, 3, '2020-04-20 07:01:15', '2020-10-04 12:04:49'),
(36, 24, 10, 1, '2020-05-07 17:13:05', '2020-02-03 15:22:05'),
(37, 28, 1, 1, '2020-10-28 09:02:35', '2020-05-13 10:36:05'),
(38, 14, 9, 1, '2020-06-07 20:47:00', '2020-03-10 06:46:08'),
(39, 1, 3, 5, '2020-05-02 12:55:56', '2020-09-09 09:04:00'),
(40, 17, 8, 5, '2020-08-09 13:25:34', '2020-04-06 22:27:17'),
(41, 17, 8, 4, '2020-08-09 13:55:34', '2020-04-06 22:27:17'),
(42, 17, 8, 3, '2020-08-09 16:55:34', '2020-04-06 22:27:17'),
(43, 2, 5, 1, '2020-07-31 16:55:34', '2020-07-31 22:27:17');

-- ------------------------------------------------------	

-- --------	ORDERS---------------------------
INSERT INTO orders VALUES 
(1, 18, 46, 4, '2020-05-02 16:53:14', '2020-01-12 16:13:54'),
(2, 6, 37, 3, '2020-05-23 08:20:37', '2020-11-08 01:03:09'),
(3, 7, 28, 1, '2020-07-16 01:52:44', '2020-01-19 08:40:13'),
(4, 2, 1, 3, '2020-02-25 01:32:13', '2020-08-31 09:23:26'),
(5, 19, 16, 3, '2020-04-29 02:40:53', '2020-08-23 23:49:13'),
(6, 2, 30, 4, '2020-12-22 23:26:56', '2020-03-06 06:05:00'),
(7, 1, 48, 1, '2020-07-14 10:13:21', '2020-06-21 14:46:37'),
(8, 16, 19, 4, '2020-04-26 05:50:41', '2020-08-17 04:26:48'),
(9, 20, 21, 3, '2020-04-27 04:46:07', '2020-11-11 00:56:33'),
(10, 4, 32, 1, '2020-12-19 02:47:45', '2020-02-13 05:18:43'),
(11, 5, 21, 3, '2020-02-08 02:07:40', '2020-01-30 10:31:40'),
(12, 7, 41, 3, '2020-01-02 20:05:28', '2020-05-11 16:47:22'),
(13, 20, 42, 4, '2020-03-09 17:40:45', '2020-09-04 03:10:06'),
(14, 14, 17, 2, '2020-09-30 23:55:07', '2020-07-14 01:28:43'),
(15, 6, 30, 3, '2020-12-08 04:47:31', '2020-02-18 23:55:16'),
(16, 8, 19, 2, '2020-02-22 21:35:54', '2020-03-14 10:03:47'),
(17, 2, 34, 4, '2020-02-06 01:29:43', '2020-04-26 23:58:31'),
(18, 17, 42, 1, '2020-04-23 04:33:10', '2020-03-03 20:58:28'),
(19, 3, 47, 3, '2020-10-15 13:17:58', '2020-12-05 23:00:51'),
(20, 15, 43, 1, '2020-09-23 08:54:44', '2020-10-25 00:33:45'),
(21, 6, 11, 4, '2020-01-30 00:45:31', '2020-05-26 02:57:36'),
(22, 14, 13, 4, '2020-03-18 19:44:08', '2020-09-24 19:13:32'),
(23, 2, 44, 3, '2020-06-26 04:10:11', '2020-11-30 14:28:50'),
(24, 3, 24, 3, '2020-04-06 16:52:33', '2020-12-26 02:25:02'),
(25, 1, 47, 2, '2020-10-13 05:09:47', '2020-07-15 14:01:47'),
(26, 3, 12, 4, '2020-05-24 20:45:40', '2020-07-01 13:14:42'),
(27, 11, 26, 3, '2020-01-31 11:30:50', '2020-01-18 23:59:02'),
(28, 10, 15, 2, '2020-12-27 06:09:53', '2020-03-18 15:41:01'),
(29, 15, 21, 4, '2020-06-29 05:31:17', '2020-01-05 03:20:25'),
(30, 20, 27, 2, '2020-08-03 11:03:25', '2020-02-03 14:37:23'),
(31, 18, 13, 1, '2020-10-13 12:43:02', '2020-10-24 02:11:03'),
(32, 20, 33, 1, '2020-05-26 01:45:59', '2020-11-30 13:02:59'),
(33, 18, 11, 3, '2020-08-10 06:21:31', '2020-12-06 12:21:22'),
(34, 13, 23, 1, '2020-04-07 15:14:11', '2020-07-16 12:54:48'),
(35, 20, 37, 4, '2020-03-18 23:33:05', '2020-05-22 16:05:44'),
(36, 13, 29, 2, '2020-05-01 04:38:52', '2020-05-11 09:45:27'),
(37, 18, 9, 4, '2020-01-09 21:29:05', '2020-08-22 20:54:20'),
(38, 10, 25, 1, '2020-07-07 06:10:03', '2020-02-08 05:35:43'),
(39, 7, 47, 1, '2020-02-04 16:39:50', '2020-07-23 02:54:40'),
(40, 17, 9, 1, '2020-03-19 00:56:02', '2020-09-30 04:48:51'),
(41, 13, 16, 2, '2020-07-08 05:46:25', '2020-12-19 21:20:33'),
(42, 11, 26, 2, '2020-07-31 14:52:03', '2020-12-28 15:53:01'),
(43, 15, 28, 4, '2020-10-10 05:56:45', '2020-11-03 23:50:31'),
(44, 20, 15, 2, '2020-11-12 19:32:59', '2020-07-22 10:14:00'),
(45, 4, 20, 4, '2020-04-30 11:47:16', '2020-09-27 10:50:44'),
(46, 8, 34, 4, '2020-09-25 17:28:32', '2020-09-20 16:11:51'),
(47, 14, 33, 3, '2020-05-02 11:26:54', '2020-04-13 18:02:46'),
(48, 18, 37, 1, '2020-05-05 23:52:08', '2020-03-15 21:08:50'),
(49, 1, 46, 2, '2020-08-15 04:58:46', '2020-08-27 05:01:44'),
(50, 16, 48, 3, '2020-03-21 01:42:02', '2020-05-04 17:24:01'),
(51, 6, 41, 4, '2020-03-28 11:23:31', '2020-06-21 11:19:02'),
(52, 12, 10, 1, '2020-09-02 14:06:40', '2020-03-31 14:32:23'),
(53, 9, 11, 3, '2020-06-10 09:13:19', '2020-12-23 14:48:03'),
(54, 10, 41, 1, '2020-09-19 17:02:31', '2020-02-15 06:38:28'),
(55, 6, 34, 2, '2020-04-30 01:24:18', '2020-06-30 00:39:10'),
(56, 5, 8, 2, '2020-03-14 10:56:28', '2020-08-12 14:40:42'),
(57, 15, 22, 3, '2020-01-07 17:39:59', '2020-07-14 13:05:45'),
(58, 18, 24, 4, '2020-08-03 14:21:46', '2020-06-11 03:05:36'),
(59, 20, 8, 4, '2020-12-26 00:51:34', '2020-11-01 18:50:48'),
(60, 14, 11, 4, '2020-05-10 13:59:39', '2020-11-11 01:55:18'),
(61, 11, 37, 1, '2020-04-09 03:40:05', '2020-07-30 09:00:24'),
(62, 14, 38, 3, '2020-06-28 20:22:22', '2020-12-02 01:31:14'),
(63, 2, 41, 3, '2020-11-21 18:17:44', '2020-02-26 00:04:41'),
(64, 7, 1, 2, '2020-04-21 19:52:26', '2020-04-16 06:03:31'),
(65, 20, 36, 2, '2020-01-26 07:00:26', '2020-02-10 22:57:16'),
(66, 7, 17, 1, '2020-04-07 08:42:07', '2020-09-26 15:58:40'),
(67, 4, 3, 1, '2020-11-09 04:25:17', '2020-04-29 00:58:01'),
(68, 9, 34, 2, '2020-10-19 18:09:39', '2020-09-27 08:07:27'),
(69, 19, 24, 1, '2020-10-20 21:43:28', '2020-04-13 16:58:54'),
(70, 4, 24, 1, '2020-12-14 14:12:07', '2020-11-10 05:06:36'),
(71, 5, 12, 2, '2020-08-09 00:24:07', '2020-04-30 21:41:04'),
(72, 16, 27, 4, '2020-03-10 21:30:01', '2020-09-07 13:29:17'),
(73, 17, 1, 3, '2020-07-25 07:10:11', '2020-09-27 07:50:14'),
(74, 6, 29, 3, '2020-02-26 23:02:28', '2020-01-19 18:53:26'),
(75, 1, 14, 2, '2020-01-06 22:43:14', '2020-11-26 23:44:25'),
(76, 15, 18, 4, '2020-04-07 22:41:27', '2020-02-14 22:22:13'),
(77, 3, 42, 3, '2020-12-12 18:41:04', '2020-02-03 13:27:05'),
(78, 10, 21, 4, '2020-12-05 09:41:38', '2020-06-09 19:47:00'),
(79, 9, 30, 3, '2020-07-16 23:07:20', '2020-03-09 07:31:15'),
(80, 12, 16, 4, '2020-06-18 13:58:55', '2020-04-16 06:20:55'),
(81, 10, 38, 1, '2020-09-12 01:45:01', '2020-12-08 18:05:22'),
(82, 4, 30, 4, '2020-02-08 00:51:16', '2020-10-03 11:32:33'),
(83, 8, 29, 3, '2020-10-20 22:15:00', '2020-08-01 11:19:04'),
(84, 5, 2, 3, '2020-11-30 07:08:34', '2020-05-24 19:42:45'),
(85, 14, 27, 1, '2020-04-19 03:15:20', '2020-12-03 03:08:05'),
(86, 4, 44, 4, '2020-09-24 12:14:43', '2020-10-09 02:51:38'),
(87, 20, 32, 2, '2020-03-13 21:27:38', '2020-04-09 11:19:56'),
(88, 3, 40, 4, '2020-01-15 13:58:20', '2020-01-11 05:38:33'),
(89, 4, 4, 2, '2020-01-06 11:18:08', '2020-04-06 06:50:50'),
(90, 20, 4, 1, '2020-08-10 15:55:51', '2020-03-30 16:34:25'),
(91, 10, 30, 4, '2020-04-24 23:03:35', '2020-02-07 18:10:40'),
(92, 17, 34, 1, '2020-04-08 06:39:22', '2020-10-19 00:41:29'),
(93, 15, 33, 4, '2020-09-05 20:31:08', '2020-02-10 05:38:10'),
(94, 14, 22, 3, '2020-03-26 13:39:42', '2020-04-03 01:50:19'),
(95, 18, 46, 3, '2020-05-01 00:03:29', '2020-07-30 21:18:50'),
(96, 6, 19, 3, '2020-09-05 03:20:38', '2020-07-06 12:01:14'),
(97, 8, 44, 4, '2020-02-22 18:27:32', '2020-01-15 11:50:50'),
(98, 3, 33, 3, '2020-06-27 03:11:28', '2020-02-20 05:44:15'),
(99, 16, 49, 3, '2020-09-20 21:06:08', '2020-10-16 09:04:44'),
(100, 17, 5, 4, '2020-12-30 23:29:43', '2020-08-04 08:43:35');


-- ------------------------------------------------------	

ALTER TABLE beauty_shop.products ADD brand varchar(100) NULL;
-- --------	PRODUCTS---------------------------
INSERT INTO products VALUES 
(1,'BB-���� ��� ���� ������ ����','����������� ������ 3 � 1: ������������� �������� + ���������� ����� ������ ��� ������� + ������������� ������.',3080,1,'2020-05-10', '2020-10-25','Erborian'),
(2,' ����� ULTRALUCENT','����������� ����������� ����� ���� �������������� ������� �����,',1368,1,'2020-06-15', '2020-10-15','CINEMA SECRETS'),
(3,'����� ��� ���� ��� ������� HYDRO COOL FIRMING EYE GELS','����������� ������� ����� ��� ����������, ������������� � ���������� ������������ ��� �������.',3000,3,'2020-07-15', '2020-08-13','SKYN ICELAND'),
(4,'������ ����������� ���� ��� ���� ','������ ����������� ���� ��������, ���� �� �����: �������� ������������� � ����������� ���������.',6000,3,'2020-08-15', '2020-03-14','SKYN ICELAND'),
(5,'�������� ORIGINAL','������������ ����� Tangle Teezer The Original ��������� ������������� ����������� ��� �����, ��� � ������� ������.',1080,2,'2020-09-15', '2020-09-15','TANGLE TEEZER'),
(6,'����� ��� ������ ����� XXL VOLUME SPRAY','Batiste Volume XXL ������ ������ ����� �������',700,2,'2020-05-11', '2020-09-16','BATISTE'),
(7,'���������� ������-����������� BLOTTERAZZI','���������� ������-�������� ��������� ������� ������� ����.',1780,4,'2020-09-17', '2020-10-25','BEAUTYBLENDER'),
(8,'2 ������ ��� ��������� ��������� MICRO.MINI','����-������ ������������� ������ Beautyblender.',1590,4,'2020-05-20', '2020-09-17','BEAUTYBLENDER'),
(9,'������� ��� ������','������� � �������� �������� ���������� ������� ����� ������.',280,4,'2020-05-15', '2020-09-17','MAKEUP2MAKEUP'),
(10,'����� ������ƻ','������� � ��� ������������ ����������� � ���, ��� ��������� ������ � �����.',2840,6,'2020-06-13', '2020-09-17','Krygina'),
(11,'����� Bossy','������ ��������� ������ ����� Bossy? � ���� ������ �� ������� �������� ��������.',3782,5,'2020-06-14', '2020-09-17','����� �������'),
(12,'�������� ������� CONCRETE PLUM','��� ��������� ������������� ������-��������� ����',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(13,'�������� ������� CONCRETE PEACH','Peach � ������������� ����� ���������� �������. ',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(14,'�������� ������� CONCRETE SALMON','�� ������� Salmon ������� ������-���������.',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(15,'�������� ������� CONCRETE CIAN','Cian � ������, �� ��� ���� ����������� ����-������� �������,',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(16,'�������� ������� CONCRETE CHOCOLATE','Chocolate � ��� ������������� �������� ������� �����������',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(17,'�������� ������� CONCRETE WHITE','��� ������������� ������������� ������� � ������� ������ Concrete.',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(18,'�������� ������� CONCRETE BLACK','Black ����� ������������ ��� ��������������� ������������ �������',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(19,'�������� ������� CONCRETE MANDARIN','Concrete Mandarin ����� ����� ������-��������� �������',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(20,'�������� ������� CONCRETE HOT RED','Hot Red � ��� ������������ �������',1650,1,'2020-01-14', '2020-06-17','Krygina cosmetics'),
(21,'����� ������� Metallized Ivory',' Metallized Ivory � ������� ��������� �������',2150,1,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(22,'����� ������� Metallized Champagne','Metallized Champagne  � ������� ������� � ����������� ������� ��������',2150,1,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(23,'����� �� ������� � �������','������� �������� ������� �������� �������� ��� ������ � �������������� ����������',550,4,'2020-06-15', '2020-09-17','Krygina cosmetics'),
(24,'��������� ��� �������','C������������ ����� ��� ������� ����� ���� ������������ � �������� ���������������� ���������',220,4,'2020-06-15', '2020-09-17','Krygina cosmetics'),
(25,'�������������������� �����������','����������� � ��������� ��������� ������������',950,4,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(26,'�����-����������� ��� ���� NORDIC SKIN PEEL','������� ������ ������������ ���������� ����������� ����',4200,3,'2020-05-12', '2020-10-21','SKYN ICELAND'),
(27,'����������� ���� ��� ���� ANTIDOTE COOLING DAILY LOTION','˸���� ������� ���� ��� ����������',4300,3,'2020-05-12', '2020-10-21','SKYN ICELAND'),
(28,'���������� ����� ��� ���� FRESH START MASK','��� ���������� ����� ������� ����, �������� ���� ����,',3600,3,'2020-05-12', '2020-10-21','SKYN ICELAND'),
(29,'��������� ���� ��� ���� GLACIAL FACE WASH','������������� ���� ��� �������� ���� ����� �������.',2800,3,'2020-05-12', '2020-10-21','SKYN ICELAND'),
(30,'����������� ���� ��� ���� PURE CLOUD CREAM','˸����, ��� ������, ������� ����������� ���� �������� ���� ������',5200,3,'2020-05-12', '2020-10-21','SKYN ICELAND'),
(31,'���� ��� ���� ������ ���� Icelandic Relief Eye Cream','˸���� �� �������� ���� ��� ������� ����',4400,3,'2020-05-12', '2020-05-12','SKYN ICELAND'),
(32,'��������� ��� ���� ARCTIC ELIXIR','��������� � ��������� ���������� ������ ������ ��������� �������� ���������',4700,3,'2020-05-12', '2020-05-12','SKYN ICELAND'),
(33,'����������������� ���� ��� ����','. �������� � ��� ������� ����� � ��� ������������� � �������� ������ ��� ������',7980,3,'2020-05-12', '2020-05-12', 'ERBORIAN'),
(34,'�������������� ���� GINSENG ROYAL','����������� �������� � ������ ���� ��� ���������� � ������ ����.',7580,3,'2020-05-12', '2020-05-12','ERBORIAN'),
(35,'������ BB-�����','������ ��������� ������ ����� Bossy? � ���� ������ �� ������� �������� ��������.',3782,3,'2020-05-12', '2020-10-21','ERBORIAN'),
(36,'������ ��-�����','������ ��-�����: ����� ������ ��� ��������� ����������� ����',3150,3,'2020-05-12', '2020-10-21','ERBORIAN'),
(37,'�������������� ����� ��� ���� EAU GINSENG','����� �������� ��������� ���������� �������',2980,3,'2020-08-12', '2020-11-21','ERBORIAN'),
(38,'BB-����� ��� ���� MY PERFECT SKIN LOOK','������ � ���� �������� ����� ��� ����, ������������ � ���� ����������� ����',780,3,'2020-06-14', '2020-09-17','ERBORIAN'),
(39,'���������� ������ ��� ������� ��� BAMBOO','������ ���������� ������ ������ ����',2990,3,'2020-06-14', '2020-09-17','ERBORIAN'),
(40,'��������� ����-���������� ��� ���� EXFOLIATING FACIAL GEL','�� 100% ����������� ����-���������� ��������� ������ �������� ������',2700,3,'2020-06-14', '2020-09-17','PURITY HERBS'),
(41,'����-����� SEAWEED MASK ROSEMARY','����-����� ��� ������ � ����������� ����������� ����.',3800,3,'2020-06-14', '2020-09-17','PURITY HERBS'),
(42,'����� ��� ��� Scrub','Scrub � ������ �������������� �������� ��� ���',950,3,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(43,'����� ��� ��� HYDRO COOL FIRMING NECK GELS','���� ��� ��� ��������� ���� ��� ������������ ��������� ������������ ����������',4990,3,'2020-06-14', '2020-09-17','SKYN ICELAND'),
(44,'�������-������� ��� ��� � �������� ���-��������','����������� �������-������� ��� ��� � �������� ���-�������� ������� ���������',3782,3,'2020-06-14', '2020-09-17','ELEMIS'),
(45,'����������� ���� ��� ����� ���� HYDRABIO','Bioderma Hydrabio H2O ����������� ���������� ��� ������������ ����',1900,3,'2020-06-14', '2020-09-17','Bioderma'),
(46,'��������� ���� ��� ���������� � �����','�������� ������, �� ���������� ������� ����������� � ������ ������,',1980,3,'2020-06-14', '2020-09-17','Bioderma'),
(47,'��������� ������� ��� ���� HYDRABIO','���������� �������� �������� � ���� �������� �������������� ������� � �������� ����',1500,3,'2020-06-14', '2020-09-17','Bioderma'),
(48,'����������� ���� ��� �������������� ����','�������� �20 ����������� � ������ ������� ���� ���� � ������ ����',1870,3,'2020-06-14', '2020-09-17','Bioderma'),
(49,'����������� ���� ��� ������ ����','��������� �������� ��� ������ � ��������������� ����, ���� � ����',1630,3,'2020-06-14', '2020-09-17','Bioderma'),
(50,'����������� ���� MICELLAR CLEANSING WATER','��������� ��� ���� �� ����� � �������������������� ��������� � ����������� ����������� �������',2000,3,'2020-06-14', '2020-09-17','SKYN ICELAND'),
(51,'�����-���������� ��� ����� � ���� ������','���������� ����� ����������, ��������������� �����',700,2,'2020-06-14', '2020-09-17','Davines'),
(52,'������������ ������������������� �����','�������� ����� 3 ������ ������ ������� ��� ��������-����������, �������� � ������',5200,2,'2020-06-14', '2020-09-17','Davines'),
(53,'����������� ��� ����������� � ���������� ����� �������Ļ','���������� ����������� Davines, ����������� �����-���������� � ������ ����',2500,2,'2020-06-14', '2020-09-17','Davines'),
(54,'����������� ��� ����������� � ���������� ����� �������ɻ','���������� ����������� Davines, ����������� ���� ������-����������',2500,2,'2020-06-14', '2020-09-17','Davines'),
(55,'����������� ��� ����������� � ���������� ����� �����ʻ','������� ����������� ���� ������� ������- � �����-���������� ��������.',2500,2,'2020-06-14', '2020-09-17','Davines'),
(56,'����������� ��� ����������� � ���������� ����� ������ɻ','���������� ����������� Davines, ����������� ������ ���� ',2500,2,'2020-06-14', '2020-09-17','Davines'),
(57,'����������������� ����� ��� �����','�������� ������������ ������� ������, ������� � ��',2780,2,'2020-06-14', '2020-09-17','Davines'),
(58,'����������� ��� ����������� � ���������� ����� �������ɻ','���������� ����������� Davines, ����������� ����������� ��� ����������� ��������',2500,2,'2020-06-14', '2020-09-17','Davines'),
(59,'����� ��� �������� ������ ������� THE SPOTLIGHT CIRCLE','����� ������� ������� �������������� ����������� �����',700,2,'2020-06-14', '2020-09-17','Davines'),
(60,'�����-������ ��� ����� � ���� ������ THE PURITY CIRCLE','��������� ����� ��������� ������� ��������, ������� ������������ � �������',700,2,'2020-06-14', '2020-09-17','Davines'),
(61,'����� ������� CHERRY','����� ������� � �������� �����',570,2,'2020-06-14', '2020-09-17','Batiste'),
(62,'����� ��� ������ ����� XXL VOLUME','Batiste Volume XXL ������ ������ ����� �������',700,2,'2020-06-14', '2020-09-17','Batiste'),
(63,'����� ������� TROPICAL','����� ������� 200 �� � �������� ������� �������� � �������',570,2,'2020-06-14', '2020-09-17','Batiste'),
(64,'����� ������� FRESH','����� ������� � �������� �������� ������ ������� � �������� ������',570,2,'2020-06-14', '2020-09-17','Batiste'),
(65,'����� ������� ORIGINAL 50 ��','����� ������� Batiste 50 �� ��������� �������� ������',400,2,'2020-06-14', '2020-09-17','Batiste'),
(66,'����������� ������ ����� ������ƻ','����� �������� ������ � ������� ios.ePub',1699,6,'2020-01-12', '2020-09-17','-'),
(67,'��������� ������� N-16 �BE YOURSELF�','���� ���� ���� ������������ ������ �� ���� ��� �����������, �� ��� ������ �������� ��� ��������',890,1,'2020-03-09', '2020-09-17','Makeup2Makeup'),
(68,'��������� ������� N-18 �FUZZ�','������ ������ ������ �������� �������� ��� ������ ������� ������������� �������. ',890,1,'2020-03-09', '2020-09-17','Makeup2Makeup'),
(69,'��������� ������� N-14 �FLIRTY�','���� �� �������� ������� ������� ������ �������� ������������ ������',890,1,'2020-03-09', '2020-09-17','Makeup2Makeup'),
(70,'��������� ������� L-22 �FLUFFY�','����� �������� ������� �� ���� �������������� ������� Makeup2makeup. ',890,1,'2020-03-09', '2020-09-17','Makeup2Makeup'),
(71,'��������� ������� S-10 �DEMENT�','���� �� ����� ������������� ������� ������',890,1,'2020-03-09', '2020-09-17','Makeup2Makeup'),
(72,'����� ��� �����','�������� ��� ������������ ��������� ���������� � ����������� �����.',2950,4,'2020-06-14', '2020-09-17','Clarins'),
(73,'����� ������� 4 MIRACLE COMPLEXION SPONGES',' ����� �������� � ����� ����� �� ��������� ������� ������.',2304,4,'2020-06-14', '2020-09-17','Ecotools'),
(74,'Ecotools Full Powder Makeup Brush','����� ��� �����',670,4,'2020-06-14', '2020-09-17','Ecotools'),
(75,'Ecotools Precision Blush Makeup Brush','������ ��������� ������ ����� Bossy? � ���� ������ �� ������� �������� ��������.',3782,4,'2020-06-14', '2020-09-17','Ecotools'),
(76,'Ecotools Brow Shaping Duo Brush Set','����� ��� ������',460,4,'2020-06-14', '2020-09-17','Ecotools'),
(77,'Ecotools Foundation Makeup Brush','����� ��� ��������� ������',470,4,'2020-06-14', '2020-09-17','Ecotools'),
(78,'Real Techniques Ultimate Concealer Duo Brush Set','����� ��� ��������� ������',615,4,'2020-06-14', '2020-09-17','Real Techniques'),
(79,'Real Techniques Mini Expert Face Makeup Brush','����� � ���������� ����������� ������ ������������ ����������� ��������� �������� �����',1350,4,'2020-06-14', '2020-09-17','Real Techniques'),
(80,'Real Techniques Brush Crush 3: 003 Powder Makeup Brush','����� ��� �����',1305,4,'2020-06-14', '2020-09-17','Real Techniques'),
(81,'Real Techniques Brush Crush 3: 005 Shadow Makeup Brush','����� ��� �����',1000,4,'2020-06-14', '2020-09-17','Real Techniques'),
(82,'Real Techniques Sculpting Makeup Brush','����� ��� ��������������',1010,4,'2020-06-14', '2020-09-17','Real Techniques'),
(83,'����� NUDE BASIC','Ҹ���� ���������� ���� ����� ����������� � ��������� ��� �������',4394,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(84,'����� TIRAMISU','����������� ������� ����� � ����� ����������',2961,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(85,'����� STARTER KIT PRO','�� ������ � ���� ������? ����� � Starter Kit Pro!',11676,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(86,'����� ARTIST','���������� ��������� � ����� ����������',5775,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(87,'����� SEXY BASIC','������ ���������� �� �������� (� ����� ����� ���� ���������)!',4394,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(88,'����� PLUM + LILAC','��� ���� ������� ���� ��� �����! �� ��������� ������� Concrete � Sparkles, ������� �������� ��������� ���� �����',1946,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(89,'����� FRESH BASIC','������ ������ ������ ������ � ������',4394,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(90,'����� ARTIST RAINBOW','����� ������ ������� ������� ����',8085,5,'2020-06-14', '2020-09-17','Krygina cosmetics'),
(91,'����� DIVA','���� ���� � ������ ������� � �������� ����� �� ��� �������',3969,5,'2020-06-14', '2020-09-17','����� �������'),
(92,'�������������� ���������� BB-����','������� ������� ����� � ������ ���������� ��������',3500,3,'2020-06-14', '2020-09-17','Coola'),
(93,'����������� �������������� ����','���� � ���������� ������� ��� ������������� �� ����� ���������� �� ������',3500,3,'2020-06-14', '2020-09-17','Coola'),
(94,'���������� ����������� ����','���� � ������ ������ ��������� ��������������� ����������� ���� ���������� ����',3880,3,'2020-06-14', '2020-09-17','Coola'),
(95,'�������������� ����� ��� ����','����� ������� ������� ���� �� ��������� ����� UVA/UVB-�����',2900,3,'2020-06-14', '2020-09-17','Coola'),
(96,'����������������� ������ ��� ����','���������� ����������� � ������� ������������� ������',3800,3,'2020-06-14', '2020-09-17','Coola'),
(97,'���� ��� ������ SOS PRIMER','�� ������� ������ ��� ���������� ����. ',2680,1,'2020-06-14', '2020-09-17','CLARINS'),
(98,'����������� ����������� ����� SKIN ILLUSION','����� ����������� ��� � ��������� ��� ������ �������������� ����. ',2850,1,'2020-06-14', '2020-09-17','CLARINS'),
(99,'������������� ���� ��� ������ LISSE MINUTE','������ ���������� �������� ���� ����� ������������� �� ���� ���� � ����������� �����������.',3150,1,'2020-06-14', '2020-09-17','CLARINS'),
(100,'BB-�������� NUDE','�������������������� ��������-���� ���������, ����������� ���.',2690,1,'2020-06-14', '2020-09-17','CLARINS');
INSERT INTO products VALUES 
(101,'����� ������� Metallized Quicksilver','������� ���� Metallized � ���� �������� ����� � ������������������ ������',2150,1,'2020-07-20', '2020-07-20','Krygina cosmetics');




-- ------------------------------------------------------

-- --------	STOREHOUSES---------------------------
INSERT INTO storehouses VALUES
(1, 1, 5, 3, '2020-08-10 03:23:35', '2020-09-08 04:06:29'),
(2, 2, 1, 6, '2020-02-19 09:51:26', '2020-09-27 21:55:04'),
(3, 3, 5, 5, '2020-03-12 16:31:03', '2020-11-17 21:40:56'),
(4, 4, 6, 2, '2020-11-23 07:04:55', '2020-10-21 01:22:55'),
(5, 5, 9, 1, '2020-09-30 17:26:00', '2020-04-29 14:56:05'),
(6, 6, 10, 3, '2020-05-19 12:08:18', '2020-02-08 01:57:50'),
(7, 7, 8, 2, '2020-10-23 02:03:36', '2020-06-03 13:17:48'),
(8, 8, 4, 6, '2020-02-09 06:59:27', '2020-05-11 19:27:26'),
(9, 9, 3, 3, '2020-04-25 03:08:17', '2020-02-05 04:00:22'),
(10, 10, 7, 4, '2020-02-18 12:23:14', '2020-07-23 09:51:11'),
(11, 11, 1, 10, '2020-02-22 20:12:10', '2020-12-12 03:25:40'),
(12, 12, 3, 3, '2020-06-01 16:36:16', '2020-04-06 12:48:23'),
(13, 13, 5, 8, '2020-10-07 22:18:35', '2020-03-31 05:34:07'),
(14, 14, 4, 6, '2020-12-10 09:21:18', '2020-04-03 13:00:38'),
(15, 15, 3, 7, '2020-11-17 18:52:37', '2020-08-25 14:08:01'),
(16, 16, 3, 1, '2020-02-03 06:58:52', '2020-02-01 07:32:03'),
(17, 17, 9, 9, '2020-11-28 23:08:01', '2020-06-18 15:03:12'),
(18, 18, 6, 7, '2020-06-02 08:55:42', '2020-03-27 11:46:24'),
(19, 19, 10, 10, '2020-06-27 15:40:35', '2020-04-19 03:40:39'),
(20, 20, 3, 5, '2020-09-09 19:35:42', '2020-12-09 18:08:30');
-- ------------------------------------------------------

-- --------	SETS---------------------------
INSERT INTO sets VALUES
(1, 'Ergocalciferol', 0.08, 1, 1, '2020-12-28 17:39:32', '2020-05-05 10:32:20'),
(2, 'Phenazopyridine Hydrochloride', 0.01, 3, 1, '2020-01-18 16:57:26', '2020-06-27 14:20:13'),
(3, 'Stemphylium sarciniforms', 0.08, 9, 1, '2020-08-19 05:11:43', '2020-03-17 18:51:16'),
(4, 'Hand Sanitizer', 0.05, 7, 1, '2020-10-24 14:38:28', '2020-07-12 03:25:52'),
(5, 'safeHands Squirts', 0.02, 3, 1, '2020-01-29 23:16:31', '2020-04-11 17:36:45'),
(6, 'Glycolic Day Cream SPF 30', 0.06, 5, 1, '2020-10-15 18:23:43', '2020-08-09 10:00:31'),
(7, 'Atenolol', 0.04, 8, 1, '2020-08-03 03:40:41', '2020-09-05 23:04:06'),
(8, 'Perfect Calming', 0.02, 10, 1, '2020-11-29 04:02:51', '2020-11-25 10:22:55'),
(9, 'Gelato Neutral PH', 0.04, 7, 1, '2020-04-19 17:32:10', '2020-01-06 08:04:59'),
(10, 'Oxytocin', 0.05, 2, 1, '2020-05-13 14:39:23', '2020-12-08 21:42:09'),
(11, 'Ibuprofen', 0.02, 3, 1, '2020-02-08 05:48:29', '2020-12-15 01:05:04'),
(12, 'Allergy', 0.016, 8, 1, '2020-11-16 06:41:45', '2020-05-06 22:09:30'),
(13, 'Sucralfate', 0.03, 1, 1, '2020-03-27 09:50:44', '2020-11-03 01:32:35'),
(14, 'Quasense', 0.015, 10, 1, '2020-04-15 20:57:58', '2020-10-18 07:06:44'),
(15, 'Adderall', 0.08, 3, 1, '2020-06-03 20:47:46', '2020-11-25 23:21:33'),
(16, 'ORENCIA', 0.07, 3, 1, '2020-06-06 01:21:30', '2020-12-05 04:46:58'),
(17, 'Azithromycin', 0.042, 7, 1, '2020-01-31 02:21:22', '2020-11-24 11:42:31'),
(18, 'LOESTRIN 1.5/30', 0.04, 3, 1, '2020-04-28 12:27:48', '2020-12-25 23:52:16'),
(19, 'Leader Chest Congestion Relief', 0.03, 3, 1, '2020-04-21 12:22:01', '2020-03-25 05:28:34'),
(20, 'Kleenex Clear Antibacterial Skin Cleanser', 0.17, 2, 1, '2020-05-13 10:44:48', '2020-10-13 02:49:32');
-- ------------------------------------------------------

-- --------	ORDER_PRODUCTS---------------------------
INSERT INTO order_products values
(1, 39, 7, 8, 1.0, 4, '2020-03-28 20:29:16', '2020-07-01 21:25:34'),
(2, 16, 10, 4, 1.0, 2, '2020-06-20 13:20:55', '2020-04-08 17:33:21'),
(3, 36, 1, 6, 1.0, 9, '2020-03-06 17:54:54', '2020-06-02 11:10:26'),
(4, 8, 10, 1, 1.0, 10, '2020-12-25 12:50:22', '2020-02-05 05:57:19'),
(5, 4, 1, 1, 1.0, 6, '2020-05-24 15:31:15', '2020-08-22 18:26:36'),
(6, 38, 9, 7, 1.0, 7, '2020-08-09 15:06:47', '2020-02-24 16:26:57'),
(7, 4, 10, 5, 1.0, 9, '2020-07-15 14:00:06', '2020-04-20 19:57:25'),
(8, 2, 4, 3, 1.0, 4, '2020-04-06 13:49:02', '2020-08-19 06:22:49'),
(9, 21, 9, 1, 1.0, 2, '2020-10-02 02:32:25', '2020-06-04 22:36:34'),
(10, 10, 5, 10, 1.0, 4, '2020-07-13 06:14:02', '2020-08-22 17:20:59'),
(11, 8, 2, 10, 1.0, 5, '2020-05-22 07:37:50', '2020-06-20 23:32:50'),
(12, 35, 3, 6, 1.0, 7, '2020-10-23 20:36:20', '2020-08-28 11:22:16'),
(13, 32, 4, 8, 1.0, 8, '2020-02-25 04:55:56', '2020-10-06 21:44:32'),
(14, 16, 1, 7, 1.0, 2, '2020-01-16 09:01:22', '2020-06-30 04:46:19'),
(15, 3, 7, 5, 1.0, 10, '2020-01-04 10:11:08', '2020-12-08 03:26:48'),
(16, 18, 9, 9, 1.0, 10, '2020-11-24 20:55:57', '2020-12-16 02:06:01'),
(17, 8, 7, 9, 1.0, 6, '2020-05-09 05:33:53', '2020-12-12 21:15:15'),
(18, 37, 1, 5, 1.0, 8, '2020-09-11 00:51:58', '2020-10-25 10:13:30'),
(19, 6, 10, 1, 1.0, 1, '2020-08-10 02:24:59', '2020-12-16 06:32:25'),
(20, 5, 8, 3, 1.0, 7, '2020-01-12 15:13:48', '2020-06-10 10:25:56');
-- ------------------------------------------------------

