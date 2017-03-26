/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Action;

import com.zot.CEncrypt;
import com.zot.DbConnector;
import com.zot.SendMailSSL;
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
public class ClientDataEntryAction extends HttpServlet {

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
        PreparedStatement pst = null;
        Connection conn = null;
        try {
            conn = (Connection) DbConnector.getConnection();
            String a1 = request.getParameter("a1");
            String a2 = request.getParameter("a2");
            String a3 = request.getParameter("a3");
            String a4 = request.getParameter("a4");
            String a5 = request.getParameter("a5");
            String b1 = request.getParameter("b1");
            String b2 = request.getParameter("b2");
            String b3 = request.getParameter("b3");
            String b4 = request.getParameter("b4");
            String b5 = request.getParameter("b5");
            String mon = request.getParameter("month");
            String year = request.getParameter("year");
            String cli = request.getParameter("client");
            
            if( mon=="-1" || year=="-1" || cli=="-1" ){
                response.sendRedirect("clientDataEntry.jsp?msg=Fill All The Fields");
            }
            
            
            if (a1 == "" || a2 == "" || a3 == "" || a4 == "" || a5 == "" || b1 == "" || b2 == "" || b3 == "" || b4 == "" || b5 == "") {
                response.sendRedirect("clientDataEntry.jsp?msg=Fill All The Fields");
            }
            String s="select max(id_) from data";
            pst=(PreparedStatement) conn.prepareStatement(s);
            ResultSet rs= pst.executeQuery();
            int count=1;
            if(rs.next()){
            count=rs.getInt(1)+1;
            }
            String key=CEncrypt.generatePin()+"";
            String sql = "insert into data values('" + CEncrypt.encryptString(a1,key) + "','" +CEncrypt.encryptString(a2,key)+ "','" +
                    CEncrypt.encryptString(a3,key) + "','" + CEncrypt.encryptString(a4,key) + "','" + CEncrypt.encryptString(a5,key) 
                    + "','" + CEncrypt.encryptString(b1,key) + "','" + CEncrypt.encryptString(b2,key) + "','" + CEncrypt.encryptString(b3,key) + "','" 
                    + CEncrypt.encryptString(b4,key) + "','" + CEncrypt.encryptString(b5,key) + "','"+cli+"','"+mon+"','"+year+"',"+count+",'no')";
            pst = (PreparedStatement) conn.prepareStatement(sql);
            int a = pst.executeUpdate();        
                        System.out.println("Success");
            String cry="insert into crypto values("+count+",'"+key+"')";
             pst=(PreparedStatement) conn.prepareStatement(cry);
             pst.executeUpdate();            
            SendMailSSL.sendMail("Your DNA ID:"+count+"\n Your Key is:"+key);
             String x="YourDNAID:"+count+"YourKeyis:"+key;
            response.sendRedirect("maillogin.jsp?content="+x);
            response.sendRedirect("clientDataEntry.jsp?msg=Entry Done");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("ERROR    "+e);
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
