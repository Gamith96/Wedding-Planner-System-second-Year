
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.SpecialPackageBean;


 
public class SpecialPackageDAO {
    
       DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;
    
    
    public String Addpackage(SpecialPackageBean bean) {

        boolean result = false;

        conn = obj.getConnection();

       String pack = bean.getPack();
       String email = bean.getEmail();

        PreparedStatement pst;

        try {

            pst = conn.prepareStatement("INSERT INTO special_package (package,cemail) VALUES (?,?)");

            pst.setString(1, pack);
            pst.setString(2, email);
           

            int rs = pst.executeUpdate();

            if (rs != 0) {
                return "Successfully added to the system";
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "oops ... somethig went wrong there .. !!";

    }
    
    
    
    
    
    
    
    
    
    
    
}
