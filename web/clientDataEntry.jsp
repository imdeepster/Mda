<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA</title>
        <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <%
            String userid = (String) session.getAttribute("userid");
            session.setAttribute("xy", userid);
        %>
        <div id="wrapper">
            <div id="header-wrapper">
                <div id="header">
                    <div id="logo">
                        <h1><a href="#">RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA</a></h1>				
                    </div>
                    <div id="menu">
                        <ul>
                            <li ><a href="ownerHome.jsp">Owner Home</a></li>
                            <li class="current_page_item"><a href="clientDataEntry.jsp">Data Entry</a></li>
                            <li><a href="index.html">Log Out</a></li>
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
                               <br></br>
                                                                <br></br>
                                <div class="entry">
                                    <%if (request.getParameter("msg") != null) {
                                             out.println("<h5>" + request.getParameter("msg") + "</h5>");
                                         }%>
                                    <div class="content_item">
                                        <form action="ClientDataEntryAction" method="post">
                                            <h3>Client Data Entry:</h3>
                                            <span>Select Client  
                                                <select style="height: 25px;width: 100px" id="client" name="client">
                                                    <option value="-1">-select-</option>
                                                    <option value="client1"> Client 1 </option>
                                                    <option value="client2"> Client 2 </option>
                                                    <option value="client3"> Client 3 </option>
                                                    <option value="client4"> Client 4 </option>
                                                    <option value="client5"> Client 5 </option>
                                                </select> 
                                                Month <select style="height: 25px;width: 100px" id="month" name="month">
                                                    <option value="-1">-select-</option>
                                                    <option value="JAN">JAN</option>
                                                    <option value="FEB">FEB</option>
                                                    <option value="MAR">MAR</option>
                                                    <option value="APR">APR</option>
                                                    <option value="MAY">MAY</option>
                                                    <option value="JUN">JUN</option>
                                                    <option value="JUL">JUL</option>
                                                    <option value="AUG">AUG</option>
                                                    <option value="SEP">SEP</option>
                                                    <option value="OCT">OCT</option>
                                                    <option value="NOV">NOV</option>
                                                    <option value="DEC">DEC</option>
                                                </select>
                                                Year<select style="height: 25px;width: 100px" id="year" name="year">
                                                    <option value="-1">-select-</option>
                                                    <option value="2014"> 2014 </option>
                                                    <option value="2015"> 2015 </option>
                                                    <option value="2016"> 2016 </option>
                                                </select></span>

                                            <br/>
                                            <br/>
                                            <table width="100%" border="1" cellpadding="0" cellspacing="0">
                                                <tr><td>

                                                        <table width="70%">
                                                            <tr style="height: 40px;"><td>D0S1179</td><td><input type="text" size="20" style="height: 25px;" id="a1" name="a1"></td></tr>
                                                            <tr style="height: 40px;"><td>D21S11</td><td><input type="text" size="20" style="height: 25px;" id="a2" name="a2"></td></tr>
                                                            <tr style="height: 40px;"><td>D7S820</td><td><input type="text" size="20" style="height: 25px;" id="a3" name="a3"></td></tr>
                                                            <tr style="height: 40px;"><td>CSF1PQ</td><td><input type="text" size="20" style="height: 25px;" id="a4" name="a4"></td></tr>
                                                            <tr style="height: 40px;"><td>D1S135</td><td><input type="text" size="20" style="height: 25px;" id="a5" name="a5"></td></tr>
                                                        </table>
                                                    </td>

                                                    <td>
                                                        <table width="70%">
                                                            <tr style="height: 40px;"><td>D13S31</td><td><input type="text" size="20" style="height: 25px;" id="b1" name="b1"></td></tr>
                                                            <tr style="height: 40px;"><td>C16S56</td><td><input type="text" size="20" style="height: 25px;" id="b2" name="b2"></td></tr>
                                                            <tr style="height: 40px;"><td>DQS133</td><td><input type="text" size="20" style="height: 25px;" id="b3" name="b3"></td></tr>
                                                            <tr style="height: 40px;"><td>D19S43</td><td><input type="text" size="20" style="height: 25px;" id="b4" name="b4"></td></tr>
                                                            <tr style="height: 40px;"><td>D5S812</td><td><input type="text" size="20" style="height: 25px;" id="b5" name="b5"></td></tr>
                                                        </table> 

                                                    </td>

                                                </tr>
                                                <tr><td colspan="2" align="center">
                                                        <input type="submit" value="Submit" style="height: 25px;width: 90px;">
                                                    </td></tr>
                                            </table>
                                        </form>

                                    </div><!--close content_item-->
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
