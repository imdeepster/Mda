<%@page import="com.zot.CEncrypt"%>
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
        <div id="wrapper">
            <div id="header-wrapper">
                <div id="header">
                    <div id="logo">
                        <h1><a href="#">RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA</a></h1>	
                        <h1><a href="#"></a></h1>				
                    </div>
                    <div id="menu">
                        <ul>
                            <li ><a href="clientHome.jsp">Client Home</a></li>
                            <li class="current_page_item"><a href="clientDataKey.jsp">Data Key</a></li>
                            <li><a href="clientData.jsp">View Data</a></li>
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
                                <div class="entry">
                                    <table width="90%" border="1">
                                        <tr><td>D0S1179</td><td>D21S11</td><td>D7S820</td><td>CSF1PQ</td><td>D1S135</td><td>D13S31</td><td>C16S56</td><td>DQS133</td><td>D19S43</td><td>D5S812</td><td>Client</td><td>Month</td><td>Year</td><td>Verified</td></tr>

                                        <%
                                            String sql = "select * from data where id_=" + request.getParameter("id_");
                                            PreparedStatement pst = null;
                                            String keys = request.getParameter("key_");
                                            Connection conn = null;
                                            String k = "";
                                            try {
                                                conn = DbConnector.getConnection();
                                                pst = conn.prepareStatement(sql);
                                                ResultSet rs = pst.executeQuery();
                                                if (rs.next()) {
                                                    k = rs.getString(14);
                                                    System.out.println("" + k);
                                        %>
                                        <tr>
                                            <td><%=CEncrypt.decryptString(rs.getString(1), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(2), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(3), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(4), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(5), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(6), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(7), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(8), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(9), keys)%></td>
                                            <td><%=CEncrypt.decryptString(rs.getString(10), keys)%></td>
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
                                    <br/>
                                    <br/>
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
