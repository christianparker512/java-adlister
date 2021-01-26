<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/26/21
  Time: 7:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %>></title>
</head>
<body>
<c:if test="true">
    <h1>This heading should be visible!</h1>
</c:if>
<c:if test="false">
    <h1>This heading should not.</h1>
    <%--    This is a JSP comment, you will NOT see this in the source code    --%>
    <!--    This is an HTML comment. This will be visible in the source code   -->
</c:if>
</body>
</html>