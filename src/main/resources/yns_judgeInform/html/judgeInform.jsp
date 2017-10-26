<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<c:set var="name" value="${currentNode.properties['name'].string}"/>
<c:set var="Surname" value="${currentNode.properties['Surname'].string}"/>
<c:set var="yearInOffice" value="${currentNode.properties['yearInOffice'].string}"/>
<c:set var="yearOfRegistration" value="${currentNode.properties['yearOfRegistration'].string}"/>
<c:set var="canton" value="${currentNode.properties['canton'].string}"/>
<c:set var="partyBirth" value="${currentNode.properties['partyBirth'].string}"/>
<c:set var="court" value="${currentNode.properties['court'].string}"/>
<c:set var="parti" value="${currentNode.properties['parti'].string}"/>
<c:set var="deathDate" value="${currentNode.properties['deathDate'].date}"/>
<c:set var="photo" value="${currentNode.properties['photo'].node}"/>
<c:set var="biography" value="${currentNode.properties['biography'].string}"/>


<h2>${currentNode.properties['jcr:title'].string}</h2>
<br>
<c:set var="fullname" value="${name} ${Surname}"/>
<h3>${fullname}</h3>
<h3>${yearInOffice}</h3>
<h3>${yearOfRegistration}</h3>
<h3>${canton}</h3>
<h3>${partyBirth}</h3>
<h3>${court}</h3>
<h3>${parti}</h3>
<h3>${deathDate}</h3>
<h3>${photo}</h3>
<br>
<c:url value="${photo.url}" var="imgUrl"/>
<c:if test = "${imgUrl} != null">
    <img src="${imgUrl}" width="300px"/>
</c:if>

<p>${biography}</p>
<%@include file="judgeInform.table.jsp"%>