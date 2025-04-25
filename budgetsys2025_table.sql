--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-04-25 16:29:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 24630)
-- Name: allotment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.allotment (
    allot_id integer NOT NULL,
    objclass text,
    uacs text,
    allotment bigint,
    allotgroup text,
    allotprog text,
    allotyear character varying
);


ALTER TABLE public.allotment OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24635)
-- Name: allotment_allot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.allotment_allot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.allotment_allot_id_seq OWNER TO postgres;

--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 222
-- Name: allotment_allot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.allotment_allot_id_seq OWNED BY public.allotment.allot_id;


--
-- TOC entry 223 (class 1259 OID 24639)
-- Name: division; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.division (
    div_id integer NOT NULL,
    div_name text NOT NULL,
    test character varying
);


ALTER TABLE public.division OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24644)
-- Name: division_div_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.division_div_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.division_div_id_seq OWNER TO postgres;

--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 224
-- Name: division_div_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.division_div_id_seq OWNED BY public.division.div_id;


--
-- TOC entry 238 (class 1259 OID 24704)
-- Name: libtbl2025; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libtbl2025 (
    lib_id integer NOT NULL,
    prj_id integer,
    lib_class character varying,
    lib_title character varying,
    lib_allot integer
);


ALTER TABLE public.libtbl2025 OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 24703)
-- Name: libtbl2025_lib_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libtbl2025_lib_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.libtbl2025_lib_id_seq OWNER TO postgres;

--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 237
-- Name: libtbl2025_lib_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libtbl2025_lib_id_seq OWNED BY public.libtbl2025.lib_id;


--
-- TOC entry 225 (class 1259 OID 24648)
-- Name: orsnum_tbl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orsnum_tbl (
    orsnum_id integer NOT NULL,
    ors_refnum character varying,
    orsnumber character varying,
    ors_numset integer
);


ALTER TABLE public.orsnum_tbl OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24653)
-- Name: orsnum_tbl_orsnum_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orsnum_tbl_orsnum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orsnum_tbl_orsnum_id_seq OWNER TO postgres;

--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 226
-- Name: orsnum_tbl_orsnum_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orsnum_tbl_orsnum_id_seq OWNED BY public.orsnum_tbl.orsnum_id;


--
-- TOC entry 219 (class 1259 OID 24614)
-- Name: orstbl2023; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orstbl2023 (
    ors_id integer NOT NULL,
    ors_random character varying,
    ors_number character varying,
    payeeid integer,
    prj_id integer,
    prj_title character varying,
    lib_id integer,
    amount numeric,
    particulars character varying,
    uacs character varying,
    mfopap character varying,
    createdby character varying,
    isapproved integer DEFAULT 0,
    ors_numset integer,
    datecreated timestamp(0) without time zone,
    dateapproved timestamp(0) without time zone,
    details character varying,
    division character varying,
    address character varying,
    tin character varying,
    isactive integer DEFAULT 1 NOT NULL,
    tax2 integer DEFAULT 0 NOT NULL,
    tax5 integer DEFAULT 0 NOT NULL,
    responcenter text,
    iscontinuing integer DEFAULT 0,
    tax1 integer DEFAULT 0,
    tax10 integer DEFAULT 0
);


ALTER TABLE public.orstbl2023 OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24626)
-- Name: orstbl2023_ors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orstbl2023_ors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orstbl2023_ors_id_seq OWNER TO postgres;

--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 220
-- Name: orstbl2023_ors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orstbl2023_ors_id_seq OWNED BY public.orstbl2023.ors_id;


--
-- TOC entry 227 (class 1259 OID 24655)
-- Name: payeedb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payeedb (
    payeeid integer NOT NULL,
    payeetype character varying,
    payeename character varying,
    payeeacctnum character varying,
    payeeaddr character varying,
    payeetin character varying,
    payeeoffice character varying
);


ALTER TABLE public.payeedb OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24660)
-- Name: payeedb_payeeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payeedb_payeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payeedb_payeeid_seq OWNER TO postgres;

--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 228
-- Name: payeedb_payeeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payeedb_payeeid_seq OWNED BY public.payeedb.payeeid;


--
-- TOC entry 229 (class 1259 OID 24667)
-- Name: payeetbl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payeetbl (
    payeeid integer NOT NULL,
    payeename text,
    payeeacctnum text,
    payeeaddr text,
    payeetin text,
    payeetype character varying
);


ALTER TABLE public.payeetbl OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24672)
-- Name: payeetbl_payeeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payeetbl_payeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payeetbl_payeeid_seq OWNER TO postgres;

--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 230
-- Name: payeetbl_payeeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payeetbl_payeeid_seq OWNED BY public.payeetbl.payeeid;


--
-- TOC entry 231 (class 1259 OID 24676)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    prj_id integer NOT NULL,
    prj_code character varying(6),
    prj_title text,
    prj_fund character varying,
    prj_div character varying
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 24681)
-- Name: projects_prj_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_prj_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_prj_id_seq OWNER TO postgres;

--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 232
-- Name: projects_prj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_prj_id_seq OWNED BY public.projects.prj_id;


--
-- TOC entry 236 (class 1259 OID 24695)
-- Name: projectstbl2025; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectstbl2025 (
    prj_id integer NOT NULL,
    prj_title character varying,
    prj_div character varying,
    prj_fund character varying
);


ALTER TABLE public.projectstbl2025 OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 24694)
-- Name: projectstbl2025_prj_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projectstbl2025_prj_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projectstbl2025_prj_id_seq OWNER TO postgres;

--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 235
-- Name: projectstbl2025_prj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projectstbl2025_prj_id_seq OWNED BY public.projectstbl2025.prj_id;


