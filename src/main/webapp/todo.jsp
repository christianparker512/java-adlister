<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/21/21
  Time: 8:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do List</title>
</head>
<body>
<h1>Here is your To Do List:</h1>
<ul>
    <li>
        <%=request.getParameter("item")%>
    </li>
</ul>
<p><%=request.getMethod()%></p>
</body>
</html>