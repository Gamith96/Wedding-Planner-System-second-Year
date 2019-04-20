
package wedding.beans;

import java.util.ArrayList;
import wedding.DAO.SpReservedServiceViewDAO;




public class SpReservedServiceViewBean {
    
    
       int confirmid;
       String rid;
       String uid;
       String uname;
       String uemail;
       String cat;
       String pname;
       String price;
       String spemail;
       String pic;
       String date;

    public int getConfirmid() {
        return confirmid;
    }

    public void setConfirmid(int confirmid) {
        this.confirmid = confirmid;
    }

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
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

    public String getSpemail() {
        return spemail;
    }

    public void setSpemail(String spemail) {
        this.spemail = spemail;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
       
           public ArrayList<SpReservedServiceViewBean> SpViewOfReservedServices(String email) {

             
            
             
        SpReservedServiceViewDAO dao = new SpReservedServiceViewDAO();
        return dao.showReservesService(this, email);
        
        

    }
       
    
    
    
    
}
