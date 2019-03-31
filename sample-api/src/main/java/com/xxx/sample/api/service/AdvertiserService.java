package com.xxx.sample.api.service;

import com.xxx.api.jdbc.ServiceException;
import com.xxx.api.jdbc.dao.DataAccessor;
import com.xxx.api.jdbc.id.IdGenerator;
import com.xxx.api.jdbc.paging.Paging;
import com.xxx.api.util.DateUtil;
import com.xxx.sample.api.constant.Message;
import com.xxx.sample.api.result.AdvertiserResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

/**
 * 广告主服务
 *
 * @author huangyong
 * @since 1.0.0
 */
@Service
public class AdvertiserService {

    @Autowired
    private DataAccessor dataAccessor;

    @Autowired
    private IdGenerator idGenerator;

    public Paging<AdvertiserResult> getAdvertiserPaging(int pageNumber, int pageSize, String whereCondition, String orderBy) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("whereCondition", whereCondition);
        paramMap.put("orderBy", orderBy);
        return dataAccessor.selectPaging("AdvertiserMapper.selectAdvertiserPaging", paramMap, pageNumber, pageSize);
    }

    public AdvertiserResult getAdvertiser(String advertiserId) {
        AdvertiserResult advertiserResult = dataAccessor.selectOne("AdvertiserMapper.selectAdvertiserById", advertiserId);
        if (advertiserResult == null) {
            throw new ServiceException(Message.QUERY_FAILURE);
        }
        return advertiserResult;
    }

    @Transactional
    public void updateAdvertiser(String advertiserId, String advertiserName, String description) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("id", advertiserId);
        paramMap.put("advertiserName", advertiserName);
        paramMap.put("description", description);
        dataAccessor.update("AdvertiserMapper.updateAdvertiser", paramMap);
    }

    @Transactional
    public void deleteAdvertiser(String advertiserId) {
        dataAccessor.update("AdvertiserMapper.deleteAdvertiser", advertiserId);
    }

    @Transactional
    public void createAdvertiser(String advertiserName, String description) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("id", idGenerator.generateId());
        paramMap.put("advertiserName", advertiserName);
        paramMap.put("description", description);
        paramMap.put("createdTime", DateUtil.getCurrentDateTime());
        dataAccessor.insert("AdvertiserMapper.insertAdvertiser", paramMap);
    }
}
