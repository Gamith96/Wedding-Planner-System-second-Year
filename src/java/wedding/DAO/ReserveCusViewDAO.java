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
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import wedding.DBconnection.DBConnection;
import wedding.beans.ReserveCusViewBean;

/**
 *
 * @author Gamith
 */
public class ReserveCusViewDAO {
    
    
    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;
    
    public ArrayList<ReserveCusViewBean> ReserveDetailsRetrive(ReserveCusViewBean bean,String email) {
    
        ArrayList<ReserveCusViewBean> al = new ArrayList<ReserveCusViewBean>();
          boolean result = false;
        conn = obj.getConnection();
        
        PreparedStatement pst;
        
        
         try {
             
             System.out.println("========email====="+email);

            //pst = conn.prepareStatement("SELECT * FROM cartt where uemail='"+ email.toString()+"'");
             pst = conn.prepareStatement("SELECT * FROM cartt where uemail=?");
            pst.setString(1, email.toString()); 
           ResultSet rs = pst.executeQuery();
             
            while (rs.next()) {

                ReserveCusViewBean b = new ReserveCusViewBean();  
                

                int reserveid = rs.getInt("rid");
                
                String uemail = rs.getString("uemail");
                String uname = rs.getString("uname");
                String uid = rs.getString("uid");
                String spemail = rs.getString("spemail");
                String catagorey = rs.getString("cat");
                String pname = rs.getString("pname");
                String price = rs.getString("price");
                String image = rs.getString("pic");
                
                System.out.println("========reserveid====="+reserveid);
               

                b.setRid(reserveid);
                b.setUid(uid);
                b.setUname(uname);
                b.setUemail(uemail);
                b.setPname(pname);
                b.setCat(catagorey);
                b.setPrice(price);
                b.setSpemail(spemail);
                b.setPic(image);
                
                al.add(b);

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
System.out.println("========al====="+al.size());
        return al;
        
        
    } 
        
}
