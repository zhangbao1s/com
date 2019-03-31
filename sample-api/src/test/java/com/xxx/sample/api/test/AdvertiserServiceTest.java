package com.xxx.sample.api.test;

import com.xxx.api.jdbc.paging.Paging;
import com.xxx.sample.api.result.AdvertiserResult;
import com.xxx.sample.api.service.AdvertiserService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 广告主服务单元测试
 *
 * @author huangyong
 * @since 1.0.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring.xml")
public class AdvertiserServiceTest {

    @Autowired
    private AdvertiserService advertiserService;

    @Test
    public void generateIdListTest() {
        int pageNumber = 1;
        int pageSize = 2;
        String whereCondition = "";
        String orderBy = "created_time DESC";
        Paging<AdvertiserResult> advertiserResultPaging = advertiserService.getAdvertiserPaging(pageNumber, pageSize, whereCondition, orderBy);
        Assert.assertTrue(advertiserResultPaging != null);
    }
}
