/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ent;

/**
 *
 * @author aluno
 */
public class login {

    /**
     * @return the ds_senha
     */
    public String getDs_senha() {
        return ds_senha;
    }

    /**
     * @param ds_senha the ds_senha to set
     */
    public void setDs_senha(String ds_senha) {
        this.ds_senha = ds_senha;
    }

    /**
     * @return the ds_email
     */
    public String getDs_email() {
        return ds_email;
    }

    /**
     * @param ds_email the ds_email to set
     */
    public void setDs_email(String ds_email) {
        this.ds_email = ds_email;
    }

    /**
     * @return the cd_login
     */
    public String getCd_login() {
        return cd_login;
    }

    /**
     * @param cd_login the cd_login to set
     */
    public void setCd_login(String cd_login) {
        this.cd_login = cd_login;
    }

    /**
     * @return the fk_cd_login
     */
    public String getFk_cd_login() {
        return fk_cd_login;
    }

    /**
     * @param fk_cd_login the fk_cd_login to set
     */
    public void setFk_cd_login(String fk_cd_login) {
        this.fk_cd_login = fk_cd_login;
    }
        
        private String ds_senha;
        private String ds_email;
        private String cd_login;
        private String fk_cd_login;
        
        
    
}
