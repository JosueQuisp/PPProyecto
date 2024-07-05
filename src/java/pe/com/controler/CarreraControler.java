/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pe.com.controler;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.com.Dao.CarreraDao;
import pe.com.DaoImpl.CarreraDaoImpl;
import pe.com.entity.CarreraEntity;

/**
 *
 * @author User
 */
public class CarreraControler extends HttpServlet {
    private CarreraDao carreradao =new CarreraDaoImpl(); 
    private Gson g= new Gson(); 
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
        PrintWriter out = response.getWriter(); 
        int opcion = Integer.parseInt(request.getParameter("opc")); 
        
        switch (opcion) {
            case 1 -> out.print(g.toJson(carreradao.readAll()));
            case 2 -> out.print(carreradao.createCarrera(new CarreraEntity(
                    0,
                    request.getParameter("nombre"),
                    request.getParameter("estado"),
                    request.getParameter("responsable") )));
            
            case 3 -> out.println(carreradao.deleteCarrera(Integer.parseInt(request.getParameter("id"))));
            case 4 -> out.println(carreradao.updateCarrera(new CarreraEntity(
                Integer.parseInt(request.getParameter("id")),
                request.getParameter("nombre"),
                request.getParameter("estado"),
                request.getParameter("responsable"))));
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
