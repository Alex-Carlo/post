/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author ALEX CARLO
 */
public class Usuario {
    int id;
    String identificaion;
    String nombre;
    String apellido;
    String username;
    String contrasena;
    String img;

    

    public Usuario(){
        
    }
    public Usuario(int id, String identificaion, String nombre, String apellido, String username, String contrasena) {
        this.id = id;
        this.identificaion = identificaion;
        this.nombre = nombre;
        this.apellido = apellido;
        this.username = username;
        this.contrasena = contrasena;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdentificaion() {
        return identificaion;
    }

    public void setIdentificaion(String identificaion) {
        this.identificaion = identificaion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
}
