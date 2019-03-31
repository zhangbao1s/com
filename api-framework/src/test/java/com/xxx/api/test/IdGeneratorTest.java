package com.xxx.api.test;

import com.xxx.api.jdbc.id.IdGenerator;
import com.xxx.api.jdbc.id.impl.DefaultIdGenerator;
import org.junit.Test;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * ID 生成器单元测试
 *
 * @author huangyong
 * @since 1.0.0
 */
public class IdGeneratorTest {

    private IdGenerator idGenerator = new DefaultIdGenerator();

    @Test
    public void generateIdTest() {
        String id = idGenerator.generateId();
        System.out.println(id);
    }

    @Test
    public void generateIdListTest() {
        Set<String> idSet = new HashSet<>();
        List<String> idList = idGenerator.generateIdList(10);
        for (String id : idList) {
            if (idSet.contains(id)) {
                throw new RuntimeException("ID 重复");
            }
            idSet.add(id);
            System.out.println(id);
        }
    }
}
