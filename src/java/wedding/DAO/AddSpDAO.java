
package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.AddSpBean;


public class AddSpDAO {

    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;

    public String addsp(AddSpBean bean) {

        boolean result = false;

        conn = obj.getConnection();

        String email = bean.getSpemail();
        String password = bean.getPassword();

        PreparedStatement pst;

        try {

            pst = conn.prepareStatement("INSERT INTO service_providers (email,pass) VALUES (?,?)");

            pst.setString(1, email);
            pst.setString(2, password);

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
