
package wedding.beans;

import wedding.DAO.LoginDAO;


public class LoginBean {
    
    private String email;
    private String pass;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
    public boolean loginValidation(){
    
           LoginDAO dao = new LoginDAO();
           return dao.userLogin(this);
       
    }
       
}   

   
