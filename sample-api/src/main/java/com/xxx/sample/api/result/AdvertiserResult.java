package com.xxx.sample.api.result;

import java.io.Serializable;
import java.util.Date;

/**
 * 广告主结果对象
 *
 * @author huangyong
 * @since 1.0.0
 */
public class AdvertiserResult implements Serializable {

    private String id;

    private String advertiserName;

    private String description;

    private String createdTime;

    private Date lastModified;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAdvertiserName() {
        return advertiserName;
    }

    public void setAdvertiserName(String advertiserName) {
        this.advertiserName = advertiserName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime;
    }

    public Date getLastModified() {
        return lastModified;
    }

    public void setLastModified(Date lastModified) {
        this.lastModified = lastModified;
    }
}
