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
import wedding.beans.RegisterBean;

/**
 *
 * @author Gamith
 */
public class spRegisterDAO {
    
     DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
    
      
      
      public String spRegister(RegisterBean bean){

               boolean result = false;

                conn = obj.getConnection();
                
                String fname = bean.getFname();
                String lname = bean.getLname();
                String email= bean.getEmail();
                String detail = bean.getDetails();
                
                              PreparedStatement pst;
                 
                 
                  try {
                
            pst = conn.prepareStatement("INSERT INTO sp_request_details (fname,lname,email,details) VALUES (?,?,?,?)");
                
                pst.setString(1,fname);
                pst.setString(2,lname);
                pst.setString(3, email);
                pst.setString(4, detail);
                
                   int rs = pst.executeUpdate();
             
                
                   if (rs!=0)
                       return "Success";
                   
                   
                   
                   
                   
            } 
                  catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return "oops ... somethig went wrong there .. !!";



   }
      
}
    
    
    
    
    

