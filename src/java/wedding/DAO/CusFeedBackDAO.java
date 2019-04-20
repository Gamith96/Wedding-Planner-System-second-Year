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
import wedding.beans.CusFeedBackBean;

/**
 *
 * @author Gamith
 */
public class CusFeedBackDAO {
    
    
     DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
     
       public String cusfeedback(CusFeedBackBean bean){
    
    boolean result = false;
    
    conn = obj.getConnection();
          
    
    String spemail = bean.getSpemail();
    String uemail = bean.getUemail();
    String comment = bean.getComment();
    String rating = bean.getRating();
    
    
      PreparedStatement pst;
    
    
    try{
    
    pst = conn.prepareStatement("INSERT INTO feedback (spemail,uemail,comment,rating) VALUES (?,?,?,?)");
    
    pst.setString(1, spemail.trim().toString());
    pst.setString(2, uemail);
    pst.setString(3, comment);
    pst.setString(4, rating);           
  
    
    int rs = pst.executeUpdate();
    
    
                   if (rs!=0)
                       return "Successfully added";
    
    
    } catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return "oops ... somethig went wrong there .. !!";
    
    
      
      
      
      
      
      
    
    
   
    }
    
     
    
}
