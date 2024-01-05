<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<form action="loginprocess.jsp">
<label>Card No</label>
<input type="number" name="cardno" value="1111" required/>
<label>PIN No</label>
<input type="number" name="pinno" value="1111" required/>
<input type="submit" value="submit"/>

</form>

</body>
</html>
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM-Login</title>
    
    <!-- custom css file link  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="register.css">

</head>
<body>
<div class="navbar sticky-top">
<%@include file="header.jsp" %>
</div>
<div class="container">

    <div class="card-container">

        <div class="front">
            <div class="image">
                <img src="chip.png" alt="">
                <img src="visa.png" alt="">
            </div>
            <div class="card-number-box">####-####-####-####</div>
            <div class="flexbox">
                <div class="box">
                    <span>card holder</span>
                    <div class="card-holder-name">full name</div>
                </div>
                <div class="box">
                    <span>expires</span>
                    <div class="expiration">
                        <span class="exp-month">mm</span> /
                        <span class="exp-year">yy</span>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <form action="loginprocess.jsp">
        <div class="inputBox">
            <span>card number</span>
            <input type="text" maxlength="4" class="form-control card-number-input" placeholder="####" name="card_no" required>
        </div>
            <div class="inputBox">
                <span>PIN</span>
                <input type="password" maxlength="4" class="form-control cvv-input" placeholder="XXXX" name="pin" required>
            </div>
        <input type="submit" value="Login" class="submit-btn">
    </form>

</div>  
<%@include file="footer.jsp" %>  
    
<script>

document.querySelector('.card-number-input').oninput = () =>{
    // if(document.querySelector('.card-number-input').value>4){
        // document.querySelector('.card-number-input').value=document.querySelector('.card-number-input').value.slice(0,4);
    // }
    document.querySelector('.card-number-box').innerText = "####-####-####-"+document.querySelector('.card-number-input').value;

}

</script>
</body>
</html>