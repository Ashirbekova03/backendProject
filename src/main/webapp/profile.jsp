<%@ page import="com.example.lab5.Test" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IITU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</head>
<%@include file="vendor/navbar.jsp"%>

<body>
<div style="margin: 0; padding-top: 15px; padding-left: 50px; padding-right: 50px; font-family: Arial">
    <div class="main" style="display: flex; flex-direction: row; margin: 20px;
    justify-content: space-between;">
        <div class="left-main" style="width: 22%;">
            <div class="left-main-photo">
                <img src="https://d2v9ipibika81v.cloudfront.net/uploads/sites/210/Profile-Icon.png"
                     style="width: 100%; padding-bottom: 25px">
            </div>

            <div style="border: solid #d5d5d5 1px; border-radius: 5px">
                <div class="left-main-sections">
                    <div class="section-text" style="border-bottom: solid #d5d5d5 1px; padding: 10px; color: #0480ff">
                        <b style="padding-left: 25px"><a href="/myprofile?email=<%=(ONLINE?currentUser.getEmail():"NO USER")%>">My Profile</a></b></div>
                    <div class="section-text" style="border-bottom: solid #d5d5d5 1px; padding: 10px; color: #0480ff">
                        <b style="padding-left: 25px; color: darkred">Settings</b></div>
                </div>
            </div>
        </div>

        <div class="center-main" style="width: 78%; display: flex; flex-direction: column; overflow-y:auto; max-height: 600px">
            <div style="display: flex; flex-direction: row;">
                <div style="padding-bottom: 20px; width: 49%; padding-left: 20px;">
                    <div style="border: solid #d5d5d5 1px; border-radius: 5px;">
                        <div style="margin-top: 20px; padding: 30px;">
                            <div style="padding-bottom: 15px">
                                <h2 style="margin: 0;">Monday</h2>
                            </div>
                            <div>
                                <div class="container">
                                    <div class="row mt-5">
                                        <div class="col-sm-12">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>Subject</th>
                                                    <th>Time</th>
                                                    <th>Teacher</th>
                                                    <th>Room</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Backend</td>
                                                    <td>08:00-08:50</td>
                                                    <td>Olzhas Tokanov</td>
                                                    <td>507</td>
                                                </tr>
                                                <tr>
                                                    <td>Backend</td>
                                                    <td>09:00-09:50</td>
                                                    <td>Olzhas Tokanov</td>
                                                    <td>507</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>10:00-10:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Operating Systems</td>
                                                    <td>11:00-11:50</td>
                                                    <td>Nurgul Seilova</td>
                                                    <td>301</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>12:10-13:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>13:10-14:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>14:10-15:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>15:10-16:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="padding-bottom: 20px; width: 49%; padding-left: 20px">
                    <div style="border: solid #d5d5d5 1px; border-radius: 5px;">
                        <div style="margin-top: 20px; padding: 30px;">
                            <div style="padding-bottom: 15px">
                                <h2 style="margin: 0;">Tuesday</h2>
                            </div>
                            <div>
                                <div class="container">
                                    <div class="row mt-5">
                                        <div class="col-sm-12">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>Subject</th>
                                                    <th>Time</th>
                                                    <th>Teacher</th>
                                                    <th>Room</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>-</td>
                                                    <td>08:00-08:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>09:00-09:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>10:00-10:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Operating Systems</td>
                                                    <td>11:00-11:50</td>
                                                    <td>Nurgul Seilova</td>
                                                    <td>301</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>12:10-13:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Mobile technologies</td>
                                                    <td>13:10-14:00</td>
                                                    <td>Aigerim Bolshebikova</td>
                                                    <td>904</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>14:10-15:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>15:10-16:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div style="display: flex; flex-direction: row;">
                <div style="padding-bottom: 20px; width: 49%; padding-left: 20px;">
                    <div style="border: solid #d5d5d5 1px; border-radius: 5px;">
                        <div style="margin-top: 20px; padding: 30px;">
                            <div style="padding-bottom: 15px">
                                <h2 style="margin: 0;">Wednesday</h2>
                            </div>
                            <div>
                                <div class="container">
                                    <div class="row mt-5">
                                        <div class="col-sm-12">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>Subject</th>
                                                    <th>Time</th>
                                                    <th>Teacher</th>
                                                    <th>Room</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>-</td>
                                                    <td>08:00-08:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Mobile technologies</td>
                                                    <td>09:00-09:50</td>
                                                    <td>Aigerim Bolshebikova</td>
                                                    <td>904</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>10:00-10:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>11:00-11:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>12:10-13:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>13:10-14:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>14:10-15:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Mobile technologies</td>
                                                    <td>15:10-16:00</td>
                                                    <td>Aigerim Bolshebikova</td>
                                                    <td>904</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="padding-bottom: 20px; width: 49%; padding-left: 20px">
                    <div style="border: solid #d5d5d5 1px; border-radius: 5px;">
                        <div style="margin-top: 20px; padding: 30px;">
                            <div style="padding-bottom: 15px">
                                <h2 style="margin: 0;">Thursday</h2>
                            </div>
                            <div>
                                <div class="container">
                                    <div class="row mt-5">
                                        <div class="col-sm-12">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>Subject</th>
                                                    <th>Time</th>
                                                    <th>Teacher</th>
                                                    <th>Room</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>-</td>
                                                    <td>08:00-08:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>09:00-09:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>10:00-10:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Operating Systems</td>
                                                    <td>11:00-11:50</td>
                                                    <td>Nurgul Seilova</td>
                                                    <td>online</td>
                                                </tr>
                                                <tr>
                                                    <td>Information security</td>
                                                    <td>12:10-13:00</td>
                                                    <td>Nurgul Seilova</td>
                                                    <td>online</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>13:10-14:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>14:10-15:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>15:10-16:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div style="display: flex; flex-direction: row;">
                <div style="padding-bottom: 20px; width: 49%; padding-left: 20px;">
                    <div style="border: solid #d5d5d5 1px; border-radius: 5px;">
                        <div style="margin-top: 20px; padding: 30px;">
                            <div style="padding-bottom: 15px">
                                <h2 style="margin: 0;">Friday</h2>
                            </div>
                            <div>
                                <div class="container">
                                    <div class="row mt-5">
                                        <div class="col-sm-12">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>Subject</th>
                                                    <th>Time</th>
                                                    <th>Teacher</th>
                                                    <th>Room</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Backend</td>
                                                    <td>08:00-08:50</td>
                                                    <td>Olzhas Tokanov</td>
                                                    <td>507</td>
                                                </tr>
                                                <tr>
                                                    <td>Backend</td>
                                                    <td>09:00-09:50</td>
                                                    <td>Olzhas Tokanov</td>
                                                    <td>507</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>10:00-10:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Operating Systems</td>
                                                    <td>11:00-11:50</td>
                                                    <td>Nurgul Seilova</td>
                                                    <td>301</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>12:10-13:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>13:10-14:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>14:10-15:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Operating Systems</td>
                                                    <td>15:10-16:00</td>
                                                    <td>Zhansaya Bekaulova</td>
                                                    <td>605</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="padding-bottom: 20px; width: 49%; padding-left: 20px">
                    <div style="border: solid #d5d5d5 1px; border-radius: 5px;">
                        <div style="margin-top: 20px; padding: 30px;">
                            <div style="padding-bottom: 15px">
                                <h2 style="margin: 0;">Saturday</h2>
                            </div>
                            <div>
                                <div class="container">
                                    <div class="row mt-5">
                                        <div class="col-sm-12">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>Subject</th>
                                                    <th>Time</th>
                                                    <th>Teacher</th>
                                                    <th>Room</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>-</td>
                                                    <td>08:00-08:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>09:00-09:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>10:00-10:50</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>Operating Systems</td>
                                                    <td>11:00-11:50</td>
                                                    <td>Nurgul Seilova</td>
                                                    <td>301</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>12:10-13:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>13:10-14:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>14:10-15:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>15:10-16:00</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>
</div>


</body>
</html>
