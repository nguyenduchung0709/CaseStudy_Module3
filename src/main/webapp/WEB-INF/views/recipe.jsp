<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Libertinus+Sans:ital,wght@0,400;0,700;1,400&family=Mozilla+Headline:wght@200..700&family=Playwrite+AU+QLD:wght@100..400&family=Playwrite+VN+Guides&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/styleofingredients.css">
    <title>Recipe for the dish</title>
</head>
<body>

    <jsp:include page="header.jsp"/>
    <div class="container" style="margin-top: 60px;">
        <div id="content">
            <div class="row  align-items-center" style="margin-bottom: 20px; border-bottom: 1px solid grey;">
                <div class="col-5 d-flex flex-column justify-content-center">
                    <div class="description">
                        <p style="font-size: 40px; color: #DF321B"><c:out value="${recipe.name}"/></p>
                        <br>
                        <i class="bi bi-calendar"></i> Update Jun. 14 2025
                        <p><strong>By <span style="text-decoration: underline;">Nguyen Duc Hung</span></strong></p>
                    </div>
                </div>
                <div class="col-7">
                    <img src="<c:out value="${recipe.imageURL}"/>" class="w-100" alt="">
                </div>
            </div>
        </div>
        <div class="ingredients">
            <div class="row">
                <div class="col-5">
                    <table>
                        <tr>
                            <th>Total Time</th>
                            <td>20 minutes</td>
                        </tr>
                        <tr>
                            <th>Rating</th>

                            <td> 5
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-half"></i> (5,878)
                            </td>
                        </tr>
                    </table>
                    <br>
                    <div class="info">
                        <strong>👉 More Meals</strong>
                        <p><a href="">🍜Cold Noodles With Zucchini</a></p>
                        <p><a href="">🍅Burst Cherry Tomato Orzotto</a></p>
                        <p><a href="">🍗Slow Cooker Gochujang Chicken and Tomatoes</a></p>
                    </div>
                </div>
                <div class="col-7">
                    <div class="process">
                        <p><c:out value="${recipe.instructions}"></c:out></p>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
    </div>

</body>
</html>
