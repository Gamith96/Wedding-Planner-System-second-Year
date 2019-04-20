package wedding.beans;

import java.util.ArrayList;
import wedding.DAO.ShowSpRequestDetailsDAO;

public class ShowSpRequestDetailsBean {

    int id;
    String fname;
    String lname;
    String email;
    String details;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public ArrayList<ShowSpRequestDetailsBean> requestshow() {

        ShowSpRequestDetailsDAO dao = new ShowSpRequestDetailsDAO();
        return dao.showReq(this);

    }

}
