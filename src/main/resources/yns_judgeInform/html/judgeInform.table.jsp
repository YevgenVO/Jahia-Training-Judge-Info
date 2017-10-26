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
<c:set var="yearInOffice" value="${currentNode.properties['yearInOffice'].date}"/>
<c:set var="yearOfRegistration" value="${currentNode.properties['yearOfRegistration'].date}"/>
<c:set var="canton" value="${currentNode.properties['canton'].string}"/>
<c:set var="partyBirth" value="${currentNode.properties['partyBirth'].date}"/>
<c:set var="court" value="${currentNode.properties['court'].string}"/>
<c:set var="parti" value="${currentNode.properties['parti'].string}"/>
<c:set var="deathDate" value="${currentNode.properties['deathDate'].date}"/>
<c:set var="photo" value="${currentNode.properties['photo'].node}"/>
<c:set var="biography" value="${currentNode.properties['biography'].string}"/>

<jcr:sql var="judgeList" sql="select * from [yns:judgeInform]" />
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Year in office</th>
        <th>Year of registration</th>
        <th>Canton</th>
        <th>Party birth</th>
        <th>Court</th>
        <th>Parti</th>
        <th>Death date</th>
        <th>Photo</th>
        <th>Biography</th>
    </tr>
    <c:forEach items="${judgeList.nodes}" var="judge">
        <tr>
            <td>${judge.properties['name'].string}</td>
            <td>${judge.properties['Surname'].string}</td>
            <td>${judge.properties['yearInOffice'].string}</td>
            <td>${judge.properties['yearOfRegistration'].string}</td>
            <td>${judge.properties['canton'].string}</td>
            <td>${judge.properties['partyBirth'].string}</td>
            <td>${judge.properties['court'].string}</td>
            <td>${judge.properties['parti'].string}</td>
            <td>${judge.properties['deathDate'].string}</td>
            <td>${judge.properties['photo'].string}</td>
            <td>${judge.properties['biography'].string}</td>
        </tr>
</c:forEach>
</table>