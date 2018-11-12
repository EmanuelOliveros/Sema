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
import modelos.Usuario;

/**
 *
 * @author USUARIO
 */
public class RegistroUsuario extends HttpServlet {

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
        
        RequestDispatcher rd = request.getRequestDispatcher("jsp/registro.jsp");
                        
        List<Usuario> usuarios = usuarios();
        request.setAttribute("usuarios", usuarios);
        
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
        
        RequestDispatcher rd = request.getRequestDispatcher("jsp/registro.jsp");                
        
        String idregistrosStr = request.getParameter("idregistros");
        String email = request.getParameter("email");
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contraseña");
                
        
        if(idregistrosStr != null && !idregistrosStr.equals("")){
            int idregistros = Integer.parseInt(idregistrosStr);
            actualizarImagen(idregistros, email, usuario, contraseña);
        } else {
            guardarImagen(email, usuario, contraseña);
        }
        
        List<Usuario> usuarios = usuarios();
        request.setAttribute("usuarios", usuarios);
        
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

    private void guardarImagen(String email, String usuario, String contraseña) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sema", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `sema`.`registros` (`email`, `usuario`, `contraseña`) VALUES (?, ?, ?)");
            ps.setString(1, email);
            ps.setString(2, usuario);
            ps.setString(3, contraseña);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistroUsuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegistroUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        

    List<Usuario> usuarios() {
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sema", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM registros");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                int idregistros = resultados.getInt("idregistros");
                String email = resultados.getString("email");
                String usuario = resultados.getString("usuario");
                String contraseña = resultados.getString("contraseña");
                Usuario i = new Usuario();
                i.idregistros = idregistros;
                i.email = email;
                i.usuario = usuario;
                i.contraseña = contraseña;
                listaUsuarios.add(i);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Galeria.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Galeria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaUsuarios;
    }

    private void actualizarImagen(int idregistros, String email, String usuario, String contraseña) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sema", "root", "");
            PreparedStatement ps = conexion.prepareStatement("UPDATE `sema`.`registros` SET `email` = ?, `usuario` = ?, `contraseña` = ? WHERE `idregistros` = ?");
            ps.setString(1, email);
            ps.setString(2, usuario);
            ps.setString(3, contraseña);
            ps.setInt(4, idregistros);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistroUsuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegistroUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
