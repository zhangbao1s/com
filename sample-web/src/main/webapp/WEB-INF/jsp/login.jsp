<%@ page pageEncoding="UTF-8" %>
<%@ include file="common/config.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sample - 登录</title>
    <%@ include file="common/meta.jsp" %>
    <%@ include file="common/style.jsp" %>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">Sample</a>
        </div>
    </div>
</nav>

<div class="container">
    <h1>欢迎使用 Sample</h1>
    <div class="row">
        <div class="col-md-4">
            <form id="loginForm" class="form-horizontal">
                <div class="form-group">
                    <label for="username" class="col-md-4 control-label">用户名：</label>
                    <div class="col-md-8">
                        <input type="text" id="username" name="username" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-md-4 control-label">密码：</label>
                    <div class="col-md-8">
                        <input type="password" id="password" name="password" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-4 col-md-8">
                        <button type="submit" class="btn btn-primary btn-lg"><i class="fa fa-sign-in"></i> 登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="common/script.jsp" %>

<script>
    $(function () {
        var $username = $('#username');
        var $password = $('#password');

        var username = $.cookie(Cookie.USERNAME);
        if (username) {
            $username.val(username);
            $password.focus();
        } else {
            $username.focus();
        }

        $('#loginForm').submit(function () {
            Ajax.postForm({
                url: '${API}/login',
                data: {
                    'username': $username.val(),
                    'password': $password.val()
                },
                beforeSend: function () {
                    if ($username.val() == '') {
                        alert('请输入用户名！');
                        $username.focus();
                        return false;
                    }
                    if ($password.val() == '') {
                        alert('请输入密码！');
                        $password.focus();
                        return false;
                    }
                },
                success: function (response) {
                    if (response.meta.success) {
                        // 登录成功，将 token 与 username 放入 cookie 中
                        $.cookie(Cookie.TOKEN, response.data.token);
                        $.cookie(Cookie.USERNAME, response.data.username);
                        location.href = '${CTX}/home';
                    } else {
                        alert('用户名或密码有误！');
                    }
                }
            });
            return false;
        });
    });
</script>

</body>
</html>
