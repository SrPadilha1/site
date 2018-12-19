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
public class administrador {

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
     * @return the nm_nome
     */
    public String getNm_nome() {
        return nm_nome;
    }

    /**
     * @param nm_nome the nm_nome to set
     */
    public void setNm_nome(String nm_nome) {
        this.nm_nome = nm_nome;
    }

    /**
     * @return the nm_senha
     */
    public String getNm_senha() {
        return nm_senha;
    }

    /**
     * @param nm_senha the nm_senha to set
     */
    public void setNm_senha(String nm_senha) {
        this.nm_senha = nm_senha;
    }

    /**
     * @return the fk_ds_email
     */
    public String getFk_ds_email() {
        return fk_ds_email;
    }

    /**
     * @param fk_ds_email the fk_ds_email to set
     */
    public void setFk_ds_email(String fk_ds_email) {
        this.fk_ds_email = fk_ds_email;
    }
    
    private String ds_email;
    private String nm_nome;
    private String nm_senha;
    private String fk_ds_email;
    
    
}
