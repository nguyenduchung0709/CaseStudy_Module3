<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit recipe</title>
</head>
<body>
<input type="hidden" name="action" value="edit">
<form action="/admin/recipe" method="post">
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
                <c:out value="${recipe.id}"></c:out>
            </td>
            <td>
                <input type="text" name="name">
            </td>
            <td>
                <input type="text" name="imageURL">
            </td>
            <td>
                <input type="text" name="ingredients">
            </td>
            <td>
                <input type="text" name="instructions">
            </td>
        </tr>
    </table>
    <input type="submit" value="Save"/>
</form>
</body>
</html>
