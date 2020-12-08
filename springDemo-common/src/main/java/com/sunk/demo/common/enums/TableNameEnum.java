package com.sunk.demo.common.enums;

/**
 * 表枚举类
 *
 * @author sunk
 * @date 2020/12/3
 */
public enum TableNameEnum {

    WECHAT_CONFIG("00", "wechat_config"),
    ;

    private String code;

    private String name;

    TableNameEnum(String code, String name){
        this.code = code;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getCode() {
        return code;
    }
}
