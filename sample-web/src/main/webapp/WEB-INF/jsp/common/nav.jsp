<%@ page pageEncoding="UTF-8" %>

<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${CTX}/home">Sample</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar">
            <ul class="nav navbar-nav">
                <li><a href="${CTX}/advertiser">广告主</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown" id="theme">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-magic"></i> 皮肤 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <c:forEach var="theme" items="${THEMES}">
                            <c:set var="key" value="${fn:trim(fn:split(theme, ':')[0])}"/>
                            <c:set var="value" value="${fn:split(theme, ':')[1]}"/>
                            <li ${key == system_theme ? 'class="active"' : ''}><a href="#" data-key="${key}">${value}</a></li>
                        </c:forEach>
                    </ul>
                </li>
                <li><a href="${CTX}/logout" id="logout"><i class="fa fa-sign-out"></i> 注销</a></li>
            </ul>
        </div>
    </div>
</nav>
