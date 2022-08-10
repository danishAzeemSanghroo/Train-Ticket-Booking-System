
package Servlets;

import Beans.EmployeeBean;
import Beans.ScheduleBean;
import Beans.TrainBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class addschedule extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
         String train=request.getParameter("train");
            String from=request.getParameter("from");
            String to=request.getParameter("to");
            String dtime=request.getParameter("dtime");
            String atime=request.getParameter("atime");
            String fare=request.getParameter("fare");
            System.out.println(train+":"+from+":"+to+":"+dtime+":"+atime+":"+fare);
            
            TrainBean trainBean=Database.DatabaseManager.getTrainID(train);
            
            
            ScheduleBean sBean = new ScheduleBean();
            
            sBean.setTrainId(trainBean.getTrainId());
            sBean.setFrom(from);
            sBean.setTo(to);
            sBean.setDepTime(dtime);
            sBean.setArrTime(atime);
            sBean.setFare(fare);
            
            int row = Database.DatabaseManager.addSchedule(sBean);
            if(row>0)
            {
                response.sendRedirect("AddSchedule.jsp?msg=success");
            }
                        else
            {
                response.sendRedirect("AddSchedule.jsp?msg=invalid");
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(addschedule.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
            
            
                   
            
            
            
        } catch (Exception ex) {
            Logger.getLogger(addschedule.class.getName()).log(Level.SEVERE, null, ex);
        }
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
