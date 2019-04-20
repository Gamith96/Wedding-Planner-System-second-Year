/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wedding.DAO;

import static java.lang.System.out;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import wedding.DBconnection.DBConnection;
import wedding.beans.postRetriveBean;

/**
 *
 * @author Gamith
 */
public class postRetriveDAO {

    DBConnection obj = new DBConnection();
    Connection conn;
    Statement stmt;

    public ArrayList<postRetriveBean> postDataRetrive(postRetriveBean bean) {
ArrayList<postRetriveBean> al = new ArrayList<postRetriveBean>();//creating ne
        boolean result = false;
        conn = obj.getConnection();

        PreparedStatement pst;

        try {

            pst = conn.prepareStatement("SELECT * FROM posting");

            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {

                postRetriveBean b = new postRetriveBean();

                int idnum = rs.getInt("id");
                String email = rs.getString("email");
                String catagoery = rs.getString("cat");
                String postname = rs.getString("pname");
                int price = rs.getInt("price");
                Blob picture = rs.getBlob("pic");
                String pdetails = rs.getString("pdetails");

                b.setId(idnum);
                b.setEmail(email);
                b.setCat(catagoery);
                b.setPname(postname);
                b.setPrice(price);
                b.setPic(picture);
                b.setPdetail(pdetails);
                al.add(b);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return al;

    }

}
