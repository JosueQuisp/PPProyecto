/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.Tes;

import com.google.gson.Gson;
import pe.com.Dao.CarreraDao;
import pe.com.Dao.UsuarioDao;
import pe.com.DaoImpl.CarreraDaoImpl;
import pe.com.DaoImpl.UsuarioDaoImpl;

import pe.com.config.Conexion;
import pe.com.entity.CarreraEntity;

/**
 *
 * @author User
 */
public class Tes {
    
    static UsuarioDao udao = new UsuarioDaoImpl();
    static Gson g = new Gson();
    static  CarreraDao rdao=new CarreraDaoImpl(); 
    
     public static void main(String[] args) {
         
         //cone();
        // System.out.println(g.toJson(rdao.createCarrera(new CarreraEntity(0,"sfs","Actsdfaadfsdfivo","Juansdf Sanches"))));
        //  System.out.println(g.toJson(rdao.updateCarrera(new CarreraEntity(2, "JIJIJJI", "NO ACTIVO", "PUCHA"))));
         
         // System.out.println(g.toJson(rdao.deleteCarrera(2)));
         
        //  System.out.println(g.toJson(rdao.readCarrera(3)));
        //System.out.println(g.toJson(rdao.readAll()));
        
    }
     
    public static void cone(){
        
        // TODO code application logic here
        if(Conexion.getConexion()!=null){
            System.out.println("Conectado");
        }else{
            System.out.println("no conectado");
        }   
        
        System.out.println(g.toJson(udao.login("josue", "123")));
        
    }
    
}


