CREATE TABLE `wechat_config`(
    `id`             bigint(20) NOT NULL COMMENT '主键',
    `app_id`         varchar(64)  DEFAULT NULL COMMENT '微信AppId',
    `app_secret`     varchar(128) DEFAULT NULL COMMENT '微信开发者密码',
    `wx_name`        varchar(200) DEFAULT NULL COMMENT '公众号名称',
    `wx_wechat_code` varchar(100) DEFAULT NULL COMMENT '公众号账号',
    `token`          varchar(200) DEFAULT NULL COMMENT 'token',
    `status`         int(3) DEFAULT NULL COMMENT '状态 0、正常 1、停用',
    `replaycontent`  text COMMENT '关注回复内容',
    `menus`          text COMMENT '菜单',
    `create_by`      varchar(64)  DEFAULT NULL COMMENT '创建者',
    `create_time`    datetime     DEFAULT NULL COMMENT '创建时间',
    `update_by`      varchar(64)  DEFAULT NULL COMMENT '修改者',
    `update_time`    datetime     DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;