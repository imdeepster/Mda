<%@page import="com.zot.CEncrypt"%>
<%@page import="com.zot.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
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
        <script type="text/javascript">
            var xmlhttp;
            function loadXMLDoc()
            {
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                var d = new Date();
                var n = d.getSeconds();
                var url="GetKey?id_="+document.getElementById("keys").value+"kkk?="+n;
                xmlhttp.onreadystatechange=myFunction;
                xmlhttp.open("GET",url,true);
                //alert(url);
                xmlhttp.send();
            }
            function myFunction()
            {
                //  alert(xmlhttp.status);
                if(xmlhttp.readyState == 4){
                    if ( xmlhttp.status==200)
                    {
                        //   alert(xmlhttp.responseText);
                        document.getElementById("responseT").innerHTML=xmlhttp.responseText;
                    }
                }
            }
        </script>
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
                                                                <br></br>
                                <div class="entry">
                                    <%if (request.getParameter("msg") != null) {
                                            out.println(request.getParameter("msg"));
                                        }%>
                                    <h2>Data Key:</h2>
                                    Select Data Id: <select id="keys" onchange="loadXMLDoc()">
                                        <option value="-1">-Select-</option>

                                        <%
                                            String cli = (String) session.getAttribute("userid");
                                            String sql = "select id_ from data where client='" + cli + "'";
                                            System.out.println(";;;;;;;;;;;;;;;" + sql);
                                            PreparedStatement pst = null;
                                            Connection conn = null;
                                            try {
                                                conn = DbConnector.getConnection();
                                                pst = conn.prepareStatement(sql);
                                                ResultSet rs = pst.executeQuery();
                                                while (rs.next()) {%>
                                        <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                        <%}
                                            } catch (Exception e) {
                                            }%>
                                    </select>  
                                    <br/>
                                    <br/>
                                    <span> Data Key: <label id="responseT"></span>
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
