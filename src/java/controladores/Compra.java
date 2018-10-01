/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Imagen;

/**
 *
 * @author Usuario
 */
public class Compra extends HttpServlet {


    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       RequestDispatcher rd = request.getRequestDispatcher("jsp/compra.jsp");
       rd.forward(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       RequestDispatcher rd = request.getRequestDispatcher("jsp/compra.jsp");
        String email = request.getParameter("email");
        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String pais = request.getParameter("pais");
        String ciudad = request.getParameter("ciudad");
        String direccion = request.getParameter("direccion");
        String nombre_producto = request.getParameter("nombre_producto");
        String especificacion_producto = request.getParameter("especificacion_producto");
        String cantidad = request.getParameter("cantidad");
        String metodo_pago = request.getParameter("metodo_pago");
        String costo = request.getParameter("costo");
        String idcompraSt = request.getParameter("idcompra");
        if(idcompraSt == null || idcompraSt.equals("")) {
            guardarCompra(email, nombre, telefono, pais, ciudad, direccion, nombre_producto, 
                especificacion_producto, cantidad, metodo_pago, costo );
        } else {
            int idcompra = Integer.parseInt(idcompraSt);
//            actualizaCompra();
        }
        rd.forward(request, response);
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

    private void guardarCompra(String email, String nombre, String telefono, 
            String pais, String ciudad, String direccion, String nombre_producto, String 
                    especificacion_producto, String cantidad, String metodo_pago, String costo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sema", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `sema`.`compra` ("
                    + "`email`, `nombre`, `telefono`"
                    + ", `pais`, `ciudad`, `direccion`"
                    + ", `nombre_producto`, `especificacion_producto`"
                    + ", `cantidad`, `metodo_de_pago`, `costo`) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, email);
            ps.setString(2, nombre);
            ps.setString(3, telefono);
            ps.setString(4, pais);
            ps.setString(5, ciudad);
            ps.setString(6, direccion);
            ps.setString(7, nombre_producto);
            ps.setString(8, especificacion_producto);
            ps.setString(9, cantidad);
            ps.setString(10, metodo_pago);
            ps.setString(11, costo);
            ps.execute();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
