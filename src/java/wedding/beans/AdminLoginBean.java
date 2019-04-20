/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wedding.beans;

import wedding.DAO.AdminLoginDAO;


/**
 *
 * @author Gamith
 */
public class AdminLoginBean {
    
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
    
           AdminLoginDAO dao = new AdminLoginDAO();
           return dao.adminLogin(this);
       
    }
    
    
    
}
