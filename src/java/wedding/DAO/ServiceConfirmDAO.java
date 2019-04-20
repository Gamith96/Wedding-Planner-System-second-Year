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
import wedding.beans.ServiceConfirmBean;

/**
 *
 * @author Gamith
 */
public class ServiceConfirmDAO {
      DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
     
       public String serviceConfirm(ServiceConfirmBean bean){
    
    boolean result = false;
    
    conn = obj.getConnection();
          
    
    String rid = bean.getRid();
    String uid = bean.getUid();
    String uname = bean.getUname();
    String uemail = bean.getUemail();
    String cat = bean.getCat();
    String pname = bean.getPname();
    String price = bean.getPrice();
    String spemail = bean.getSpemail();
    String pic = bean.getPic();
    String date = bean.getDate();
   
     
    
    
      PreparedStatement pst;
    
    
    try{
    
    pst = conn.prepareStatement("INSERT INTO reserveConfirm (rid,uid,uname,uemail,cat,pname,price,spemail,pic,date) VALUES (?,?,?,?,?,?,?,?,?,?)");
    
    pst.setString(1, rid.toString().trim());
    pst.setString(2, uid.toString().trim());
    pst.setString(3, uname.toString().trim());
    pst.setString(4, uemail.toString().trim());
     pst.setString(5, cat.toString().trim());
      pst.setString(6, pname.toString().trim());
       pst.setString(7, price.toString().trim());
        pst.setString(8, spemail.toString().trim());
         pst.setString(9,pic);
          pst.setString(10, date.toString().trim());
      
  
    
    int rs = pst.executeUpdate();
    
    
                   if (rs!=0)
                       return "Successfully Saved";
    
    
    } catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return "oops ... somethig went wrong there .. !!";
    
    
      
      
      
      
      
      
    
    
   
    }
     
     
}
