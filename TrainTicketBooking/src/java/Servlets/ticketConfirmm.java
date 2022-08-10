/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Beans.TicketBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DANISH
 */
public class ticketConfirmm extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String trainName=null;
            String fromStation=null;
            String toStation=null;
            String fare=null;
            String date1=request.getParameter("date1");
     
            HttpSession session1 = request.getSession();
            HttpSession session2 = request.getSession();
                int scId=(int) session1.getAttribute("scheduleId");
                String trainId=(String) session1.getAttribute("trainId");
                String cabin=(String) session1.getAttribute("cabin");
                String seat=(String) session1.getAttribute("seat");
                String username=(String)request.getSession().getAttribute("username");
                Integer trainId2=new Integer(trainId);
              System.out.println(username+":"+trainId2+":"+fare+":"+cabin+":"+seat+":"+scId);
 try{
                            Connection con=Database.DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from schedule where scheduleId="+scId);
                            while(rs.next())
                            {
                                fromStation = rs.getString(3);
                                toStation = rs.getString(4);
                                fare=rs.getString(7);
                             
                            }
                            ResultSet rs1=st.executeQuery("select * from train where trainId="+trainId2);
                            while(rs1.next())
                            {
                                trainName = rs1.getString(2);
                            }
                            
                            TicketBean tBean=new TicketBean();
                            tBean.setTrain(trainName);
                            tBean.setUsername(username);
                            tBean.setFromStation(fromStation);
                            tBean.setToStation(toStation);
                            tBean.setCabin(cabin);
                            tBean.setSeat(seat);
                            tBean.setPayment(fare);
                            tBean.setDate(date1);
                            
                            int row = Database.DatabaseManager.addTicket(tBean);
            if(row>0)
            {
                response.sendRedirect("Report.jsp?seat="+seat);
            }
                        else
            {
                response.sendRedirect("BookDetails.jsp?msg=invalid");
            }             
                            
                            
            }catch(Exception e)
            {
            System.out.println(e);	
            }                    
        
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
