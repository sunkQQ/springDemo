package com.sunk.demo.common.utils.redis;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sunk.demo.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import javax.annotation.PostConstruct;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * Redis工具类，使用之前请确保RedisTemplate成功注入
 *
 * @author sunk
 * @date 2020/12/7
 */
@Component
public class RedisUtil {



    @Autowired
    private StringRedisTemplate redisTemplate;
    private static RedisUtil that;

    @PostConstruct
    protected void Init() {
        that = this;
    }

    /**
     * 删除缓存<br/>
     * 根据key精确匹配删除
     *
     * @param key
     */
    public static void remove(String... key) {
        if (key != null && key.length > 0) {
            if (key.length == 1) {
                that.redisTemplate.delete(key[0]);
            } else {
                that.redisTemplate.delete(CollectionUtils.arrayToList(key));
            }
        }
    }

    public static void hdel(String key, String field) {
        that.redisTemplate.opsForHash().delete(key, field);
    }

    /**
     * 是否存在KEY
     *
     * @param key
     * @return
     */

    public static boolean hasKey(String key) {
        return that.redisTemplate.hasKey(key);
    }

    /**
     * 批量删除<br/>
     * （该操作会执行模糊查询，请尽量不要使用，以免影响性能或误删）
     *
     * @param pattern
     */
    public static void batchRemove(String... pattern) {
        for (String kp : pattern) {
            that.redisTemplate.delete(that.redisTemplate.keys(kp + "*"));
        }
    }

    /**
     * 取得缓存（int型）
     *
     * @param key
     * @return
     */
    public static Integer getInt(String key) {
        String value = that.redisTemplate.boundValueOps(key).get();
        if (StringUtils.isNotBlank(value)) {
            return Integer.valueOf(value);
        }
        return null;
    }

    /**
     * 取得缓存（字符串类型）
     *
     * @param key
     * @return
     */
    public static String getStr(String key) {
        return that.redisTemplate.boundValueOps(key).get();
    }

    /**
     * 取得缓存（字符串类型）
     *
     * @param key
     * @return
     */
    public static String getStr(String key, boolean retain) {
        String value = that.redisTemplate.boundValueOps(key).get();
        if (!retain) {
            that.redisTemplate.delete(key);
        }
        return value;
    }

    /**
     * 获取缓存<br>
     * 注：基本数据类型(Character除外)，请直接使用get(String key, Class<T> clazz)取值
     *
     * @param key
     * @return
     */
    public static Object getObj(String key) {
        return that.redisTemplate.boundValueOps(key).get();
    }

    /**
     * 获取缓存<br>
     * 注：java 8种基本类型的数据请直接使用get(String key, Class<T> clazz)取值
     *
     * @param key
     * @param retain 是否保留
     * @return
     */
    public static Object getObj(String key, boolean retain) {
        Object obj = that.redisTemplate.boundValueOps(key).get();
        if (!retain) {
            that.redisTemplate.delete(key);
        }
        return obj;
    }

    /**
     * 获取缓存<br>
     * <p>
     * 注：该方法暂不支持Character数据类型
     *
     * @param key   key
     * @param clazz 类型
     * @return
     */
    @SuppressWarnings("unchecked")
    public static <T> T get(String key, Class<T> clazz) {
        return (T) that.redisTemplate.boundValueOps(key).get();
    }

    public static void set(String key, Object value) {
        set(key, value, null);
    }

    /**
     * 将value对象写入缓存
     *
     * @param key
     * @param value
     * @param time  失效时间(秒)
     */
    public static void set(String key, Object value, Integer time) {
        if (value.getClass().equals(String.class)) {
            that.redisTemplate.opsForValue().set(key, value.toString());
        } else if (value.getClass().equals(Integer.class)) {
            that.redisTemplate.opsForValue().set(key, value.toString());
        } else if (value.getClass().equals(Double.class)) {
            that.redisTemplate.opsForValue().set(key, value.toString());
        } else if (value.getClass().equals(Float.class)) {
            that.redisTemplate.opsForValue().set(key, value.toString());
        } else if (value.getClass().equals(Short.class)) {
            that.redisTemplate.opsForValue().set(key, value.toString());
        } else if (value.getClass().equals(Long.class)) {
            that.redisTemplate.opsForValue().set(key, value.toString());
        } else if (value.getClass().equals(Boolean.class)) {
            that.redisTemplate.opsForValue().set(key, value.toString());
        } else {
            that.redisTemplate.opsForValue().set(key, value.toString());
        }
        if (time != null && time > 0) {
            that.redisTemplate.expire(key, time, TimeUnit.SECONDS);
        }
    }

