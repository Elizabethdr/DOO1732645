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
public class User {
    private String username;
    private String password;
    private String username2;
    private String password2;
    private String username3;
    private String password3;    
    
    public User(){
        this.username = "Diana";
        this.password = "MiPassword";
        this.username2 = "Cesar";
        this.password2 = "Ok";
        this.username3 = "Rodrigo";
        this.password3 = "Que?";
    }
    
    public String getUsername(){
        return this.username;
    }
    
    public String getPassword(){
        return this.password;
    }
    
    public String getUsername2(){
        return this.username2;
    }
    
    public String getPassword2(){
        return this.password2;
    }
    
    public String getUsername3(){
        return this.username3;
    }
    
    public String getPassword3(){
        return this.password3;
    }
}
