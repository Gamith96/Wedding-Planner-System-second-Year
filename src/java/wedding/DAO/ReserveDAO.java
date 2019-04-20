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
import wedding.beans.ReserveBean;

/**
 *
 * @author Gamith
 */
public class ReserveDAO {
    
    DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
    
        public String insertReserveDetails(ReserveBean bean){

              
    boolean result = false;
    
    conn = obj.getConnection();
    
      String useremail = bean.getUemail();
      String username = bean.getUname();
      String userid = bean.getUid();
      String servicepemail = bean.getSpemail();
      String catogery = bean.getCat();
      String postename = bean.getPname();
      String price = bean.getPrice();
      String picture = bean.getPic();
    
      PreparedStatement pst;
      
       try{
    
    pst = conn.prepareStatement("INSERT INTO  cartt (uemail,uname,uid,spemail,cat,pname,price,pic) VALUES (?,?,?,?,?,?,?,?)");
    
    pst.setString(1, useremail.toString().trim());
    pst.setString(2, username.toString().trim());
    pst.setString(3, userid.toString().trim());
    pst.setString(4, servicepemail.toString().trim());
    pst.setString(5, catogery.toString().trim());
    pst.setString(6, postename.toString().trim());
    pst.setString(7, price.toString().trim());
     pst.setString(8, picture);
 
  
    
    int rs = pst.executeUpdate();
    
    
                   if (rs!=0)
                       return "Successfully Registered to the sysyetm";
    
    
    } catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return "oops ... somethig went wrong there .. !!";
    
    
    
    
    
    
    
        }
}
