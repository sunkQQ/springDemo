package com.sunk.demo.framework.config;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.sunk.demo.framework.mybatisplus.CommonMetaObjectHandler;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * mybatis-plus
 *
 * @author sunk
 * @date 2020/12/7
 */
@Configuration
@MapperScan("com.sunk.demo.**.mapper")
@EnableTransactionManagement
public class MybatisPlusConfig {

    @Bean
    public MetaObjectHandler metaObjectHandler(){
        return new CommonMetaObjectHandler();
    }
}
