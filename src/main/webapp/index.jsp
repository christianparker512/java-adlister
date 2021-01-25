<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
        <title>View Products</title>
    </jsp:include>
</head>
<body>
<h1>Here are all the products:</h1>
<c: forEach var="ad" items="${ads}">
    <div class="product">
        <p>${ad.id}</p>
        <h2>${ad.title}</h2>
        <p>{ad.userId}</p>
        <p>Description$[ad.description</p>
    </div>
</c:> For Each
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
    </div>
</body>
</html>
