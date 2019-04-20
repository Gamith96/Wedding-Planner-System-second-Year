package wedding.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import wedding.DBconnection.DBConnection;
import wedding.beans.ShowSpRequestDetailsBean;

public class ShowSpRequestDetailsDAO {

    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;

    public ArrayList<ShowSpRequestDetailsBean> showReq(ShowSpRequestDetailsBean bean) {

        ArrayList<ShowSpRequestDetailsBean> al = new ArrayList<ShowSpRequestDetailsBean>();

        boolean result = false;
        conn = obj.getConnection();

        PreparedStatement pst;

        try {
            pst = conn.prepareStatement("SELECT * FROM sp_request_details");

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {

                ShowSpRequestDetailsBean b = new ShowSpRequestDetailsBean();

                int idnum = rs.getInt("id");
                String firstname = rs.getString("fname");
                String lastname = rs.getString("lname");
                String spemail = rs.getString("email");
                String spdetails = rs.getString("details");

                b.setId(idnum);
                b.setFname(firstname);
                b.setLname(lastname);
                b.setEmail(spemail);
                b.setDetails(spdetails);
                al.add(b);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return al;

    }

}
