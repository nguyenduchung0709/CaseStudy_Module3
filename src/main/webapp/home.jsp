<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Home Cooking</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Libertinus+Sans:ital,wght@0,400;0,700;1,400&family=Mozilla+Headline:wght@200..700&family=Playwrite+AU+QLD:wght@100..400&family=Playwrite+VN+Guides&display=swap"
          rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Libertinus Sans, serif;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container " style="margin-top: 60px;">
    <div id="content">
        <div class="row align-items-center">
            <div class="col-7">
                <a href="ingredients_of_meatball.jsp" target="_blank">
                    <img src="img/meatball.jpg" class="w-100" alt="meatball">
                </a>
            </div>
            <div class="col-5 align-items-center">
                <p style="font-size: 40px; color: #DF321B">Recipe Of The Day</p>
                <p style="font-size: 20px">Meatballs With Any Meat</p>
                <br>
                <p><strong>By <span style="text-decoration: underline;">Nguyen Duc Hung</span></strong></p>
                <p>Making great meatballs is all about memorizing a basic ratio that you can adjust to suit your
                    taste.</p>
            </div>
        </div>
    </div>

    <hr>
    <div class="row">
        <div class="col-12">
        <div id="insert_para">
            <a href="ingredients_of_noodles.jsp" target="_blank">
                <img src="img/vegetable.jpg" alt="">
            </a>
            <p class="para1">
                <span style="font-size: 20px">Easy Weeknight Dinners</span> <br>
                Make these recipes when you need a fast, flavorful meal.
            </p>
        </div>
        </div>
    </div>

    <div class="row">
        <div class="list_food">
            <c:forEach items="${listRecipe}" var="recipe">
                <div class="col-3">
                    <a href="/home?action=view&id=${recipe.id}"><img src="<c:out value="${recipe.imageURL}" />" width="306" height="306" alt="">
                        <p>
                            <span style="font-weight: bold"><c:out value="${recipe.name}"/></span> <br>
                            <c:out value="${recipe.ingredients}"/> <br>
                            Time take: <c:out value="${recipe.instructions}"/> hours
                        </p></a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
