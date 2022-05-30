<%-- 
    Document   : Login
    Created on : May 30, 2022, 4:37:01 PM
    Author     : GG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FPT University Academic Portal</title>
        <link rel="stylesheet" href="mystyle/style.css">
    </head>
    <body style="background-image: url(https://th.bing.com/th/id/R.687652e05389f52d753afafd1f0c4b43?rik=GLw%2fX2E2u0jyKg&pid=ImgRaw&r=0);" >
    <header> FPT University Academic Portal</header>
    <form action="login" method="POST">
        <div class="siteLogin">
            <p>Login</p>
            <input type="text" placeholder="Username" name="Username"> <br>
            <input type="password" placeholder="Password" name="Password"> <br>
            <div class="sub">
                <input type="submit" value="Đăng nhập">
            </div>
            <p></p>
        </div>
       
    </form>
    <footer>© Powered by FPT University</footer>
</body>
</html>
