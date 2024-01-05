<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM-Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');
        *{
            font-family: 'Poppins', sans-serif;
    margin:0; padding:0;

        }
        .base{
            background-image: url("atm.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 65vh;
            margin: 0;
            margin-top: 73px;
           
        }
        marquee{
            color: white;
            font-size: 100px;
            font-variant: small-caps;
            text-shadow: 2px 2px 60px rgb(0, 0, 0);
            overflow: hidden;
            position: relative;
            font-weight: 900;
        }
    </style>
</head>
<body>
	    <%@include file="header.jsp" %>
    <div class="base">
        <marquee behavior="alternate" direction="left">Welcome to ATM !!!</marquee>
    </div>
    <%@include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>