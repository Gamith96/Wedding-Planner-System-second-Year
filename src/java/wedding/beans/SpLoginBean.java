package wedding.beans;

import wedding.DAO.SpLoginDAO;

public class SpLoginBean {

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

    public boolean SpLoginValidation() {

        SpLoginDAO dao = new SpLoginDAO();
        return dao.SpLogin(this);

    }

}