--
-- TOC entry 233 (class 1259 OID 24685)
-- Name: uacstbl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uacstbl (
    uacs_id integer NOT NULL,
    uacs_title text,
    uacs_code text
);


ALTER TABLE public.uacstbl OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 24690)
-- Name: uacstbl_uacs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.uacstbl_uacs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.uacstbl_uacs_id_seq OWNER TO postgres;

--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 234
-- Name: uacstbl_uacs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.uacstbl_uacs_id_seq OWNED BY public.uacstbl.uacs_id;


--
-- TOC entry 218 (class 1259 OID 24578)
-- Name: usertbl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usertbl (
    user_id integer NOT NULL,
    username character varying,
    user_pass character varying,
    user_role character varying,
    fname character varying,
    userpost character varying,
    userdiv character varying
);


ALTER TABLE public.usertbl OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24577)
-- Name: usertbl_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usertbl_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usertbl_user_id_seq OWNER TO postgres;

--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 217
-- Name: usertbl_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usertbl_user_id_seq OWNED BY public.usertbl.user_id;


--
-- TOC entry 4801 (class 2604 OID 24636)
-- Name: allotment allot_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.allotment ALTER COLUMN allot_id SET DEFAULT nextval('public.allotment_allot_id_seq'::regclass);


--
-- TOC entry 4802 (class 2604 OID 24645)
-- Name: division div_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division ALTER COLUMN div_id SET DEFAULT nextval('public.division_div_id_seq'::regclass);


--
-- TOC entry 4809 (class 2604 OID 24707)
-- Name: libtbl2025 lib_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtbl2025 ALTER COLUMN lib_id SET DEFAULT nextval('public.libtbl2025_lib_id_seq'::regclass);


--
-- TOC entry 4803 (class 2604 OID 24654)
-- Name: orsnum_tbl orsnum_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orsnum_tbl ALTER COLUMN orsnum_id SET DEFAULT nextval('public.orsnum_tbl_orsnum_id_seq'::regclass);


--
-- TOC entry 4793 (class 2604 OID 24627)
-- Name: orstbl2023 ors_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orstbl2023 ALTER COLUMN ors_id SET DEFAULT nextval('public.orstbl2023_ors_id_seq'::regclass);


--
-- TOC entry 4804 (class 2604 OID 24661)
-- Name: payeedb payeeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeedb ALTER COLUMN payeeid SET DEFAULT nextval('public.payeedb_payeeid_seq'::regclass);


--
-- TOC entry 4805 (class 2604 OID 24673)
-- Name: payeetbl payeeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeetbl ALTER COLUMN payeeid SET DEFAULT nextval('public.payeetbl_payeeid_seq'::regclass);


--
-- TOC entry 4806 (class 2604 OID 24682)
-- Name: projects prj_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN prj_id SET DEFAULT nextval('public.projects_prj_id_seq'::regclass);


--
-- TOC entry 4808 (class 2604 OID 24698)
-- Name: projectstbl2025 prj_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectstbl2025 ALTER COLUMN prj_id SET DEFAULT nextval('public.projectstbl2025_prj_id_seq'::regclass);


--
-- TOC entry 4807 (class 2604 OID 24691)
-- Name: uacstbl uacs_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uacstbl ALTER COLUMN uacs_id SET DEFAULT nextval('public.uacstbl_uacs_id_seq'::regclass);


--
-- TOC entry 4792 (class 2604 OID 24581)
-- Name: usertbl user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertbl ALTER COLUMN user_id SET DEFAULT nextval('public.usertbl_user_id_seq'::regclass);


--
-- TOC entry 4815 (class 2606 OID 24638)
-- Name: allotment allotment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.allotment
    ADD CONSTRAINT allotment_pkey PRIMARY KEY (allot_id);


--
-- TOC entry 4817 (class 2606 OID 24647)
-- Name: division division_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division
    ADD CONSTRAINT division_pkey PRIMARY KEY (div_id);


--
-- TOC entry 4829 (class 2606 OID 24711)
-- Name: libtbl2025 libtbl2025_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtbl2025
    ADD CONSTRAINT libtbl2025_pkey PRIMARY KEY (lib_id);


--
-- TOC entry 4813 (class 2606 OID 24629)
-- Name: orstbl2023 orstbl2023_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orstbl2023
    ADD CONSTRAINT orstbl2023_pkey PRIMARY KEY (ors_id);


--
-- TOC entry 4819 (class 2606 OID 24663)
-- Name: payeedb payeedb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeedb
    ADD CONSTRAINT payeedb_pkey PRIMARY KEY (payeeid);


--
-- TOC entry 4821 (class 2606 OID 24675)
-- Name: payeetbl payeetbl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeetbl
    ADD CONSTRAINT payeetbl_pkey PRIMARY KEY (payeeid);


--
-- TOC entry 4823 (class 2606 OID 24684)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (prj_id);


--
-- TOC entry 4827 (class 2606 OID 24702)
-- Name: projectstbl2025 projectstbl2025_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectstbl2025
    ADD CONSTRAINT projectstbl2025_pkey PRIMARY KEY (prj_id);


--
-- TOC entry 4825 (class 2606 OID 24693)
-- Name: uacstbl uacstbl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uacstbl
    ADD CONSTRAINT uacstbl_pkey PRIMARY KEY (uacs_id);


--
-- TOC entry 4811 (class 2606 OID 24585)
-- Name: usertbl usertbl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertbl
    ADD CONSTRAINT usertbl_pkey PRIMARY KEY (user_id);


-- Completed on 2025-04-25 16:29:36

--
-- PostgreSQL database dump complete
--

