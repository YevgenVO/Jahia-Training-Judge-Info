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

            <td><a onclick="window.open('${contentNode.url}judge2/judge-info.html?id=${judge.identifier}', 'newwindow',
                    'width=800, height=400'); return false;" title="${judge.properties['Surname'].string}}"
                   href="<c:url value="#" />">${judge.properties['Surname'].string}</a></td>
            <%--<td>${judge.properties['Surname'].string}</td>--%>
            <td>${judge.properties['yearInOffice'].string}</td>
            <td>${judge.properties['yearOfRegistration'].string}</td>
            <td>${judge.properties['canton'].string}</td>
            <td>${judge.properties['partyBirth'].string}</td>
            <td>${judge.properties['court'].string}</td>
            <td>${judge.properties['parti'].string}</td>
            <td>${judge.properties['deathDate'].string}</td>
            <%--<td>--%>
            <c:set var="photo" value="${judge.properties['photo']}"/>
            <%--<c:url value="${photo}" var="imgUrl"/>--%>
            <td><img src="${photo.node.url}" width="300px"></td>
            <%--<td><img src="${judge.properties['photo'].node.url}" width="300px"></td>--%>
            <td>${judge.properties['biography'].string}</td>
        </tr>
    </c:forEach>
</table>