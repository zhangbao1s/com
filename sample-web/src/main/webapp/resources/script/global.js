var Cookie = {
    TOKEN: 'cookie.token',
    USERNAME: 'cookie.username',
    THEME: 'cookie.theme'
};

var RequestHeader = {
    TOKEN: 'X-Token',
    USERNAME: 'X-Username'
};

var Ajax = {
    get: function (options) {
        $.ajax({
            url: options.url,
            type: 'GET',
            contentType : 'application/json',
            success: options.success,
            error: options.error
        });
    },
    post: function (options) {
        $.ajax({
            url: options.url,
            type: 'POST',
            contentType : 'application/json',
            data: JSON.stringify(options.data),
            beforeSend: options.beforeSend,
            success: options.success,
            error: options.error
        });
    },
    postForm: function (options) {
        $.ajax({
            url: options.url,
            type: 'POST',
            contentType : 'application/x-www-form-urlencoded',
            data: options.data,
            beforeSend: options.beforeSend,
            success: options.success,
            error: options.error
        });
    },
    put: function (options) {
        $.ajax({
            url: options.url,
            type: 'PUT',
            contentType : 'application/json',
            data: JSON.stringify(options.data),
            beforeSend: options.beforeSend,
            success: options.success,
            error: options.error
        });
    },
    delete: function (options) {
        $.ajax({
            url: options.url,
            type: 'DELETE',
            contentType : 'application/json',
            beforeSend: options.beforeSend,
            success: options.success,
            error: options.error
        });
    }
};