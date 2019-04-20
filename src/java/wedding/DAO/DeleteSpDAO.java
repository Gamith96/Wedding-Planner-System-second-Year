/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.DeleteSpBean;

/**
 *
 * @author Gamith
 */
public class DeleteSpDAO {
    
    
     DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;

    
    public String Deletesp(DeleteSpBean bean){
    
     boolean result = false;
     
     conn = obj.getConnection();
     
     String spdltemail =  bean.getSpemail();
     
      PreparedStatement pst;
         
      try{
      
      pst = conn.prepareStatement("DELETE FROM service_providers WHERE email =?");
      
      pst.setString(1, spdltemail);
      
      
         int rs = pst.executeUpdate();
;
      
        
          if (rs != 0) {
              
              return "Successfully Deleted";
         } 
              
         
      
      
      }catch(SQLException ex){
      
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
      
      }
    
    
            return "oops ... somethig went wrong there .. !!";
                
    
    
    }
    
    
    
    
    
    
    
    
    
}
