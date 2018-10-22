/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Imagen;
import modelos.Tipo;

/**
 *
 * @author USUARIO
 */
public class NuevoProducto extends HttpServlet {

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
        
        RequestDispatcher rd = request.getRequestDispatcher("jsp/nueva-producto.jsp");
        
        List<Tipo> tipos = tipos();
        request.setAttribute("tipos", tipos);
        
        List<Imagen> imagenes = imagenes();
        request.setAttribute("imagenes", imagenes);
        
        rd.forward(request, response);
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
        
        RequestDispatcher rd = request.getRequestDispatcher("jsp/nueva-producto.jsp");
        List<Tipo> tipos = tipos();
        request.setAttribute("tipos", tipos);
        
        String idproductosStr = request.getParameter("idproductos");
        String nombre = request.getParameter("nombre");
        String precio = request.getParameter("precio");
        
        int tipo = Integer.parseInt(request.getParameter("tipo"));
        
        if(idproductosStr != null && !idproductosStr.equals("")){
            int idproductos = Integer.parseInt(idproductosStr);
            actualizarImagen(idproductos, nombre, precio, tipo);
        } else {
            guardarImagen(nombre, precio, tipo);
        }
        
        List<Imagen> imagenes = imagenes();
        request.setAttribute("imagenes", imagenes);
        
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

    private void guardarImagen(String nombre, String precio, int tipo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `ejemplo`.`productos` (`nombre`, `precio`, tipo) VALUES (?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, precio);
            ps.setInt(3, tipo);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NuevoProducto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(NuevoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    List<Tipo> tipos() {
        List<Tipo> listaTipos = new ArrayList<Tipo>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM tipo");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                int id = resultados.getInt("id");
                String nombre = resultados.getString("nombre");
                Tipo t = new Tipo();
                t.id = id;
                t.nombre = nombre;
                listaTipos.add(t);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NuevoProducto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(NuevoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaTipos;
    }

    List<Imagen> imagenes() {
        List<Imagen> listaImagenes = new ArrayList<Imagen>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM productos");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                int idproductos = resultados.getInt("idproductos");
                String nombre = resultados.getString("nombre");
                String precio = resultados.getString("precio");
                Imagen i = new Imagen();
                i.idproductos = idproductos;
                i.nombre = nombre;
                i.precio = precio;
                listaImagenes.add(i);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Galeria.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Galeria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaImagenes;
    }

    private void actualizarImagen(int idproductos, String nombre, String precio, int tipo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("UPDATE `ejemplo`.`productos` SET `nombre` = ?, `precio` = ?, `tipo` = ? WHERE `idproductos` = ?");
            ps.setString(1, nombre);
            ps.setString(2, precio);
            ps.setInt(3, tipo);
            ps.setInt(4, idproductos);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NuevoProducto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(NuevoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
