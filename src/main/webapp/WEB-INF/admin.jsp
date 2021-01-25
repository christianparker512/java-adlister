<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/25/21
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Viewing Admin Dashboard</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Admin Dashboard" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class = "container">
        <h1>viewing Admin Dashboard</h1>
        <p>Is Admin: ${sessionScope.isAdmin}</p>
    </div>
</body>
</html>
