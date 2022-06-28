package com.zcq.schedule;

import com.github.it235.manager.Knife4jRedisManager;
import com.github.it235.util.RedisHashUtil;
import com.zcq.dao.*;
import com.zcq.utils.ParseRedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * @description: 解析存储Redis数据到HashMap
 * @author: congqi.zhao
 * @date: Created in 2021/9/8 15:21
 */
@Component
public class ParseRedisTask {
    @Autowired
    private ParseRedisUtil parseRedisUtil;

    @Autowired
    private LinkInfoMapper linkInfoMapper;

    private static HashMap<String, Integer> hashMap;
    private static String message;

    @Scheduled(fixedRate = 5000)
    public void loopdb7() {
        Map<String, String> stringStringMap = parseRedisUtil.value2String(7);
        for (String s : stringStringMap.keySet()) {
            linkInfoMapper.addLinkInfo(s, Double.parseDouble(stringStringMap.get(s)));
        }
    }
}
