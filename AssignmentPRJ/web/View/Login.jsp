<%-- 
    Document   : Login
    Created on : May 30, 2022, 4:37:01 PM
    Author     : GG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FPT University Academic Portal</title>
        <link rel="stylesheet" href="mystyle/style.css">
    </head>
    <body style="background-image: url(https://th.bing.com/th/id/R.687652e05389f52d753afafd1f0c4b43?rik=GLw%2fX2E2u0jyKg&pid=ImgRaw&r=0);" >
<!--        -->
    <header> FPT University Academic Portal</header>
    
   <form action="login" method="POST">
        <div class="siteLogin">
            <p>Login</p>
            <input type="text"placeholder="Username" name="username"> <br>
            <input type="password"placeholder="Password" name="password"> <br>
            <div class="sub">
                <input type="submit" value="Login" />
            </div>
            <p></p>
        </div>
       
    </form>

    <footer>© Powered by FPT University</footer>
</body>
</html>
