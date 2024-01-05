<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="common.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM-Balance</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="user.css">
</head>

<body>
<div class="navbar sticky-top">
<%@include file="header.jsp" %>
</div>
    <div class="rowa">
        <div class="atm">
            <div class="containera">
                <div class="card-container">

                    <div class="front">
                        <div class="image">
                            <img src="chip.png" alt="">
                            <img src="visa.png" alt="">
                        </div>
                        <div class="card-number-box">####-####-####-<%out.print(session.getAttribute("card_no")); %></div>
                        <div class="flexbox">
                            <div class="box">
                                <span>card holder</span>
                                <div class="card-holder-name"><%out.print(session.getAttribute("name")); %></div>
                            </div>
                            <div class="box">
                                <span>expires</span>
                                <div class="expiration">
                                    <span class="exp-month"><%out.print(session.getAttribute("month")); %></span> /
                                    <span class="exp-year"><%out.print(session.getAttribute("year")); %></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="features">
            <form>
                <h1>Total Balance</h1>
                <!-- <label for="amount">Total Balance</label> -->
                <h1>&#8377; <%out.print(session.getAttribute("amount")); %> /-</h1>
            </form>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</body>

</html>