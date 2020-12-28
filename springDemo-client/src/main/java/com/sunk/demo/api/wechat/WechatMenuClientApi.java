package com.sunk.demo.api.wechat;

/**
 * 微信菜单相关接口
 *
 * @Author sunk
 * @Date 2020/12/28
 */
public interface WechatMenuClientApi {

    /**
     * 创建菜单
     * @param appid
     * @param secret
     * @param menu
     * @return
     */
    public boolean createMenu(String appid, String secret, String menu);
}
