<%@page import="java.sql.ResultSet"%>
<%@page import="com.zot.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
        <%   String myname = request.getParameter("x");
            out.println("Welcome <B>" + myname + "</B>");
            session.setAttribute("userid", myname);
        %>
        <div id="wrapper">
            <div id="header-wrapper">
                <div id="header">
                    <div id="logo">
                        <h1><a href="#">RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA</a></h1>				
                    </div>
                    <div id="menu">
                        <ul>
                            <li class="current_page_item"><a href="ownerHome.jsp">Owner Home</a></li>
                            <li><a href="clientDataEntry.jsp">Data Entry</a></li>
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
                                    <table width="90%" border="1">
                                        <tr><td>D0S1179</td><td>D21S11</td><td>D7S820</td><td>CSF1PQ</td><td>D1S135</td><td>D13S31</td><td>C16S56</td><td>DQS133</td><td>D19S43</td><td>D5S812</td><td>Client</td><td>Month</td><td>Year</td><td>Verified</td></tr>

                                        <%
                                            String sql = "select * from data";
                                            PreparedStatement pst = null;
                                            Connection conn = null;
                                            try {
                                                conn = DbConnector.getConnection();
                                                pst = conn.prepareStatement(sql);
                                                ResultSet rs = pst.executeQuery();
                                while (rs.next()) {%>
                                        <tr>
                                            <td><%=rs.getString(1)%></td>
                                            <td><%=rs.getString(2)%></td>
                                            <td><%=rs.getString(3)%></td>
                                            <td><%=rs.getString(4)%></td>
                                            <td><%=rs.getString(5)%></td>
                                            <td><%=rs.getString(6)%></td>
                                            <td><%=rs.getString(7)%></td>
                                            <td><%=rs.getString(8)%></td>
                                            <td><%=rs.getString(9)%></td>
                                            <td><%=rs.getString(10)%></td>
                                            <td><%=rs.getString(11)%></td>
                                            <td><%=rs.getString(12)%></td>
                                            <td><%=rs.getString(13)%></td>
                                            <td><%=rs.getString(15)%></td>

                                        </tr>  
                                        <%}

                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }

                                        %>

                                    </table>
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
