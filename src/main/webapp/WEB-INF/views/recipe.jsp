<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Recipe for the dish</title>
</head>
<body>

    <h1>This works</h1>

    <p style="font-size: 40px; color: #DF321B"><c:out value='${recipe.name}' /></p> <br>
    <c:out value='${recipe.ingredients}' /> <br>
    <c:out value='${recipe.instructions}' />

</body>
</html>
