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
import wedding.beans.MakeInquiryBean;

/**
 *
 * @author Gamith
 */
public class MakeInquiryDAO {
    
    
    DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
     
     
     public String MakeInquiry(MakeInquiryBean bean){
     
          conn = obj.getConnection();    
          
          String cname = bean.getName();
          String cemail=bean.getEmail();
          int cnum = bean.getPhonenum();
          String cmsg = bean.getMsg();
          String spemail = bean.getSpemail().trim().toString();
              
           System.out.println("===============ggg======="+spemail);
      PreparedStatement pst;
    
     try{
         
         pst = conn.prepareStatement("INSERT INTO inquiry (name,email,phoneno,msg,sp_email) VALUES (?,?,?,?,?)");
         
           pst.setString(1, cname);
           pst.setString(2, cemail);
           pst.setInt(3, cnum);
           pst.setString(4, cmsg);
           pst.setString(5, spemail);
           
           
              int rs = pst.executeUpdate();
       
             if (rs!=0)
                       return "Successfully Registered to the sysyetm";
    
     
     }catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return "oops ... somethig went wrong there .. !!";
     
     
     
     
     
     
     
     }
    
    
    
}
