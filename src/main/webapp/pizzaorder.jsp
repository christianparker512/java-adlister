<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/22/21
  Time: 7:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/21/21
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 1/21/21
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Parker's Pizza Order</title>
</head>
<body>
<h3>Parker's Pizza Place</h3>
<form action="/pizzaorder.jsp" method="post">
    <label>
        Select your crust
        <select name="crust" id="crust">
            <option value="thin">Thin crust</option>
            <option value="normal">New York Style</option>
            <option value="detroit">Detroit Style</option>
        </select>
    </label>
    <label>
        Select your sauce
        <select name="sauce">
            <option value="red">Red</option>
            <option value="pesto">pesto</option>
            <option value="other">other</option>
        </select>
    </label>
    <label>
        Select your size
        <select name="size">
            <option value="12">12</option>
            <option value="14">14</option>
            <option value="16">16</option>
            <option value="18">18</option>
        </select>
    </label>
    <label>
        Delivery Address
        <input name="address" id="address">
    </label>

    <label for="pepperoni">Pepperoni</label>
    <input type="checkbox" name="topping" id="pepperoni" value="pepperoni">
    <label for="sausage">Sausage</label>
    <input type="checkbox" name="topping" id="sausage" value="sausage">
    <label for="mushrooms">Mushrooms</label>
    <input type="checkbox" name="topping" id="mushrooms" value="mushrooms">
    <label for="peppers">Peppers</label>
    <input type="checkbox" name="topping" id="peppers" value="peppers">
    </label>


    <button type="submit">Submit</button>
</form>

</body>
</html>
