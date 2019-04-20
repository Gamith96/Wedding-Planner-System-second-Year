package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import wedding.DBconnection.DBConnection;
import wedding.beans.ShowSpBean;

public class ShowSpDAO {

    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;

    public ArrayList<ShowSpBean> showsp(ShowSpBean bean) {

        ArrayList<ShowSpBean> al = new ArrayList<ShowSpBean>();

        boolean result = false;
        conn = obj.getConnection();

        PreparedStatement pst;

        try {
            pst = conn.prepareStatement("SELECT * FROM  service_providers");

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {

                ShowSpBean b = new ShowSpBean();

                int idnum = rs.getInt("id");
                String spemail = rs.getString("email");
                String password = rs.getString("pass");

                b.setSpid(idnum);
                b.setSpemail(spemail);
                b.setSppass(password);
                al.add(b);

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return al;

    }
}
