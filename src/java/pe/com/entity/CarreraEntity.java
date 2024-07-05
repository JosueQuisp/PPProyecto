/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author User
 */

@Data
@NoArgsConstructor
@AllArgsConstructor

public class CarreraEntity {
    
    private int idcarrera; 
    private String nombre; 
    private String estado;
    private String responsable;
}
