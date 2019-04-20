package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import wedding.DBconnection.DBConnection;
import wedding.beans.SpReservedServiceViewBean;

public class SpReservedServiceViewDAO {

    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;
    
    public ArrayList<SpReservedServiceViewBean>showReservesService(SpReservedServiceViewBean bean,String email_){
     
     
             ArrayList<SpReservedServiceViewBean> al = new ArrayList<SpReservedServiceViewBean>();
             
             boolean result = false;
            conn = obj.getConnection();

               PreparedStatement pst;
                
               
               try {
                       
                 //  pst = conn.prepareStatement("SELECT * FROM inquiry");
                    // pst = conn.prepareStatement("SELECT * FROM inquiry where sp_email='sp@gmail'");
                 
                pst = conn.prepareStatement("SELECT * FROM reserveconfirm where spemail='"+ email_+"'");
                        System.out.println("=======26==========="+email_);
                 
                 
                   ResultSet rs = pst.executeQuery();
                  
                   while (rs.next()) {
                       System.out.println("=======275==========="+email_);
                       SpReservedServiceViewBean b = new SpReservedServiceViewBean();
                   
                       int confirmidnum = rs.getInt("confirmid");
                       String reportid = rs.getString("rid");
                       String userid = rs.getString("uid");
                       String uname = rs.getString("uname");
                       String uemail= rs.getString("uemail");
                       String cat = rs.getString("cat");
                       String pname = rs.getString("pname");
                       String price = rs.getString("price");
                       String spemail = rs.getString("spemail");
                       String pic = rs.getString("pic");
                       String date = rs.getString("date");
                       

                   
                      
                        b.setConfirmid(confirmidnum);
                        b.setRid(reportid);
                        b.setUid(userid);
                        b.setUname(uname);
                        b.setUemail(uemail);
                        b.setCat(cat);
                        b.setPname(pname);
                        b.setPrice(price);
                        b.setSpemail(spemail);
                        b.setPic(pic);
                        b.setDate(date);
                      
                        al.add(b);
                         
                       
                       
                   }
                   
                   
                  
                   
               }catch (SQLException ex) {
            ex.printStackTrace();
        }
     
          return al;

          
          
    }
          
          
          
}
