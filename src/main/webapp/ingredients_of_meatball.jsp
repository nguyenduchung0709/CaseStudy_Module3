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
    <title></title>
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
                    <p style="font-size: 40px; color: #DF321B">Meatballs With Any Meat</p>
                    <br>
                    <i class="bi bi-calendar"></i> Update Jun. 14 2025
                    <p><strong>By <span style="text-decoration: underline;">Nguyen Duc Hung</span></strong></p>
                </div>
            </div>
            <div class="col-7">
                <img src="img/meatball.jpg" class="w-100" alt="">
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
                    <p>Making great meatballs is all about memorizing a basic ratio that you can adjust to suit your taste.
                        Start with a pound of ground meat — any kind will work, even fish if you want to take it in that
                        direction. Add ½ cup bread crumbs for lightness, a teaspoon of salt, and an egg to bind it together.
                        That’s all you need. Pepper and other spices, chopped herbs and minced allium (garlic, onion,
                        scallions or shallot) can be added to taste. Then broil or fry as you like.</p>

                    <p><span style="font-weight: bold">Why You Should Trust This Recipe</span></p>

                    Melissa Clark, a food writer for more than 25 years, creates her fresh takes on classic recipes by
                    trying at least half a dozen different approaches. A professional recipe tester then makes her
                    recipe a minimum of three times (and sometimes more than 12) to ensure it’ll come out perfectly for
                    all home cooks. For these meatballs, Melissa tinkered with ratios of seasonings to breadcrumbs to
                    ensure the formula works with any type of ground meat.</p>
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</div>
</body>
</html>
