package com.sunk.demo.framework.mybatisplus;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.sunk.demo.common.core.domain.BaseEntity;
import com.sunk.demo.framework.util.ShiroUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;

import java.util.Date;

/**
 * @author sunk
 * @date 2020/12/7
 */
@Slf4j
public class CommonMetaObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("自动增充-新增");
        setInsertFieldValByName(BaseEntity.CREATE_BY, ShiroUtils.getLoginName(), metaObject);
        setInsertFieldValByName(BaseEntity.CREATE_TIME, new Date(), metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        log.info("自动填充-更新");
        setUpdateFieldValByName(BaseEntity.UPDATE_BY, ShiroUtils.getLoginName(), metaObject);
        setUpdateFieldValByName(BaseEntity.UPDATE_TIME, new Date(), metaObject);
    }
}
