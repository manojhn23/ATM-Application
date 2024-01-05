<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        *{
            margin: 0;
        }
        .foot{
            height : 200px;
            background:linear-gradient(45deg, blueviolet, deeppink);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-around;
            align-items: center;
            color: aliceblue;
        }
        .contact{
            display: flex;
            flex-direction: column;
            align-items: left;
        }
        .contact a{
            color: aliceblue;
            text-decoration: none;
            font-size: 20px;
            /* margin-bottom: 17px;*/
            margin-top: 20px; 
            text-transform: lowercase;
        }
        .fa{
            margin-right: 10px;
        }

    </style>
</head>
<body>
    <footer class="foot">
        <div class="myname">
            <h3><i class="fa fa-copyright fa-lg" aria-hidden="true"></i>Manoj kumar H N 2024</h3>
        </div>
        <div class="contact">
            <a href="mailto:manojkumarhn2001@gmail.com"><i class="fa fa-envelope-o fa-lg" aria-hidden="true"></i>manojkumarhn2001@gmail.com</a>
            <a href="tel:+916363893636"><i class="fa fa-phone fa-lg" aria-hidden="true"></i>+91 6363893636</a>
            <a href="https://www.instagram.com/manu.unknown"><i class="fa fa-instagram fa-lg" aria-hidden="true"></i>manu.unknown</a>

        </div>
        
    </footer>   
</body>
</html>