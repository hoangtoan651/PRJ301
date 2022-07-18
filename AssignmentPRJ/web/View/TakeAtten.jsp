<%-- 
    Document   : TakeAtten
    Created on : Jul 18, 2022, 4:21:16 PM
    Author     : GG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="attend" method="POST">
            <p> Teacher: ${sessionScope.username}</p>
                <select name="Group_Name" >
                    <c:forEach items="${requestScope.listGroup}" var="c">
                  <option 
                         
                        value="${c}" ${c eq className ? "selected": ""} >${c}
                  </option>
                        

                    </c:forEach>
                </select>
                <button class="btn btn-outline-success" type="submit">List Student</button>
             </form>
                        
            <c:if test="${requestScope.listAttend ne null}">
            <table class="table" border="1">
                <thead>
                    <tr >

                        <th>Group</th>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Status</th>
                        <th>Taken</th>
                        <th>Time</th>

                    </tr>
                </thead>
                <tbody>
               
                   <c:forEach items="${listAttend}" var="a">
                        <tr>
                            <td>${a.getGroup_Name()}</td>
                            <td>${a.getStudent_Code()}</td>
                            <td>${a.getName()}</td>
                            <td><img src="https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg" style="width:100px;height:100px;"></td>
                            <td>
                            <input type="radio" name="${a.getStudent_Code()}" value="1" ${a.getStatus() == 1 ? "checked":""}>Attended  
                            <input type="radio" name="${a.getStudent_Code()}" value="0"  ${a.getStatus() == 0 ? "checked":""}>Absent</td>
                            </td>
                            <td>${a.getLecturersCode()}</td>
                            <td>${a.getTime_Record()}</td>
                       </tr>     
                    </c:forEach>     
 
            
                </tbody>

            </table>
            </c:if>
            <div class="text-center">
                <input type="submit" class="btn btn-outline-success" value="Take" /><br/>
                <p></p><br/>
                <p></p>
            </div>
      

    </div>
    </body>
</html>
