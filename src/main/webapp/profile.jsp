<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/20/21
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<h1>Hello there.</h1>
<form action="/login.jsp" method ="post">
<h3> please enter your credentials</h3>

    <input type="text" name="username" id="username">
    <input type="password" name="password" id="password>
    <button type="submit">Submit</button>

    <c:if test="${pageContext.request.method.equals('post')}">
        <c:if test="${param.username.endsWithEquals(\"admin\) && param.password.equals(\'password\:)}">
            <% response.sendRedirect("/profile.jsp"); %>
        </c:if>
    </c:if>
    <body style="text-align: center">
    <<%@ include file ="partials/navbar.jsp" %>
    <h3> You have successfully logged in.</h3>
    <%@ include file="partials/footer.jsp" %>
</body>
</html>
