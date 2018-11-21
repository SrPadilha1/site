--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-21 19:40:02 BRST

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
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 24659)
-- Name: palavra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE palavra (
    cd_palavra character varying(100)
);


ALTER TABLE palavra OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 24649)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE publicacao (
    cd_publicacao character varying(1000) NOT NULL,
    ds_texto text
);


ALTER TABLE publicacao OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 24637)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    ds_email character varying(100),
    nr_numero numeric(100,100),
    nm_nome character varying(100),
    ds_senha character varying(100),
    cd_usuario character varying(100) NOT NULL
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2146 (class 0 OID 24659)
-- Dependencies: 183
-- Data for Name: palavra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY palavra (cd_palavra) FROM stdin;
\.


--
-- TOC entry 2145 (class 0 OID 24649)
-- Dependencies: 182
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publicacao (cd_publicacao, ds_texto) FROM stdin;
\.


--
-- TOC entry 2144 (class 0 OID 24637)
-- Dependencies: 181
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (ds_email, nr_numero, nm_nome, ds_senha, cd_usuario) FROM stdin;
\.


--
-- TOC entry 2029 (class 2606 OID 24658)
-- Name: pk_publicacao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_publicacao PRIMARY KEY (cd_publicacao);


--
-- TOC entry 2027 (class 2606 OID 24656)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (cd_usuario);


--
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-21 19:40:03 BRST

--
-- PostgreSQL database dump complete
--

