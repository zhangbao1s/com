package com.xxx.api.jdbc;

/**
 * 服务运行异常
 *
 * @author huangyong
 * @since 1.0.0
 */
public class ServiceException extends RuntimeException {

    public ServiceException(String message) {
        super(message);
    }
}
