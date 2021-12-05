/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ALEX CARLO
 */
public class Conexion {
    Connection con;
     String url="jdbc:mysql://localhost:3306/bdpost";
     String user="root";
     String pass="";
    public  Connection Conexion(){
        
        
            try{
                 Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url,user,pass);
                System.out.println("Hola");
            } catch(SQLException ex){
                System.out.println("Error SQL: " + ex.getMessage());
                
            } catch(ClassNotFoundException ex){
                System.out.println("Error Class: " + ex.getMessage());
            }
         
        return con;
    }
    
}
