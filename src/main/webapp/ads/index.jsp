<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/22/21
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ad List" />
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>
<h1>Here are your list of ads:</h1>

<c:forEach var="ad" items="${ads}">
    <div>
        <h2>${ad.title}</h2>
        <br>
        <p>${ad.description}</p>
    </div>

</c:forEach>

</body>
</html>