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
public class PostDAO {
   Conexion cn = new Conexion();
   Connection con;
   PreparedStatement ps;
   ResultSet rs;
   int r;
   public List mostrar(){
       String sql = "select * from tpost ORDER BY id DESC";
       List<Post> lista = new ArrayList<>();
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
               Post p = new Post();
               p.setId(rs.getInt(1));
               p.setId_usuario(rs.getInt(2));
               p.setFecha(rs.getString(3));
               p.setTema(rs.getString(4));
               p.setContenido(rs.getString(5));
               p.setUsername(rs.getString(6));
               lista.add(p);
           }
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return lista;
   }
   
   public int agregar(Post p){
    String sql = "insert into tpost(id_usuario, fecha, tema, contenido, username)values(?,?,?,?,?)";
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           ps.setInt(1, p.getId_usuario());
           ps.setString(2, p.getFecha());
           ps.setString(3, p.getTema());
           ps.setString(4, p.getContenido());
           ps.setString(5, p.getUsername());
           ps.executeUpdate();
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return r;
       
   }
   
   public Post listarId(int id){
       Post p = new Post();
       String sql = "select * from empleado where id="+id;
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           rs = ps.executeQuery();
           while(rs.next()){
               
               p.setId_usuario(rs.getInt(2));
               p.setFecha(rs.getString(3));
               p.setTema(rs.getString(4));
               p.setContenido(rs.getString(5));
               
           }
       }catch(Exception e){
           System.out.println("Message Error BD" + e.getMessage());
       }
       return p;
   }
   public int editar(Post p){
       String sql = "update tpost set fecha=?, tema=?, contenido=? where id=?";
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           
           ps.setString(1, p.getFecha());
           ps.setString(2, p.getTema());
           ps.setString(3, p.getContenido());
           ps.setInt(4, p.getId());
           ps.executeUpdate();
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return 0;
   }
   public void delete (int id){
       String sql = "delete from tpost where id="+id;
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           ps.executeUpdate();
           
       }catch(Exception e){
           System.out.println("Error BD" + e.getMessage());
       }
   }
}
