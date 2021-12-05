/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Modelo.Detalles;
import Modelo.DetallesDAO;
import Modelo.Post;
import Modelo.PostDAO;
import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ALEX CARLO
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    Post post = new Post();
    PostDAO pdao = new PostDAO();
    Detalles d = new Detalles();
    DetallesDAO dao = new DetallesDAO();
    Usuario us = new Usuario();
    UsuarioDAO udao = new UsuarioDAO();
    int ide;
    int id_usuario;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion =request.getParameter("accion");
        switch(accion){
            case"eliminar":
                
                ide = Integer.parseInt(request.getParameter("ide"));
                System.out.println(ide);
                pdao.delete(ide);
               
                request.getRequestDispatcher("Controlador?accion=principal").forward(request, response);
                break;
            case "principal":
                
                List lista= dao.mostrar();
                
                request.setAttribute("posts", lista);
                request.getRequestDispatcher("principal.jsp").forward(request, response);
                
                break;
                
            case "addpost":
                    int id_usuario=Integer.parseInt(request.getParameter("txtusuario"));
                    String fecha=request.getParameter("txtfecha");
                    String tema=request.getParameter("txttema");
                    String contenido=request.getParameter("txtcontenido");
                    String username=request.getParameter("txtusername");
                    post.setId_usuario(id_usuario);
                    post.setFecha(fecha);
                    post.setTema(tema);
                    post.setContenido(contenido);
                    post.setUsername(username);
                    pdao.agregar(post);
                    request.getRequestDispatcher("Controlador?accion=principal").forward(request, response);
                    break;
            case"agregarUsuario":
                    String identificacion=request.getParameter("identificacion");
                    String nombre=request.getParameter("nombre");
                    String apellido= request.getParameter("apellido");
                    String usuario= request.getParameter("username");
                    String contrasena= request.getParameter("contrasena");
                    String img= request.getParameter("img");
           
           String confirmarContrasena= request.getParameter("contrasenaa");
           
           
           if(contrasena.equalsIgnoreCase(confirmarContrasena)){
               us.setIdentificaion(identificacion);
             us.setNombre(nombre);
            us.setApellido(apellido);
           us.setUsername(usuario);
           us.setContrasena(contrasena);
           us.setImg(img);
            if(udao.agregarUsuario(us)==1){
                request.setAttribute("estado", "Usuario o identificacion ya existe");
               request.getRequestDispatcher("login.jsp").forward(request, response);
            }else{
                udao.agregarUsuario(us);
                request.setAttribute("estado", "Registro exitoso, ahora inicie sesion");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
           
           }else{
               request.setAttribute("estado", "La contrasena no es igual");
               request.getRequestDispatcher("login.jsp").forward(request, response);
           }
            break;
            
            case"mispost":
                
                id_usuario = Integer.parseInt(request.getParameter("id"));
                
                List listarId= dao.mostrarId(id_usuario);
              
                request.setAttribute("posts", listarId);
                request.getRequestDispatcher("mispost.jsp").forward(request, response);
                
                break;
            case "miperfil":
                
                id_usuario = Integer.parseInt(request.getParameter("id"));
                us = udao.mostrarId(id_usuario);
                request.setAttribute("usuario", us);
                request.getRequestDispatcher("miperfil.jsp").forward(request, response);
                
                
                break;
            case "invitado":
                List invitado= dao.mostrar();
                request.setAttribute("posts", invitado);
                request.getRequestDispatcher("invitado.jsp").forward(request, response);
                break;
            case "editar":
                int idpost=Integer.parseInt(request.getParameter("idp"));
               d= dao.mostrarIde(idpost);
                
              
                request.setAttribute("aux", d);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                
                break;
            case "editarpost":
                    System.out.println("estoy aqui");
                    
                    String topic=request.getParameter("txttema");
                    System.out.println("estoy aqui" + topic);
                    String conte=request.getParameter("txtcontenido");
                    String date=request.getParameter("txtfecha");
                    System.out.println("estoy aqui" + conte);
                    int idposts = Integer.parseInt(request.getParameter("txtidp"));
                    System.out.println("estoy aqui" + idposts);
                    System.out.println(topic);
                    Post aux = new Post();
                    aux.setId(idposts);
                    System.out.println("insertado idpost");
                    aux.setFecha(date);
                    System.out.println("insertado fecha");
                    aux.setTema(topic);
                    System.out.println("insetado topic");
                    aux.setContenido(conte);
                    System.out.println("insetado contenido");
                    
                    System.out.println("antes de entrar a la funcion");
                    pdao.editar(aux);
                    request.getRequestDispatcher("Controlador?accion=principal").forward(request, response);
                            
                    
                
                break;
                
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
