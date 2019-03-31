<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="API" value="http://localhost:8081"/>
<c:set var="CTX" value="${pageContext.request.contextPath}"/>
<c:set var="THEMES">
    default:Default,
    cerulean:Cerulean,
    cosmo:Cosmo,
    cyborg:Cyborg,
    darkly:Darkly,
    flatly:Flatly,
    journal:Journal,
    lumen:Lumen,
    paper:Paper,
    readable:Readable,
    sandstone:Sandstone,
    simplex:Simplex,
    slate:Slate,
    spacelab:Spacelab,
    superhero:Superhero,
    united:United,
    yeti:Yeti,
    material:Material,
</c:set>
<c:set var="system_theme" value="${cookie['cookie.theme'].value}"/>
<c:if test="${empty system_theme || system_theme == 'default'}">
    <c:set var="system_theme" value="default"/>
</c:if>
