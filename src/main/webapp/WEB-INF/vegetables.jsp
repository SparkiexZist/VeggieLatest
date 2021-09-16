<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%= request.getContextPath() %>
<%@ page import="io.aadeesh.model.Vegetable" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="io.aadeesh.repo.VegetableRepository" %>
<%@ page import="org.springframework.stereotype.Repository" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="https://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Kinkao Restaurant Service Website</title>
    <!-- Latest compiled and minified CSS -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>
<style>
    body
    {
        background: linear-gradient( rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7) ), url('https://images.wallpaperscraft.com/image/vegetables_basket_green_106346_1920x1080.jpg');
        background-position: center center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }
</style>
    <body>
    <%@include file="fragments/header.jsp" %>

<%--    <c:forEach items="${veg}" var="vegetable">--%>
<%--        <tr>--%>
<%--            <td>Name : <c:out value="${vegetable.name}"/></td>--%>
<%--            <td>Price : <c:out value="${vegetable.price}"/></td>--%>
<%--            <td>Weight : <c:out value="${vegetable.weight}"/></td>--%>
<%--            <td>Amount : <c:out value="${vegetable.amount}"/></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>

<%--    <div class="container">--%>
<%--        <h1 class="display-6">Vegetables</h1>--%>
<%--        <table style="width: 100%">--%>
<%--            <c:forEach items="${veg}" var="vegetable">--%>
<%--                <div class="card custom-card text-center mr-2 mt-2 ml-2 mb-2"--%>
<%--                     style="width: 18rem; display: inline-block; margin-right: 30px;">--%>
<%--                    <div class="card-body">--%>
<%--                        <td class="card-title"> Name : <c:out value="${vegetable.name}"/></td>--%>
<%--                        <td class="card-text" >Price : <c:out value="${vegetable.price}"/></td>--%>
<%--                        <td class="card-text" >Weight : <c:out value="${vegetable.weight}"/></td>--%>
<%--                        <td class="card-text" >Amount : <c:out value="${vegetable.amount}"/></td>--%>
<%--&lt;%&ndash;                        <h5 class="card-title" value="${'Vegetable : ' + vegetable.name}">Id</h5>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <p class="card-text" style="text-align:left;" value="${'Weight    : ' + vegetable.weight + ' KG'}">Weight</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <p class="card-text" style="text-align:left;" value="${'Available : ' + vegetable.amount + ' KG'}">Amount</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <p class="card-text" style="text-align:left;" value="${'Price/KG  : ' + vegetable.price + ' Baht'}">Price</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <p class="card-text" style="text-align:left;" value="${'Price/KG  : ' + vegetable.price + ' Baht'}" value="${vegetable.price}">Price</p>&ndash;%&gt;--%>

<%--                    &lt;%&ndash;                        <form>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <input type="button" th:onclick="decrementValue([[${vegetable.id}]])" value="-" style="border-style: hidden;"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <input disabled type="text" style="text-align: center;border-style: hidden;background:none;" th:id="${vegetable.id}" value="0"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <input type="button" th:onclick="incrementValue([[${vegetable.id}]])" value="+" style="border-style: hidden;"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <a class="btn btn-primary" th:href="@{/vegetable/edit/{id}(id=${vegetable.id})}">Edit</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </form>&ndash;%&gt;--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </table>--%>
<%--    </div>--%>

    <div class="temp" id="" style="padding-left: 160px; padding-right: 30px;">
            <div class="row" >
                <table style="width: 100%">
                <c:forEach var="vegetable" items="${veg}">
                        <br>
                        <div class="card custom-card text-center mr-5 mt-4 ml-5 mb-2" style="width: 300px;">
                            <div class="card-body">
                                    <h1 class="card-title" style="font-size: 20px;"> Name : <c:out value="${vegetable.name}"/></h1><br />
                                <img src="https://sc04.alicdn.com/kf/U7ca0d50a20444c16a7de40b4b8e6c3c7Y.jpg" alt="" style="width:200px;height:200px;">
                                <hr>
                                    <a class="card-text" style="font-size:15px" >Price : <c:out value="${vegetable.price}"/></a><br />
                                <a class="card-text">
                                    <a class="card-text" style="font-size:15px" >Weight : <c:out value="${vegetable.weight}"/></a><br />
                                <a class="card-text" style="font-size:15px" >Amount : <c:out value="${vegetable.amount}"/></a>
                            </div>
                        </div>
                </c:forEach>
                </table>
            </div>
    </div>
    </body>
</html>