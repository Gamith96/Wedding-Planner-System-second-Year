package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.SpLoginBean;

public class SpLoginDAO {

    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;

    public boolean SpLogin(SpLoginBean bean) {

        boolean result = false;
        conn = obj.getConnection();

        String email = bean.getEmail();
        String pass = bean.getPass();

        PreparedStatement pst;

        try {

            pst = conn.prepareStatement("SELECT * FROM service_providers WHERE email=? and pass=?");
            pst.setString(1, email);
            pst.setString(2, pass);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                result = true;
            } else {
                result = false;
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;

    }

}
