/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package week5.models;

/**
 *
 * @author Diana Diaz
 */
public class Authentication {
    public static boolean authenticate(String username, String password){
        //Variables *dummy*.
        //Se hardcodean los valores "Diana" y "MiPassword"
        String userDataBase = "Diana";
        String passwordDataBase = "MiPassword";
        
        if(username.equals(userDataBase) && password.equals(passwordDataBase)){
            return true;
        }
        else{
            return false;
        }
    }
}
