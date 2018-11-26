--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-26 19:30:49 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 75202)
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE administrador (
    ds_email character varying(100) NOT NULL,
    nm_nome character varying(40),
    nm_senha character varying(100)
);


ALTER TABLE administrador OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 75208)
-- Name: login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE login (
    ds_email character varying(100) NOT NULL,
    nm_senha character varying(100) NOT NULL,
    cd_login character varying(100),
    fk_ds_email character varying,
    fk_nm_senha character varying
);


ALTER TABLE login OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 75205)
-- Name: perfil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE perfil (
    "ds_publicaçao" character varying(100) NOT NULL,
    nm_usuario character varying(40) NOT NULL,
    ds_email character varying(100) NOT NULL,
    nm_senha character varying(100) NOT NULL
);


ALTER TABLE perfil OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 75189)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE publicacao (
    cd_publicacao character varying(1000) NOT NULL,
    ds_texto text NOT NULL,
    ds_pergunta character varying(100),
    dt_data date NOT NULL,
    tm_hora time(4) with time zone NOT NULL,
    nm_usuario character varying(40) NOT NULL
);


ALTER TABLE publicacao OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 75195)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    ds_email character varying(100),
    nr_numero numeric(100,100),
    nm_nome character varying(100),
    ds_senha character varying(100),
    cd_usuario character varying(100) NOT NULL,
    dt_data date
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 75202)
-- Dependencies: 183
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY administrador (ds_email, nm_nome, nm_senha) FROM stdin;
\.


--
-- TOC entry 2165 (class 0 OID 75208)
-- Dependencies: 185
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY login (ds_email, nm_senha, cd_login, fk_ds_email, fk_nm_senha) FROM stdin;
\.


--
-- TOC entry 2164 (class 0 OID 75205)
-- Dependencies: 184
-- Data for Name: perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY perfil ("ds_publicaçao", nm_usuario, ds_email, nm_senha) FROM stdin;
\.


--
-- TOC entry 2161 (class 0 OID 75189)
-- Dependencies: 181
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publicacao (cd_publicacao, ds_texto, ds_pergunta, dt_data, tm_hora, nm_usuario) FROM stdin;
\.


--
-- TOC entry 2162 (class 0 OID 75195)
-- Dependencies: 182
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (ds_email, nr_numero, nm_nome, ds_senha, cd_usuario, dt_data) FROM stdin;
\.


--
-- TOC entry 2040 (class 2606 OID 75218)
-- Name: pk_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY administrador
    ADD CONSTRAINT pk_email PRIMARY KEY (ds_email);


--
-- TOC entry 2045 (class 2606 OID 75212)
-- Name: pk_email_senha; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY login
    ADD CONSTRAINT pk_email_senha PRIMARY KEY (ds_email, nm_senha);


--
-- TOC entry 2042 (class 2606 OID 75222)
-- Name: pk_publicacao_usuario_email_senha; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT pk_publicacao_usuario_email_senha PRIMARY KEY ("ds_publicaçao", nm_usuario, ds_email, nm_senha);


--
-- TOC entry 2036 (class 2606 OID 75220)
-- Name: pk_texto_usuario_data_hora; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_texto_usuario_data_hora PRIMARY KEY (ds_texto, dt_data, tm_hora, nm_usuario);


--
-- TOC entry 2038 (class 2606 OID 75201)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (cd_usuario);


--
-- TOC entry 2043 (class 1259 OID 75231)
-- Name: fki_ds_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_ds_email ON login USING btree (fk_ds_email);


--
-- TOC entry 2046 (class 2606 OID 75226)
-- Name: fk_ds_email; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY login
    ADD CONSTRAINT fk_ds_email FOREIGN KEY (fk_ds_email) REFERENCES usuario(cd_usuario);


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-26 19:30:50 BRST

--
-- PostgreSQL database dump complete
--

