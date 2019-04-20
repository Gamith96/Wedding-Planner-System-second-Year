
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import wedding.DBconnection.DBConnection;
import wedding.beans.ShowFeedbackbean;


public class ShowFeedbackDAO {
    
     DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;
    
     public ArrayList<ShowFeedbackbean> showfeedback(ShowFeedbackbean bean,String email_){
     
       ArrayList<ShowFeedbackbean> al = new ArrayList<ShowFeedbackbean>();
       
               
        
        conn = obj.getConnection();
        
          PreparedStatement pst;
     
          try{
              pst = conn.prepareStatement("SELECT * FROM feedback Where spemail='"+ email_+"'");
               //pst = conn.prepareStatement("SELECT * FROM feedback");
                System.out.println("===="+email_);
         
                   ResultSet rs = pst.executeQuery();
                   
                     while (rs.next()) {
                         System.out.println("====rs==="+rs.next());
                         
                         ShowFeedbackbean b = new ShowFeedbackbean(); 
                         
                         int fidnum = rs.getInt("fid");
                         String spemail = rs.getString("spemail");
                         String uemail =  rs.getString("uemail");
                         String comment = rs.getString("comment");
                         String rating = rs.getString("rating");
                       
                         b.setFid(fidnum);
                         b.setSpemail(spemail);
                         b.setUemail(uemail);
                         b.setComment(comment);
                         b.setRating(rating);
                        
                         al.add(b);
                         
                         
                         
                         
                         
                         
          
                     }
          
          }catch (SQLException ex) {
            ex.printStackTrace();
        }

        return al;
       
     
     
     
     
     
     }
    
    
}
