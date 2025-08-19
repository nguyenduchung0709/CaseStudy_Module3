<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ductr
  Date: 8/13/2025
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recipe list</title>
</head>
<body>
    <h1>Recipe List</h1>
    <a href="/admin/recipe?action=create">Add new</a>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Image</td>
            <td>Ingredients</td>
            <td>Instructions</td>
        </tr>
        <c:forEach var="recipe" items="${listRecipe}">
            <tr>
                <td><c:out value="${recipe.id}"/> </td>
                <td><c:out value="${recipe.name}"/></td>
                <td><c:out value="${recipe.imageURL}"/></td>
                <td><c:out value="${recipe.ingredients}"/></td>
                <td><c:out value="${recipe.instructions}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
