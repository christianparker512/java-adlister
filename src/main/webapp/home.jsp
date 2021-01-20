<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/19/21
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--This is an instance variable--%>
<%--<%! int pageNumber = 1; %>--%>
<% request.setAttribute("number", 1); %>
<% request.setAttribute("title", "Home Page"); %>
<html>
<head>
    <title>${title}</title>
</head>
<body>
    <%@ include file ="partials/navbar.jsp"%>
    <h1>Hello Jupiter!</h1>
<%--    &lt;%&ndash; Testing! -->--%>
<%--    <!-- 123! -->--%>
    <h3>View Chris' Profile</h3>
    <form action="user-profile.jsp" method="get">
        <input type="hidden" id="username" name="username" value="Chris">
        <input type="hidden" id="user-id" name="user-id" value ="12345">
        <button type = "submit">Go there</button>
    </form>

    <h3>Add a to do</h3>
    <form action="todo.jsp" method="post">
        <input type ="text" id ="item" name="item">
        <button type="submit"> Add to List</button>
    </form>
<%--    This is how you evaluate the variable in the head--%>
<%--    <p>The Page Number is:<%= pageNumber %></p>--%>
    <%@ include file="partials/footer.jsp"%>
</body>
</html>
