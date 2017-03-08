--
--	SCAU Bus GO -- 华农校巴查询程序
--
--	@note 校巴线路与站点的关系
--
--	@author CRH380A-2722 <609657831@qq.com>
--	@license MIT
--	@copyright 2016-2017 CRH380A-2722
--

INSERT INTO bus_relationship (line_id, stop_id, stop_sort) VALUES
(1, 1, 1), (1, 2, 2), (1, 3, 3), (1, 4, 4), (1, 5, 5), (1, 6, 6), (1, 7, 7), (1, 8, 8), (1, 9, 9), (1, 10, 10), (1, 11, 11), (1, 12, 12),
(2, 12, 1), (2, 11, 2), (2, 10, 3), (2, 9, 4), (2, 8, 5), (2, 7, 6), (2, 6, 7), (2, 5, 8), (2, 4, 9), (2, 3, 10), (2, 2, 11), (2, 1, 12),
(3, 15, 1), (3, 7, 2), (3, 16, 3), (3, 12, 4),
(4, 12, 1), (4, 13, 2), (4, 14, 3), (4, 5, 4), (4, 15, 5),
(5, 15, 1), (5, 6, 2), (5, 17, 3), (5, 14, 4), (5, 13, 5), (5, 18, 6), (5, 19, 7), (5, 20, 8),
(6, 20, 1), (6, 19, 2), (6, 18, 3), (6, 13, 4), (6, 14, 5), (6, 17, 6), (6, 6, 7), (6, 15, 8);
