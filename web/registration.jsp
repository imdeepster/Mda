<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA USING K-NEAREST NEIGHBOUR</title>
        <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header-wrapper">
                <div id="header">
                    <div id="logo">
                        <h1><a href="#">RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA</a></h1>				
                    </div>
                    <div id="menu">
                        <ul>
                            <li ><a href="index.html">Home</a></li>
                            <li><a href="login.jsp">Data Owner</a></li>
                            <li><a href="trusterClient.jsp">Trusted Client</a></li>
                            <li><a href="server.jsp">Server</a></li>
                            <li class="current_page_item"><a href="registration.jsp">Registration</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- end #header -->
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">
                            <div class="post">
                                <h2 class="title"><a href="#">RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA</a></h2>
                                <div class="entry">
                                    <%if (request.getParameter("msg") != null) {
                                            out.println(request.getParameter("msg"));
                                        }%>
                                    <br></br>
                                                                <br></br>
                                        <h3>Registration:</h3>
                                    <form method="post" action="OwnerRegistration">
                                        <table width="70%">
                                            <tr style="height: 40px;"><td>User id:</td><td><input type="text" size="30" style="height: 25px;" id="_name" name="_name"></td></tr>
                                            <tr style="height: 40px;"><td>Password:</td><td><input type="password" size="30" style="height: 25px;" id="_password" name="_password"></td></tr>
                                            <tr style="height: 40px;"><td>Gender:</td><td><input type="radio" name="sex" id="sex" value="male" /> Male
                                                    <input type="radio" name="sex" id="sex" value="female" /> Female</td></tr>
                                            <tr style="height: 40px;"><td>Age:</td><td><input type="text" size="30" style="height: 25px;" id="_age" name="_age"></td></tr>
                                            <tr style="height: 40px;"><td>Phone:</td><td><input type="text" size="30" style="height: 25px;" id="_phone" name="_phone"></td></tr>
                                            <tr style="height: 40px;"><td>Email-Id:</td><td><input type="text" size="30" style="height: 25px;" id="_emailid" name="_emailid"></td></tr>
                                            <tr style="height: 40px;"><td></td><td><input type="submit" value="Submit" style="height: 25px;width: 90px;"></td></tr>
                                        </table>
                                    </form>	
                                </div>
                            </div>
                            <div style="clear: both;">&nbsp;</div>
                        </div>
                        <!-- end #content -->

                        <!-- end #sidebar -->
                        <div style="clear: both;">&nbsp;</div>
                    </div>
                </div>
            </div>
            <!-- end #page -->
            <div id="footer">
                            </div>
        </div>
        <!-- end #footer -->
    </body>
</html>
