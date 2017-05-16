/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author LSTI-23
 */
public class Log {
    final String fileName;
    private static Log instance;

    public Log(String fileName) {
        this.fileName = fileName;
    }
    
    public static  Log getInstance(String fileName){
        if(instance == null) {
            return new Log(fileName);
        }
        
            return instance;
    }
    public void write(String message){
        try (BufferedWriter br = new BufferedWriter(new FileWriter(fileName, true))) { 
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar cal = Calendar.getInstance();

            //Create the name of the file from the path and current time
            String data = "\n" + dateFormat.format(cal.getTime()) + ": " + message ;
            br.write(data);
        }
        catch(Exception ex){
            
        }
    }
}
