/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author User
 */

@Data
@AllArgsConstructor
@NoArgsConstructor


public class UsuarioLogin {
    private int idusuario; 
    private String username; 
    private String nombre; 
    private String estado; 
    private String rol; 
    
}
