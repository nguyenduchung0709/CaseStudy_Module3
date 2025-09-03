<%--
  Created by IntelliJ IDEA.
  User: ductr
  Date: 8/15/2025
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Recipe</title>
</head>
<body>
<form action="/admin/recipe" method="post">

        <input type="hidden" name="action" value="create">
<%--        <input name="id">--%>
        <input name="name" placeholder="Enter name">
        <input name="imageURL" placeholder="Enter image URL">
        <input name="ingredients"  placeholder="Enter ingredients">
        <input name="instructions" placeholder="Enter instructions">
    <button type="submit">Create</button>
</form>
</body>
</html>
