/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Action;

import com.zot.DbConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sabari
 */
public class ViewData extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
             PreparedStatement pst = null;
                                Connection conn = null;
                                try {
                                    System.out.println("....................................................");
                                    conn = DbConnector.getConnection();
                                    String sql = "select * from data where id_='"+request.getParameter("id_")+"'";
                                    System.out.println(sql);
                                    pst = conn.prepareStatement(sql);       
                                    ResultSet rs=pst.executeQuery();
                                    if(rs.next()){
                                        String res=
                                                "<table border='1'>"
                                                +"<tr><td>D0S1179</td><td>"+rs.getString(1) +"</td><td>D21S11</td><td>"+rs.getString(2)+"</td></tr>"
                                                +"<tr><td>D7S820</td><td>"+rs.getString(3) +"</td><td>CSF1PQ</td><td>"+rs.getString(4)+"</td></tr>"
                                                +"<tr><td>D1S135</td><td>"+rs.getString(5) +"</td><td>D13S31</td><td>"+rs.getString(6)+"</td></tr>"
                                                +"<tr><td>C16S56</td><td>"+rs.getString(7) +"</td><td>DQS133</td><td>"+rs.getString(8)+"</td></tr>"
                                                +"<tr><td>D19S43</td><td>"+rs.getString(9) +"</td><td>D5S812</td><td>"+rs.getString(10)+"</td></tr>"
                                                +"</table>";
                                        System.out.println(">>>>>>"+res);
                                       response.getWriter().write(res);                                              
                                    }else{
                                        response.getWriter().write("not found");       
                                    }
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
