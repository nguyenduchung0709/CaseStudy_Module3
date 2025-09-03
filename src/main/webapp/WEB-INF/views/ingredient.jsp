<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.example.case_study_module3.DAO.RecipeDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.case_study_module3.model.Recipe" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ingredients Search</title>
</head>
<body>

    <h2>Recipes with ${ingredientName}</h2>
    <c:forEach items="${recipes}" var="recipe">
        <div class="col-3">
            <a href="/home?action=view&id=${recipe.id}">
                <img src="${recipe.imageURL}" width="306" height="306" alt="">
                <p>
                    <span style="font-weight: bold">${recipe.name}</span> <br>
                        ${recipe.ingredients} <br>
                    Time: ${recipe.instructions} hours
                </p>
            </a>
        </div>
    </c:forEach>
</body>
</html>
