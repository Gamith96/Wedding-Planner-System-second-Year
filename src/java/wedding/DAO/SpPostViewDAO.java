
package wedding.DAO;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import wedding.DBconnection.DBConnection;
import wedding.beans.SpPostViewBean;


public class SpPostViewDAO {

    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;

    public ArrayList<SpPostViewBean> ShowPostToSp(SpPostViewBean bean,String email_) {

        ArrayList<SpPostViewBean> al = new ArrayList<SpPostViewBean>();
        
             
        boolean result = false;
        conn = obj.getConnection();

        PreparedStatement pst;

        try {

            pst = conn.prepareStatement("SELECT * FROM posting where email='"+ email_+"'");

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {

                SpPostViewBean b = new SpPostViewBean();

                int idnum = rs.getInt("id");
                String email = rs.getString("email");
                String catagoery = rs.getString("cat");
                String postname = rs.getString("pname");
                int price = rs.getInt("price");
                String pdetail= rs.getString("pdetails");
                Blob picture = rs.getBlob("pic");

                b.setId(idnum);
                b.setEmail(email);
                b.setCat(catagoery);
                b.setPname(postname);
                b.setPrice(price);
                b.setPic(picture);
                b.setPdetail(pdetail);
                al.add(b);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return al;

    }

}
