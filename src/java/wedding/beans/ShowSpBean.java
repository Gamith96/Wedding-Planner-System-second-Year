package wedding.beans;

import java.util.ArrayList;
import wedding.DAO.ShowSpDAO;

public class ShowSpBean {

    int spid;
    String spemail;
    String sppass;

    public int getSpid() {
        return spid;
    }

    public void setSpid(int spid) {
        this.spid = spid;
    }

    public String getSpemail() {
        return spemail;
    }

    public void setSpemail(String spemail) {
        this.spemail = spemail;
    }

    public String getSppass() {
        return sppass;
    }

    public void setSppass(String sppass) {
        this.sppass = sppass;
    }

    public ArrayList<ShowSpBean> spview() {

        ShowSpDAO dao = new ShowSpDAO();
        return dao.showsp(this);

    }

}
