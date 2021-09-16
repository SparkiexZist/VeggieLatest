<!DOCTYPE html>
<html lang="en" xmlns:th="https://www.thymeleaf.org"
      xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity5">
<head>
    <meta charset="UTF-8">
    <link th:rel="stylesheet" th:href="@{/css/bootstrap.min.css}">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script th:src="@{/js/bootstrap.min.js}"></script>
</head>

<style>
    body
    {
        /*            background-image: url('https://wallpaperaccess.com/full/2029165.jpg');*/
        background: linear-gradient( rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7) ), url('https://images.wallpaperscraft.com/image/vegetables_basket_green_106346_1920x1080.jpg');
        background-position: center center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light" th:fragment="header">

    <div class="container-fluid">
        <img src="https://i.ibb.co/Byhk1Kk/logo.png" style="padding-left:10px;" alt="">

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="vegetables">Order</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" th:href="@{/}">Drive-Thru</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" th:href="@{/}">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login">Login</a>

                </li>
            </ul>

        </div>
    </div>
</nav>

</html>