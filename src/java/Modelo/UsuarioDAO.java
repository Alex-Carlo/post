/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ALEX CARLO
 */
public class UsuarioDAO {
    Conexion cn = new Conexion();
   Connection con;
   PreparedStatement ps;
   ResultSet rs;
   int r;
   
   public Usuario validar(String user, String pass){
       Usuario usuario = new Usuario();
       String sql = "Select * from tusuario where username=? and contrasena=?";
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           ps.setString(1, user);
           ps.setString(2, pass);
           rs = ps.executeQuery();
           while(rs.next()){
               usuario.setId(rs.getInt("id"));
               usuario.setUsername(rs.getString("username"));
               usuario.setContrasena(rs.getString("contrasena"));
               usuario.setNombre(rs.getString("nombre"));
           }
       }catch(Exception ex){
           System.out.println("Error en la base de datos" + ex.getMessage());
       }
       return usuario;
   }
    
   
   
    public int agregarUsuario(Usuario u){
    String sql = "insert into tusuario(identificacion, nombre, apellido, username, contrasena, img)values(?,?,?,?,?,?)";
       try{
           if(existe(u.getUsername())){
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           ps.setString(1,u.getIdentificaion());
           ps.setString(2,u.getNombre());
           ps.setString(3,u.getApellido());
           ps.setString(4, u.getUsername());
           ps.setString(5, u.getContrasena());
           ps.setString(6, u.getImg());
           ps.executeUpdate();
           }
           else{
               r=1;
               System.out.println("estoy aqui");
           }
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return r;
       
   }
    
     public boolean existe(String username){
       boolean r=true;
       String sql = "Select * from tusuario where username=?";
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           ps.setString(1, username);
           rs = ps.executeQuery();
           if(rs.next()){
               r=false;
           }
               
           
       }catch(Exception ex){
           System.out.println("Error en la base de datos" + ex.getMessage());
       }
       return r;
   }
     
      public Usuario mostrarId(int id) {
       String sql = "select * from tusuario where id="+id;
       Usuario u = new Usuario();
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
               
               u.setId(rs.getInt("id"));
               u.setIdentificaion(rs.getString("identificacion"));
               u.setNombre(rs.getString("nombre"));
               u.setApellido(rs.getString("apellido"));
               u.setUsername(rs.getString("username"));
               u.setContrasena(rs.getString("contrasena"));
               u.setImg(rs.getString("img"));
              
           }
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return u;
    }
}
