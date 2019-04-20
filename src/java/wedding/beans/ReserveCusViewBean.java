/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wedding.beans;

import java.util.ArrayList;
import wedding.DAO.ReserveCusViewDAO;

/**
 *
 * @author Gamith
 */
public class ReserveCusViewBean {
    
    int rid;
    String uemail;
    String uname;
    String uid;
    String spemail;
    String cat;
    String pname;
    String price;
    String pic;

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getSpemail() {
        return spemail;
    }

    public void setSpemail(String spemail) {
        this.spemail = spemail;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }
    
      public ArrayList<ReserveCusViewBean> ReservedataRetrive(String email) {

        ReserveCusViewDAO dao = new ReserveCusViewDAO();
        return dao.ReserveDetailsRetrive(this,email);

    }
    
    
    
}
