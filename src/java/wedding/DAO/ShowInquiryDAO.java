
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import wedding.DBconnection.DBConnection;
import wedding.beans.ShowInquiryBean;


public class ShowInquiryDAO {
    
    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;
    
     public ArrayList<ShowInquiryBean>showinquiry(ShowInquiryBean bean,String email_){
     
     
             ArrayList<ShowInquiryBean> al = new ArrayList<ShowInquiryBean>();
             
             boolean result = false;
            conn = obj.getConnection();

               PreparedStatement pst;
                
               
               try {
                       
                 //  pst = conn.prepareStatement("SELECT * FROM inquiry");
                    // pst = conn.prepareStatement("SELECT * FROM inquiry where sp_email='sp@gmail'");
                 
                pst = conn.prepareStatement("SELECT * FROM inquiry where sp_email='"+ email_+"'");
                        System.out.println("=======26==========="+email_);
                 
                 
                   ResultSet rs = pst.executeQuery();
                  
                   while (rs.next()) {
                       System.out.println("=======275==========="+email_);
                       ShowInquiryBean b = new ShowInquiryBean();
                   
                       int idnum = rs.getInt("id");
                        String cname= rs.getString("name");
                       String cemail = rs.getString("email");
                       int cphonenum = rs.getInt("phoneno");
                       String cmsg = rs.getString("msg");
                   
                      
                        b.setId(idnum);
                        b.setName(cname);
                        b.setEmail(cemail);
                        b.setPhonenum(cphonenum);
                        b.setMsg(cmsg);
                           al.add(b);
                       
                       
                   }
                   
                   
                  
                   
               }catch (SQLException ex) {
            ex.printStackTrace();
        }
     
          return al;
     
     }
    
    
    
    
    
    
    
}
