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
public class Publicacao {

    /**
     * @return the cd_publicacao
     */
    public String getCd_publicacao() {
        return cd_publicacao;
    }

    /**
     * @param cd_publicacao the cd_publicacao to set
     */
    public void setCd_publicacao(String cd_publicacao) {
        this.cd_publicacao = cd_publicacao;
    }

    /**
     * @return the ds_texto
     */
    public String getDs_texto() {
        return ds_texto;
    }

    /**
     * @param ds_texto the ds_texto to set
     */
    public void setDs_texto(String ds_texto) {
        this.ds_texto = ds_texto;
    }

    /**
     * @return the ds_pergunta
     */
    public String getDs_pergunta() {
        return ds_pergunta;
    }

    /**
     * @param ds_pergunta the ds_pergunta to set
     */
    public void setDs_pergunta(String ds_pergunta) {
        this.ds_pergunta = ds_pergunta;
    }

    /**
     * @return the dt_data
     */
    public String getDt_data() {
        return dt_data;
    }

    /**
     * @param dt_data the dt_data to set
     */
    public void setDt_data(String dt_data) {
        this.dt_data = dt_data;
    }

    /**
     * @return the tm_hora
     */
    public String getTm_hora() {
        return tm_hora;
    }

    /**
     * @param tm_hora the tm_hora to set
     */
    public void setTm_hora(String tm_hora) {
        this.tm_hora = tm_hora;
    }

    /**
     * @return the cd_usuario
     */
    public String getCd_usuario() {
        return cd_usuario;
    }

    /**
     * @param cd_usuario the cd_usuario to set
     */
    public void setCd_usuario(String cd_usuario) {
        this.cd_usuario = cd_usuario;
    }

    /**
     * @return the fk_nm_usuario
     */
    public String getFk_nm_usuario() {
        return fk_nm_usuario;
    }

    /**
     * @param fk_nm_usuario the fk_nm_usuario to set
     */
    public void setFk_nm_usuario(String fk_nm_usuario) {
        this.fk_nm_usuario = fk_nm_usuario;
    }
    
    
    
    private String cd_publicacao;
    private String ds_texto;
    private String ds_pergunta;
    private String dt_data;
    private String tm_hora;
    private String cd_usuario;
    private String fk_nm_usuario;
    
    
}
