<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/21/21
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
</head>
<body>
<h3>Welcome, ${param.username}</h3>
<h3>Your user id is: ${param["user-id"]}</h3>

<p>${header}</p>
<p>${cookie}</p>
<p>${sessionScope}</p>

<p><%= request.getMethod() %></p>
</body>
</html>