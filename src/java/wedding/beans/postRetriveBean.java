/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wedding.beans;

import java.sql.Blob;
import java.util.ArrayList;
import wedding.DAO.postRetriveDAO;

/**
 *
 * @author Gamith
 */
public class postRetriveBean {

    int id;
    String email;
    String cat;
    String pname;
    int price;
    Blob pic;
    String pdetail;

    public String getPdetail() {
        return pdetail;
    }

    public void setPdetail(String pdetail) {
        this.pdetail = pdetail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Blob getPic() {
        return pic;
    }

    public void setPic(Blob pic) {
        this.pic = pic;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public ArrayList<postRetriveBean> PostRetrive() {

        postRetriveDAO dao = new postRetriveDAO();
        return dao.postDataRetrive(this);

    }

}
