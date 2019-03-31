<c:choose>
    <c:when test="${system_theme == 'default'}">
        <link href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">
    </c:when>
    <c:when test="${system_theme == 'material'}">
        <link href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://cdn.bootcss.com/bootstrap-material-design/0.3.0/css/material.min.css" rel="stylesheet">
    </c:when>
    <c:otherwise>
        <link href="http://cdn.bootcss.com/bootswatch/3.3.5/${system_theme}/bootstrap.min.css" rel="stylesheet">
    </c:otherwise>
</c:choose>
<link href="http://cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="http://cdn.bootcss.com/bootstrap-table/1.8.1/bootstrap-table.min.css" rel="stylesheet">
<link href="${CTX}/resources/style/global.css" rel="stylesheet">
