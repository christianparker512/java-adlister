<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/26/21
  Time: 6:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick a color!</title>
</head>
<body>
<h1>Any color!</h1>
<form action="/viewcolor" method="post">
    <label for="color">You picked: </label>
    <input type="text" name="color" id="color">

    <button type="submit">Submit</button>
</form>
</body>
</html>