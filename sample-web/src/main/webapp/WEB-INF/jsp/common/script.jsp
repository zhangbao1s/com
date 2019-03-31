<%@ page pageEncoding="UTF-8" %>

<script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/handlebars.js/3.0.3/handlebars.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap-table/1.9.0/bootstrap-table.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap-table/1.9.0/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="${CTX}/resources/script/global.js"></script>

<script>
    $(function () {
        // 当遇到 401 状态码时，清空 cookie 中的 token，并跳转到登录页面
        $.ajaxSetup({
            statusCode: {
                401: function () {
                    $.removeCookie(Cookie.TOKEN);
                    location.href = '${CTX}/login';
                }
            }
        });

        // 当发送 ajax 请求开始时，将 cookie 中的 token 与 username 放入 request header 中
        $(document).ajaxSend(function (event, xhr) {
            xhr.setRequestHeader(RequestHeader.TOKEN, $.cookie(Cookie.TOKEN));
            xhr.setRequestHeader(RequestHeader.USERNAME, $.cookie(Cookie.USERNAME));
        });

        // 当切换皮肤时，将 theme 数据放入 cookie，并刷新页面
        $('#theme').find('ul a').click(function () {
            var theme = $(this).data('key');
            $.cookie(Cookie.THEME, theme, {expires: 365});
            location.reload();
            return false;
        });

        // 当点击退出时，清空 cookie 中的 token，并发送退出 ajax 请求，最后跳转到登录页面
        $('#logout').click(function () {
            if (confirm('确定退出系统吗？')) {
                $.removeCookie(Cookie.TOKEN);
                location.href = '${CTX}/login';
            }
            return false;
        });
    });
</script>
