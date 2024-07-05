/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class Conexion {
    
    private static Connection conexion; 
    
    public static Connection getConexion() {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            if(conexion==null){
                conexion = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "C##LP", "123");
            }
            
        } catch (ClassNotFoundException | SQLException cnfe) {
            System.out.println("Error1: " + cnfe);
        }
        return conexion;
    }

    public Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
