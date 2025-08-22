<%--
  Created by IntelliJ IDEA.
  User: EX
  Date: 8/15/2025
  Time: 6:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Libertinus+Sans:ital,wght@0,400;0,700;1,400&family=Mozilla+Headline:wght@200..700&family=Playwrite+AU+QLD:wght@100..400&family=Playwrite+VN+Guides&display=swap"
          rel="stylesheet">
    <title>Ingredients Of Cold Noodle</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/styleofingredients.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container" style="margin-top: 60px;">
    <div id="content">
        <div class="row  align-items-center" style="margin-bottom: 20px; border-bottom: 1px solid grey;">
            <div class="col-5 d-flex flex-column justify-content-center">
                <div class="description">
                    <p style="font-size: 40px; color: #DF321B">Cold Noodles With Zucchini</p>
                    <br>
                    <i class="bi bi-calendar"></i> Published July 21, 2024
                    <p><strong>By <span style="text-decoration: underline;">Nguyen Duc Hung</span></strong></p>
                </div>
            </div>
            <div class="col-7">
                <img src="img/vegetable.jpg" class="w-100" alt="">
            </div>
        </div>
    </div>
    <div class="ingredients">
        <div class="row">
            <div class="col-5">
                <table>
                    <tr>
                        <th>Total Time</th>
                        <td>15 minutes</td>
                    </tr>

                    <tr>
                        <th>Prep Time</th>
                        <td>5 minutes</td>
                    </tr>

                    <tr>
                        <th>Cook Time</th>
                        <td>10 minutes</td>
                    </tr>

                    <tr>
                        <th>Rating</th>

                        <td> 5
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-half"></i> (6,778)
                        </td>
                    </tr>
                </table>
                <br>
                <div class="info">
                    <strong>👉 More Meals</strong>
                    <p><a href="ingredients_of_meatball.jsp">🧆Meat Ball With Any Meal</a></p>
                    <p><a href="ingredients_of_burstcherry.jsp">🍅Burst Cherry Tomato Orzotto</a></p>
                    <p><a href="ingredients_of_chicken.jsp">🍗Slow Cooker Gochujang Chicken and Tomatoes</a></p>
                </div>
            </div>
            <div class="col-7">
                <div class="process">
                    <p>Zucchini loves the kiss of heat but can easily turn to mush. Briefly salting and drying
                        half-moons of zucchini before quickly stir-frying them, mostly on one side, maintains their
                        texture while lending so much flavor. An impactful dressing of maple syrup, soy sauce and fish
                        sauce — plus a pinch of concentrated savoriness in the form of garlic powder — seasons both
                        stir-fry and noodle. Ice is the secret ingredient that helps to cool down the noodles for quick
                        eating, as well as to melt down and open up the flavors of the dressing (as water is wont to do)
                        while you eat. The final spritz of citrus is not optional: It finishes the dressing and makes
                        this chill meal taste multidimensional. A tableside sprinkle of toasted sesame seeds, furikake
                        or shichimi togarashi is welcome.</p>


                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</div>
</body>
</html>
