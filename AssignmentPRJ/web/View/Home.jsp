<%-- 
    Document   : Home
    Created on : Jun 12, 2022, 9:10:04 PM
    Author     : GG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FPT University Academic Portal</title>
        <link rel="stylesheet" href="mystyle/mystyle.css">
    </head>
<body class="total">
    <header>
        <h1> FPT University Academic Portal </h1>  
        <h3> Hello ${sessionScope.acc.username}</h3>
    <br>
   
    </header>

        <nav>
            <a class="button" href="#">Home</a>
            <a class="button" href="#">Change Profile</a>
            <a class="button" href="#">Change Password</a>
            <a class="button" href="#">Log out</a>
        </nav>
     <br>
     <br>
      <p class="orangeTitle" >Academic Information</p>
      <div class="tab">
        <div class="block"> 
          <a  href="Schedule">
            <span>
              <img class="iconimg" src="image/Presentation1.jpg" > <br>
            </span>
           </a>
          <a class="linkdir"  href="Schedule"> Weekly timetable</a> <br>(Thời khóa biểu từng tuần) 
        </div>

        <div class="block"> 
          <a href="syllabus">
            <span>
              <img class="iconimg" src="image/Presentation2.jpg" > <br>
            </span>
          </a>
          <a class="linkdir"  href="syllabus.html">View Syllabus</a> <br>(Xem đề cương môn học)
        </div>

        <div class="block"> 
          <a href="Transcript">
            <span>
              <img class="iconimg" src="image/Presentation4.jpg" > <br>
            </span>
          </a>
          <a class="linkdir"  href="Transcript.html">Academic Transcript</a> <br>(Báo cáo điểm)
        </div>

        <div class="block"> 
          <a href="Curriculum">
            <span>
              <img class="iconimg" src="image/Presentation3.jpg" > <br>
            </span>
          </a>
          <a class="linkdir"  href="Curriculum.html">Curriculum</a> <br>(Khung chương trình)
        </div>    
      </div>
      <footer>© Powered by FPT University</footer>
</body>
</html>
