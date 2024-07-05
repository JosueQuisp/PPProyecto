/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.DaoImpl;

import java.util.List;
import pe.com.Dao.CarreraDao;
import pe.com.entity.CarreraEntity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import pe.com.config.Conexion;
/**
 *
 * @author User
 */
public class CarreraDaoImpl implements CarreraDao{
   
private PreparedStatement ps; 
private ResultSet rs;
private Connection cx; 
    

    @Override
    public int createCarrera(CarreraEntity r) {
        
        int x=0; 
        String SQL= "INSERT INTO CARRERA(idcarrera, nombre, estado, responsable) VALUES(sq_carrera.NEXTVAL, ?, ?, ?)";
        try {
            cx = Conexion.getConexion(); 
            ps = cx.prepareStatement(SQL); 
            ps.setString(1, r.getNombre());
            ps.setString(2, r.getEstado());
            ps.setString(3, r.getResponsable());
            x= ps.executeUpdate(); 
            
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        
        return x; 
    
    }

    @Override
    public int updateCarrera(CarreraEntity r) {
        
        int x=0; 
        String SQL= "UPDATE CARRERA SET nombre=?, estado=?, responsable=?  WHERE idcarrera=?"; 
        try {
            cx = Conexion.getConexion(); 
            ps = cx.prepareStatement(SQL); 
            ps.setString(1, r.getNombre());
            ps.setString(2, r.getEstado());
            ps.setString(3, r.getResponsable());
            ps.setInt(4, r.getIdcarrera());
            x= ps.executeUpdate(); 
            
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        
        return x; 
      
    
    }

    @Override
    public int deleteCarrera(int id) {
        
        int x=0; 
        String SQL= "DELETE FROM carrera WHERE idcarrera=? "; 
        try {
            cx = Conexion.getConexion(); 
            ps = cx.prepareStatement(SQL); 
          
            ps.setInt(1, id);
            x= ps.executeUpdate(); 
            
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        
        return x; 
        
    
    }

    @Override
    public CarreraEntity readCarrera(int id) {
        
        CarreraEntity re= new CarreraEntity(); 
        String SQL= " SELECT* FROM carrera WHERE idcarrera=?"; 
        try {
            cx = Conexion.getConexion(); 
            ps = cx.prepareStatement(SQL); 
            ps.setInt(1, id);
            
            rs = ps.executeQuery(); 
            while (rs.next()) {
                re.setIdcarrera(rs.getInt("idcarrera"));
                re.setNombre(rs.getString("nombre"));
                re.setEstado(rs.getString("estado"));
                re.setResponsable(rs.getString("responsable"));
                 
            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        
        return re; 
        
    
    }

    @Override
    public List<CarreraEntity> readAll() {
        List<CarreraEntity> lista= new ArrayList<>(); 
        String SQL= " SELECT* FROM carrera "; 
        try {
            cx = Conexion.getConexion(); 
            ps = cx.prepareStatement(SQL); 
            
            rs = ps.executeQuery(); 
            while (rs.next()) {
                CarreraEntity re= new CarreraEntity(); 
                re.setIdcarrera(rs.getInt("idcarrera"));
                re.setNombre(rs.getString("nombre"));
                re.setEstado(rs.getString("estado"));
                re.setResponsable(rs.getString("responsable"));
                lista.add(re); 
            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }  
        return lista; 

    }
    
}
