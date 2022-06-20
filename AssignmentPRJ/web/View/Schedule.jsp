<%-- 
    Document   : Schedule
    Created on : Jun 20, 2022, 4:16:59 PM
    Author     : GG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Weekly Timetable</title>
        <link rel="stylesheet" href="mystyle/ScheduleStyle.css">
    </head>
    <body>
       <h1>
        FPT University Academic Portal
    </h1>
    <nav class="homebutton">
        <a class="button" href="index.html">Home</a>
        <a class="button" href="#">Change Profile</a>
        <a class="button" href="#">Change Password</a>
        <a class="button" href="#">Log out</a>
   </nav>
    <div class="detail">
        <p>
            <b>Chú thích:</b> Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa, ví dụ như hoạt động câu lạc bộ ...
            <br>
            Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...
            <br>
            Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..
            <br>
            Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...
            <br>
            Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.
            <br>
            Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..
            <br>
            Little UK (LUK) thuộc tầng 5 tòa nhà Delta
            <br>
        </p>
    </div>
    <form action="Schedule" method="POST">
        <div class="campus">Campus:
            <select name="" id="">
                <option value="FU HL">FU-Hòa Lạc</option>
                <!-- <option value="FU HCM">FU-Hồ Chí Minh</option>
                <option value="FU DN">FU-Đà Nẵng</option>
                <option value="FU CT">FU-Cần Thơ</option>
                <option value="FU QN">FU-Quy Nhơn</option> -->
            </select>
        </div>
        <div class="Lecturers">Lecturers:
            <input type="text" value="sonnt5">
            <input type="submit" value="View">
        </div>

        <table style="width:100%" id="schedule" border="1">
            <tr class="date">
                <th  rowspan="2">
                    YEAR :
                    <select name="">
                        <option value="">
                            2020
                        </option>
                        <option value="">
                            2021
                        </option>
                        <option value="">
                            2022
                        </option>
                    </select>
                    <br>
                    WEEK: <select name="" id=""> //Đoạn này sẽ lấy time 
                        <option value="">03/01 To 09/01</option>
                        <option value="">06/06 To 12/06</option>
                    </select>
                </th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
                <th>Sunday</th>
            </tr>
            <tr class="day"> <!--đẩy giá trị ngày-->
                <td>Ngày</td>
                <td>Ngày</td>
                <td>Ngày</td>
                <td>Ngày</td>
                <td>Ngày</td>
                <td>Ngày</td>
                <td>Ngày</td>
            </tr>
            <tbody class="tab">
                <tr class="slot1">
                    <td>Slot 1</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>

                <tr class="slot2">
                    <td>Slot 2</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>
                <tr class="slot3">
                    <td>Slot 3</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>

                <tr class="slot4">
                    <td>Slot 4</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>
                <tr class="slot5">
                    <td>Slot 5</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>

                <tr class="slot6">
                    <td>Slot 6</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>
                <tr class="slot7">
                    <td>Slot 7</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>

                <tr class="slot8">
                    <td>Slot 8</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                    <td>Not yet</td>
                </tr>
                
            </tbody>
        </table>
    </form>
    </body>
</html>
