package com.xxx.sample.api.param;

import com.xxx.api.validation.NotEmpty;

/**
 * 广告主参数对象
 *
 * @author huangyong
 * @since 1.0.0
 */
public class AdvertiserParam {

    @NotEmpty
    private String advertiserName;

    private String description;

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
}
