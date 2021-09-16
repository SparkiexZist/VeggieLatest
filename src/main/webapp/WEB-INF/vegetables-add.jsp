<!DOCTYPE html>
<html lang="en" xmlns:th="https://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Kinkao Restaurant Service Website</title>
    <link th:rel="stylesheet" th:href="@{/css/bootstrap.min.css}">
    <script th:src="@{/js/bootstrap.min.js}"></script>
</head>

<body>
<%@include file="fragments/header.jsp" %>

<div class="container">
    <h1 class="display-6">Add Restaurant</h1>

    <form action="addVegetable" method="POST">
        <div class="mb-3">
            <label for="nameInput" class="form-label">Name</label>
            <input id="nameInput" type="text" class="form-control" name="name">
        </div>
        <div class="mb-3">
            <label for="priceInput" class="form-label">Price</label>
            <input id="priceInput" type="text" class="form-control" name="price">
        </div>
        <div class="mb-3">
            <label for="weightInput" class="form-label">Weight</label>
            <input id="weightInput" type="text" class="form-control" name="weight">
        </div>
        <div class="mb-3">
            <label for="amountInput" class="form-label">Amount</label>
            <input id="amountInput" type="text" class="form-control" name="amount">
        </div>
        <button type="submit" class="btn btn-primary">Add</button>
    </form>
</div>
</body>
</html>