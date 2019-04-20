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
import wedding.beans.AdminLoginBean;


/**
 *
 * @author Gamith
 */
public class AdminLoginDAO {
    
    
     DBConnection obj = new DBConnection();
      Connection conn;
      Statement stmt;
      
       public boolean adminLogin(AdminLoginBean bean){
                
                boolean result = false;
                conn = obj.getConnection();
                
                String email = bean.getEmail();
                String pass = bean.getPass();
                
                PreparedStatement pst;
                
            try {
                
                pst = conn.prepareStatement("SELECT * FROM admin WHERE email=? and pass=?");
                pst.setString(1,email);
                pst.setString(2,pass);
                
                ResultSet rs = pst.executeQuery();
                
                if(rs.next()){
                    result = true;
                }else{
                     result = false;
                }
                
            } catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return result;
        
        }
    
    
    
    
    
}
