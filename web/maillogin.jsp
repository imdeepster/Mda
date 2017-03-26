<%@page import="com.zot.validate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.zot.CEncrypt"%>
<%@page import="com.zot.DbConnector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

    <head>
        <title>Login</title>
        <meta name="description" content="free website template" />
        <meta name="keywords" content="enter your keywords here" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
    </head>

    <body>
        <div id="main">
            <br/>
            <div style="margin-left:18%;margin-top: 5px;height: 50px;"><h1 style="color: black;font-size: 20px;">RESOLVE THE CLASSIFICATION PROBLEM OVER ENCRYPTED DATA USING K-NEAREST NEIGHBOUR</h1></div>
            <div id="menubar">
                <ul id="menu">
                    <li ><a href="index.html">Home</a></li>
                    <li class="current"><a href="login.jsp">Data Owner</a></li>
                    <li><a href="trusterClient.jsp">Trusted Client</a></li>
                    <li><a href="server.jsp">Server</a></li>
                    <li><a href="registration.jsp">Registration</a></li>
                </ul>
            </div><!--close menubar-->	

            <div id="site_content">		

                <div class="sidebar_container">       
                </div><!--close sidebar_container-->		 

                <div id="content">
                    <div class="content_item">
                        <%if (request.getParameter("msg") != null) {
                                out.println(request.getParameter("msg"));

                            }
                            String mailid;
                            String s = request.getParameter("content");
                            String userid = (String) session.getAttribute("xy");
                            PreparedStatement pst = null;
                            Connection conn = null;
                            String sql = "";
                            try {
                                conn = (Connection) DbConnector.getConnection();
                                sql = "select * from ownr where userid='" + userid + "'";
                                pst = (PreparedStatement) conn.prepareStatement(sql);
                                ResultSet rs = pst.executeQuery();
                                if (rs.next()) {
                                    mailid = rs.getString("emailid");
                                    if (validate.sendMail(s, userid, mailid)) {
                                        response.sendRedirect("clientDataEntry.jsp?msg=Entry Done kEY is Sent to your registered MAIL");
                                    }
                                }
                                response.sendRedirect("clientDataEntry.jsp?msg=Entry Done. But, Your mail id doesn't exist, Your key is not send to your id");
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        </form>		  
                    </div><!--close content_item-->
                </div><!--close content-->   
            </div><!--close site_content--> 

    </body>
</html>
