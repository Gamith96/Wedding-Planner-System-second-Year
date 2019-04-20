
package wedding.beans;

import java.util.ArrayList;
import wedding.DAO.ShowFeedbackDAO;


public class ShowFeedbackbean {
    
    int fid;
    String spemail;
    String uemail;
    String comment;
    String rating;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getSpemail() {
        return spemail;
    }

    public void setSpemail(String spemail) {
        this.spemail = spemail;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }
    
      public ArrayList<ShowFeedbackbean> feedshow(String email){
     
          ShowFeedbackDAO dao = new ShowFeedbackDAO();
          return dao.showfeedback(this,email);
             
     
     
     
     }
    
    
    
    
    
}
