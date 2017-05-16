/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author arman
 */
public class Authentication {
   public static boolean authenticate(String username, String password){
        
        User user = new User();
        if(username.equals(user.getUsername())&& password.equals(user.getPassword())){
            return true;
        }
        if(username.equals(user.getUsername2())&& password.equals(user.getPassword2())){
            return true;
        }
        if(username.equals(user.getUsername3())&& password.equals(user.getPassword3())){
            return true;
        }
        else {
           return false;
        }
    } 
}
