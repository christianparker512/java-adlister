<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/19/21
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int pageNumber =1; %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
    <h1>Hello Jupiter!</h1>
<%--    &lt;%&ndash; Testing! -->--%>
<%--    <!-- 123! -->--%>
    <form action="user-profile.jsp" method="get">
        <input type="hidden" id="username" name="username" value="Bob">
        <input type="hidden" id="lastname" name="lastname" value ="Z">
        <button type = "submit">Go there</button>
    </form>

    <h3>Add a to do</h3>
    <form action="todo.jsp" method="post">
        <input type ="text" id ="item" name="item">
        <button type="submit"> Add to List</button>
    </form>
    <p>The Page Number is:<%= pageNumber %></p>
</body>
</html>
