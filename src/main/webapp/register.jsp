<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
<form action="registerProcess.jsp">
<label>Username</label>
<input type="text" name="username" value="Your Name" onclick=this.value="" />
<label>Card No</label>
<input type="number" name="cardno" value="1111" onclick=this.value="" />
<label>PIN</label>
<input type="number" name="pinno" value="1111" onclick=this.value="" />
<input type="submit" value="Enter"/> 

</form>

</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM-Register</title>
    
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

        <div class="back">
            <div class="stripe"></div>
            <div class="box">
                <span>cvv</span>
                <div class="cvv-box"></div>
                <img src="visa.png" alt="">
            </div>
        </div>

    </div>

    <form action="registerProcess.jsp">
        <div class="inputBox">
            <span>card number</span>
            <input type="text" maxlength="4" class="card-number-input" placeholder="####" name="card_no" required>
        </div>
        <div class="inputBox">
            <span>card holder</span>
            <input type="text" class="card-holder-input" placeholder="PQRS" name="name" required>
        </div>
        <div class="flexbox">
            <div class="inputBox">
                <span>expiration mm</span>
                <select id="" class="month-input" name="month" required>
                    <option value="month" selected disabled>month</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
            </div>
            <div class="inputBox">
                <span>expiration yy</span>
                <select name="year" id="" class="year-input" required>
                    <option value="year" selected disabled>year</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                    <option value="2029">2029</option>
                    <option value="2030">2030</option>
                </select>
            </div>
        </div>
        <div class="flexbox">
            <div class="inputBox">
                <span>cvv</span>
                <input type="text" maxlength="3" class="cvv-input" placeholder="###" name="cvv" required>
            </div>
            <div class="inputBox">
                <span>PIN</span>
                <input type="password" maxlength="4" class="cvv-input" placeholder="****" name="pin" required>
            </div>
        </div>
        <input type="submit" value="submit" class="submit-btn" />
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

document.querySelector('.card-holder-input').oninput = () =>{
    document.querySelector('.card-holder-name').innerText = document.querySelector('.card-holder-input').value;
}

document.querySelector('.month-input').oninput = () =>{
    document.querySelector('.exp-month').innerText = document.querySelector('.month-input').value;
}

document.querySelector('.year-input').oninput = () =>{
    document.querySelector('.exp-year').innerText = document.querySelector('.year-input').value;
}

document.querySelector('.cvv-input').onmouseenter = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(-180deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(0deg)';
}

document.querySelector('.cvv-input').onmouseleave = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(0deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(180deg)';
}

document.querySelector('.cvv-input').oninput = () =>{
    document.querySelector('.cvv-box').innerText = document.querySelector('.cvv-input').value;
}

</script>
</body>
</html>