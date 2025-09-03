<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit recipe</title>
</head>
<body>
<form action="/admin/recipe" method="post">
    <input type="hidden" name="action" value="edit">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>ImageURL</th>
            <th>Ingredients</th>
            <th>Instructions</th>
        </tr>
        <tr>
            <td>
                <c:out value="${recipe.id}"/>
            </td>
            <td>
                <c:out value="${recipe.name}"></c:out>
            </td>
            <td>
                <c:out value="${recipe.imageURL}"></c:out>
            </td>
            <td>
                <c:out value="${recipe.ingredients}"></c:out>
            </td>
            <td>
                <c:out value="${recipe.instructions}"/>
            </td>

        </tr>
        <tr>
            <td>
                <c:out value="${recipe.id}"></c:out> <input type="hidden" name="id" value="${recipe.id}">
            </td>
            <td>
                <input type="text" name="name" value="${recipe.name}">
            </td>
            <td>
                <input type="text" name="imageURL" value="${recipe.imageURL}">
            </td>
            <td>
                <input type="text" name="ingredients" value="${recipe.ingredients}">
            </td>
            <td>
                <input type="text" name="instructions" value="${recipe.instructions}">
            </td>
        </tr>
    </table>
    <input type="submit" value="Save"/>
</form>
</body>
</html>