    /**
     * 更新key对象field的值
     *
     * @param key   缓存key
     * @param field 缓存对象field
     * @param value 缓存对象field值
     */
    public static void setJsonField(String key, String field, String value) {
        JSONObject obj = JSON.parseObject(that.redisTemplate.boundValueOps(key).get());
        obj.put(field, value);
        that.redisTemplate.opsForValue().set(key, obj.toJSONString());
    }

    /**
     * 递减操作
     *
     * @param key
     * @param by
     * @return
     */
    public static Long decr(String key, Long by) {
        return that.redisTemplate.opsForValue().increment(key, -by);
    }

    /**
     * 递增操作
     *
     * @param key
     * @param by
     * @return
     */
    public static Long incr(String key, Long by) {
        return that.redisTemplate.opsForValue().increment(key, by);
    }

    /**
     * 获取double类型值
     *
     * @param key
     * @return
     */
    public static double getDouble(String key) {
        String value = that.redisTemplate.boundValueOps(key).get();
        if (StringUtils.isNotBlank(value)) {
            return Double.valueOf(value);
        }
        return 0d;
    }

    /**
     * 设置double类型值
     *
     * @param key
     * @param value
     * @param time  失效时间(秒)
     */
    public static void setDouble(String key, double value, Date time) {
        that.redisTemplate.opsForValue().set(key, String.valueOf(value));
        if (time.getTime() > 0) {
            that.redisTemplate.expire(key, time.getTime(), TimeUnit.SECONDS);
        }
    }

    /**
     * 设置double类型值
     *
     * @param key
     * @param value
     * @param time  失效时间(秒)
     */
    public static void setInt(String key, int value, Long time) {
        that.redisTemplate.opsForValue().set(key, String.valueOf(value));
        if (time != null && time > 0) {
            that.redisTemplate.expire(key, time, TimeUnit.SECONDS);
        }
    }

    /**
     * 将map写入缓存
     *
     * @param key
     * @param map
     * @param time 失效时间(秒)
     */
    public static <T> void setMap(String key, Map<String, T> map, Date time) {
        that.redisTemplate.opsForHash().putAll(key, map);
    }

    /**
     * 向key对应的map中添加缓存对象
     *
     * @param key
     * @param map
     */
    public static <T> void addMap(String key, Map<String, T> map) {
        that.redisTemplate.opsForHash().putAll(key, map);
    }

    /**
     * 向key对应的map中添加缓存对象
     *
     * @param key   cache对象key
     * @param field map对应的key
     * @param value 值
     */
    public static void addMap(String key, String field, String value) {
        that.redisTemplate.opsForHash().put(key, field, value);
    }

    /**
     * 获取FIELD列表
     *
     * @param key
     * @return
     */
    public static Set<Object> hkeys(String key) {
        Set<Object> keys = that.redisTemplate.opsForHash().keys(key);
        return keys;
    }

    /**
     * 向key对应的map中添加缓存对象
     *
     * @param key   cache对象key
     * @param field map对应的key
     * @param obj   对象
     */
    public static <T> void addMap(String key, String field, T obj) {
        that.redisTemplate.opsForHash().put(key, field, obj);
    }

    public static boolean hexists(String key, String field) {
        return that.redisTemplate.opsForHash().hasKey(key, field);
    }

    /**
     * 获取map缓存
     *
     * @param key
     * @param clazz
     * @return
     */
    public static <T> Map<String, T> mget(String key, Class<T> clazz) {
        BoundHashOperations<String, String, T> boundHashOperations = that.redisTemplate.boundHashOps(key);
        return boundHashOperations.entries();
    }

    /**
     * 获取map缓存中的某个对象
     *
     * @param key
     * @param field
     * @param clazz
     * @return
     */
    @SuppressWarnings("unchecked")
    public static <T> T getMapField(String key, String field, Class<T> clazz) {
        return (T) that.redisTemplate.boundHashOps(key).get(field);
    }

    /**
     * 指定缓存的失效时间
     *
     * @param key  缓存KEY
     * @param time 失效时间(秒)
     * @author FangJun
     * @date 2016年8月14日
     */
    public static void expire(String key, Long time) {
        that.redisTemplate.expire(key, time, TimeUnit.SECONDS);
    }

    /**
     * 添加set
     *
     * @param key
     * @param value
     */
    public static void sadd(String key, String... value) {
        that.redisTemplate.boundSetOps(key).add(value);
    }

    /**
     * set重命名
     *
     * @param oldkey
     * @param newkey
     */
    public static void srename(String oldkey, String newkey) {
        that.redisTemplate.boundSetOps(oldkey).rename(newkey);
    }

    /**
     * 模糊查询keys
     *
     * @param pattern
     * @return
     */
    public static Set<String> keys(String pattern) {
        return that.redisTemplate.keys(pattern);
    }


}
