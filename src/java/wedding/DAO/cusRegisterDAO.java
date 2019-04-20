
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.cusRegisterBeans;


public class cusRegisterDAO {
    
      DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
    
    public String cusRegister(cusRegisterBeans bean){
    
    boolean result = false;
    
    conn = obj.getConnection();
          
    
    String fname = bean.getFname();
    String lname = bean.getLname();
    String email = bean.getEmail();
    String pass= bean.getPass();
    String passc= bean.getPassc();
    
    
    
      PreparedStatement pst;
    
    
    try{
    
    pst = conn.prepareStatement("INSERT INTO user (fname,lname,email,pass) VALUES (?,?,?,?)");
    
    pst.setString(1, fname);
    pst.setString(2, lname);
    pst.setString(3, email);
    pst.setString(4, pass);
  
    
    int rs = pst.executeUpdate();
    
    
                   if (rs!=0)
                       return "Successfully Registered to the system";
    
    
    } catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return "oops ... somethig went wrong there .. !!";
    
    
      
      
      
      
      
      
    
    
   
    }
    
    
    
    
    
    
    
    
    
}
