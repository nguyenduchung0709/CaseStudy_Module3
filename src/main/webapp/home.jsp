<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
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
<iframe src="header.html"></iframe>

<div class="container custom-container" style="margin-top: 60px;">
    <div id="content">
        <div class="row align-items-center">
            <div class="col-7">
                <a href="" target="_blank">
                    <img src="img/meatball.jpg" class="w-100" alt="">
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
    <div>
        <div id="insert_para">
            <a href="" target="_blank">
                <img src="img/vegetable.jpg" alt="">
            </a>
            <p class="para1">
                <span style="font-size: 20px">Easy Weeknight Dinners</span> <br>
                Make these recipes when you need a fast, flavorful meal.
            </p>
        </div>
    </div>

    <br>
    <div class="row">
        <div class="col-3">
            <img src="img/gochujang%20chicken.jpg" class="w-100" alt="">
            <p><span style="font-weight: bold">Slow Cooker Gochujang Chicken and Tomatoes</span> <br>
                Eric Kim <br>
                Time take: 6 hours</p>

        </div>
        <div class="col-3">
            <img src="img/burstcherry.jpg" class="w-100" alt="">
            <p><span style="font-weight: bold">Burst Cherry Tomato Orzotto</span><br>
                Trung Duc <br>
                Time take: 50 minutes</p>
        </div>
        <div class="col-3">
            <img src="img/vegetable.jpg" class="w-100" alt="">
            <p><span style="font-weight: bold">Cold Noodles With Zucchini</span> <br>
                Duc Hung <br>
                Time take: 15 minutes</p>
        </div>
        <div class="col-3">
            <img src="img/scallops.jpg" class="w-100" alt="">
            <p><span style="font-weight: bold">Scallops With Bread-Crumb Salsa Verde</span> <br>
                Gordon Ramsey <br>
                Time take: 30 minutes</p>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
