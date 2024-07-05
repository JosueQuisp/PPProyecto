/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package pe.com.Dao;

import java.util.List;
import pe.com.entity.CarreraEntity;

/**
 *
 * @author User
 */
public interface CarreraDao  {
    
    int createCarrera(CarreraEntity r); 
    int updateCarrera(CarreraEntity r); 
    int deleteCarrera(int id); 
    CarreraEntity readCarrera(int id); 
    List<CarreraEntity>readAll();  
 
}
