INSERT INTO `gen_table` VALUES (1, 'store_goods_cate', '商城商品分类', null ,null, 'StoreGoodsCate', 'tree', 'com.ruoyi.shop', 'shop', 'cate', '商城商品分类', 'hupeng', '{\"treeName\":\"cate_title\",\"treeParentCode\":\"pid\",\"treeCode\":\"id\"}', 'admin', '2019-08-22 09:59:25', '', '2019-08-22 11:04:52', '');
INSERT INTO `gen_table` VALUES (2, 'store_goods_brand', '产品品牌', null ,null, 'StoreGoodsBrand', 'crud', 'com.ruoyi.shop', 'shop', 'brand', '产品品牌', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-23 18:21:24', '', '2019-08-23 18:24:11', '');
INSERT INTO `gen_table` VALUES (3, 'store_goods_type', '商品类型(商品模型)表', null ,null, 'StoreGoodsType', 'crud', 'com.ruoyi.shop', 'shop', 'type', '商品类型(商品模型)', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-24 14:16:00', '', '2019-08-24 14:16:23', '');
INSERT INTO `gen_table` VALUES (4, 'store_goods_attribute', '商品的属性表(独立)', null ,null, 'StoreGoodsAttribute', 'crud', 'com.ruoyi.shop', 'shop', 'attribute', '商品的属性(独立)', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-24 14:44:41', '', '2019-08-24 14:47:04', '');
INSERT INTO `gen_table` VALUES (5, 'store_spec', '商品规格表(独立)', null ,null, 'StoreSpec', 'crud', 'com.ruoyi.shop', 'shop', 'spec', '商品规格(独立)', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-25 09:40:12', '', '2019-08-25 09:45:36', '');
INSERT INTO `gen_table` VALUES (6, 'store_spec_goods_price', '商品规格关联价格表', null ,null, 'StoreSpecGoodsPrice', 'crud', 'com.ruoyi.shop', 'shop', 'price', '商品规格关联价格', 'hupeng', NULL, 'admin', '2019-08-25 09:40:12', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'store_spec_item', '规格项', null ,null, 'StoreSpecItem', 'crud', 'com.ruoyi.shop', 'shop', 'item', '规格项', 'hupeng', NULL, 'admin', '2019-08-25 09:40:12', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (8, 'store_goods', '商品主表', null ,null, 'StoreGoods', 'crud', 'com.ruoyi.shop', 'shop', 'goods', '商品主', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-25 14:00:14', '', '2019-08-25 14:14:00', '');
INSERT INTO `gen_table` VALUES (9, 'store_goods_attr', '商品关联的属性表(与商品相关)', null ,null, 'StoreGoodsAttr', 'crud', 'com.ruoyi.shop', 'shop', 'attr', '商品关联的属性(与商品相关)', 'hupeng', NULL, 'admin', '2019-08-26 13:38:54', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'store_coupon', '优惠券主表', null ,null, 'StoreCoupon', 'crud', 'com.ruoyi.shop', 'shop', 'coupon', '优惠券主', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-29 19:16:19', '', '2019-08-29 19:22:06', '');
INSERT INTO `gen_table` VALUES (11, 'store_coupon_list', '优惠券记录表',null ,null,  'StoreCouponList', 'crud', 'com.ruoyi.shop', 'shop', 'list', '优惠券记录', 'hupeng', NULL, 'admin', '2019-08-29 19:16:19', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (12, 'store_order', '订单主表', null ,null, 'StoreOrder', 'crud', 'com.ruoyi.shop', 'shop', 'order', '订单主', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-29 19:45:09', '', '2019-08-29 19:53:53', '');
INSERT INTO `gen_table` VALUES (13, 'store_order_goods', '订单商品表与订单主表关联', null ,null, 'StoreOrderGoods', 'crud', 'com.ruoyi.shop', 'shop', 'goods', '订单商品与订单主关联', 'hupeng', NULL, 'admin', '2019-08-29 19:45:10', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'store_order_goods_remark', '订单商品备注表', null ,null, 'StoreOrderGoodsRemark', 'crud', 'com.ruoyi.shop', 'shop', 'remark', '订单商品备注', 'hupeng', NULL, 'admin', '2019-08-29 19:45:10', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 'store_member', '商城会员信息',null ,null,  'StoreMember', 'crud', 'com.ruoyi.shop', 'shop', 'member', '商城会员信息', 'hupeng', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-08-30 13:40:31', '', '2019-08-30 13:44:56', '');


DROP TABLE IF EXISTS `store_ads`;
CREATE TABLE `store_ads`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频url',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图片地址',
  `type` tinyint(200) NULL DEFAULT 1 COMMENT '类型1-视频 2-图片',
  `sort` smallint(4) UNSIGNED NULL DEFAULT 0 COMMENT '序号',
  `create_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页轮播广告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_ads
-- ----------------------------
INSERT INTO `store_ads` VALUES (9, 'https://admin.mijia321.com/static/upload/e38690a86e1ef621/313ee2689043da13.mp4', 'http://www.testxcx.com/static/upload/27b30e42b57aceb8/fea8d48a46cd2470.jpg', 1, 0, 0);
INSERT INTO `store_ads` VALUES (11, '', 'https://admin.mijia321.com/static/upload/145bb741db89d1a0/b7fbb8665bd0b890.jpg', 2, 0, 1536502777);
INSERT INTO `store_ads` VALUES (12, '', 'https://admin.mijia321.com/static/upload/279ee243f5b38111/ce8c807ed75ffe59.jpg', 2, 0, 1536503300);

-- ----------------------------
-- Table structure for store_cart
-- ----------------------------
DROP TABLE IF EXISTS `store_cart`;
CREATE TABLE `store_cart`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `session_id` char(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'session',
  `goods_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `goods_sn` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品货号',
  `goods_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goods_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `market_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '零售价',
  `goods_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '本店价(进货价)',
  `member_goods_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '会员折扣价',
  `goods_num` smallint(5) UNSIGNED NULL DEFAULT 0 COMMENT '购买数量',
  `spec_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格key 对应store_spec_goods_price 表',
  `spec_key_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格组合名称',
  `bar_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品条码',
  `selected` tinyint(1) NULL DEFAULT 1 COMMENT '购物车选中状态',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '加入购物车的时间',
  `prom_type` tinyint(1) NULL DEFAULT 0 COMMENT '0 普通订单,1 限时抢购, 2 团购 , 3 促销优惠',
  `prom_id` int(11) NULL DEFAULT 0 COMMENT '活动id',
  `sku` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'sku',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `session_id`(`session_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `spec_key`(`spec_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_cart
-- ----------------------------
INSERT INTO `store_cart` VALUES (113, 3, '', 4, '222', '222', '222', 0.00, 0.00, 0.00, 0, '', '', '', 1, NULL, 0, 0, '');

-- ----------------------------
-- Table structure for store_code
-- ----------------------------
DROP TABLE IF EXISTS `store_code`;
CREATE TABLE `store_code`  (
  `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `code` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '验证码',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册类型 0：注册  1:密码找回 ',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`code_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9949 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手机验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_code
-- ----------------------------
INSERT INTO `store_code` VALUES (9933, '15136175246', '250175', 1, 1532235215);
INSERT INTO `store_code` VALUES (9934, '15136175246', '473170', 1, 1532237173);
INSERT INTO `store_code` VALUES (9935, '15136175246', '630991', 1, 1532238675);
INSERT INTO `store_code` VALUES (9936, '15601064107', '481368', 1, 1536414746);
INSERT INTO `store_code` VALUES (9937, '15601064105', '707445', 1, 1536414778);
INSERT INTO `store_code` VALUES (9938, '13131313131', '641772', 1, 1536415119);
INSERT INTO `store_code` VALUES (9939, '15612121212', '556793', 1, 1536415160);
INSERT INTO `store_code` VALUES (9940, '13131312020', '671335', 1, 1536415244);
INSERT INTO `store_code` VALUES (9941, '15601064107', '886733', 1, 1536415783);
INSERT INTO `store_code` VALUES (9942, '17610570135', '835969', 1, 1536416040);
INSERT INTO `store_code` VALUES (9943, '17610570135', '232940', 1, 1536416707);
INSERT INTO `store_code` VALUES (9944, '15601064107', '375484', 1, 1536416734);
INSERT INTO `store_code` VALUES (9945, '18905970273', '506991', 1, 1537176135);
INSERT INTO `store_code` VALUES (9946, '15136175246', '639663', 1, 1537271645);
INSERT INTO `store_code` VALUES (9947, '18905970273', '861394', 1, 1537339855);
INSERT INTO `store_code` VALUES (9948, '17610570135', '761656', 1, 1538032004);

-- ----------------------------
-- Table structure for store_comment
-- ----------------------------
DROP TABLE IF EXISTS `store_comment`;
CREATE TABLE `store_comment`  (
  `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `goods_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'email邮箱',
  `username` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `add_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'ip地址',
  `is_show` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否显示',
  `parent_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '父id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论用户',
  `img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '晒单图片',
  `order_id` mediumint(8) NULL DEFAULT 0 COMMENT '订单id',
  `deliver_rank` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '物流评价等级',
  `goods_rank` tinyint(1) NULL DEFAULT 0 COMMENT '商品评价等级',
  `service_rank` tinyint(1) NULL DEFAULT 0 COMMENT '商家服务态度评价等级',
  `zan_num` int(10) NULL DEFAULT 0 COMMENT '被赞数',
  `zan_userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '点赞用户id',
  `is_anonymous` tinyint(1) NULL DEFAULT 0 COMMENT '是否匿名评价:0不是，1是',
  `rec_id` int(11) NULL DEFAULT NULL COMMENT '订单商品表ID',
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `id_value`(`goods_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_comment
-- ----------------------------
INSERT INTO `store_comment` VALUES (1, 5, '', '胡鹏', 'haoping', 1533046281, '', 0, 0, 1, NULL, 1639, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (2, 5, '', '高晓松', '评价内容', 1539076970, '', 0, 0, 2, NULL, 4, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (3, 6, '', '高晓松', '评价内容', 1539076970, '', 0, 0, 2, NULL, 4, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (4, 4, '', '高晓松', '2222', 1539201129, '', 0, 0, 2, NULL, 1763, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (5, 5, '', '高晓松', '22222', 1539201363, '', 0, 0, 2, NULL, 1761, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (6, 5, '', '高晓松', '222', 1539201390, '', 0, 0, 2, NULL, 1759, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (7, 4, '', '林建宾', '', 1539226890, '', 0, 0, 7, NULL, 1764, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (8, 5, '', '林建宾', '啊啊啊啊啊', 1539240054, '', 0, 0, 7, NULL, 1700, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (9, 4, '', '林建宾', '肩胛骨寂寞', 1539240191, '', 0, 0, 7, NULL, 1695, 0, 0, 0, 0, '', 0, NULL);
INSERT INTO `store_comment` VALUES (10, 5, '', '林建宾', '', 1539243601, '', 0, 0, 7, NULL, 1849, 0, 0, 0, 0, '', 0, NULL);

-- ----------------------------
-- Table structure for store_coupon
-- ----------------------------
DROP TABLE IF EXISTS `store_coupon`;
CREATE TABLE `store_coupon`  (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券名字',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '发放类型 0下单赠送1 指定发放 2 免费领取 3线下发放',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '优惠券金额',
  `condition` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '使用条件，满多少金额',
  `createnum` int(11) NULL DEFAULT 0 COMMENT '发放数量',
  `send_num` int(11) NULL DEFAULT 0 COMMENT '已领取数量',
  `use_num` int(11) NULL DEFAULT 0 COMMENT '已使用数量',
  `send_start_time` int(11) NULL DEFAULT NULL COMMENT '发放开始时间',
  `send_end_time` int(11) NULL DEFAULT NULL COMMENT '发放结束时间',
  `use_start_time` datetime(0) NULL DEFAULT NULL COMMENT '使用开始时间',
  `use_end_time` datetime(0) NULL DEFAULT NULL COMMENT '使用结束时间',
  `add_time` int(11) NULL DEFAULT NULL COMMENT '添加时间',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态：1有效,2无效',
  `use_type` tinyint(1) NULL DEFAULT 0 COMMENT '使用范围：0全店通用1指定商品可用2指定分类商品可用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `use_end_time`(`use_end_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_coupon
-- ----------------------------
INSERT INTO `store_coupon` VALUES (21, '新客户优惠券', 2, 50.00, 300.00, 100, 1, 0, NULL, NULL, '2019-08-15 10:35:09', '2019-09-27 10:35:14', 1509008166, 1, 0);
INSERT INTO `store_coupon` VALUES (22, '优惠券01', 2, 20.00, 200.00, 1000, 0, 4, NULL, NULL, '2019-08-08 10:35:17', '2019-09-10 10:35:21', 1533040174, NULL, 0);
INSERT INTO `store_coupon` VALUES (23, '五一促销1', 2, 10.00, 100.00, 1000, 0, 0, NULL, NULL, '2019-08-21 00:00:00', '2019-09-30 00:00:00', NULL, NULL, 0);

-- ----------------------------
-- Table structure for store_coupon_list
-- ----------------------------
DROP TABLE IF EXISTS `store_coupon_list`;
CREATE TABLE `store_coupon_list`  (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `cid` int(8) NOT NULL DEFAULT 0 COMMENT '优惠券 对应coupon表id',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '发放类型 1 按订单发放 2 注册 3 邀请 4 按用户发放',
  `uid` int(8) NOT NULL DEFAULT 0 COMMENT '用户id',
  `order_id` int(8) NOT NULL DEFAULT 0 COMMENT '订单id',
  `get_order_id` int(11) NULL DEFAULT 0 COMMENT '优惠券来自订单ID',
  `use_time` int(11) NOT NULL DEFAULT 0 COMMENT '使用时间',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '优惠券兑换码',
  `send_time` int(11) NOT NULL DEFAULT 0 COMMENT '发放时间',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '0未使用1已使用2已过期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `code`(`code`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_coupon_list
-- ----------------------------
INSERT INTO `store_coupon_list` VALUES (193, 21, 2, 1, 0, 0, 0, '', 1532056369, 0);
INSERT INTO `store_coupon_list` VALUES (194, 22, 4, 7, 0, 0, 1539050142, '', 1537436694, 0);
INSERT INTO `store_coupon_list` VALUES (195, 22, 4, 3, 0, 0, 1539237126, '', 1537436694, 0);
INSERT INTO `store_coupon_list` VALUES (196, 22, 4, 1, 0, 0, 0, '', 1537436694, 0);
INSERT INTO `store_coupon_list` VALUES (197, 22, 4, 2, 0, 0, 1539021653, '', 1538037967, 0);
INSERT INTO `store_coupon_list` VALUES (198, 21, 4, 2, 0, 0, 0, '', 1538037976, 0);
INSERT INTO `store_coupon_list` VALUES (199, 21, 4, 3, 0, 0, 1568620478, '', 1538038018, 1);
INSERT INTO `store_coupon_list` VALUES (200, 21, 4, 7, 0, 0, 0, '', 1539249927, 0);

-- ----------------------------
-- Table structure for store_express
-- ----------------------------
DROP TABLE IF EXISTS `store_express`;
CREATE TABLE `store_express`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `express_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '快递公司名称',
  `express_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '快递公司代码',
  `express_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '快递公司描述',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0.无效,1.有效)',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '排序',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城快递配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_express
-- ----------------------------
INSERT INTO `store_express` VALUES (5, 'AAE全球专递', 'aae', '顺丰快递公司', 0, 0, 0, '2017-09-12 11:53:40');
INSERT INTO `store_express` VALUES (6, '安捷快递', 'anjie', '', 0, 0, 0, '2017-09-13 15:27:26');
INSERT INTO `store_express` VALUES (7, '安信达快递', 'anxindakuaixi', NULL, 0, 0, 0, '2017-09-13 16:05:19');
INSERT INTO `store_express` VALUES (8, '彪记快递', 'biaojikuaidi', NULL, 0, 0, 0, '2017-09-13 16:05:26');
INSERT INTO `store_express` VALUES (9, 'BHT', 'bht', '', 0, 0, 0, '2017-09-13 16:05:37');
INSERT INTO `store_express` VALUES (10, '百福东方国际物流', 'baifudongfang', NULL, 0, 0, 0, '2017-09-13 16:05:41');
INSERT INTO `store_express` VALUES (11, '中国东方（COE）', 'coe', NULL, 0, 0, 0, '2017-09-13 16:05:48');
INSERT INTO `store_express` VALUES (12, '长宇物流', 'changyuwuliu', NULL, 0, 0, 0, '2017-09-13 16:05:58');
INSERT INTO `store_express` VALUES (13, '大田物流', 'datianwuliu', NULL, 0, 0, 0, '2017-09-13 16:06:06');
INSERT INTO `store_express` VALUES (14, '德邦物流', 'debangwuliu', NULL, 1, 1, 0, '2017-09-13 16:06:14');
INSERT INTO `store_express` VALUES (15, 'DHL', 'dhl', NULL, 0, 0, 0, '2017-09-13 16:06:24');
INSERT INTO `store_express` VALUES (16, 'DPEX', 'dpex', NULL, 0, 0, 0, '2017-09-13 16:06:29');
INSERT INTO `store_express` VALUES (17, 'd速快递', 'dsukuaidi', NULL, 0, 0, 0, '2017-09-13 16:06:34');
INSERT INTO `store_express` VALUES (18, '递四方', 'disifang', NULL, 0, 0, 0, '2017-09-13 16:06:40');
INSERT INTO `store_express` VALUES (19, 'EMS快递', 'ems', '', 1, 0, 0, '2017-09-13 16:06:47');
INSERT INTO `store_express` VALUES (20, 'FEDEX（国外）', 'fedex', NULL, 0, 0, 0, '2017-09-13 16:06:56');
INSERT INTO `store_express` VALUES (21, '飞康达物流', 'feikangda', NULL, 0, 0, 0, '2017-09-13 16:07:03');
INSERT INTO `store_express` VALUES (22, '凤凰快递', 'fenghuangkuaidi', NULL, 0, 0, 0, '2017-09-13 16:07:10');
INSERT INTO `store_express` VALUES (23, '飞快达', 'feikuaida', NULL, 0, 0, 0, '2017-09-13 16:07:16');
INSERT INTO `store_express` VALUES (24, '国通快递', 'guotongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:07:27');
INSERT INTO `store_express` VALUES (25, '港中能达物流', 'ganzhongnengda', NULL, 0, 0, 0, '2017-09-13 16:07:33');
INSERT INTO `store_express` VALUES (26, '广东邮政物流', 'guangdongyouzhengwuliu', NULL, 0, 0, 0, '2017-09-13 16:08:22');
INSERT INTO `store_express` VALUES (27, '共速达', 'gongsuda', NULL, 0, 0, 0, '2017-09-13 16:08:48');
INSERT INTO `store_express` VALUES (28, '汇通快运', 'huitongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:08:56');
INSERT INTO `store_express` VALUES (29, '恒路物流', 'hengluwuliu', NULL, 0, 0, 0, '2017-09-13 16:09:02');
INSERT INTO `store_express` VALUES (30, '华夏龙物流', 'huaxialongwuliu', NULL, 0, 0, 0, '2017-09-13 16:09:12');
INSERT INTO `store_express` VALUES (31, '海红', 'haihongwangsong', NULL, 0, 0, 0, '2017-09-13 16:09:20');
INSERT INTO `store_express` VALUES (32, '海外环球', 'haiwaihuanqiu', NULL, 0, 0, 0, '2017-09-13 16:09:27');
INSERT INTO `store_express` VALUES (33, '佳怡物流', 'jiayiwuliu', NULL, 0, 0, 0, '2017-09-13 16:09:35');
INSERT INTO `store_express` VALUES (34, '京广速递', 'jinguangsudikuaijian', NULL, 0, 0, 0, '2017-09-13 16:09:42');
INSERT INTO `store_express` VALUES (35, '急先达', 'jixianda', NULL, 0, 0, 0, '2017-09-13 16:09:49');
INSERT INTO `store_express` VALUES (36, '佳吉物流', 'jjwl', NULL, 0, 0, 0, '2017-09-13 16:10:01');
INSERT INTO `store_express` VALUES (37, '加运美物流', 'jymwl', NULL, 0, 0, 0, '2017-09-13 16:10:13');
INSERT INTO `store_express` VALUES (38, '金大物流', 'jindawuliu', NULL, 0, 0, 0, '2017-09-13 16:10:22');
INSERT INTO `store_express` VALUES (39, '嘉里大通', 'jialidatong', NULL, 0, 0, 0, '2017-09-13 16:10:33');
INSERT INTO `store_express` VALUES (40, '晋越快递', 'jykd', NULL, 0, 0, 0, '2017-09-13 16:10:40');
INSERT INTO `store_express` VALUES (41, '快捷速递', 'kuaijiesudi', NULL, 0, 0, 0, '2017-09-13 16:10:49');
INSERT INTO `store_express` VALUES (42, '联邦快递（国内）', 'lianb', NULL, 0, 0, 0, '2017-09-13 16:10:58');
INSERT INTO `store_express` VALUES (43, '联昊通物流', 'lianhaowuliu', NULL, 0, 0, 0, '2017-09-13 16:11:07');
INSERT INTO `store_express` VALUES (44, '龙邦物流', 'longbanwuliu', NULL, 0, 0, 0, '2017-09-13 16:11:15');
INSERT INTO `store_express` VALUES (45, '立即送', 'lijisong', NULL, 0, 0, 0, '2017-09-13 16:11:25');
INSERT INTO `store_express` VALUES (46, '乐捷递', 'lejiedi', NULL, 0, 0, 0, '2017-09-13 16:11:36');
INSERT INTO `store_express` VALUES (47, '民航快递', 'minghangkuaidi', NULL, 0, 0, 0, '2017-09-13 16:11:45');
INSERT INTO `store_express` VALUES (48, '美国快递', 'meiguokuaidi', NULL, 0, 0, 0, '2017-09-13 16:11:53');
INSERT INTO `store_express` VALUES (49, '门对门', 'menduimen', NULL, 0, 0, 0, '2017-09-13 16:12:01');
INSERT INTO `store_express` VALUES (50, 'OCS', 'ocs', NULL, 0, 0, 0, '2017-09-13 16:12:10');
INSERT INTO `store_express` VALUES (51, '配思货运', 'peisihuoyunkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:18');
INSERT INTO `store_express` VALUES (52, '全晨快递', 'quanchenkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:26');
INSERT INTO `store_express` VALUES (53, '全峰快递', 'quanfengkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:34');
INSERT INTO `store_express` VALUES (54, '全际通物流', 'quanjitong', NULL, 0, 0, 0, '2017-09-13 16:12:41');
INSERT INTO `store_express` VALUES (55, '全日通快递', 'quanritongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:49');
INSERT INTO `store_express` VALUES (56, '全一快递', 'quanyikuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:56');
INSERT INTO `store_express` VALUES (57, '如风达', 'rufengda', NULL, 0, 0, 0, '2017-09-13 16:13:03');
INSERT INTO `store_express` VALUES (58, '三态速递', 'santaisudi', NULL, 0, 0, 0, '2017-09-13 16:13:15');
INSERT INTO `store_express` VALUES (59, '盛辉物流', 'shenghuiwuliu', NULL, 0, 0, 0, '2017-09-13 16:13:22');
INSERT INTO `store_express` VALUES (60, '申通', 'shentong', NULL, 0, 0, 0, '2017-09-13 16:13:34');
INSERT INTO `store_express` VALUES (61, '顺丰', 'shunfeng', '', 1, 0, 0, '2017-09-13 16:13:41');
INSERT INTO `store_express` VALUES (62, '速尔物流', 'sue', NULL, 0, 0, 0, '2017-09-13 16:13:48');
INSERT INTO `store_express` VALUES (63, '盛丰物流', 'shengfeng', NULL, 0, 0, 0, '2017-09-13 16:13:55');
INSERT INTO `store_express` VALUES (64, '赛澳递', 'saiaodi', NULL, 0, 0, 0, '2017-09-13 16:14:02');
INSERT INTO `store_express` VALUES (65, '天地华宇', 'tiandihuayu', NULL, 0, 0, 0, '2017-09-13 16:14:11');
INSERT INTO `store_express` VALUES (66, '天天快递', 'tiantian', NULL, 0, 0, 0, '2017-09-13 16:14:19');
INSERT INTO `store_express` VALUES (67, 'TNT', 'tnt', NULL, 0, 0, 0, '2017-09-13 16:14:26');
INSERT INTO `store_express` VALUES (68, 'UPS', 'ups', NULL, 0, 0, 0, '2017-09-13 16:14:29');
INSERT INTO `store_express` VALUES (69, '万家物流', 'wanjiawuliu', NULL, 0, 0, 0, '2017-09-13 16:14:37');
INSERT INTO `store_express` VALUES (70, '文捷航空速递', 'wenjiesudi', NULL, 0, 0, 0, '2017-09-13 16:14:46');
INSERT INTO `store_express` VALUES (71, '伍圆', 'wuyuan', NULL, 0, 0, 0, '2017-09-13 16:14:52');
INSERT INTO `store_express` VALUES (72, '万象物流', 'wxwl', NULL, 0, 0, 0, '2017-09-13 16:15:00');
INSERT INTO `store_express` VALUES (73, '新邦物流', 'xinbangwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:06');
INSERT INTO `store_express` VALUES (74, '信丰物流', 'xinfengwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:15');
INSERT INTO `store_express` VALUES (75, '亚风速递', 'yafengsudi', NULL, 0, 0, 0, '2017-09-13 16:15:23');
INSERT INTO `store_express` VALUES (76, '一邦速递', 'yibangwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:30');
INSERT INTO `store_express` VALUES (77, '优速物流', 'youshuwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:36');
INSERT INTO `store_express` VALUES (78, '邮政包裹挂号信', 'youzhengguonei', NULL, 0, 3, 0, '2017-09-13 16:15:44');
INSERT INTO `store_express` VALUES (79, '邮政国际包裹挂号信', 'youzhengguoji', NULL, 0, 2, 0, '2017-09-13 16:15:51');
INSERT INTO `store_express` VALUES (80, '远成物流', 'yuanchengwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:57');
INSERT INTO `store_express` VALUES (81, '圆通速递', 'yuantong', NULL, 1, 1, 0, '2017-09-13 16:16:03');
INSERT INTO `store_express` VALUES (82, '源伟丰快递', 'yuanweifeng', NULL, 0, 0, 0, '2017-09-13 16:16:10');
INSERT INTO `store_express` VALUES (83, '元智捷诚快递', 'yuanzhijiecheng', NULL, 0, 0, 0, '2017-09-13 16:16:17');
INSERT INTO `store_express` VALUES (84, '韵达快运', 'yunda', NULL, 0, 0, 0, '2017-09-13 16:16:24');
INSERT INTO `store_express` VALUES (85, '运通快递', 'yuntongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:16:33');
INSERT INTO `store_express` VALUES (86, '越丰物流', 'yuefengwuliu', NULL, 0, 0, 0, '2017-09-13 16:16:40');
INSERT INTO `store_express` VALUES (87, '源安达', 'yad', NULL, 0, 0, 0, '2017-09-13 16:16:47');
INSERT INTO `store_express` VALUES (88, '银捷速递', 'yinjiesudi', NULL, 0, 0, 0, '2017-09-13 16:16:56');
INSERT INTO `store_express` VALUES (89, '宅急送', 'zhaijisong', NULL, 0, 0, 0, '2017-09-13 16:17:03');
INSERT INTO `store_express` VALUES (90, '中铁快运', 'zhongtiekuaiyun', NULL, 0, 0, 0, '2017-09-13 16:17:10');
INSERT INTO `store_express` VALUES (91, '中通速递', 'zhongtong', '', 0, 0, 0, '2017-09-13 16:17:16');
INSERT INTO `store_express` VALUES (92, '中邮物流', 'zhongyouwuliu', NULL, 0, 0, 0, '2017-09-13 16:17:27');
INSERT INTO `store_express` VALUES (93, '忠信达', 'zhongxinda', NULL, 0, 0, 0, '2017-09-13 16:17:34');
INSERT INTO `store_express` VALUES (94, '芝麻开门', 'zhimakaimen', NULL, 0, 0, 0, '2017-09-13 16:17:41');

-- ----------------------------
-- Table structure for store_file_records
-- ----------------------------
DROP TABLE IF EXISTS `store_file_records`;
CREATE TABLE `store_file_records`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '用户id',
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文件名称',
  `file_size` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '文件大小',
  `create_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_file_records
-- ----------------------------
INSERT INTO `store_file_records` VALUES (2, 1, '/e92e4a5ebf99ee25/6681a1abf9b674b2.xlsx', 9281, 1536992462);

-- ----------------------------
-- Table structure for store_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_goods`;
CREATE TABLE `store_goods`  (
  `goods_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `extend_cat_id` int(11) NULL DEFAULT 0 COMMENT '扩展分类id',
  `goods_sn` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品编号',
  `goods_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击数',
  `brand_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '品牌id',
  `store_count` smallint(5) NOT NULL DEFAULT 10 COMMENT '库存数量',
  `comment_count` smallint(5) NULL DEFAULT 0 COMMENT '商品评论数',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品重量克为单位',
  `volume` double(10, 4) UNSIGNED NOT NULL DEFAULT 0.0000 COMMENT '商品体积。单位立方米',
  `market_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场价(零售价)',
  `shop_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '本店价(供货价)',
  `cost_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '商品成本价',
  `price_ladder` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '价格阶梯',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品关键词',
  `goods_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品简单描述',
  `goods_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详细描述',
  `mobile_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '手机端商品详情',
  `goods_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品上传原始图(主图)',
  `is_virtual` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为虚拟商品 1是，0否',
  `virtual_indate` int(11) NULL DEFAULT 0 COMMENT '虚拟商品有效期',
  `virtual_limit` smallint(6) NULL DEFAULT 0 COMMENT '虚拟商品购买上限',
  `virtual_refund` tinyint(1) NULL DEFAULT 1 COMMENT '是否允许过期退款， 1是，0否',
  `is_on_sale` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否上架 0-未上架 1-销售中',
  `is_free_shipping` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否包邮0否1是',
  `on_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品上架时间',
  `sort` smallint(4) UNSIGNED NOT NULL DEFAULT 50 COMMENT '商品排序',
  `is_recommend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐0-未推荐 1-已推荐',
  `is_new` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否新品0-不是 1-是',
  `is_hot` tinyint(1) NULL DEFAULT 0 COMMENT '是否热卖',
  `last_update` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后更新时间',
  `goods_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品所属类型id，取值表goods_type的id',
  `spec_type` smallint(5) NULL DEFAULT 0 COMMENT '商品规格类型，取值表goods_type的id',
  `give_integral` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '购买商品赠送积分',
  `exchange_integral` int(10) NOT NULL DEFAULT 0 COMMENT '积分兑换：0不参与积分兑换，积分和现金的兑换比例见后台配置',
  `suppliers_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '供货商ID',
  `sales_sum` int(11) NULL DEFAULT 0 COMMENT '商品销量',
  `prom_type` tinyint(1) NULL DEFAULT 0 COMMENT '0默认1抢购2团购3优惠促销4预售5虚拟(5其实没用)6拼团',
  `prom_id` int(11) NOT NULL DEFAULT 0 COMMENT '优惠活动id',
  `commission` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '佣金用于分销分成',
  `spu` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'SPU',
  `sku` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'SKU',
  `template_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '运费模板ID',
  `goods_video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '视频',
  PRIMARY KEY (`goods_id`) USING BTREE,
  INDEX `goods_sn`(`goods_sn`) USING BTREE,
  INDEX `cat_id`(`cate_id`) USING BTREE,
  INDEX `last_update`(`last_update`) USING BTREE,
  INDEX `brand_id`(`brand_id`) USING BTREE,
  INDEX `goods_number`(`store_count`) USING BTREE,
  INDEX `goods_weight`(`weight`) USING BTREE,
  INDEX `sort_order`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods
-- ----------------------------
INSERT INTO `store_goods` VALUES (4, 5, 0, '#10078', '小米8青春', 0, 1, 77, 0, 0, 0.0000, 140.00, 100.00, 0.00, NULL, '布料', '布料描述，布料描述，布料描述', '<p><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/145bb741db89d1a0/b7fbb8665bd0b890.jpg\" title=\"image\" /></p>', NULL, 'https://admin.mijia321.com/static/upload/5941400cd87c37bb/c838a50cd6e02bc9.jpg', 0, 0, 0, 1, 1, 0, 0, 50, 1, 1, 0, 0, 39, 0, 10, 0, 0, 23, 0, 0, 0.00, '', '', 0, 'https://admin.mijia321.com/static/upload/e38690a86e1ef621/313ee2689043da13.mp4');
INSERT INTO `store_goods` VALUES (5, 5, 0, '#10086', '苹果X', 0, 1, 172, 0, 0, 0.0000, 150.00, 100.00, 0.00, NULL, '枕芯', '枕芯这里是什么呢', '<p><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/5735b3971afb31b4/4056e87625d6308d.jpg\" title=\"image\" /></p>\r\n\r\n<p><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/2ca3e28f579f67bf/60adbbcf479f76a1.jpg\" title=\"image\" /></p>', NULL, 'https://admin.mijia321.com/static/upload/2ca3e28f579f67bf/60adbbcf479f76a1.jpg', 0, 0, 0, 1, 1, 0, 0, 50, 0, 1, 0, 0, 39, 0, 20, 0, 0, 28, 0, 0, 0.00, '', '', 0, 'https://admin.mijia321.com/static/upload/e38690a86e1ef621/313ee2689043da13.mp4');
INSERT INTO `store_goods` VALUES (6, 5, 0, '10010', '小米6X', 0, 2, 19, 0, 0, 0.0000, 18.00, 22.00, 0.00, NULL, '123', '123123', '<p><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/90302f074f2f7060/17f5d62b05cccc78.jpg\" title=\"image\" /></p>', NULL, 'https://admin.mijia321.com/static/upload/90302f074f2f7060/17f5d62b05cccc78.jpg', 0, 0, 0, 1, 1, 0, 0, 50, 1, 0, 0, 0, 39, 0, 0, 0, 0, 3, 0, 0, 0.00, '', '', 0, '');
INSERT INTO `store_goods` VALUES (7, 5, 0, '#45678', '红米6A', 0, 2, 12, 0, 0, 0.0000, 12.00, 22.00, 0.00, NULL, '12', '123123', '<p><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/1eaff416a8e9b845/ef5711e4c1995028.jpg\" title=\"image\" /></p>', NULL, 'https://admin.mijia321.com/static/upload/593fab60868bfd61/3e6219d4ad6fe91a.jpg', 0, 0, 0, 1, 1, 0, 0, 50, 1, 1, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0.00, '', '', 0, '');
INSERT INTO `store_goods` VALUES (8, 4, 0, '#10096', '小米平板', 0, 1, 10, 0, 0, 0.0000, 9888.00, 6888.00, 0.00, NULL, '小米', '123', '<p><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/bbed0eba70c2018c/5b22ac2638e18245.jpg\" title=\"image\" /><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/137478132b12081d/8f46351f022872b4.jpg\" title=\"image\" /><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/0a78b71aebb5a39e/b64ce1f2ee6ac447.jpg\" title=\"image\" /><img border=\"0\" src=\"https://admin.mijia321.com/static/upload/b9d6ba99c4c6c55b/f4ed701f2ae71653.jpg\" title=\"image\" /></p>', NULL, 'https://admin.mijia321.com/static/upload/57f30ef609837394/95492d0e4b055104.jpg', 0, 0, 0, 1, 1, 0, 0, 50, 1, 1, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0.00, '', '', 0, '');
INSERT INTO `store_goods` VALUES (9, 11, 0, '#1008611', '测试商品规格', 0, 1, 10, 0, 0, 0.0000, 100.00, 20.00, 0.00, NULL, '复印', '描述', NULL, NULL, '', 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0.00, '', '', 0, '');

-- ----------------------------
-- Table structure for store_goods_activity
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_activity`;
CREATE TABLE `store_goods_activity`  (
  `act_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `act_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动名称',
  `act_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动描述',
  `act_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '活动类型:1预售2拼团',
  `goods_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '参加活动商品ID',
  `spec_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品规格ID',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `start_time` int(10) UNSIGNED NOT NULL COMMENT '活动开始时间',
  `end_time` int(10) UNSIGNED NOT NULL COMMENT '活动结束时间',
  `is_finished` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否已结束:0,正常；1,成功结束；2，失败结束。',
  `ext_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动扩展配置',
  `act_count` mediumint(8) NOT NULL DEFAULT 0 COMMENT '商品购买数',
  PRIMARY KEY (`act_id`) USING BTREE,
  INDEX `act_name`(`act_name`, `act_type`, `goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for store_goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_attr`;
CREATE TABLE `store_goods_attr`  (
  `goods_attr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品属性id自增',
  `goods_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `attr_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '属性id',
  `attr_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性值',
  `attr_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '属性价格',
  PRIMARY KEY (`goods_attr_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `attr_id`(`attr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品关联的属性表(与商品相关)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_attr
-- ----------------------------
INSERT INTO `store_goods_attr` VALUES (2, 1, 330, '12*15*18', '0');
INSERT INTO `store_goods_attr` VALUES (9, 5, 329, '3D立体', '');
INSERT INTO `store_goods_attr` VALUES (10, 5, 330, '100%纯棉', '');
INSERT INTO `store_goods_attr` VALUES (11, 4, 329, '纯手工2', '');
INSERT INTO `store_goods_attr` VALUES (12, 4, 330, '100%纯棉2', '');
INSERT INTO `store_goods_attr` VALUES (13, 6, 329, '123', '');
INSERT INTO `store_goods_attr` VALUES (14, 6, 330, '456', '');
INSERT INTO `store_goods_attr` VALUES (17, 8, 329, '电镀', '');
INSERT INTO `store_goods_attr` VALUES (18, 8, 330, '金属', '');
INSERT INTO `store_goods_attr` VALUES (19, 7, 329, '123', '');
INSERT INTO `store_goods_attr` VALUES (20, 7, 330, '123', '');
INSERT INTO `store_goods_attr` VALUES (25, 9, 330, '材质', '');
INSERT INTO `store_goods_attr` VALUES (26, 9, 329, '工艺9', '');

-- ----------------------------
-- Table structure for store_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_attribute`;
CREATE TABLE `store_goods_attribute`  (
  `attr_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `attr_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '属性名称',
  `type_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '属性分类id(商品模型id)',
  `attr_index` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '0不需要检索 1关键字检索 2范围检索',
  `attr_type` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '0唯一属性 1单选属性 2复选属性',
  `attr_input_type` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT ' 0 手工录入 1从列表中选择 2多行文本框',
  `attr_values` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '可选值列表',
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 50 COMMENT '属性排序',
  PRIMARY KEY (`attr_id`) USING BTREE,
  INDEX `cat_id`(`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品的属性表(独立)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_attribute
-- ----------------------------
INSERT INTO `store_goods_attribute` VALUES (329, '工艺', 39, 0, 0, 0, '', 50);
INSERT INTO `store_goods_attribute` VALUES (330, '材质', 39, 0, 0, 0, '', 50);
INSERT INTO `store_goods_attribute` VALUES (331, '内存', 40, 0, 0, 0, NULL, 50);

-- ----------------------------
-- Table structure for store_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_brand`;
CREATE TABLE `store_goods_brand`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_logo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '品牌logo',
  `brand_cover` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '品牌封面',
  `brand_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品品牌名称',
  `brand_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品品牌描述',
  `brand_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '品牌图文信息',
  `sort` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '商品分类排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品品牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_brand
-- ----------------------------
INSERT INTO `store_goods_brand` VALUES (1, 'http://www.testxcx.com/static/upload/fec82092cb3405cc/cefd3bfb70a3c080.png', 'http://www.testxcx.com/static/upload/a1b7f6d005e2c1b2/9729f24657ecbf46.png', '蚂蚁供货', '蚂蚁供货蚂蚁供货', '<p>蚂蚁供货蚂蚁供货</p>', 0, 1, 0, '2018-07-09 20:59:50');
INSERT INTO `store_goods_brand` VALUES (2, 'https://admin.mijia321.com/static/upload/145bb741db89d1a0/b7fbb8665bd0b890.jpg', 'https://admin.mijia321.com/static/upload/1a0b9aa9269e885f/691c8476f18c158b.jpg', '星仔', '自营', '<p>自营品牌</p>', 0, 1, 0, '2018-08-08 09:11:49');
INSERT INTO `store_goods_brand` VALUES (3, 'http://127.0.0.1:8080/profile/upload/2019/08/23/079702428f13f5c9b5acb1c5cec16b9d.jpeg', '', 'logo', NULL, NULL, 0, 1, 0, '2019-08-23 18:37:19');

-- ----------------------------
-- Table structure for store_goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_cate`;
CREATE TABLE `store_goods_cate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '上级分类编号',
  `brand_id` bigint(20) NULL DEFAULT 0 COMMENT '品牌ID',
  `cate_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品分类名称',
  `cate_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品分类',
  `img_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '缩略图url',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品分类排序',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_cate
-- ----------------------------
INSERT INTO `store_goods_cate` VALUES (3, 0, 0, '套件', '套件', NULL, 0, 1, 0, '2018-07-09 21:01:36');
INSERT INTO `store_goods_cate` VALUES (4, 0, 0, '布料', '布料', NULL, 0, 1, 0, '2018-07-09 21:01:51');
INSERT INTO `store_goods_cate` VALUES (5, 4, 0, '布料子类', '吞吞吐吐', 'https://admin.mijia321.com/static/upload/f1a360f04248ba32/02e06403821912f2.png', 0, 1, 0, '2018-07-11 11:31:51');
INSERT INTO `store_goods_cate` VALUES (6, 2, 0, '枕芯子类', '', 'https://admin.mijia321.com/static/upload/fec82092cb3405cc/cefd3bfb70a3c080.png', 0, 1, 0, '2018-09-17 15:29:38');
INSERT INTO `store_goods_cate` VALUES (7, 3, 0, '套件子类', '', 'https://admin.mijia321.com/static/upload/62a4f8f956822c5b/2e6251636de8bbd5.png', 0, 1, 0, '2018-09-17 15:30:59');
INSERT INTO `store_goods_cate` VALUES (8, 1, 0, '被芯子类', '', 'https://admin.mijia321.com/static/upload/f1ae4b809166c2ba/58c3fdcfceea8aa6.png', 0, 1, 0, '2018-09-17 15:31:22');
INSERT INTO `store_goods_cate` VALUES (9, 4, 0, '二类', '2222', 'https://admin.mijia321.com/static/upload/d481af1cce3bc3db/874b64a4b4c1710c.png', 0, 1, 0, '2018-09-18 14:38:33');
INSERT INTO `store_goods_cate` VALUES (10, 4, 0, '三类', '333', 'https://admin.mijia321.com/static/upload/3dd5c60c944e82c5/144b2d281abaf5ee.png', 0, 1, 0, '2018-09-18 14:38:54');
INSERT INTO `store_goods_cate` VALUES (11, 4, 0, '四类', '444', 'https://admin.mijia321.com/static/upload/254d163d8b3b6396/eda3a76294b250fe.png', 0, 1, 0, '2018-09-18 14:39:30');
INSERT INTO `store_goods_cate` VALUES (12, 1, 0, '背心', '44', 'http://127.0.0.1:8080/profile/upload/2019/08/23/2e593ef4098a5c1758c11e2539f5962b.png', 0, 1, 0, '2019-08-23 17:44:50');

-- ----------------------------
-- Table structure for store_goods_collect
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_collect`;
CREATE TABLE `store_goods_collect`  (
  `collect_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `goods_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`collect_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 421 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_collect
-- ----------------------------
INSERT INTO `store_goods_collect` VALUES (342, 3, 6, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (352, 2, 5, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (361, 5, 4, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (398, 3, 5, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (406, 2, 4, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (410, 7, 4, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (412, 7, 5, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (414, 7, 6, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (415, 7, 7, '0000-00-00 00:00:00');
INSERT INTO `store_goods_collect` VALUES (420, 3, 4, '2019-09-10 07:06:18');

-- ----------------------------
-- Table structure for store_goods_consult
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_consult`;
CREATE TABLE `store_goods_consult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品咨询id',
  `goods_id` int(11) NULL DEFAULT 0 COMMENT '商品id',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '网名',
  `add_time` int(11) NULL DEFAULT 0 COMMENT '咨询时间',
  `consult_type` tinyint(1) NULL DEFAULT 1 COMMENT '1 商品咨询 2 支付咨询 3 配送 4 售后',
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '咨询内容',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父id 用于管理员回复',
  `is_show` tinyint(1) NULL DEFAULT 0 COMMENT '是否显示',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '管理员回复状态，0未回复，1已回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '商品咨询表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for store_goods_coupon
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_coupon`;
CREATE TABLE `store_goods_coupon`  (
  `coupon_id` int(8) NOT NULL COMMENT '优惠券id',
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '指定的商品id：为零表示不指定商品',
  `goods_category_id` smallint(5) NOT NULL DEFAULT 0 COMMENT '指定的商品分类：为零表示不指定分类',
  PRIMARY KEY (`coupon_id`, `goods_id`, `goods_category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '优惠券与商品关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for store_goods_feiqi
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_feiqi`;
CREATE TABLE `store_goods_feiqi`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '品牌ID',
  `cate_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品分类id',
  `unit_id` bigint(20) NULL DEFAULT NULL COMMENT '商品单位ID',
  `spec_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '规格ID',
  `tags_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品标签ID',
  `is_code` bigint(1) NULL DEFAULT 1 COMMENT '是否有码商品',
  `goods_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货号',
  `goods_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品标签',
  `goods_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品内容',
  `goods_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品LOGO',
  `goods_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品图片地址',
  `goods_video` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品视频URL',
  `goods_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品描述',
  `package_stock` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '总库存数量',
  `package_sale` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '已销售数量',
  `favorite_num` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '收藏次数',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城商品主表-废弃' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_feiqi
-- ----------------------------
INSERT INTO `store_goods_feiqi` VALUES (1, 1, 4, NULL, 1, ',,', 1, '', '亿罗水洗棉四件套', '<p>&nbsp;亿罗水洗棉四件套&nbsp;亿罗水洗棉四件套</p>\r\n\r\n<p>&nbsp;亿罗水洗棉四件套</p>', 'http://www.testxcx.com/static/upload/fec82092cb3405cc/cefd3bfb70a3c080.png', 'http://www.testxcx.com/static/upload/934a5ec7a6634375/982e646eae7c52c3.png', '', ' 亿罗水洗棉四件套 亿罗水洗棉四件套', 0, 0, 0, 0, 0, 0, '2018-07-09 21:17:02');

-- ----------------------------
-- Table structure for store_goods_images
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_images`;
CREATE TABLE `store_goods_images`  (
  `img_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图片id 自增',
  `goods_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  PRIMARY KEY (`img_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 552 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品相册' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_images
-- ----------------------------
INSERT INTO `store_goods_images` VALUES (550, 4, 'http://www.testxcx.com/static/upload/be60005fd9d0feec/4b2fd19ee6688227.png');
INSERT INTO `store_goods_images` VALUES (551, 5, 'http://www.testxcx.com/static/upload/0b65e460d8f9328c/dc837982e81cec43.png');

-- ----------------------------
-- Table structure for store_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_type`;
CREATE TABLE `store_goods_type`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id自增',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类型(商品模型)表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_goods_type
-- ----------------------------
INSERT INTO `store_goods_type` VALUES (37, '被芯');
INSERT INTO `store_goods_type` VALUES (38, '套件');
INSERT INTO `store_goods_type` VALUES (39, '大豆');
INSERT INTO `store_goods_type` VALUES (40, '手机');

-- ----------------------------
-- Table structure for store_goods_visit
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_visit`;
CREATE TABLE `store_goods_visit`  (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `visittime` int(11) NOT NULL COMMENT '浏览时间',
  `cat_id` int(11) NOT NULL COMMENT '商品分类ID',
  `extend_cat_id` int(11) NOT NULL COMMENT '商品扩展分类ID',
  PRIMARY KEY (`goods_id`, `user_id`, `visit_id`) USING BTREE,
  INDEX `visit_id`(`visit_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 747 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品浏览历史表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for store_member
-- ----------------------------
DROP TABLE IF EXISTS `store_member`;
CREATE TABLE `store_member`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vip_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'vip编号',
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员微信OPENID',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员手机号',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员昵称',
  `headimg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员头像',
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '性别',
  `level` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '会员级别',
  `total_amount` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '消费累计额度 用于用户等级',
  `user_money` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '用户金额',
  `distribut_money` decimal(8, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '累积分佣金额',
  `frozen_money` double(8, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '冻结金额',
  `underling_number` int(5) UNSIGNED NULL DEFAULT 0 COMMENT '用户下线总数',
  `pay_points` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '消费积分',
  `address_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '默认收货地址',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员个性签名',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '会员状态0待审核 1-已审核 2-已拒绝',
  `create_time` datetime(0) NULL,
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_store_member_openid`(`openid`) USING BTREE,
  INDEX `index_store_member_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城会员信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_member
-- ----------------------------
INSERT INTO `store_member` VALUES (1, NULL, '888787', '15601064107', 'e10adc3949ba59abbe56e057f20f883e', '高', 'tt', '1', 6, 0.00, 93.60, 0.00, 0.00, 0, 0, 0, '333', 1, '0000-00-00 00:00:00', '2018-05-23 14:42:25', 0);
INSERT INTO `store_member` VALUES (2, '', 'orIMY4ykNo4p1k5fiHcVYd2GLdO8', '17610570135', 'e10adc3949ba59abbe56e057f20f883e', '高晓松', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIzjkjtD1YuSoGz5EFV80luIywsVch8cx4Dgrc3rM6vWkFRaNBJ7QjoQ4ibyPZar8oL4U4YMG1E1xg/132', '1', 1, 0.00, 7920.00, 0.00, 0.00, 0, 0, 0, '', 1, '0000-00-00 00:00:00', '2018-09-16 21:22:29', 0);
INSERT INTO `store_member` VALUES (3, '', 'orIMY4xGhMmipwFZoSL1vOhUNFZ0', '15136175246', 'e10adc3949ba59abbe56e057f20f883e', '胡鹏', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erkH5E5lvlWSAaoT1icTe79tGnKXtqicTUC2cOibOqJOIm4s7aKN4kXvxTAMb6pqoOSoVrJtfic1UDUFg/132', '1', 1, 0.00, 19035.00, 0.00, 0.00, 0, 0, 0, '', 1, '0000-00-00 00:00:00', '2018-09-17 15:16:34', 0);
INSERT INTO `store_member` VALUES (4, '', 'orIMY47plZ1wxgJKkgme2Kp0dSGs', '', 'e10adc3949ba59abbe56e057f20f883e', '哈哈sjs', 'https://wx.qlogo.cn/mmopen/vi_32/vplr46pWKGgjozY7OkWFNPbZ1TaPOoFJphUictCKSPZL19VGrkyAGsk9AU4VZwGUU0FNzHZEJY9U7LbYAVwVXKQ/132', '0', 1, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '', 2, '0000-00-00 00:00:00', '2018-09-17 15:54:42', 0);
INSERT INTO `store_member` VALUES (5, '', 'orIMY4z3mBo7ybJ4l0MbjSkd1KMs', '', 'e10adc3949ba59abbe56e057f20f883e', '阿星xlh(十分之九)', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqp5Fqia2pfV0Gh4Sf6jL2n0JGhxKiaiaRkSXg52RvStkfhxXUCAkud4lNRx2Mv6XSjZw6CMHIzDcicRg/132', '1', 1, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '', 0, '0000-00-00 00:00:00', '2018-09-17 16:14:19', 0);
INSERT INTO `store_member` VALUES (6, '', 'orIMY4-Mz71H4437G_kwUP5OteQc', '', 'e10adc3949ba59abbe56e057f20f883e', '隐形少女', 'https://wx.qlogo.cn/mmopen/vi_32/DVCIYncKXic6BAf4KL7ewRVxeKwUyeC7yqPnMWLYib7tX1kzxMgac7ib261RqibshfELUyicgEuh8FEDCEBkS5HXU6w/132', '0', 1, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '', 0, '0000-00-00 00:00:00', '2018-09-17 16:28:09', 0);
INSERT INTO `store_member` VALUES (7, '', 'orIMY48OXLkkc2SGs--N0A9tfDKM', '18905970273', 'e10adc3949ba59abbe56e057f20f883e', '林建宾', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqgqwibl6cHtTbibl5M7xFQw1nd7ab6OfNg7iaRZYshmLVXNsbvx55JaMlicyJspybAqrFFghhNA2hDSw/132', '1', 5, 0.00, 8749.90, 0.00, 0.00, 0, 0, 0, '', 1, '0000-00-00 00:00:00', '2018-09-17 16:50:23', 0);
INSERT INTO `store_member` VALUES (8, '', 'orIMY41VYKy0IJa1zESsWp-it5GM', '', 'e10adc3949ba59abbe56e057f20f883e', '李冠坤电线电缆灯具家装材料', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIwbHuA4O3melJMVSgwU4rYac9GtcfRbtQkzpiaIK0NyQgohWVoec6yC9aW08HuPS5aFx7rPfK6uQA/132', '1', 1, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '', 0, '0000-00-00 00:00:00', '2018-10-14 11:27:31', 0);

-- ----------------------------
-- Table structure for store_member_address
-- ----------------------------
DROP TABLE IF EXISTS `store_member_address`;
CREATE TABLE `store_member_address`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货手机号',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址城市',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址区域',
  `city_info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '城市信息',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货详细地址',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0无效, 1新快递)',
  `is_default` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '默认收货地址',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城会员收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_member_address
-- ----------------------------
INSERT INTO `store_member_address` VALUES (4, 1, 'hupeng', '15136175847', '', '', '', '河南郑州', '工商', 1, 1, 0, '2018-09-09 14:13:18');
INSERT INTO `store_member_address` VALUES (5, 2, 'asdsdsd', '15601064107', '', '', '', '北京市市辖区东城区', '12121212', 1, 1, 0, '2018-09-16 22:29:48');
INSERT INTO `store_member_address` VALUES (7, 7, '煎饼', '18905970273', '', '', '', '北京市市辖区东城区', '11号', 1, 1, 0, '2018-09-17 17:23:27');
INSERT INTO `store_member_address` VALUES (8, 3, '胡鹏', '15136175246', '', '', '', '北京市市辖区东城区', '75', 1, 1, 0, '2018-09-18 19:32:55');
INSERT INTO `store_member_address` VALUES (9, 2, '122', '15601064107', '', '', '', '北京市市辖区东城区', '1', 1, 1, 0, '2018-10-08 22:47:11');
INSERT INTO `store_member_address` VALUES (10, 3, 'hupeng233', '15136175247', '', '', '', '河南郑州', '77号', 1, 0, 0, '2019-09-15 17:56:30');

-- ----------------------------
-- Table structure for store_order
-- ----------------------------
DROP TABLE IF EXISTS `store_order`;
CREATE TABLE `store_order`  (
  `order_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `order_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单状态 0-未确认 1-已确认(已收货） 2-已评价',
  `shipping_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发货状态 0-未发货 1-已发货 2-退货中 3-退货完成',
  `pay_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付状态 0-未支付 1-已支付',
  `consignee` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人',
  `country` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '国家',
  `province` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '省份',
  `city` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '城市',
  `district` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '县区',
  `twon` int(11) NULL DEFAULT 0 COMMENT '乡镇',
  `city_info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '地区地址',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址详细地址',
  `zipcode` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮件',
  `receive_type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '收货方式 1-物流 2-快递 3-自取',
  `shipping_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流code 单号',
  `shipping_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流名称',
  `pay_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付code',
  `pay_method` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式1-微信2-余额3-转账',
  `recharge_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '支付方式为转账的转账id',
  `pay_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `invoice_title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '发票抬头',
  `taxpayer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '纳税人识别号',
  `goods_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品总价',
  `shipping_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '邮费',
  `user_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '使用余额',
  `coupon_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '优惠券抵扣',
  `integral` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用积分',
  `integral_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '使用积分抵多少钱',
  `order_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '应付款金额',
  `total_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '订单总价',
  `add_time` datetime(0) NOT NULL COMMENT '下单时间',
  `shipping_time` int(11) NULL DEFAULT 0 COMMENT '最后新发货时间',
  `confirm_time` int(10) NULL DEFAULT 0 COMMENT '收货确认时间',
  `pay_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付时间',
  `transaction_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方平台交易流水号',
  `prom_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '活动ID',
  `prom_type` tinyint(4) UNSIGNED NULL DEFAULT 0 COMMENT '订单类型：0普通订单4预售订单5虚拟订单6拼团订单',
  `order_prom_id` smallint(6) NOT NULL DEFAULT 0 COMMENT '活动id',
  `order_prom_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '活动优惠金额',
  `discount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '价格调整',
  `user_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户备注',
  `admin_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '管理员备注',
  `parent_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父单单号',
  `is_distribut` tinyint(1) NULL DEFAULT 0 COMMENT '是否已分成0未分成1已分成',
  `paid_money` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '订金',
  `deleted_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '删除|取消时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '用户假删除标识,1:删除,0未删除',
  `edit_money` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.00' COMMENT '管理后台修改变动的价格',
  PRIMARY KEY (`order_id`) USING BTREE,
  UNIQUE INDEX `order_sn`(`order_sn`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `add_time`(`add_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1869 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_order
-- ----------------------------
INSERT INTO `store_order` VALUES (1865, '20190914144718326', 3, 0, 0, 0, 'hupeng', 0, 0, 0, 0, 0, '河南郑州', '工商', '', '15136175847', '', 2, '', '', '', 0, 0, '', '', '', 430.00, 0.00, 0.00, 0.00, 0, 0.00, 430.00, 430.00, '2019-09-14 06:47:18', 0, 0, 0, NULL, 0, 0, 0, 0.00, 0.00, '', '', NULL, 0, 0.00, 1568622248, 1, '0.00');
INSERT INTO `store_order` VALUES (1866, '20190914145142303', 3, 0, 0, 0, 'hupeng', 0, 0, 0, 0, 0, '河南郑州', '工商', '', '15136175847', '', 2, '', '', '', 0, 0, '', '', '', 430.00, 0.00, 0.00, 50.00, 0, 0.00, 380.00, 430.00, '2019-09-14 06:51:42', 0, 0, 0, NULL, 0, 0, 0, 0.00, 0.00, '', '', NULL, 0, 0.00, 0, 0, '0.00');
INSERT INTO `store_order` VALUES (1867, '20190916155320142', 3, 0, 0, 0, 'hupeng', 0, 0, 0, 0, 0, '河南郑州', '工商', '', '15136175847', '', 2, '', '', '', 0, 0, '', '', '', 430.00, 0.00, 0.00, 50.00, 0, 0.00, 380.00, 430.00, '2019-09-16 07:53:20', 0, 0, 0, NULL, 0, 0, 0, 0.00, 0.00, '', '', NULL, 0, 0.00, 0, 0, '0.00');
INSERT INTO `store_order` VALUES (1868, '20190916155438712', 3, 0, 0, 0, 'hupeng', 0, 0, 0, 0, 0, '河南郑州', '工商', '', '15136175847', '', 2, '', '', '', 0, 0, '', '', '', 430.00, 0.00, 0.00, 50.00, 0, 0.00, 380.00, 430.00, '2019-09-16 07:54:39', 0, 0, 0, NULL, 0, 0, 0, 0.00, 0.00, '', '', NULL, 0, 0.00, 0, 0, '0.00');

-- ----------------------------
-- Table structure for store_order_action
-- ----------------------------
DROP TABLE IF EXISTS `store_order_action`;
CREATE TABLE `store_order_action`  (
  `action_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `order_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `action_user` int(11) NULL DEFAULT 0 COMMENT '操作人 0 为用户操作，其他为管理员id',
  `order_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单状态',
  `shipping_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配送状态',
  `pay_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付状态',
  `action_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作备注',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作时间',
  `status_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态描述',
  PRIMARY KEY (`action_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2532 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_order_action
-- ----------------------------
INSERT INTO `store_order_action` VALUES (2399, 1639, 0, 0, 0, 0, '提交订单', 1532162093, '提交订单');
INSERT INTO `store_order_action` VALUES (2400, 1640, 0, 0, 0, 0, '提交订单', 1532162249, '提交订单');
INSERT INTO `store_order_action` VALUES (2401, 1644, 0, 0, 0, 0, '提交订单', 1532164170, '提交订单');
INSERT INTO `store_order_action` VALUES (2402, 1654, 0, 0, 0, 0, '提交订单', 1532167441, '提交订单');
INSERT INTO `store_order_action` VALUES (2403, 1645, 0, 0, 0, 0, '提交订单', 1533385350, '提交订单');
INSERT INTO `store_order_action` VALUES (2404, 1646, 0, 0, 0, 0, '提交订单', 1534403096, '提交订单');
INSERT INTO `store_order_action` VALUES (2405, 1647, 0, 0, 0, 0, '提交订单', 1534403121, '提交订单');
INSERT INTO `store_order_action` VALUES (2406, 1648, 0, 0, 0, 0, '提交订单', 1535834099, '提交订单');
INSERT INTO `store_order_action` VALUES (2407, 1649, 0, 0, 0, 0, '提交订单', 1535834159, '提交订单');
INSERT INTO `store_order_action` VALUES (2408, 1650, 0, 0, 0, 0, '提交订单', 1535837956, '提交订单');
INSERT INTO `store_order_action` VALUES (2409, 1651, 0, 0, 0, 0, '提交订单', 1535844518, '提交订单');
INSERT INTO `store_order_action` VALUES (2410, 1652, 0, 0, 0, 0, '提交订单', 1535844596, '提交订单');
INSERT INTO `store_order_action` VALUES (2411, 1653, 0, 0, 0, 0, '提交订单', 1535844646, '提交订单');
INSERT INTO `store_order_action` VALUES (2412, 1654, 0, 0, 0, 0, '提交订单', 1536823694, '提交订单');
INSERT INTO `store_order_action` VALUES (2413, 1655, 0, 0, 0, 0, '提交订单', 1536824019, '提交订单');
INSERT INTO `store_order_action` VALUES (2414, 1656, 0, 0, 0, 0, '提交订单', 1536824097, '提交订单');
INSERT INTO `store_order_action` VALUES (2415, 1657, 0, 0, 0, 0, '提交订单', 1536824141, '提交订单');
INSERT INTO `store_order_action` VALUES (2416, 1658, 0, 0, 0, 0, '提交订单', 1536824194, '提交订单');
INSERT INTO `store_order_action` VALUES (2417, 1659, 0, 0, 0, 0, '提交订单', 1537030930, '提交订单');
INSERT INTO `store_order_action` VALUES (2418, 1660, 0, 0, 0, 0, '提交订单', 1537030934, '提交订单');
INSERT INTO `store_order_action` VALUES (2419, 1661, 0, 0, 0, 0, '提交订单', 1537031075, '提交订单');
INSERT INTO `store_order_action` VALUES (2420, 1662, 0, 0, 0, 0, '提交订单', 1537031219, '提交订单');
INSERT INTO `store_order_action` VALUES (2421, 1677, 0, 0, 0, 0, '提交订单', 1537108423, '提交订单');
INSERT INTO `store_order_action` VALUES (2422, 1678, 0, 0, 0, 0, '提交订单', 1537108524, '提交订单');
INSERT INTO `store_order_action` VALUES (2423, 1679, 0, 0, 0, 0, '提交订单', 1537108576, '提交订单');
INSERT INTO `store_order_action` VALUES (2424, 1684, 0, 0, 0, 0, '提交订单', 1537109116, '提交订单');
INSERT INTO `store_order_action` VALUES (2425, 1693, 0, 0, 0, 0, '提交订单', 1537161179, '提交订单');
INSERT INTO `store_order_action` VALUES (2426, 1694, 0, 0, 0, 0, '提交订单', 1537162922, '提交订单');
INSERT INTO `store_order_action` VALUES (2427, 1695, 0, 0, 0, 0, '提交订单', 1537239234, '提交订单');
INSERT INTO `store_order_action` VALUES (2428, 1696, 0, 0, 0, 0, '提交订单', 1537257195, '提交订单');
INSERT INTO `store_order_action` VALUES (2429, 1697, 0, 0, 0, 0, '提交订单', 1537257199, '提交订单');
INSERT INTO `store_order_action` VALUES (2430, 1698, 0, 0, 0, 0, '提交订单', 1537257498, '提交订单');
INSERT INTO `store_order_action` VALUES (2431, 1699, 0, 0, 0, 0, '提交订单', 1537257887, '提交订单');
INSERT INTO `store_order_action` VALUES (2432, 1700, 0, 0, 0, 0, '提交订单', 1537262124, '提交订单');
INSERT INTO `store_order_action` VALUES (2433, 1701, 0, 0, 0, 0, '提交订单', 1537263206, '提交订单');
INSERT INTO `store_order_action` VALUES (2434, 1702, 0, 0, 0, 0, '提交订单', 1537263210, '提交订单');
INSERT INTO `store_order_action` VALUES (2435, 1703, 0, 0, 0, 0, '提交订单', 1537263211, '提交订单');
INSERT INTO `store_order_action` VALUES (2436, 1704, 0, 0, 0, 0, '提交订单', 1537263214, '提交订单');
INSERT INTO `store_order_action` VALUES (2437, 1705, 0, 0, 0, 0, '提交订单', 1537263219, '提交订单');
INSERT INTO `store_order_action` VALUES (2438, 1706, 0, 0, 0, 0, '提交订单', 1537270871, '提交订单');
INSERT INTO `store_order_action` VALUES (2439, 1707, 0, 0, 0, 0, '提交订单', 1537270886, '提交订单');
INSERT INTO `store_order_action` VALUES (2440, 1708, 0, 0, 0, 0, '提交订单', 1537270925, '提交订单');
INSERT INTO `store_order_action` VALUES (2441, 1709, 0, 0, 0, 0, '提交订单', 1537270979, '提交订单');
INSERT INTO `store_order_action` VALUES (2442, 1710, 0, 0, 0, 0, '提交订单', 1537270988, '提交订单');
INSERT INTO `store_order_action` VALUES (2443, 1711, 0, 0, 0, 0, '提交订单', 1537271353, '提交订单');
INSERT INTO `store_order_action` VALUES (2444, 1712, 0, 0, 0, 0, '提交订单', 1537272869, '提交订单');
INSERT INTO `store_order_action` VALUES (2445, 1713, 0, 0, 0, 0, '提交订单', 1537319156, '提交订单');
INSERT INTO `store_order_action` VALUES (2446, 1714, 0, 0, 0, 0, '提交订单', 1537324464, '提交订单');
INSERT INTO `store_order_action` VALUES (2447, 1715, 0, 0, 0, 0, '提交订单', 1537324508, '提交订单');
INSERT INTO `store_order_action` VALUES (2448, 1716, 0, 0, 0, 0, '提交订单', 1537428026, '提交订单');
INSERT INTO `store_order_action` VALUES (2449, 1717, 0, 0, 0, 0, '提交订单', 1537781187, '提交订单');
INSERT INTO `store_order_action` VALUES (2450, 1718, 0, 0, 0, 0, '提交订单', 1537781440, '提交订单');
INSERT INTO `store_order_action` VALUES (2451, 1719, 0, 0, 0, 0, '提交订单', 1537781644, '提交订单');
INSERT INTO `store_order_action` VALUES (2452, 1720, 0, 0, 0, 0, '提交订单', 1537781707, '提交订单');
INSERT INTO `store_order_action` VALUES (2453, 1721, 0, 0, 0, 0, '提交订单', 1537781743, '提交订单');
INSERT INTO `store_order_action` VALUES (2454, 1722, 0, 0, 0, 0, '提交订单', 1537781830, '提交订单');
INSERT INTO `store_order_action` VALUES (2455, 1723, 0, 0, 0, 0, '提交订单', 1537782033, '提交订单');
INSERT INTO `store_order_action` VALUES (2456, 1724, 0, 0, 0, 0, '提交订单', 1537782097, '提交订单');
INSERT INTO `store_order_action` VALUES (2457, 1725, 0, 0, 0, 0, '提交订单', 1537782123, '提交订单');
INSERT INTO `store_order_action` VALUES (2458, 1726, 0, 0, 0, 0, '提交订单', 1537782501, '提交订单');
INSERT INTO `store_order_action` VALUES (2459, 1727, 0, 0, 0, 0, '提交订单', 1537782856, '提交订单');
INSERT INTO `store_order_action` VALUES (2460, 1728, 0, 0, 0, 0, '提交订单', 1537783035, '提交订单');
INSERT INTO `store_order_action` VALUES (2461, 1729, 0, 0, 0, 0, '提交订单', 1537783179, '提交订单');
INSERT INTO `store_order_action` VALUES (2462, 1730, 0, 0, 0, 0, '提交订单', 1537783250, '提交订单');
INSERT INTO `store_order_action` VALUES (2463, 1731, 0, 0, 0, 0, '提交订单', 1537783316, '提交订单');
INSERT INTO `store_order_action` VALUES (2464, 1732, 0, 0, 0, 0, '提交订单', 1537783357, '提交订单');
INSERT INTO `store_order_action` VALUES (2465, 1733, 0, 0, 0, 0, '提交订单', 1537793998, '提交订单');
INSERT INTO `store_order_action` VALUES (2466, 1734, 0, 0, 0, 0, '提交订单', 1537794348, '提交订单');
INSERT INTO `store_order_action` VALUES (2467, 1735, 0, 0, 0, 0, '提交订单', 1537794481, '提交订单');
INSERT INTO `store_order_action` VALUES (2468, 1736, 0, 0, 0, 0, '提交订单', 1537794594, '提交订单');
INSERT INTO `store_order_action` VALUES (2469, 1737, 0, 0, 0, 0, '提交订单', 1537794695, '提交订单');
INSERT INTO `store_order_action` VALUES (2470, 1738, 0, 0, 0, 0, '提交订单', 1537857037, '提交订单');
INSERT INTO `store_order_action` VALUES (2471, 1739, 0, 0, 0, 0, '提交订单', 1537857049, '提交订单');
INSERT INTO `store_order_action` VALUES (2472, 1740, 0, 0, 0, 0, '提交订单', 1537857255, '提交订单');
INSERT INTO `store_order_action` VALUES (2473, 1741, 0, 0, 0, 0, '提交订单', 1537858164, '提交订单');
INSERT INTO `store_order_action` VALUES (2474, 1742, 0, 0, 0, 0, '提交订单', 1537858183, '提交订单');
INSERT INTO `store_order_action` VALUES (2475, 1743, 0, 0, 0, 0, '提交订单', 1537859564, '提交订单');
INSERT INTO `store_order_action` VALUES (2476, 1744, 0, 0, 0, 0, '提交订单', 1537984972, '提交订单');
INSERT INTO `store_order_action` VALUES (2477, 1745, 0, 0, 0, 0, '提交订单', 1537985784, '提交订单');
INSERT INTO `store_order_action` VALUES (2478, 1746, 0, 0, 0, 0, '提交订单', 1537985891, '提交订单');
INSERT INTO `store_order_action` VALUES (2479, 1747, 0, 0, 0, 0, '提交订单', 1537986005, '提交订单');
INSERT INTO `store_order_action` VALUES (2480, 1748, 0, 0, 0, 0, '提交订单', 1537986071, '提交订单');
INSERT INTO `store_order_action` VALUES (2481, 1749, 0, 0, 0, 0, '提交订单', 1537986166, '提交订单');
INSERT INTO `store_order_action` VALUES (2482, 1750, 0, 0, 0, 0, '提交订单', 1537986239, '提交订单');
INSERT INTO `store_order_action` VALUES (2483, 1751, 0, 0, 0, 0, '提交订单', 1538017689, '提交订单');
INSERT INTO `store_order_action` VALUES (2484, 1752, 0, 0, 0, 0, '提交订单', 1538020131, '提交订单');
INSERT INTO `store_order_action` VALUES (2485, 1753, 0, 0, 0, 0, '提交订单', 1538028524, '提交订单');
INSERT INTO `store_order_action` VALUES (2486, 1754, 0, 0, 0, 0, '提交订单', 1538029012, '提交订单');
INSERT INTO `store_order_action` VALUES (2487, 1755, 0, 0, 0, 0, '提交订单', 1538029150, '提交订单');
INSERT INTO `store_order_action` VALUES (2488, 1756, 0, 0, 0, 0, '提交订单', 1538029324, '提交订单');
INSERT INTO `store_order_action` VALUES (2489, 1757, 0, 0, 0, 0, '提交订单', 1538029374, '提交订单');
INSERT INTO `store_order_action` VALUES (2490, 1759, 0, 0, 0, 0, '提交订单', 1538029913, '提交订单');
INSERT INTO `store_order_action` VALUES (2491, 1760, 0, 0, 0, 0, '提交订单', 1538030053, '提交订单');
INSERT INTO `store_order_action` VALUES (2492, 1761, 0, 0, 0, 0, '提交订单', 1538030112, '提交订单');
INSERT INTO `store_order_action` VALUES (2493, 1762, 0, 0, 0, 0, '提交订单', 1538031214, '提交订单');
INSERT INTO `store_order_action` VALUES (2494, 1763, 0, 0, 0, 0, '提交订单', 1538032281, '提交订单');
INSERT INTO `store_order_action` VALUES (2495, 1764, 0, 0, 0, 0, '提交订单', 1538118400, '提交订单');
INSERT INTO `store_order_action` VALUES (2496, 1765, 0, 0, 0, 0, '提交订单', 1539021632, '提交订单');
INSERT INTO `store_order_action` VALUES (2497, 1766, 0, 0, 0, 0, '提交订单', 1539021653, '提交订单');
INSERT INTO `store_order_action` VALUES (2498, 1807, 0, 0, 0, 0, '提交订单', 1539050142, '提交订单');
INSERT INTO `store_order_action` VALUES (2499, 1824, 0, 0, 0, 0, '提交订单', 1539070576, '提交订单');
INSERT INTO `store_order_action` VALUES (2500, 1825, 0, 0, 0, 0, '提交订单', 1539085347, '提交订单');
INSERT INTO `store_order_action` VALUES (2501, 1826, 0, 0, 0, 0, '提交订单', 1539202763, '提交订单');
INSERT INTO `store_order_action` VALUES (2502, 1827, 0, 0, 0, 0, '提交订单', 1539202903, '提交订单');
INSERT INTO `store_order_action` VALUES (2503, 1828, 0, 0, 0, 0, '提交订单', 1539203031, '提交订单');
INSERT INTO `store_order_action` VALUES (2504, 1829, 0, 0, 0, 0, '提交订单', 1539203175, '提交订单');
INSERT INTO `store_order_action` VALUES (2505, 1830, 0, 0, 0, 0, '提交订单', 1539221033, '提交订单');
INSERT INTO `store_order_action` VALUES (2506, 1831, 0, 0, 0, 0, '提交订单', 1539221242, '提交订单');
INSERT INTO `store_order_action` VALUES (2507, 1832, 0, 0, 0, 0, '提交订单', 1539221608, '提交订单');
INSERT INTO `store_order_action` VALUES (2508, 1833, 0, 0, 0, 0, '提交订单', 1539221713, '提交订单');
INSERT INTO `store_order_action` VALUES (2509, 1834, 0, 0, 0, 0, '提交订单', 1539222188, '提交订单');
INSERT INTO `store_order_action` VALUES (2510, 1835, 0, 0, 0, 0, '提交订单', 1539226781, '提交订单');
INSERT INTO `store_order_action` VALUES (2511, 1836, 0, 0, 0, 0, '提交订单', 1539227751, '提交订单');
INSERT INTO `store_order_action` VALUES (2512, 1837, 0, 0, 0, 0, '提交订单', 1539227776, '提交订单');
INSERT INTO `store_order_action` VALUES (2513, 1838, 0, 0, 0, 0, '提交订单', 1539227883, '提交订单');
INSERT INTO `store_order_action` VALUES (2514, 1839, 0, 0, 0, 0, '提交订单', 1539229117, '提交订单');
INSERT INTO `store_order_action` VALUES (2515, 1840, 0, 0, 0, 0, '提交订单', 1539229166, '提交订单');
INSERT INTO `store_order_action` VALUES (2516, 1841, 0, 0, 0, 0, '提交订单', 1539236921, '提交订单');
INSERT INTO `store_order_action` VALUES (2517, 1842, 0, 0, 0, 0, '提交订单', 1539237126, '提交订单');
INSERT INTO `store_order_action` VALUES (2518, 1843, 0, 0, 0, 0, '提交订单', 1539237440, '提交订单');
INSERT INTO `store_order_action` VALUES (2519, 1844, 0, 0, 0, 0, '提交订单', 1539239633, '提交订单');
INSERT INTO `store_order_action` VALUES (2520, 1845, 0, 0, 0, 0, '提交订单', 1539240265, '提交订单');
INSERT INTO `store_order_action` VALUES (2521, 1846, 0, 0, 0, 0, '提交订单', 1539243144, '提交订单');
INSERT INTO `store_order_action` VALUES (2522, 1847, 0, 0, 0, 0, '提交订单', 1539243174, '提交订单');
INSERT INTO `store_order_action` VALUES (2523, 1848, 0, 0, 0, 0, '提交订单', 1539243178, '提交订单');
INSERT INTO `store_order_action` VALUES (2524, 1849, 0, 0, 0, 0, '提交订单', 1539243185, '提交订单');
INSERT INTO `store_order_action` VALUES (2525, 1850, 0, 0, 0, 0, '提交订单', 1539243850, '提交订单');
INSERT INTO `store_order_action` VALUES (2526, 1851, 0, 0, 0, 0, '提交订单', 1539243886, '提交订单');
INSERT INTO `store_order_action` VALUES (2527, 1852, 0, 0, 0, 0, '提交订单', 1539243926, '提交订单');
INSERT INTO `store_order_action` VALUES (2528, 1853, 0, 0, 0, 0, '提交订单', 1539244179, '提交订单');
INSERT INTO `store_order_action` VALUES (2529, 1854, 0, 0, 0, 0, '提交订单', 1539244316, '提交订单');
INSERT INTO `store_order_action` VALUES (2530, 1855, 0, 0, 0, 0, '提交订单', 1539351145, '提交订单');
INSERT INTO `store_order_action` VALUES (2531, 1856, 0, 0, 0, 0, '提交订单', 1540269401, '提交订单');

-- ----------------------------
-- Table structure for store_order_express
-- ----------------------------
DROP TABLE IF EXISTS `store_order_express`;
CREATE TABLE `store_order_express`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员ID',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '快递类型(0.订单快递,1.退货快递)',
  `order_no` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `company_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流公司名称',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流公司编码',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货手机号',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址城市',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址区域',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货详细地址',
  `send_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实际物流公司单号',
  `send_company_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实际发货快递公司',
  `send_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实际发货快递代码',
  `send_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人名称',
  `send_phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人手机号',
  `send_province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人地址省份',
  `send_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人地址城市',
  `send_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人地址区域',
  `send_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人详细地址',
  `send_at` datetime(0) NULL DEFAULT NULL COMMENT '快递发货时间',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '发货描述',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0.无效,1.新快递,2.已签收,3.签收失败)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城订单快递' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for store_order_feiqi
-- ----------------------------
DROP TABLE IF EXISTS `store_order_feiqi`;
CREATE TABLE `store_order_feiqi`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '订单类型(1普通订单,2积分订单)',
  `mid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员ID',
  `order_no` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单号',
  `freight_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '快递费',
  `goods_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '商品总金额(不含快递费)',
  `real_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '真实支付金额(商品金额+快递金额)',
  `is_pay` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '订单支付状态(0.未支付,1.已支付)',
  `pay_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '支付方式 (wechat微信支付, alipay支付宝支付)',
  `pay_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商户交易号',
  `pay_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '实际支付金额',
  `pay_at` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '订单描述',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '订单状态(0.无效,1.新订单,2.待发货,3.已发货,4.已收货,5.已完成,6.已退货及退款)',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_store_order_order_no`(`order_no`) USING BTREE,
  INDEX `index_store_order_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城订单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for store_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_order_goods`;
CREATE TABLE `store_order_goods`  (
  `rec_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id自增',
  `order_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单id',
  `goods_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `goods_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goods_sn` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品货号',
  `goods_num` smallint(5) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购买数量',
  `market_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `goods_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '本店价(供货价)',
  `cost_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '商品成本价',
  `member_goods_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '会员折扣价',
  `give_integral` mediumint(8) UNSIGNED NULL DEFAULT 0 COMMENT '购买商品赠送积分',
  `spec_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格key',
  `spec_key_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '规格对应的中文名字',
  `bar_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '条码',
  `is_comment` tinyint(1) NULL DEFAULT 0 COMMENT '是否评价',
  `prom_type` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '0 普通订单,1 限时抢购, 2 团购 , 3 促销优惠,4预售',
  `prom_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '活动id',
  `is_send` tinyint(1) NULL DEFAULT 0 COMMENT '0未发货，1已发货，2已换货，3已退货',
  `delivery_id` int(11) NULL DEFAULT 0 COMMENT '发货单ID',
  `sku` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'sku',
  PRIMARY KEY (`rec_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2178 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品表与订单主表关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_order_goods
-- ----------------------------
INSERT INTO `store_order_goods` VALUES (2170, 1865, 4, '小米8青春', '', '#10078', 2, 0.00, 80.00, 0.00, 0.00, 0, '8_11', '尺寸:300*500cm 颜色:黑色', '', 0, 0, 0, 0, 0, '');
INSERT INTO `store_order_goods` VALUES (2171, 1865, 4, '小米8青春', '', '#10078', 3, 0.00, 90.00, 0.00, 0.00, 0, '8_12', '尺寸:300*500cm 颜色:紫色', '', 0, 0, 0, 0, 0, '');
INSERT INTO `store_order_goods` VALUES (2172, 1866, 4, '小米8青春', '', '#10078', 2, 0.00, 80.00, 0.00, 0.00, 0, '8_11', '尺寸:300*500cm 颜色:黑色', '', 0, 0, 0, 0, 0, '');
INSERT INTO `store_order_goods` VALUES (2173, 1866, 4, '小米8青春', '', '#10078', 3, 0.00, 90.00, 0.00, 0.00, 0, '8_12', '尺寸:300*500cm 颜色:紫色', '', 0, 0, 0, 0, 0, '');
INSERT INTO `store_order_goods` VALUES (2174, 1867, 4, '小米8青春', 'https://admin.mijia321.com/static/upload/5941400cd87c37bb/c838a50cd6e02bc9.jpg', '#10078', 2, 0.00, 80.00, 0.00, 0.00, 0, '8_11', '尺寸:300*500cm 颜色:黑色', '', 0, 0, 0, 0, 0, '');
INSERT INTO `store_order_goods` VALUES (2175, 1867, 4, '小米8青春', 'https://admin.mijia321.com/static/upload/5941400cd87c37bb/c838a50cd6e02bc9.jpg', '#10078', 3, 0.00, 90.00, 0.00, 0.00, 0, '8_12', '尺寸:300*500cm 颜色:紫色', '', 0, 0, 0, 0, 0, '');
INSERT INTO `store_order_goods` VALUES (2176, 1868, 4, '小米8青春', 'https://admin.mijia321.com/static/upload/5941400cd87c37bb/c838a50cd6e02bc9.jpg', '#10078', 2, 0.00, 80.00, 0.00, 0.00, 0, '8_11', '尺寸:300*500cm 颜色:黑色', '', 0, 0, 0, 0, 0, '');
INSERT INTO `store_order_goods` VALUES (2177, 1868, 4, '小米8青春', 'https://admin.mijia321.com/static/upload/5941400cd87c37bb/c838a50cd6e02bc9.jpg', '#10078', 3, 0.00, 90.00, 0.00, 0.00, 0, '8_12', '尺寸:300*500cm 颜色:紫色', '', 0, 0, 0, 0, 0, '');

-- ----------------------------
-- Table structure for store_order_goods_remark
-- ----------------------------
DROP TABLE IF EXISTS `store_order_goods_remark`;
CREATE TABLE `store_order_goods_remark`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '订单id',
  `goods_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '商品id',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品备注表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_order_goods_remark
-- ----------------------------
INSERT INTO `store_order_goods_remark` VALUES (1, 1654, 5, '备注1111');
INSERT INTO `store_order_goods_remark` VALUES (2, 1654, 6, '备注1111');
INSERT INTO `store_order_goods_remark` VALUES (3, 1693, 4, '这是备注这是备注');
INSERT INTO `store_order_goods_remark` VALUES (4, 1712, 4, '这是备注这是备注');
INSERT INTO `store_order_goods_remark` VALUES (5, 1742, 4, '这是备注这是备注');
INSERT INTO `store_order_goods_remark` VALUES (6, 1759, 5, '2222');
INSERT INTO `store_order_goods_remark` VALUES (7, 1760, 5, '222');
INSERT INTO `store_order_goods_remark` VALUES (8, 1761, 5, '2222');
INSERT INTO `store_order_goods_remark` VALUES (9, 1762, 4, '测试数据');
INSERT INTO `store_order_goods_remark` VALUES (10, 1763, 4, '222');
INSERT INTO `store_order_goods_remark` VALUES (11, 1824, 4, '11');

-- ----------------------------
-- Table structure for store_payment
-- ----------------------------
DROP TABLE IF EXISTS `store_payment`;
CREATE TABLE `store_payment`  (
  `pay_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `pay_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付code',
  `pay_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `pay_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手续费',
  `pay_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `pay_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'pay_coder',
  `pay_config` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '开启',
  `is_cod` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否货到付款',
  `is_online` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否在线支付',
  PRIMARY KEY (`pay_id`) USING BTREE,
  UNIQUE INDEX `pay_code`(`pay_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付方式表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for store_points_money_log
-- ----------------------------
DROP TABLE IF EXISTS `store_points_money_log`;
CREATE TABLE `store_points_money_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `order_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '关联的订单id 充值d订单或者消费订单',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '所有者的用户id',
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '积分或者红包日志标题',
  `points_number` int(11) NOT NULL DEFAULT 0 COMMENT '积分变动数量，亿级',
  `money_number` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '红包变动数量，亿级',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '会员红包或者积分变动类型：1支入，2-支出',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分/余额日志(流水)表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_points_money_log
-- ----------------------------
INSERT INTO `store_points_money_log` VALUES (50, 141, 1, '现金充值', 0, 1000.00, 1, 1533130821);
INSERT INTO `store_points_money_log` VALUES (51, 0, 1, '进货支出', 0, 836.00, 2, 1533389358);
INSERT INTO `store_points_money_log` VALUES (52, 0, 1, '进货支出', 0, 70.40, 2, 1536831708);
INSERT INTO `store_points_money_log` VALUES (53, 170, 7, '现金充值', 0, 55.00, 1, 1537262933);
INSERT INTO `store_points_money_log` VALUES (54, 171, 7, '现金充值', 0, 555.00, 1, 1537262992);
INSERT INTO `store_points_money_log` VALUES (55, 0, 7, '管理员调整金额', 0, 100.00, 1, 1537319509);
INSERT INTO `store_points_money_log` VALUES (56, 199, 3, '现金充值', 0, 200.00, 1, 1537424017);
INSERT INTO `store_points_money_log` VALUES (57, 0, 2, '进货支出', 0, 110.00, 2, 1537794698);
INSERT INTO `store_points_money_log` VALUES (58, 202, 2, '现金充值', 0, 100.00, 1, 1537797272);
INSERT INTO `store_points_money_log` VALUES (59, 0, 3, '管理员调整金额', 0, 20000.00, 1, 1537857224);
INSERT INTO `store_points_money_log` VALUES (60, 0, 3, '进货支出', 0, 0.00, 2, 1537857258);
INSERT INTO `store_points_money_log` VALUES (61, 0, 3, '进货支出', 0, 233.00, 2, 1537859567);
INSERT INTO `store_points_money_log` VALUES (62, 0, 2, '进货支出', 0, 110.00, 2, 1537985787);
INSERT INTO `store_points_money_log` VALUES (63, 0, 2, '进货支出', 0, 110.00, 2, 1537985893);
INSERT INTO `store_points_money_log` VALUES (64, 0, 2, '进货支出', 0, 110.00, 2, 1537986007);
INSERT INTO `store_points_money_log` VALUES (65, 0, 2, '进货支出', 0, 110.00, 2, 1537986073);
INSERT INTO `store_points_money_log` VALUES (66, 0, 2, '进货支出', 0, 110.00, 2, 1537986169);
INSERT INTO `store_points_money_log` VALUES (67, 0, 2, '进货支出', 0, 110.00, 2, 1537986241);
INSERT INTO `store_points_money_log` VALUES (68, 0, 3, '进货支出', 0, 211.00, 2, 1538017693);
INSERT INTO `store_points_money_log` VALUES (69, 0, 3, '进货支出', 0, 80.00, 2, 1538020135);
INSERT INTO `store_points_money_log` VALUES (70, 0, 2, '进货支出', 0, 110.00, 2, 1538028526);
INSERT INTO `store_points_money_log` VALUES (71, 0, 2, '进货支出', 0, 110.00, 2, 1538029015);
INSERT INTO `store_points_money_log` VALUES (72, 0, 2, '进货支出', 0, 110.00, 2, 1538029152);
INSERT INTO `store_points_money_log` VALUES (73, 0, 2, '进货支出', 0, 110.00, 2, 1538029326);
INSERT INTO `store_points_money_log` VALUES (74, 0, 2, '进货支出', 0, 110.00, 2, 1538029376);
INSERT INTO `store_points_money_log` VALUES (75, 0, 2, '进货支出', 0, 110.00, 2, 1538029916);
INSERT INTO `store_points_money_log` VALUES (76, 0, 2, '进货支出', 0, 110.00, 2, 1538030055);
INSERT INTO `store_points_money_log` VALUES (77, 0, 2, '进货支出', 0, 110.00, 2, 1538030114);
INSERT INTO `store_points_money_log` VALUES (78, 0, 3, '进货支出', 0, 80.00, 2, 1538031217);
INSERT INTO `store_points_money_log` VALUES (79, 0, 2, '进货支出', 0, 80.00, 2, 1538032284);
INSERT INTO `store_points_money_log` VALUES (80, 0, 7, '进货支出', 0, 170.00, 2, 1538040934);
INSERT INTO `store_points_money_log` VALUES (81, 0, 7, '进货支出', 0, 52.00, 2, 1538118403);
INSERT INTO `store_points_money_log` VALUES (82, 0, 7, '进货支出', 0, 430.00, 2, 1538119947);
INSERT INTO `store_points_money_log` VALUES (83, 0, 7, '管理员调整金额', 0, 10000.00, 1, 1538120985);
INSERT INTO `store_points_money_log` VALUES (84, 0, 7, '进货支出', 0, 330.00, 2, 1538121207);
INSERT INTO `store_points_money_log` VALUES (85, 0, 2, '进货支出', 0, 240.00, 2, 1539076535);
INSERT INTO `store_points_money_log` VALUES (86, 0, 2, '进货支出', 0, 100.00, 2, 1539078194);
INSERT INTO `store_points_money_log` VALUES (87, 0, 3, '进货支出', 0, 100.00, 2, 1539220807);
INSERT INTO `store_points_money_log` VALUES (88, 0, 3, '进货支出', 0, 80.00, 2, 1539221246);
INSERT INTO `store_points_money_log` VALUES (89, 0, 2, '进货支出', 0, 110.00, 2, 1539222400);
INSERT INTO `store_points_money_log` VALUES (90, 0, 3, '进货支出', 0, 80.00, 2, 1539227807);
INSERT INTO `store_points_money_log` VALUES (91, 0, 3, '进货支出', 0, 301.00, 2, 1539237129);
INSERT INTO `store_points_money_log` VALUES (92, 0, 7, '进货支出', 0, 196.00, 2, 1539240016);
INSERT INTO `store_points_money_log` VALUES (93, 0, 7, '进货支出', 0, 90.90, 2, 1539243164);
INSERT INTO `store_points_money_log` VALUES (94, 0, 7, '进货支出', 0, 90.90, 2, 1539243181);
INSERT INTO `store_points_money_log` VALUES (95, 0, 7, '进货支出', 0, 90.90, 2, 1539243187);
INSERT INTO `store_points_money_log` VALUES (96, 0, 7, '进货支出', 0, 110.70, 2, 1539243862);
INSERT INTO `store_points_money_log` VALUES (97, 0, 7, '进货支出', 0, 110.70, 2, 1539243889);
INSERT INTO `store_points_money_log` VALUES (98, 0, 7, '进货支出', 0, 288.00, 2, 1539244318);

-- ----------------------------
-- Table structure for store_recharge
-- ----------------------------
DROP TABLE IF EXISTS `store_recharge`;
CREATE TABLE `store_recharge`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '充值转账来源1-充值 2-转账',
  `method_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '充值方式id',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '会员ID',
  `order_sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '充值单号',
  `screen_pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '转账截图',
  `account` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '充值金额',
  `status_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '审核日期',
  `ctime` int(11) NULL DEFAULT NULL COMMENT '充值时间',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '充值状态0:审核中 1:审核成功 2-审核失败',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 283 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值或转账订单记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_recharge
-- ----------------------------
INSERT INTO `store_recharge` VALUES (141, 1, 1, 1, '2018072521201787160', 'http://www.testxcx.com/static/upload/a1b7f6d005e2c1b2/9729f24657ecbf46.png', 1000.00, 1533130821, 1532524817, 1, '');
INSERT INTO `store_recharge` VALUES (142, 2, 1, 1, '2018072521562425007', 'http://www.testxcx.com/static/upload/a1b7f6d005e2c1b2/9729f24657ecbf46.png', 1000.00, 1533203680, 1532526984, 1, '');
INSERT INTO `store_recharge` VALUES (143, 2, 1, 1, '22222222', 'http://www.testxcx.com/static/upload/a1b7f6d005e2c1b2/9729f24657ecbf46.png', 210.00, 1533217816, 1532524817, 1, '');
INSERT INTO `store_recharge` VALUES (144, 1, 1, 1, '2018091116242898946', '44444', 20.00, 0, 1536654268, 0, '');
INSERT INTO `store_recharge` VALUES (145, 1, 1, 1, '2018091216463054486', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.pL7yPXjn09HO1913000c96bffd795d7168711de47390.jpg', 222.00, 0, 1536741990, 0, '');
INSERT INTO `store_recharge` VALUES (146, 1, 1, 1, '2018091216520591714', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.kO9rTfHcIPvl1913000c96bffd795d7168711de47390.jpg', 20.00, 0, 1536742325, 0, '');
INSERT INTO `store_recharge` VALUES (147, 1, 1, 1, '2018091217024053205', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.TIsEKvKob8ow1913000c96bffd795d7168711de47390.jpg', 222.00, 0, 1536742960, 0, '');
INSERT INTO `store_recharge` VALUES (148, 2, 1, 1, '2018091416571541000', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.fbiUd38daQFf1913000c96bffd795d7168711de47390.jpg', 54552.00, 0, 1536915435, 0, '');
INSERT INTO `store_recharge` VALUES (149, 2, 1, 1, '2018091417002144757', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.QRDta7fyNB8U1913000c96bffd795d7168711de47390.jpg', 100.00, 0, 1536915621, 0, '');
INSERT INTO `store_recharge` VALUES (150, 1, 1, 1, '2018091417013329502', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.CilfRtadn4cb1913000c96bffd795d7168711de47390.jpg', 1.00, 0, 1536915693, 0, '');
INSERT INTO `store_recharge` VALUES (151, 2, 1, 1, '2018091417025096546', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.tMJCI9srzrl71913000c96bffd795d7168711de47390.jpg', 20.00, 0, 1536915770, 0, '');
INSERT INTO `store_recharge` VALUES (152, 2, 1, 1, '2018091417041260095', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.NU523ND6kIsd1913000c96bffd795d7168711de47390.jpg', 1.00, 0, 1536915852, 0, '');
INSERT INTO `store_recharge` VALUES (153, 2, 1, 1, '2018091417045742350', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.YFAWQrkrKp8i1913000c96bffd795d7168711de47390.jpg', 12.00, 0, 1536915897, 0, '');
INSERT INTO `store_recharge` VALUES (154, 2, 1, 1, '2018091417055015996', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.r8r7aJf6GG7o1913000c96bffd795d7168711de47390.jpg', 1.00, 0, 1536915950, 0, '');
INSERT INTO `store_recharge` VALUES (155, 2, 1, 1, '2018091417063832184', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.1p03bCF15H9H1913000c96bffd795d7168711de47390.jpg', 1.00, 0, 1536915998, 0, '');
INSERT INTO `store_recharge` VALUES (156, 2, 1, 1, '2018091417104693413', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.UOeCnQ6E3utj1913000c96bffd795d7168711de47390.jpg', 12.00, 0, 1536916246, 0, '');
INSERT INTO `store_recharge` VALUES (157, 2, 1, 1, '2018091601070954685', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.8SyF62MEwCA6bd0c4d9c4d21e67a4186bff85361a1bd.png', 2222.00, 0, 1537031229, 0, '');
INSERT INTO `store_recharge` VALUES (158, 2, 1, 1, '2018091601114382039', 'http://tmp/wx7716525cc7f1f490.o6zAJs19nsgod_IKqSrtW8bTgtw8.zdyyN6BF5GYgbd0c4d9c4d21e67a4186bff85361a1bd.png', 1111.00, 0, 1537031503, 0, '');
INSERT INTO `store_recharge` VALUES (159, 2, 1, 7, '2018091811090198115', 'wxfile://tmp_ab866540729f591c2c8a0ea2c59ddddd.jpg', 666.00, 0, 1537240141, 0, '');
INSERT INTO `store_recharge` VALUES (160, 2, 1, 7, '2018091811090461091', 'wxfile://tmp_ab866540729f591c2c8a0ea2c59ddddd.jpg', 666.00, 0, 1537240144, 0, '');
INSERT INTO `store_recharge` VALUES (161, 2, 1, 7, '2018091811090526094', 'wxfile://tmp_ab866540729f591c2c8a0ea2c59ddddd.jpg', 666.00, 0, 1537240145, 0, '');
INSERT INTO `store_recharge` VALUES (162, 2, 1, 7, '2018091811090540420', 'wxfile://tmp_ab866540729f591c2c8a0ea2c59ddddd.jpg', 666.00, 0, 1537240145, 0, '');
INSERT INTO `store_recharge` VALUES (163, 2, 1, 7, '2018091811090632015', 'wxfile://tmp_ab866540729f591c2c8a0ea2c59ddddd.jpg', 666.00, 0, 1537240146, 0, '');
INSERT INTO `store_recharge` VALUES (164, 2, 1, 7, '2018091811090683373', 'wxfile://tmp_ab866540729f591c2c8a0ea2c59ddddd.jpg', 666.00, 0, 1537240146, 0, '');
INSERT INTO `store_recharge` VALUES (165, 2, 3, 7, '2018091815595949122', 'wxfile://tmp_2b93bb4edc3cb181b5326858046ee8ef.jpg', 55.00, 0, 1537257599, 0, '');
INSERT INTO `store_recharge` VALUES (166, 2, 3, 7, '2018091816000095059', 'wxfile://tmp_2b93bb4edc3cb181b5326858046ee8ef.jpg', 55.00, 0, 1537257600, 0, '');
INSERT INTO `store_recharge` VALUES (167, 2, 3, 7, '2018091816000021704', 'wxfile://tmp_2b93bb4edc3cb181b5326858046ee8ef.jpg', 55.00, 0, 1537257600, 0, '');
INSERT INTO `store_recharge` VALUES (168, 2, 3, 7, '2018091816000058740', 'wxfile://tmp_2b93bb4edc3cb181b5326858046ee8ef.jpg', 55.00, 0, 1537257600, 0, '');
INSERT INTO `store_recharge` VALUES (169, 2, 3, 7, '2018091816000193312', 'wxfile://tmp_2b93bb4edc3cb181b5326858046ee8ef.jpg', 55.00, 0, 1537257601, 0, '');
INSERT INTO `store_recharge` VALUES (170, 1, 3, 7, '2018091817284050141', 'wxfile://tmp_7d9046993b3ce5874a97d7181f32edbc.jpg', 55.00, 1537262933, 1537262920, 1, '');
INSERT INTO `store_recharge` VALUES (171, 1, 3, 7, '2018091817293620480', 'wxfile://tmp_7d9046993b3ce5874a97d7181f32edbc.jpg', 555.00, 1537262992, 1537262976, 1, '');
INSERT INTO `store_recharge` VALUES (172, 2, 1, 3, '2018091819433560933', 'wxfile://tmp_81bbdc3837e3710feac533b44b3c484ec08c8dc2355b666e.jpg', 200.00, 0, 1537271015, 0, '');
INSERT INTO `store_recharge` VALUES (173, 2, 1, 3, '2018091819433762951', 'wxfile://tmp_81bbdc3837e3710feac533b44b3c484ec08c8dc2355b666e.jpg', 200.00, 0, 1537271017, 0, '');
INSERT INTO `store_recharge` VALUES (174, 2, 1, 3, '2018091819433916792', 'wxfile://tmp_81bbdc3837e3710feac533b44b3c484ec08c8dc2355b666e.jpg', 200.00, 0, 1537271019, 0, '');
INSERT INTO `store_recharge` VALUES (175, 2, 1, 7, '2018091910352320633', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324523, 0, '');
INSERT INTO `store_recharge` VALUES (176, 2, 1, 7, '2018091910352478213', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324524, 0, '');
INSERT INTO `store_recharge` VALUES (177, 2, 1, 7, '2018091910354337896', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324543, 0, '');
INSERT INTO `store_recharge` VALUES (178, 2, 1, 7, '2018091910354417138', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324544, 0, '');
INSERT INTO `store_recharge` VALUES (179, 2, 1, 7, '2018091910354440991', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324544, 0, '');
INSERT INTO `store_recharge` VALUES (180, 2, 1, 7, '2018091910354458125', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324544, 0, '');
INSERT INTO `store_recharge` VALUES (181, 2, 1, 7, '2018091910354515121', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324545, 0, '');
INSERT INTO `store_recharge` VALUES (182, 2, 1, 7, '2018091910354694576', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324546, 0, '');
INSERT INTO `store_recharge` VALUES (183, 2, 1, 7, '2018091910354645975', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324546, 0, '');
INSERT INTO `store_recharge` VALUES (184, 2, 1, 7, '2018091910354624038', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324546, 0, '');
INSERT INTO `store_recharge` VALUES (185, 2, 1, 7, '2018091910354756245', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324547, 0, '');
INSERT INTO `store_recharge` VALUES (186, 2, 1, 7, '2018091910354753836', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324547, 0, '');
INSERT INTO `store_recharge` VALUES (187, 2, 1, 7, '2018091910354797918', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324547, 0, '');
INSERT INTO `store_recharge` VALUES (188, 2, 1, 7, '2018091910354862558', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324548, 0, '');
INSERT INTO `store_recharge` VALUES (189, 2, 1, 7, '2018091910354858551', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324548, 0, '');
INSERT INTO `store_recharge` VALUES (190, 2, 1, 7, '2018091910354836930', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324548, 0, '');
INSERT INTO `store_recharge` VALUES (191, 2, 1, 7, '2018091910354886718', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324548, 0, '');
INSERT INTO `store_recharge` VALUES (192, 2, 1, 7, '2018091910354852293', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324548, 0, '');
INSERT INTO `store_recharge` VALUES (193, 2, 1, 7, '2018091910354981091', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324549, 0, '');
INSERT INTO `store_recharge` VALUES (194, 2, 1, 7, '2018091910354920179', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324549, 0, '');
INSERT INTO `store_recharge` VALUES (195, 2, 1, 7, '2018091910354910503', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324549, 0, '');
INSERT INTO `store_recharge` VALUES (196, 2, 1, 7, '2018091910354948435', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324549, 0, '');
INSERT INTO `store_recharge` VALUES (197, 2, 1, 7, '2018091910355058665', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324550, 0, '');
INSERT INTO `store_recharge` VALUES (198, 2, 1, 7, '2018091910355022090', 'wxfile://tmp_0c2443bd8d4269fef8efce03fe112623.jpg', 666.00, 0, 1537324550, 0, '');
INSERT INTO `store_recharge` VALUES (199, 1, 1, 3, '2018092014131652263', 'wxfile://tmp_43e33c30d149550ed5de63ad4021c5643f4ade437e967e06.jpg', 200.00, 1537424017, 1537423996, 1, '');
INSERT INTO `store_recharge` VALUES (200, 2, 1, 2, '2018092418040868449', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.IpSybR8XmbX806d108d22f54a74f8a7f31a359784ca9.jpg', 11.00, 0, 1537783448, 0, '');
INSERT INTO `store_recharge` VALUES (201, 1, 1, 2, '2018092419193225934', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.fC5ZI3UTk2Bj19ad9ba730dbce751d507d3a627e8ae0.png', 22.00, 0, 1537787972, 0, '');
INSERT INTO `store_recharge` VALUES (202, 1, 1, 2, '2018092421540638918', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.hH2jV5YjIhUf2b4faea670d34bc792cf6a3a09b9dbfb.png', 100.00, 1537797272, 1537797246, 1, '');
INSERT INTO `store_recharge` VALUES (203, 2, 1, 3, '2018092514310798536', 'wxfile://tmp_ef99c8a4572b71f7b3db37f710e9b6cad858a187aaa185e2.jpg', 1120.00, 0, 1537857067, 0, '');
INSERT INTO `store_recharge` VALUES (204, 2, 1, 2, '2018092702030377276', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.VRdMca2odWSw527fe3b6065e6df0365d48cf7bafe4d8.png', 3333.00, 0, 1537984983, 0, '');
INSERT INTO `store_recharge` VALUES (205, 2, 1, 2, '2018092702071856939', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.ljEjABH8u7AD527fe3b6065e6df0365d48cf7bafe4d8.png', 22222.00, 0, 1537985238, 0, '');
INSERT INTO `store_recharge` VALUES (206, 2, 1, 7, '2018092811341366563', 'wxfile://tmp_7118cb2c25239a724d75b520af60aabb.jpg', 666.00, 0, 1538105653, 0, '');
INSERT INTO `store_recharge` VALUES (207, 2, 1, 7, '2018092811341415350', 'wxfile://tmp_7118cb2c25239a724d75b520af60aabb.jpg', 666.00, 0, 1538105654, 0, '');
INSERT INTO `store_recharge` VALUES (208, 1, 1, 7, '2018092816034758417', 'wxfile://tmp_6a59d2ba85aa3f88e8d366bcb57b0bae.jpg', 222.00, 0, 1538121827, 0, '');
INSERT INTO `store_recharge` VALUES (209, 1, 2, 7, '2018092816040142732', 'wxfile://tmp_6a59d2ba85aa3f88e8d366bcb57b0bae.jpg', 222.00, 0, 1538121841, 0, '');
INSERT INTO `store_recharge` VALUES (210, 1, 3, 7, '2018092816040755867', 'wxfile://tmp_6a59d2ba85aa3f88e8d366bcb57b0bae.jpg', 222.00, 0, 1538121847, 0, '');
INSERT INTO `store_recharge` VALUES (211, 1, 3, 7, '2018092816042611995', 'wxfile://tmp_6a59d2ba85aa3f88e8d366bcb57b0bae.jpg', 222.00, 0, 1538121866, 0, '');
INSERT INTO `store_recharge` VALUES (212, 1, 1, 7, '2018092816054139928', 'wxfile://tmp_6a59d2ba85aa3f88e8d366bcb57b0bae.jpg', 222.00, 0, 1538121941, 0, '');
INSERT INTO `store_recharge` VALUES (213, 1, 1, 7, '2018092816060244967', 'wxfile://tmp_6a59d2ba85aa3f88e8d366bcb57b0bae.jpg', 222.00, 0, 1538121962, 0, '');
INSERT INTO `store_recharge` VALUES (214, 2, 1, 3, '2018092816275232663', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123272, 0, '');
INSERT INTO `store_recharge` VALUES (215, 2, 1, 3, '2018092816275472798', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123274, 0, '');
INSERT INTO `store_recharge` VALUES (216, 2, 1, 3, '2018092816275475098', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123274, 0, '');
INSERT INTO `store_recharge` VALUES (217, 2, 1, 3, '2018092816275530451', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123275, 0, '');
INSERT INTO `store_recharge` VALUES (218, 2, 1, 3, '2018092816275562259', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123275, 0, '');
INSERT INTO `store_recharge` VALUES (219, 2, 1, 3, '2018092816275589187', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123275, 0, '');
INSERT INTO `store_recharge` VALUES (220, 2, 1, 3, '2018092816275640327', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123276, 0, '');
INSERT INTO `store_recharge` VALUES (221, 2, 1, 3, '2018092816275687067', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123276, 0, '');
INSERT INTO `store_recharge` VALUES (222, 2, 1, 3, '2018092816275689683', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123276, 0, '');
INSERT INTO `store_recharge` VALUES (223, 2, 1, 3, '2018092816275687932', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123276, 0, '');
INSERT INTO `store_recharge` VALUES (224, 2, 1, 3, '2018092816275675178', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123276, 0, '');
INSERT INTO `store_recharge` VALUES (225, 2, 1, 3, '2018092816275662263', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123276, 0, '');
INSERT INTO `store_recharge` VALUES (226, 2, 1, 3, '2018092816275714010', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123277, 0, '');
INSERT INTO `store_recharge` VALUES (227, 2, 1, 3, '2018092816275778584', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123277, 0, '');
INSERT INTO `store_recharge` VALUES (228, 2, 1, 3, '2018092816275785596', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123277, 0, '');
INSERT INTO `store_recharge` VALUES (229, 2, 1, 3, '2018092816275752403', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123277, 0, '');
INSERT INTO `store_recharge` VALUES (230, 2, 1, 3, '2018092816275713791', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123277, 0, '');
INSERT INTO `store_recharge` VALUES (231, 2, 1, 3, '2018092816275770307', 'wxfile://tmp_e0d7c38ffb15b3362b8bf81de96901b8ba39f9e8e0c13d64.jpg', 100.00, 0, 1538123277, 0, '');
INSERT INTO `store_recharge` VALUES (232, 2, 2, 3, '2018100919402528154', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085225, 0, '');
INSERT INTO `store_recharge` VALUES (233, 2, 2, 3, '2018100919403715213', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085237, 0, '');
INSERT INTO `store_recharge` VALUES (234, 2, 2, 3, '2018100919404026051', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085240, 0, '');
INSERT INTO `store_recharge` VALUES (235, 2, 2, 3, '2018100919404057366', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085240, 0, '');
INSERT INTO `store_recharge` VALUES (236, 2, 2, 3, '2018100919404121955', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085241, 0, '');
INSERT INTO `store_recharge` VALUES (237, 2, 2, 3, '2018100919404127052', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085241, 0, '');
INSERT INTO `store_recharge` VALUES (238, 2, 2, 3, '2018100919404171424', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085241, 0, '');
INSERT INTO `store_recharge` VALUES (239, 2, 2, 3, '2018100919404184409', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085241, 0, '');
INSERT INTO `store_recharge` VALUES (240, 2, 2, 3, '2018100919404289690', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085242, 0, '');
INSERT INTO `store_recharge` VALUES (241, 2, 2, 3, '2018100919404286650', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085242, 0, '');
INSERT INTO `store_recharge` VALUES (242, 2, 2, 3, '2018100919404241653', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085242, 0, '');
INSERT INTO `store_recharge` VALUES (243, 2, 2, 3, '2018100919404297411', 'wxfile://tmp_cbb6231ff3721dd8c28af3b8da9f3524065374a6aaffbd44.jpg', 100.00, 0, 1539085242, 0, '');
INSERT INTO `store_recharge` VALUES (244, 2, 1, 3, '2018100919424459376', 'wxfile://tmp_43aed6f9e080a8efa37daf3613ab242ab2bd98dccfa7efca.jpg', 100.00, 0, 1539085364, 0, '');
INSERT INTO `store_recharge` VALUES (245, 2, 2, 2, '2018101104193786384', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.hQsEN5EicO0Rfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539202777, 0, '');
INSERT INTO `store_recharge` VALUES (246, 2, 2, 2, '2018101104215353900', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.FrKMFGUV8tBNfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539202913, 0, '');
INSERT INTO `store_recharge` VALUES (247, 1, 2, 2, '2018101104233254722', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.lveB2YGeTShcfe4792d482196a50cf9ae0d9d90b6493.ico', 2000.00, 0, 1539203012, 0, '');
INSERT INTO `store_recharge` VALUES (248, 2, 2, 2, '2018101104235786730', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.lveB2YGeTShcfe4792d482196a50cf9ae0d9d90b6493.ico', 2000.00, 0, 1539203037, 0, '');
INSERT INTO `store_recharge` VALUES (249, 2, 2, 2, '2018101104262648793', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.A2NKpwiPeiuIfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539203186, 0, '');
INSERT INTO `store_recharge` VALUES (250, 2, 1, 3, '2018101109221826699', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220938, 0, '');
INSERT INTO `store_recharge` VALUES (251, 2, 1, 3, '2018101109222330837', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220943, 0, '');
INSERT INTO `store_recharge` VALUES (252, 2, 1, 3, '2018101109222577741', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220945, 0, '');
INSERT INTO `store_recharge` VALUES (253, 2, 1, 3, '2018101109222675100', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220946, 0, '');
INSERT INTO `store_recharge` VALUES (254, 2, 1, 3, '2018101109222666466', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220946, 0, '');
INSERT INTO `store_recharge` VALUES (255, 2, 1, 3, '2018101109222676622', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220946, 0, '');
INSERT INTO `store_recharge` VALUES (256, 2, 1, 3, '2018101109222670569', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220946, 0, '');
INSERT INTO `store_recharge` VALUES (257, 2, 1, 3, '2018101109222718116', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220947, 0, '');
INSERT INTO `store_recharge` VALUES (258, 2, 1, 3, '2018101109222739735', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220947, 0, '');
INSERT INTO `store_recharge` VALUES (259, 2, 1, 3, '2018101109222734686', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220947, 0, '');
INSERT INTO `store_recharge` VALUES (260, 2, 1, 3, '2018101109222794435', 'wxfile://tmp_e8e57d308070e9468cae6ebfd89089e3b0ac8d5c84d99f8d.jpg', 100.00, 0, 1539220947, 0, '');
INSERT INTO `store_recharge` VALUES (261, 2, 1, 3, '2018101109240884756', 'wxfile://tmp_180f832c87fa49bab5eee3df7c0db97f07575970d6a23477.jpg', 200.00, 0, 1539221048, 0, '');
INSERT INTO `store_recharge` VALUES (262, 2, 1, 3, '2018101109252410942', 'wxfile://tmp_180f832c87fa49bab5eee3df7c0db97f07575970d6a23477.jpg', 200.00, 0, 1539221124, 0, '');
INSERT INTO `store_recharge` VALUES (263, 2, 1, 3, '2018101109252665649', 'wxfile://tmp_180f832c87fa49bab5eee3df7c0db97f07575970d6a23477.jpg', 200.00, 0, 1539221126, 0, '');
INSERT INTO `store_recharge` VALUES (264, 2, 1, 3, '2018101109432450346', 'wxfile://tmp_2ddb35191019a2efb82d7be7c800f9022f5158fb35dc3526.jpg', 200.00, 0, 1539222204, 0, '');
INSERT INTO `store_recharge` VALUES (265, 2, 1, 3, '2018101109433522041', 'wxfile://tmp_2ddb35191019a2efb82d7be7c800f9022f5158fb35dc3526.jpg', 200.00, 0, 1539222215, 0, '');
INSERT INTO `store_recharge` VALUES (266, 2, 2, 2, '2018101109473840491', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.bQaBw9jeLjr3fe4792d482196a50cf9ae0d9d90b6493.ico', 100.00, 0, 1539222458, 0, '');
INSERT INTO `store_recharge` VALUES (267, 2, 2, 2, '2018101109500574646', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.Dl5RO1o7Zi14fe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539222605, 0, '');
INSERT INTO `store_recharge` VALUES (268, 2, 2, 2, '2018101109513264321', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.FT01v5KJVG5cfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539222692, 0, '');
INSERT INTO `store_recharge` VALUES (269, 2, 2, 2, '2018101109571376297', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.7OZ8hlTHRpIWfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539223033, 0, '');
INSERT INTO `store_recharge` VALUES (270, 2, 2, 2, '2018101110272715026', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.DhHrw8Q5jmdlfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539224847, 0, '');
INSERT INTO `store_recharge` VALUES (271, 2, 2, 2, '2018101110315084145', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.ILwktDCpuUNHfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539225110, 0, '');
INSERT INTO `store_recharge` VALUES (272, 2, 2, 2, '2018101110390243643', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.C21xvgjqcA3bfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539225542, 0, '');
INSERT INTO `store_recharge` VALUES (273, 2, 3, 7, '2018101111010016227', 'wxfile://tmp_ade18cc26090c39548e7bcbc3a39c89c.jpg', 666.00, 0, 1539226860, 0, '');
INSERT INTO `store_recharge` VALUES (274, 2, 1, 3, '2018101111150483281', 'wxfile://tmp_97985a29deb8d8a90061828cf0f4e0357b0fa56ca9f67e0f.jpg', 100.00, 0, 1539227704, 0, '');
INSERT INTO `store_recharge` VALUES (275, 2, 2, 2, '2018101111154857359', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.C21xvgjqcA3bfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539227748, 0, '');
INSERT INTO `store_recharge` VALUES (276, 2, 2, 2, '2018101111155177215', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.C21xvgjqcA3bfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539227751, 0, '');
INSERT INTO `store_recharge` VALUES (277, 2, 2, 2, '2018101111222854904', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.Ibep4iVgLUw3fe4792d482196a50cf9ae0d9d90b6493.ico', 11.00, 0, 1539228148, 0, '');
INSERT INTO `store_recharge` VALUES (278, 2, 2, 2, '2018101111234447257', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.n7P3GpiuLTQLfe4792d482196a50cf9ae0d9d90b6493.ico', 2222.00, 0, 1539228224, 0, '');
INSERT INTO `store_recharge` VALUES (279, 2, 2, 2, '2018101111284767607', 'http://tmp/wx604d2ea4702620d2.o6zAJs19nsgod_IKqSrtW8bTgtw8.ZOqeojEMs9kxfe4792d482196a50cf9ae0d9d90b6493.ico', 200.00, 0, 1539228527, 0, '');
INSERT INTO `store_recharge` VALUES (280, 2, 2, 2, '2018101111301854933', 'wxfile://tmp_47519b5898c16810f8e745df1779208d.jpg', 200.00, 0, 1539228618, 0, '');
INSERT INTO `store_recharge` VALUES (281, 2, 2, 7, '2018101117001959485', 'wxfile://tmp_bdc4fd6dd37c23886b5bfa4579bc6206.jpg', 222.00, 0, 1539248419, 0, '');
INSERT INTO `store_recharge` VALUES (282, 2, 2, 2, '2018101221330092747', 'wxfile://tmp_79861cf3349cc300460ed02318a258f2.jpg', 188.00, 0, 1539351180, 0, '');

-- ----------------------------
-- Table structure for store_recharge_methods
-- ----------------------------
DROP TABLE IF EXISTS `store_recharge_methods`;
CREATE TABLE `store_recharge_methods`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '充值方式名称',
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '图标',
  `bank_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '银行名称，type=1才有',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '充值类型1-银行 2微信 3-支付宝',
  `true_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '开户行/微信/支付账户用户姓名',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '银行账户/微信号/支付宝账户',
  `qrcode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '二维码图片，微信与支付宝才有',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值或转账方式表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_recharge_methods
-- ----------------------------
INSERT INTO `store_recharge_methods` VALUES (1, '银行卡', 'https://admin.mijia321.com/static/upload/a7545c0e82713c9b/77136c9c6e7464bc.png', '中国工商银行', 1, '胡鹏', '6222020410017823379', 'http://www.testxcx.com/static/upload/68476a9723d274fa/c269c33cb50405d1.png', 0);
INSERT INTO `store_recharge_methods` VALUES (2, '支付宝', 'https://admin.mijia321.com/static/upload/116fcd8be57b654f/819fa27f2783c6bb.png', '', 3, '胡鹏', 'zhofubao7@qq.com', 'https://admin.mijia321.com/static/upload/f83ef57b64d3144f/4a99cd286d19bc68.png', 2);
INSERT INTO `store_recharge_methods` VALUES (3, '微信', 'https://admin.mijia321.com/static/upload/441cd27dca6547bd/050b68878260fdfd.jpg', '', 2, '胡鹏', '7878wxid_2131231123', 'https://admin.mijia321.com/static/upload/1cc26f0c2b994cbc/3ef1392c3e67ad24.png', 3);

-- ----------------------------
-- Table structure for store_spec
-- ----------------------------
DROP TABLE IF EXISTS `store_spec`;
CREATE TABLE `store_spec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格表',
  `type_id` int(11) NULL DEFAULT 0 COMMENT '规格类型',
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格名称',
  `sort` int(11) NULL DEFAULT 50 COMMENT '排序',
  `search_index` tinyint(1) NULL DEFAULT 1 COMMENT '是否需要检索：1是，0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品规格表(独立)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_spec
-- ----------------------------
INSERT INTO `store_spec` VALUES (3, 39, '尺寸', 50, 1);
INSERT INTO `store_spec` VALUES (4, 39, '颜色', 50, 1);
INSERT INTO `store_spec` VALUES (5, 40, '内存', 50, 1);

-- ----------------------------
-- Table structure for store_spec_goods_price
-- ----------------------------
DROP TABLE IF EXISTS `store_spec_goods_price`;
CREATE TABLE `store_spec_goods_price`  (
  `item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规格商品id',
  `goods_id` int(11) NULL DEFAULT 0 COMMENT '商品id',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '规格键名',
  `key_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '规格键名中文',
  `price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '价格(供货价格)',
  `market_price` double(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '零售价格',
  `store_count` int(11) UNSIGNED NULL DEFAULT 10 COMMENT '库存数量',
  `bar_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '商品条形码',
  `sku` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'SKU',
  `spec_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格商品主图',
  `prom_id` int(10) NULL DEFAULT 0 COMMENT '活动id',
  `prom_type` tinyint(2) NULL DEFAULT 0 COMMENT '参加活动类型',
  PRIMARY KEY (`item_id`) USING BTREE,
  INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品规格关联价格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_spec_goods_price
-- ----------------------------
INSERT INTO `store_spec_goods_price` VALUES (12, 5, '6_10', '尺寸:150*120cm 颜色:红色', 110.00, 0.00, 0, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (13, 5, '6_11', '尺寸:150*120cm 颜色:黑色', 120.00, 0.00, 29, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (14, 5, '7_10', '尺寸:200*230cm 颜色:红色', 101.00, 0.00, 54, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (15, 5, '7_11', '尺寸:200*230cm 颜色:黑色', 99.00, 0.00, 98, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (16, 5, '6_10', '尺寸:150*120cm 颜色:红色', 110.00, 0.00, 0, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (17, 5, '6_11', '尺寸:150*120cm 颜色:黑色', 120.00, 0.00, 29, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (18, 5, '7_10', '尺寸:200*230cm 颜色:红色', 101.00, 0.00, 54, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (19, 5, '7_11', '尺寸:200*230cm 颜色:黑色', 99.00, 0.00, 98, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (20, 5, '6_10', '尺寸:150*120cm 颜色:红色', 110.00, 0.00, 0, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (21, 5, '6_11', '尺寸:150*120cm 颜色:黑色', 120.00, 0.00, 29, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (22, 5, '7_10', '尺寸:200*230cm 颜色:红色', 101.00, 0.00, 54, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (23, 5, '7_11', '尺寸:200*230cm 颜色:黑色', 99.00, 0.00, 98, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (26, 6, '6_9', '尺寸:150*120cm 颜色:白色', 123.00, 0.00, 0, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (27, 6, '6_10', '尺寸:150*120cm 颜色:红色', 123.00, 0.00, 0, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (28, 7, '6', '尺寸:150*120cm', 33.00, 0.00, 1, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (29, 7, '7', '尺寸:200*230cm', 33.00, 0.00, 2, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (30, 8, '6_10', '尺寸:150*120cm 颜色:红色', 111.00, 0.00, 6, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (31, 8, '6_11', '尺寸:150*120cm 颜色:黑色', 222.00, 0.00, 7, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (32, 8, '7_10', '尺寸:200*230cm 颜色:红色', 333.00, 0.00, 8, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (33, 8, '7_11', '尺寸:200*230cm 颜色:黑色', 444.00, 0.00, 9, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (39, 9, '6_9', '尺寸:150*120cm,颜色:白色', 99.00, 0.00, 999, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (40, 9, '6_10', '尺寸:150*120cm,颜色:红色', 99.00, 0.00, 99, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (42, 4, '8_10', '尺寸:300*500cm,颜色:红色', 88.00, 888.00, 8888, '', '', NULL, 0, 0);
INSERT INTO `store_spec_goods_price` VALUES (43, 4, '8_11', '尺寸:300*500cm,颜色:黑色', 80.00, 0.00, 790, '', '', NULL, 0, 0);

-- ----------------------------
-- Table structure for store_spec_image
-- ----------------------------
DROP TABLE IF EXISTS `store_spec_image`;
CREATE TABLE `store_spec_image`  (
  `goods_id` int(11) NULL DEFAULT 0 COMMENT '商品规格图片表id',
  `spec_image_id` int(11) NULL DEFAULT 0 COMMENT '规格项id',
  `src` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '商品规格图片路径'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for store_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `store_spec_item`;
CREATE TABLE `store_spec_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格项id',
  `spec_id` int(11) NULL DEFAULT NULL COMMENT '规格id',
  `item` varchar(54) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格项',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_spec_item
-- ----------------------------
INSERT INTO `store_spec_item` VALUES (6, 3, '150*120cm');
INSERT INTO `store_spec_item` VALUES (7, 3, '200*230cm');
INSERT INTO `store_spec_item` VALUES (8, 3, '300*500cm');
INSERT INTO `store_spec_item` VALUES (9, 4, '白色');
INSERT INTO `store_spec_item` VALUES (10, 4, '红色');
INSERT INTO `store_spec_item` VALUES (11, 4, '黑色');
INSERT INTO `store_spec_item` VALUES (12, 4, '紫色');
INSERT INTO `store_spec_item` VALUES (13, 5, '1G');
INSERT INTO `store_spec_item` VALUES (14, 5, '4G');
INSERT INTO `store_spec_item` VALUES (15, 5, '8G');
INSERT INTO `store_spec_item` VALUES (16, 5, '12G');

-- ----------------------------
-- Table structure for store_substitute
-- ----------------------------
DROP TABLE IF EXISTS `store_substitute`;
CREATE TABLE `store_substitute`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货手机号',
  `city_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '城市信息',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货详细地址',
  `product_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品明细',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代发货表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_substitute
-- ----------------------------
INSERT INTO `store_substitute` VALUES (27, 3, '胡鹏1', '15136175246', '北京市市辖区东城区', '回来了', '啊KKK', 1538033518, NULL);
INSERT INTO `store_substitute` VALUES (28, 3, '胡鹏02', '15136175246', '北京市市辖区东城区', '777', '脾气PSPPS4死g7是', 1538039362, NULL);
INSERT INTO `store_substitute` VALUES (18, 1, '陈星宇01', '15136175249', '河南郑州', '长椿路78号', '777橙色 100*200cm *2', 1536992462, NULL);
INSERT INTO `store_substitute` VALUES (17, 1, '陈星宇', '15136175248', '河南郑州', '长椿路78号', '777橙色 100*200cm *2', 1536992462, NULL);
INSERT INTO `store_substitute` VALUES (16, 1, 'sssss', '15601064107', '北京市市辖区东城区', 'ssd', 'sss', 1536916579, NULL);
INSERT INTO `store_substitute` VALUES (15, 1, '洒水多', '15601064107', '北京市市辖区东城区', '撒大声地所', '所得到的多', 1536916284, NULL);
INSERT INTO `store_substitute` VALUES (58, 7, '经喇嘛', '18818818811', '北京市市辖区东城区', '凝聚力啊', '的，亏你哦', 1539239505, NULL);

-- ----------------------------
-- Table structure for store_substitute_order
-- ----------------------------
DROP TABLE IF EXISTS `store_substitute_order`;
CREATE TABLE `store_substitute_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0 COMMENT '用户id',
  `sub_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代发商品关联id 逗号隔开',
  `order_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `shipping_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流名称',
  `shipping_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流code 单号',
  `shipping_price` decimal(6, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '物流费',
  `product_price` decimal(8, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '产品总价格',
  `order_price` decimal(8, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '订单总价格',
  `order_status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '订单状态0-待确认 1-已确认',
  `pay_method` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式1-微信2-余额3-转账',
  `recharge_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '支付方式为转账的转账id',
  `pay_status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '支付状态 0-待付款 1-已付款',
  `shipping_status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '发货状态 0-未发货 1-已发货 2-已收货',
  `create_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `pay_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '支付时间',
  `shipping_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '发货时间',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '1:删除,0未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代发订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_substitute_order
-- ----------------------------
INSERT INTO `store_substitute_order` VALUES (2, 1, '4,5', '2018072912103852362', '百世快递', '778512356', 10.00, 200.00, 210.00, 1, 3, 143, 1, 2, 1532837438, 1532837438, 1533217816, 0);
INSERT INTO `store_substitute_order` VALUES (3, 1, '14,13,12,11,10,9,8,7,6', '2018091321552194262', '', '', 10.00, 100.00, 110.00, 1, 0, 0, 0, 0, 1536846921, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (4, 7, '21,20,19', '2018091810490577910', '', '', 20.00, 666.00, 686.00, 1, 0, 0, 0, 0, 1537238945, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (5, 3, '22', '2018092014411541512', '', '', 10.00, 100.00, 110.00, 1, 3, 274, 1, 0, 1537425675, 1539227704, 0, 0);
INSERT INTO `store_substitute_order` VALUES (6, 2, '23', '2018092411084283075', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1537758522, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (7, 2, '24', '2018092411100467284', '', '', 0.00, 100.00, 100.00, 1, 3, 275, 1, 0, 1537758604, 1539227748, 0, 0);
INSERT INTO `store_substitute_order` VALUES (8, 3, '26', '2018092715313531353', '', '', 0.00, 100.00, 100.00, 1, 2, 0, 1, 0, 1538033495, 1539220807, 0, 0);
INSERT INTO `store_substitute_order` VALUES (9, 7, '30,29', '2018092816340841424', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1538123648, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (10, 2, '32,25', '2018100822495787026', '顺丰', '11111111', 0.00, 100.00, 100.00, 1, 2, 0, 1, 1, 1539010197, 1539078194, 1539078236, 0);
INSERT INTO `store_substitute_order` VALUES (11, 2, '33', '2018101109432466008', '', '', 0.00, 10.00, 100.00, 1, 3, 272, 1, 0, 1539222204, 1539225542, 0, 0);
INSERT INTO `store_substitute_order` VALUES (12, 2, '36,35,34', '2018101109452787500', '', '', 0.00, 10.00, 10.00, 1, 3, 271, 1, 0, 1539222327, 1539225110, 0, 0);
INSERT INTO `store_substitute_order` VALUES (13, 2, '37', '2018101109453488107', '', '', 10.00, 100.00, 110.00, 1, 2, 0, 1, 0, 1539222334, 1539222400, 0, 0);
INSERT INTO `store_substitute_order` VALUES (14, 2, '38', '2018101109454090587', '', '', 0.00, 100.00, 100.00, 1, 3, 270, 1, 0, 1539222340, 1539224847, 0, 0);
INSERT INTO `store_substitute_order` VALUES (15, 2, '39', '2018101109454856876', '', '', 0.00, 100.00, 100.00, 1, 3, 269, 1, 0, 1539222348, 1539223033, 0, 0);
INSERT INTO `store_substitute_order` VALUES (16, 2, '40', '2018101109455516933', '', '', 0.00, 100.00, 100.00, 1, 3, 268, 1, 0, 1539222355, 1539222693, 0, 0);
INSERT INTO `store_substitute_order` VALUES (17, 2, '41', '2018101111173056123', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539227850, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (18, 2, '42', '2018101111173945932', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539227859, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (19, 2, '43', '2018101111174868230', '', '', 0.00, 100.00, 100.00, 1, 3, 278, 1, 0, 1539227868, 1539228225, 0, 0);
INSERT INTO `store_substitute_order` VALUES (20, 2, '44', '2018101111190744708', '', '', 0.00, 100.00, 100.00, 1, 3, 277, 1, 0, 1539227947, 1539228148, 0, 0);
INSERT INTO `store_substitute_order` VALUES (21, 2, '45', '2018101111260892418', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228368, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (22, 2, '46', '2018101111261418841', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228374, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (23, 2, '47', '2018101111262114139', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228381, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (24, 2, '48', '2018101111262721285', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228387, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (25, 2, '49', '2018101111263239606', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228392, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (26, 2, '50', '2018101111263996688', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228399, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (27, 2, '51', '2018101111264613029', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228406, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (28, 2, '52', '2018101111265289070', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228412, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (29, 2, '53', '2018101111265824902', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228418, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (30, 2, '54', '2018101111270333844', '', '', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 1539228423, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (31, 2, '55', '2018101111270934101', '', '', 0.00, 100.00, 100.00, 1, 0, 0, 0, 0, 1539228429, 0, 0, 0);
INSERT INTO `store_substitute_order` VALUES (32, 2, '56', '2018101111271497542', '', '', 0.00, 100.00, 100.00, 1, 3, 280, 1, 0, 1539228434, 1539228618, 0, 0);
INSERT INTO `store_substitute_order` VALUES (33, 2, '57', '2018101111271978033', '', '', 0.00, 100.00, 100.00, 1, 3, 279, 1, 0, 1539228439, 1539228527, 0, 0);

-- ----------------------------
-- Table structure for store_substitute_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_substitute_order_goods`;
CREATE TABLE `store_substitute_order_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单id',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货手机号',
  `city_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '城市信息',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货详细地址',
  `product_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品明细',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代发订单货物表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_substitute_order_goods
-- ----------------------------
INSERT INTO `store_substitute_order_goods` VALUES (4, 2, 'hupeng012', '15136175246', '河南省郑州市', '78Hao ', '777橙色 100*200cm *2');
INSERT INTO `store_substitute_order_goods` VALUES (5, 2, 'hupeng0123', '15136175246', '河南省郑州市', '78Hao ', '777橙色 100*200cm *2');
INSERT INTO `store_substitute_order_goods` VALUES (6, 3, '陈星宇', '15136175248', '河南郑州', '长椿路78号', '777橙色 100*200cm *2');
INSERT INTO `store_substitute_order_goods` VALUES (7, 3, 'hupeng01234', '15136175246', '河南省郑州市', '78Hao ', '777橙色 100*200cm *2');
INSERT INTO `store_substitute_order_goods` VALUES (8, 3, '陈星宇', '15136175248', '河南郑州', '长椿路78号', '777橙色 100*200cm *2');
INSERT INTO `store_substitute_order_goods` VALUES (9, 3, 'hupeng', '15136175847', '河南郑州', '工商', '产品');
INSERT INTO `store_substitute_order_goods` VALUES (10, 3, '111', '15601064107', '北京市市辖区东城区', '洒水多所', '岁数大');
INSERT INTO `store_substitute_order_goods` VALUES (11, 3, '111', '15601064107', '北京市市辖区东城区', '洒水多所', '岁数大');
INSERT INTO `store_substitute_order_goods` VALUES (12, 3, '111', '15601064107', '北京市市辖区东城区', '洒水多所', '岁数大');
INSERT INTO `store_substitute_order_goods` VALUES (13, 3, '111', '15601064107', '北京市市辖区东城区', '洒水多所', '岁数大');
INSERT INTO `store_substitute_order_goods` VALUES (14, 3, '测试1', '15601010101', '北京市市辖区东城区', 'add1', '#1234 蓝色 180*220cm *1');
INSERT INTO `store_substitute_order_goods` VALUES (15, 4, '林呵呵', '18888888888', '河北省县延庆县', '11', '13');
INSERT INTO `store_substitute_order_goods` VALUES (16, 4, '林呵呵', '18888888888', '河北省县延庆县', '11', '12');
INSERT INTO `store_substitute_order_goods` VALUES (17, 4, '林呵呵', '18888888888', '河北省县延庆县', '11', '11');
INSERT INTO `store_substitute_order_goods` VALUES (18, 5, '胡鹏', '15136175246', '北京市市辖区东城区', '44号', '产品');
INSERT INTO `store_substitute_order_goods` VALUES (19, 6, 'gao', '15601064107', '北京市市辖区东城区', '1111', '111');
INSERT INTO `store_substitute_order_goods` VALUES (20, 7, '1222', '15601064107', '北京市市辖区东城区', '12', '1222');
INSERT INTO `store_substitute_order_goods` VALUES (21, 8, '胡鹏', '15136175246', '北京市市辖区东城区', '回来了', '啊KKK');
INSERT INTO `store_substitute_order_goods` VALUES (22, 9, '来来来', '18888888888', '北京市市辖区东城区', '健健康康快乐', '阿丽坤');
INSERT INTO `store_substitute_order_goods` VALUES (23, 9, '来来来', '18888888885', '北京市市辖区东城区', '健健康康快乐', '阿丽坤');
INSERT INTO `store_substitute_order_goods` VALUES (24, 10, '1', '15601064107', '北京市市辖区东城区', '1', '1');
INSERT INTO `store_substitute_order_goods` VALUES (25, 10, '我的名字', '15601064107', '北京市市辖区东城区', '岁数大', '123');
INSERT INTO `store_substitute_order_goods` VALUES (26, 11, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (27, 12, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (28, 12, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (29, 12, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (30, 13, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (31, 14, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (32, 15, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (33, 16, '11111111', '15601064107', '北京市市辖区东城区', 'q', 'w');
INSERT INTO `store_substitute_order_goods` VALUES (34, 17, '1', '15601064107', '北京市市辖区东城区', '2222', 'qqww');
INSERT INTO `store_substitute_order_goods` VALUES (35, 18, '1', '15601064107', '北京市市辖区东城区', '2222', 'qqww');
INSERT INTO `store_substitute_order_goods` VALUES (36, 19, '1', '15601064107', '北京市市辖区东城区', '2222', 'qqww');
INSERT INTO `store_substitute_order_goods` VALUES (37, 20, '1', '15601064107', '北京市市辖区东城区', '2222', 'qqww');
INSERT INTO `store_substitute_order_goods` VALUES (38, 21, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (39, 22, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (40, 23, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (41, 24, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (42, 25, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (43, 26, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (44, 27, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (45, 28, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (46, 29, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (47, 30, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (48, 31, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (49, 32, '1', '15601010101', '北京市市辖区东城区', '222', '222');
INSERT INTO `store_substitute_order_goods` VALUES (50, 33, '1', '15601010101', '北京市市辖区东城区', '222', '222');

-- ----------------------------
-- Table structure for store_user_level
-- ----------------------------
DROP TABLE IF EXISTS `store_user_level`;
CREATE TABLE `store_user_level`  (
  `level_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `level_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头衔名称',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '等级必要金额',
  `discount` smallint(4) NULL DEFAULT 0 COMMENT '折扣',
  `describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头街 描述',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_user_level
-- ----------------------------
INSERT INTO `store_user_level` VALUES (1, '注册会员', 100.00, 0, '注册会员');
INSERT INTO `store_user_level` VALUES (2, '铜牌会员', 1000.00, 98, '铜牌会员');
INSERT INTO `store_user_level` VALUES (3, '白银会员', 3000.00, 95, '白银会员');
INSERT INTO `store_user_level` VALUES (4, '黄金会员', 5000.00, 92, '黄金会员');
INSERT INTO `store_user_level` VALUES (5, '钻石会员', 10000.00, 90, '钻石会员');
INSERT INTO `store_user_level` VALUES (6, '超级VIP', 20000.00, 88, '超级VIP');

INSERT INTO `sys_menu` VALUES (1062, '商城管理', 0, 4, '#', 'menuItem', 'M', '0', NULL, 'fa fa-shopping-cart', 'admin', '2019-08-22 10:14:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1063, '商城商品分类', 1062, 1, '/shop/cate', '', 'C', '0', 'shop:cate:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '商城商品分类菜单');
INSERT INTO `sys_menu` VALUES (1064, '商城商品分类查询', 1063, 1, '#', '', 'F', '0', 'shop:cate:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1065, '商城商品分类新增', 1063, 2, '#', '', 'F', '0', 'shop:cate:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1066, '商城商品分类修改', 1063, 3, '#', '', 'F', '0', 'shop:cate:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1067, '商城商品分类删除', 1063, 4, '#', '', 'F', '0', 'shop:cate:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1068, '产品品牌', 1062, 1, '/shop/brand', '', 'C', '0', 'shop:brand:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '产品品牌菜单');
INSERT INTO `sys_menu` VALUES (1069, '产品品牌查询', 1068, 1, '#', '', 'F', '0', 'shop:brand:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1070, '产品品牌新增', 1068, 2, '#', '', 'F', '0', 'shop:brand:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1071, '产品品牌修改', 1068, 3, '#', '', 'F', '0', 'shop:brand:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1072, '产品品牌删除', 1068, 4, '#', '', 'F', '0', 'shop:brand:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1073, '商品类型(商品模型)', 1062, 1, '/shop/type', '', 'C', '0', 'shop:type:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '商品类型(商品模型)菜单');
INSERT INTO `sys_menu` VALUES (1074, '商品类型(商品模型)查询', 1073, 1, '#', '', 'F', '0', 'shop:type:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1075, '商品类型(商品模型)新增', 1073, 2, '#', '', 'F', '0', 'shop:type:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1076, '商品类型(商品模型)修改', 1073, 3, '#', '', 'F', '0', 'shop:type:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1077, '商品类型(商品模型)删除', 1073, 4, '#', '', 'F', '0', 'shop:type:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1078, '商品的属性', 1062, 1, '/shop/attribute', '', 'C', '0', 'shop:attribute:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '商品的属性(独立)菜单');
INSERT INTO `sys_menu` VALUES (1079, '商品的属性查询', 1078, 1, '#', '', 'F', '0', 'shop:attribute:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1080, '商品的属性新增', 1078, 2, '#', '', 'F', '0', 'shop:attribute:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1081, '商品的属性修改', 1078, 3, '#', '', 'F', '0', 'shop:attribute:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1082, '商品的属性删除', 1078, 4, '#', '', 'F', '0', 'shop:attribute:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1083, '商品规格', 1062, 1, '/shop/spec', '', 'C', '0', 'shop:spec:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '商品规格(独立)菜单');
INSERT INTO `sys_menu` VALUES (1084, '商品规格查询', 1083, 1, '#', '', 'F', '0', 'shop:spec:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1085, '商品规格新增', 1083, 2, '#', '', 'F', '0', 'shop:spec:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1086, '商品规格修改', 1083, 3, '#', '', 'F', '0', 'shop:spec:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1087, '商品规格删除', 1083, 4, '#', '', 'F', '0', 'shop:spec:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1088, '商品管理', 1062, 1, '/shop/goods', '', 'C', '0', 'shop:goods:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '商品主菜单');
INSERT INTO `sys_menu` VALUES (1089, '商品查询', 1088, 1, '#', '', 'F', '0', 'shop:goods:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1090, '商品新增', 1088, 2, '#', '', 'F', '0', 'shop:goods:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1091, '商品修改', 1088, 3, '#', '', 'F', '0', 'shop:goods:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1092, '商品删除', 1088, 4, '#', '', 'F', '0', 'shop:goods:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1093, '优惠券', 1062, 1, '/shop/coupon', '', 'C', '0', 'shop:coupon:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '优惠券主菜单');
INSERT INTO `sys_menu` VALUES (1094, '优惠券查询', 1093, 1, '#', '', 'F', '0', 'shop:coupon:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1095, '优惠券新增', 1093, 2, '#', '', 'F', '0', 'shop:coupon:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1096, '优惠券修改', 1093, 3, '#', '', 'F', '0', 'shop:coupon:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1097, '优惠券删除', 1093, 4, '#', '', 'F', '0', 'shop:coupon:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1098, '订单管理', 1062, 1, '/shop/order', '', 'C', '0', 'shop:order:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '订单主菜单');
INSERT INTO `sys_menu` VALUES (1099, '订单查询', 1098, 1, '#', '', 'F', '0', 'shop:order:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1100, '订单新增', 1098, 2, '#', '', 'F', '0', 'shop:order:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1101, '订单修改', 1098, 3, '#', '', 'F', '0', 'shop:order:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1102, '订单删除', 1098, 4, '#', '', 'F', '0', 'shop:order:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1103, '会员信息', 1062, 1, '/shop/member', '', 'C', '0', 'shop:member:view', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '商城会员信息菜单');
INSERT INTO `sys_menu` VALUES (1104, '会员信息查询', 1103, 1, '#', '', 'F', '0', 'shop:member:list', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1105, '会员信息新增', 1103, 2, '#', '', 'F', '0', 'shop:member:add', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1106, '会员信息修改', 1103, 3, '#', '', 'F', '0', 'shop:member:edit', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1107, '会员信息删除', 1103, 4, '#', '', 'F', '0', 'shop:member:remove', '#', 'admin', '2018-03-01 00:00:00', 'sunk', '2018-03-01 00:00:00', '');
