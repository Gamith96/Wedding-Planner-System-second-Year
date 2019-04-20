
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.LoginBean;


public class LoginDAO {
    
      DBConnection obj = new DBConnection();
      Connection conn;
      Statement stmt;
      
      
      
      public boolean userLogin(LoginBean bean){
                
               boolean result = false;
                conn = obj.getConnection(); 
                
                String email = bean.getEmail();
                String pass = bean.getPass();
                
                PreparedStatement pst;
                
            try {
                
                pst = conn.prepareStatement("SELECT * FROM user WHERE email=? and pass=?");
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
