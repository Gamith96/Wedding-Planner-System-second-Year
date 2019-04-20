/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.spAccountBean;

/**
 *
 * @author Gamith
 */
public class spAccountDAO {
    
    
    DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
     
     public boolean spAccount(spAccountBean bean){
     
             boolean result = false;
             
              conn = obj.getConnection();
              
              String bname = bean.getBname();
              String address= bean.getAddress();
              String phonenum= bean.getPhonenum();
              String type= bean.getType();
              String about = bean.getAbout();
              
              PreparedStatement pst;
              
              
              try {
                
            pst = conn.prepareStatement("INSERT INTO spaccount_details (businessname,address,phonenum,type,about) VALUES (?,?,?,?,?)");
                
               pst.setString(1, bname);
               pst.setString(2, address);
               pst.setString(3, phonenum);
               pst.setString(4, type);
               pst.setString(5, about);
               
               
                
                   int rs = pst.executeUpdate();
             
                
                   if (rs!=0)
                       
                      
                       return true;
                   
                   
                   
                   
                   
            } 
                  catch (SQLException ex) {
                ex.printStackTrace();
            }
            
            return false;

     
     
     
     
     }
     
     
    
}
