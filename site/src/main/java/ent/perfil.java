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
public class perfil {

    /**
     * @return the ds_publicacao
     */
    public String getDs_publicacao() {
        return ds_publicacao;
    }

    /**
     * @param ds_publicacao the ds_publicacao to set
     */
    public void setDs_publicacao(String ds_publicacao) {
        this.ds_publicacao = ds_publicacao;
    }

    /**
     * @return the nm_usuario
     */
    public String getNm_usuario() {
        return nm_usuario;
    }

    /**
     * @param nm_usuario the nm_usuario to set
     */
    public void setNm_usuario(String nm_usuario) {
        this.nm_usuario = nm_usuario;
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
     * @return the fk_perfil
     */
    public String getFk_perfil() {
        return fk_perfil;
    }

    /**
     * @param fk_perfil the fk_perfil to set
     */
    public void setFk_perfil(String fk_perfil) {
        this.fk_perfil = fk_perfil;
    }
    
  private String ds_publicacao;
  private String nm_usuario;
  private String ds_email;
  private String ds_senha;
  private String fk_perfil;
  
    
    
    
    
}
