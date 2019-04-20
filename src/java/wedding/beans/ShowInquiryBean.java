
package wedding.beans;

import java.util.ArrayList;
import wedding.DAO.ShowInquiryDAO;


public class ShowInquiryBean {
    
    int id;
    String name;
    String email;
     int  phonenum;
     String msg;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(int phonenum) {
        this.phonenum = phonenum;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
     
     
     
         public ArrayList<ShowInquiryBean> inquiryshow(String email) {

             
            
             
        ShowInquiryDAO dao = new ShowInquiryDAO();
        return dao.showinquiry(this, email);
        
        

    }
     
    
    
    
    
    
    
    
    
}
