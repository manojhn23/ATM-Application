<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
                margin:0; padding:0;
            }
            .navbar{
                background:linear-gradient(45deg, blueviolet, deeppink);
                color: white;
            }
            
        </style>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
        
</head>

<body>
    <nav class="navbar fixed-top navbar-expand bg-body-tertiary">
        <div class="container-fluid">
            <div class="navbar-brand">
                <span class="material-symbols-outlined text-light fs-3 m-2">
                    account_balance
                    </span>
                <a class="navbar-brand fs-3 fw-semibold  text-light" href="index.jsp">ATM Application</a>
            </div>
            <ul class="navbar-nav">
                <span class="material-symbols-outlined fs-3 mt-2">
                    app_registration
                    </span>
                <li class="nav-item">
                    <a class="nav-link fs-5 me-4  text-light" href="register.jsp">Register</a>
                </li>
                <span class="material-symbols-outlined fs-3 mt-2">
                    login
                    </span>
                <li class="nav-item">
                    <a class="nav-link fs-5 me-4  text-light" href="login.jsp">Login</a>
                </li>
                <span class="material-symbols-outlined fs-3 mt-2">
                    logout
                    </span>
                <li class="nav-item">
                    <a class="nav-link fs-5 me-4  text-light" href="logout.jsp">Logout</a>
                </li>
                <span class="material-symbols-outlined fs-3 mt-2 ">
                    account_circle
                    </span>
                <li class="nav-item">
                    <a class="nav-link fs-5 me-4  text-light" href="user.jsp">
                    <%if(session.getAttribute("name")==null) {
                    	%>
                    	User
                    	<% 
                    }
                    else{
                    	out.print(session.getAttribute("name"));
                    }
                    %>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>

</html>