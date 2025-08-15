<%--
  Created by IntelliJ IDEA.
  User: ductr
  Date: 8/15/2025
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:out value='${recipe.name}' /> <br>
    <c:out value='${recipe.ingredients}' /> <br>
    <c:out value='${recipe.instructions}' />
</body>
</html>
