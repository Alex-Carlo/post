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
public class DetallesDAO {
    
     Conexion cn = new Conexion();
   Connection con;
   PreparedStatement ps;
   ResultSet rs;
   int r;
   public List mostrar(){
       String sql = "select * from detalles ORDER BY id DESC";
       List<Detalles> lista = new ArrayList<>();
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
               Detalles d = new Detalles();
               d.setId(rs.getInt(1));
               d.setId_usuario(rs.getInt(2));
               d.setUsername(rs.getString(3));
               d.setTema(rs.getString(4));
               d.setContenido(rs.getString(5));
               d.setFecha(rs.getString(6));
               d.setImg(rs.getString(7));
               
               lista.add(d);
           }
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return lista;
   }

    public List mostrarId(int id) {
       String sql = "select * from detalles where id_usuario="+id;
       List<Detalles> lista = new ArrayList<>();
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
               Detalles d = new Detalles();
               d.setId(rs.getInt(1));
               d.setId_usuario(rs.getInt(2));
               d.setUsername(rs.getString(3));
               d.setTema(rs.getString(4));
               d.setContenido(rs.getString(5));
               d.setFecha(rs.getString(6));
               d.setImg(rs.getString(7));
               
               lista.add(d);
           }
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return lista;
    }
      public Detalles mostrarIde(int id) {
       String sql = "select * from detalles where id="+id;
       Detalles d = new Detalles();
       try{
           con = cn.Conexion();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
               
               d.setId(rs.getInt(1));
               d.setId_usuario(rs.getInt(2));
               d.setUsername(rs.getString(3));
               d.setTema(rs.getString(4));
               d.setContenido(rs.getString(5));
               d.setFecha(rs.getString(6));
               d.setImg(rs.getString(7));
               
              
           }
       }catch(Exception e){
           System.out.println("Mesage Error" + e.getMessage());
       }
       return d;
    }
    
}
