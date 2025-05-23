--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-05-23 16:36:03

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
-- TOC entry 5012 (class 0 OID 0)
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
-- TOC entry 5013 (class 0 OID 0)
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
    lib_allot integer,
    prj_fundsource character varying
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
-- TOC entry 5014 (class 0 OID 0)
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
-- TOC entry 5015 (class 0 OID 0)
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
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 220
-- Name: orstbl2023_ors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orstbl2023_ors_id_seq OWNED BY public.orstbl2023.ors_id;


--
-- TOC entry 240 (class 1259 OID 24713)
-- Name: orstbl_libitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orstbl_libitems (
    orslib_id integer NOT NULL,
    ors_id integer,
    lib_id integer,
    ors_random character varying
);


ALTER TABLE public.orstbl_libitems OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 24712)
-- Name: orstbl_libitems_orslib_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orstbl_libitems_orslib_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orstbl_libitems_orslib_id_seq OWNER TO postgres;

--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 239
-- Name: orstbl_libitems_orslib_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orstbl_libitems_orslib_id_seq OWNED BY public.orstbl_libitems.orslib_id;


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
-- TOC entry 5018 (class 0 OID 0)
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
-- TOC entry 5019 (class 0 OID 0)
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
-- TOC entry 5020 (class 0 OID 0)
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
-- TOC entry 5021 (class 0 OID 0)
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
-- TOC entry 5022 (class 0 OID 0)
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
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 217
-- Name: usertbl_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usertbl_user_id_seq OWNED BY public.usertbl.user_id;


--
-- TOC entry 4806 (class 2604 OID 24636)
-- Name: allotment allot_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.allotment ALTER COLUMN allot_id SET DEFAULT nextval('public.allotment_allot_id_seq'::regclass);


--
-- TOC entry 4807 (class 2604 OID 24645)
-- Name: division div_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division ALTER COLUMN div_id SET DEFAULT nextval('public.division_div_id_seq'::regclass);


--
-- TOC entry 4814 (class 2604 OID 24707)
-- Name: libtbl2025 lib_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtbl2025 ALTER COLUMN lib_id SET DEFAULT nextval('public.libtbl2025_lib_id_seq'::regclass);


--
-- TOC entry 4808 (class 2604 OID 24654)
-- Name: orsnum_tbl orsnum_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orsnum_tbl ALTER COLUMN orsnum_id SET DEFAULT nextval('public.orsnum_tbl_orsnum_id_seq'::regclass);


--
-- TOC entry 4798 (class 2604 OID 24627)
-- Name: orstbl2023 ors_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orstbl2023 ALTER COLUMN ors_id SET DEFAULT nextval('public.orstbl2023_ors_id_seq'::regclass);


--
-- TOC entry 4815 (class 2604 OID 24716)
-- Name: orstbl_libitems orslib_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orstbl_libitems ALTER COLUMN orslib_id SET DEFAULT nextval('public.orstbl_libitems_orslib_id_seq'::regclass);


--
-- TOC entry 4809 (class 2604 OID 24661)
-- Name: payeedb payeeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeedb ALTER COLUMN payeeid SET DEFAULT nextval('public.payeedb_payeeid_seq'::regclass);


--
-- TOC entry 4810 (class 2604 OID 24673)
-- Name: payeetbl payeeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeetbl ALTER COLUMN payeeid SET DEFAULT nextval('public.payeetbl_payeeid_seq'::regclass);


--
-- TOC entry 4811 (class 2604 OID 24682)
-- Name: projects prj_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN prj_id SET DEFAULT nextval('public.projects_prj_id_seq'::regclass);


--
-- TOC entry 4813 (class 2604 OID 24698)
-- Name: projectstbl2025 prj_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectstbl2025 ALTER COLUMN prj_id SET DEFAULT nextval('public.projectstbl2025_prj_id_seq'::regclass);


--
-- TOC entry 4812 (class 2604 OID 24691)
-- Name: uacstbl uacs_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uacstbl ALTER COLUMN uacs_id SET DEFAULT nextval('public.uacstbl_uacs_id_seq'::regclass);


--
-- TOC entry 4797 (class 2604 OID 24581)
-- Name: usertbl user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertbl ALTER COLUMN user_id SET DEFAULT nextval('public.usertbl_user_id_seq'::regclass);


--
-- TOC entry 4987 (class 0 OID 24630)
-- Dependencies: 221
-- Data for Name: allotment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.allotment (allot_id, objclass, uacs, allotment, allotgroup, allotprog, allotyear) FROM stdin;
152	Personnel Econ. Relief Allowance (PERA)	50102010-01	456000	1A1	PS	2025
153	Representation Allowance (RA)	50102020-00	306000	1A1	PS	2025
154	Transportation Allowance (TA)	50102030-01	306000	1A1	PS	2025
151	Salaries and Wages	50101010-01	11558000	1A1	PS	2025
155	Clothing/Uniform Allowance	50102040-01	133000	1A1	PS	2025
9	Mid-Year Bonus	50102160-01	963000	1A1	PS	2024
1	Salaries and Wages	50101010-01	11554000	1A1	PS	2024
54	Capital Outlay	 	\N	1A1	CO	2024
20	Terminal Leave Benefits	\N	2099000	1A1	PS	2024
24	Longetivity Pay	50102120-01	634000	1A1	PS	2024
131	Training Expenses	50202010-02	65733000	2A2	MOOE	2024
139	Local Travel	50201010-00	10000	3A1	MOOE	2024
142	Telephone (Mobile)	50205020-01	10000	3A1	MOOE	2024
141	Other Supplies & Materials Expenses	50203990-00	80000	3A1	MOOE	2024
144	Other Professional Expenses	50211990-00	1170000	3A1	MOOE	2024
143	Postage and Courier Expenses	50205010-00	20000	3A1	MOOE	2024
146	Representation Expenses	50299030-00	30000	3A1	MOOE	2024
145	Printing & Publication Expenses	50299020-00	20000	3A1	MOOE	2024
122	PhilHealth Contributions	50103030-01	253000	2A2	PS	2024
124	Loyalty Award	\N	5000	2A2	PS	2024
125	Subsistence Allowance	50102050-02	396000	2A2	PS	2024
103	Training Expenses	50202010-02	\N	2A1-2	MOOE	2024
147	RLIP	50103010-00	1386000	1A1	PS	2024
148	RLIP	50103010-00	368000	2A1-1	PS	2024
149	RLIP	50103010-00	467000	2A1-2	PS	2024
150	RLIP	50103010-00	1349000	2A2	PS	2024
23	Hazard Pay	50102110-01	1690000	1A1	PS	2024
99	Hazard Pay	50102110-01	862000	2A1-2	PS	2024
127	Hazard Pay	50102110-01	827000	2A2	PS	2024
25	Mutual Personnel Benefit Fund (MPBF) PBB	50102990-14	1360341	1A1	PS	2024
2	Personnel Econ. Relief Allowance (PERA)	50102010-01	456000	1A1	PS	2024
3	Representation Allowance (RA)	50102020-00	270000	1A1	PS	2024
4	Transportation Allowance (TA)	50102030-01	270000	1A1	PS	2024
5	Clothing/Uniform Allowance	50102040-01	114000	1A1	PS	2024
6	Productivity Enhancement Incentive	50102990-12	95000	1A1	PS	2024
7	Year-End Bonus	50102140-01	963000	1A1	PS	2024
8	Cash Gift	50102150-01	95000	1A1	PS	2024
10	Pag-IBIG Contributions	50103020-01	23000	1A1	PS	2024
11	PhilHealth Contributions	50103030-01	231000	1A1	PS	2024
16	Performance Based Bonus (PBB)	50102990-14	\N	1A1	PS	2024
12	Emp. Comp. Insurance Prem.	50103040-01	23000	1A1	PS	2024
13	Step Increment	 	\N	1A1	PS	2024
14	Personnel Services (Unprogrammed Appro)	50100000-00	\N	1A1	PS	2024
15	Other Personnel Benefits - Anniversary Bonus	50102990-38	\N	1A1	PS	2024
17	Other Personnel Benefits - SRI	 	\N	1A1	PS	2024
18	Collective Negotiation Agreement (CNA)	 	\N	1A1	PS	2024
19	Loyalty	 	5000	1A1	PS	2024
21	Subsistence Allowance	50102050-02	713000	1A1	PS	2024
22	Laundry Allowance	50102060-03	108000	1A1	PS	2024
26	Pension and Gratuity Fund	 	\N	1A1	PS	2024
27	Unprogrammed MPBF	50104030-01	\N	1A1	PS	2024
28	Monetization of Leave Credits	 	\N	1A1	PS	2024
29	Local Travel	50201010-00	200000	1A1	MOOE	2024
35	Other Supplies & Materials Expenses	50203990-00	210000	1A1	MOOE	2024
30	Foreign Travel	50201020-00	60000	1A1	MOOE	2024
31	ICT Training Expenses	50202010-01	200000	1A1	MOOE	2024
32	Office Supplies Expenses	50203010-02	131000	1A1	MOOE	2024
33	Office Supplies and Expenses - ICT Supplies	50203010-01	1000000	1A1	MOOE	2024
34	Fuel, Oil, and Lubricants Expenses	50203090-00	400000	1A1	MOOE	2024
36	Water Expenses	50204010-00	500000	1A1	MOOE	2024
37	Electricity Expenses	50204020-00	1700000	1A1	MOOE	2024
38	Postage and Courier Expenses	50205010-00	34000	1A1	MOOE	2024
39	Telephone (Mobile)	50205020-01	230000	1A1	MOOE	2024
40	Telephone (Landline)	50205020-02	210000	1A1	MOOE	2024
41	Internet Subscription Expenses	50205030-00	3600000	1A1	MOOE	2024
42	Buildings & Other Structures	50213040-01	70000	1A1	MOOE	2024
43	Motor Vehicle	50213060-01	400000	1A1	MOOE	2024
44	Office Equipment, Furnitures & Fixtures	50213050-02	100000	1A1	MOOE	2024
45	Extraordinary Expenses	50210030-00	136000	1A1	MOOE	2024
47	Janitorial Services	50212020-00	1600000	1A1	MOOE	2024
46	Other Professional Services	50211990-00	150000	1A1	MOOE	2024
48	Security Services	50212030-00	1600000	1A1	MOOE	2024
49	Other General Services	50212990-99	60000	1A1	MOOE	2024
50	Fidelity Bond Premium	50215020-00	800000	1A1	MOOE	2024
51	Insurance Expenses	50215030-00	400000	1A1	MOOE	2024
52	ICT Software Subscription	50299070-01	4000000	1A1	MOOE	2024
53	Other Subscription Expenses	50299070-99	30000	1A1	MOOE	2024
55	Salaries and Wages - Regular	50101010-01	3066000	2A1-1	PS	2024
56	Personnel Econ. Relief Allowance (PERA)	50102010-01	144000	2A1-1	PS	2024
57	Clothing/Uniform Allowance	50102040-01	36000	2A1-1	PS	2024
58	Productivity Enhancement Incentive	50102990-12	30000	2A1-1	PS	2024
59	Year-End Bonus	50102140-01	255000	2A1-1	PS	2024
60	Cash Gift	50102150-01	30000	2A1-1	PS	2024
62	Pag-IBIG Contributions	50103020-01	7000	2A1-1	PS	2024
63	PhilHealth Contibutions	50103030-01	69000	2A1-1	PS	2024
64	Emp. Comp. Insurance Prem.	50103040-01	7000	2A1-1	PS	2024
65	Loyalty Award	 	10000	2A1-1	PS	2024
66	Subsistence Allowance	50102050-02	475000	2A1-1	PS	2024
67	Laundry Allowance	50102060-03	72000	2A1-1	PS	2024
70	Local Travel	50201010-00	210000	2A1-1	MOOE	2024
71	Foreign Travel	50201020-00	30000	2A1-1	MOOE	2024
72	ERDT	50202020-00	824000000	2A1-1	MOOE	2024
73	ASTHRDP	50202020-00	1417984000	2A1-1	MOOE	2024
74	Science Education	50202020-00	507000000	2A1-1	MOOE	2024
75	HRDP	50202020-00	48000000	2A1-1	MOOE	2024
76	Office Supplies Expenses	50203010-02	110000	2A1-1	MOOE	2024
77	Fuel, Oil, and Lubricants Expenses	50203090-00	250000	2A1-1	MOOE	2024
78	Other Supplies & Materials Expenses	50203990-00	240000	2A1-1	MOOE	2024
79	Electricity Expenses	50204020-00	600000	2A1-1	MOOE	2024
80	Postage and Courier Expenses	50205010-00	30000	2A1-1	MOOE	2024
81	Telephone (Mobile)	50205020-01	60000	2A1-1	MOOE	2024
82	Telephone (Landline)	50205020-02	70000	2A1-1	MOOE	2024
83	Salaries and Wages - Regular	50101010-01	3888000	2A1-2	PS	2024
84	Personnel Econ. Relief Allowance (PERA)	50102010-01	144000	2A1-2	PS	2024
85	Representation Allowance (RA)	50102020-00	60000	2A1-2	PS	2024
86	Transportation Allowance (TA)	50102030-01	60000	2A1-2	PS	2024
87	Clothing/Uniform Allowance	50102040-01	36000	2A1-2	PS	2024
88	Productivity Enhancement Incentive	50102990-12	30000	2A1-2	PS	2024
89	Year-End Bonus	50102140-01	324000	2A1-2	PS	2024
90	Cash Gift	50102150-01	30000	2A1-2	PS	2024
92	Pag-IBIG Contributions	50103020-01	7000	2A1-2	PS	2024
93	PhilHealth Contibutions	50103030-01	87000	2A1-2	PS	2024
94	Emp. Comp. Insurance Prem.	50103040-01	7000	2A1-2	PS	2024
95	Collective Negotiation Agreement (CNA)	 	\N	2A1-2	PS	2024
96	Service Recognition Incentives (SRI)	\N	\N	2A1-2	PS	2024
97	Subsistence Allowance	50102050-02	436000	2A1-2	PS	2024
98	Laundry Allowance	50102060-03	66000	2A1-2	PS	2024
101	Local Travel	50201010-00	210000	2A1-2	PS	2024
102	Foreign Travel	50201020-00	60000	2A1-2	PS	2024
104	Scholarship Expenses	50202020-00	4385575000	2A1-2	PS	2024
105	Office Supplies Expenses	50203010-02	110000	2A1-2	PS	2024
106	Fuel, Oil, and Lubricants Expenses	50203090-00	250000	2A1-2	PS	2024
107	Other Supplies & Materials Expenses	50203990-00	120000	2A1-2	PS	2024
108	Electricity Expenses	50204020-00	700000	2A1-2	PS	2024
109	Postage and Courier Expenses	50205010-00	50000	2A1-2	PS	2024
110	Telephone (Mobile)	50205020-01	110000	2A1-2	PS	2024
111	Telephone (Landline)	50205020-02	90000	2A1-2	PS	2024
112	Salaries and Wages	50101010-01	11242000	2A2	PS	2024
113	Personnel Econ. Relief Allowance (PERA)	50102010-01	504000	2A2	PS	2024
69	Longetivity Pay	50102120-01	414000	2A1-1	PS	2024
114	Representation Allowance (RA)	50102020-00	0	2A2	PS	2024
115	Transportation Allowance (TA)	50102030-01	0	2A2	PS	2024
117	Productivity Enhancement Incentive	50102990-12	105000	2A2	PS	2024
116	Clothing/Uniform Allowance	50102040-01	126000	2A2	PS	2024
121	Pag-IBIG Contributions	50103020-01	25000	2A2	PS	2024
119	Cash Gift	50102150-01	105000	2A2	PS	2024
118	Year-End Bonus	50102140-01	937000	2A2	PS	2024
123	Emp. Comp. Insurance Prem.	50103040-01	25000	2A2	PS	2024
129	Local Travel	50201010-00	260000	2A2	MOOE	2024
126	Laundry Allowance	50102060-03	60000	2A2	PS	2024
130	Foreign Travel	50201020-00	50000	2A2	MOOE	2024
128	Longetivity Pay	50102120-01	439000	2A2	PS	2024
134	Other Supplies and Materials Expenses	50203990-00	350000	2A2	MOOE	2024
133	Fuel, Oil and Lubricants Expenses	50203090-00	400000	2A2	MOOE	2024
132	Office Supplies Expenses	50203010-02	250000	2A2	MOOE	2024
138	Postage and Courier Expenses	50205010-00	60000	2A2	MOOE	2024
137	Telephone (Landline)	50205020-02	70000	2A2	MOOE	2024
136	Telephone (Mobile)	50205020-01	260000	2A2	MOOE	2024
135	Electricity Expenses	50204020-00	700000	2A2	MOOE	2024
140	Office Supplies Expenses	50203010-02	80000	3A1	MOOE	2024
100	Longetivity Pay	50102120-01	312000	2A1-2	PS	2024
68	Hazard Pay	50102110-01	1045000	2A1-1	PS	2024
61	Mid-Year Bonus	50102990-36	255000	2A1-1	PS	2024
91	Mid-Year Bonus	50102990-36	324000	2A1-2	PS	2024
120	Mid-Year Bonus	50102990-36	937000	2A2	PS	2024
\.


--
-- TOC entry 4989 (class 0 OID 24639)
-- Dependencies: 223
-- Data for Name: division; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.division (div_id, div_name, test) FROM stdin;
1	FAD	test1
2	OD/ODD	test2
3	SEID	test3
4	STMERPD	test4
5	STSD	test5
\.


--
-- TOC entry 5004 (class 0 OID 24704)
-- Dependencies: 238
-- Data for Name: libtbl2025; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libtbl2025 (lib_id, prj_id, lib_class, lib_title, lib_allot, prj_fundsource) FROM stdin;
1	1	PS	Contract of Service Personnel	85000000	2A1-AC HR
2	1	PS	Honorarium / Service Fees / Incentives for Resources Speakers	250000	2A1-AC HR
3	1	MOOE	Culture & Athletic Activities	1300000	2A1-AC HR
5	1	MOOE	Training Expenses (In-House & Individual Training/Workshops/ Seminars/Meetings) & Other Related Activities	1750000	2A1-AC HR
6	1	MOOE	Tuition fees, Stipend and Book and Thesis Allowances	960000	2A1-AC HR
7	1	MOOE	ISO & Philippine Quality Assurance Certification and Other related activities	200000	2A1-AC HR
8	1	MOOE	Rent Expense (venue for meetings/workshops/seminars)	330000	2A1-AC HR
9	1	MOOE	Traveling / Transportation Expenses / Courier	250000	2A1-AC HR
10	1	MOOE	Supplies & Materials	900000	2A1-AC HR
11	1	MOOE	Representation Expenses	500000	2A1-AC HR
12	1	MOOE	Program on Awards and Incentives for Service Excellence (PRAISE) Implementation	600000	2A1-AC HR
13	1	MOOE	Professional Services (Notarization, Psycho & Drug Test)	100000	2A1-AC HR
14	1	MOOE	Promotional Materials	500000	2A1-AC HR
15	1	MOOE	Courier/delivery Expense	10000	2A1-AC HR
16	1	CO	One unit multi functional printer	50000	2A1-AC HR
17	2	MOOE	Other Supplies and Materials and Expenses	1370000	2A1-AC FAD
18	2	MOOE	Other Maintenance and Operation Expenses	3700000	2A1-AC FAD
19	2	CO	Four (4) Inverter type air conditioning units with installation	930000	2A1-AC FAD
20	3	PS	Honoraria	70000	2A1-AC IPU
21	3	MOOE	Lease Expenses	450000	2A1-AC IPU
22	3	MOOE	Supplies and Materials 	140000	2A1-AC IPU
23	3	MOOE	Travelling Expenses	30000	2A1-AC IPU
24	3	CO	ICT Equipment	110000	2A1-AC IPU
4	1	MOOE	Health & Wellness Activities	1300000	2A1-AC HR
25	4	MOOE	Office Supplies Expenses	150000	2A1-106
26	4	MOOE	Other MOOE	5000	2A1-106
27	4	MOOE	Representation Expenses	60000	2A1-106
28	4	MOOE	Communication Expenses (Telephone)	30000	2A1-106
29	4	MOOE	Travel Expenses (Local)	50000	2A1-106
30	4	MOOE	Advertising Expenses	5000	2A1-106
31	4	MOOE	Scholarship Grants / Expenses	55420000	2A1-106
32	4	MOOE	Rent / Lease Expenses	280000	2A1-106
\.


--
-- TOC entry 4991 (class 0 OID 24648)
-- Dependencies: 225
-- Data for Name: orsnum_tbl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orsnum_tbl (orsnum_id, ors_refnum, orsnumber, ors_numset) FROM stdin;
1	\N	\N	\N
2	ORS-01-0001	01-0001	1
3	ORS-01-0002		2
4	ORS-01-0003		3
5	ORS-01-0004	01-0004	4
6	ORS-01-0005	01-0005	5
7	ORS-01-0006	01-0006	6
8	ORS-01-0007	01-0007	7
9	ORS-01-0008	01-0008	8
10	ORS-01-0009	01-0009	9
11	ORS-01-0010	01-0010	10
12	ORS-01-0011	01-0011	11
13	ORS-01-0012	01-0012	12
14	ORS-01-0013	01-0013	13
15	ORS-01-0014	01-0014	14
16	ORS-01-0015	01-0015	15
17	ORS-01-0016	01-0016	16
18	ORS-01-0017	01-0017	17
19	ORS-01-0018	01-0018	18
20	ORS-01-0019	01-0019	19
21	ORS-01-0020	01-0020	20
22	ORS-01-0021	01-0021	21
23	ORS-01-0022	01-0022	22
24	ORS-01-0023	01-0023	23
25	DOC-2024-0024	01-0024	24
26	DOC-2024-0025	01-0025	25
27	DOC-2024-0026	01-0026	26
28	DOC-2024-0027	01-0027	27
29	DOC-2024-0028	01-0028	28
30	DOC-2024-0029	01-0029	29
31	DOC-2024-0030	01-0030	30
32	DOC-2024-0031	01-0031	31
33	DOC-2024-0032	01-0032	32
34	DOC-2024-0033	01-0033	33
35	DOC-2024-0034	01-0034	34
36	DOC-2024-0035	01-0035	35
37	DOC-2024-0036	01-0036	36
38	DOC-2024-0037	01-0037	37
39	DOC-2024-0038	01-0038	38
40	DOC-2024-0039	01-0039	39
41	DOC-2024-0040	01-0040	40
42	DOC-2024-0041	01-0041	41
43	DOC-2024-0042	01-0042	42
44	DOC-2024-0043	01-0043	43
45	DOC-2024-0045	01-0045	44
46	ORS-01-0046	01-0046	45
47	ORS-01-0047	01-0047	46
48	ORS-01-0048	01-0048	47
49	ORS-01-0049	01-0049	48
50	ORS-01-0050	01-0050	49
51	ORS-01-0051	01-0051	50
52	ORS-01-0052	01-0052	51
53	ORS-01-0053	01-0053	52
54	ORS-01-0054	01-0054	53
55	ORS-01-0055	01-0055	54
56	ORS-01-0056	01-0056	55
57	ORS-01-0057	01-0057	56
58	ORS-01-0058	01-0058	57
59	ORS-01-0059	01-0059	58
60	ORS-01-0060	01-0060	59
61	ORS-01-0061	01-0061	60
62	ORS-01-0062	01-0062	61
63	ORS-01-0063	01-0063	62
64	ORS-01-0064	01-0064	63
65	ORS-01-0065	01-0065	64
66	ORS-01-0066	01-0066	65
67	ORS-01-0067	01-0067	66
68	ORS-01-0068	01-0068	67
69	ORS-01-0069	01-0069	68
70	ORS-01-0070	01-0070	69
71	ORS-01-0071	01-0071	70
72	ORS-01-0072	01-0072	71
73	ORS-01-0073	01-0073	72
74	ORS-01-0074	01-0074	73
75	ORS-01-0075	01-0075	74
76	ORS-01-0076	01-0076	75
77	ORS-01-0077	01-0077	76
78	ORS-01-0078	01-0078	77
79	ORS-01-0079	01-0079	78
80	ORS-01-0080	01-0080	79
81	ORS-01-0081	01-0081	80
82	ORS-01-0082	01-0082	81
83	ORS-01-0083	01-0083	82
84	ORS-01-0084	01-0084	83
85	ORS-01-0085	01-0085	84
86	ORS-01-0086	01-0086	85
87	ORS-01-0087	01-0087	86
88	ORS-01-0088	01-0088	87
89	ORS-01-0089	01-0089	88
90	ORS-01-0090	01-0090	89
91	ORS-01-0091	01-0091	90
92	ORS-01-0092	01-0092	91
93	ORS-01-0093	01-0093	92
94	ORS-01-0094	01-0094	93
95	ORS-01-0095	01-0095	94
96	ORS-01-0096	01-0096	95
97	ORS-01-0097	01-0097	96
98	ORS-01-0098	01-0098	97
99	ORS-01-0099	01-0099	98
100	ORS-01-0100	01-0100	99
101	ORS-01-0101	01-0101	100
102	ORS-01-0102	01-0102	101
103	ORS-01-0103	01-0103	102
104	ORS-01-0104	01-0104	103
105	ORS-01-0105	01-0105	104
106	ORS-01-0106	01-0106	105
107	ORS-01-0107	01-0107	106
108	ORS-01-0108	01-0108	107
109	ORS-01-0109	01-0109	108
110	ORS-01-0183	01-0183	109
111	DOC-2024-0314	02-0315	110
112	DOC-2024-0313	02-0314	111
113	DOC-2024-0312	02-0313	112
114	DOC-2024-0311	02-0312	113
115	DOC-2024-0315	03-0312	114
116	DOC-2024-0310	03-0310	115
117	DOC-2024-0309	03-0309	116
118	DOC-2024-0308	03-0308	117
119	DOC-2024-0307	03-0307	118
120	DOC-2024-0306	03-0306	119
121	DOC-2024-0305	03-0305	120
122	DOC-2024-0304	03-0304	121
123	DOC-2024-0303	03-0303	122
124	DOC-2024-0302	03-0302	123
125	DOC-2024-0301	03-0301	124
126	DOC-2024-0300	03-0300	125
127	DOC-2024-0299	03-0299	126
128	DOC-2024-0298	03-0298	127
129	DOC-2024-0297	03-0297	128
130	DOC-2024-0296	03-0296	129
131	DOC-2024-0295	03-0295	130
132	DOC-2024-0294	03-0294	131
133	DOC-2024-0293	03-0293	132
134	DOC-2024-0292	03-0292	133
135	DOC-2024-0291	03-0291	134
136	DOC-2024-0290	03-0290	135
137	DOC-2024-0289	03-0289	136
138	DOC-2024-0288	03-0288	137
139	DOC-2024-0287	03-0287	138
140	DOC-2024-0286	03-0286	139
141	DOC-2024-0285	03-0285	140
142	DOC-2024-0284	03-0284	141
143	DOC-2024-0283	03-0283	142
144	DOC-2024-0282	03-0282	143
145	DOC-2024-0281	03-0281	144
146	DOC-2024-0280	03-0280	145
147	DOC-2024-0276	03-0276	146
148	DOC-2024-0277	03-0277	147
149	DOC-2024-0278	03-0278	148
150	DOC-2024-0279	03-0279	149
151	DOC-2024-0256	03-0255	150
152	DOC-2024-0257	03-0256	151
153	DOC-2024-0258	03-0257	152
154	DOC-2024-0259	03-0258	153
155	DOC-2024-0260	03-0259	154
156	DOC-2024-0261	03-0260	155
157	DOC-2024-0262	03-0261	156
158	DOC-2024-0263	03-0262	157
159	DOC-2024-0264	03-0263	158
160	DOC-2024-0265	03-0264	159
161	DOC-2024-0266	03-0265	160
162	DOC-2024-0267	03-0266	161
163	DOC-2024-0268	03-0267	162
164	DOC-2024-0269	03-0268	163
165	DOC-2024-0270	03-0270	164
166	DOC-2024-0271	03-0271	165
167	DOC-2024-0272	03-0272	166
168	DOC-2024-0273	03-0273	167
169	DOC-2024-0274	03-0274	168
170	DOC-2024-0275	03-0275	169
171	DOC-2024-0236	02-0235	170
172	DOC-2024-0237	02-0236	171
173	DOC-2024-0238	02-0237	172
174	DOC-2024-0239	02-0238	173
175	DOC-2024-0240	02-0239	174
176	DOC-2024-0241	02-0240	175
177	DOC-2024-0242	02-0241	176
178	DOC-2024-0243	02-0242	177
179	DOC-2024-0244	02-0243	178
180	DOC-2024-0245	02-0244	179
181	DOC-2024-0246	02-0245	180
182	DOC-2024-0247	02-0246	181
183	DOC-2024-0248	02-0247	182
184	DOC-2024-0249	02-0248	183
185	DOC-2024-0250	02-0249	184
186	DOC-2024-0251	02-0250	185
187	DOC-2024-0252	02-0251	186
188	DOC-2024-0253	02-0252	187
189	DOC-2024-0254	02-0253	188
190	DOC-2024-0255	02-0254	189
191	DOC-2024-0191	02-0190	190
192	DOC-2024-0192	02-0191	191
193	DOC-2024-0193	02-0192	192
194	DOC-2024-0194	02-0193	193
195	DOC-2024-0195	02-0194	194
196	DOC-2024-0196	02-0195	195
197	DOC-2024-0197	02-0196	196
198	DOC-2024-0198	02-0197	197
199	DOC-2024-0199	02-0198	198
200	DOC-2024-0200	02-0199	199
201	DOC-2024-0201	02-0200	200
202	DOC-2024-0202	02-0201	201
203	DOC-2024-0203	02-0202	202
204	DOC-2024-0204	02-0203	203
205	DOC-2024-0205	02-0204	204
206	DOC-2024-0206	02-0205	205
207	DOC-2024-0207	02-0206	206
208	DOC-2024-0208	02-0207	207
209	DOC-2024-0209	02-0208	208
210	DOC-2024-0210	02-0209	209
211	DOC-2024-0211	02-0210	210
212	DOC-2024-0212	02-0211	211
213	DOC-2024-0213	02-0212	212
214	DOC-2024-0214	02-0213	213
215	DOC-2024-0215	02-0214	214
216	DOC-2024-0216	02-0215	215
217	DOC-2024-0217	02-0216	216
218	DOC-2024-0218	02-0217	217
219	DOC-2024-0219	02-0218	218
220	DOC-2024-0220	02-0219	219
221	DOC-2024-0221	02-0220	220
222	DOC-2024-0222	02-0221	221
223	DOC-2024-0223	02-0222	222
224	DOC-2024-0224	02-0223	223
225	DOC-2024-0225	02-0224	224
226	DOC-2024-0226	02-0225	225
227	DOC-2024-0227	02-0226	226
228	DOC-2024-0228	02-0227	227
229	DOC-2024-0229	02-0228	228
230	DOC-2024-0230	02-0229	229
231	DOC-2024-0231	02-0230	230
232	DOC-2024-0232	02-0231	231
233	DOC-2024-0233	02-0232	232
234	DOC-2024-0234	02-0233	233
235	DOC-2024-0235	02-0234	234
236	DOC-2024-0406	02-0403	235
237	DOC-2024-0405	02-0402	236
238	DOC-2024-0404	02-0401	237
239	DOC-2024-0403	02-0400	238
240	DOC-2024-0401	02-0399	239
241	DOC-2024-0400	02-0398	240
242	DOC-2024-0399	02-0397	241
243	DOC-2024-0398	02-0396	242
244	DOC-2024-0397	02-0395	243
245	DOC-2024-0396	02-0394	244
246	DOC-2024-0395	02-0393	245
247	DOC-2024-0394	02-0392	246
248	DOC-2024-0393	02-0391	247
249	DOC-2024-0392	02-0390	248
250	DOC-2024-0391	02-0389	249
251	DOC-2024-0390	02-0388	250
252	DOC-2024-0389	02-0387	251
253	DOC-2024-0387	02-0386	252
254	DOC-2024-0386	02-0385	253
255	DOC-2024-0385	02-0384	254
256	DOC-2024-0384	02-0383	255
257	DOC-2024-0383	02-0382	256
258	DOC-2024-0382	02-0381	257
259	DOC-2024-0381	02-0380	258
260	DOC-2024-0380	02-0379	259
261	DOC-2024-0379	02-0378	260
262	DOC-2024-0378	02-0377	261
263	DOC-2024-0377	02-0376	262
264	DOC-2024-0376	02-0375	263
265	DOC-2024-0375	02-0374	264
266	DOC-2024-0374	02-0373	265
267	DOC-2024-0373	02-0372	266
268	DOC-2024-0372	02-0371	267
269	DOC-2024-0371	02-0370	268
270	DOC-2024-0370	02-0369	269
271	DOC-2024-0369	02-0368	270
272	DOC-2024-0368	02-0367	271
273	DOC-2024-0367	02-0366	272
274	DOC-2024-0366	02-0365	273
275	DOC-2024-0365	02-0364	274
276	DOC-2024-0364	02-0363	275
277	DOC-2024-0363	02-0362	276
278	DOC-2024-0362	02-0361	277
279	DOC-2024-0361	02-0360	278
280	DOC-2024-0360	02-0359	279
281	DOC-2024-0359	02-0358	280
282	DOC-2024-0358	02-0357	281
283	DOC-2024-0357	02-0356	282
284	DOC-2024-0356	02-0355	283
285	DOC-2024-0354	02-0354	284
286	DOC-2024-0353	02-0353	285
287	DOC-2024-0352	02-0352	286
288	DOC-2024-0351	02-0351	287
289	DOC-2024-0350	02-0350	288
290	DOC-2024-0349	02-0349	289
291	DOC-2024-0348	02-0348	290
292	DOC-2024-0347	02-0347	291
293	DOC-2024-0346	02-0346	292
294	DOC-2024-0345	02-0345	293
295	DOC-2024-0344	02-0344	294
296	DOC-2024-0343	02-0343	295
297	DOC-2024-0342	02-0342	296
298	DOC-2024-0341	02-0341	297
299	DOC-2024-0340	02-0340	298
300	DOC-2024-0339	02-0339	299
301	DOC-2024-0338	02-0338	300
302	DOC-2024-0337	02-0337	301
303	DOC-2024-0336	02-0336	302
304	DOC-2024-0335	02-0335	303
305	DOC-2024-0334	02-0334	304
306	DOC-2024-0333	02-0333	305
307	DOC-2024-0332	02-0332	306
308	DOC-2024-0331	02-0331	307
309	DOC-2024-0330	02-0330	308
310	DOC-2024-0329	02-0329	309
311	DOC-2024-0328	02-0328	310
312	DOC-2024-0327	02-0327	311
313	DOC-2024-0326	02-0326	312
314	DOC-2024-0325	02-0325	313
315	DOC-2024-0324	02-0324	314
316	DOC-2024-0323	02-0323	315
317	DOC-2024-0322	02-0322	316
318	DOC-2024-0321	02-0321	317
319	DOC-2024-0320	02-0320	318
320	DOC-2024-0319	02-0319	319
321	DOC-2024-0318	02-0318	320
322	DOC-2024-0317	02-0317	321
323	DOC-2024-0316	02-0316	322
324	DOC-2024-0407	02-0403-A	323
325	DOC-2024-0408	02-0205	324
326	DOC-2024-0413	02-0269	325
327	DOC-2024-0461	03-0450	326
328	DOC-2024-0460	03-0449	327
329	DOC-2024-0459	03-0448	328
330	DOC-2024-0458	03-0447	329
331	DOC-2024-0457	03-0446	330
332	DOC-2024-0456	03-0445	331
333	DOC-2024-0455	03-0444	332
334	DOC-2024-0454	03-0443	333
335	DOC-2024-0453	03-0442	334
336	DOC-2024-0452	03-0441	335
337	DOC-2024-0451	03-0440	336
338	DOC-2024-0450	03-0439	337
339	DOC-2024-0449	03-0438	338
340	DOC-2024-0448	03-0437	339
341	DOC-2024-0447	03-0436	340
342	DOC-2024-0446	03-0435	341
343	DOC-2024-0445	03-0434	342
344	DOC-2024-0444	03-0433	343
345	DOC-2024-0443	03-0432	344
346	DOC-2024-0442	03-0431	345
347	DOC-2024-0441	03-0429	346
348	DOC-2024-0440	03-0428	347
349	DOC-2024-0439	03-0427	348
350	DOC-2024-0438	03-0426	349
351	DOC-2024-0437	03-0425	350
352	DOC-2024-0436	03-0424	351
353	DOC-2024-0435	03-0423	352
354	DOC-2024-0434	03-0422	353
355	DOC-2024-0433	03-0421	354
356	DOC-2024-0432	03-0420	355
357	DOC-2024-0431	03-0419	356
358	DOC-2024-0430	03-0418	357
359	DOC-2024-0429	03-0417	358
360	DOC-2024-0428	03-0416	359
361	DOC-2024-0427	03-0415	360
362	DOC-2024-0426	03-0414	361
363	DOC-2024-0425	03-0413	362
364	DOC-2024-0424	03-0412	363
365	DOC-2024-0423	03-0411	364
366	DOC-2024-0422	03-0410	365
367	DOC-2024-0421	03-0409	366
368	DOC-2024-0420	03-0408	367
369	DOC-2024-0412	03-0407	368
370	DOC-2024-0411	03-0406	369
371	DOC-2024-0410	03-0405	370
372	DOC-2024-0409	03-0404	371
373	DOC-2024-0462	03-0451	372
374	DOC-2024-0463	03-0454	373
375	DOC-2024-0464	03-0457	374
376	DOC-2024-0480	03-0477	375
377	DOC-2024-0479	03-0476	376
378	DOC-2024-0478	03-0473	377
379	DOC-2024-0477	03-0472	378
380	DOC-2024-0476	03-0471	379
381	DOC-2024-0475	03-0470	380
382	DOC-2024-0474	03-0469	381
383	DOC-2024-0473	03-0467	382
384	DOC-2024-0472	03-0465	383
385	DOC-2024-0471	03-0464	384
386	DOC-2024-0470	03-0463	385
387	DOC-2024-0469	03-0462	386
388	DOC-2024-0468	03-0461	387
389	DOC-2024-0467	03-0460	388
390	DOC-2024-0466	03-0459	389
391	DOC-2024-0465	03-0458	390
392	DOC-2024-0481	03-0479	391
393	DOC-2024-0484	03-0480	392
394	DOC-2024-0485	03-0481	393
395	DOC-2024-0486	03-0482	394
396	DOC-2024-0487	03-0483	395
397	DOC-2024-0488	03-0484	396
398	DOC-2024-0489	03-0485	397
399	DOC-2024-0490	03-0486	398
400	DOC-2024-0491	03-0487	399
401	DOC-2024-0492	03-0488	400
402	DOC-2024-0493	03-0489	401
403	DOC-2024-0494	03-0490	402
404	DOC-2024-0495	03-0491	403
405	DOC-2024-0496	03-0492	404
406	DOC-2024-0497	03-0493	405
407	DOC-2024-0498	03-0494	406
408	DOC-2024-0499	03-0495	407
409	DOC-2024-0500	03-0496	408
410	DOC-2024-0501	03-0497	409
411	DOC-2024-0502	03-0498	410
412	DOC-2024-0503	03-0499	411
413	DOC-2024-0504	03-0500	412
414	DOC-2024-0505	03-0501	413
415	DOC-2024-0506	03-0502	414
416	DOC-2024-0507	03-0503	415
417	DOC-2024-0508	03-0504	416
418	DOC-2024-0509	03-0505	417
419	DOC-2024-0510	03-0506	418
420	DOC-2024-0511	03-0507	419
421	DOC-2024-0512	03-0508	420
422	DOC-2024-0513	03-0509	421
423	DOC-2024-0514	03-0510	422
424	DOC-2024-0515	03-0511	423
425	DOC-2024-0516	03-0512	424
426	DOC-2024-0517	03-0513	425
427	DOC-2024-0518	03-0514	426
428	DOC-2024-0519	03-0515	427
429	DOC-2024-0520	03-0516	428
430	DOC-2024-0521	03-0517	429
431	DOC-2024-0522	03-0521	430
432	DOC-2024-0523	03-0522	431
433	DOC-2024-0524	03-0523	432
434	DOC-2024-0525	03-0524	433
435	DOC-2024-0526	03-0525	434
436	DOC-2024-0527	03-0526	435
437	DOC-2024-0528	03-0527	436
438	DOC-2024-0529	03-0528	437
439	DOC-2024-0530	03-0529	438
440	DOC-2024-0531	03-0531	439
441	DOC-2024-0532	03-0532	440
442	DOC-2024-0533	03-0533	441
443	DOC-2024-0534	03-0534	442
444	DOC-2024-0535	03-0535	443
445	DOC-2024-0536	03-0536	444
446	DOC-2024-0537	03-0537	445
447	DOC-2024-0538	03-0538	446
448	DOC-2024-0539	03-0540	447
449	DOC-2024-0540	03-0542	448
450	DOC-2024-0546	03-0548	449
451	DOC-2024-0545	03-0547	450
452	DOC-2024-0544	03-0546	451
453	DOC-2024-0543	03-0545	452
454	DOC-2024-0542	03-0544	453
455	DOC-2024-0541	03-0543	454
456	DOC-2024-0547	03-0549	455
457	DOC-2024-0548	03-0550	456
458	DOC-2024-0558	03-0561	457
459	DOC-2024-0557	03-0560	458
460	DOC-2024-0556	03-0559	459
461	DOC-2024-0555	03-0558	460
462	DOC-2024-0554	03-0557	461
463	DOC-2024-0553	03-0556	462
464	DOC-2024-0552	03-0555	463
465	DOC-2024-0551	03-0554	464
466	DOC-2024-0550	03-0553	465
467	DOC-2024-0549	03-0552	466
468	DOC-2024-0559	03-0564	467
469	DOC-2024-0560	03-0565	468
470	DOC-2024-0561	03-0566	469
471	DOC-2024-0562	03-0567	470
472	DOC-2024-0563	03-0568	471
473	DOC-2024-0564	03-0569	472
474	DOC-2024-0565	03-0570	473
475	DOC-2024-0566	03-0571	474
476	DOC-2024-0567	03-0572	475
477	DOC-2024-0568	03-0573	476
478	DOC-2024-0569	03-0575	477
479	DOC-2024-0570	03-0576	478
480	DOC-2024-0571	03-0577	479
481	DOC-2024-0572	03-0578	480
482	DOC-2024-0573	03-0579	481
483	DOC-2024-0574	03-0580	482
484	DOC-2024-0575	03-0581	483
485	DOC-2024-0576	03-0582	484
486	DOC-2024-0577	03-0583	485
487	DOC-2024-0578	03-0584	486
488	DOC-2024-0579	03-0585	487
489	DOC-2024-0580	03-0586	488
490	DOC-2024-0581	03-0587	489
491	DOC-2024-0582	03-0588	490
492	DOC-2024-0583	03-0589	491
493	DOC-2024-0584	03-0590	492
494	DOC-2024-0585	03-0591	493
495	DOC-2024-0586	03-0592	494
496	DOC-2024-0587	03-0593	495
497	DOC-2024-0588	03-0430	496
498	DOC-2024-0589	03-0452	497
499	DOC-2024-0590	03-0453	498
500	DOC-2024-0591	03-0455	499
501	DOC-2024-0592	03-0456	500
502	DOC-2024-0593	03-0466	501
503	DOC-2024-0594	03-0468	502
504	DOC-2024-0595	03-0474	503
505	DOC-2024-0596	03-0475	504
506	DOC-2024-0597	03-0478	505
507	DOC-2024-0598	03-0518	506
508	DOC-2024-0599	03-0610A	507
509	DOC-2024-0600	03-0604	508
510	DOC-2024-0601	03-0594	509
511	DOC-2024-0602	03-0595	510
512	DOC-2024-0603	03-0596	511
513	DOC-2024-0604	03-0597	512
514	DOC-2024-0605	03-0598	513
515	DOC-2024-0606	03-0599	514
516	DOC-2024-0607	03-0600	515
517	DOC-2024-0608	03-0601	516
518	DOC-2024-0609	03-0602	517
519	DOC-2024-0610	03-0603	518
520	DOC-2024-0611	03-0605	519
521	DOC-2024-0612	03-0606	520
522	DOC-2024-0613	03-0607	521
523	DOC-2024-0614	03-0608	522
524	DOC-2024-0615	03-0609	523
525	DOC-2024-0616	03-0610	524
526	DOC-2024-0618	03-0551	525
527	DOC-2024-0617	03-0539	526
528	DOC-2024-0619	03-0562	527
529	DOC-2024-0620	03-0519	528
530	DOC-2024-0621	03-0520	529
531	DOC-2024-0622	03-0541	530
532	DOC-2024-0623	03-0574	531
533	DOC-2024-0624	03-0563	532
534	DOC-2024-0625	03-0530	533
535	DOC-2024-0631	04-0611	534
536	DOC-2024-0631	04-0612	535
537	DOC-2024-0631	04-0612	536
538	DOC-2024-0631	04-0611	537
539	DOC-2024-0631	04-0612	538
540	DOC-2024-0631	04-0611	539
541	DOC-2024-0632	04-0613	540
542	DOC-2024-0661	04-0642	541
543	DOC-2024-0660	04-0641	542
544	DOC-2024-0659	04-0640	543
545	DOC-2024-0658	04-0639	544
546	DOC-2024-0658	04-06	545
547	DOC-2024-0658	04-0639	546
548	DOC-2024-0657	04-0638	547
549	DOC-2024-0656	04-0637	548
550	DOC-2024-0655	04-0636	549
551	DOC-2024-0654	04-0635	550
552	DOC-2024-0653	04-0634	551
553	DOC-2024-0652	04-0633	552
554	DOC-2024-0651	04-0632	553
555	DOC-2024-0650	04-0631	554
556	DOC-2024-0649	04-0630	555
557	DOC-2024-0648	04-0629	556
558	DOC-2024-0647	04-0628	557
559	DOC-2024-0646	04-0627	558
560	DOC-2024-0645	04-0626	559
561	DOC-2024-0644	04-0625	560
562	DOC-2024-0643	04-0624	561
563	DOC-2024-0642	04-0623	562
564	DOC-2024-0641	04-0622	563
565	DOC-2024-0640	04-0621	564
566	DOC-2024-0639	04-0620	565
567	DOC-2024-0638	04-0619	566
568	DOC-2024-0637	04-0618	567
569	DOC-2024-0636	04-0617	568
570	DOC-2024-0635	04-0616	569
571	DOC-2024-0634	04-0615	570
572	DOC-2024-0633	04-0614	571
573	DOC-2024-0679	04-0660	572
574	DOC-2024-0678	04-0659	573
575	DOC-2024-0677	04-0658	574
576	DOC-2024-0676	04-0657	575
577	DOC-2024-0675	04-0656	576
578	DOC-2024-0674	04-0655	577
579	DOC-2024-0673	04-0654	578
580	DOC-2024-0672	04-0653	579
581	DOC-2024-0671	04-0652	580
582	DOC-2024-0669	04-0650	581
583	DOC-2024-0668	04-0649	582
584	DOC-2024-0667	04-0648	583
585	DOC-2024-0666	04-0647	584
586	DOC-2024-0665	04-0646	585
587	DOC-2024-0664	04-0645	586
588	DOC-2024-0663	04-0654	587
589	DOC-2024-0663	04-0643	588
590	DOC-2024-0662	04-0642	589
591	DOC-2024-0680	04-0661	590
592	DOC-2024-0681	04-0662	591
593	DOC-2024-0682	04-0663	592
594	DOC-2024-0683	04-0664	593
595	DOC-2024-0733	04-0721	594
596	DOC-2024-0732	04-0720	595
597	DOC-2024-0731	04-0718	596
598	DOC-2024-0730	04-0717	597
599	DOC-2024-0729	04-0714	598
600	DOC-2024-0728	04-0713	599
601	DOC-2024-0727	04-0712	600
602	DOC-2024-0726	04-0710	601
603	DOC-2024-0725	04-0709	602
604	DOC-2024-0724	04-0708	603
605	DOC-2024-0723	04-0706	604
606	DOC-2024-0722	04-0705	605
607	DOC-2024-0721	04-0704	606
608	DOC-2024-0720	04-0703	607
609	DOC-2024-0719	04-0702	608
610	DOC-2024-0718	04-0701	609
611	DOC-2024-0717	04-0700	610
612	DOC-2024-0716	04-069	611
613	DOC-2024-0716	04-0699	612
614	DOC-2024-0715	04-0698	613
615	DOC-2024-0714	04-0697	614
616	DOC-2024-0713	04-0696	615
617	DOC-2024-0712	04-0695	616
618	DOC-2024-0711	04-0694	617
619	DOC-2024-0710	04-0693	618
620	DOC-2024-0709	04-0692	619
621	DOC-2024-0708	04-0690	620
622	DOC-2024-0707	04-0689	621
623	DOC-2024-0706	04-0688	622
624	DOC-2024-0705	04-0687	623
625	DOC-2024-0704	04-0686	624
626	DOC-2024-0703	04-0685	625
627	DOC-2024-0702	04-0684	626
628	DOC-2024-0701	04-0683	627
629	DOC-2024-0700	04-0682	628
630	DOC-2024-0699	04-0681	629
631	DOC-2024-0698	04-0680	630
632	DOC-2024-0697	04-0679	631
633	DOC-2024-0696	04-0678	632
634	DOC-2024-0695	04-0677	633
635	DOC-2024-0694	04-0676	634
636	DOC-2024-0693	04-0675	635
637	DOC-2024-0692	04-0674	636
638	DOC-2024-0691	04-0673	637
639	DOC-2024-0690	04-0672	638
640	DOC-2024-0689	04-0671	639
641	DOC-2024-0688	04-0670	640
642	DOC-2024-0687	04-0669	641
643	DOC-2024-0686	04-0668	642
644	DOC-2024-0685	04-0667	643
645	DOC-2024-0684	04-0666	644
646	DOC-2024-0734	04-0755	645
647	DOC-2024-0735	04-0784	646
648	DOC-2024-0409	03-0405	647
649	DOC-2024-0409	03-0404	648
650	DOC-2024-0735		649
651	DOC-2024-0735	04-0784	650
652	DOC-2024-0736	999	651
653	DOC-2024-0736		652
654	DOC-2024-0736	1	653
655	DOC-2024-0736		654
656	DOC-2024-0736	04-0888	655
657	DOC-2024-0736		656
658	\N	\N	657
659	\N	\N	658
660	\N	\N	659
661	\N	\N	660
662	\N	\N	661
663	\N	\N	662
664	\N	\N	663
665	DOC-2024-0737	04-0999	664
666	DOC-2024-0737		665
667	DOC-2024-0737	04-9999	666
668	DOC-2024-0737		667
669	DOC-2024-0737	04-0999	668
670	DOC-2024-0737		669
671	DOC-2024-0738	04-0715	670
672	DOC-2024-0739	04-0722	671
673	DOC-2024-0740	04-0723	672
674	DOC-2024-0741	04-0724	673
675	DOC-2024-0742	04-0725	674
676	DOC-2024-0743	04-0726	675
677	DOC-2024-0744	04-0727	676
678	DOC-2024-0745	04-0728	677
679	DOC-2024-0746	04-0729	678
680	DOC-2024-0747	04-0730	679
681	DOC-2024-0748	04-0731	680
682	DOC-2024-0749	04-0732	681
683	DOC-2024-0750	04-0733	682
684	DOC-2024-0751	04-0734	683
685	DOC-2024-0752	04-0735	684
686	DOC-2024-0753	04-0736	685
687	DOC-2024-0754	04-0737	686
688	DOC-2024-0755	04-0738	687
689	DOC-2024-0756	04-0739	688
690	DOC-2024-0757	04-0740	689
691	DOC-2024-0758	04-0741	690
692	DOC-2024-0759	04-0742	691
693	DOC-2024-0760	04-0743	692
694	DOC-2024-0761	04-0744	693
695	DOC-2024-0762	04-0745	694
696	DOC-2024-0763	04-0746	695
697	DOC-2024-0764	04-0747	696
698	DOC-2024-0765	04-0748	697
699	DOC-2024-0766	04-0749	698
700	DOC-2024-0767	04-0750	699
701	DOC-2024-0768	04-0751	700
702	DOC-2024-0769	04-0752	701
703	DOC-2024-0770	04-0753	702
704	DOC-2024-0771	04-0754	703
705	DOC-2024-0772	04-0755	704
706	DOC-2024-0773	04-0756	705
707	DOC-2024-0774	04-0757	706
708	DOC-2024-0775	04-0758	707
709	DOC-2024-0776	04-0759	708
710	DOC-2024-0777	04-0760	709
711	DOC-2024-0778	04-0761	710
712	DOC-2024-0779	04-0762	711
713	DOC-2024-0780	04-0763	712
714	DOC-2024-0781	04-0764	713
715	DOC-2024-0782	04-0765	714
716	DOC-2024-0783	04-0767	715
717	DOC-2024-0784	04-0768	716
718	DOC-2024-0785	04-0769	717
719	DOC-2024-0786	04-0770	718
720	DOC-2024-0787	04-0771	719
721	DOC-2024-0788	04-0772	720
722	DOC-2024-0789	04-0766	721
723	DOC-2024-0790	04-0773	722
724	DOC-2024-0791	04-0774	723
725	DOC-2024-0792	04-0775	724
726	DOC-2024-0793	04-0776	725
727	DOC-2024-0794	04-0777	726
728	DOC-2024-0795	04-0779	727
729	DOC-2024-0795	04-0778	728
730	DOC-2024-0796	04-0780	729
731	DOC-2024-0797	04-0781	730
732	DOC-2024-0798	04-0783	731
733	DOC-2024-0799	04-0779	732
734	DOC-2024-0800	04-0787	733
735	DOC-2024-0801	04-0789	734
736	DOC-2024-0802	04-0790	735
737	DOC-2024-0803	04-0792	736
738	DOC-2024-0804	04-0793	737
739	DOC-2024-0805	04-0794	738
740	DOC-2024-0806	04-0795	739
741	DOC-2024-0807	04-0796	740
742	DOC-2024-0808	04-0797	741
743	DOC-2024-0809	04-0798	742
744	DOC-2024-0810	04-0799	743
745	DOC-2024-0811	04-0800	744
746	DOC-2024-0812	04-0801	745
747	DOC-2024-0813	04-0802	746
748	DOC-2024-0814	04-0803	747
749	DOC-2024-0815	04-0804	748
750	DOC-2024-0816	04-0805	749
751	DOC-2024-0817	04-0806	750
752	DOC-2024-0818	04-0807	751
753	DOC-2024-0819	04-0809	752
754	DOC-2024-0820	04-0810	753
755	DOC-2024-0821	04-0811	754
756	DOC-2024-0822	04-0812	755
757	DOC-2024-0823	04-0813	756
758	DOC-2024-0824	04-0814	757
759	DOC-2024-0825	04-0815	758
760	DOC-2024-0826	04-0816	759
761	DOC-2024-0827	04-0818	760
762	DOC-2024-0828	04-0819	761
763	DOC-2024-0829	04-0820	762
764	DOC-2024-0830	04-0821	763
765	DOC-2024-0840	04-0835	764
766	DOC-2024-0839	04-0834	765
767	DOC-2024-0838	04-0833	766
768	DOC-2024-0837	04-0832	767
769	DOC-2024-0836	04-0829	768
770	DOC-2024-0835	04-0828	769
771	DOC-2024-0834	04-0826	770
772	DOC-2024-0833	04-0825	771
773	DOC-2024-0832	04-0824	772
774	DOC-2024-0831	04-0822	773
775	DOC-2024-0841	04-0836	774
776	DOC-2024-0842	04-0837	775
777	DOC-2024-0843	04-838	776
778	DOC-2024-0844	04-839	777
779	DOC-2024-0845	04-0840	778
780	DOC-2024-0846	04-0841	779
781	DOC-2024-0847	04-0842	780
782	DOC-2024-0848	04-0843	781
783	DOC-2024-0849	04-0845	782
784	DOC-2024-0850	04-0846	783
785	DOC-2024-0851	04-0847	784
786	DOC-2024-0852	04-0848	785
787	DOC-2024-0853	04-0849	786
788	DOC-2024-0854	04-0851	787
789	DOC-2024-0855	04-0852	788
790	DOC-2024-0856	04-0853	789
791	DOC-2024-0857	04-0854	790
792	DOC-2024-0858	04-0855	791
793	DOC-2024-0859	04-0856	792
794	DOC-2024-0860	04-0857	793
795	DOC-2024-0861	04-0858	794
796	DOC-2024-0862	04-0859	795
797	DOC-2024-0863	04-0860	796
798	DOC-2024-0864	04-0861	797
799	DOC-2024-0865	04-0862	798
800	DOC-2024-0866	04-0863	799
801	DOC-2024-0876	04-0877	800
802	DOC-2024-0875	04-0876	801
803	DOC-2024-0874	04-0875	802
804	DOC-2024-0873	04-0874	803
805	DOC-2024-0872	04-0873	804
806	DOC-2024-0871	04-0872	805
807	DOC-2024-0870	04-0871	806
808	DOC-2024-0869	04-0870	807
809	DOC-2024-0868	04-0869	808
810	DOC-2024-0867	04-0865	809
811	DOC-2024-0877	04-0866	810
812	DOC-2024-0878	04-0867	811
813	DOC-2024-0879	04-0868	812
814	DOC-2024-0843	04-0838	813
815	DOC-2024-0844	04-0839	814
816	DOC-2024-0880	04-0878	815
817	DOC-2024-0881	04-0879	816
818	DOC-2024-0882	04-0880	817
819	DOC-2024-0883	04-0881	818
820	DOC-2024-0884	04-0882	819
821	DOC-2024-0885	04-0883	820
822	DOC-2024-0886	04-0884	821
823	DOC-2024-0887	04-0885	822
824	DOC-2024-0888	04-0888	823
825	DOC-2024-0889	04-0890	824
826	DOC-2024-0890	04-0891	825
827	DOC-2024-0891	04-0892	826
828	DOC-2024-0892	04-0893	827
829	DOC-2024-0893	04-0894	828
830	DOC-2024-0894	04-0895	829
831	DOC-2024-0895	04-0896	830
832	DOC-2024-0894	04-0896	831
833	DOC-2024-0895	04-0897	832
834	DOC-2024-0896	04-0898	833
835	DOC-2024-0897	04-0899	834
836	DOC-2024-0898	04-0900	835
837	DOC-2024-0899	04-0903	836
838	DOC-2024-0900	04-0904	837
839	DOC-2024-0901	04-0905	838
840	DOC-2024-0902	04-0906	839
841	DOC-2024-0903	04-0907	840
842	DOC-2024-0904	04-0909	841
843	DOC-2024-0905	04-0910	842
844	DOC-2024-0906	04-0911	843
845	DOC-2024-0907	04-0912	844
846	DOC-2024-0908	04-0913	845
847	DOC-2024-0909	04-0914	846
848	DOC-2024-0910	04-0919	847
849	DOC-2024-0911	04-0612	848
850	DOC-2024-0912	04-0651	849
851	DOC-2024-0913	04-0665	850
852	DOC-2024-0914	04-0716	851
853	DOC-2024-0800	04-0785	852
854	DOC-2024-0662	04-0643	853
855	DOC-2024-0663	04-0644	854
856	DOC-2024-0692		855
857	DOC-2024-0915	04-0674	856
858	DOC-2024-0916	04-0707	857
859	DOC-2024-0917	04-0786	858
860	DOC-2024-0801	04-0787	859
861	DOC-2024-0918	04-0788	860
862	DOC-2024-0919	04-0789	861
863	DOC-2024-0920	04-0791	862
864	DOC-2024-0921	04-0808	863
865	DOC-2024-0922	04-0823	864
866	DOC-2024-0923	04-0831	865
867	DOC-2024-0924	04-0844	866
868	DOC-2024-0925	04-0864	867
869	DOC-2024-0926	04-0895	868
870	DOC-2024-0852		869
871	DOC-2024-0852	04-0848	870
872	DOC-2024-0927	04-0901	871
873	DOC-2024-0928	04-0908	872
874	DOC-2024-0930	04-0932	873
875	DOC-2024-0929	04-0928	874
876	DOC-2024-0940	04-0942	875
877	DOC-2024-0939	04-0941	876
878	DOC-2024-0938	04-0940	877
879	DOC-2024-0937	04-0939	878
880	DOC-2024-0936	04-0938	879
881	DOC-2024-0935	04-0937	880
882	DOC-2024-0934	04-0936	881
883	DOC-2024-0931	04-0933	882
884	DOC-2024-0932	04-0934	883
885	DOC-2024-0933	04-0935	884
886	DOC-2024-0941	04-0929	885
887	DOC-2024-0942	04-0930	886
888	DOC-2024-0943	04-0931	887
889	DOC-2024-0944	04-0920	888
890	DOC-2024-0945	04-0921	889
891	DOC-2024-0946	04-0923	890
892	DOC-2024-0947	04-0923	891
893	DOC-2024-0948	04-0924	892
894	DOC-2024-0949	04-0925	893
895	DOC-2024-0950	04-0926	894
896	DOC-2024-0951	04-0927	895
897	DOC-2024-0946	04-0922	896
898	DOC-2024-0952	04-0915	897
899	DOC-2024-0953	04-0916	898
900	DOC-2024-0954	04-0917	899
901	DOC-2024-0955	04-0918	900
902	DOC-2024-0899	04-0902	901
903	DOC-2024-0956	04-0903	902
904	DOC-2024-0957	04-0889	903
905	DOC-2024-0958	04-0886	904
906	DOC-2024-0959	04-0887	905
907	DOC-2024-0960	04-0850	906
908	DOC-2024-0961	04-0827	907
909	DOC-2024-0962	04-0817	908
910	DOC-2024-0963	04-0782	909
911	DOC-2024-0964	04-0719	910
912	DOC-2024-0965	04-0711	911
913	DOC-2024-0966	04-0691	912
914	DOC-2024-0967	04-0830	913
915	DOC-2024-0968	05-0943	914
916	DOC-2024-0969	05-0944	915
917	DOC-2024-0970	05-0947	916
918	DOC-2024-0971	05-0948	917
919	DOC-2024-0972	05-0951	918
920	DOC-2024-0973	05-0952	919
921	DOC-2024-0974	05-0953	920
922	DOC-2024-1009	05-1003	921
923	DOC-2024-1008	05-0998	922
924	DOC-2024-1007	05-0997	923
925	DOC-2024-1006	05-0996	924
926	DOC-2024-1005	05-0993	925
927	DOC-2024-1004	05-0991	926
928	DOC-2024-1003	05-0990	927
929	DOC-2024-1002	05-0989	928
930	DOC-2024-1001	05-0988	929
931	DOC-2024-1000	05-0987	930
932	DOC-2024-0999	05-0986	931
933	DOC-2024-0995	05-0982	932
934	DOC-2024-0996	05-0983	933
935	DOC-2024-0997	05-0984	934
936	DOC-2024-0998	05-0985	935
937	DOC-2024-0994	05-0980	936
938	DOC-2024-0990	05-0976	937
939	DOC-2024-0991	05-0977	938
940	DOC-2024-0992	05-0978	939
941	DOC-2024-0993	05-0979	940
942	DOC-2024-0989	05-0972	941
943	DOC-2024-0988	05-0971	942
944	DOC-2024-0987	05-0970	943
945	DOC-2024-0986	05-0968	944
946	DOC-2024-0985	05-0967	945
947	DOC-2024-0984	05-0966	946
948	DOC-2024-0983	05-0963	947
949	DOC-2024-0982	05-0961	948
950	DOC-2024-0981	05-0960	949
951	DOC-2024-0980	05-0959	950
952	DOC-2024-0979	05-0958	951
953	DOC-2024-0978	05-0957	952
954	DOC-2024-0977	05-0956	953
955	DOC-2024-0976	05-0955	954
956	DOC-2024-0975	05-0954	955
957	DOC-2024-1010	05-0962	956
958	DOC-2024-1011	05-0965	957
959	DOC-2024-1012	05-0969	958
960	DOC-2024-1013	05-0973	959
961	DOC-2024-1014	05-0975	960
962	DOC-2024-1015	05-0974	961
963	DOC-2024-1016	05-0981	962
964	DOC-2024-1017	05-0992	963
965	DOC-2024-1018	05-0993	964
966	DOC-2024-1018		965
967	DOC-2024-1019	05-0999	966
968	DOC-2024-1020	05-1000	967
969	DOC-2024-1021	05-1001	968
970	DOC-2024-1022	05-1002	969
971	DOC-2024-1023	04-9999	970
972	DOC-2024-1023		971
973	DOC-2024-1023	04-9999	972
974	DOC-2024-1023		973
975	DOC-2024-1025	05-0945	974
976	DOC-2024-1026	05-0946	975
977	DOC-2024-1027	05-0949	976
978	DOC-2024-1028	05-0950	977
979	DOC-2024-1029	05-0964	978
980	DOC-2024-1030	05-0995	979
981	DOC-2024-1031	05-0996	980
982	DOC-2024-1032	05-0994	981
983	DOC-2024-1033	05-1004	982
984	DOC-2024-1034	05-1005	983
985	DOC-2024-1035	05-1006	984
986	DOC-2024-1036	05-1007	985
987	DOC-2024-1037	05-1008	986
988	DOC-2024-1038	05-1009	987
989	DOC-2024-1039	05-1010	988
990	DOC-2024-1040	05-1011	989
991	DOC-2024-1041	05-1012	990
992	DOC-2024-1042	05-1013	991
993	DOC-2024-1043	05-1014	992
994	DOC-2024-1044	05-1015	993
995	DOC-2024-1045	05-1016	994
996	DOC-2024-1046	05-1017	995
997	DOC-2024-1047	05-1018	996
998	DOC-2024-1048	05-1019	997
999	DOC-2024-1049	05-1020	998
1000	DOC-2024-1051	05-1021	999
1001	DOC-2024-1052	05-1022	1000
1002	DOC-2024-1053	05-1023	1001
1003	DOC-2024-1054	05-1024	1002
1004	DOC-2024-1055	05-1025	1003
1005	DOC-2024-1056	05-1026	1004
1006	DOC-2024-1057	05-1027	1005
1007	DOC-2024-1058	05-1028	1006
1008	DOC-2024-1059	05-1029	1007
1009	DOC-2024-1060	05-1030	1008
1010	DOC-2024-1061	05-1032	1009
1011	DOC-2024-1062	05-1033	1010
1012	DOC-2024-1063	05-1034	1011
1013	DOC-2024-1064	05-1035	1012
1014	DOC-2024-1065	05-1036	1013
1015	DOC-2024-1066	05-1037	1014
1016	DOC-2024-1067	05-1038	1015
1017	DOC-2024-1068	05-1039	1016
1018	DOC-2024-1069	05-1040	1017
1019	DOC-2024-1070	05-1041	1018
1020	DOC-2024-1071	05-1042	1019
1021	DOC-2024-1072	05-1043	1020
1022	DOC-2024-1073	05-1044	1021
1023	DOC-2024-1074	05-1045	1022
1024	DOC-2024-1075	05-1046	1023
1025	DOC-2024-1076	05-1047	1024
1026	DOC-2024-1077	05-1048	1025
1027	DOC-2024-1078	05-1049	1026
1028	DOC-2024-1079	05-1050	1027
1029	DOC-2024-1080	05-1051	1028
1030	DOC-2024-1081	05-1052	1029
1031	DOC-2024-1082	05-1053	1030
1032	DOC-2024-1090	05-1061	1031
1033	DOC-2024-1089	05-1060	1032
1034	DOC-2024-1088	05-1059	1033
1035	DOC-2024-1087	05-1058	1034
1036	DOC-2024-1086	05-1057	1035
1037	DOC-2024-1085	05-1056	1036
1038	DOC-2024-1084	05-1055	1037
1039	DOC-2024-1083	05-1054	1038
1040	DOC-2024-1091	05-1062	1039
1041	DOC-2024-1092	05-1063	1040
1042	DOC-2024-1093	05-1064	1041
1043	DOC-2024-1094	05-1065	1042
1044	DOC-2024-1095	05-1066	1043
1045	DOC-2024-1096	05-1067	1044
1046	DOC-2024-1097	05-1068	1045
1047	DOC-2024-1098	05-1069	1046
1048	DOC-2024-1099	05-1070	1047
1049	DOC-2024-1100	05-1071	1048
1050	DOC-2024-1117	05-1088	1049
1051	DOC-2024-1116	05-1087	1050
1052	DOC-2024-1115	05-1086	1051
1053	DOC-2024-1114	05-1085	1052
1054	DOC-2024-1113	05-1084	1053
1055	DOC-2024-1112	05-1083	1054
1056	DOC-2024-1111	05-1082	1055
1057	DOC-2024-1110	05-1081	1056
1058	DOC-2024-1109	05-1080	1057
1059	DOC-2024-1108	05-1079	1058
1060	DOC-2024-1107	05-1078	1059
1061	DOC-2024-1106	05-1077	1060
1062	DOC-2024-1105	05-1076	1061
1063	DOC-2024-1104	05-1075	1062
1064	DOC-2024-1103	05-1074	1063
1065	DOC-2024-1102	05-1073	1064
1066	DOC-2024-1101	05-1072	1065
1067	DOC-2024-1138	05-1110	1066
1068	DOC-2024-1137	05-1109	1067
1069	DOC-2024-1136	05-1108	1068
1070	DOC-2024-1135	05-1107	1069
1071	DOC-2024-1134	05-1106	1070
1072	DOC-2024-1133	05-1105	1071
1073	DOC-2024-1132	05-1104	1072
1074	DOC-2024-1131	05-1103	1073
1075	DOC-2024-1130	05-1102	1074
1076	DOC-2024-1129	05-1101	1075
1077	DOC-2024-1128	05-1100	1076
1078	DOC-2024-1127	05-1099	1077
1079	DOC-2024-1126	05-1098	1078
1080	DOC-2024-1125	05-1097	1079
1081	DOC-2024-1124	05-1096	1080
1082	DOC-2024-1123	05-1095	1081
1083	DOC-2024-1122	05-1094	1082
1084	DOC-2024-1121	05-1093	1083
1085	DOC-2024-1120	05-1092	1084
1086	DOC-2024-1119	05-1091	1085
1087	DOC-2024-1118	05-1090	1086
1088	DOC-2024-1167	05-1139	1087
1089	DOC-2024-1166	05-1138	1088
1090	DOC-2024-1165	05-1137	1089
1091	DOC-2024-1164	05-1136	1090
1092	DOC-2024-1163	05-1135	1091
1093	DOC-2024-1162	05-1134	1092
1094	DOC-2024-1161	05-1133	1093
1095	DOC-2024-1160	05-1132	1094
1096	DOC-2024-1159	05-1131	1095
1097	DOC-2024-1158	05-1130	1096
1098	DOC-2024-1157	05-1129	1097
1099	DOC-2024-1156	05-1128	1098
1100	DOC-2024-1155	05-1127	1099
1101	DOC-2024-1154	05-1126	1100
1102	DOC-2024-1153	05-1125	1101
1103	DOC-2024-1152	05-1124	1102
1104	DOC-2024-1151	05-1123	1103
1105	DOC-2024-1150	05-1122	1104
1106	DOC-2024-1149	05-1121	1105
1107	DOC-2024-1148	05-1120	1106
1108	DOC-2024-1147	05-1119	1107
1109	DOC-2024-1146	05-1118	1108
1110	DOC-2024-1145	05-1117	1109
1111	DOC-2024-1144	05-1116	1110
1112	DOC-2024-1143	05-1115	1111
1113	DOC-2024-1142	05-1114	1112
1114	DOC-2024-1141	05-1113	1113
1115	DOC-2024-1140	05-1112	1114
1116	DOC-2024-1139	05-1111	1115
1117	DOC-2024-1201	05-1176	1116
1118	DOC-2024-1200	05-1175	1117
1119	DOC-2024-1199	05-1174	1118
1120	DOC-2024-1198	05-1173	1119
1121	DOC-2024-1197	72	1120
1122	DOC-2024-1197	05-1172	1121
1123	DOC-2024-1196	05-1171	1122
1124	DOC-2024-1195	05-1170	1123
1125	DOC-2024-1194	05-1169	1124
1126	DOC-2024-1193	05-1168	1125
1127	DOC-2024-1192	05-1167	1126
1128	DOC-2024-1191	05-1166	1127
1129	DOC-2024-1190	05-1165	1128
1130	DOC-2024-1189	05-1164	1129
1131	DOC-2024-1188	05-1163	1130
1132	DOC-2024-1187	05-1162	1131
1133	DOC-2024-1186	05-1161	1132
1134	DOC-2024-1185	05-1160	1133
1135	DOC-2024-1184	05-1159	1134
1136	DOC-2024-1183	05-1158	1135
1137	DOC-2024-1182	05-1157	1136
1138	DOC-2024-1181	05-1156	1137
1139	DOC-2024-1180	05-1152	1138
1140	DOC-2024-1179	05-1151	1139
1141	DOC-2024-1178	05-1150	1140
1142	DOC-2024-1177	05-1149	1141
1143	DOC-2024-1176	05-1148	1142
1144	DOC-2024-1175	05-1147	1143
1145	DOC-2024-1174	05-1146	1144
1146	DOC-2024-1173	05-1145	1145
1147	DOC-2024-1172	05-1144	1146
1148	DOC-2024-1171	05-1144	1147
1149	DOC-2024-1171	05-1143	1148
1150	DOC-2024-1170	05-1142	1149
1151	DOC-2024-1169	05-1141	1150
1152	DOC-2024-1168	05-1140	1151
1153	DOC-2024-1220	05-1195	1152
1154	DOC-2024-1219	05-1194	1153
1155	DOC-2024-1218	05-1193	1154
1156	DOC-2024-1217	05-1192	1155
1157	DOC-2024-1216	05-1191	1156
1158	DOC-2024-1215	05-1190	1157
1159	DOC-2024-1214	05-1189	1158
1160	DOC-2024-1213	05-1188	1159
1161	DOC-2024-1212	05-1187	1160
1162	DOC-2024-1211	05-1186	1161
1163	DOC-2024-1210	05-1185	1162
1164	DOC-2024-1209	05-1184	1163
1165	DOC-2024-1208	05-1183	1164
1166	DOC-2024-1207	05-1182	1165
1167	DOC-2024-1206	05-1181	1166
1168	DOC-2024-1205	05-1180	1167
1169	DOC-2024-1204	05-1179	1168
1170	DOC-2024-1203	05-1178	1169
1171	DOC-2024-1202	05-1177	1170
1172	DOC-2024-1244	05-1219	1171
1173	DOC-2024-1243	05-1218	1172
1174	DOC-2024-1242	05-1217	1173
1175	DOC-2024-1241	05-1216	1174
1176	DOC-2024-1240	05-1215	1175
1177	DOC-2024-1239	05-1214	1176
1178	DOC-2024-1238	05-1213	1177
1179	DOC-2024-1237	05-1212	1178
1180	DOC-2024-1236	05-1211	1179
1181	DOC-2024-1235	05-1210	1180
1182	DOC-2024-1234	05-1209	1181
1183	DOC-2024-1233	05-1208	1182
1184	DOC-2024-1232	05-1207	1183
1185	DOC-2024-1231	05-1206	1184
1186	DOC-2024-1230	02-1205	1185
1187	DOC-2024-1229	05-1204	1186
1188	DOC-2024-1228	05-1203	1187
1189	DOC-2024-1227	05-1202	1188
1190	DOC-2024-1226	05-1201	1189
1191	DOC-2024-1225	05-1200	1190
1192	DOC-2024-1224	05-1199	1191
1193	DOC-2024-1223	05-1198	1192
1194	DOC-2024-1222	05-1197	1193
1195	DOC-2024-1221	05-1196	1194
1196	DOC-2024-1257	05-1243	1195
1197	DOC-2024-1256	05-1242	1196
1198	DOC-2024-1255	05-1236	1197
1199	DOC-2024-1254	05-1235	1198
1200	DOC-2024-1253	05-1234	1199
1201	DOC-2024-1252	05-1230	1200
1202	DOC-2024-1251	05-1227	1201
1203	DOC-2024-1250	05-1226	1202
1204	DOC-2024-1249	05-1225	1203
1205	DOC-2024-1248	05-1223	1204
1206	DOC-2024-1247	05-1222	1205
1207	DOC-2024-1246	05-1221	1206
1208	DOC-2024-1245	05-1220	1207
1209	DOC-2024-1279	05-1265	1208
1210	DOC-2024-1278	05-1264	1209
1211	DOC-2024-1277	05-1263	1210
1212	DOC-2024-1276	05-1262	1211
1213	DOC-2024-1275	05-1261	1212
1214	DOC-2024-1274	05-1260	1213
1215	DOC-2024-1273	05-1259	1214
1216	DOC-2024-1272	05-1258	1215
1217	DOC-2024-1271	05-1257	1216
1218	DOC-2024-1270	05-1256	1217
1219	DOC-2024-1269	05-1255	1218
1220	DOC-2024-1268	05-1254	1219
1221	DOC-2024-1267	05-1253	1220
1222	DOC-2024-1266	05-1252	1221
1223	DOC-2024-1265	05-1251	1222
1224	DOC-2024-1264	05-1250	1223
1225	DOC-2024-1263	05-1249	1224
1226	DOC-2024-1262	05-1252	1225
1227	DOC-2024-1262	05-1248	1226
1228	DOC-2024-1261	05-1247	1227
1229	DOC-2024-1260	05-1246	1228
1230	DOC-2024-1259	05-1245	1229
1231	DOC-2024-1258	05-1244	1230
1232	DOC-2024-1280	05-1224	1231
1233	DOC-2024-1281	05-1205	1232
1234	DOC-2024-1284	05-1155	1233
1235	DOC-2024-1283	05-1154	1234
1236	DOC-2024-1282	05-1153	1235
1237	DOC-2024-1285	05-1089	1236
1238	DOC-2024-1286	05-1031	1237
1239	DOC-2024-1287	05-0949	1238
1239	DOC-2024-1287	05-0949	1238
1240	DOC-2024-1288	05-1228	1239
1241	DOC-2024-1289	05-1229	1240
1242	DOC-2024-1290	05-1231	1241
1243	DOC-2024-1291	05-1232	1242
1244	DOC-2024-1292	05-1237	1243
1245	DOC-2024-1293	05-1238	1244
1246	DOC-2024-1294	05-1239	1245
1247	DOC-2024-1295	05-1240	1246
1248	DOC-2024-1296	05-1241	1247
1249	DOC-2024-1297	05-1233	1248
1250	DOC-2024-1298	05-1174	1249
1251	DOC-2024-1299	05-1045	1250
1252	DOC-2024-1353	06-1320	1251
1253	DOC-2024-1352	06-1319	1252
1254	DOC-2024-1351	06-1318	1253
1255	DOC-2024-1350	06-1317	1254
1256	DOC-2024-1349	06-1316	1255
1257	DOC-2024-1348	06-1315	1256
1258	DOC-2024-1347	06-1314	1257
1259	DOC-2024-1346	06-1313	1258
1260	DOC-2024-1345	06-1312	1259
1261	DOC-2024-1344	06-1311	1260
1262	DOC-2024-1343	06-1310	1261
1263	DOC-2024-1342	06-1309	1262
1264	DOC-2024-1341	06-1308	1263
1265	DOC-2024-1340	06-1307	1264
1266	DOC-2024-1339	06-1306	1265
1267	DOC-2024-1338	06-1305	1266
1268	DOC-2024-1337	06-1304	1267
1269	DOC-2024-1336	06-1303	1268
1270	DOC-2024-1335	06-1302	1269
1271	DOC-2024-1334	06-1301	1270
1272	DOC-2024-1333	06-1300	1271
1273	DOC-2024-1332	06-1299	1272
1274	DOC-2024-1331	06-1298	1273
1275	DOC-2024-1330	06-1297	1274
1276	DOC-2024-1329	06-1296	1275
1277	DOC-2024-1328	06-1295	1276
1278	DOC-2024-1327	06-1294	1277
1279	DOC-2024-1326	06-1293	1278
1280	DOC-2024-1325	06-1292	1279
1281	DOC-2024-1324	06-1291	1280
1282	DOC-2024-1323	06-1290	1281
1283	DOC-2024-1322	06-1289	1282
1284	DOC-2024-1321	06-1288	1283
1285	DOC-2024-1320	06-1287	1284
1286	DOC-2024-1319	06-1286	1285
1287	DOC-2024-1318	06-1285	1286
1288	DOC-2024-1317	06-1284	1287
1289	DOC-2024-1316	06-1283	1288
1290	DOC-2024-1315	06-1282	1289
1291	DOC-2024-1314	06-1281	1290
1292	DOC-2024-1313	06-1280	1291
1293	DOC-2024-1312	06-1279	1292
1294	DOC-2024-1311	06-1278	1293
1295	DOC-2024-1310	06-1276	1294
1296	DOC-2024-1309	06-1275	1295
1297	DOC-2024-1308	06-1285	1296
1298	DOC-2024-1310	06-1277	1297
1299	DOC-2024-1309	06-1276	1298
1300	DOC-2024-1308	06-1275	1299
1301	DOC-2024-1307	06-1274	1300
1302	DOC-2024-1306	06-1272	1301
1303	DOC-2024-1305	06-1271	1302
1304	DOC-2024-1304	06-1270	1303
1305	DOC-2024-1303	06-1269	1304
1306	DOC-2024-1302	06-1268	1305
1307	DOC-2024-1301	06-1267	1306
1308	DOC-2024-1300	06-1266	1307
1309	DOC-2024-1414	06-1382	1308
1310	DOC-2024-1413	06-1381	1309
1311	DOC-2024-1412	06-1380	1310
1312	DOC-2024-1411	06-1379	1311
1313	DOC-2024-1410	06-1378	1312
1314	DOC-2024-1409	06-1377	1313
1315	DOC-2024-1408	06-1376	1314
1316	DOC-2024-1407	06-1375	1315
1317	DOC-2024-1406	06-1374	1316
1318	DOC-2024-1405	06-1373	1317
1319	DOC-2024-1404	06-1372	1318
1320	DOC-2024-1403	06-1371	1319
1321	DOC-2024-1402	06-1370	1320
1322	DOC-2024-1396	06-1364	1321
1323	DOC-2024-1397	06-1365	1322
1324	DOC-2024-1398	06-1366	1323
1325	DOC-2024-1399	06-1367	1324
1326	DOC-2024-1400	06-1368	1325
1327	DOC-2024-1401	06-1369	1326
1328	DOC-2024-1395	06-1362	1327
1329	DOC-2024-1394	06-1361	1328
1330	DOC-2024-1393	06-1360	1329
1331	DOC-2024-1392	06-1359	1330
1332	DOC-2024-1391	06-1358	1331
1333	DOC-2024-1389	06-1357	1332
1334	DOC-2024-1387	06-1356	1333
1335	DOC-2024-1386	06-1355	1334
1336	DOC-2024-1385	06-1353	1335
1337	DOC-2024-1384	06-1352	1336
1338	DOC-2024-1383	06-1351	1337
1339	DOC-2024-1382	06-1350	1338
1340	DOC-2024-1381	06-1349	1339
1341	DOC-2024-1380	06-1348	1340
1342	DOC-2024-1379	06-1347	1341
1343	DOC-2024-1378	06-1346	1342
1344	DOC-2024-1377	06-1345	1343
1345	DOC-2024-1376	06-1344	1344
1346	DOC-2024-1375	06-1343	1345
1347	DOC-2024-1374	06-1343	1346
1348	DOC-2024-1374	06-1342	1347
1349	DOC-2024-1373	06-1341	1348
1350	DOC-2024-1372	06-1340	1349
1351	DOC-2024-1371	06-1339	1350
1352	DOC-2024-1370	06-1337	1351
1353	DOC-2024-1369	06-1336	1352
1354	DOC-2024-1365	06-1332	1353
1355	DOC-2024-1364	06-1330	1354
1356	DOC-2024-1354	06-1321	1355
1357	DOC-2024-1356	06-1322	1356
1358	DOC-2024-1357	06-1323	1357
1359	DOC-2024-1358	06-1324	1358
1360	DOC-2024-1359	06-1325	1359
1361	DOC-2024-1360	06-1326	1360
1362	DOC-2024-1361	06-1327	1361
1363	DOC-2024-1362	06-1328	1362
1364	DOC-2024-1363	29	1363
1365	DOC-2024-1363	06-1329	1364
1366	DOC-2024-1366	06-1333	1365
1367	DOC-2024-1367	06-1334	1366
1368	DOC-2024-1368	06-1335	1367
1369	DOC-2024-1444	06-1422	1368
1370	DOC-2024-1443	06-1421	1369
1371	DOC-2024-1442	06-1419	1370
1372	DOC-2024-1441	06-1418	1371
1373	DOC-2024-1440	06-1417	1372
1374	DOC-2024-1439	06-1416	1373
1375	DOC-2024-1438	06-1415	1374
1376	DOC-2024-1437	06-1414	1375
1377	DOC-2024-1436	06-1413	1376
1378	DOC-2024-1435	06-1412	1377
1379	DOC-2024-1434	06-1411	1378
1380	DOC-2024-1433	06-1410	1379
1381	DOC-2024-1432	06-1409	1380
1382	DOC-2024-1431	06-1408	1381
1383	DOC-2024-1430	06-1407	1382
1384	DOC-2024-1429	06-1406	1383
1385	DOC-2024-1428	06-1404	1384
1386	DOC-2024-1427	06-1402	1385
1387	DOC-2024-1426	06-1400	1386
1388	DOC-2024-1425	06-1398	1387
1389	DOC-2024-1427	06-1400	1388
1390	DOC-2024-1426	06-1398	1389
1391	DOC-2024-1425	06-1394	1390
1392	DOC-2024-1445	06-1402	1391
1393	DOC-2024-1424	06-1392	1392
1394	DOC-2024-1423	06-1391	1393
1395	DOC-2024-1422	06-1390	1394
1396	DOC-2024-1421	06-1389	1395
1397	DOC-2024-1420	06-1388	1396
1398	DOC-2024-1419	06-1387	1397
1399	DOC-2024-1418	06-1386	1398
1400	DOC-2024-1417	06-1385	1399
1401	DOC-2024-1416	06-1384	1400
1402	DOC-2024-1415	06-1383	1401
1403	DOC-2024-1478	06-1460	1402
1404	DOC-2024-1477	06-1459	1403
1405	DOC-2024-1476	06-1458	1404
1406	DOC-2024-1475	06-1456	1405
1407	DOC-2024-1476	06-1457	1406
1408	DOC-2024-1474	06-1455	1407
1409	DOC-2024-1473	06-1454	1408
1410	DOC-2024-1472	06-1453	1409
1411	DOC-2024-1471	06-1452	1410
1412	DOC-2024-1470	06-1451	1411
1413	DOC-2024-1469	06-1450	1412
1414	DOC-2024-1468	06-1449	1413
1415	DOC-2024-1467	06-1448	1414
1416	DOC-2024-1466	06-1447	1415
1417	DOC-2024-1465	06-1445	1416
1418	DOC-2024-1464	06-1444	1417
1419	DOC-2024-1463	06-1443	1418
1420	DOC-2024-1462	06-1442	1419
1421	DOC-2024-1461	06-1440	1420
1422	DOC-2024-1460	06-1439	1421
1423	DOC-2024-1460	06-1439	1422
1424	DOC-2024-1459	06-1438	1423
1425	DOC-2024-1458	06-1437	1424
1426	DOC-2024-1457	06-1436	1425
1427	DOC-2024-1456	06-1435	1426
1428	DOC-2024-1455	06-1434	1427
1429	DOC-2024-1454	06-1433	1428
1430	DOC-2024-1453	06-1432	1429
1431	DOC-2024-1452	06-1431	1430
1432	DOC-2024-1451	06-1430	1431
1433	DOC-2024-1450	06-1429	1432
1434	DOC-2024-1449	06-1428	1433
1435	DOC-2024-1448	06-1427	1434
1436	DOC-2024-1447	06-1425	1435
1437	DOC-2024-1446	06-1424	1436
1438	DOC-2024-1479	06-1399	1437
1439	DOC-2024-1480	06-1401	1438
1440	DOC-2024-1481	06-1331	1439
1441	DOC-2024-1482	06-1393	1440
1442	DOC-2024-1483	06-1461	1441
1443	DOC-2024-1484	06-1462	1442
1444	DOC-2024-1485	06-1463	1443
1445	DOC-2024-1486	06-1464	1444
1446	DOC-2024-1487	06-1465	1445
1447	DOC-2024-1488	06-1466	1446
1448	DOC-2024-1489	06-1470	1447
1449	DOC-2024-1490	06-1471	1448
1450	DOC-2024-1491	06-1472	1449
1451	DOC-2024-1492	06-1473	1450
1452	DOC-2024-1493	06-1474	1451
1453	DOC-2024-1494	06-1475	1452
1454	DOC-2024-1495	06-1476	1453
1455	DOC-2024-1496	06-1477	1454
1456	DOC-2024-1497	06-1478	1455
1457	DOC-2024-1498	06-1479	1456
1458	DOC-2024-1508	06-1492	1457
1459	DOC-2024-1507	06-1491	1458
1460	DOC-2024-1506	06-1487	1459
1461	DOC-2024-1505	06-1486	1460
1462	DOC-2024-1504	06-1485	1461
1463	DOC-2024-1503	06-1484	1462
1464	DOC-2024-1502	06-1483	1463
1465	DOC-2024-1501	06-1482	1464
1466	DOC-2024-1500	06-1481	1465
1467	DOC-2024-1499	06-1480	1466
1468	DOC-2024-1518	06-1502	1467
1469	DOC-2024-1517	06-1501	1468
1470	DOC-2024-1516	06-1500	1469
1471	DOC-2024-1515	06-1499	1470
1472	DOC-2024-1514	06-1498	1471
1473	DOC-2024-1513	06-1497	1472
1474	DOC-2024-1512	06-1496	1473
1475	DOC-2024-1511	06-1495	1474
1476	DOC-2024-1510	06-1494	1475
1477	DOC-2024-1509	06-1493	1476
1478	DOC-2024-1519	06-1503	1477
1479	DOC-2024-1520	06-1504	1478
1480	DOC-2024-1521	06-1505	1479
1481	DOC-2024-1522	06-1506	1480
1482	DOC-2024-1523	06-1507	1481
1483	DOC-2024-1524	06-1508	1482
1484	DOC-2024-1525	06-1509	1483
1485	DOC-2024-1526	06-1510	1484
1486	DOC-2024-1527	06-1511	1485
1487	DOC-2024-1528	06-1512	1486
1488	DOC-2024-1535	06-1520	1487
1489	DOC-2024-1534	06-1519	1488
1490	DOC-2024-1533	06-1518	1489
1491	DOC-2024-1532	06-1517	1490
1492	DOC-2024-1531	06-1516	1491
1493	DOC-2024-1530	06-1514	1492
1494	DOC-2024-1529	06-1513	1493
1495	DOC-2024-1536	06-1515	1494
1496	DOC-2024-1539	06-1488	1495
1497	DOC-2024-1538	06-1489	1496
1498	DOC-2024-1537	06-1490	1497
1499	DOC-2024-1542	06-1469	1498
1500	DOC-2024-1541	06-1468	1499
1501	DOC-2024-1540	06-1467	1500
1502	DOC-2024-1543	06-1458	1501
1503	DOC-2024-1544	06-1446	1502
1504	DOC-2024-1545	06-1441	1503
1505	DOC-2024-1546	06-1426	1504
1506	DOC-2024-1547	06-1423	1505
1507	DOC-2024-1548	06-1420	1506
1508	DOC-2024-1549	06-1405	1507
1509	DOC-2024-1550	06-1403	1508
1510	DOC-2024-1551	06-1397	1509
1511	DOC-2024-1553	06-1396	1510
1512	DOC-2024-1552	06-1395	1511
1513	DOC-2024-1554	06-1363	1512
1514	DOC-2024-1555	06-1354	1513
1515	DOC-2024-1556	06-1338	1514
1516	DOC-2024-1557	06-1273	1515
1517	DOC-2024-1526	06-1510	1516
1518	DOC-2024-1606	07-1580	1517
1519	DOC-2024-1605	07-1579	1518
1520	DOC-2024-1604	07-1578	1519
1521	DOC-2024-1603	07-1577	1520
1522	DOC-2024-1602	07-1576	1521
1523	DOC-2024-1601	07-1574	1522
1524	DOC-2024-1600	07-1573	1523
1525	DOC-2024-1599	07-1572	1524
1526	DOC-2024-1598	07-1569	1525
1527	DOC-2024-1597	07-1568	1526
1528	DOC-2024-1596	07-1567	1527
1529	DOC-2024-1595	07-1566	1528
1530	DOC-2024-1594	07-1560	1529
1531	DOC-2024-1593	07-1559	1530
1532	DOC-2024-1592	07-1558	1531
1533	DOC-2024-1591	07-1557	1532
1534	DOC-2024-1590	07-1556	1533
1535	DOC-2024-1589	07-1555	1534
1536	DOC-2024-1588	07-1554	1535
1537	DOC-2024-1586	07-1553	1536
1538	DOC-2024-1585	07-1551	1537
1539	DOC-2024-1584	07-1550	1538
1540	DOC-2024-1583	07-1549	1539
1541	DOC-2024-1582	07-1548	1540
1542	DOC-2024-1581	07-1547	1541
1543	DOC-2024-1580	07-1546	1542
1544	DOC-2024-1579	07-1545	1543
1545	DOC-2024-1578	07-1544	1544
1546	DOC-2024-1577	07-1543	1545
1547	DOC-2024-1576	07-1542	1546
1548	DOC-2024-1575	07-1541	1547
1549	DOC-2024-1574	07-1539	1548
1550	DOC-2024-1573	07-1538	1549
1551	DOC-2024-1572	07-1537	1550
1552	DOC-2024-1571	07-1536	1551
1553	DOC-2024-1570	07-1535	1552
1554	DOC-2024-1569	07-1534	1553
1555	DOC-2024-1568	07-1533	1554
1556	DOC-2024-1567	07-1532	1555
1557	DOC-2024-1566	07-1531	1556
1558	DOC-2024-1565	07-1530	1557
1559	DOC-2024-1564	07-1529	1558
1560	DOC-2024-1563	07-1526	1559
1561	DOC-2024-1562	07-1525	1560
1562	DOC-2024-1561	07-1524	1561
1563	DOC-2024-1560	07-1523	1562
1564	DOC-2024-1559	07-1522	1563
1565	DOC-2024-1558	07-1521	1564
1566	DOC-2024-1621	07-1598	1565
1567	DOC-2024-1620	07-1597	1566
1568	DOC-2024-1619	07-1596	1567
1569	DOC-2024-1618	07-1595	1568
1570	DOC-2024-1617	07-1594	1569
1571	DOC-2024-1616	07-1593	1570
1572	DOC-2024-1615	07-1592	1571
1573	DOC-2024-1614	07-1591	1572
1574	DOC-2024-1613	07-1590	1573
1575	DOC-2024-1612	07-1589	1574
1576	DOC-2024-1611	07-1587	1575
1577	DOC-2024-1610	07-1585	1576
1578	DOC-2024-1609	07-1584	1577
1579	DOC-2024-1608	07-1582	1578
1580	DOC-2024-1607	07-1581	1579
1581	DOC-2024-1677	07-1655	1580
1582	DOC-2024-1676	07-1654	1581
1583	DOC-2024-1675	07-1653	1582
1584	DOC-2024-1674	07-1652	1583
1585	DOC-2024-1673	07-1651	1584
1586	DOC-2024-1672	07-1650	1585
1587	DOC-2024-1671	07-1649	1586
1588	DOC-2024-1670	07-1648	1587
1589	DOC-2024-1669	07-1647	1588
1590	DOC-2024-1668	07-1646	1589
1591	DOC-2024-1667	07-1641	1590
1592	DOC-2024-1666	07-1640	1591
1593	DOC-2024-1665	07-1639	1592
1594	DOC-2024-1664	07-1638	1593
1595	DOC-2024-1663	07-1637	1594
1596	DOC-2024-1662	07-1634	1595
1597	DOC-2024-1661	07-1633	1596
1598	DOC-2024-1660	07-1632	1597
1599	DOC-2024-1659	07-1630	1598
1600	DOC-2024-1658	07-1629	1599
1601	DOC-2024-1650	07-1621	1600
1602	DOC-2024-1651	07-1622	1601
1603	DOC-2024-1652	07-1623	1602
1604	DOC-2024-1653	07-1624	1603
1605	DOC-2024-1654	07-1625	1604
1606	DOC-2024-1655	07-1626	1605
1607	DOC-2024-1656	07-1627	1606
1608	DOC-2024-1657	07-1628	1607
1609	DOC-2024-1649	07-1619	1608
1610	DOC-2024-1648	07-1618	1609
1611	DOC-2024-1647	07-1616	1610
1612	DOC-2024-1638	07-1602	1611
1613	DOC-2024-1646	07-1615	1612
1614	DOC-2024-1645	07-1614	1613
1615	DOC-2024-1644	07-1613	1614
1616	DOC-2024-1633	07-1602	1615
1617	DOC-2024-1638	07-1607	1616
1618	DOC-2024-1643	07-1612	1617
1619	DOC-2024-1642	07-1611	1618
1620	DOC-2024-1641	07-1610	1619
1621	DOC-2024-1640	07-1609	1620
1622	DOC-2024-1639	07-1608	1621
1623	DOC-2024-1637	07-1606	1622
1624	DOC-2024-1636	07-1605	1623
1625	DOC-2024-1635	07-1604	1624
1626	DOC-2024-1634	07-1603	1625
1627	DOC-2024-1632	07-1600	1626
1628	DOC-2024-1631	07-1599	1627
1629	DOC-2024-1738	07-1739	1628
1630	DOC-2024-1737	07-1738	1629
1631	DOC-2024-1736	07-1737	1630
1632	DOC-2024-1735	07-1736	1631
1633	DOC-2024-1734	07-1734	1632
1634	DOC-2024-1733	07-1720	1633
1635	DOC-2024-1732	07-1719	1634
1636	DOC-2024-1731	07-1717	1635
1637	DOC-2024-1730	07-1716	1636
1638	DOC-2024-1729	07-1715	1637
1639	DOC-2024-1727	07-1709	1638
1640	DOC-2024-1726	07-1708	1639
1641	DOC-2024-1725	07-1707	1640
1642	DOC-2024-1724	07-1706	1641
1643	DOC-2024-1723	07-1705	1642
1644	DOC-2024-1722	07-1704	1643
1645	DOC-2024-1706	07-1688	1644
1646	DOC-2024-1721	07-1703	1645
1647	DOC-2024-1720	07-1702	1646
1648	DOC-2024-1719	07-1701	1647
1649	DOC-2024-1718	07-1700	1648
1650	DOC-2024-1717	07-1699	1649
1651	DOC-2024-1716	07-1698	1650
1652	DOC-2024-1715	07-1697	1651
1653	DOC-2024-1714	07-1696	1652
1654	DOC-2024-1713	07-1695	1653
1655	DOC-2024-1712	07-1694	1654
1656	DOC-2024-1711	07-1693	1655
1657	DOC-2024-1710	07-1692	1656
1658	DOC-2024-1709	07-1691	1657
1659	DOC-2024-1708	07-1690	1658
1660	DOC-2024-1707	07-1689	1659
1661	DOC-2024-1705	07-1686	1660
1662	DOC-2024-1687	07-1668	1661
1663	DOC-2024-1704	07-1685	1662
1664	DOC-2024-1703	07-1684	1663
1665	DOC-2024-1702	07-1683	1664
1666	DOC-2024-1701	07-1682	1665
1667	DOC-2024-1700	07-1681	1666
1668	DOC-2024-1699	07-1680	1667
1669	DOC-2024-1698	07-1679	1668
1670	DOC-2024-1697	07-1678	1669
1671	DOC-2024-1696	07-1677	1670
1672	DOC-2024-1695	07-1676	1671
1673	DOC-2024-1694	07-1675	1672
1674	DOC-2024-1693	07-1674	1673
1675	DOC-2024-1692	07-1673	1674
1676	DOC-2024-1691	07-1672	1675
1677	DOC-2024-1690	07-1671	1676
1678	DOC-2024-1689	07-1670	1677
1678	DOC-2024-1689	07-1670	1677
1679	DOC-2024-1688	07-1669	1678
1680	DOC-2024-1686	07-1666	1679
1681	DOC-2024-1685	07-1664	1680
1682	DOC-2024-1684	07-1663	1681
1683	DOC-2024-1683	07-1662	1682
1684	DOC-2024-1682	07-1661	1683
1685	DOC-2024-1681	07-1660	1684
1686	DOC-2024-1680	07-1659	1685
1687	DOC-2024-1679	07-1658	1686
1688	DOC-2024-1678	07-1657	1687
1689	DOC-2024-1740	07-1527	1688
1690	DOC-2024-1741	08-1528	1689
1691	DOC-2024-1741	07-1528	1690
1692	DOC-2024-1742	07-1540	1691
1693	DOC-2024-1743	07-1552	1692
1694	DOC-2024-1748	07-1565	1693
1695	DOC-2024-1747	07-1564	1694
1696	DOC-2024-1746	07-1563	1695
1697	DOC-2024-1745	07-1562	1696
1698	DOC-2024-1744	07-1561	1697
1699	DOC-2024-1749	07-1570	1698
1700	DOC-2024-1750	07-1571	1699
1701	DOC-2024-1751	07-1575	1700
1702	DOC-2024-1752	07-1583	1701
1703	DOC-2024-1753	07-1586	1702
1704	DOC-2024-1754	07-1588	1703
1705	DOC-2024-1755	07-1601	1704
1706	DOC-2024-1756	07-1617	1705
1707	DOC-2024-1757	07-1620	1706
1708	DOC-2024-1758	07-1631	1707
1709	DOC-2024-1759	07-1635	1708
1710	DOC-2024-1760	07-1636	1709
1711	DOC-2024-1761	07-1642	1710
1712	DOC-2024-1762	07-1643	1711
1713	DOC-2024-1763	07-1644	1712
1714	DOC-2024-1764	07-1645	1713
1715	DOC-2024-1765	07-1656	1714
1716	DOC-2024-1767	07-1667	1715
1717	DOC-2024-1766	07-1665	1716
1718	DOC-2024-1768	07-1687	1717
1719	DOC-2024-1769	07-1710	1718
1720	DOC-2024-1770	07-1711	1719
1721	DOC-2024-1771	07-1712	1720
1722	DOC-2024-1772	07-1713	1721
1723	DOC-2024-1773	07-1714	1722
1724	DOC-2024-1774	07-1718	1723
1725	DOC-2024-1775	07-1721	1724
1726	DOC-2024-1776	07-1722	1725
1727	DOC-2024-1777	07-1723	1726
1728	DOC-2024-1778	07-1724	1727
1729	DOC-2024-1779	07-1725	1728
1730	DOC-2024-1780	07-1726	1729
1731	DOC-2024-1781	07-1727	1730
1732	DOC-2024-1782	07-1728	1731
1733	DOC-2024-1783	07-1729	1732
1734	DOC-2024-1786	07-1730	1733
1735	DOC-2024-1784	07-1731	1734
1736	DOC-2024-1787	07-1732	1735
1737	DOC-2024-1785	07-1733	1736
1738	DOC-2024-1789	07-1734	1737
1739	DOC-2024-1788	07-1735	1738
1740	DOC-2024-1734		1739
1741	DOC-2024-1819	07-1770	1740
1742	DOC-2024-1818	07-1769	1741
1743	DOC-2024-1817	07-1768	1742
1744	DOC-2024-1816	07-1767	1743
1745	DOC-2024-1815	07-1766	1744
1746	DOC-2024-1814	07-1765	1745
1747	DOC-2024-1813	07-1764	1746
1748	DOC-2024-1812	07-1763	1747
1749	DOC-2024-1811	07-1762	1748
1750	DOC-2024-1810	07-1761	1749
1751	DOC-2024-1809	07-1760	1750
1752	DOC-2024-1808	07-1759	1751
1753	DOC-2024-1807	07-1758	1752
1754	DOC-2024-1806	07-1757	1753
1755	DOC-2024-1805	07-1756	1754
1756	DOC-2024-1804	07-1755	1755
1757	DOC-2024-1803	07-1754	1756
1758	DOC-2024-1802	07-1753	1757
1759	DOC-2024-1801	07-1752	1758
1760	DOC-2024-1800	07-1751	1759
1761	DOC-2024-1799	07-1749	1760
1762	DOC-2024-1798	07-1748	1761
1763	DOC-2024-1797	07-1747	1762
1764	DOC-2024-1796	07-1746	1763
1765	DOC-2024-1795	07-1745	1764
1766	DOC-2024-1794	07-1744	1765
1767	DOC-2024-1793	07-1743	1766
1768	DOC-2024-1792	07-1742	1767
1769	DOC-2024-1791	07-1741	1768
1770	DOC-2024-1790	07-1740	1769
1771	DOC-2024-1820	07-1750	1770
1772	DOC-2024-1830	07-1780	1771
1773	DOC-2024-1829	07-1779	1772
1774	DOC-2024-1828	07-1778	1773
1775	DOC-2024-1827	07-1777	1774
1776	DOC-2024-1826	07-1776	1775
1777	DOC-2024-1825	07-1775	1776
1778	DOC-2024-1824	07-1774	1777
1779	DOC-2024-1823	07-1773	1778
1780	DOC-2024-1822	07-1772	1779
1781	DOC-2024-1821	07-1771	1780
1782	DOC-2024-1840	07-1789	1781
1783	DOC-2024-1839	07-1790	1782
1784	DOC-2024-1838	07-1788	1783
1785	DOC-2024-1837	07-1787	1784
1786	DOC-2024-1836	07-1786	1785
1787	DOC-2024-1835	07-1785	1786
1788	DOC-2024-1834	07-1784	1787
1789	DOC-2024-1833	07-1783	1788
1790	DOC-2024-1832	07-1782	1789
1791	DOC-2024-1831	07-1781	1790
1792	DOC-2024-1851	07-1800	1791
1793	DOC-2024-1850	07-1799	1792
1794	DOC-2024-1849	07-1798	1793
1795	DOC-2024-1842	07-1791	1794
1796	DOC-2024-1843	07-1792	1795
1797	DOC-2024-1844	07-1793	1796
1798	DOC-2024-1845	07-1794	1797
1799	DOC-2024-1846	07-1795	1798
1800	DOC-2024-1847	07-1796	1799
1801	DOC-2024-1848	07-1797	1800
1802	DOC-2024-1852	07-1801	1801
1803	DOC-2024-1853	07-1802	1802
1804	DOC-2024-1854	07-1803	1803
1805	DOC-2024-1855	07-1804	1804
1806	DOC-2024-1856	07-1805	1805
1807	DOC-2024-1857	07-1806	1806
1808	DOC-2024-1858	07-1807	1807
1809	DOC-2024-1859	07-1808	1808
1810	DOC-2024-1860	07-1809	1809
1811	DOC-2024-1861	07-1810	1810
1812	DOC-2024-1874	07-1823	1811
1813	DOC-2024-1873	07-1822	1812
1814	DOC-2024-1872	07-1821	1813
1815	DOC-2024-1871	07-1820	1814
1816	DOC-2024-1870	07-1819	1815
1817	DOC-2024-1869	07-1818	1816
1818	DOC-2024-1868	07-1817	1817
1819	DOC-2024-1867	07-1816	1818
1820	DOC-2024-1866	07-1815	1819
1821	DOC-2024-1865	07-1814	1820
1822	DOC-2024-1864	07-1813	1821
1823	DOC-2024-1863	07-1812	1822
1824	DOC-2024-1862	07-1811	1823
1825	DOC-2024-1900	08-1850	1824
1826	DOC-2024-1899	08-1849	1825
1827	DOC-2024-1898	08-1848	1826
1828	DOC-2024-1897	08-1847	1827
1829	DOC-2024-1896	08-1846	1828
1830	DOC-2024-1895	08-1845	1829
1831	DOC-2024-1894	08-1844	1830
1832	DOC-2024-1893	08-1843	1831
1833	DOC-2024-1892	08-1842	1832
1834	DOC-2024-1891	08-1840	1833
1835	DOC-2024-1890	08-1839	1834
1836	DOC-2024-1889	08-1838	1835
1837	DOC-2024-1888	08-1837	1836
1838	DOC-2024-1887	08-1836	1837
1839	DOC-2024-1886	08-1835	1838
1840	DOC-2024-1885	08-1834	1839
1841	DOC-2024-1884	08-1833	1840
1842	DOC-2024-1883	08-1832	1841
1843	DOC-2024-1882	08-1831	1842
1844	DOC-2024-1881	08-1830	1843
1845	DOC-2024-1880	08-1829	1844
1846	DOC-2024-1879	08-1828	1845
1847	DOC-2024-1878	08-1827	1846
1848	DOC-2024-1877	08-1826	1847
1849	DOC-2024-1876	08-1825	1848
1850	DOC-2024-1875	08-1824	1849
1851	DOC-2024-1908	08-1860	1850
1852	DOC-2024-1907	08-1859	1851
1853	DOC-2024-1906	08-1856	1852
1854	DOC-2024-1905	08-1855	1853
1855	DOC-2024-1904	08-1854	1854
1856	DOC-2024-1903	08-1853	1855
1857	DOC-2024-1902	08-1852	1856
1858	DOC-2024-1901	08-1851	1857
1859	DOC-2024-1918	08-1870	1858
1860	DOC-2024-1917	08-1869	1859
1861	DOC-2024-1916	08-1868	1860
1862	DOC-2024-1915	08-1867	1861
1863	DOC-2024-1914	08-1868	1862
1864	DOC-2024-1913	08-1865	1863
1865	DOC-2024-1914	08-1866	1864
1866	DOC-2024-1912	08-1864	1865
1867	DOC-2024-1911	08-1863	1866
1868	DOC-2024-1910	08-1862	1867
1869	DOC-2024-1909	08-1861	1868
1870	DOC-2024-1928	08-1880	1869
1871	DOC-2024-1927	08-1878	1870
1872	DOC-2024-1926	08-1879	1871
1873	DOC-2024-1925	08-1877	1872
1874	DOC-2024-1924	08-1876	1873
1875	DOC-2024-1923	08-1875	1874
1876	DOC-2024-1922	08-1874	1875
1877	DOC-2024-1921	08-1873	1876
1878	DOC-2024-1920	08-1872	1877
1879	DOC-2024-1919	08-1881	1878
1880	DOC-2024-1938	08-1890	1879
1881	DOC-2024-1937	08-1889	1880
1882	DOC-2024-1936	08-1888	1881
1883	DOC-2024-1935	08-1887	1882
1884	DOC-2024-1934	08-1886	1883
1885	DOC-2024-1933	08-1885	1884
1886	DOC-2024-1932	08-1884	1885
1887	DOC-2024-1931	08-1883	1886
1888	DOC-2024-1930	08-1882	1887
1889	DOC-2024-1929	08-1881	1888
1890	DOC-2024-1947	08-1900	1889
1891	DOC-2024-1939	08-1891	1890
1892	DOC-2024-1940	08-1892	1891
1893	DOC-2024-1941	08-1893	1892
1894	DOC-2024-1942	08-1895	1893
1895	DOC-2024-1943	08-1896	1894
1896	DOC-2024-1944	08-1897	1895
1897	DOC-2024-1945	08-1898	1896
1898	DOC-2024-1946	08-1899	1897
\.


--
-- TOC entry 4985 (class 0 OID 24614)
-- Dependencies: 219
-- Data for Name: orstbl2023; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orstbl2023 (ors_id, ors_random, ors_number, payeeid, prj_id, prj_title, lib_id, amount, particulars, uacs, mfopap, createdby, isapproved, ors_numset, datecreated, dateapproved, details, division, address, tin, isactive, tax2, tax5, responcenter, iscontinuing, tax1, tax10) FROM stdin;
805	DOC-2024-0462	03-0451	1185	\N	\N	\N	600665		50202020-00	2A1-101	122	1	462	2024-03-15 03:51:21	2024-03-15 03:52:25		FAD			1	0	0	FAD	0	0	0
1242	DOC-2024-0793	04-0776	3483	\N	\N	\N	11790000		50202020-00	2A1-101	122	1	793	2024-04-29 05:01:41	2024-04-29 05:12:23		FAD			1	0	0	FAD	0	0	0
733	DOC-2024-0411	03-0406	3483	\N	\N	\N	107598.75		50101010-01	1A1	999	1	411	2024-03-11 08:09:29	2024-03-15 03:47:40		FAD			1	0	0	FAD	0	0	0
752	DOC-2024-0422	03-0410	3486	\N	\N	\N	36203.06		50203090-00	1A1	122	1	422	2024-03-15 03:04:30	2024-03-15 03:46:57		FAD			1	0	0	FAD	0	0	0
1024	DOC-2024-0619	03-0562	2730	\N	\N	\N	43119.24		50202020-00	2A1-104	122	1	619	2024-04-05 10:43:42	2024-04-05 10:43:52		FAD			1	0	0	FAD	0	0	0
930	DOC-2024-0549	03-0552	3489	\N	\N	\N	31817		50201010-00	2A1-2	122	1	549	2024-04-01 04:47:09	2024-04-01 07:44:35		FAD			1	0	0	FAD	0	0	0
1021	DOC-2024-0617	03-0539	2752	\N	\N	\N	477.50		50202010-02	2A2B-101	122	1	617	2024-04-05 10:19:06	2024-04-05 10:20:57		FAD			1	0	0	FAD	0	0	0
754	DOC-2024-0423	03-0411	3102	\N	\N	\N	30000		50202020-00	2A1-AC (FAD)	122	1	423	2024-03-15 03:05:49	2024-03-15 03:46:48		FAD			1	0	0	FAD	0	0	0
755	DOC-2024-0423	03-0411	3102	\N	\N	\N	3900		50202020-00	2A1-AC (HR)	122	1	423	2024-03-15 03:05:49	2024-03-15 03:46:48		FAD			1	0	0	FAD	0	0	0
759	DOC-2024-0427	03-0415	3312	\N	\N	\N	15347		50202020-00	2A1-AC	122	1	427	2024-03-15 03:15:53	2024-03-15 03:46:19		FAD			1	0	0	FAD	0	0	0
773	DOC-2024-0435	03-0423	3494	\N	\N	\N	53797.58		50202020-00	2A1-AC (NULAB)	122	1	435	2024-03-15 03:22:53	2024-03-15 03:45:14		FAD			1	0	0	FAD	0	0	0
777	DOC-2024-0439	03-0427	3038	\N	\N	\N	29850		50202020-00	2A1-AC (FAD)	122	1	439	2024-03-15 03:27:05	2024-03-15 03:43:47		FAD			1	0	0	FAD	0	0	0
787	DOC-2024-0449	03-0438	3483	\N	\N	\N	17100		50202020-00	2A1-AC (POSTER)	122	1	449	2024-03-15 03:33:02	2024-03-15 03:42:08		FAD			1	0	0	FAD	0	0	0
790	DOC-2024-0452	03-0441	2725	\N	\N	\N	15000		50202020-00	2A1-AC (HR)	122	1	452	2024-03-15 03:34:25	2024-03-15 03:41:39		FAD			1	0	0	FAD	0	0	0
791	DOC-2024-0453	03-0442	3483	\N	\N	\N	2350287.85		50202020-00	2A1-AC (HR)	122	1	453	2024-03-15 03:35:08	2024-03-15 03:41:24		FAD			1	0	0	FAD	0	0	0
798	DOC-2024-0455	03-0444	2726	\N	\N	\N	30000		50202020-00	2A1-AC (HR)	122	1	455	2024-03-15 03:37:18	2024-03-15 03:41:11		FAD			1	0	0	FAD	0	0	0
855	DOC-2024-0487	03-0483	2928	\N	\N	\N	18500		50202020-00	2A1-AC	122	1	487	2024-04-01 03:41:19	2024-04-01 05:17:50		FAD			1	0	0	FAD	0	0	0
856	DOC-2024-0488	03-0484	3313	\N	\N	\N	26000		50202020-00	2A1-AC	122	1	488	2024-04-01 03:41:38	2024-04-01 05:18:01		FAD			1	0	0	FAD	0	0	0
1217	DOC-2024-0770	04-0753	2709	\N	\N	\N	2000		50205020-01	1A1	122	1	770	2024-04-29 04:43:08	2024-04-29 04:45:23		FAD			1	0	0	FAD	0	0	0
1043	DOC-2024-0631	04-0611	3483	\N	\N	\N	5160000		50202020-00	2A1-101	122	1	631	2024-04-17 02:38:57	2024-04-17 03:28:54		FAD			1	0	0	FAD	0	0	0
1087	DOC-2024-0654	04-0635	2734	\N	\N	\N	6019		50202020-00	2A1-104	122	1	654	2024-04-17 03:04:36	2024-04-17 03:32:24		FAD			1	0	0	FAD	0	0	0
1298	DOC-2024-0842	04-0837	1200	\N	\N	\N	30517345.8		50202020-00	2A1-103	122	1	842	2024-04-29 08:06:27	2024-04-29 08:09:20		FAD			1	0	0	FAD	0	0	0
1155	DOC-2024-0716	04-0699	3518	\N	\N	\N	10375		50202020-00	2A1-AC (GAD)	999	1	716	2024-04-17 04:18:52	2024-04-17 04:33:22		FAD			1	0	0	FAD	0	0	0
1122	DOC-2024-0688	04-0670	1380	\N	\N	\N	13500		50211990-00	PD 997	122	1	688	2024-04-17 04:05:09	2024-04-17 04:40:31		FAD			1	0	0	FAD	0	0	0
1038	DOC-2024-0628	\N	2704	\N	\N	\N	25000	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta velit maximus metus pharetra bibendum. Ut iaculis ipsum ac turpis lacinia, non egestas enim facilisis. Donec feugiat ligula sit amet efficitur faucibus. Morbi faucibus porta dui, et pulvinar enim aliquam nec. Ut eu orci velit. Cras tellus tellus, cursus id semper in, scelerisque eu augue.	50202020-00	2A1-101 (Patriot)	999	0	628	2024-04-15 04:07:06	\N		FAD			0	0	0	FAD	0	0	0
1190	DOC-2024-0743	04-0726	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	743	2024-04-29 04:26:17	2024-04-29 04:27:25		FAD			1	0	0	FAD	0	0	0
1323	DOC-2024-0866	04-0863	3494	\N	\N	\N	25931.08		50215030-00	1A1	122	1	866	2024-04-29 09:37:02	2024-04-29 09:38:14		FAD			1	0	0	FAD	0	0	0
186	DOC-2024-0066	01-0066	1027	\N	\N	\N	5259809.29		50202020-00	2A1-104	999	1	66	2024-02-02 03:44:06	2024-02-07 04:18:44		FAD			1	0	0	FAD	0	0	0
295	DOC-2024-0130	01-0130	1027	\N	\N	\N	8979866		50202020-00	2A1-101	999	1	130	2024-02-06 09:10:09	\N		FAD			1	0	0	FAD	0	0	0
624	DOC-2024-0351	02-0351	1067	\N	\N	\N	728237.67		50202020-00	2A1-103	999	1	351	2024-03-04 06:05:32	2024-03-04 07:39:47		FAD			1	0	0	FAD	0	0	0
1362	DOC-2024-0892	04-0893	1196	\N	\N	\N	17407500		50202020-00	2A1-101	122	1	892	2024-04-29 10:52:35	2024-04-29 10:56:29		FAD			1	0	0	FAD	0	0	0
865	DOC-2024-0493	03-0489	3483	\N	\N	\N	2689585.47		50202020-00	2A1-AC (HR)	122	1	493	2024-04-01 03:46:16	2024-04-01 05:18:44		FAD			1	0	0	FAD	0	0	0
869	DOC-2024-0496	03-0492	3483	\N	\N	\N	11000		50202020-00	2A1-AC	122	1	496	2024-04-01 03:47:35	2024-04-01 05:19:03		FAD			1	0	0	FAD	0	0	0
893	DOC-2024-0519	03-0515	3518	\N	\N	\N	2750		50202020-00	2A1-AC	122	1	519	2024-04-01 04:04:09	2024-04-01 05:21:52		FAD			1	0	0	FAD	0	0	0
904	DOC-2024-0530	03-0529	3319	\N	\N	\N	609314.68		50202020-00	2A1-AC	122	1	530	2024-04-01 04:35:09	2024-04-01 07:40:33		FAD			1	0	0	FAD	0	0	0
1363	DOC-2024-0892	04-0893	1196	\N	\N	\N	214500		50202020-00	2A1-101 (RA10612)	122	1	892	2024-04-29 10:52:35	2024-04-29 10:56:29		FAD			1	0	0	FAD	0	0	0
1364	DOC-2024-0892	04-0893	1196	\N	\N	\N	30756000		50202020-00	2A1-102	122	1	892	2024-04-29 10:52:35	2024-04-29 10:56:29		FAD			1	0	0	FAD	0	0	0
1411	DOC-2024-0920	04-0791	3575	\N	\N	\N	24000		50202020-00	2A1-AC	999	1	920	2024-04-30 04:17:36	2024-04-30 04:17:51		FAD			1	0	0	FAD	0	0	0
1444	DOC-2024-0942	04-0930	3578	\N	\N	\N	7500		50202020-00	2A1-AC	999	1	942	2024-05-02 04:00:54	2024-05-02 04:01:35		FAD			1	0	0	FAD	0	0	0
1272	DOC-2024-0820	04-0810	3483	\N	\N	\N	145962.22		50202020-00	2A1-101	999	1	820	2024-04-29 07:28:18	2024-04-29 07:30:06		FAD			1	0	0	FAD	0	0	0
1365	DOC-2024-0893	04-0894	2720	\N	\N	\N	478		50202010-02	2A2A-103	122	1	893	2024-04-29 10:52:55	2024-04-29 10:56:38		FAD			1	0	0	FAD	0	0	0
1000	DOC-2024-0598	03-0518	3508	\N	\N	\N	7202		50203010-02	1A1	122	1	598	2024-04-05 08:14:32	2024-04-05 08:14:43		FAD			1	0	0	FAD	0	0	0
1023	DOC-2024-0618	03-0551	2726	\N	\N	\N	889		50202020-00	2A1-AC	122	1	618	2024-04-05 10:19:52	2024-04-05 10:20:43		FAD			1	0	0	FAD	0	0	0
1033	DOC-2024-0626	\N	2704	\N	\N	\N	50000		50202020-00	1A1	122	0	626	2024-04-11 08:50:59	\N		FAD			1	0	0	FAD	0	0	0
1039	DOC-2024-0629	\N	3538	\N	\N	\N	500		10605021-00	2A1-2	999	0	629	2024-04-15 04:07:45	\N		FAD			0	0	0	FAD	0	0	0
1044	DOC-2024-0632	04-0613	3539	\N	\N	\N	54000		50202020-00	2A1-104	999	1	632	2024-04-17 02:40:23	2024-04-17 03:29:40		FAD			1	0	0	FAD	0	0	0
1084	DOC-2024-0652	04-0633	1091	\N	\N	\N	472357.5		50202020-00	2A1-101	122	1	652	2024-04-17 03:03:48	2024-04-17 03:32:49		FAD			1	0	0	FAD	0	0	0
1085	DOC-2024-0652	04-0633	1091	\N	\N	\N	271660		50202020-00	2A1-102	122	1	652	2024-04-17 03:03:48	2024-04-17 03:32:49		FAD			1	0	0	FAD	0	0	0
1156	DOC-2024-0717	04-0700	3555	\N	\N	\N	3798750		50202010-02	2A2A-101	999	1	717	2024-04-17 04:19:35	2024-04-17 04:33:07		FAD			1	0	0	FAD	0	0	0
1123	DOC-2024-0689	04-0671	2677	\N	\N	\N	595		50299030-00	PD 997	122	1	689	2024-04-17 04:06:03	2024-04-17 04:40:16		FAD			1	0	0	FAD	0	0	0
1124	DOC-2024-0689	04-0671	2677	\N	\N	\N	453.25		50203010-02	PD 997	122	1	689	2024-04-17 04:06:03	2024-04-17 04:40:16		FAD			1	0	0	FAD	0	0	0
1191	DOC-2024-0744	04-0727	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	744	2024-04-29 04:26:36	2024-04-29 04:27:34		FAD			1	0	0	FAD	0	0	0
1218	DOC-2024-0771	04-0754	1631	\N	\N	\N	68816		50202020-00	2A1-104	122	1	771	2024-04-29 04:43:37	2024-04-29 04:45:31		FAD			1	0	0	FAD	0	0	0
1243	DOC-2024-0794	04-0777	3560	\N	\N	\N	54000		50202020-00	2A1-103	122	1	794	2024-04-29 05:02:31	2024-04-29 05:12:34		FAD			1	0	0	FAD	0	0	0
1262	DOC-2024-0812	04-0801	3564	\N	\N	\N	5100		50202020-00	2A1-AC	122	1	812	2024-04-29 07:23:48	2024-04-29 07:28:34		FAD			1	0	0	FAD	0	0	0
189	DOC-2024-0069	01-0069	3137	\N	\N	\N	2075.36		50202020-00	2A1-101	999	1	69	2024-02-02 03:45:44	2024-02-07 04:19:01		FAD			1	0	0	FAD	0	0	0
1324	DOC-2024-0867	04-0865	3486	\N	\N	\N	37737.67		50203090-00	2A1-1	122	1	867	2024-04-29 09:39:38	2024-04-29 09:47:30		FAD			1	0	0	FAD	0	0	0
1299	DOC-2024-0843	04-0838	1059	\N	\N	\N	37101326		50202020-00	2A1-103	122	1	843	2024-04-29 08:06:50	2024-04-29 10:24:19		FAD			1	0	0	FAD	0	0	0
1356	DOC-2024-0890	04-0891	1027	\N	\N	\N	10840500		50202020-00	2A1-101	122	1	890	2024-04-29 10:50:34	2024-04-29 10:51:41		FAD			1	0	0	FAD	0	0	0
1357	DOC-2024-0890	04-0891	1027	\N	\N	\N	73000		50202020-00	2A1-101 (RA10612)	122	1	890	2024-04-29 10:50:34	2024-04-29 10:51:41		FAD			1	0	0	FAD	0	0	0
1520	DOC-2024-0980	05-0959	1165	\N	\N	\N	20000	a	50202020-00	2A1-101	122	1	980	2024-05-08 04:30:07	2024-05-08 04:50:31		FAD			1	0	0	FAD	0	0	0
191	DOC-2024-0071	01-0071	1033	\N	\N	\N	42786994		50202020-00	2A1-101	999	1	71	2024-02-02 03:47:47	2024-02-07 04:19:12		FAD			1	0	0	FAD	0	0	0
203	DOC-2024-0081	01-0081	3483	\N	\N	\N	4444000		50202020-00	2A1-101	999	1	81	2024-02-02 03:55:44	2024-02-07 04:20:01		FAD			1	0	0	FAD	0	0	0
204	DOC-2024-0082	01-0082	2034	\N	\N	\N	15761.07		50202020-00	2A1-101	999	1	82	2024-02-02 03:56:10	2024-02-07 05:03:10		FAD			1	0	0	FAD	0	0	0
205	DOC-2024-0084	01-0084	1034	\N	\N	\N	19272128		50202020-00	2A1-101	999	1	84	2024-02-02 03:57:11	2024-02-07 05:05:25		FAD			1	0	0	FAD	0	0	0
608	DOC-2024-0337	02-0337	3483	\N	\N	\N	7200		50202020-00	2A2B-105	999	1	337	2024-03-04 03:56:41	2024-03-04 07:42:33		FAD			1	0	0	FAD	0	0	0
661	DOC-2024-0371	02-0370	3516	\N	\N	\N	10000		50202020-00	2A1-104	999	1	371	2024-03-04 06:48:25	2024-03-04 07:37:50		FAD			1	0	0	FAD	0	0	0
609	DOC-2024-0338	02-0338	2756	\N	\N	\N	4650		50202020-00	2A1-104	999	1	338	2024-03-04 03:57:07	2024-03-04 07:41:59		FAD			1	0	0	FAD	0	0	0
594	DOC-2024-0324	02-0324	635	\N	\N	\N	144309.81		50202020-00	2A1-104	999	1	324	2024-03-04 03:49:21	2024-03-04 07:43:40		FAD			1	0	0	FAD	0	0	0
1412	DOC-2024-0921	04-0808	1189	\N	\N	\N	95024		50202020-00	2A1-106	122	1	921	2024-04-30 04:19:23	2024-04-30 04:19:32		FAD			1	0	0	FAD	0	0	0
1445	DOC-2024-0943	04-0931	2928	\N	\N	\N	30500		50202020-00	2A1-AC	999	1	943	2024-05-02 04:01:10	2024-05-02 04:02:00		FAD			1	0	0	FAD	0	0	0
1473	DOC-2024-0965	04-0711	3483	\N	\N	\N	6900		50102050-02	2A1-1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1474	DOC-2024-0965	04-0711	3483	\N	\N	\N	1886.36		50102060-03	2A1-1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1475	DOC-2024-0965	04-0711	3483	\N	\N	\N	22967.15		50102120-01	2A1-2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1476	DOC-2024-0965	04-0711	3483	\N	\N	\N	50819.3		50102110-01	2A1-2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1477	DOC-2024-0965	04-0711	3483	\N	\N	\N	15000		50102050-02	2A1-2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1358	DOC-2024-0890	04-0891	1027	\N	\N	\N	23433000		50202020-00	2A1-102	122	1	890	2024-04-29 10:50:34	2024-04-29 10:51:41		FAD			1	0	0	FAD	0	0	0
1125	DOC-2024-0689	04-0671	2677	\N	\N	\N	601		50205020-01	PD 997	122	1	689	2024-04-17 04:06:03	2024-04-17 04:40:16		FAD			1	0	0	FAD	0	0	0
1671	DOC-2024-1108	05-1079	1206	\N	\N	\N	11986000	i	50202020-00	2A1-105	999	1	1108	2024-05-27 09:45:22	2024-05-27 09:50:32		FAD			1	0	0	FAD	0	0	0
1573	DOC-2024-1026	05-0946	2740	\N	\N	\N	500000	u	50202020-00	2A1-AC (NULAB)	122	1	1026	2024-05-24 05:03:44	2024-05-24 05:04:16		FAD			1	0	0	FAD	0	0	0
1568	DOC-2024-1021	05-1001	1091	\N	\N	\N	1122000		50202020-00	2A1-102	122	1	1021	2024-05-13 08:37:03	2024-05-13 08:38:38		FAD			1	0	0	FAD	0	0	0
1567	DOC-2024-1021	05-1001	1091	\N	\N	\N	20000	e	50202020-00	2A1-101 (RA10612)	122	1	1021	2024-05-13 08:37:03	2024-05-13 08:38:38		FAD			1	0	0	FAD	0	0	0
1625	DOC-2024-1068	05-1039	3495	\N	\N	\N	171501.91	e	50202020-00	2A1-104	999	1	1068	2024-05-27 08:16:02	2024-05-27 08:18:09		FAD			1	0	0	FAD	0	0	0
1598	DOC-2024-1047	05-1018	2725	\N	\N	\N	15000	p	50202020-00	2A1-AC (HR)	122	1	1047	2024-05-24 05:20:08	2024-05-24 05:21:58		FAD			1	0	0	FAD	0	0	0
1651	DOC-2024-1088	05-1059	2127	\N	\N	\N	6215.38		50202010-02	2A2B-105	122	1	1088	2024-05-27 08:32:45	2024-05-27 09:33:17		FAD			1	0	0	FAD	0	0	0
1034	DOC-2024-0627	\N	2704	\N	\N	\N	10000	payment 1	50202020-00	1A1	999	0	627	2024-04-12 04:27:01	\N	payment for whatever 	FAD			1	0	0	FAD	\N	\N	\N
1035	DOC-2024-0627	\N	2704	\N	\N	\N	20000	payment 2	50101010-01	2A1-1	999	0	627	2024-04-12 04:27:01	\N	payment for whatever 	FAD			1	0	0	FAD	\N	\N	\N
1036	DOC-2024-0627	\N	2704	\N	\N	\N	30000	payment 3	50203090-00	2A1-2	999	0	627	2024-04-12 04:27:01	\N	payment for whatever 	FAD			1	0	0	FAD	\N	\N	\N
1037	DOC-2024-0627	\N	2704	\N	\N	\N	40000	payment 4	50202010-01	2A2	999	0	627	2024-04-12 04:27:01	\N	payment for whatever 	FAD			1	0	0	FAD	\N	\N	\N
195	DOC-2024-0074	01-0074	1121	\N	\N	\N	7172071.74		50202020-00	2A1-104	999	1	74	2024-02-02 03:50:24	2024-02-07 04:19:27		FAD			1	0	0	FAD	0	0	0
1081	DOC-2024-0650	04-0631	1103	\N	\N	\N	116691.15		50202020-00	2A1-104	122	1	650	2024-04-17 03:02:36	2024-04-17 03:33:28		FAD			1	0	0	FAD	0	0	0
1045	DOC-2024-0633	04-0614	1103	\N	\N	\N	5053.47		50202020-00	2A1-104	999	1	633	2024-04-17 02:40:49	2024-04-17 03:38:15		FAD			1	0	0	FAD	0	0	0
1157	DOC-2024-0718	04-0701	3483	\N	\N	\N	11550		50202010-02	2A2B-101	999	1	718	2024-04-17 04:20:02	2024-04-17 04:32:56		FAD			1	0	0	FAD	0	0	0
1126	DOC-2024-0690	04-0672	3508	\N	\N	\N	39000		50202020-00	2A1-101	122	1	690	2024-04-17 04:06:23	2024-04-17 04:40:06		FAD			1	0	0	FAD	0	0	0
1192	DOC-2024-0745	04-0728	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	745	2024-04-29 04:26:59	2024-04-29 04:27:45		FAD			1	0	0	FAD	0	0	0
1209	DOC-2024-0762	04-0745	3137	\N	\N	\N	109018.47		50202020-00	2A1-101	122	1	762	2024-04-29 04:39:49	2024-04-29 04:43:49		FAD			1	0	0	FAD	0	0	0
1244	DOC-2024-0795	04-0778	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	795	2024-04-29 05:10:29	2024-04-29 05:12:50		FAD			1	0	0	FAD	0	0	0
1263	DOC-2024-0813	04-0802	3483	\N	\N	\N	4434000		50202020-00	2A1-101	122	1	813	2024-04-29 07:24:14	2024-04-29 07:28:43		FAD			1	0	0	FAD	0	0	0
1325	DOC-2024-0868	04-0869	1354	\N	\N	\N	18646.15		50202020-00	2A1-101	122	1	868	2024-04-29 09:39:58	2024-04-29 09:47:20		FAD			1	0	0	FAD	0	0	0
1300	DOC-2024-0844	04-0839	1184	\N	\N	\N	21025200		50202020-00	2A1-103	122	1	844	2024-04-29 08:08:04	2024-04-29 10:24:40		FAD			1	0	0	FAD	0	0	0
1001	DOC-2024-0599	03-0610A	3535	\N	\N	\N	51719.85		50102990-14	1A1	122	1	599	2024-04-05 08:51:32	2024-04-05 08:51:46		FAD			1	0	0	FAD	0	0	0
1359	DOC-2024-0891	04-0892	1179	\N	\N	\N	9058500		50202020-00	2A1-101	122	1	891	2024-04-29 10:51:22	2024-04-29 10:51:50		FAD			1	0	0	FAD	0	0	0
1360	DOC-2024-0891	04-0892	1179	\N	\N	\N	313500		50202020-00	2A1-101 (RA10612)	122	1	891	2024-04-29 10:51:22	2024-04-29 10:51:50		FAD			1	0	0	FAD	0	0	0
1361	DOC-2024-0891	04-0892	1179	\N	\N	\N	1947000		50202020-00	2A1-102	122	1	891	2024-04-29 10:51:22	2024-04-29 10:51:50		FAD			1	0	0	FAD	0	0	0
1414	DOC-2024-0922	04-0823	2702	\N	\N	\N	727.27		50102010-01	2A1-2	122	1	922	2024-04-30 04:21:21	2024-04-30 04:21:30		FAD			1	0	0	FAD	0	0	0
1366	DOC-2024-0894	04-0896	3483	\N	\N	\N	496174.12		50202020-00	2A1-101	122	1	894	2024-04-29 10:53:37	2024-04-29 10:57:16		FAD			1	0	0	FAD	0	0	0
1367	DOC-2024-0894	04-0896	3483	\N	\N	\N	40000		50202020-00	2A1-101 (RA10612)	122	1	894	2024-04-29 10:53:37	2024-04-29 10:57:16		FAD			1	0	0	FAD	0	0	0
1368	DOC-2024-0894	04-0896	3483	\N	\N	\N	568076.31		50202020-00	2A1-102	122	1	894	2024-04-29 10:53:37	2024-04-29 10:57:16		FAD			1	0	0	FAD	0	0	0
1413	DOC-2024-0922	04-0823	2702	\N	\N	\N	14616		50101010-01	2A1-2	122	1	922	2024-04-30 04:21:21	2024-04-30 04:21:30		FAD			1	0	0	FAD	0	0	0
1446	DOC-2024-0944	04-0920	3483	\N	\N	\N	27092000		50202020-00	2A1-101	122	1	944	2024-05-02 04:04:16	2024-05-02 04:07:39		FAD			1	0	0	FAD	0	0	0
1467	DOC-2024-0965	04-0711	3483	\N	\N	\N	51452.55		50102120-01	1A1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1468	DOC-2024-0965	04-0711	3483	\N	\N	\N	119111.65		50102110-01	1A1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1469	DOC-2024-0965	04-0711	3483	\N	\N	\N	38550		50102050-02	1A1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
208	DOC-2024-0085	01-0085	1034	\N	\N	\N	1567000		50202020-00	2A1-101	999	1	85	2024-02-02 04:00:29	2024-02-07 05:05:30		FAD			1	0	0	FAD	0	0	0
43	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	1	0	\N	\N	\N	\N	\N	\N	0	0	0	\N	0	0	0
1470	DOC-2024-0965	04-0711	3483	\N	\N	\N	8863.65		50102060-03	1A1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1471	DOC-2024-0965	04-0711	3483	\N	\N	\N	10572.15		50102120-01	2A1-1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1472	DOC-2024-0965	04-0711	3483	\N	\N	\N	19669.88		50102110-01	2A1-1	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1478	DOC-2024-0965	04-0711	3483	\N	\N	\N	4159.09		50102060-03	2A1-2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1479	DOC-2024-0965	04-0711	3483	\N	\N	\N	62601.7		50102120-01	2A2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1480	DOC-2024-0965	04-0711	3483	\N	\N	\N	119992.72		50102110-01	2A2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1481	DOC-2024-0965	04-0711	3483	\N	\N	\N	35550		50102050-02	2A2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1482	DOC-2024-0965	04-0711	3483	\N	\N	\N	9727.27		50102060-03	2A2	122	1	965	2024-05-02 04:32:41	2024-05-02 04:33:02		FAD			1	0	0	FAD	0	0	0
1569	DOC-2024-1022	05-1002	3585	\N	\N	\N	95500	d	50202020-00	2A1-104	122	1	1022	2024-05-13 08:37:59	2024-05-13 08:38:46		FAD			1	0	0	FAD	0	0	0
1706	DOC-2024-1128	05-1100	157	\N	\N	\N	7428.15	f	50202020-00	2A1-104	122	1	1128	2024-05-27 10:06:00	2024-05-27 10:11:47		FAD			1	0	0	FAD	0	0	0
1522	DOC-2024-0981	05-0960	1131	\N	\N	\N	60000		50202020-00	2A1-102	122	1	981	2024-05-08 04:30:46	2024-05-08 04:50:13		FAD			1	0	0	FAD	0	0	0
1672	DOC-2024-1109	05-1080	1122	\N	\N	\N	1770000	i	50202020-00	2A1-105	999	1	1109	2024-05-27 09:45:40	2024-05-27 09:50:23		FAD			1	0	0	FAD	0	0	0
1521	DOC-2024-0981	05-0960	1131	\N	\N	\N	80000	a	50202020-00	2A1-101	122	1	981	2024-05-08 04:30:46	2024-05-08 04:50:13		FAD			1	0	0	FAD	0	0	0
1599	DOC-2024-1048	05-1019	2857	\N	\N	\N	73325		50202010-02	2A2B-101	122	1	1048	2024-05-24 05:20:35	2024-05-24 05:22:05		FAD			1	0	0	FAD	0	0	0
1626	DOC-2024-1069	05-1040	3483	\N	\N	\N	5784500		50202020-00	2A1-102	999	1	1069	2024-05-27 08:16:22	2024-05-27 08:18:32		FAD			1	0	0	FAD	0	0	0
1652	DOC-2024-1089	05-1060	1655	\N	\N	\N	6215.38		50202010-02	2A2B-105	122	1	1089	2024-05-27 08:33:59	2024-05-27 09:33:08		FAD			1	0	0	FAD	0	0	0
1046	DOC-2024-0634	04-0615	56	\N	\N	\N	33148.70		50202020-00	2A1-AC	122	1	634	2024-04-17 02:41:26	2024-04-17 03:38:04		FAD			1	0	0	FAD	0	0	0
1158	DOC-2024-0719	04-0702	1137	\N	\N	\N	32000		50202020-00	2A1-AC (HR)	999	1	719	2024-04-17 04:20:25	2024-04-17 04:32:47		FAD			1	0	0	FAD	0	0	0
1127	DOC-2024-0691	04-0673	1449	\N	\N	\N	24999		50202020-00	2A1-101 (Patriot)	122	1	691	2024-04-17 04:06:45	2024-04-17 04:39:56		FAD			1	0	0	FAD	0	0	0
1040	DOC-2024-0630	\N	2704	\N	\N	\N	5000	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta velit maximus metus pharetra bibendum. Ut iaculis ipsum ac turpis lacinia, non egestas enim facilisis. Donec feugiat ligula sit amet efficitur faucibus. Morbi faucibus porta dui, et pulvinar enim aliquam nec. Ut eu orci velit. Cras tellus tellus, cursus id semper in, scelerisque eu augue.	10605021-00	2A1-1	122	0	630	2024-04-15 09:05:35	\N		FAD			0	0	0	FAD	0	0	0
1041	DOC-2024-0630	\N	2704	\N	\N	\N	5000		10605020-00	2A1-101 (RA10612)	122	0	630	2024-04-15 09:05:35	\N		FAD			0	0	0	FAD	0	0	0
1042	DOC-2024-0630	\N	2704	\N	\N	\N	20000		10605020-00	2A1-101 (Patriot)	122	0	630	2024-04-15 09:05:35	\N		FAD			0	0	0	FAD	0	0	0
1193	DOC-2024-0746	04-0729	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	746	2024-04-29 04:28:16	2024-04-29 04:30:13		FAD			1	0	0	FAD	0	0	0
1210	DOC-2024-0763	04-0746	3137	\N	\N	\N	99384.88		50202020-00	2A1-101	122	1	763	2024-04-29 04:40:12	2024-04-29 04:43:58		FAD			1	0	0	FAD	0	0	0
1245	DOC-2024-0796	04-0780	3561	\N	\N	\N	200000		50202020-00	2A1-AC (GAD)	122	1	796	2024-04-29 05:10:59	2024-04-29 05:13:12		FAD			1	0	0	FAD	0	0	0
1273	DOC-2024-0821	04-0811	3483	\N	\N	\N	99000		50202020-00	2A1-AC	122	1	821	2024-04-29 07:31:32	2024-04-29 07:38:11		FAD			1	0	0	FAD	0	0	0
1301	DOC-2024-0845	04-0840	1196	\N	\N	\N	76553271.96		50202020-00	2A1-103	122	1	845	2024-04-29 08:08:55	2024-04-29 08:09:46		FAD			1	0	0	FAD	0	0	0
1326	DOC-2024-0869	04-0870	1184	\N	\N	\N	5694000		50202020-00	2A1-101	122	1	869	2024-04-29 09:40:48	2024-04-29 09:46:58		FAD			1	0	0	FAD	0	0	0
1327	DOC-2024-0869	04-0870	1184	\N	\N	\N	109500		50202020-00	2A1-101 (RA10612)	122	1	869	2024-04-29 09:40:48	2024-04-29 09:46:58		FAD			1	0	0	FAD	0	0	0
1328	DOC-2024-0869	04-0870	1184	\N	\N	\N	8030000		50202020-00	2A1-102	122	1	869	2024-04-29 09:40:48	2024-04-29 09:46:58		FAD			1	0	0	FAD	0	0	0
1862	DOC-2024-1237	05-1212	3511	\N	\N	\N	562.5	m	50202020-00	2A1-AC (Scholar Grad)	122	1	1237	2024-05-30 09:48:34	2024-05-30 09:56:11		FAD			1	0	0	FAD	0	0	0
1369	DOC-2024-0895	04-0897	3483	\N	\N	\N	1993000		50202020-00	2A1-101	122	1	895	2024-04-29 10:54:00	2024-04-29 10:57:23		FAD			1	0	0	FAD	0	0	0
1095	DOC-2024-0662	04-0643	2730	\N	\N	\N	5784.98		50205020-01	1A1	122	1	662	2024-04-17 03:38:56	2024-04-30 04:02:39		FAD			1	0	0	FAD	0	0	0
1415	DOC-2024-0923	04-0831	1190	\N	\N	\N	40000		50202020-00	2A1-102	122	1	923	2024-04-30 04:22:27	2024-04-30 04:22:41		FAD			1	0	0	FAD	0	0	0
1447	DOC-2024-0945	04-0921	2857	\N	\N	\N	174600		50202020-00	2A1-AC	122	1	945	2024-05-02 04:04:39	2024-05-02 04:07:47		FAD			1	0	0	FAD	0	0	0
1483	DOC-2024-0966	04-0691	3483	\N	\N	\N	2596452.34		50202020-00	2A1-AC	122	1	966	2024-05-02 04:34:25	2024-05-02 04:34:35		FAD			1	0	0	FAD	0	0	0
1484	DOC-2024-0966	04-0691	3483	\N	\N	\N	21676.29		50211990-00	PD 997	122	1	966	2024-05-02 04:34:25	2024-05-02 04:34:35		FAD			1	0	0	FAD	0	0	0
1853	DOC-2024-1228	05-1203	1646	\N	\N	\N	8888.89	d	50202020-00	2A1-101	122	1	1228	2024-05-30 09:15:52	2024-05-30 10:03:40		FAD			1	0	0	FAD	0	0	0
1724	DOC-2024-1143	05-1115	1042	\N	\N	\N	40000	e	50202020-00	2A1-101 (RA10612)	122	1	1143	2024-05-27 10:16:24	2024-05-27 10:41:45		FAD			1	0	0	FAD	0	0	0
1524	DOC-2024-0982	05-0961	1133	\N	\N	\N	93054		50202020-00	2A1-102	122	1	982	2024-05-08 04:31:23	2024-05-08 04:50:00		FAD			1	0	0	FAD	0	0	0
1002	DOC-2024-0600	03-0604	2745	\N	\N	\N	1970		50210030-00	1A1	122	1	600	2024-04-05 09:18:39	2024-04-05 09:18:55		FAD			1	0	0	FAD	0	0	0
310	DOC-2024-0140	01-0140	3483	\N	\N	\N	276533.32		50202020-00	2A1-101	999	1	140	2024-02-06 09:29:03	\N		FAD			1	0	0	FAD	0	0	0
1575	DOC-2024-1028	05-0950	1220	\N	\N	\N	25000		50202020-00	2A2B-105	122	1	1028	2024-05-24 05:06:27	2024-05-24 05:06:52		FAD			1	0	0	FAD	0	0	0
1600	DOC-2024-1049	05-1020	2857	\N	\N	\N	104800		50202020-00	2A2B-101	122	1	1049	2024-05-24 05:21:05	2024-05-24 05:22:20		FAD			1	0	0	FAD	0	0	0
1653	DOC-2024-1090	05-1061	1216	\N	\N	\N	14502.56		50202010-02	2A2B-105	122	1	1090	2024-05-27 08:34:28	2024-05-27 09:32:56		FAD			1	0	0	FAD	0	0	0
1707	DOC-2024-1129	05-1101	2702	\N	\N	\N	15660		50101010-01	2A1-2	122	1	1129	2024-05-27 10:06:33	2024-05-27 10:11:36		FAD			1	0	0	FAD	0	0	0
1708	DOC-2024-1129	05-1101	2702	\N	\N	\N	1000		50102010-01	2A1-2	122	1	1129	2024-05-27 10:06:33	2024-05-27 10:11:36		FAD			1	0	0	FAD	0	0	0
1761	DOC-2024-1172	05-1144	1103	\N	\N	\N	132996.05	f	50202020-00	2A1-104	122	1	1172	2024-05-28 07:12:13	2024-05-28 08:02:23		FAD			1	0	0	FAD	0	0	0
1523	DOC-2024-0982	05-0961	1133	\N	\N	\N	20505	a	50202020-00	2A1-101	122	1	982	2024-05-08 04:31:23	2024-05-08 04:50:00		FAD			1	0	0	FAD	0	0	0
1725	DOC-2024-1143	05-1115	1042	\N	\N	\N	1220000		50202020-00	2A1-102	122	1	1143	2024-05-27 10:16:24	2024-05-27 10:41:45		FAD			1	0	0	FAD	0	0	0
1814	DOC-2024-1200	05-1175	1041	\N	\N	\N	260000		50202020-00	2A1-102	122	1	1200	2024-05-28 07:48:34	2024-05-28 07:49:47		FAD			1	0	0	FAD	0	0	0
1746	DOC-2024-1159	05-1131	3483	\N	\N	\N	325120	j	50202020-00	2A1-106	122	1	1159	2024-05-27 10:30:01	2024-05-27 10:37:07		FAD			1	0	0	FAD	0	0	0
1779	DOC-2024-1187	05-1162	2730	\N	\N	\N	76796	g	50202020-00	2A1-104	122	1	1187	2024-05-28 07:19:46	2024-05-28 07:51:59		FAD			1	0	0	FAD	0	0	0
1891	DOC-2024-1248	05-1223	1111	\N	\N	\N	504753.9	d	50202020-00	2A1-101	122	1	1248	2024-05-30 10:21:11	2024-05-30 10:30:49		FAD			1	0	0	FAD	0	0	0
1832	DOC-2024-1214	05-1189	1103	\N	\N	\N	132998.3	g	50202020-00	2A1-104	122	1	1214	2024-05-28 08:17:33	2024-05-28 08:24:43		FAD			1	0	0	FAD	0	0	0
1673	DOC-2024-1110	05-1081	1184	\N	\N	\N	1042000	i	50202020-00	2A1-105	999	1	1110	2024-05-27 09:46:01	2024-05-27 09:50:13		FAD			1	0	0	FAD	0	0	0
1546	DOC-2024-1003	05-0990	3483	\N	\N	\N	408000	a	50202020-00	2A1-101	122	1	1003	2024-05-08 04:41:10	2024-05-08 04:45:05		FAD			1	0	0	FAD	0	0	0
1627	DOC-2024-1070	05-1041	3483	\N	\N	\N	4474000	a	50202020-00	2A1-101	999	1	1070	2024-05-27 08:16:43	2024-05-27 08:18:42		FAD			1	0	0	FAD	0	0	0
1047	DOC-2024-0635	04-0616	1039	\N	\N	\N	20885		50202020-00	2A1-101	122	1	635	2024-04-17 02:41:55	2024-04-17 03:37:52		FAD			1	0	0	FAD	0	0	0
1799	DOC-2024-1195	05-1170	1047	\N	\N	\N	230000		50202020-00	2A1-102	122	1	1195	2024-05-28 07:38:08	2024-05-28 07:50:37		FAD			1	0	0	FAD	0	0	0
1159	DOC-2024-0720	04-0703	3483	\N	\N	\N	39360		50202020-00	2A1-AC (HR)	999	1	720	2024-04-17 04:20:44	2024-04-17 04:32:34		FAD			1	0	0	FAD	0	0	0
1547	DOC-2024-1004	05-0991	3483	\N	\N	\N	108000	d	50202020-00	2A1-104	122	1	1004	2024-05-08 04:41:25	2024-05-08 04:44:53		FAD			1	0	0	FAD	0	0	0
1194	DOC-2024-0747	04-0730	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	747	2024-04-29 04:28:36	2024-04-29 04:30:21		FAD			1	0	0	FAD	0	0	0
1219	DOC-2024-0772	04-0755	1196	\N	\N	\N	1351000		50202020-00	2A1-104	122	1	772	2024-04-29 04:46:01	2024-04-29 04:49:48		FAD			1	0	0	FAD	0	0	0
1246	DOC-2024-0797	04-0781	2662	\N	\N	\N	14202.36		50202020-00	2A1-AC (HR)	122	1	797	2024-04-29 05:11:42	2024-04-29 05:13:46		FAD			1	0	0	FAD	0	0	0
1274	DOC-2024-0822	04-0812	2034	\N	\N	\N	18792		50202020-00	2A1-101	122	1	822	2024-04-29 07:31:55	2024-04-29 07:38:23		FAD			1	0	0	FAD	0	0	0
1302	DOC-2024-0846	04-0841	1039	\N	\N	\N	7448000		50202020-00	2A1-101	122	1	846	2024-04-29 09:15:43	2024-04-29 09:19:59		FAD			1	0	0	FAD	0	0	0
1329	DOC-2024-0870	04-0871	1111	\N	\N	\N	4854500		50202020-00	2A1-101	122	1	870	2024-04-29 09:41:55	2024-04-29 09:46:29		FAD			1	0	0	FAD	0	0	0
1330	DOC-2024-0870	04-0871	1111	\N	\N	\N	36500		50202020-00	2A1-101 (RA10612)	122	1	870	2024-04-29 09:41:55	2024-04-29 09:46:29		FAD			1	0	0	FAD	0	0	0
1331	DOC-2024-0870	04-0871	1111	\N	\N	\N	8176000		50202020-00	2A1-102	122	1	870	2024-04-29 09:41:55	2024-04-29 09:46:29		FAD			1	0	0	FAD	0	0	0
1370	DOC-2024-0896	04-0898	2751	\N	\N	\N	440000		50202020-00	2A1-AC	122	1	896	2024-04-29 10:54:53	2024-04-29 10:57:52		FAD			1	0	0	FAD	0	0	0
1096	DOC-2024-0663	04-0644	3483	\N	\N	\N	15400		50202020-00	2A1-101	122	1	663	2024-04-17 03:39:12	2024-04-30 04:03:08		FAD			1	0	0	FAD	0	0	0
1762	DOC-2024-1173	05-1145	3483	\N	\N	\N	466835.4	f	50202020-00	2A1-104	122	1	1173	2024-05-28 07:12:37	2024-05-28 08:02:10		FAD			1	0	0	FAD	0	0	0
1416	DOC-2024-0924	04-0844	3576	\N	\N	\N	34079.30		50202020-00	2A1-AC	999	1	924	2024-04-30 04:24:42	2024-04-30 04:24:59		FAD			1	0	0	FAD	0	0	0
1448	DOC-2024-0946	04-0922	2857	\N	\N	\N	20250		50202020-00	2A1-AC	122	1	946	2024-05-02 04:04:55	2024-05-02 04:10:23		FAD			1	0	0	FAD	0	0	0
1211	DOC-2024-0764	04-0747	3220	\N	\N	\N	1400000		50202010-02	2A2A-105A	122	1	764	2024-04-29 04:40:53	2024-04-29 04:44:05		FAD			1	0	0	FAD	0	0	0
1621	DOC-2024-1064	05-1035	1103	\N	\N	\N	348963.62	e	50202020-00	2A1-104	999	1	1064	2024-05-27 08:13:19	2024-05-27 08:17:38		FAD			1	0	0	FAD	0	0	0
1833	DOC-2024-1215	05-1190	85	\N	\N	\N	54000	g	50202020-00	2A1-104	122	1	1215	2024-05-28 08:20:36	2024-05-28 08:24:36		FAD			1	0	0	FAD	0	0	0
1726	DOC-2024-1144	05-1116	2695	\N	\N	\N	3420	b	50202020-00	2A1-101	122	1	1144	2024-05-27 10:17:18	2024-05-27 10:39:27		FAD			1	0	0	FAD	0	0	0
1601	DOC-2024-1050	\N	3483	\N	\N	\N	2498303.8		50202020-00	2A1-AC (HR)	122	0	1050	2024-05-24 05:24:08	\N		FAD			0	0	0	FAD	0	0	0
1647	DOC-2024-1084	05-1055	2730	\N	\N	\N	2132593.26		50104030-01	1A1	999	1	1084	2024-05-27 08:30:36	2024-05-27 09:34:09		FAD			1	0	0	FAD	0	0	0
1003	DOC-2024-0601	03-0594	3483	\N	\N	\N	88513.6		50202010-02	2A2B-102	122	1	601	2024-04-05 09:50:32	2024-04-05 09:58:14		FAD			1	0	0	FAD	0	0	0
173	DOC-2024-0053	01-0053	3487	\N	\N	\N	281482.5		50202020-00	2A1-104	999	1	53	2024-02-02 03:19:02	2024-02-07 04:17:36		FAD			1	0	0	FAD	0	0	0
1893	DOC-2024-1249	05-1225	3583	\N	\N	\N	14438.12	g	50202020-00	2A1-104	122	1	1249	2024-05-30 10:21:33	2024-05-30 10:30:37		FAD			1	0	0	FAD	0	0	0
379	DOC-2024-0185	01-0184	1124	\N	\N	\N	3395134		50202020-00	2A1-105	999	1	185	2024-02-07 02:56:34	\N		FAD			1	0	0	FAD	0	0	0
1576	DOC-2024-1029	05-0964	3181	\N	\N	\N	365400	g	50202020-00	2A1-101 (Patriot)	122	1	1029	2024-05-24 05:07:28	2024-05-24 05:07:41		FAD			1	0	0	FAD	0	0	0
1854	DOC-2024-1229	05-1204	3291	\N	\N	\N	4228380	d	50202020-00	2A1-101	122	1	1229	2024-05-30 09:16:16	2024-05-30 09:57:51		FAD			1	0	0	FAD	0	0	0
1709	DOC-2024-1130	05-1102	2146	\N	\N	\N	76800	p	50202020-00	2A1-AC (HR)	122	1	1130	2024-05-27 10:06:52	2024-05-27 10:11:24		FAD			1	0	0	FAD	0	0	0
1780	DOC-2024-1188	05-1163	915	\N	\N	\N	37864.26	q	50202020-00	2A1-AC (Planning)	122	1	1188	2024-05-28 07:20:21	2024-05-28 07:51:52		FAD			1	0	0	FAD	0	0	0
1906	DOC-2024-1256	05-1242	3494	\N	\N	\N	57410.88		50103010 (731)	2A1-2	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1907	DOC-2024-1256	05-1242	3494	\N	\N	\N	68205.84		50103010 (731)	2A2-A	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1908	DOC-2024-1256	05-1242	3494	\N	\N	\N	64394.28		50103010 (731)	2A2-B	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1674	DOC-2024-1111	05-1082	1200	\N	\N	\N	8269108.46	c	50202020-00	2A1-103	999	1	1111	2024-05-27 09:46:34	2024-05-27 09:49:50		FAD			1	0	0	FAD	0	0	0
1861	DOC-2024-1236	05-1211	2757	\N	\N	\N	2307	1	50210030-00	1A1	122	1	1236	2024-05-30 09:48:16	2024-05-30 09:56:19		FAD			1	0	0	FAD	0	0	0
1876	DOC-2024-1241	05-1216	3312	\N	\N	\N	67515	t	50202020-00	2A1-AC (Science Camp)	122	1	1241	2024-05-30 09:52:34	2024-05-30 09:55:31		FAD			1	0	0	FAD	0	0	0
1904	DOC-2024-1256	05-1242	3494	\N	\N	\N	96918.36		50103010 (731)	1A1	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1905	DOC-2024-1256	05-1242	3494	\N	\N	\N	20750.52		50103010 (731)	2A1-1	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1525	DOC-2024-0983	05-0963	1197	\N	\N	\N	80499.5	j	50202020-00	2A1-106	122	1	983	2024-05-08 04:31:42	2024-05-08 04:49:46		FAD			1	0	0	FAD	0	0	0
1747	DOC-2024-1160	05-1132	1149	\N	\N	\N	14575	j	50202020-00	2A1-106	122	1	1160	2024-05-27 10:30:18	2024-05-27 10:37:01		FAD			1	0	0	FAD	0	0	0
1048	DOC-2024-0636	04-0617	3541	\N	\N	\N	66880		50202020-00	2A1-101	122	1	636	2024-04-17 02:43:05	2024-04-17 03:37:42		FAD			1	0	0	FAD	0	0	0
1097	DOC-2024-0664	04-0645	3415	\N	\N	\N	100000		50202020-00	2A1-AC	122	1	664	2024-04-17 03:39:51	2024-04-17 03:51:21		FAD			1	0	0	FAD	0	0	0
1160	DOC-2024-0721	04-0704	2757	\N	\N	\N	10500		50102020-00	1A1	999	1	721	2024-04-17 04:21:26	2024-04-17 04:32:26		FAD			1	0	0	FAD	0	0	0
1161	DOC-2024-0721	04-0704	2757	\N	\N	\N	10500		50102030-01	1A1	999	1	721	2024-04-17 04:21:26	2024-04-17 04:32:26		FAD			1	0	0	FAD	0	0	0
1129	DOC-2024-0693	04-0675	126	\N	\N	\N	100000		50202020-00	2A1-106	122	1	693	2024-04-17 04:07:23	2024-04-17 04:39:20		FAD			1	0	0	FAD	0	0	0
1195	DOC-2024-0748	04-0731	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	748	2024-04-29 04:28:54	2024-04-29 04:30:30		FAD			1	0	0	FAD	0	0	0
1220	DOC-2024-0773	04-0756	1036	\N	\N	\N	1155000		50202020-00	2A1-101	122	1	773	2024-04-29 04:46:19	2024-04-29 04:49:56		FAD			1	0	0	FAD	0	0	0
1247	DOC-2024-0798	04-0783	3483	\N	\N	\N	15180		50202010-02	2A2B-105	122	1	798	2024-04-29 05:12:08	2024-04-29 05:13:56		FAD			1	0	0	FAD	0	0	0
1275	DOC-2024-0823	04-0813	3483	\N	\N	\N	1828707.5		50202020-00	2A1-104	122	1	823	2024-04-29 07:33:09	2024-04-29 07:38:41		FAD			1	0	0	FAD	0	0	0
1303	DOC-2024-0847	04-0842	1035	\N	\N	\N	8693000		50202020-00	2A1-101	122	1	847	2024-04-29 09:16:52	2024-04-29 09:20:09		FAD			1	0	0	FAD	0	0	0
1304	DOC-2024-0847	04-0842	1035	\N	\N	\N	3302500		50202020-00	2A1-102	122	1	847	2024-04-29 09:16:52	2024-04-29 09:20:09		FAD			1	0	0	FAD	0	0	0
1332	DOC-2024-0871	04-0872	1154	\N	\N	\N	4075500		50202020-00	2A1-101	122	1	871	2024-04-29 09:42:43	2024-04-29 09:46:17		FAD			1	0	0	FAD	0	0	0
1333	DOC-2024-0871	04-0872	1154	\N	\N	\N	82500		50202020-00	2A1-101 (RA10612)	122	1	871	2024-04-29 09:42:43	2024-04-29 09:46:17		FAD			1	0	0	FAD	0	0	0
1334	DOC-2024-0871	04-0872	1154	\N	\N	\N	775500		50202020-00	2A1-102	122	1	871	2024-04-29 09:42:43	2024-04-29 09:46:17		FAD			1	0	0	FAD	0	0	0
1371	DOC-2024-0897	04-0899	3319	\N	\N	\N	304657.34		50202020-00	2A1-AC	122	1	897	2024-04-29 10:55:20	2024-04-29 10:58:00		FAD			1	0	0	FAD	0	0	0
1417	DOC-2024-0925	04-0864	1194	\N	\N	\N	8200		50202020-00	2A1-106	122	1	925	2024-04-30 04:27:04	2024-04-30 04:27:13		FAD			1	0	0	FAD	0	0	0
1449	DOC-2024-0947	04-0923	3283	\N	\N	\N	957500		50202020-00	2A1-AC	122	1	947	2024-05-02 04:05:19	2024-05-02 04:08:21		FAD			1	0	0	FAD	0	0	0
1113	DOC-2024-0679	04-0660	3547	\N	\N	\N	21000		50202020-00	2A1-AC	999	1	679	2024-04-17 03:47:27	2024-04-17 03:48:23		FAD			1	0	0	FAD	0	0	0
1748	DOC-2024-1161	05-1133	1911	\N	\N	\N	139000	f	50202020-00	2A1-104	122	1	1161	2024-05-27 10:30:44	2024-05-27 10:36:55		FAD			1	0	0	FAD	0	0	0
1781	DOC-2024-1189	05-1164	3483	\N	\N	\N	74721.89	c	50202020-00	2A1-101	122	1	1189	2024-05-28 07:20:43	2024-05-28 07:51:42		FAD			1	0	0	FAD	0	0	0
1526	DOC-2024-0984	05-0966	2034	\N	\N	\N	18792	a	50202020-00	2A1-101	122	1	984	2024-05-08 04:32:07	2024-05-08 04:49:32		FAD			1	0	0	FAD	0	0	0
1548	DOC-2024-1005	05-0993	916	\N	\N	\N	268343.57	d	50202020-00	2A1-104	122	1	1005	2024-05-08 04:41:47	2024-05-08 04:44:21		FAD			1	0	0	FAD	0	0	0
1603	DOC-2024-1051	05-1021	3483	\N	\N	\N	24055.49		50211990-00	PD 997	122	1	1051	2024-05-24 05:24:51	2024-05-24 05:27:07		FAD			1	0	0	FAD	0	0	0
1004	DOC-2024-0602	03-0595	3483	\N	\N	\N	16480		50202020-00	2A1-101	122	1	602	2024-04-05 09:50:56	2024-04-05 09:58:34		FAD			1	0	0	FAD	0	0	0
175	DOC-2024-0055	01-0055	3488	\N	\N	\N	155873.42		50202020-00	2A1-104	999	1	55	2024-02-02 03:21:47	2024-02-07 04:17:47		FAD			1	0	0	FAD	0	0	0
1877	DOC-2024-1242	05-1217	1179	\N	\N	\N	6696925.18	d	50202020-00	2A1-101	122	1	1242	2024-05-30 09:53:22	2024-05-30 09:55:23		FAD			1	0	0	FAD	0	0	0
1629	DOC-2024-1071	05-1042	3483	\N	\N	\N	135963.88		50202020-00	2A1-102	122	1	1071	2024-05-27 08:19:27	2024-05-27 08:24:20		FAD			1	0	0	FAD	0	0	0
1654	DOC-2024-1091	05-1062	3483	\N	\N	\N	49723.08		50202010-02	2A2B-105	122	1	1091	2024-05-27 09:35:08	2024-05-27 09:39:25		FAD			1	0	0	FAD	0	0	0
1675	DOC-2024-1112	05-1083	1059	\N	\N	\N	8796000	c	50202020-00	2A1-103	999	1	1112	2024-05-27 09:46:52	2024-05-27 09:49:43		FAD			1	0	0	FAD	0	0	0
1878	DOC-2024-1242	05-1217	1179	\N	\N	\N	178000	f	50202020-00	2A1-101 (RA10612)	122	1	1242	2024-05-30 09:53:22	2024-05-30 09:55:23		FAD			1	0	0	FAD	0	0	0
1577	DOC-2024-1030	05-0995	1449	\N	\N	\N	105600	k	50202020-00	2A1-AC (GAD)	122	1	1030	2024-05-24 05:08:32	2024-05-24 05:09:10		FAD			1	0	0	FAD	0	0	0
1834	DOC-2024-1216	05-1191	3483	\N	\N	\N	3053000	c	50202020-00	2A1-101	122	1	1216	2024-05-28 08:20:53	2024-05-28 08:24:29		FAD			1	0	0	FAD	0	0	0
1602	DOC-2024-1051	05-1021	3483	\N	\N	\N	2498303.8	p	50202020-00	2A1-AC (HR)	122	1	1051	2024-05-24 05:24:51	2024-05-24 05:27:07		FAD			1	0	0	FAD	0	0	0
1894	DOC-2024-1250	05-1226	3102	\N	\N	\N	6000	q	50202020-00	2A1-AC (Planning)	122	1	1250	2024-05-30 10:21:51	2024-05-30 10:30:24		FAD			1	0	0	FAD	0	0	0
1628	DOC-2024-1071	05-1042	3483	\N	\N	\N	42713.3	b	50202020-00	2A1-101	122	1	1071	2024-05-27 08:19:27	2024-05-27 08:24:20		FAD			1	0	0	FAD	0	0	0
1710	DOC-2024-1131	05-1103	1037	\N	\N	\N	363790	b	50202020-00	2A1-101	122	1	1131	2024-05-27 10:07:09	2024-05-27 10:11:15		FAD			1	0	0	FAD	0	0	0
1879	DOC-2024-1242	05-1217	1179	\N	\N	\N	850000		50202020-00	2A1-102	122	1	1242	2024-05-30 09:53:22	2024-05-30 09:55:23		FAD			1	0	0	FAD	0	0	0
1855	DOC-2024-1230	02-1205	3483	\N	\N	\N	743000		50202020-00	2A1-101	122	1	1230	2024-05-30 09:16:37	2024-05-30 09:57:42		FAD			1	0	0	FAD	0	0	0
1727	DOC-2024-1145	05-1117	2756	\N	\N	\N	3420	b	50202020-00	2A1-101	122	1	1145	2024-05-27 10:17:32	2024-05-27 10:39:18		FAD			1	0	0	FAD	0	0	0
1909	DOC-2024-1256	05-1242	3494	\N	\N	\N	1800		50103040 (734)	1A1	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1910	DOC-2024-1256	05-1242	3494	\N	\N	\N	400		50103040 (734)	2A1-1	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1911	DOC-2024-1256	05-1242	3494	\N	\N	\N	1000		50103040 (734)	2A1-2	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1912	DOC-2024-1256	05-1242	3494	\N	\N	\N	1200		50103040 (734)	2A2-A	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1050	DOC-2024-0637	04-0618	3483	\N	\N	\N	88954.58		50101010-01	2A1-1	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1051	DOC-2024-0637	04-0618	3483	\N	\N	\N	232793.68		50101010-01	2A1-2	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1052	DOC-2024-0637	04-0618	3483	\N	\N	\N	549292.14		50101010-01	2A2	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1053	DOC-2024-0637	04-0618	3483	\N	\N	\N	36000		50102010-01	1A1	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1054	DOC-2024-0637	04-0618	3483	\N	\N	\N	8000		50102010-01	2A1-1	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1055	DOC-2024-0637	04-0618	3483	\N	\N	\N	18000		50102010-01	2A1-2	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1056	DOC-2024-0637	04-0618	3483	\N	\N	\N	42000		50102010-01	2A2	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1098	DOC-2024-0665	04-0646	3545	\N	\N	\N	761024		50202020-00	2A1-101	999	1	665	2024-04-17 03:40:35	2024-04-17 03:51:05		FAD			1	0	0	FAD	0	0	0
1162	DOC-2024-0722	04-0705	3556	\N	\N	\N	30391.10		50202020-00	2A1-104	999	1	722	2024-04-17 04:22:07	2024-04-17 04:32:11		FAD			1	0	0	FAD	0	0	0
1130	DOC-2024-0694	04-0676	3483	\N	\N	\N	551500		50202020-00	2A1-106	122	1	694	2024-04-17 04:07:37	2024-04-17 04:39:07		FAD			1	0	0	FAD	0	0	0
1196	DOC-2024-0749	04-0732	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	749	2024-04-29 04:29:13	2024-04-29 04:30:40		FAD			1	0	0	FAD	0	0	0
1221	DOC-2024-0774	04-0757	3486	\N	\N	\N	30530.79		50203090-00	1A1	122	1	774	2024-04-29 04:46:37	2024-04-29 04:50:03		FAD			1	0	0	FAD	0	0	0
1248	DOC-2024-0799	04-0779	3483	\N	\N	\N	18000		50202020-00	2A1-101	122	1	799	2024-04-29 05:13:36	2024-04-29 05:14:04		FAD			1	0	0	FAD	0	0	0
1276	DOC-2024-0824	04-0814	3567	\N	\N	\N	316015		50202020-00	2A1-104	122	1	824	2024-04-29 07:34:27	2024-04-29 07:38:50		FAD			1	0	0	FAD	0	0	0
1305	DOC-2024-0848	04-0843	1122	\N	\N	\N	22673504		50202020-00	2A1-103	122	1	848	2024-04-29 09:17:22	2024-04-29 09:20:22		FAD			1	0	0	FAD	0	0	0
1335	DOC-2024-0872	04-0873	3511	\N	\N	\N	1542000		50202020-00	2A1-104	122	1	872	2024-04-29 09:43:08	2024-04-29 09:46:04		FAD			1	0	0	FAD	0	0	0
1372	DOC-2024-0898	04-0900	3333	\N	\N	\N	39941.18		50202020-00	2A1-AC	122	1	898	2024-04-29 10:56:13	2024-04-29 10:58:11		FAD			1	0	0	FAD	0	0	0
1418	DOC-2024-0926	04-0895	1027	\N	\N	\N	58132		50202020-00	2A1-106	122	1	926	2024-04-30 04:29:14	2024-04-30 04:29:29		FAD			1	0	0	FAD	0	0	0
1450	DOC-2024-0948	04-0924	2751	\N	\N	\N	834		50202020-00	2A1-AC	122	1	948	2024-05-02 04:05:37	2024-05-02 04:09:02		FAD			1	0	0	FAD	0	0	0
1485	DOC-2024-0905	04-0910	3484	\N	\N	\N	153473		50202020-00	2A1-AC	122	1	905	2024-04-30 02:46:39	2024-04-30 02:50:09		FAD			1	0	0	FAD	0	0	0
1049	DOC-2024-0637	04-0618	3483	\N	\N	\N	485094.10		50101010-01	1A1	122	1	637	2024-04-17 02:52:26	2024-04-17 03:37:33		FAD			1	0	0	FAD	0	0	0
1676	DOC-2024-1113	05-1084	1060	\N	\N	\N	4024000	e	50202020-00	2A1-104	999	1	1113	2024-05-27 09:47:26	2024-05-27 09:49:37		FAD			1	0	0	FAD	0	0	0
1782	DOC-2024-1190	05-1165	1038	\N	\N	\N	11241427.18	c	50202020-00	2A1-101	122	1	1190	2024-05-28 07:22:01	2024-05-28 07:51:34		FAD			1	0	0	FAD	0	0	0
1005	DOC-2024-0603	03-0596	3483	\N	\N	\N	14608000		50202020-00	2A1-101	122	1	603	2024-04-05 09:51:19	2024-04-05 09:58:41		FAD			1	0	0	FAD	0	0	0
265	DOC-2024-0111	01-0111	1040	\N	\N	\N	3598000		50202020-00	2A1-101 (RA10612)	999	1	111	2024-02-06 08:51:44	\N		FAD			1	0	0	FAD	0	0	0
138	DOC-2024-0023	01-0023	3486	\N	\N	\N	37841.35		50203090-00	1A1	999	1	23	2024-02-02 02:53:35	2024-02-07 03:41:37		FAD			1	0	0	FAD	0	0	0
1655	DOC-2024-1092	05-1063	2206	\N	\N	\N	8287.18		50202010-02	2A2B-105	122	1	1092	2024-05-27 09:35:34	2024-05-27 09:39:32		FAD			1	0	0	FAD	0	0	0
1604	DOC-2024-1052	05-1022	3483	\N	\N	\N	807653		50102990-36	1A1	122	1	1052	2024-05-24 05:26:07	2024-05-24 05:27:13		FAD			1	0	0	FAD	0	0	0
1605	DOC-2024-1052	05-1022	3483	\N	\N	\N	172921		50102990-36	2A1-1	122	1	1052	2024-05-24 05:26:07	2024-05-24 05:27:13		FAD			1	0	0	FAD	0	0	0
1606	DOC-2024-1052	05-1022	3483	\N	\N	\N	447104		50102990-36	2A1-2	122	1	1052	2024-05-24 05:26:07	2024-05-24 05:27:13		FAD			1	0	0	FAD	0	0	0
1607	DOC-2024-1052	05-1022	3483	\N	\N	\N	1065329		50102990-36	2A2	122	1	1052	2024-05-24 05:26:07	2024-05-24 05:27:13		FAD			1	0	0	FAD	0	0	0
1549	DOC-2024-1006	05-0996	1631	\N	\N	\N	68816	d	50202020-00	2A1-104	122	1	1006	2024-05-08 04:42:11	2024-05-08 04:44:10		FAD			1	0	0	FAD	0	0	0
1630	DOC-2024-1072	05-1043	3483	\N	\N	\N	3440490.75	f	50202020-00	2A1-104	122	1	1072	2024-05-27 08:20:06	2024-05-27 08:24:27		FAD			1	0	0	FAD	0	0	0
1527	DOC-2024-0985	05-0967	1196	\N	\N	\N	2388000	i	50202020-00	2A1-105	122	1	985	2024-05-08 04:32:26	2024-05-08 04:49:21		FAD			1	0	0	FAD	0	0	0
1711	DOC-2024-1132	05-1104	3483	\N	\N	\N	2664000		50202020-00	2A1-102	122	1	1132	2024-05-27 10:07:36	2024-05-27 10:11:08		FAD			1	0	0	FAD	0	0	0
1783	DOC-2024-1190	05-1165	1038	\N	\N	\N	990000	e	50202020-00	2A1-101 (RA10612)	122	1	1190	2024-05-28 07:22:01	2024-05-28 07:51:34		FAD			1	0	0	FAD	0	0	0
1818	DOC-2024-1202	05-1177	2609	\N	\N	\N	818	c	50202020-00	2A1-101	122	1	1202	2024-05-28 08:07:22	2024-05-28 08:26:50		FAD			1	0	0	FAD	0	0	0
1728	DOC-2024-1146	05-1118	2741	\N	\N	\N	3420	b	50202020-00	2A1-101	122	1	1146	2024-05-27 10:17:45	2024-05-27 10:39:10		FAD			1	0	0	FAD	0	0	0
1784	DOC-2024-1190	05-1165	1038	\N	\N	\N	3408000		50202020-00	2A1-102	122	1	1190	2024-05-28 07:22:01	2024-05-28 07:51:34		FAD			1	0	0	FAD	0	0	0
1749	DOC-2024-1162	05-1134	3483	\N	\N	\N	12000	b	50202020-00	2A1-101	122	1	1162	2024-05-27 10:30:58	2024-05-27 10:36:49		FAD			1	0	0	FAD	0	0	0
1849	DOC-2024-1225	05-1200	1045	\N	\N	\N	406000	e	50202020-00	2A1-101 (RA10612)	122	1	1225	2024-05-30 09:14:22	2024-05-30 10:04:45		FAD			1	0	0	FAD	0	0	0
1856	DOC-2024-1231	05-1206	3483	\N	\N	\N	2865000		50202020-00	2A1-102	122	1	1231	2024-05-30 09:16:58	2024-05-30 09:57:32		FAD			1	0	0	FAD	0	0	0
1057	DOC-2024-0638	04-0619	3483	\N	\N	\N	107526.9		50101010-01	1A1	122	1	638	2024-04-17 02:53:47	2024-04-17 03:37:22		FAD			1	0	0	FAD	0	0	0
1058	DOC-2024-0638	04-0619	3483	\N	\N	\N	27989.92		50101010-01	2A1-1	122	1	638	2024-04-17 02:53:47	2024-04-17 03:37:22		FAD			1	0	0	FAD	0	0	0
1059	DOC-2024-0638	04-0619	3483	\N	\N	\N	71440.32		50101010-01	2A1-2	122	1	638	2024-04-17 02:53:47	2024-04-17 03:37:22		FAD			1	0	0	FAD	0	0	0
1060	DOC-2024-0638	04-0619	3483	\N	\N	\N	148389.36		50101010-01	2A2	122	1	638	2024-04-17 02:53:47	2024-04-17 03:37:22		FAD			1	0	0	FAD	0	0	0
1099	DOC-2024-0666	04-0647	3545	\N	\N	\N	10450207.33		50202020-00	2A1-101	999	1	666	2024-04-17 03:41:02	2024-04-17 03:50:51		FAD			1	0	0	FAD	0	0	0
1163	DOC-2024-0723	04-0706	683	\N	\N	\N	37996		50202020-00	2A1-104	999	1	723	2024-04-17 04:22:29	2024-04-17 04:31:57		FAD			1	0	0	FAD	0	0	0
1131	DOC-2024-0695	04-0677	2675	\N	\N	\N	200		50202020-00	2A1-AC	122	1	695	2024-04-17 04:07:55	2024-04-17 04:38:57		FAD			1	0	0	FAD	0	0	0
1197	DOC-2024-0750	04-0733	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	750	2024-04-29 04:29:38	2024-04-29 04:30:47		FAD			1	0	0	FAD	0	0	0
1222	DOC-2024-0775	04-0758	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	775	2024-04-29 04:47:08	2024-04-29 04:50:10		FAD			1	0	0	FAD	0	0	0
1277	DOC-2024-0825	04-0815	3483	\N	\N	\N	3013065.39		50202020-00	2A1-104	122	1	825	2024-04-29 07:35:06	2024-04-29 07:38:59		FAD			1	0	0	FAD	0	0	0
1278	DOC-2024-0825	04-0815	3483	\N	\N	\N	558762.93		50202020-00	2A1-103	122	1	825	2024-04-29 07:35:06	2024-04-29 07:38:59		FAD			1	0	0	FAD	0	0	0
1306	DOC-2024-0849	04-0845	2717	\N	\N	\N	9982.68		50202020-00	2A2B-105	122	1	849	2024-04-29 09:17:57	2024-04-29 09:20:33		FAD			1	0	0	FAD	0	0	0
1336	DOC-2024-0873	04-0874	2616	\N	\N	\N	18827.74		50101010-01	2A2	122	1	873	2024-04-29 09:43:53	2024-04-29 09:45:45		FAD			1	0	0	FAD	0	0	0
1337	DOC-2024-0873	04-0874	2616	\N	\N	\N	1818.18		50102010-01	2A2	122	1	873	2024-04-29 09:43:53	2024-04-29 09:45:45		FAD			1	0	0	FAD	0	0	0
1883	DOC-2024-1244	05-1219	1184	\N	\N	\N	2305607.9	d	50202020-00	2A1-101	122	1	1244	2024-05-30 09:54:56	2024-05-30 09:55:08		FAD			1	0	0	FAD	0	0	0
1249	DOC-2024-0800	04-0785	2782	\N	\N	\N	30500		50202020-00	2A1-AC (Scholar Grad)	122	1	800	2024-04-29 05:14:29	2024-04-30 03:07:35		FAD			1	0	0	FAD	0	0	0
1419	DOC-2024-0927	04-0901	3540	\N	\N	\N	3191.58		50202020-00	2A1-106	122	1	927	2024-04-30 04:38:09	2024-04-30 04:38:20		FAD			1	0	0	FAD	0	0	0
1451	DOC-2024-0949	04-0925	3483	\N	\N	\N	78400		50202020-00	2A1-AC	122	1	949	2024-05-02 04:05:56	2024-05-02 04:09:15		FAD			1	0	0	FAD	0	0	0
1373	DOC-2024-0899	04-0902	3380	\N	\N	\N	9000		50205020-01	1A1	122	1	899	2024-04-29 10:59:01	2024-05-02 04:13:14		FAD			1	0	0	FAD	0	0	0
774	DOC-2024-0436	03-0424	2034	\N	\N	\N	18144		50202020-00	2A1-101	122	1	436	2024-03-15 03:24:35	2024-03-15 03:44:07		FAD			1	0	0	FAD	0	0	0
1729	DOC-2024-1147	05-1119	2132	\N	\N	\N	33600	k	50202020-00	2A1-AC (GAD)	122	1	1147	2024-05-27 10:19:01	2024-05-27 10:39:03		FAD			1	0	0	FAD	0	0	0
1712	DOC-2024-1133	05-1105	3483	\N	\N	\N	1362000	b	50202020-00	2A1-101	122	1	1133	2024-05-27 10:07:52	2024-05-27 10:11:01		FAD			1	0	0	FAD	0	0	0
1006	DOC-2024-0604	03-0597	3483	\N	\N	\N	1149176.51		50202020-00	2A1-104	122	1	604	2024-04-05 09:51:39	2024-04-05 09:58:49		FAD			1	0	0	FAD	0	0	0
221	DOC-2024-0094	01-0094	1036	\N	\N	\N	5456000		50202020-00	2A1-101 (RA10612)	999	1	94	2024-02-02 06:41:00	2024-02-07 05:06:47		FAD			1	0	0	FAD	0	0	0
222	DOC-2024-0095	01-0095	1046	\N	\N	\N	99987500		50202020-00	2A1-101	999	1	95	2024-02-02 06:41:38	2024-02-07 05:06:51		FAD			1	0	0	FAD	0	0	0
574	DOC-2024-0307	02-0307	3483	\N	\N	\N	58194.78		50202020-00	2A1-102	999	1	307	2024-02-28 11:12:41	2024-03-04 02:54:16		FAD			1	0	0	FAD	0	0	0
1550	DOC-2024-1007	05-0997	686	\N	\N	\N	90000	d	50202020-00	2A1-104	122	1	1007	2024-05-08 04:42:34	2024-05-08 04:44:02		FAD			1	0	0	FAD	0	0	0
1579	DOC-2024-1032	05-0994	2730	\N	\N	\N	17100	h	50202020-00	2A1-104	122	1	1032	2024-05-24 05:10:01	2024-05-24 05:10:10		FAD			1	0	0	FAD	0	0	0
1837	DOC-2024-1218	05-1193	2034	\N	\N	\N	18185.85	c	50202020-00	2A1-101	122	1	1218	2024-05-28 08:22:32	2024-05-28 08:23:49		FAD			1	0	0	FAD	0	0	0
1656	DOC-2024-1093	05-1064	1581	\N	\N	\N	5900		50202010-02	2A2B-105	122	1	1093	2024-05-27 09:36:05	2024-05-27 09:39:40		FAD			1	0	0	FAD	0	0	0
1819	DOC-2024-1203	05-1178	2752	\N	\N	\N	800	m	50202020-00	2A1-AC (Scholar Grad)	122	1	1203	2024-05-28 08:07:43	2024-05-28 08:26:43		FAD			1	0	0	FAD	0	0	0
1857	DOC-2024-1232	05-1207	3483	\N	\N	\N	801000	c	50202020-00	2A1-101	122	1	1232	2024-05-30 09:17:43	2024-05-30 09:57:23		FAD			1	0	0	FAD	0	0	0
1632	DOC-2024-1073	05-1044	2763	\N	\N	\N	1650	a	50202020-00	2A1-101	122	1	1073	2024-05-27 08:20:22	2024-05-27 08:24:35		FAD			1	0	0	FAD	0	0	0
1895	DOC-2024-1251	05-1227	1120	\N	\N	\N	603619.9	d	50202020-00	2A1-101	122	1	1251	2024-05-30 10:22:09	2024-05-30 10:30:13		FAD			1	0	0	FAD	0	0	0
1787	DOC-2024-1191	05-1166	1036	\N	\N	\N	1728000		50202020-00	2A1-102	122	1	1191	2024-05-28 07:27:47	2024-05-28 07:51:25		FAD			1	0	0	FAD	0	0	0
1608	DOC-2024-1053	05-1023	2888	\N	\N	\N	15000	p	50202020-00	2A1-AC (HR)	122	1	1053	2024-05-24 05:26:31	2024-05-24 05:27:27		FAD			1	0	0	FAD	0	0	0
1786	DOC-2024-1191	05-1166	1036	\N	\N	\N	1534000	e	50202020-00	2A1-101 (RA10612)	122	1	1191	2024-05-28 07:27:47	2024-05-28 07:51:25		FAD			1	0	0	FAD	0	0	0
1528	DOC-2024-0986	05-0968	2857	\N	\N	\N	308500	u	50202020-00	2A1-AC (NULAB)	122	1	986	2024-05-08 04:32:44	2024-05-08 04:49:07		FAD			1	0	0	FAD	0	0	0
1750	DOC-2024-1163	05-1135	3483	\N	\N	\N	1650000	b	50202020-00	2A1-101	122	1	1163	2024-05-27 10:31:13	2024-05-27 10:36:41		FAD			1	0	0	FAD	0	0	0
1885	DOC-2024-1244	05-1219	1184	\N	\N	\N	2260000		50202020-00	2A1-102	122	1	1244	2024-05-30 09:54:56	2024-05-30 09:55:08		FAD			1	0	0	FAD	0	0	0
1884	DOC-2024-1244	05-1219	1184	\N	\N	\N	84000	f	50202020-00	2A1-101 (RA10612)	122	1	1244	2024-05-30 09:54:56	2024-05-30 09:55:08		FAD			1	0	0	FAD	0	0	0
1850	DOC-2024-1225	05-1200	1045	\N	\N	\N	248000		50202020-00	2A1-102	122	1	1225	2024-05-30 09:14:22	2024-05-30 10:04:45		FAD			1	0	0	FAD	0	0	0
1785	DOC-2024-1191	05-1166	1036	\N	\N	\N	9782561.18	b	50202020-00	2A1-101	122	1	1191	2024-05-28 07:27:47	2024-05-28 07:51:25		FAD			1	0	0	FAD	0	0	0
1061	DOC-2024-0639	04-0620	3483	\N	\N	\N	107516		50101010-01	1A1	122	1	639	2024-04-17 02:55:31	2024-04-17 03:37:10		FAD			1	0	0	FAD	0	0	0
1062	DOC-2024-0639	04-0620	3483	\N	\N	\N	27988.25		50101010-01	2A1-1	122	1	639	2024-04-17 02:55:31	2024-04-17 03:37:10		FAD			1	0	0	FAD	0	0	0
1063	DOC-2024-0639	04-0620	3483	\N	\N	\N	71435		50101010-01	2A1-2	122	1	639	2024-04-17 02:55:31	2024-04-17 03:37:10		FAD			1	0	0	FAD	0	0	0
1064	DOC-2024-0639	04-0620	3483	\N	\N	\N	148379.25		50101010-01	2A2	122	1	639	2024-04-17 02:55:31	2024-04-17 03:37:10		FAD			1	0	0	FAD	0	0	0
1100	DOC-2024-0667	04-0648	2517	\N	\N	\N	158246.83		50202020-00	2A1-106	999	1	667	2024-04-17 03:41:24	2024-04-17 03:50:40		FAD			1	0	0	FAD	0	0	0
1164	DOC-2024-0724	04-0708	2725	\N	\N	\N	15000		50202020-00	2A1-AC	999	1	724	2024-04-17 04:22:48	2024-04-17 04:31:46		FAD			1	0	0	FAD	0	0	0
1132	DOC-2024-0696	04-0678	3330	\N	\N	\N	342000		50202020-00	2A1-AC	122	1	696	2024-04-17 04:08:17	2024-04-17 04:38:36		FAD			1	0	0	FAD	0	0	0
1198	DOC-2024-0751	04-0734	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	751	2024-04-29 04:29:56	2024-04-29 04:30:56		FAD			1	0	0	FAD	0	0	0
1223	DOC-2024-0776	04-0759	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	776	2024-04-29 04:47:31	2024-04-29 04:50:21		FAD			1	0	0	FAD	0	0	0
1279	DOC-2024-0826	04-0816	1185	\N	\N	\N	560670		50202020-00	2A1-101	122	1	826	2024-04-29 07:35:42	2024-04-29 07:39:09		FAD			1	0	0	FAD	0	0	0
1280	DOC-2024-0826	04-0816	1185	\N	\N	\N	1420000		50202020-00	2A1-102	122	1	826	2024-04-29 07:35:42	2024-04-29 07:39:09		FAD			1	0	0	FAD	0	0	0
1307	DOC-2024-0850	04-0846	3494	\N	\N	\N	231420.60		50202020-00	2A1-AC	122	1	850	2024-04-29 09:18:18	2024-04-29 09:20:48		FAD			1	0	0	FAD	0	0	0
1338	DOC-2024-0874	04-0875	1757	\N	\N	\N	40399.98		50202020-00	2A1-101	122	1	874	2024-04-29 09:44:12	2024-04-29 09:45:28		FAD			1	0	0	FAD	0	0	0
1609	DOC-2024-1054	05-1024	2725	\N	\N	\N	50000	p	50202020-00	2A1-AC (HR)	122	1	1054	2024-05-24 05:26:47	2024-05-24 05:27:37		FAD			1	0	0	FAD	0	0	0
1657	DOC-2024-1094	05-1065	1934	\N	\N	\N	5179.49		50202010-02	2A2B-105	122	1	1094	2024-05-27 09:36:31	2024-05-27 09:39:47		FAD			1	0	0	FAD	0	0	0
1678	DOC-2024-1115	05-1086	1130	\N	\N	\N	376000	e	50202020-00	2A1-104	999	1	1115	2024-05-27 09:48:03	2024-05-27 09:49:24		FAD			1	0	0	FAD	0	0	0
1250	DOC-2024-0801	04-0787	3562	\N	\N	\N	49374		50202010-02	2A2A-102	122	1	801	2024-04-29 05:15:55	2024-04-30 04:13:58		FAD			1	0	0	FAD	0	0	0
1420	DOC-2024-0928	04-0908	3577	\N	\N	\N	4300		50202020-00	2A1-101	999	1	928	2024-04-30 04:40:03	2024-04-30 04:40:20		FAD			1	0	0	FAD	0	0	0
1452	DOC-2024-0950	04-0926	1450	\N	\N	\N	32200		50202020-00	2A1-AC	122	1	950	2024-05-02 04:06:32	2024-05-02 04:09:23		FAD			1	0	0	FAD	0	0	0
1374	DOC-2024-0900	04-0904	3498	\N	\N	\N	3600		50103020 (732)	1A1	122	1	900	2024-04-29 11:00:04	2024-04-29 11:00:40		FAD			1	0	0	FAD	0	0	0
1375	DOC-2024-0900	04-0904	3498	\N	\N	\N	800		50103020 (732)	2A1-1	122	1	900	2024-04-29 11:00:04	2024-04-29 11:00:40		FAD			1	0	0	FAD	0	0	0
1376	DOC-2024-0900	04-0904	3498	\N	\N	\N	1800		50103020 (732)	2A1-2	122	1	900	2024-04-29 11:00:04	2024-04-29 11:00:40		FAD			1	0	0	FAD	0	0	0
1007	DOC-2024-0605	03-0598	758	\N	\N	\N	12000		50211990-00	PD 997	122	1	605	2024-04-05 09:51:59	2024-04-05 09:59:00		FAD			1	0	0	FAD	0	0	0
436	DOC-2024-0205	02-0204	2723	\N	\N	\N	40000		50202020-00	2A1-AC (Planning)	999	1	205	2024-02-28 09:36:32	2024-03-04 03:23:31		FAD			1	0	0	FAD	0	0	0
1377	DOC-2024-0900	04-0904	3498	\N	\N	\N	2200		50103020 (732)	2A2-A	122	1	900	2024-04-29 11:00:04	2024-04-29 11:00:40		FAD			1	0	0	FAD	0	0	0
1378	DOC-2024-0900	04-0904	3498	\N	\N	\N	2000		50103020 (732)	2A2-B	122	1	900	2024-04-29 11:00:04	2024-04-29 11:00:40		FAD			1	0	0	FAD	0	0	0
1551	DOC-2024-1008	05-0998	1103	\N	\N	\N	98891.21	d	50202020-00	2A1-104	122	1	1008	2024-05-08 04:42:54	2024-05-08 04:43:53		FAD			1	0	0	FAD	0	0	0
1730	DOC-2024-1148	05-1120	2756	\N	\N	\N	3700	b	50202020-00	2A1-101	122	1	1148	2024-05-27 10:19:27	2024-05-27 10:38:48		FAD			1	0	0	FAD	0	0	0
1713	DOC-2024-1134	05-1106	422	\N	\N	\N	49077	f	50202020-00	2A1-104	122	1	1134	2024-05-27 10:08:07	2024-05-27 10:10:53		FAD			1	0	0	FAD	0	0	0
1788	DOC-2024-1192	05-1167	1046	\N	\N	\N	28620975.18	c	50202020-00	2A1-101	122	1	1192	2024-05-28 07:28:55	2024-05-28 07:51:06		FAD			1	0	0	FAD	0	0	0
1580	DOC-2024-1033	05-1004	1713	\N	\N	\N	156900.55	j	50202020-00	2A1-106	122	1	1033	2024-05-24 05:11:36	2024-05-24 05:13:46		FAD			1	0	0	FAD	0	0	0
1529	DOC-2024-0987	05-0970	2640	\N	\N	\N	843	n	50202020-00	2A1-AC (POSTER)	122	1	987	2024-05-08 04:33:02	2024-05-08 04:48:31		FAD			1	0	0	FAD	0	0	0
1880	DOC-2024-1243	05-1218	1057	\N	\N	\N	2236667.28	d	50202020-00	2A1-101	122	1	1243	2024-05-30 09:54:13	2024-05-30 09:55:16		FAD			1	0	0	FAD	0	0	0
1789	DOC-2024-1192	05-1167	1046	\N	\N	\N	1162000	e	50202020-00	2A1-101 (RA10612)	122	1	1192	2024-05-28 07:28:55	2024-05-28 07:51:06		FAD			1	0	0	FAD	0	0	0
1790	DOC-2024-1192	05-1167	1046	\N	\N	\N	12436000		50202020-00	2A1-102	122	1	1192	2024-05-28 07:28:55	2024-05-28 07:51:06		FAD			1	0	0	FAD	0	0	0
1766	DOC-2024-1177	05-1149	3483	\N	\N	\N	1468000		50202020-00	2A1-102	122	1	1177	2024-05-28 07:13:56	2024-05-28 08:01:27		FAD			1	0	0	FAD	0	0	0
1858	DOC-2024-1233	05-1208	3483	\N	\N	\N	13000	c	50202020-00	2A1-101	122	1	1233	2024-05-30 09:47:16	2024-05-30 09:57:11		FAD			1	0	0	FAD	0	0	0
1886	DOC-2024-1245	05-1220	3493	\N	\N	\N	598866	d	50202020-00	2A1-101	122	1	1245	2024-05-30 10:19:21	2024-05-30 10:31:26		FAD			1	0	0	FAD	0	0	0
1882	DOC-2024-1243	05-1218	1057	\N	\N	\N	1200000		50202020-00	2A1-102	122	1	1243	2024-05-30 09:54:13	2024-05-30 09:55:16		FAD			1	0	0	FAD	0	0	0
1881	DOC-2024-1243	05-1218	1057	\N	\N	\N	82000	f	50202020-00	2A1-101 (RA10612)	122	1	1243	2024-05-30 09:54:13	2024-05-30 09:55:16		FAD			1	0	0	FAD	0	0	0
1913	DOC-2024-1256	05-1242	3494	\N	\N	\N	1100		50103040 (734)	2A2-B	122	1	1256	2024-05-30 10:27:29	2024-05-30 10:28:56		FAD			1	0	0	FAD	0	0	0
1916	DOC-2024-1257	05-1243	3494	\N	\N	\N	5985.26		50103010 (731)	2A2-B	122	1	1257	2024-05-30 10:28:32	2024-05-30 10:28:44		FAD			1	0	0	FAD	0	0	0
1022	DOC-2024-0617	03-0539	2752	\N	\N	\N	13608.05		50202020-00	2A1-AC	122	1	617	2024-04-05 10:19:06	2024-04-05 10:20:57		FAD			1	0	0	FAD	0	0	0
1065	DOC-2024-0640	04-0621	3483	\N	\N	\N	107516		50101010-01	1A1	122	1	640	2024-04-17 02:56:51	2024-04-17 03:36:58		FAD			1	0	0	FAD	0	0	0
1066	DOC-2024-0640	04-0621	3483	\N	\N	\N	27988.25		50101010-01	2A1-1	122	1	640	2024-04-17 02:56:51	2024-04-17 03:36:58		FAD			1	0	0	FAD	0	0	0
1067	DOC-2024-0640	04-0621	3483	\N	\N	\N	71435		50101010-01	2A1-2	122	1	640	2024-04-17 02:56:51	2024-04-17 03:36:58		FAD			1	0	0	FAD	0	0	0
1068	DOC-2024-0640	04-0621	3483	\N	\N	\N	148379.25		50101010-01	2A2	122	1	640	2024-04-17 02:56:51	2024-04-17 03:36:58		FAD			1	0	0	FAD	0	0	0
1101	DOC-2024-0668	04-0649	1199	\N	\N	\N	150518.5		50202020-00	2A1-106	999	1	668	2024-04-17 03:42:10	2024-04-17 03:50:30		FAD			1	0	0	FAD	0	0	0
1165	DOC-2024-0725	04-0709	2726	\N	\N	\N	30000		50202020-00	2A1-AC	999	1	725	2024-04-17 04:23:06	2024-04-17 04:31:31		FAD			1	0	0	FAD	0	0	0
1133	DOC-2024-0697	04-0679	3283	\N	\N	\N	99500		50202020-00	2A1-101	122	1	697	2024-04-17 04:08:36	2024-04-17 04:38:25		FAD			1	0	0	FAD	0	0	0
1199	DOC-2024-0752	04-0735	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	752	2024-04-29 04:31:21	2024-04-29 04:34:21		FAD			1	0	0	FAD	0	0	0
1224	DOC-2024-0777	04-0760	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	777	2024-04-29 04:47:51	2024-04-29 04:50:29		FAD			1	0	0	FAD	0	0	0
1251	DOC-2024-0802	04-0790	2748	\N	\N	\N	6000		50203990-00	2A2	122	1	802	2024-04-29 05:16:37	2024-04-29 05:16:48		FAD			1	0	0	FAD	0	0	0
1281	DOC-2024-0827	04-0818	2942	\N	\N	\N	309595		50202020-00	2A1-104	122	1	827	2024-04-29 07:36:09	2024-04-29 07:39:22		FAD			1	0	0	FAD	0	0	0
1308	DOC-2024-0851	04-0847	3011	\N	\N	\N	130410		50202010-02	2A2B-105	122	1	851	2024-04-29 09:18:40	2024-04-29 09:21:03		FAD			1	0	0	FAD	0	0	0
1339	DOC-2024-0875	04-0876	1103	\N	\N	\N	113789.5		50202020-00	2A1-104	122	1	875	2024-04-29 09:44:36	2024-04-29 09:45:19		FAD			1	0	0	FAD	0	0	0
1839	DOC-2024-1220	05-1195	3140	\N	\N	\N	134805.99	1	50212030-00	1A1	122	1	1220	2024-05-28 08:23:15	2024-05-28 08:23:32		FAD			1	0	0	FAD	0	0	0
1767	DOC-2024-1178	05-1150	2757	\N	\N	\N	1989	1	50210030-00	1A1	122	1	1178	2024-05-28 07:14:15	2024-05-28 08:01:15		FAD			1	0	0	FAD	0	0	0
1421	DOC-2024-0929	04-0928	1224	\N	\N	\N	40600		50202020-00	2A1-AC	122	1	929	2024-04-30 04:41:19	2024-04-30 04:43:15		FAD			1	0	0	FAD	0	0	0
1453	DOC-2024-0951	04-0927	3579	\N	\N	\N	32200		50202020-00	2A1-AC (NULAB)	999	1	951	2024-05-02 04:07:23	2024-05-02 04:09:33		FAD			1	0	0	FAD	0	0	0
1379	DOC-2024-0901	04-0905	3279	\N	\N	\N	19413.27		50103030 (733)	1A1	122	1	901	2024-04-30 02:44:16	2024-04-30 02:49:19		FAD			1	0	0	FAD	0	0	0
1380	DOC-2024-0901	04-0905	3279	\N	\N	\N	4323.03		50103030 (733)	2A1-1	122	1	901	2024-04-30 02:44:16	2024-04-30 02:49:19		FAD			1	0	0	FAD	0	0	0
1381	DOC-2024-0901	04-0905	3279	\N	\N	\N	11177.62		50103030 (733)	2A1-2	122	1	901	2024-04-30 02:44:16	2024-04-30 02:49:19		FAD			1	0	0	FAD	0	0	0
1382	DOC-2024-0901	04-0905	3279	\N	\N	\N	12713.92		50103030 (733)	2A2-A	122	1	901	2024-04-30 02:44:16	2024-04-30 02:49:19		FAD			1	0	0	FAD	0	0	0
1383	DOC-2024-0901	04-0905	3279	\N	\N	\N	12147.11		50103030 (733)	2A2-B	122	1	901	2024-04-30 02:44:16	2024-04-30 02:49:19		FAD			1	0	0	FAD	0	0	0
940	DOC-2024-0559	03-0564	2693	\N	\N	\N	24571.04		50202020-00	2A1-AC (HR)	122	1	559	2024-04-01 04:53:08	2024-04-01 07:45:06		FAD			1	0	0	FAD	0	0	0
428	DOC-2024-0197	02-0196	1119	\N	\N	\N	1571612		50202020-00	2A1-105	999	1	197	2024-02-28 09:32:22	2024-03-04 03:22:07		FAD			1	0	0	FAD	0	0	0
823	DOC-2024-0473	03-0467	2709	\N	\N	\N	2000		50205020-01	1A1	122	1	473	2024-03-15 03:59:30	2024-03-15 04:07:38		FAD			1	0	0	FAD	0	0	0
1486	DOC-2024-0967	04-0830	2730	\N	\N	\N	11700		50202020-00	2A1-101	122	1	967	2024-05-06 08:41:39	2024-05-06 08:41:53		FAD			1	0	0	FAD	0	0	0
1553	DOC-2024-1009	05-1003	1087	\N	\N	\N	13333.33	e	50202020-00	2A1-101 (RA10612)	122	1	1009	2024-05-08 04:43:33	2024-05-08 04:43:43		FAD			1	0	0	FAD	0	0	0
1634	DOC-2024-1075	05-1046	2218	\N	\N	\N	200250	q	50202020-00	2A1-AC (Planning)	122	1	1075	2024-05-27 08:21:03	2024-05-27 08:24:55		FAD			1	0	0	FAD	0	0	0
1554	DOC-2024-1009	05-1003	1087	\N	\N	\N	159999.96		50202020-00	2A1-102	122	1	1009	2024-05-08 04:43:33	2024-05-08 04:43:43		FAD			1	0	0	FAD	0	0	0
1581	DOC-2024-1034	05-1005	3483	\N	\N	\N	24000	b	50202020-00	2A1-101	122	1	1034	2024-05-24 05:11:52	2024-05-24 05:14:00		FAD			1	0	0	FAD	0	0	0
1792	DOC-2024-1193	05-1168	1037	\N	\N	\N	1702000	e	50202020-00	2A1-101 (RA10612)	122	1	1193	2024-05-28 07:30:08	2024-05-28 07:50:56		FAD			1	0	0	FAD	0	0	0
1714	DOC-2024-1135	05-1107	3483	\N	\N	\N	1274000	f	50202020-00	2A1-104	122	1	1135	2024-05-27 10:08:26	2024-05-27 10:10:46		FAD			1	0	0	FAD	0	0	0
1752	DOC-2024-1165	05-1137	2275	\N	\N	\N	357459.91	f	50202020-00	2A1-104	122	1	1165	2024-05-27 10:31:51	2024-05-27 10:36:28		FAD			1	0	0	FAD	0	0	0
1679	DOC-2024-1116	05-1087	1122	\N	\N	\N	2748000	c	50202020-00	2A1-103	999	1	1116	2024-05-27 09:48:28	2024-05-27 09:49:16		FAD			1	0	0	FAD	0	0	0
1731	DOC-2024-1149	05-1121	3483	\N	\N	\N	3929000		50202020-00	2A1-102	122	1	1149	2024-05-27 10:19:40	2024-05-27 10:38:40		FAD			1	0	0	FAD	0	0	0
1552	DOC-2024-1009	05-1003	1087	\N	\N	\N	133483.3	a	50202020-00	2A1-101	122	1	1009	2024-05-08 04:43:33	2024-05-08 04:43:43		FAD			1	0	0	FAD	0	0	0
1793	DOC-2024-1193	05-1168	1037	\N	\N	\N	3074000		50202020-00	2A1-102	122	1	1193	2024-05-28 07:30:08	2024-05-28 07:50:56		FAD			1	0	0	FAD	0	0	0
1658	DOC-2024-1095	05-1066	3483	\N	\N	\N	223848.33	b	50202020-00	2A1-101	122	1	1095	2024-05-27 09:36:52	2024-05-27 09:39:58		FAD			1	0	0	FAD	0	0	0
1610	DOC-2024-1055	05-1025	3586	\N	\N	\N	148000	1	50211990-00	1A1	999	1	1055	2024-05-27 08:00:27	2024-05-27 08:04:05		FAD			1	0	0	FAD	0	0	0
1821	DOC-2024-1205	05-1180	3489	\N	\N	\N	22778	1	50201010-00	1A1	122	1	1205	2024-05-28 08:08:39	2024-05-28 08:26:27		FAD			1	0	0	FAD	0	0	0
1871	DOC-2024-1240	05-1215	3498	\N	\N	\N	3600		50103020 (732)	1A1	122	1	1240	2024-05-30 09:52:07	2024-05-30 09:55:38		FAD			1	0	0	FAD	0	0	0
1872	DOC-2024-1240	05-1215	3498	\N	\N	\N	800		50103020 (732)	2A1-1	122	1	1240	2024-05-30 09:52:07	2024-05-30 09:55:38		FAD			1	0	0	FAD	0	0	0
1873	DOC-2024-1240	05-1215	3498	\N	\N	\N	2000		50103020 (732)	2A1-2	122	1	1240	2024-05-30 09:52:07	2024-05-30 09:55:38		FAD			1	0	0	FAD	0	0	0
1530	DOC-2024-0988	05-0971	2860	\N	\N	\N	120358.20	1	50212020-00	1A1	122	1	988	2024-05-08 04:33:23	2024-05-08 04:48:22		FAD			1	0	0	FAD	0	0	0
822	DOC-2024-0472	03-0465	2759	\N	\N	\N	3500		50202010-02	2A2B-107	122	1	472	2024-03-15 03:59:11	2024-03-15 04:07:47		FAD			1	0	0	FAD	0	0	0
1069	DOC-2024-0641	04-0622	3486	\N	\N	\N	26107.89		50203090-00	1A1	122	1	641	2024-04-17 02:57:20	2024-04-17 03:36:46		FAD			1	0	0	FAD	0	0	0
1102	DOC-2024-0669	04-0650	1041	\N	\N	\N	200410		50202020-00	2A1-101	999	1	669	2024-04-17 03:42:32	2024-04-17 03:50:14		FAD			1	0	0	FAD	0	0	0
1166	DOC-2024-0726	04-0710	1149	\N	\N	\N	130000		50202020-00	2A1-AC	999	1	726	2024-04-17 04:23:29	2024-04-17 04:31:18		FAD			1	0	0	FAD	0	0	0
1134	DOC-2024-0698	04-0680	1156	\N	\N	\N	5974000		50202020-00	2A1-105	122	1	698	2024-04-17 04:08:56	2024-04-17 04:38:13		FAD			1	0	0	FAD	0	0	0
1200	DOC-2024-0753	04-0736	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	753	2024-04-29 04:31:41	2024-04-29 04:34:29		FAD			1	0	0	FAD	0	0	0
1225	DOC-2024-0778	04-0761	1021	\N	\N	\N	313705		50202020-00	2A1-101	122	1	778	2024-04-29 04:48:24	2024-04-29 04:50:41		FAD			1	0	0	FAD	0	0	0
1226	DOC-2024-0778	04-0761	1021	\N	\N	\N	96500		50202020-00	2A1-102	122	1	778	2024-04-29 04:48:24	2024-04-29 04:50:41		FAD			1	0	0	FAD	0	0	0
1252	DOC-2024-0803	04-0792	3563	\N	\N	\N	8788.56		50202020-00	2A1-AC (HR)	999	1	803	2024-04-29 07:15:51	2024-04-29 07:21:17		FAD			1	0	0	FAD	0	0	0
1282	DOC-2024-0828	04-0819	2759	\N	\N	\N	3240		50202020-00	2A1-AC	122	1	828	2024-04-29 07:36:37	2024-04-29 07:39:35		FAD			1	0	0	FAD	0	0	0
1860	DOC-2024-1235	05-1210	3483	\N	\N	\N	18656000	c	50202020-00	2A1-101	122	1	1235	2024-05-30 09:47:56	2024-05-30 09:56:27		FAD			1	0	0	FAD	0	0	0
1340	DOC-2024-0876	04-0877	1103	\N	\N	\N	113789.5		50202020-00	2A1-104	122	1	876	2024-04-29 09:44:59	2024-04-29 09:45:09		FAD			1	0	0	FAD	0	0	0
1384	DOC-2024-0902	04-0906	1038	\N	\N	\N	101400		50202020-00	2A1-101	122	1	902	2024-04-30 02:44:43	2024-04-30 02:49:34		FAD			1	0	0	FAD	0	0	0
1309	DOC-2024-0852	04-0848	15	\N	\N	\N	17261.40		50202020-00	2A1-104	122	1	852	2024-04-29 09:19:20	2024-04-30 04:37:24		FAD			1	0	0	FAD	0	0	0
1422	DOC-2024-0930	04-0932	3193	\N	\N	\N	5347		50203990-00	PD 997	122	1	930	2024-04-30 04:42:16	2024-04-30 04:43:05		FAD			1	0	0	FAD	0	0	0
1423	DOC-2024-0930	04-0932	3193	\N	\N	\N	32800		50202010-02	2A2A-106	122	1	930	2024-04-30 04:42:16	2024-04-30 04:43:05		FAD			1	0	0	FAD	0	0	0
1454	DOC-2024-0952	04-0915	1122	\N	\N	\N	595920		50202020-00	2A1-105	122	1	952	2024-05-02 04:11:04	2024-05-02 04:11:51		FAD			1	0	0	FAD	0	0	0
1822	DOC-2024-1206	05-1181	3096	\N	\N	\N	184700	b	50202020-00	2A1-101	122	1	1206	2024-05-28 08:09:08	2024-05-28 08:26:18		FAD			1	0	0	FAD	0	0	0
1611	DOC-2024-1056	05-1026	1156	\N	\N	\N	2456000	i	50202020-00	2A1-105	999	1	1056	2024-05-27 08:00:57	2024-05-27 08:04:14		FAD			1	0	0	FAD	0	0	0
1768	DOC-2024-1179	05-1151	1055	\N	\N	\N	225640	i	50202020-00	2A1-105	122	1	1179	2024-05-28 07:14:42	2024-05-28 08:01:06		FAD			1	0	0	FAD	0	0	0
1502	DOC-2024-0975	05-0954	3483	\N	\N	\N	111904		50101010-01	1A1	122	1	975	2024-05-08 04:24:46	2024-05-08 04:51:46		FAD			1	0	0	FAD	0	0	0
1503	DOC-2024-0975	05-0954	3483	\N	\N	\N	28088.5		50101010-01	2A1-1	122	1	975	2024-05-08 04:24:46	2024-05-08 04:51:46		FAD			1	0	0	FAD	0	0	0
1504	DOC-2024-0975	05-0954	3483	\N	\N	\N	76410		50101010-01	2A1-2	122	1	975	2024-05-08 04:24:46	2024-05-08 04:51:46		FAD			1	0	0	FAD	0	0	0
1531	DOC-2024-0989	05-0972	3581	\N	\N	\N	111245	d	50202020-00	2A1-104	999	1	989	2024-05-08 04:34:47	2024-05-08 04:48:08		FAD			1	0	0	FAD	0	0	0
1715	DOC-2024-1136	05-1108	3483	\N	\N	\N	963000	a	50202020-00	2A1-101	122	1	1136	2024-05-27 10:08:43	2024-05-27 10:10:18		FAD			1	0	0	FAD	0	0	0
821	DOC-2024-0471	03-0464	3302	\N	\N	\N	23706.13		50205020-02	1A1	122	1	471	2024-03-15 03:58:47	2024-03-15 04:07:56		FAD			1	0	0	FAD	0	0	0
446	DOC-2024-0213	02-0212	1184	\N	\N	\N	579000		50202020-00	2A1-104	999	1	213	2024-02-28 10:01:11	2024-03-04 03:24:36		FAD			1	0	0	FAD	0	0	0
674	DOC-2024-0379	02-0378	2765	\N	\N	\N	110374.02		50202020-00	2A1-104	999	1	379	2024-03-04 06:53:48	2024-03-04 07:37:08		FAD			1	0	0	FAD	0	0	0
671	DOC-2024-0377	02-0376	1103	\N	\N	\N	729472.5		50202020-00	2A1-104	999	1	377	2024-03-04 06:52:42	2024-03-04 07:37:18		FAD			1	0	0	FAD	0	0	0
1582	DOC-2024-1035	05-1006	1122	\N	\N	\N	557131	d	50202020-00	2A1-104	122	1	1035	2024-05-24 05:12:09	2024-05-24 05:14:10		FAD			1	0	0	FAD	0	0	0
1659	DOC-2024-1096	05-1067	2616	\N	\N	\N	19836		50101010-01	2A2	122	1	1096	2024-05-27 09:37:31	2024-05-27 09:40:09		FAD			1	0	0	FAD	0	0	0
1635	DOC-2024-1076	05-1047	3157	\N	\N	\N	95998	k	50202020-00	2A1-AC (GAD)	122	1	1076	2024-05-27 08:21:23	2024-05-27 08:25:09		FAD			1	0	0	FAD	0	0	0
1487	DOC-2024-0968	05-0943	2727	\N	\N	\N	20000	o	50202020-00	2A1-AC (FAD)	122	1	968	2024-05-08 03:45:48	2024-05-08 04:22:16		FAD			1	0	0	FAD	0	0	0
1828	DOC-2024-1211	05-1186	3483	\N	\N	\N	32217.68	e	50202020-00	2A1-101 (RA10612)	122	1	1211	2024-05-28 08:11:43	2024-05-28 08:25:06		FAD			1	0	0	FAD	0	0	0
1794	DOC-2024-1194	05-1169	1035	\N	\N	\N	5833695.18	b	50202020-00	2A1-101	122	1	1194	2024-05-28 07:37:19	2024-05-28 07:50:46		FAD			1	0	0	FAD	0	0	0
1796	DOC-2024-1194	05-1169	1035	\N	\N	\N	1124000		50202020-00	2A1-102	122	1	1194	2024-05-28 07:37:19	2024-05-28 07:50:46		FAD			1	0	0	FAD	0	0	0
1795	DOC-2024-1194	05-1169	1035	\N	\N	\N	438000	e	50202020-00	2A1-101 (RA10612)	122	1	1194	2024-05-28 07:37:19	2024-05-28 07:50:46		FAD			1	0	0	FAD	0	0	0
1829	DOC-2024-1211	05-1186	3483	\N	\N	\N	301731.67		50202020-00	2A1-102	122	1	1211	2024-05-28 08:11:43	2024-05-28 08:25:06		FAD			1	0	0	FAD	0	0	0
1874	DOC-2024-1240	05-1215	3498	\N	\N	\N	2400		50103020 (732)	2A2-A	122	1	1240	2024-05-30 09:52:07	2024-05-30 09:55:38		FAD			1	0	0	FAD	0	0	0
1875	DOC-2024-1240	05-1215	3498	\N	\N	\N	2200		50103020 (732)	2A2-B	122	1	1240	2024-05-30 09:52:07	2024-05-30 09:55:38		FAD			1	0	0	FAD	0	0	0
1914	DOC-2024-1257	05-1243	3494	\N	\N	\N	3858.4		50103010 (731)	2A1-2	122	1	1257	2024-05-30 10:28:32	2024-05-30 10:28:44		FAD			1	0	0	FAD	0	0	0
662	DOC-2024-0372	02-0371	3483	\N	\N	\N	960000		50202020-00	2A1-104	999	1	372	2024-03-04 06:48:52	2024-03-04 07:37:45		FAD			1	0	0	FAD	0	0	0
1070	DOC-2024-0642	04-0623	3483	\N	\N	\N	126000		50102040-01	1A1	122	1	642	2024-04-17 02:58:35	2024-04-17 03:36:26		FAD			1	0	0	FAD	0	0	0
1071	DOC-2024-0642	04-0623	3483	\N	\N	\N	28000		50102040-01	2A1-1	122	1	642	2024-04-17 02:58:35	2024-04-17 03:36:26		FAD			1	0	0	FAD	0	0	0
1072	DOC-2024-0642	04-0623	3483	\N	\N	\N	63000		50102040-01	2A1-2	122	1	642	2024-04-17 02:58:35	2024-04-17 03:36:26		FAD			1	0	0	FAD	0	0	0
1073	DOC-2024-0642	04-0623	3483	\N	\N	\N	147000		50102040-01	2A2	122	1	642	2024-04-17 02:58:35	2024-04-17 03:36:26		FAD			1	0	0	FAD	0	0	0
1103	DOC-2024-0670	\N	3483	\N	\N	\N	2906967.59		50202020-00	2A1-104	999	0	670	2024-04-17 03:42:53	\N		FAD			0	0	0	FAD	0	0	0
1167	DOC-2024-0727	04-0712	1022	\N	\N	\N	20505		50202020-00	2A1-101	999	1	727	2024-04-17 04:24:00	2024-04-17 04:31:06		FAD			1	0	0	FAD	0	0	0
1168	DOC-2024-0727	04-0712	1022	\N	\N	\N	20000		50202020-00	2A1-102	999	1	727	2024-04-17 04:24:00	2024-04-17 04:31:06		FAD			1	0	0	FAD	0	0	0
1135	DOC-2024-0699	04-0681	1143	\N	\N	\N	1903000		50202020-00	2A1-105	122	1	699	2024-04-17 04:09:16	2024-04-17 04:38:05		FAD			1	0	0	FAD	0	0	0
1201	DOC-2024-0754	04-0737	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	754	2024-04-29 04:32:08	2024-04-29 04:34:37		FAD			1	0	0	FAD	0	0	0
1227	DOC-2024-0779	04-0762	1021	\N	\N	\N	257205		50202020-00	2A1-101	122	1	779	2024-04-29 04:48:56	2024-04-29 04:50:49		FAD			1	0	0	FAD	0	0	0
1228	DOC-2024-0779	04-0762	1021	\N	\N	\N	20000		50202020-00	2A1-102	122	1	779	2024-04-29 04:48:56	2024-04-29 04:50:49		FAD			1	0	0	FAD	0	0	0
1253	DOC-2024-0804	04-0793	3489	\N	\N	\N	23449		50201010-00	1A1	999	1	804	2024-04-29 07:16:16	2024-04-29 07:21:35		FAD			1	0	0	FAD	0	0	0
1283	DOC-2024-0829	04-0820	1449	\N	\N	\N	23050		50202020-00	2A1-101	122	1	829	2024-04-29 07:37:09	2024-04-29 07:39:51		FAD			1	0	0	FAD	0	0	0
1310	DOC-2024-0853	04-0849	3527	\N	\N	\N	2840000		50202020-00	2A1-104	122	1	853	2024-04-29 09:19:43	2024-04-29 09:21:31		FAD			1	0	0	FAD	0	0	0
1341	DOC-2024-0877	04-0866	2465	\N	\N	\N	45579.47		50202020-00	2A1-101	122	1	877	2024-04-29 10:22:58	2024-04-29 10:23:42		FAD			1	0	0	FAD	0	0	0
1385	DOC-2024-0903	04-0907	2857	\N	\N	\N	3450		50202020-00	2A1-101	122	1	903	2024-04-30 02:45:01	2024-04-30 02:49:45		FAD			1	0	0	FAD	0	0	0
1424	DOC-2024-0931	04-0933	3507	\N	\N	\N	46784.38		50202020-00	2A1-104	122	1	931	2024-04-30 04:43:42	2024-04-30 04:51:02		FAD			1	0	0	FAD	0	0	0
1455	DOC-2024-0953	04-0916	1036	\N	\N	\N	60000		50202020-00	2A1-101	122	1	953	2024-05-02 04:11:22	2024-05-02 04:11:58		FAD			1	0	0	FAD	0	0	0
1488	DOC-2024-0969	05-0944	1111	\N	\N	\N	59800	g	50202020-00	2A1-101 (Patriot)	122	1	969	2024-05-08 03:46:16	2024-05-08 04:22:25		FAD			1	0	0	FAD	0	0	0
1823	DOC-2024-1207	05-1182	3483	\N	\N	\N	193000	j	50202020-00	2A1-106	122	1	1207	2024-05-28 08:09:27	2024-05-28 08:26:11		FAD			1	0	0	FAD	0	0	0
1584	DOC-2024-1036	05-1007	1021	\N	\N	\N	82000	e	50202020-00	2A1-101 (RA10612)	122	1	1036	2024-05-24 05:13:28	2024-05-24 05:14:19		FAD			1	0	0	FAD	0	0	0
1754	DOC-2024-1167	05-1139	3483	\N	\N	\N	544547.19	b	50202020-00	2A1-101	122	1	1167	2024-05-27 10:32:46	2024-05-27 10:36:14		FAD			1	0	0	FAD	0	0	0
1660	DOC-2024-1097	05-1068	145	\N	\N	\N	182690	n	50202020-00	2A1-AC (POSTER)	122	1	1097	2024-05-27 09:37:57	2024-05-27 09:40:17		FAD			1	0	0	FAD	0	0	0
597	DOC-2024-0327	02-0327	1103	\N	\N	\N	50491.46		50202020-00	2A1-104	999	1	327	2024-03-04 03:50:45	2024-03-04 07:43:23		FAD			1	0	0	FAD	0	0	0
547	DOC-2024-0285	02-0285	1122	\N	\N	\N	1127339		50202020-00	2A1-104	999	1	285	2024-02-28 11:01:50	2024-03-04 03:05:40		FAD			1	0	0	FAD	0	0	0
538	DOC-2024-0276	02-0276	1103	\N	\N	\N	56696		50202020-00	2A1-104	999	1	276	2024-02-28 10:53:05	2024-03-04 03:06:54		FAD			1	0	0	FAD	0	0	0
1585	DOC-2024-1036	05-1007	1021	\N	\N	\N	1578500		50202020-00	2A1-102	122	1	1036	2024-05-24 05:13:28	2024-05-24 05:14:19		FAD			1	0	0	FAD	0	0	0
1716	DOC-2024-1137	05-1109	2752	\N	\N	\N	50000	m	50202020-00	2A1-AC (Scholar Grad)	122	1	1137	2024-05-27 10:08:59	2024-05-27 10:10:11		FAD			1	0	0	FAD	0	0	0
1636	DOC-2024-1077	05-1048	2709	\N	\N	\N	15045.71	e	50202020-00	2A1-104	122	1	1077	2024-05-27 08:21:45	2024-05-27 08:25:18		FAD			1	0	0	FAD	0	0	0
1667	DOC-2024-1104	05-1075	3198	\N	\N	\N	978800	s	50202020-00	2A1-AC (Linkages)	999	1	1104	2024-05-27 09:43:49	2024-05-27 09:51:14		FAD			1	0	0	FAD	0	0	0
1555	DOC-2024-1010	05-0962	3483	\N	\N	\N	187546.79	a	50202020-00	2A1-101	122	1	1010	2024-05-13 05:15:10	2024-05-13 07:30:48		FAD			1	0	0	FAD	0	0	0
1840	DOC-2024-1221	05-1196	2879	\N	\N	\N	12000	p	50202020-00	2A1-AC (HR)	122	1	1221	2024-05-30 09:11:13	2024-05-30 10:05:43		FAD			1	0	0	FAD	0	0	0
1756	DOC-2024-1167	05-1139	3483	\N	\N	\N	1005572.49		50202020-00	2A1-102	122	1	1167	2024-05-27 10:32:46	2024-05-27 10:36:14		FAD			1	0	0	FAD	0	0	0
1733	DOC-2024-1151	05-1123	2730	\N	\N	\N	95986.32		50101010-01	1A1	122	1	1151	2024-05-27 10:27:34	2024-05-27 10:38:23		FAD			1	0	0	FAD	0	0	0
1734	DOC-2024-1151	05-1123	2730	\N	\N	\N	1181.82		50102010-01	1A1	122	1	1151	2024-05-27 10:27:34	2024-05-27 10:38:23		FAD			1	0	0	FAD	0	0	0
1612	DOC-2024-1057	05-1027	1051	\N	\N	\N	4518000	i	50202020-00	2A1-105	999	1	1057	2024-05-27 08:01:45	2024-05-27 08:04:24		FAD			1	0	0	FAD	0	0	0
1583	DOC-2024-1036	05-1007	1021	\N	\N	\N	4474622	a	50202020-00	2A1-101	122	1	1036	2024-05-24 05:13:28	2024-05-24 05:14:19		FAD			1	0	0	FAD	0	0	0
1737	DOC-2024-1151	05-1123	2730	\N	\N	\N	900		50102050-02	1A1	122	1	1151	2024-05-27 10:27:34	2024-05-27 10:38:23		FAD			1	0	0	FAD	0	0	0
1738	DOC-2024-1151	05-1123	2730	\N	\N	\N	295.45		50102060-03	1A1	122	1	1151	2024-05-27 10:27:34	2024-05-27 10:38:23		FAD			1	0	0	FAD	0	0	0
1735	DOC-2024-1151	05-1123	2730	\N	\N	\N	17500		50102020-00	1A1	122	1	1151	2024-05-27 10:27:34	2024-05-27 10:38:23		FAD			1	0	0	FAD	0	0	0
1736	DOC-2024-1151	05-1123	2730	\N	\N	\N	21351.38		50102110-01	1A1	122	1	1151	2024-05-27 10:27:34	2024-05-27 10:38:23		FAD			1	0	0	FAD	0	0	0
1797	DOC-2024-1195	05-1170	1047	\N	\N	\N	3223057.18	b	50202020-00	2A1-101	122	1	1195	2024-05-28 07:38:08	2024-05-28 07:50:37		FAD			1	0	0	FAD	0	0	0
1755	DOC-2024-1167	05-1139	3483	\N	\N	\N	20070	e	50202020-00	2A1-101 (RA10612)	122	1	1167	2024-05-27 10:32:46	2024-05-27 10:36:14		FAD			1	0	0	FAD	0	0	0
1074	DOC-2024-0643	04-0624	2747	\N	\N	\N	4753		50202010-02	2A2B-101	122	1	643	2024-04-17 02:59:13	2024-04-17 03:36:11		FAD			1	0	0	FAD	0	0	0
1104	DOC-2024-0671	04-0652	3483	\N	\N	\N	2906967.59		50202020-00	2A1-104	999	1	671	2024-04-17 03:43:37	2024-04-17 03:49:55		FAD			1	0	0	FAD	0	0	0
1105	DOC-2024-0671	04-0652	3483	\N	\N	\N	450930.88		50202020-00	2A1-103	999	1	671	2024-04-17 03:43:37	2024-04-17 03:49:55		FAD			1	0	0	FAD	0	0	0
613	DOC-2024-0342	02-0342	2857	\N	\N	\N	2985		50202020-00	2A1-104	999	1	342	2024-03-04 03:59:31	2024-03-04 07:41:31		FAD			1	0	0	FAD	0	0	0
598	DOC-2024-0328	02-0328	2756	\N	\N	\N	107583.36		50202020-00	2A1-104	999	1	328	2024-03-04 03:51:24	2024-03-04 07:43:18		FAD			1	0	0	FAD	0	0	0
1169	DOC-2024-0728	04-0713	3483	\N	\N	\N	382323.04		50202020-00	2A1-101	999	1	728	2024-04-17 04:25:11	2024-04-17 04:30:53		FAD			1	0	0	FAD	0	0	0
1170	DOC-2024-0728	04-0713	3483	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	999	1	728	2024-04-17 04:25:11	2024-04-17 04:30:53		FAD			1	0	0	FAD	0	0	0
1171	DOC-2024-0728	04-0713	3483	\N	\N	\N	449296.38		50202020-00	2A1-102	999	1	728	2024-04-17 04:25:11	2024-04-17 04:30:53		FAD			1	0	0	FAD	0	0	0
1136	DOC-2024-0700	04-0682	1206	\N	\N	\N	24308000		50202020-00	2A1-105	122	1	700	2024-04-17 04:09:36	2024-04-17 04:37:54		FAD			1	0	0	FAD	0	0	0
1202	DOC-2024-0755	04-0738	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	755	2024-04-29 04:32:27	2024-04-29 04:34:45		FAD			1	0	0	FAD	0	0	0
1229	DOC-2024-0780	04-0763	3483	\N	\N	\N	29724963.25		50202020-00	2A1-104	122	1	780	2024-04-29 04:49:15	2024-04-29 04:51:01		FAD			1	0	0	FAD	0	0	0
1254	DOC-2024-0805	04-0794	3483	\N	\N	\N	2239196.84		50202020-00	2A1-AC	999	1	805	2024-04-29 07:17:06	2024-04-29 07:21:45		FAD			1	0	0	FAD	0	0	0
1255	DOC-2024-0805	04-0794	3483	\N	\N	\N	22287.27		50211990-00	PD 997	999	1	805	2024-04-29 07:17:06	2024-04-29 07:21:45		FAD			1	0	0	FAD	0	0	0
1284	DOC-2024-0830	04-0821	3568	\N	\N	\N	54000		50202020-00	2A1-104	999	1	830	2024-04-29 07:37:52	2024-04-29 07:41:05		FAD			1	0	0	FAD	0	0	0
1311	DOC-2024-0854	04-0851	1067	\N	\N	\N	2432000		50202020-00	2A1-104	122	1	854	2024-04-29 09:24:09	2024-04-29 09:28:26		FAD			1	0	0	FAD	0	0	0
1342	DOC-2024-0878	04-0867	2224	\N	\N	\N	24861.53		50202020-00	2A1-101	122	1	878	2024-04-29 10:23:17	2024-04-29 10:23:50		FAD			1	0	0	FAD	0	0	0
779	DOC-2024-0441	03-0429	1067	\N	\N	\N	918000		50202020-00	2A1-104	122	1	441	2024-03-15 03:28:09	2024-03-15 03:43:32		FAD			1	0	0	FAD	0	0	0
1386	DOC-2024-0904	04-0909	3302	\N	\N	\N	49228.6		50205020-02	1A1	122	1	904	2024-04-30 02:45:22	2024-04-30 02:49:57		FAD			1	0	0	FAD	0	0	0
1425	DOC-2024-0932	04-0934	3506	\N	\N	\N	66758.12		50202020-00	2A1-104	122	1	932	2024-04-30 04:44:05	2024-04-30 04:51:10		FAD			1	0	0	FAD	0	0	0
1456	DOC-2024-0954	04-0917	1206	\N	\N	\N	217360		50202020-00	2A1-105	122	1	954	2024-05-02 04:11:39	2024-05-02 04:12:06		FAD			1	0	0	FAD	0	0	0
1613	DOC-2024-1058	05-1028	1119	\N	\N	\N	720000	i	50202020-00	2A1-105	999	1	1058	2024-05-27 08:02:09	2024-05-27 08:04:46		FAD			1	0	0	FAD	0	0	0
1723	DOC-2024-1143	05-1115	1042	\N	\N	\N	397400	b	50202020-00	2A1-101	122	1	1143	2024-05-27 10:16:24	2024-05-27 10:41:45		FAD			1	0	0	FAD	0	0	0
1800	DOC-2024-1196	05-1171	1039	\N	\N	\N	14567701.18	c	50202020-00	2A1-101	122	1	1196	2024-05-28 07:39:05	2024-05-28 07:50:29		FAD			1	0	0	FAD	0	0	0
1739	DOC-2024-1152	05-1124	2860	\N	\N	\N	120358.20	1	50212020-00	1A1	122	1	1152	2024-05-27 10:27:53	2024-05-27 10:38:14		FAD			1	0	0	FAD	0	0	0
1489	DOC-2024-0970	05-0947	3518	\N	\N	\N	19194	p	50202020-00	2A1-AC (HR)	122	1	970	2024-05-08 03:46:36	2024-05-08 04:22:37		FAD			1	0	0	FAD	0	0	0
1801	DOC-2024-1196	05-1171	1039	\N	\N	\N	2230000	e	50202020-00	2A1-101 (RA10612)	122	1	1196	2024-05-28 07:39:05	2024-05-28 07:50:29		FAD			1	0	0	FAD	0	0	0
788	DOC-2024-0450	03-0439	1049	\N	\N	\N	2500		50202010-02	2A2B-107	122	1	450	2024-03-15 03:33:40	2024-03-15 03:41:58		FAD			1	0	0	FAD	0	0	0
769	DOC-2024-0431	03-0419	2619	\N	\N	\N	426		50202020-00	2A1-104	122	1	431	2024-03-15 03:19:27	2024-03-15 03:45:49		FAD			1	0	0	FAD	0	0	0
768	DOC-2024-0430	03-0418	3483	\N	\N	\N	742809.62		50202020-00	2A1-102	122	1	430	2024-03-15 03:19:06	2024-03-15 03:45:56		FAD			1	0	0	FAD	0	0	0
761	DOC-2024-0428	03-0416	3483	\N	\N	\N	147668.62		50202020-00	2A1-102	122	1	428	2024-03-15 03:16:35	2024-03-15 03:46:12		FAD			1	0	0	FAD	0	0	0
751	DOC-2024-0421	03-0409	2885	\N	\N	\N	98940		50202010-02	2A2B-105	122	1	421	2024-03-15 03:04:03	2024-03-15 03:47:14		FAD			1	0	0	FAD	0	0	0
737	DOC-2024-0412	03-0407	3483	\N	\N	\N	107598.75		50101010-01	1A1	999	1	412	2024-03-11 08:11:40	2024-03-15 03:47:31		FAD			1	0	0	FAD	0	0	0
738	DOC-2024-0412	03-0407	3483	\N	\N	\N	27988		50101010-01	2A1-1	999	1	412	2024-03-11 08:11:40	2024-03-15 03:47:31		FAD			1	0	0	FAD	0	0	0
1556	DOC-2024-1011	05-0965	3291	\N	\N	\N	857102	a	50202020-00	2A1-101	122	1	1011	2024-05-13 05:16:16	2024-05-13 07:31:06		FAD			1	0	0	FAD	0	0	0
1717	DOC-2024-1138	05-1110	3175	\N	\N	\N	108000		50202010-02	2A2B-105	122	1	1138	2024-05-27 10:09:22	2024-05-27 10:10:04		FAD			1	0	0	FAD	0	0	0
1681	DOC-2024-1118	05-1090	2696	\N	\N	\N	8460	e	50202020-00	2A1-104	122	1	1118	2024-05-27 09:52:05	2024-05-27 10:13:39		FAD			1	0	0	FAD	0	0	0
1770	DOC-2024-1181	05-1156	2714	\N	\N	\N	1800	1	50210030-00	1A1	122	1	1181	2024-05-28 07:15:38	2024-05-28 07:53:17		FAD			1	0	0	FAD	0	0	0
1637	DOC-2024-1078	05-1049	3330	\N	\N	\N	445000	q	50202020-00	2A1-AC (Planning)	122	1	1078	2024-05-27 08:22:25	2024-05-27 08:25:24		FAD			1	0	0	FAD	0	0	0
1802	DOC-2024-1196	05-1171	1039	\N	\N	\N	4974000		50202020-00	2A1-102	122	1	1196	2024-05-28 07:39:05	2024-05-28 07:50:29		FAD			1	0	0	FAD	0	0	0
1661	DOC-2024-1098	05-1069	3483	\N	\N	\N	287222.95	j	50202020-00	2A1-106	122	1	1098	2024-05-27 09:38:22	2024-05-27 09:40:25		FAD			1	0	0	FAD	0	0	0
1586	DOC-2024-1037	05-1008	3168	\N	\N	\N	25308.14	1	50204010-00	1A1	122	1	1037	2024-05-24 05:14:48	2024-05-24 05:17:05		FAD			1	0	0	FAD	0	0	0
1533	DOC-2024-0991	05-0977	3483	\N	\N	\N	1849000	a	50202020-00	2A1-101	122	1	991	2024-05-08 04:36:19	2024-05-08 04:47:27		FAD			1	0	0	FAD	0	0	0
1867	DOC-2024-1239	05-1214	3279	\N	\N	\N	4323.03		50103030 (733)	2A1-1	122	1	1239	2024-05-30 09:51:03	2024-05-30 09:55:47		FAD			1	0	0	FAD	0	0	0
1868	DOC-2024-1239	05-1214	3279	\N	\N	\N	11960.62		50103030 (733)	2A1-2	122	1	1239	2024-05-30 09:51:03	2024-05-30 09:55:47		FAD			1	0	0	FAD	0	0	0
1824	DOC-2024-1208	05-1183	3486	\N	\N	\N	43348.57	1	50203090-00	1A1	122	1	1208	2024-05-28 08:09:51	2024-05-28 08:25:41		FAD			1	0	0	FAD	0	0	0
739	DOC-2024-0412	03-0407	3483	\N	\N	\N	70866.75		50101010-01	2A1-2	999	1	412	2024-03-11 08:11:40	2024-03-15 03:47:31		FAD			1	0	0	FAD	0	0	0
1075	DOC-2024-0644	04-0625	2747	\N	\N	\N	1937		50202010-02	2A2B-101	122	1	644	2024-04-17 02:59:38	2024-04-17 03:35:57		FAD			1	0	0	FAD	0	0	0
1106	DOC-2024-0672	04-0653	3483	\N	\N	\N	74000		50202020-00	2A1-102	999	1	672	2024-04-17 03:43:53	2024-04-17 03:49:47		FAD			1	0	0	FAD	0	0	0
1172	DOC-2024-0729	04-0714	3038	\N	\N	\N	27470		50202010-02	2A2B-102	999	1	729	2024-04-17 04:26:11	2024-04-17 04:30:41		FAD			1	0	0	FAD	0	0	0
1173	DOC-2024-0729	04-0714	3038	\N	\N	\N	21620		50202010-02	2A2B-103	999	1	729	2024-04-17 04:26:11	2024-04-17 04:30:41		FAD			1	0	0	FAD	0	0	0
1137	DOC-2024-0701	04-0683	1196	\N	\N	\N	3336000		50202020-00	2A1-105	122	1	701	2024-04-17 04:10:01	2024-04-17 04:37:37		FAD			1	0	0	FAD	0	0	0
1174	DOC-2024-0729	04-0714	3038	\N	\N	\N	248000		50202020-00	2A1-AC	999	1	729	2024-04-17 04:26:11	2024-04-17 04:30:41		FAD			1	0	0	FAD	0	0	0
1203	DOC-2024-0756	04-0739	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	756	2024-04-29 04:32:43	2024-04-29 04:34:52		FAD			1	0	0	FAD	0	0	0
1230	DOC-2024-0781	04-0764	2675	\N	\N	\N	1620		50202020-00	2A1-AC (GAD)	122	1	781	2024-04-29 04:49:32	2024-04-29 04:51:10		FAD			1	0	0	FAD	0	0	0
1256	DOC-2024-0806	04-0795	2730	\N	\N	\N	10819.26		50205020-01	1A1	999	1	806	2024-04-29 07:17:29	2024-04-29 07:21:55		FAD			1	0	0	FAD	0	0	0
1285	DOC-2024-0831	04-0822	523	\N	\N	\N	457053.12		50202020-00	2A1-104	122	1	831	2024-04-29 07:41:43	2024-04-29 08:00:50		FAD			1	0	0	FAD	0	0	0
1312	DOC-2024-0855	04-0852	1122	\N	\N	\N	22692000		50202020-00	2A1-104	122	1	855	2024-04-29 09:24:26	2024-04-29 09:28:35		FAD			1	0	0	FAD	0	0	0
1343	DOC-2024-0879	04-0868	2514	\N	\N	\N	24861.53		50202020-00	2A1-101	122	1	879	2024-04-29 10:23:33	2024-04-29 10:23:58		FAD			1	0	0	FAD	0	0	0
1387	DOC-2024-0905	04-0910	3484	\N	\N	\N	6599		50202020-00	2A1-101	122	1	905	2024-04-30 02:46:39	2024-04-30 02:50:09		FAD			1	0	0	FAD	0	0	0
1388	DOC-2024-0905	04-0910	3484	\N	\N	\N	26553		50202020-00	2A1-104	122	1	905	2024-04-30 02:46:39	2024-04-30 02:50:09		FAD			1	0	0	FAD	0	0	0
1389	DOC-2024-0905	04-0910	3484	\N	\N	\N	53269		50202020-00	2A1-AC	122	1	905	2024-04-30 02:46:39	2024-04-30 02:50:09		FAD			1	0	0	FAD	0	0	0
1390	DOC-2024-0905	04-0910	3484	\N	\N	\N	33466		50202020-00	2A1-AC	122	1	905	2024-04-30 02:46:39	2024-04-30 02:50:09		FAD			1	0	0	FAD	0	0	0
1391	DOC-2024-0905	04-0910	3484	\N	\N	\N	29004		50202020-00	2A1-AC	122	1	905	2024-04-30 02:46:39	2024-04-30 02:50:09		FAD			1	0	0	FAD	0	0	0
1392	DOC-2024-0905	04-0910	3484	\N	\N	\N	12625		50202020-00	2A1-101	122	1	905	2024-04-30 02:46:39	2024-04-30 02:50:09		FAD			1	0	0	FAD	0	0	0
1426	DOC-2024-0933	04-0935	3483	\N	\N	\N	89100		50202020-00	2A1-103	122	1	933	2024-04-30 04:44:21	2024-04-30 04:51:18		FAD			1	0	0	FAD	0	0	0
1457	DOC-2024-0955	04-0918	1051	\N	\N	\N	118400		50202020-00	2A1-105	122	1	955	2024-05-02 04:12:27	2024-05-02 04:12:36		FAD			1	0	0	FAD	0	0	0
1705	DOC-2024-1127	05-1099	1114	\N	\N	\N	8758000	c	50202020-00	2A1-103	122	1	1127	2024-05-27 10:05:35	2024-05-27 10:12:01		FAD			1	0	0	FAD	0	0	0
1740	DOC-2024-1153	05-1125	3483	\N	\N	\N	44250	n	50202020-00	2A1-AC (POSTER)	122	1	1153	2024-05-27 10:28:10	2024-05-27 10:38:06		FAD			1	0	0	FAD	0	0	0
1803	DOC-2024-1197	05-1172	1034	\N	\N	\N	4589695.18	c	50202020-00	2A1-101	122	1	1197	2024-05-28 07:39:59	2024-05-28 07:50:20		FAD			1	0	0	FAD	0	0	0
1534	DOC-2024-0992	05-0978	3483	\N	\N	\N	1970912.24	d	50202020-00	2A1-104	122	1	992	2024-05-08 04:36:40	2024-05-08 04:47:41		FAD			1	0	0	FAD	0	0	0
740	DOC-2024-0412	03-0407	3483	\N	\N	\N	148195.75		50101010-01	2A2	999	1	412	2024-03-11 08:11:40	2024-03-15 03:47:31		FAD			1	0	0	FAD	0	0	0
734	DOC-2024-0411	03-0406	3483	\N	\N	\N	27988		50101010-01	2A1-1	999	1	411	2024-03-11 08:09:29	2024-03-15 03:47:40		FAD			1	0	0	FAD	0	0	0
1614	DOC-2024-1059	05-1029	2736	\N	\N	\N	16999	q	50202020-00	2A1-AC (Planning)	999	1	1059	2024-05-27 08:02:31	2024-05-27 08:05:00		FAD			1	0	0	FAD	0	0	0
1638	DOC-2024-1079	05-1050	3591	\N	\N	\N	450000	g	50202020-00	2A1-101 (Patriot)	999	1	1079	2024-05-27 08:23:25	2024-05-27 08:25:32		FAD			1	0	0	FAD	0	0	0
1682	DOC-2024-1119	05-1091	3483	\N	\N	\N	179694.82	b	50202020-00	2A1-101	122	1	1119	2024-05-27 09:52:21	2024-05-27 10:13:23		FAD			1	0	0	FAD	0	0	0
1804	DOC-2024-1197	05-1172	1034	\N	\N	\N	360000	e	50202020-00	2A1-101 (RA10612)	122	1	1197	2024-05-28 07:39:59	2024-05-28 07:50:20		FAD			1	0	0	FAD	0	0	0
1557	DOC-2024-1012	05-0969	2809	\N	\N	\N	972000	s	50202020-00	2A1-AC (Linkages)	122	1	1012	2024-05-13 07:31:52	2024-05-13 07:32:01		FAD			1	0	0	FAD	0	0	0
1490	DOC-2024-0971	05-0948	3518	\N	\N	\N	19400	p	50202020-00	2A1-AC (HR)	122	1	971	2024-05-08 03:46:53	2024-05-08 04:22:51		FAD			1	0	0	FAD	0	0	0
1805	DOC-2024-1197	05-1172	1034	\N	\N	\N	496000		50202020-00	2A1-102	122	1	1197	2024-05-28 07:39:59	2024-05-28 07:50:20		FAD			1	0	0	FAD	0	0	0
1662	DOC-2024-1099	05-1070	3540	\N	\N	\N	99977.61	j	50202020-00	2A1-106	122	1	1099	2024-05-27 09:38:47	2024-05-27 09:40:39		FAD			1	0	0	FAD	0	0	0
1587	DOC-2024-1038	05-1009	3494	\N	\N	\N	4335.53	1	50215030-00	1A1	122	1	1038	2024-05-24 05:15:10	2024-05-24 05:17:15		FAD			1	0	0	FAD	0	0	0
1869	DOC-2024-1239	05-1214	3279	\N	\N	\N	13705.72		50103030 (733)	2A2-A	122	1	1239	2024-05-30 09:51:03	2024-05-30 09:55:47		FAD			1	0	0	FAD	0	0	0
1825	DOC-2024-1209	05-1184	3545	\N	\N	\N	236982	c	50202020-00	2A1-101	122	1	1209	2024-05-28 08:10:11	2024-05-28 08:25:31		FAD			1	0	0	FAD	0	0	0
1722	DOC-2024-1142	05-1114	3319	\N	\N	\N	304657.34	s	50202020-00	2A1-AC (Linkages)	122	1	1142	2024-05-27 10:15:30	2024-05-27 10:41:53		FAD			1	0	0	FAD	0	0	0
1844	DOC-2024-1223	05-1198	1044	\N	\N	\N	796000		50202020-00	2A1-102	122	1	1223	2024-05-30 09:12:43	2024-05-30 10:05:16		FAD			1	0	0	FAD	0	0	0
1863	DOC-2024-1238	05-1213	3498	\N	\N	\N	200		50103020 (732)	2A1-2	122	1	1238	2024-05-30 09:49:32	2024-05-30 09:56:02		FAD			1	0	0	FAD	0	0	0
1772	DOC-2024-1182	05-1157	3483	\N	\N	\N	26084.06		50211990-00	PD 997	122	1	1182	2024-05-28 07:16:23	2024-05-28 07:52:47		FAD			1	0	0	FAD	0	0	0
1771	DOC-2024-1182	05-1157	3483	\N	\N	\N	2616449.54	p	50202020-00	2A1-AC (HR)	122	1	1182	2024-05-28 07:16:23	2024-05-28 07:52:47		FAD			1	0	0	FAD	0	0	0
1843	DOC-2024-1223	05-1198	1044	\N	\N	\N	440000	e	50202020-00	2A1-101 (RA10612)	122	1	1223	2024-05-30 09:12:43	2024-05-30 10:05:16		FAD			1	0	0	FAD	0	0	0
735	DOC-2024-0411	03-0406	3483	\N	\N	\N	70866.75		50101010-01	2A1-2	999	1	411	2024-03-11 08:09:29	2024-03-15 03:47:40		FAD			1	0	0	FAD	0	0	0
736	DOC-2024-0411	03-0406	3483	\N	\N	\N	148195.75		50101010-01	2A2	999	1	411	2024-03-11 08:09:29	2024-03-15 03:47:40		FAD			1	0	0	FAD	0	0	0
1076	DOC-2024-0645	04-0626	3483	\N	\N	\N	10103000		50202020-00	2A1-101	122	1	645	2024-04-17 03:00:06	2024-04-17 03:35:46		FAD			1	0	0	FAD	0	0	0
1107	DOC-2024-0673	04-0654	3483	\N	\N	\N	5703000		50202020-00	2A1-102	999	1	673	2024-04-17 03:44:19	2024-04-17 03:49:30		FAD			1	0	0	FAD	0	0	0
1175	DOC-2024-0730	04-0717	1766	\N	\N	\N	33972.84		50202020-00	2A1-104	999	1	730	2024-04-17 04:26:34	2024-04-17 04:30:29		FAD			1	0	0	FAD	0	0	0
1138	DOC-2024-0702	04-0684	1195	\N	\N	\N	5369700		50202020-00	2A1-105	122	1	702	2024-04-17 04:10:21	2024-04-17 04:37:28		FAD			1	0	0	FAD	0	0	0
1204	DOC-2024-0757	04-0740	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	757	2024-04-29 04:33:03	2024-04-29 04:35:03		FAD			1	0	0	FAD	0	0	0
724	DOC-2024-0409	03-0404	3483	\N	\N	\N	549841.78		50101010-01	2A2	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
816	DOC-2024-0470	03-0463	3483	\N	\N	\N	7250		50102020-00	2A1-2	122	1	470	2024-03-15 03:56:07	2024-03-15 04:08:09		FAD			1	0	0	FAD	0	0	0
817	DOC-2024-0470	03-0463	3483	\N	\N	\N	12000		50102020-00	2A2	122	1	470	2024-03-15 03:56:07	2024-03-15 04:08:09		FAD			1	0	0	FAD	0	0	0
818	DOC-2024-0470	03-0463	3483	\N	\N	\N	6000		50102030-01	1A1	122	1	470	2024-03-15 03:56:07	2024-03-15 04:08:09		FAD			1	0	0	FAD	0	0	0
815	DOC-2024-0470	03-0463	3483	\N	\N	\N	23500		50102020-00	1A1	122	1	470	2024-03-15 03:56:07	2024-03-15 04:08:09		FAD			1	0	0	FAD	0	0	0
819	DOC-2024-0470	03-0463	3483	\N	\N	\N	6000		50102030-01	2A1-2	122	1	470	2024-03-15 03:56:07	2024-03-15 04:08:09		FAD			1	0	0	FAD	0	0	0
820	DOC-2024-0470	03-0463	3483	\N	\N	\N	12000		50102030-01	2A2	122	1	470	2024-03-15 03:56:07	2024-03-15 04:08:09		FAD			1	0	0	FAD	0	0	0
834	DOC-2024-0481	03-0479	3483	\N	\N	\N	61464.02		50102120-01	1A1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
835	DOC-2024-0481	03-0479	3483	\N	\N	\N	166309.92		50102110-01	1A1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
836	DOC-2024-0481	03-0479	3483	\N	\N	\N	47850		50102050-02	1A1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
837	DOC-2024-0481	03-0479	3483	\N	\N	\N	9272.72		50102060-03	1A1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
725	DOC-2024-0409	03-0404	3483	\N	\N	\N	36000		50102010-01	1A1	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
838	DOC-2024-0481	03-0479	3483	\N	\N	\N	10572.15		50102120-01	2A1-1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
240	DOC-2024-0103	01-0103	3483	\N	\N	\N	553805.78		50202020-00	2A1-101	999	1	103	2024-02-06 08:41:49	2024-02-07 05:07:35		FAD			1	0	0	FAD	0	0	0
919	DOC-2024-0539	03-0540	3279	\N	\N	\N	12147.11		50103030 (733)	2A2-B	122	1	539	2024-04-01 04:41:14	2024-04-01 07:42:25		FAD			1	0	0	FAD	0	0	0
949	DOC-2024-0564	03-0569	3484	\N	\N	\N	65240		50202020-00	2A2A-101	122	1	564	2024-04-01 04:58:53	2024-04-01 07:45:40		FAD			1	0	0	FAD	0	0	0
726	DOC-2024-0409	03-0404	3483	\N	\N	\N	8000		50102010-01	2A1-1	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
1231	DOC-2024-0782	04-0765	1192	\N	\N	\N	1332000		50202020-00	2A1-104	122	1	782	2024-04-29 04:51:38	2024-04-29 04:56:22		FAD			1	0	0	FAD	0	0	0
950	DOC-2024-0564	03-0569	3484	\N	\N	\N	258390		50202010-02	2A2B-101	122	1	564	2024-04-01 04:58:53	2024-04-01 07:45:40		FAD			1	0	0	FAD	0	0	0
951	DOC-2024-0564	03-0569	3484	\N	\N	\N	13244		50202010-02	2A2B-105	122	1	564	2024-04-01 04:58:53	2024-04-01 07:45:40		FAD			1	0	0	FAD	0	0	0
955	DOC-2024-0566	03-0571	3494	\N	\N	\N	53652.48		50103010 (731)	2A1-2	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
956	DOC-2024-0566	03-0571	3494	\N	\N	\N	61026.72		50103010 (731)	2A2-A	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
957	DOC-2024-0566	03-0571	3494	\N	\N	\N	58306.08		50103010 (731)	2A2-B	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
1257	DOC-2024-0807	04-0796	1042	\N	\N	\N	1021880		50202020-00	2A1-101	999	1	807	2024-04-29 07:17:56	2024-04-29 07:22:03		FAD			1	0	0	FAD	0	0	0
1286	DOC-2024-0832	04-0824	3569	\N	\N	\N	401117.5		50202020-00	2A1-104	999	1	832	2024-04-29 07:43:07	2024-04-29 08:00:39		FAD			1	0	0	FAD	0	0	0
1313	DOC-2024-0856	04-0853	1196	\N	\N	\N	17396000		50202020-00	2A1-104	122	1	856	2024-04-29 09:24:45	2024-04-29 09:28:44		FAD			1	0	0	FAD	0	0	0
1344	DOC-2024-0880	04-0878	1103	\N	\N	\N	1049059.13		50202020-00	2A1-104	122	1	880	2024-04-29 10:39:22	2024-04-29 10:43:25		FAD			1	0	0	FAD	0	0	0
245	DOC-2024-0105	01-0105	1044	\N	\N	\N	18803128		50202020-00	2A1-101	999	1	105	2024-02-06 08:44:18	2024-02-07 05:07:45		FAD			1	0	0	FAD	0	0	0
354	DOC-2024-0163	01-0162	3494	\N	\N	\N	1000		50103040 (734)	2A2-B	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
269	DOC-2024-0115	01-0115	3490	\N	\N	\N	45845.28		50202020-00	2A1-104	999	1	115	2024-02-06 08:55:26	\N		FAD			1	0	0	FAD	0	0	0
306	DOC-2024-0136	01-0136	1103	\N	\N	\N	471108.22		50202020-00	2A1-104	999	1	136	2024-02-06 09:26:48	\N		FAD			1	0	0	FAD	0	0	0
307	DOC-2024-0137	01-0137	1103	\N	\N	\N	627075.64		50202020-00	2A1-104	999	1	137	2024-02-06 09:27:17	\N		FAD			1	0	0	FAD	0	0	0
271	DOC-2024-0117	01-0117	2756	\N	\N	\N	20122.25		50202020-00	2A1-104	999	1	117	2024-02-06 08:56:15	\N		FAD			1	0	0	FAD	0	0	0
272	DOC-2024-0118	01-0118	2685	\N	\N	\N	100000		50202020-00	2A1-AC	999	1	118	2024-02-06 08:57:13	\N		FAD			1	0	0	FAD	0	0	0
273	DOC-2024-0119	01-0119	2730	\N	\N	\N	20122.25		50202020-00	2A1-104	999	1	119	2024-02-06 08:57:37	\N		FAD			1	0	0	FAD	0	0	0
452	DOC-2024-0219	02-0218	459	\N	\N	\N	14600		50202020-00	2A1-106	999	1	219	2024-02-28 10:03:32	2024-03-04 03:25:55		FAD			1	0	0	FAD	0	0	0
643	DOC-2024-0364	02-0363	2621	\N	\N	\N	1167		50202020-00	2A1-AC	999	1	364	2024-03-04 06:18:38	2024-03-04 07:38:37		FAD			1	0	0	FAD	0	0	0
570	DOC-2024-0304	02-0304	1129	\N	\N	\N	80000		50202020-00	2A1-101	999	1	304	2024-02-28 11:11:13	2024-03-04 02:55:37		FAD			1	0	0	FAD	0	0	0
741	DOC-2024-0413	02-0269	3526	\N	\N	\N	20800		50202020-00	2A1-AC (HR)	999	1	413	2024-03-13 04:09:46	2024-03-13 04:10:07		FAD			1	0	0	FAD	0	0	0
529	DOC-2024-0268	02-0267	3484	\N	\N	\N	59854		50202020-00	2A1-104	999	1	268	2024-02-28 10:49:21	2024-03-04 03:13:31		FAD			1	0	0	FAD	0	0	0
1393	DOC-2024-0906	04-0911	3167	\N	\N	\N	175120.15		50204020-00	1A1	122	1	906	2024-04-30 02:48:12	2024-04-30 02:50:20		FAD			1	0	0	FAD	0	0	0
1077	DOC-2024-0646	04-0627	1103	\N	\N	\N	155359.62		50202020-00	2A1-104	122	1	646	2024-04-17 03:00:47	2024-04-17 03:35:37		FAD			1	0	0	FAD	0	0	0
565	DOC-2024-0301	02-0301	3483	\N	\N	\N	248576.16		50202020-00	2A1-101	999	1	301	2024-02-28 11:10:18	2024-03-04 02:56:13		FAD			1	0	0	FAD	0	0	0
1108	DOC-2024-0674	04-0655	157	\N	\N	\N	200000		50202020-00	2A1-104	999	1	674	2024-04-17 03:44:41	2024-04-17 03:49:21		FAD			1	0	0	FAD	0	0	0
1176	DOC-2024-0731	04-0718	1024	\N	\N	\N	13095.25		50202020-00	2A1-102	999	1	731	2024-04-17 04:26:54	2024-04-17 04:30:14		FAD			1	0	0	FAD	0	0	0
1139	DOC-2024-0703	04-0685	1148	\N	\N	\N	1542000		50202020-00	2A1-105	122	1	703	2024-04-17 04:10:43	2024-04-17 04:37:16		FAD			1	0	0	FAD	0	0	0
1205	DOC-2024-0758	04-0741	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	758	2024-04-29 04:33:20	2024-04-29 04:35:25		FAD			1	0	0	FAD	0	0	0
1232	DOC-2024-0783	04-0767	3414	\N	\N	\N	334500		50202020-00	2A1-AC	122	1	783	2024-04-29 04:54:20	2024-04-29 04:56:31		FAD			1	0	0	FAD	0	0	0
1258	DOC-2024-0808	04-0797	1449	\N	\N	\N	3990		50202020-00	2A1-101	999	1	808	2024-04-29 07:18:20	2024-04-29 07:22:11		FAD			1	0	0	FAD	0	0	0
1287	DOC-2024-0833	04-0825	3483	\N	\N	\N	5907000		50202020-00	2A1-102	122	1	833	2024-04-29 07:54:24	2024-04-29 08:00:25		FAD			1	0	0	FAD	0	0	0
1314	DOC-2024-0857	04-0854	1200	\N	\N	\N	21164000		50202020-00	2A1-104	122	1	857	2024-04-29 09:25:05	2024-04-29 09:28:56		FAD			1	0	0	FAD	0	0	0
1345	DOC-2024-0881	04-0879	1103	\N	\N	\N	223969.15		50202020-00	2A1-104	122	1	881	2024-04-29 10:39:54	2024-04-29 10:43:36		FAD			1	0	0	FAD	0	0	0
1394	DOC-2024-0907	04-0912	1122	\N	\N	\N	8646000		50202020-00	2A1-101	122	1	907	2024-04-30 02:49:07	2024-04-30 02:50:34		FAD			1	0	0	FAD	0	0	0
1395	DOC-2024-0907	04-0912	1122	\N	\N	\N	495000		50202020-00	2A1-101 (RA10612)	122	1	907	2024-04-30 02:49:07	2024-04-30 02:50:34		FAD			1	0	0	FAD	0	0	0
1396	DOC-2024-0907	04-0912	1122	\N	\N	\N	6534000		50202020-00	2A1-102	122	1	907	2024-04-30 02:49:07	2024-04-30 02:50:34		FAD			1	0	0	FAD	0	0	0
1428	DOC-2024-0935	04-0937	3061	\N	\N	\N	2100		50202020-00	2A1-AC	122	1	935	2024-04-30 04:45:13	2024-04-30 04:50:37		FAD			1	0	0	FAD	0	0	0
1458	DOC-2024-0956	04-0903	2721	\N	\N	\N	4169		50202020-00	2A1-AC	122	1	956	2024-05-02 04:13:51	2024-05-02 04:14:00		FAD			1	0	0	FAD	0	0	0
1491	DOC-2024-0972	05-0951	3483	\N	\N	\N	20500		50102020-00	1A1	122	1	972	2024-05-08 03:54:55	2024-05-08 04:23:06		FAD			1	0	0	FAD	0	0	0
1535	DOC-2024-0993	05-0979	3483	\N	\N	\N	33300	p	50202020-00	2A1-AC (HR)	122	1	993	2024-05-08 04:36:55	2024-05-08 04:47:52		FAD			1	0	0	FAD	0	0	0
1493	DOC-2024-0972	05-0951	3483	\N	\N	\N	32125		50102020-00	2A2	122	1	972	2024-05-08 03:54:55	2024-05-08 04:23:06		FAD			1	0	0	FAD	0	0	0
1494	DOC-2024-0972	05-0951	3483	\N	\N	\N	1500		50102030-01	1A1	122	1	972	2024-05-08 03:54:55	2024-05-08 04:23:06		FAD			1	0	0	FAD	0	0	0
1495	DOC-2024-0972	05-0951	3483	\N	\N	\N	10500		50102030-01	2A1-2	122	1	972	2024-05-08 03:54:55	2024-05-08 04:23:06		FAD			1	0	0	FAD	0	0	0
1496	DOC-2024-0972	05-0951	3483	\N	\N	\N	27000		50102030-01	2A2	122	1	972	2024-05-08 03:54:55	2024-05-08 04:23:06		FAD			1	0	0	FAD	0	0	0
1492	DOC-2024-0972	05-0951	3483	\N	\N	\N	15000		50102020-00	2A1-2	122	1	972	2024-05-08 03:54:55	2024-05-08 04:23:06		FAD			1	0	0	FAD	0	0	0
1558	DOC-2024-1013	05-0973	3584	\N	\N	\N	27580.28	e	50202020-00	2A1-104	122	1	1013	2024-05-13 07:35:01	2024-05-13 07:36:08		FAD			1	0	0	FAD	0	0	0
1588	DOC-2024-1039	05-1010	2729	\N	\N	\N	1381		50202020-00	2A2B-108	122	1	1039	2024-05-24 05:15:36	2024-05-24 05:17:23		FAD			1	0	0	FAD	0	0	0
549	DOC-2024-0287	02-0287	1185	\N	\N	\N	20803		50202020-00	2A1-101	999	1	287	2024-02-28 11:03:05	2024-03-04 03:05:20		FAD			1	0	0	FAD	0	0	0
607	DOC-2024-0336	02-0336	1057	\N	\N	\N	365100		50202020-00	2A1-101	999	1	336	2024-03-04 03:56:05	2024-03-04 07:42:38		FAD			1	0	0	FAD	0	0	0
592	DOC-2024-0322	02-0322	3483	\N	\N	\N	4376500		50202020-00	2A1-101	999	1	322	2024-03-04 03:48:18	2024-03-04 07:44:06		FAD			1	0	0	FAD	0	0	0
1639	DOC-2024-1080	05-1051	3565	\N	\N	\N	257400	e	50202020-00	2A1-104	999	1	1080	2024-05-27 08:23:46	2024-05-27 08:25:39		FAD			1	0	0	FAD	0	0	0
1615	DOC-2024-1060	05-1030	2732	\N	\N	\N	12529.6	1	50210030-00	1A1	999	1	1060	2024-05-27 08:03:34	2024-05-27 08:05:10		FAD			1	0	0	FAD	0	0	0
1617	DOC-2024-1060	05-1030	2732	\N	\N	\N	4299.95		50203990-00	PD 997	999	1	1060	2024-05-27 08:03:34	2024-05-27 08:05:10		FAD			1	0	0	FAD	0	0	0
1663	DOC-2024-1100	05-1071	1103	\N	\N	\N	124053.9	e	50202020-00	2A1-104	122	1	1100	2024-05-27 09:39:08	2024-05-27 09:40:52		FAD			1	0	0	FAD	0	0	0
1741	DOC-2024-1154	05-1126	2607	\N	\N	\N	2213.66	v	50202020-00	2A1-AC (PUSH4Science)	122	1	1154	2024-05-27 10:28:28	2024-05-27 10:37:58		FAD			1	0	0	FAD	0	0	0
1806	DOC-2024-1198	05-1173	1074	\N	\N	\N	8272561.18	c	50202020-00	2A1-101	122	1	1198	2024-05-28 07:44:59	2024-05-28 07:50:01		FAD			1	0	0	FAD	0	0	0
1807	DOC-2024-1198	05-1173	1074	\N	\N	\N	612000	e	50202020-00	2A1-101 (RA10612)	122	1	1198	2024-05-28 07:44:59	2024-05-28 07:50:01		FAD			1	0	0	FAD	0	0	0
1773	DOC-2024-1183	05-1158	3312	\N	\N	\N	61761	b	50202020-00	2A1-101	122	1	1183	2024-05-28 07:16:49	2024-05-28 07:52:37		FAD			1	0	0	FAD	0	0	0
1808	DOC-2024-1198	05-1173	1074	\N	\N	\N	5878000		50202020-00	2A1-102	122	1	1198	2024-05-28 07:44:59	2024-05-28 07:50:01		FAD			1	0	0	FAD	0	0	0
1846	DOC-2024-1224	05-1199	1043	\N	\N	\N	698000	e	50202020-00	2A1-101 (RA10612)	122	1	1224	2024-05-30 09:13:33	2024-05-30 10:05:07		FAD			1	0	0	FAD	0	0	0
1683	DOC-2024-1120	05-1092	3414	\N	\N	\N	176900	p	50202020-00	2A1-AC (HR)	122	1	1120	2024-05-27 09:52:42	2024-05-27 10:13:14		FAD			1	0	0	FAD	0	0	0
1826	DOC-2024-1210	05-1185	3483	\N	\N	\N	12563.61	c	50202020-00	2A1-101	122	1	1210	2024-05-28 08:10:42	2024-05-28 08:25:19		FAD			1	0	0	FAD	0	0	0
1847	DOC-2024-1224	05-1199	1043	\N	\N	\N	1700000		50202020-00	2A1-102	122	1	1224	2024-05-30 09:13:33	2024-05-30 10:05:07		FAD			1	0	0	FAD	0	0	0
1616	DOC-2024-1060	05-1030	2732	\N	\N	\N	799	1	50203010-02	1A1	999	1	1060	2024-05-27 08:03:34	2024-05-27 08:05:10		FAD			1	0	0	FAD	0	0	0
1718	DOC-2024-1139	05-1111	1089	\N	\N	\N	11900		50203990-00	2A2	122	1	1139	2024-05-27 10:14:26	2024-05-27 10:42:18		FAD			1	0	0	FAD	0	0	0
1078	DOC-2024-0647	04-0628	1103	\N	\N	\N	108025.35		50202020-00	2A1-104	122	1	647	2024-04-17 03:01:08	2024-04-17 03:35:18		FAD			1	0	0	FAD	0	0	0
488	DOC-2024-0250	02-0249	3483	\N	\N	\N	576501.66		50202020-00	2A1-103	999	1	250	2024-02-28 10:26:14	2024-03-04 03:19:02		FAD			1	0	0	FAD	0	0	0
1109	DOC-2024-0675	04-0656	3546	\N	\N	\N	295177		50202020-00	2A1-104	999	1	675	2024-04-17 03:45:26	2024-04-17 03:49:05		FAD			1	0	0	FAD	0	0	0
566	DOC-2024-0301	02-0301	3483	\N	\N	\N	17258		50202020-00	2A1-101 (RA10612)	999	1	301	2024-02-28 11:10:18	2024-03-04 02:56:13		FAD			1	0	0	FAD	0	0	0
1177	DOC-2024-0732	04-0720	3557	\N	\N	\N	312770		50202020-00	2A1-104	999	1	732	2024-04-17 04:27:31	2024-04-17 04:29:03		FAD			1	0	0	FAD	0	0	0
1140	DOC-2024-0704	04-0686	1179	\N	\N	\N	61660		50202020-00	2A1-101	122	1	704	2024-04-17 04:11:05	2024-04-17 04:36:58		FAD			1	0	0	FAD	0	0	0
1206	DOC-2024-0759	04-0742	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	759	2024-04-29 04:33:34	2024-04-29 04:35:36		FAD			1	0	0	FAD	0	0	0
1259	DOC-2024-0809	04-0798	3333	\N	\N	\N	50000		50202020-00	2A1-101	999	1	809	2024-04-29 07:19:20	2024-04-29 07:22:19		FAD			1	0	0	FAD	0	0	0
1288	DOC-2024-0834	04-0826	1038	\N	\N	\N	2983800		50202020-00	2A1-101	122	1	834	2024-04-29 07:54:49	2024-04-29 08:00:13		FAD			1	0	0	FAD	0	0	0
1315	DOC-2024-0858	04-0855	1059	\N	\N	\N	1612000		50202020-00	2A1-104	122	1	858	2024-04-29 09:25:27	2024-04-29 09:29:06		FAD			1	0	0	FAD	0	0	0
1346	DOC-2024-0882	04-0880	1103	\N	\N	\N	223969.15		50202020-00	2A1-104	122	1	882	2024-04-29 10:40:15	2024-04-29 10:43:50		FAD			1	0	0	FAD	0	0	0
1397	DOC-2024-0908	04-0913	1122	\N	\N	\N	12587000		50202020-00	2A1-101	122	1	908	2024-04-30 02:51:08	2024-04-30 02:52:27		FAD			1	0	0	FAD	0	0	0
1429	DOC-2024-0936	04-0938	3518	\N	\N	\N	9504		50202020-00	2A1-AC	122	1	936	2024-04-30 04:45:33	2024-04-30 04:50:28		FAD			1	0	0	FAD	0	0	0
1459	DOC-2024-0957	04-0889	2721	\N	\N	\N	2535.20		50202020-00	2A1-AC	122	1	957	2024-05-02 04:18:46	2024-05-02 04:18:57		FAD			1	0	0	FAD	0	0	0
1233	DOC-2024-0784	04-0768	3139	\N	\N	\N	134805.99		50212030-00	1A1	122	1	784	2024-04-29 04:54:48	2024-04-29 04:56:39		FAD			1	0	0	FAD	0	0	0
1640	DOC-2024-1081	05-1052	916	\N	\N	\N	92233.27	e	50202020-00	2A1-104	122	1	1081	2024-05-27 08:26:04	2024-05-27 09:32:33		FAD			1	0	0	FAD	0	0	0
1684	DOC-2024-1121	05-1093	3380	\N	\N	\N	3000	1	50205020-01	1A1	122	1	1121	2024-05-27 09:53:13	2024-05-27 10:13:05		FAD			1	0	0	FAD	0	0	0
1589	DOC-2024-1040	05-1011	2729	\N	\N	\N	7605	l	50202020-00	2A1-AC (SMART)	122	1	1040	2024-05-24 05:16:04	2024-05-24 05:17:30		FAD			1	0	0	FAD	0	0	0
1497	DOC-2024-0973	05-0952	3483	\N	\N	\N	96919.12	d	50202020-00	2A1-104	122	1	973	2024-05-08 03:55:29	2024-05-08 04:23:19		FAD			1	0	0	FAD	0	0	0
1618	DOC-2024-1061	05-1032	3587	\N	\N	\N	49360	d	50202020-00	2A1-104	999	1	1061	2024-05-27 08:06:39	2024-05-27 08:17:05		FAD			1	0	0	FAD	0	0	0
1664	DOC-2024-1101	05-1072	3031	\N	\N	\N	178425		50202010-02	2A2B-105	122	1	1101	2024-05-27 09:41:27	2024-05-27 09:51:39		FAD			1	0	0	FAD	0	0	0
1685	DOC-2024-1122	05-1094	3483	\N	\N	\N	51452.55		50102120-01	1A1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1686	DOC-2024-1122	05-1094	3483	\N	\N	\N	126355.22		50102110-01	1A1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1687	DOC-2024-1122	05-1094	3483	\N	\N	\N	43650		50102050-02	1A1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
441	DOC-2024-0208	02-0207	3500	\N	\N	\N	1036687.5		50215020-00	1A1	999	1	208	2024-02-28 09:59:11	2024-03-04 03:23:54		FAD			1	0	0	FAD	0	0	0
567	DOC-2024-0301	02-0301	3483	\N	\N	\N	517233.33		50202020-00	2A1-102	999	1	301	2024-02-28 11:10:18	2024-03-04 02:56:13		FAD			1	0	0	FAD	0	0	0
582	DOC-2024-0313	02-0314	3511	\N	\N	\N	753.75		50215020-00	1A1	999	1	314	2024-02-28 11:19:06	2024-02-29 08:28:19		FAD			1	0	0	FAD	0	0	0
550	DOC-2024-0287	02-0287	1185	\N	\N	\N	60000		50202020-00	2A1-102	999	1	287	2024-02-28 11:03:05	2024-03-04 03:05:20		FAD			1	0	0	FAD	0	0	0
659	DOC-2024-0369	02-0368	3483	\N	\N	\N	5148000		50202020-00	2A1-102	999	1	369	2024-03-04 06:46:27	2024-03-04 07:38:03		FAD			1	0	0	FAD	0	0	0
463	DOC-2024-0230	02-0229	3502	\N	\N	\N	13247.38		50202020-00	2A2B-101	999	1	230	2024-02-28 10:10:45	2024-03-04 03:27:57		FAD			1	0	0	FAD	0	0	0
1688	DOC-2024-1122	05-1094	3483	\N	\N	\N	8863.64		50102060-03	1A1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1689	DOC-2024-1122	05-1094	3483	\N	\N	\N	10572.15		50102120-01	2A1-1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1690	DOC-2024-1122	05-1094	3483	\N	\N	\N	21632.84		50102110-01	2A1-1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1691	DOC-2024-1122	05-1094	3483	\N	\N	\N	7350		50102050-02	2A1-1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1692	DOC-2024-1122	05-1094	3483	\N	\N	\N	1954.55		50102060-03	2A1-1	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1536	DOC-2024-0994	05-0980	3486	\N	\N	\N	30817.78	1	50203090-00	1A1	122	1	994	2024-05-08 04:37:15	2024-05-08 04:47:05		FAD			1	0	0	FAD	0	0	0
1559	DOC-2024-1014	05-0975	1003	\N	\N	\N	26362.08	e	50202020-00	2A1-104	122	1	1014	2024-05-13 07:35:27	2024-05-13 07:36:22		FAD			1	0	0	FAD	0	0	0
528	DOC-2024-0268	02-0267	3484	\N	\N	\N	66704		50202010-02	2A2B-101	999	1	268	2024-02-28 10:49:21	2024-03-04 03:13:31		FAD			1	0	0	FAD	0	0	0
530	DOC-2024-0269	02-0268	2730	\N	\N	\N	4387.54		50205020-01	2A2	999	1	269	2024-02-28 10:49:57	2024-03-04 03:14:25		FAD			1	0	0	FAD	0	0	0
1079	DOC-2024-0648	04-0629	1103	\N	\N	\N	1393908.05		50202020-00	2A1-104	122	1	648	2024-04-17 03:01:44	2024-04-17 03:35:05		FAD			1	0	0	FAD	0	0	0
1110	DOC-2024-0676	04-0657	1103	\N	\N	\N	832214.28		50202020-00	2A1-104	999	1	676	2024-04-17 03:45:52	2024-04-17 03:48:56		FAD			1	0	0	FAD	0	0	0
1178	DOC-2024-0733	04-0721	2034	\N	\N	\N	19398.24		50202020-00	2A1-101	999	1	733	2024-04-17 04:27:55	2024-04-17 04:28:54		FAD			1	0	0	FAD	0	0	0
1141	DOC-2024-0705	04-0687	1449	\N	\N	\N	59980		50202020-00	2A2A-103	122	1	705	2024-04-17 04:11:51	2024-04-17 04:36:49		FAD			1	0	0	FAD	0	0	0
1207	DOC-2024-0760	04-0743	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	760	2024-04-29 04:33:50	2024-04-29 04:35:49		FAD			1	0	0	FAD	0	0	0
1234	DOC-2024-0785	04-0769	2928	\N	\N	\N	810000		50202020-00	2A1-AC (FAD)	122	1	785	2024-04-29 04:55:05	2024-04-29 04:56:47		FAD			1	0	0	FAD	0	0	0
1260	DOC-2024-0810	04-0799	3291	\N	\N	\N	339609.60		50202020-00	2A1-104	999	1	810	2024-04-29 07:19:46	2024-04-29 07:22:26		FAD			1	0	0	FAD	0	0	0
1289	DOC-2024-0835	04-0828	1114	\N	\N	\N	52454768.89		50202020-00	2A1-103	122	1	835	2024-04-29 07:55:17	2024-04-29 07:59:57		FAD			1	0	0	FAD	0	0	0
1316	DOC-2024-0859	04-0856	1181	\N	\N	\N	4758000		50202020-00	2A1-104	122	1	859	2024-04-29 09:25:54	2024-04-29 09:29:16		FAD			1	0	0	FAD	0	0	0
1347	DOC-2024-0883	04-0881	1103	\N	\N	\N	223969.15		50202020-00	2A1-104	122	1	883	2024-04-29 10:40:36	2024-04-29 10:44:00		FAD			1	0	0	FAD	0	0	0
1398	DOC-2024-0909	04-0914	3572	\N	\N	\N	151270.44		50202020-00	2A1-AC	999	1	909	2024-04-30 02:52:10	2024-04-30 02:52:41		FAD			1	0	0	FAD	0	0	0
1430	DOC-2024-0937	04-0939	3038	\N	\N	\N	9500		50203010-02	PD 997	122	1	937	2024-04-30 04:45:52	2024-04-30 04:50:19		FAD			1	0	0	FAD	0	0	0
1460	DOC-2024-0958	04-0886	3483	\N	\N	\N	1696120.14		50202020-00	2A1-104	122	1	958	2024-05-02 04:19:36	2024-05-02 04:19:52		FAD			1	0	0	FAD	0	0	0
1498	DOC-2024-0974	05-0953	3483	\N	\N	\N	111904		50101010-01	1A1	122	1	974	2024-05-08 03:56:51	2024-05-08 04:23:31		FAD			1	0	0	FAD	0	0	0
1499	DOC-2024-0974	05-0953	3483	\N	\N	\N	28088.5		50101010-01	2A1-1	122	1	974	2024-05-08 03:56:51	2024-05-08 04:23:31		FAD			1	0	0	FAD	0	0	0
1500	DOC-2024-0974	05-0953	3483	\N	\N	\N	76410		50101010-01	2A1-2	122	1	974	2024-05-08 03:56:51	2024-05-08 04:23:31		FAD			1	0	0	FAD	0	0	0
1501	DOC-2024-0974	05-0953	3483	\N	\N	\N	164419		50101010-01	2A2	122	1	974	2024-05-08 03:56:51	2024-05-08 04:23:31		FAD			1	0	0	FAD	0	0	0
1591	DOC-2024-1041	05-1012	1021	\N	\N	\N	184500	e	50202020-00	2A1-101 (RA10612)	122	1	1041	2024-05-24 05:16:57	2024-05-24 05:17:37		FAD			1	0	0	FAD	0	0	0
1643	DOC-2024-1082	05-1053	3484	\N	\N	\N	26946	p	50202020-00	2A1-AC (HR)	122	1	1082	2024-05-27 08:27:55	2024-05-27 09:32:44		FAD			1	0	0	FAD	0	0	0
1645	DOC-2024-1082	05-1053	3484	\N	\N	\N	687344	t	50202020-00	2A1-AC (Science Camp)	122	1	1082	2024-05-27 08:27:55	2024-05-27 09:32:44		FAD			1	0	0	FAD	0	0	0
1592	DOC-2024-1041	05-1012	1021	\N	\N	\N	861000		50202020-00	2A1-102	122	1	1041	2024-05-24 05:16:57	2024-05-24 05:17:37		FAD			1	0	0	FAD	0	0	0
1619	DOC-2024-1062	05-1033	3588	\N	\N	\N	315010		50202010-02	2A2B-101	999	1	1062	2024-05-27 08:07:07	2024-05-27 08:17:17		FAD			1	0	0	FAD	0	0	0
793	DOC-2024-0454	03-0443	3484	\N	\N	\N	175005		50202010-02	2A2B-105	122	1	454	2024-03-15 03:36:59	2024-03-15 03:41:18		FAD			1	0	0	FAD	0	0	0
477	DOC-2024-0241	02-0240	530	\N	\N	\N	152317.8		50202020-00	2A1-104	999	1	241	2024-02-28 10:16:54	2024-03-04 03:17:27		FAD			1	0	0	FAD	0	0	0
780	DOC-2024-0442	03-0431	3511	\N	\N	\N	33750		50202020-00	2A1-101 (RA10612)	122	1	442	2024-03-15 03:28:34	2024-03-15 03:43:15		FAD			1	0	0	FAD	0	0	0
770	DOC-2024-0432	03-0420	3524	\N	\N	\N	15808.96		50202020-00	2A1-104	122	1	432	2024-03-15 03:19:47	2024-03-15 03:45:43		FAD			1	0	0	FAD	0	0	0
617	DOC-2024-0344	02-0344	2759	\N	\N	\N	69240.6		50201010-00	1A1	999	1	344	2024-03-04 04:01:14	2024-03-04 07:40:31		FAD			0	0	0	FAD	0	0	0
487	DOC-2024-0250	02-0249	3483	\N	\N	\N	3644429.16		50202020-00	2A1-104	999	1	250	2024-02-28 10:26:14	2024-03-04 03:19:02		FAD			1	0	0	FAD	0	0	0
560	DOC-2024-0296	02-0296	289	\N	\N	\N	30277.57		50202020-00	2A1-104	999	1	296	2024-02-28 11:06:33	2024-03-04 02:59:21		FAD			1	0	0	FAD	0	0	0
1641	DOC-2024-1082	05-1053	3484	\N	\N	\N	46074		50202010-02	2A2B-105	122	1	1082	2024-05-27 08:27:55	2024-05-27 09:32:44		FAD			1	0	0	FAD	0	0	0
1642	DOC-2024-1082	05-1053	3484	\N	\N	\N	29186		50202010-02	2A2B-106	122	1	1082	2024-05-27 08:27:55	2024-05-27 09:32:44		FAD			1	0	0	FAD	0	0	0
1644	DOC-2024-1082	05-1053	3484	\N	\N	\N	13082	v	50202020-00	2A1-AC (PUSH4Science)	122	1	1082	2024-05-27 08:27:55	2024-05-27 09:32:44		FAD			1	0	0	FAD	0	0	0
1537	DOC-2024-0995	05-0982	3583	\N	\N	\N	319000	d	50202020-00	2A1-104	122	1	995	2024-05-08 04:38:30	2024-05-08 04:46:16		FAD			1	0	0	FAD	0	0	0
1560	DOC-2024-1015	05-0974	104	\N	\N	\N	25527.6	e	50202020-00	2A1-104	122	1	1015	2024-05-13 07:35:56	2024-05-13 07:36:55		FAD			1	0	0	FAD	0	0	0
1665	DOC-2024-1102	05-1073	3593	\N	\N	\N	24000	o	50202020-00	2A1-AC (FAD)	999	1	1102	2024-05-27 09:42:41	2024-05-27 09:51:30		FAD			1	0	0	FAD	0	0	0
1590	DOC-2024-1041	05-1012	1021	\N	\N	\N	2363122	a	50202020-00	2A1-101	122	1	1041	2024-05-24 05:16:57	2024-05-24 05:17:37		FAD			1	0	0	FAD	0	0	0
298	DOC-2024-0131	01-0131	1196	\N	\N	\N	31849860		50202020-00	2A1-101	999	1	131	2024-02-06 09:11:26	\N		FAD			1	0	0	FAD	0	0	0
289	DOC-2024-0128	01-0128	1122	\N	\N	\N	15998358		50202020-00	2A1-101	999	1	128	2024-02-06 09:08:23	\N		FAD			1	0	0	FAD	0	0	0
290	DOC-2024-0128	01-0128	1122	\N	\N	\N	870000		50202020-00	2A1-101 (RA10612)	999	1	128	2024-02-06 09:08:23	\N		FAD			1	0	0	FAD	0	0	0
292	DOC-2024-0129	01-0129	1179	\N	\N	\N	16723358		50202020-00	2A1-101	999	1	129	2024-02-06 09:09:11	\N		FAD			1	0	0	FAD	0	0	0
299	DOC-2024-0131	01-0131	1196	\N	\N	\N	377000		50202020-00	2A1-101 (RA10612)	999	1	131	2024-02-06 09:11:26	\N		FAD			1	0	0	FAD	0	0	0
389	DOC-2024-0044	01-0044	1103	\N	\N	\N	262917.43		50202020-00	2A1-102	999	1	44	2024-02-08 01:53:04	\N	\N	FAD			1	0	0	FAD	0	0	0
1080	DOC-2024-0649	04-0630	2734	\N	\N	\N	20540.29		50202020-00	2A1-104	122	1	649	2024-04-17 03:02:15	2024-04-17 03:33:45		FAD			1	0	0	FAD	0	0	0
599	DOC-2024-0329	02-0329	2730	\N	\N	\N	107583.36		50202020-00	2A1-104	999	1	329	2024-03-04 03:52:09	2024-03-04 07:43:12		FAD			1	0	0	FAD	0	0	0
429	DOC-2024-0198	02-0197	1122	\N	\N	\N	10871230		50202020-00	2A1-105	999	1	198	2024-02-28 09:32:51	2024-03-04 03:22:17		FAD			1	0	0	FAD	0	0	0
1111	DOC-2024-0677	04-0658	1103	\N	\N	\N	723742.52		50202020-00	2A1-104	999	1	677	2024-04-17 03:46:19	2024-04-17 03:48:46		FAD			1	0	0	FAD	0	0	0
453	DOC-2024-0220	02-0219	1026	\N	\N	\N	23079.7		50202020-00	2A1-106	999	1	220	2024-02-28 10:03:53	2024-03-04 03:26:00		FAD			1	0	0	FAD	0	0	0
551	DOC-2024-0288	02-0288	3293	\N	\N	\N	752200		50202020-00	2A1-AC (GAD)	999	1	288	2024-02-28 11:03:33	2024-03-04 03:05:08		FAD			1	0	0	FAD	0	0	0
508	DOC-2024-0264	02-0263	3483	\N	\N	\N	92250		50202020-00	2A1-AC (NULAB)	999	1	264	2024-02-28 10:33:58	2024-03-04 03:12:46		FAD			1	0	0	FAD	0	0	0
506	DOC-2024-0262	02-0261	1109	\N	\N	\N	20455		50202020-00	2A1-101	999	1	262	2024-02-28 10:33:14	2024-03-04 03:08:45		FAD			1	0	0	FAD	0	0	0
1146	DOC-2024-0710	04-0693	3550	\N	\N	\N	6926		50203010-02	1A1	999	1	710	2024-04-17 04:14:44	2024-04-17 04:35:42		FAD			1	0	0	FAD	0	0	0
1148	DOC-2024-0710	04-0693	3550	\N	\N	\N	2012		50202010-02	2A2B-102	999	1	710	2024-04-17 04:14:44	2024-04-17 04:35:42		FAD			1	0	0	FAD	0	0	0
1142	DOC-2024-0706	04-0688	2729	\N	\N	\N	4908		50202010-02	2A2B-108	122	1	706	2024-04-17 04:12:09	2024-04-17 04:36:41		FAD			1	0	0	FAD	0	0	0
1208	DOC-2024-0761	04-0744	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	761	2024-04-29 04:34:07	2024-04-29 04:36:05		FAD			1	0	0	FAD	0	0	0
1235	DOC-2024-0786	04-0770	3483	\N	\N	\N	180000		50202020-00	2A1-104	122	1	786	2024-04-29 04:55:21	2024-04-29 04:56:59		FAD			1	0	0	FAD	0	0	0
1261	DOC-2024-0811	04-0800	3031	\N	\N	\N	73500		50202020-00	2A1-101	999	1	811	2024-04-29 07:20:24	2024-04-29 07:22:40		FAD			1	0	0	FAD	0	0	0
1290	DOC-2024-0836	04-0829	1067	\N	\N	\N	35471425.07		50202020-00	2A1-103	122	1	836	2024-04-29 07:56:06	2024-04-29 07:59:47		FAD			1	0	0	FAD	0	0	0
1317	DOC-2024-0860	04-0857	1184	\N	\N	\N	5056000		50202020-00	2A1-104	122	1	860	2024-04-29 09:26:12	2024-04-29 09:29:27		FAD			1	0	0	FAD	0	0	0
1348	DOC-2024-0884	04-0882	1103	\N	\N	\N	113800.75		50202020-00	2A1-104	122	1	884	2024-04-29 10:40:54	2024-04-29 10:44:11		FAD			1	0	0	FAD	0	0	0
489	DOC-2024-0251	02-0250	3483	\N	\N	\N	524240.83		50202020-00	2A1-101	999	1	251	2024-02-28 10:27:08	2024-03-04 03:19:32		FAD			1	0	0	FAD	0	0	0
297	DOC-2024-0130	01-0130	1027	\N	\N	\N	18618000		50202020-00	2A1-102	999	1	130	2024-02-06 09:10:09	\N		FAD			1	0	0	FAD	0	0	0
1399	DOC-2024-0910	04-0919	3573	\N	\N	\N	140000		50202020-00	2A1-101	122	1	910	2024-04-30 02:54:01	2024-04-30 02:54:10		FAD			1	0	0	FAD	0	0	0
1147	DOC-2024-0710	04-0693	3550	\N	\N	\N	10330		50203990-00	2A2	999	1	710	2024-04-17 04:14:44	2024-04-17 04:35:42		FAD			1	0	0	FAD	0	0	0
442	DOC-2024-0209	02-0208	3483	\N	\N	\N	3560000		50202020-00	2A1-101	999	1	209	2024-02-28 09:59:34	2024-03-04 03:24:01		FAD			1	0	0	FAD	0	0	0
527	DOC-2024-0268	02-0267	3484	\N	\N	\N	126266		50202020-00	2A1-101	999	1	268	2024-02-28 10:49:21	2024-03-04 03:13:31		FAD			1	0	0	FAD	0	0	0
490	DOC-2024-0251	02-0250	3483	\N	\N	\N	12379		50202020-00	2A1-101 (RA10612)	999	1	251	2024-02-28 10:27:08	2024-03-04 03:19:32		FAD			1	0	0	FAD	0	0	0
507	DOC-2024-0263	02-0262	1178	\N	\N	\N	20455		50202020-00	2A1-101	999	1	263	2024-02-28 10:33:34	2024-03-04 03:09:06		FAD			1	0	0	FAD	0	0	0
505	DOC-2024-0261	02-0260	1190	\N	\N	\N	71500		50202020-00	2A1-102	999	1	261	2024-02-28 10:32:00	2024-03-04 03:08:35		FAD			1	0	0	FAD	0	0	0
572	DOC-2024-0306	02-0306	450	\N	\N	\N	5679		50202020-00	2A1-104	999	1	306	2024-02-28 11:12:04	2024-03-04 02:55:15		FAD			1	0	0	FAD	0	0	0
561	DOC-2024-0297	02-0297	3509	\N	\N	\N	163946.66		50202020-00	2A1-104	999	1	297	2024-02-28 11:07:43	2024-03-04 02:59:12		FAD			1	0	0	FAD	0	0	0
504	DOC-2024-0261	02-0260	1190	\N	\N	\N	60000		50202020-00	2A1-101	999	1	261	2024-02-28 10:32:00	2024-03-04 03:08:35		FAD			1	0	0	FAD	0	0	0
533	DOC-2024-0271	02-0271	3483	\N	\N	\N	1263803.64		50202020-00	2A1-102	999	1	271	2024-02-28 10:50:59	2024-03-04 03:15:04		FAD			1	0	0	FAD	0	0	0
464	DOC-2024-0231	02-0230	2227	\N	\N	\N	11211.34		50202020-00	2A2B-101	999	1	231	2024-02-28 10:11:13	2024-03-04 03:28:02		FAD			1	0	0	FAD	0	0	0
583	DOC-2024-0314	02-0315	3512	\N	\N	\N	14475.15		50202010-02	2A2B-101	999	1	315	2024-02-28 11:20:02	2024-02-29 08:28:12		FAD			1	2	5	FAD	0	0	0
108	DOC-2024-0004	01-0004	3483	\N	\N	\N	140357.5		50101010-01	1A1	999	1	4	2024-02-02 01:55:03	2024-02-07 03:03:50		FAD			1	0	0	FAD	0	0	0
132	DOC-2024-0017	01-0017	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	17	2024-02-02 02:46:40	2024-02-07 03:35:56		FAD			1	0	0	FAD	0	0	0
119	DOC-2024-0007	01-0007	2725	\N	\N	\N	50000		50202020-00	2A1-AC (HR)	999	1	7	2024-02-02 02:35:33	2024-02-07 03:09:31		FAD			1	0	0	FAD	0	0	0
503	DOC-2024-0260	02-0259	2747	\N	\N	\N	2004		50202010-02	2A2B-101	999	1	260	2024-02-28 10:31:21	2024-03-04 03:08:26		FAD			1	0	0	FAD	0	0	0
517	DOC-2024-0266	02-0265	3483	\N	\N	\N	1818.18		50102060-03	2A1-101	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
516	DOC-2024-0266	02-0265	3483	\N	\N	\N	9000		50102050-02	2A1-101	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
515	DOC-2024-0266	02-0265	3483	\N	\N	\N	23568.42		50102110-01	2A1-101	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
514	DOC-2024-0266	02-0265	3483	\N	\N	\N	10572.15		50102120-01	2A1-101	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
1026	DOC-2024-0620	03-0519	1035	\N	\N	\N	209000		50202020-00	2A1-101	122	1	620	2024-04-11 03:51:42	2024-04-11 03:51:54		FAD			1	0	0	FAD	0	0	0
513	DOC-2024-0266	02-0265	3483	\N	\N	\N	7931.82		50102060-03	1A1	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
512	DOC-2024-0266	02-0265	3483	\N	\N	\N	45000		50102050-02	1A1	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
511	DOC-2024-0266	02-0265	3483	\N	\N	\N	158134.89		50102110-01	1A1	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
510	DOC-2024-0266	02-0265	3483	\N	\N	\N	67787.05		50102120-01	1A1	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
1400	DOC-2024-0911	04-0612	3483	\N	\N	\N	5725860		50202020-00	2A1-104	122	1	911	2024-04-30 02:58:16	2024-04-30 02:58:37		FAD			1	0	0	FAD	0	0	0
618	DOC-2024-0345	02-0345	1114	\N	\N	\N	969775.92		50202020-00	2A1-103	999	1	345	2024-03-04 04:01:41	2024-03-04 07:40:26		FAD			1	0	0	FAD	0	0	0
209	DOC-2024-0086	01-0086	3483	\N	\N	\N	12368000		50202020-00	2A1-101	999	1	86	2024-02-02 04:01:03	2024-02-07 05:05:37		FAD			1	0	0	FAD	0	0	0
210	DOC-2024-0087	01-0087	1033	\N	\N	\N	1825000		50202020-00	2A1-101	999	1	87	2024-02-02 06:27:07	2024-02-07 05:05:43		FAD			1	0	0	FAD	0	0	0
116	DOC-2024-0005	01-0005	3483	\N	\N	\N	5000		50102990-12	1A1	999	1	5	2024-02-02 02:29:39	2024-02-07 03:08:45		FAD			1	0	0	FAD	0	0	0
211	DOC-2024-0088	01-0088	1036	\N	\N	\N	54239994		50202020-00	2A1-101	999	1	88	2024-02-02 06:28:22	2024-02-07 05:05:47		FAD			1	0	0	FAD	0	0	0
117	DOC-2024-0005	01-0005	3483	\N	\N	\N	10000		50102990-12	2A1-2	999	1	5	2024-02-02 02:29:39	2024-02-07 03:08:45		FAD			1	0	0	FAD	0	0	0
122	DOC-2024-0010	01-0010	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	10	2024-02-02 02:38:32	2024-02-07 03:16:48		FAD			1	0	0	FAD	0	0	0
430	DOC-2024-0199	02-0198	1055	\N	\N	\N	3364934		50202020-00	2A1-105	999	1	199	2024-02-28 09:33:20	2024-03-04 03:22:25		FAD			1	0	0	FAD	0	0	0
123	DOC-2024-0011	01-0011	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	11	2024-02-02 02:38:58	2024-02-07 03:16:56		FAD			1	0	0	FAD	0	0	0
124	DOC-2024-0012	01-0012	3483	\N	\N	\N	69852.45		50202020-00	2A1-106	999	1	12	2024-02-02 02:40:29	2024-02-07 03:17:49		FAD			1	0	0	FAD	0	0	0
109	DOC-2024-0004	01-0004	3483	\N	\N	\N	28155.25		50101010-01	2A1-1	999	1	4	2024-02-02 01:55:03	2024-02-07 03:03:50		FAD			1	0	0	 	0	0	0
454	DOC-2024-0221	02-0220	390	\N	\N	\N	52029		50202020-00	2A1-106	999	1	221	2024-02-28 10:04:22	2024-03-04 03:26:10		FAD			1	0	0	FAD	0	0	0
110	DOC-2024-0004	01-0004	3483	\N	\N	\N	71883.5		50101010-01	2A1-2	999	1	4	2024-02-02 01:55:03	2024-02-07 03:03:50		FAD			1	0	0	 	0	0	0
111	DOC-2024-0004	01-0004	3483	\N	\N	\N	143853.75		50101010-01	2A2	999	1	4	2024-02-02 01:55:03	2024-02-07 03:03:50		FAD			1	0	0	 	0	0	0
552	DOC-2024-0289	02-0289	3330	\N	\N	\N	274000		50202020-00	2A1-AC (GAD)	999	1	289	2024-02-28 11:03:52	2024-03-04 03:04:39		FAD			1	0	0	FAD	0	0	0
104	DOC-2024-0003	01-0003	3483	\N	\N	\N	140357.5		50101010-01	1A1	999	1	3	2024-02-02 01:49:03	2024-02-02 08:11:33		FAD			1	0	0	FAD	0	0	0
493	DOC-2024-0252	02-0251	2774	\N	\N	\N	56640		50202020-00	2A1-AC (FAD)	999	1	252	2024-02-28 10:27:49	2024-03-04 03:19:44		FAD			1	0	0	FAD	0	0	0
644	DOC-2024-0365	02-0364	1131	\N	\N	\N	1258500		50202020-00	2A1-101	999	1	365	2024-03-04 06:19:53	2024-03-04 07:38:24		FAD			1	0	0	FAD	0	0	0
105	DOC-2024-0003	01-0003	3483	\N	\N	\N	28155.25		50101010-01	2A1-1	999	1	3	2024-02-02 01:49:03	2024-02-02 08:11:33		FAD			1	0	0	 	0	0	0
106	DOC-2024-0003	01-0003	3483	\N	\N	\N	71883.5		50101010-01	2A1-2	999	1	3	2024-02-02 01:49:03	2024-02-02 08:11:33		FAD			1	0	0	 	0	0	0
107	DOC-2024-0003	01-0003	3483	\N	\N	\N	143853.75		50101010-01	2A2	999	1	3	2024-02-02 01:49:03	2024-02-02 08:11:33		FAD			1	0	0	 	0	0	0
130	DOC-2024-0015	01-0015	3483	\N	\N	\N	62601.70		50102120-01	2A2	999	1	15	2024-02-02 02:44:23	2024-02-07 03:34:07		FAD			1	0	0	 	0	0	0
127	DOC-2024-0015	01-0015	3483	\N	\N	\N	67718.06		50102120-01	1A1	999	1	15	2024-02-02 02:44:23	2024-02-07 03:34:07		FAD			1	0	0	FAD	0	0	0
128	DOC-2024-0015	01-0015	3483	\N	\N	\N	10572.15		50102120-01	2A1-1	999	1	15	2024-02-02 02:44:23	2024-02-07 03:34:07		FAD			1	0	0	 	0	0	0
131	DOC-2024-0016	01-0016	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	16	2024-02-02 02:46:05	2024-02-07 03:34:26		FAD			1	0	0	FAD	0	0	0
133	DOC-2024-0018	01-0018	3485	\N	\N	\N	10387		50202020-00	2A1-104	999	1	18	2024-02-02 02:49:14	2024-02-07 03:36:09		FAD			1	0	0	FAD	0	0	0
134	DOC-2024-0019	01-0019	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	19	2024-02-02 02:49:57	2024-02-07 03:36:36		FAD			1	0	0	FAD	0	0	0
135	DOC-2024-0020	01-0020	2725	\N	\N	\N	12500		50202020-00	2A1-AC (HR)	999	1	20	2024-02-02 02:50:38	2024-02-07 03:36:44		FAD			1	0	0	FAD	0	0	0
136	DOC-2024-0021	01-0021	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	21	2024-02-02 02:50:59	2024-02-07 03:41:22		FAD			1	0	0	FAD	0	0	0
120	DOC-2024-0008	01-0008	2730	\N	\N	\N	4500		50201010-00	1A1	999	1	8	2024-02-02 02:35:58	2024-02-07 03:16:31		FAD			1	0	0	FAD	0	0	0
118	DOC-2024-0006	01-0006	3484	\N	\N	\N	12936		50201010-00	1A1	999	1	6	2024-02-02 02:34:59	2024-02-07 03:09:20		FAD			1	0	0	FAD	0	0	0
121	DOC-2024-0009	01-0009	2709	\N	\N	\N	5505		50201010-00	1A1	999	1	9	2024-02-02 02:37:51	2024-02-07 03:16:38		FAD			1	0	0	FAD	0	0	0
246	DOC-2024-0105	01-0105	1044	\N	\N	\N	1450500		50202020-00	2A1-101 (RA10612)	999	1	105	2024-02-06 08:44:18	2024-02-07 05:07:45		FAD			1	0	0	FAD	0	0	0
248	DOC-2024-0106	01-0106	1047	\N	\N	\N	11298990		50202020-00	2A1-101	999	1	106	2024-02-06 08:45:48	2024-02-07 05:07:51		FAD			1	0	0	FAD	0	0	0
249	DOC-2024-0106	01-0106	1047	\N	\N	\N	657000		50202020-00	2A1-101 (RA10612)	999	1	106	2024-02-06 08:45:48	2024-02-07 05:07:51		FAD			1	0	0	FAD	0	0	0
1027	DOC-2024-0621	03-0520	3537	\N	\N	\N	13785		50202010-02	2A2B-103	999	1	621	2024-04-11 04:39:22	2024-04-11 04:39:48		FAD			1	0	0	FAD	0	\N	\N
1028	DOC-2024-0621	03-0520	3537	\N	\N	\N	4595		50202020-00	2A1-102	999	1	621	2024-04-11 04:39:22	2024-04-11 04:39:48		FAD			1	0	0	FAD	0	\N	\N
251	DOC-2024-0107	01-0107	1037	\N	\N	\N	56840994		50202020-00	2A1-101	999	1	107	2024-02-06 08:47:18	2024-02-07 05:07:57		FAD			1	0	0	FAD	0	0	0
137	DOC-2024-0022	01-0022	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	22	2024-02-02 02:51:28	2024-02-07 03:41:28		FAD			1	0	0	FAD	0	0	0
1112	DOC-2024-0678	04-0659	3483	\N	\N	\N	142800		50202020-00	2A1-AC	999	1	678	2024-04-17 03:46:44	2024-04-17 03:48:37		FAD			1	0	0	FAD	0	0	0
472	DOC-2024-0238	02-0237	3483	\N	\N	\N	536020		50202020-00	2A1-102	999	1	238	2024-02-28 10:15:10	2024-03-04 03:16:57		FAD			1	0	0	FAD	0	0	0
252	DOC-2024-0107	01-0107	1037	\N	\N	\N	6111000		50202020-00	2A1-101 (RA10612)	999	1	107	2024-02-06 08:47:18	2024-02-07 05:07:57		FAD			1	0	0	FAD	0	0	0
254	DOC-2024-0108	01-0108	1038	\N	\N	\N	53562860		50202020-00	2A1-101	999	1	108	2024-02-06 08:48:25	2024-02-07 05:08:03		FAD			1	0	0	FAD	0	0	0
255	DOC-2024-0108	01-0108	1038	\N	\N	\N	3845500		50202020-00	2A1-101 (RA10612)	999	1	108	2024-02-06 08:48:25	2024-02-07 05:08:03		FAD			1	0	0	FAD	0	0	0
257	DOC-2024-0109	01-0109	1041	\N	\N	\N	6330628		50202020-00	2A1-101	999	1	109	2024-02-06 08:49:24	2024-02-07 05:08:09		FAD			1	0	0	FAD	0	0	0
304	DOC-2024-0135	01-0135	1131	\N	\N	\N	320000		50202020-00	2A1-101	999	1	135	2024-02-06 09:15:31	\N		FAD			1	0	0	FAD	0	0	0
593	DOC-2024-0323	02-0323	2034	\N	\N	\N	19440		50202020-00	2A1-101	999	1	323	2024-03-04 03:48:43	2024-03-04 07:43:58		FAD			1	0	0	FAD	0	0	0
532	DOC-2024-0271	02-0271	3483	\N	\N	\N	624919.99		50202020-00	2A1-101	999	1	271	2024-02-28 10:50:59	2024-03-04 03:15:04		FAD			1	0	0	FAD	0	0	0
610	DOC-2024-0339	02-0339	1039	\N	\N	\N	242340		50202020-00	2A1-101	999	1	339	2024-03-04 03:57:43	2024-03-04 07:41:54		FAD			1	0	0	FAD	0	0	0
697	DOC-2024-0397	02-0395	3483	\N	\N	\N	3824000		50202020-00	2A1-102	999	1	397	2024-03-04 07:25:06	2024-03-04 07:33:55		FAD			1	0	0	FAD	0	0	0
443	DOC-2024-0210	02-0209	127	\N	\N	\N	48077.62		50202020-00	2A1-104	999	1	210	2024-02-28 10:00:01	2024-03-04 03:24:11		FAD			1	0	0	FAD	0	0	0
479	DOC-2024-0243	02-0242	3504	\N	\N	\N	213561		50202020-00	2A1-104	999	1	243	2024-02-28 10:19:58	2024-03-04 03:17:47		FAD			1	0	0	FAD	0	0	0
492	DOC-2024-0252	02-0251	2774	\N	\N	\N	39672		50203010-01	1A1	999	1	252	2024-02-28 10:27:49	2024-03-04 03:19:44		FAD			1	0	0	FAD	0	0	0
390	DOC-2024-0191	02-0190	3483	\N	\N	\N	136453.75		50101010-01	1A1	999	1	191	2024-02-28 09:16:44	2024-03-04 03:20:45		FAD			1	0	0	FAD	0	0	0
391	DOC-2024-0191	02-0190	3483	\N	\N	\N	27625		50101010-01	2A1-1	999	1	191	2024-02-28 09:16:44	2024-03-04 03:20:45		FAD			1	0	0		0	0	0
207	DOC-2024-0083	01-0083	3483	\N	\N	\N	875000		50202020-00	2A1-102	999	1	83	2024-02-02 03:58:05	2024-02-07 05:03:14		FAD			1	0	0	FAD	0	0	0
212	DOC-2024-0088	01-0088	1036	\N	\N	\N	15623500		50202020-00	2A1-102	999	1	88	2024-02-02 06:28:22	2024-02-07 05:05:47		FAD			1	0	0	 	0	0	0
370	DOC-2024-0176	01-0175	3483	\N	\N	\N	2196000		50202020-00	2A1-101	999	1	176	2024-02-07 02:51:30	\N		FAD			1	0	0	FAD	0	0	0
376	DOC-2024-0182	01-0181	1027	\N	\N	\N	2821612		50202020-00	2A1-105	999	1	182	2024-02-07 02:54:32	\N		FAD			1	0	0	FAD	0	0	0
144	DOC-2024-0025	01-0025	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	25	2024-02-02 02:56:46	2024-02-07 04:07:01		FAD			1	0	0	FAD	0	0	0
145	DOC-2024-0026	01-0026	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	26	2024-02-02 02:57:31	2024-02-07 04:07:06		FAD			1	0	0	FAD	0	0	0
146	DOC-2024-0027	01-0027	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	27	2024-02-02 02:57:55	2024-02-07 04:07:11		FAD			1	0	0	FAD	0	0	0
147	DOC-2024-0028	01-0028	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	28	2024-02-02 02:58:19	2024-02-07 04:07:16		FAD			1	0	0	FAD	0	0	0
148	DOC-2024-0029	01-0029	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	29	2024-02-02 02:58:51	2024-02-07 04:07:20		FAD			1	0	0	FAD	0	0	0
377	DOC-2024-0183	01-0182	1143	\N	\N	\N	1545412		50202020-00	2A1-105	999	1	183	2024-02-07 02:55:11	2024-02-07 07:48:23		FAD			1	0	0	FAD	0	0	0
100	DOC-2024-0002	01-0002	3483	\N	\N	\N	140369.40		50101010-01	1A1	999	1	2	2024-02-02 01:49:03	2024-02-02 06:55:05		FAD			1	0	0	FAD	0	0	0
378	DOC-2024-0184	01-0183	1148	\N	\N	\N	1495734		50202020-00	2A1-105	999	1	184	2024-02-07 02:55:45	\N		FAD			1	0	0	FAD	0	0	0
380	DOC-2024-0186	01-0185	3483	\N	\N	\N	483120.38		50202020-00	2A1-101	999	1	186	2024-02-07 02:57:30	\N		FAD			1	0	0	FAD	0	0	0
101	DOC-2024-0002	01-0002	3483	\N	\N	\N	28157.02		50101010-01	2A1-1	999	1	2	2024-02-02 01:49:03	2024-02-02 06:55:05		FAD			1	0	0	 	0	0	0
381	DOC-2024-0186	01-0185	3483	\N	\N	\N	40000		50202020-00	2A1-101 (RA10612)	999	1	186	2024-02-07 02:57:30	\N		FAD			1	0	0	FAD	0	0	0
383	DOC-2024-0187	01-0186	3483	\N	\N	\N	159354.66		50202020-00	2A1-101	999	1	187	2024-02-07 02:58:44	\N		FAD			1	0	0	FAD	0	0	0
149	DOC-2024-0030	01-0030	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	30	2024-02-02 02:59:09	2024-02-07 04:07:26		FAD			1	0	0	FAD	0	0	0
150	DOC-2024-0031	01-0031	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	31	2024-02-02 02:59:29	2024-02-07 04:07:33		FAD			1	0	0	FAD	0	0	0
151	DOC-2024-0032	01-0032	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	32	2024-02-02 02:59:47	2024-02-07 04:07:39		FAD			1	0	0	FAD	0	0	0
152	DOC-2024-0033	01-0033	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	33	2024-02-02 03:00:31	2024-02-07 04:07:43		FAD			1	0	0	FAD	0	0	0
153	DOC-2024-0034	01-0034	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	34	2024-02-02 03:00:47	2024-02-07 04:07:50		FAD			1	0	0	FAD	0	0	0
154	DOC-2024-0035	01-0035	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	35	2024-02-02 03:01:07	2024-02-07 04:07:54		FAD			1	0	0	FAD	0	0	0
155	DOC-2024-0036	01-0036	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	36	2024-02-02 03:02:55	2024-02-07 04:08:00		FAD			1	0	0	FAD	0	0	0
140	DOC-2024-0024	01-0024	2766	\N	\N	\N	25000		50203990-00	1A1	999	1	24	2024-02-02 02:55:21	2024-02-07 04:06:49		FAD			1	0	0	 	0	0	0
158	DOC-2024-0039	01-0039	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	39	2024-02-02 03:04:17	2024-02-07 04:08:16		FAD			1	0	0	FAD	0	0	0
163	DOC-2024-0045	01-0045	2726	\N	\N	\N	108726.75		50202020-00	2A1-AC (HR)	999	1	45	2024-02-02 03:11:02	2024-02-07 04:08:42		FAD			1	0	0	FAD	0	0	0
141	DOC-2024-0024	01-0024	2766	\N	\N	\N	30000		50205020-01	1A1	999	1	24	2024-02-02 02:55:21	2024-02-07 04:06:49		FAD			1	0	0	 	0	0	0
1029	DOC-2024-0622	03-0541	3483	\N	\N	\N	1000000		50202020-00	2A1-102	122	1	622	2024-04-11 04:41:40	2024-04-11 04:41:53		FAD			1	0	0	FAD	0	0	0
139	DOC-2024-0024	01-0024	2766	\N	\N	\N	15000		50203010-02	1A1	999	1	24	2024-02-02 02:55:21	2024-02-07 04:06:49		FAD			1	0	0	FAD	0	0	0
387	DOC-2024-0190	01-0189	3483	\N	\N	\N	5142000		50202020-00	2A1-101	999	1	190	2024-02-07 03:00:00	\N		FAD			1	0	0	FAD	0	0	0
388	DOC-2024-0044	01-0044	1103	\N	\N	\N	36746.43		50202020-00	2A1-101	999	1	44	2024-02-08 01:53:04	\N	\N	FAD			1	0	0	FAD	0	0	0
431	DOC-2024-0200	02-0199	1106	\N	\N	\N	1179134		50202020-00	2A1-105	999	1	200	2024-02-28 09:33:47	2024-03-04 03:22:46		FAD			1	0	0	FAD	0	0	0
455	DOC-2024-0222	02-0221	840	\N	\N	\N	250940.52		50202020-00	2A1-106	999	1	222	2024-02-28 10:04:48	2024-03-04 03:26:16		FAD			1	0	0	FAD	0	0	0
480	DOC-2024-0244	02-0243	2763	\N	\N	\N	43307.9		50202020-00	2A1-101	999	1	244	2024-02-28 10:20:17	2024-03-04 03:17:55		FAD			1	0	0	FAD	0	0	0
494	DOC-2024-0253	02-0252	3483	\N	\N	\N	6677000		50202020-00	2A1-102	999	1	253	2024-02-28 10:28:10	2024-03-04 03:19:54		FAD			1	0	0	FAD	0	0	0
311	DOC-2024-0140	01-0140	3483	\N	\N	\N	8500		50202020-00	2A1-101 (RA10612)	999	1	140	2024-02-06 09:29:03	\N		FAD			1	0	0	FAD	0	0	0
681	DOC-2024-0384	02-0383	1131	\N	\N	\N	438227.2		50202020-00	2A1-102	999	1	384	2024-03-04 06:55:53	2024-03-04 07:36:39		FAD			1	0	0	FAD	0	0	0
673	DOC-2024-0378	02-0377	1131	\N	\N	\N	518500		50202020-00	2A1-102	999	1	378	2024-03-04 06:53:23	2024-03-04 07:37:13		FAD			1	0	0	FAD	0	0	0
648	DOC-2024-0366	02-0365	1131	\N	\N	\N	298500		50202020-00	2A1-102	999	1	366	2024-03-04 06:21:24	2024-03-04 07:38:19		FAD			1	0	0	FAD	0	0	0
645	DOC-2024-0365	02-0364	1131	\N	\N	\N	481089		50202020-00	2A1-102	999	1	365	2024-03-04 06:19:53	2024-03-04 07:38:24		FAD			1	0	0	FAD	0	0	0
330	DOC-2024-0158	01-0158	1129	\N	\N	\N	140000		50202020-00	2A1-101	999	1	158	2024-02-06 09:48:27	\N		FAD			1	0	0	FAD	0	0	0
333	DOC-2024-0160	01-0159	3483	\N	\N	\N	29263.36		50202020-00	2A1-101	999	1	160	2024-02-06 09:50:30	\N		FAD			1	0	0	FAD	0	0	0
363	DOC-2024-0170	01-0169	2962	\N	\N	\N	40355		50202020-00	2A1-101	999	1	170	2024-02-07 02:48:44	\N		FAD			1	0	0	FAD	0	0	0
365	DOC-2024-0172	01-0171	1094	\N	\N	\N	63305		50202020-00	2A1-101	999	1	172	2024-02-07 02:49:45	\N		FAD			1	0	0	FAD	0	0	0
300	DOC-2024-0131	01-0131	1196	\N	\N	\N	54056000		50202020-00	2A1-102	999	1	131	2024-02-06 09:11:26	\N		FAD			1	0	0	FAD	0	0	0
305	DOC-2024-0135	01-0135	1131	\N	\N	\N	60000		50202020-00	2A1-102	999	1	135	2024-02-06 09:15:31	\N		FAD			1	0	0	FAD	0	0	0
367	DOC-2024-0173	01-0172	1087	\N	\N	\N	13638.33		50202020-00	2A1-101	999	1	173	2024-02-07 02:50:12	\N		FAD			1	0	0	FAD	0	0	0
368	DOC-2024-0174	01-0173	1128	\N	\N	\N	60971.65		50202020-00	2A1-101	999	1	174	2024-02-07 02:50:37	\N		FAD			1	0	0	FAD	0	0	0
641	DOC-2024-0362	02-0361	3483	\N	\N	\N	1259300		50202020-00	2A1-102	999	1	362	2024-03-04 06:17:28	2024-03-04 07:38:57		FAD			1	0	0	FAD	0	0	0
466	DOC-2024-0233	02-0232	1433	\N	\N	\N	13354.17		50202010-02	2A2B-101	999	1	233	2024-02-28 10:12:16	2024-03-04 03:28:20		FAD			1	0	0	FAD	0	0	0
444	DOC-2024-0211	02-0210	522	\N	\N	\N	41235.75		50202020-00	2A1-104	999	1	211	2024-02-28 10:00:24	2024-03-04 03:24:16		FAD			1	0	0	FAD	0	0	0
301	DOC-2024-0132	01-0132	1120	\N	\N	\N	566866		50202020-00	2A1-101	999	1	132	2024-02-06 09:11:49	\N		FAD			1	0	0	FAD	0	0	0
165	DOC-2024-0047	01-0047	2745	\N	\N	\N	1669.25		50210030-00	1A1	999	1	47	2024-02-02 03:14:25	2024-02-07 04:08:54		FAD			1	0	0	FAD	0	0	0
169	DOC-2024-0049	01-0049	2609	\N	\N	\N	752		50210030-00	1A1	999	1	49	2024-02-02 03:15:31	2024-02-07 04:09:03		FAD			1	0	0	FAD	0	0	0
170	DOC-2024-0050	01-0050	3483	\N	\N	\N	2583000		50202020-00	2A1-101	999	1	50	2024-02-02 03:16:20	2024-02-07 04:09:08		FAD			1	0	0	FAD	0	0	0
323	DOC-2024-0151	01-0151	2696	\N	\N	\N	2170		50202020-00	2A1-101	999	1	151	2024-02-06 09:39:06	\N		FAD			1	0	0	FAD	0	0	0
325	DOC-2024-0153	01-0153	3483	\N	\N	\N	26670		50202020-00	2A1-101	999	1	153	2024-02-06 09:41:57	\N		FAD			1	0	0	FAD	0	0	0
509	DOC-2024-0265	02-0264	3483	\N	\N	\N	2383012		50202020-00	2A1-106	999	1	265	2024-02-28 10:34:21	2024-03-04 03:12:59		FAD			1	0	0	FAD	0	0	0
670	DOC-2024-0376	02-0375	1103	\N	\N	\N	148226.6		50202020-00	2A1-104	999	1	376	2024-03-04 06:51:52	2024-03-04 07:37:23		FAD			1	0	0	FAD	0	0	0
432	DOC-2024-0201	02-0200	1051	\N	\N	\N	9260296		50202020-00	2A1-105	999	1	201	2024-02-28 09:34:08	2024-03-04 03:22:57		FAD			1	0	0	FAD	0	0	0
456	DOC-2024-0223	02-0222	608	\N	\N	\N	28092.5		50202020-00	2A1-106	999	1	223	2024-02-28 10:05:12	2024-03-04 03:26:22		FAD			1	0	0	FAD	0	0	0
675	DOC-2024-0380	02-0379	3483	\N	\N	\N	363941.5		50202020-00	2A1-106	999	1	380	2024-03-04 06:54:08	2024-03-04 07:37:03		FAD			1	0	0	FAD	0	0	0
625	DOC-2024-0352	02-0352	3483	\N	\N	\N	313873.5		50202020-00	2A1-106	999	1	352	2024-03-04 06:06:15	2024-03-04 07:39:41		FAD			1	0	0	FAD	0	0	0
481	DOC-2024-0245	02-0244	3483	\N	\N	\N	2503739.34		50202020-00	2A1-AC (HR)	999	1	245	2024-02-28 10:20:47	2024-03-04 03:18:11		FAD			1	0	0	FAD	0	0	0
553	DOC-2024-0290	02-0290	2692	\N	\N	\N	7867.31		50202020-00	2A1-AC (HR)	999	1	290	2024-02-28 11:04:14	2024-03-04 03:04:27		FAD			1	0	0	FAD	0	0	0
692	DOC-2024-0392	02-0390	3518	\N	\N	\N	4560		50202020-00	2A1-AC (Planning)	999	1	392	2024-03-04 07:18:40	2024-03-04 07:34:35		FAD			1	0	0	FAD	0	0	0
689	DOC-2024-0389	02-0387	2748	\N	\N	\N	7500		50202020-00	2A1-AC (FAD)	999	1	389	2024-03-04 07:03:04	2024-03-04 07:35:22		FAD			1	0	0	FAD	0	0	0
683	DOC-2024-0386	02-0385	3414	\N	\N	\N	414500		50202020-00	2A1-AC (HR)	999	1	386	2024-03-04 07:00:58	2024-03-04 07:35:57		FAD			1	0	0	FAD	0	0	0
687	DOC-2024-0388	\N	2748	\N	\N	\N	7500		50203990-00	1A1	999	0	388	2024-03-04 07:02:15	\N		FAD			0	0	0	FAD	0	0	0
495	DOC-2024-0254	02-0253	3483	\N	\N	\N	4911000		50202020-00	2A1-101	999	1	254	2024-02-28 10:28:30	2024-03-04 03:20:01		FAD			1	0	0	FAD	0	0	0
1030	DOC-2024-0623	03-0574	3333	\N	\N	\N	33000		50202020-00	2A2B-105	122	1	623	2024-04-11 05:09:02	2024-04-11 05:09:16		FAD			1	0	0	FAD	0	0	0
600	DOC-2024-0330	02-0330	3483	\N	\N	\N	2514027.68		50202020-00	2A1-AC (HR)	999	1	330	2024-03-04 03:52:58	2024-03-04 07:43:07		FAD			1	0	0	FAD	0	0	0
543	DOC-2024-0281	02-0281	3483	\N	\N	\N	3763500		50202020-00	2A1-101	999	1	281	2024-02-28 10:58:33	2024-03-04 03:06:27		FAD			1	0	0	FAD	0	0	0
680	DOC-2024-0384	02-0383	1131	\N	\N	\N	815500		50202020-00	2A1-101	999	1	384	2024-03-04 06:55:53	2024-03-04 07:36:39		FAD			1	0	0	FAD	0	0	0
467	DOC-2024-0234	02-0233	2759	\N	\N	\N	16770.19		50101010-01	2A2	999	1	234	2024-02-28 10:12:40	2024-03-04 03:28:26		FAD			1	0	0	FAD	0	0	0
465	DOC-2024-0232	02-0231	2053	\N	\N	\N	14693.5		50202010-02	2A2B-101	999	1	232	2024-02-28 10:11:46	2024-03-04 03:28:11		FAD			1	0	0	FAD	0	0	0
159	DOC-2024-0040	01-0040	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	40	2024-02-02 03:04:41	2024-02-07 04:08:21		FAD			1	0	0	FAD	0	0	0
693	DOC-2024-0393	02-0391	1041	\N	\N	\N	110000		50202020-00	2A1-101 (Patriot)	999	1	393	2024-03-04 07:19:06	2024-03-04 07:34:25		FAD			1	0	0	FAD	0	0	0
672	DOC-2024-0378	02-0377	1131	\N	\N	\N	1520000		50202020-00	2A1-101	999	1	378	2024-03-04 06:53:23	2024-03-04 07:37:13		FAD			1	0	0	FAD	0	0	0
647	DOC-2024-0366	02-0365	1131	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	999	1	366	2024-03-04 06:21:24	2024-03-04 07:38:19		FAD			1	0	0	FAD	0	0	0
668	DOC-2024-0374	02-0373	3483	\N	\N	\N	3992000		50202020-00	2A1-101	999	1	374	2024-03-04 06:51:05	2024-03-04 07:37:33		FAD			1	0	0	FAD	0	0	0
586	DOC-2024-0316	02-0316	1034	\N	\N	\N	399010		50202020-00	2A1-101	999	1	316	2024-03-04 03:39:03	2024-03-04 07:44:35		FAD			1	0	0	FAD	0	0	0
563	DOC-2024-0299	02-0299	2742	\N	\N	\N	1006.88		50202020-00	2A1-101 (Patriot)	999	1	299	2024-02-28 11:09:10	2024-03-04 02:57:14		FAD			1	0	0	FAD	0	0	0
161	DOC-2024-0042	01-0042	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	42	2024-02-02 03:05:29	2024-02-07 04:08:33		FAD			1	0	0	FAD	0	0	0
162	DOC-2024-0043	01-0043	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	43	2024-02-02 03:05:46	2024-02-07 04:08:37		FAD			1	0	0	FAD	0	0	0
168	DOC-2024-0048	01-0048	3483	\N	\N	\N	27233584.22		50202020-00	2A1-104	999	1	48	2024-02-02 03:15:08	2024-02-07 04:08:58		FAD			1	0	0	FAD	0	0	0
172	DOC-2024-0052	01-0052	497	\N	\N	\N	281482.5		50202020-00	2A1-104	999	1	52	2024-02-02 03:17:23	2024-02-07 04:09:19		FAD			1	0	0	FAD	0	0	0
174	DOC-2024-0054	01-0054	780	\N	\N	\N	434857.49		50202020-00	2A1-104	999	1	54	2024-02-02 03:19:58	2024-02-07 04:17:41		FAD			1	0	0	FAD	0	0	0
637	DOC-2024-0360	02-0359	1178	\N	\N	\N	20455		50202020-00	2A1-102	999	1	360	2024-03-04 06:15:28	2024-03-04 07:39:07		FAD			1	0	0	FAD	0	0	0
691	DOC-2024-0391	02-0389	3518	\N	\N	\N	13900		50202010-02	2A2B-107	999	1	391	2024-03-04 07:18:04	2024-03-04 07:34:43		FAD			1	0	0	FAD	0	0	0
646	DOC-2024-0366	02-0365	1131	\N	\N	\N	956828.5		50202020-00	2A1-101	999	1	366	2024-03-04 06:21:24	2024-03-04 07:38:19		FAD			1	0	0	FAD	0	0	0
781	DOC-2024-0443	03-0432	2834	\N	\N	\N	284699.84		50202020-00	2A1-101	122	1	443	2024-03-15 03:28:57	2024-03-15 03:43:05		FAD			1	0	0	FAD	0	0	0
771	DOC-2024-0433	03-0421	3527	\N	\N	\N	4672000		50202020-00	2A1-104	122	1	433	2024-03-15 03:21:42	2024-03-15 03:45:37		FAD			1	0	0	FAD	0	0	0
753	DOC-2024-0423	03-0411	3102	\N	\N	\N	8500		50203010-02	1A1	122	1	423	2024-03-15 03:05:49	2024-03-15 03:46:48		FAD			1	0	0	FAD	0	0	0
619	DOC-2024-0346	02-0346	1122	\N	\N	\N	5065639.14		50202020-00	2A1-103	999	1	346	2024-03-04 04:04:59	2024-03-04 07:40:16		FAD			1	0	0	FAD	0	0	0
601	DOC-2024-0330	02-0330	3483	\N	\N	\N	21006		50211990-00	PD 997	999	1	330	2024-03-04 03:52:58	2024-03-04 07:43:07		FAD			1	0	0	FAD	0	0	0
534	DOC-2024-0272	02-0272	1103	\N	\N	\N	1176317.9		50202020-00	2A1-104	999	1	272	2024-02-28 10:51:27	2024-03-04 03:15:14		FAD			1	0	0	FAD	0	0	0
176	DOC-2024-0056	01-0056	3483	\N	\N	\N	420000		50202020-00	2A1-104	999	1	56	2024-02-02 03:22:12	2024-02-07 04:17:52		FAD			1	0	0	FAD	0	0	0
177	DOC-2024-0057	01-0057	1059	\N	\N	\N	8735809.29		50202020-00	2A1-104	999	1	57	2024-02-02 03:22:49	2024-02-07 04:17:57		FAD			1	0	0	FAD	0	0	0
178	DOC-2024-0058	01-0058	1196	\N	\N	\N	32764920.24		50202020-00	2A1-104	999	1	58	2024-02-02 03:23:14	2024-02-07 04:18:02		FAD			1	0	0	FAD	0	0	0
179	DOC-2024-0059	01-0059	1122	\N	\N	\N	62219445.68		50202020-00	2A1-104	999	1	59	2024-02-02 03:37:10	2024-02-07 04:18:08		FAD			1	0	0	FAD	0	0	0
180	DOC-2024-0060	01-0060	1200	\N	\N	\N	32868104		50202020-00	2A1-104	999	1	60	2024-02-02 03:38:17	2024-02-07 04:18:13		FAD			1	0	0	FAD	0	0	0
181	DOC-2024-0061	01-0061	1192	\N	\N	\N	5852809.29		50202020-00	2A1-104	999	1	61	2024-02-02 03:38:47	2024-02-07 04:18:18		FAD			1	0	0	FAD	0	0	0
182	DOC-2024-0062	01-0062	1181	\N	\N	\N	13953809.29		50202020-00	2A1-104	999	1	62	2024-02-02 03:39:48	2024-02-07 04:18:26		FAD			1	0	0	FAD	0	0	0
183	DOC-2024-0063	01-0063	1183	\N	\N	\N	18771809.29		50202020-00	2A1-104	999	1	63	2024-02-02 03:40:41	2024-02-07 04:18:31		FAD			1	0	0	FAD	0	0	0
185	DOC-2024-0065	01-0065	1204	\N	\N	\N	12708809.29		50202020-00	2A1-104	999	1	65	2024-02-02 03:42:38	2024-02-07 04:18:40		FAD			1	0	0	FAD	0	0	0
1031	DOC-2024-0624	03-0563	3266	\N	\N	\N	215500		50202010-02	2A2B-105	122	1	624	2024-04-11 05:10:06	2024-04-11 05:10:31		FAD			1	0	0	FAD	0	0	0
564	DOC-2024-0300	02-0300	2709	\N	\N	\N	81016.8		50202020-00	2A1-104	999	1	300	2024-02-28 11:09:33	2024-03-04 02:56:33		FAD			1	0	0	FAD	0	0	0
595	DOC-2024-0325	02-0325	434	\N	\N	\N	120995.37		50202020-00	2A1-104	999	1	325	2024-03-04 03:49:45	2024-03-04 07:43:36		FAD			1	0	0	FAD	0	0	0
457	DOC-2024-0224	02-0223	3501	\N	\N	\N	248590.11		50202020-00	2A1-106	999	1	224	2024-02-28 10:06:26	2024-03-04 03:27:03		FAD			1	0	0	FAD	0	0	0
554	DOC-2024-0291	02-0291	2737	\N	\N	\N	80000		50202020-00	2A1-106	999	1	291	2024-02-28 11:04:34	2024-03-04 03:04:01		FAD			1	0	0	FAD	0	0	0
544	DOC-2024-0282	02-0282	935	\N	\N	\N	128988.46		50202020-00	2A1-106	999	1	282	2024-02-28 10:58:54	2024-03-04 03:06:13		FAD			1	0	0	FAD	0	0	0
669	DOC-2024-0375	02-0374	2731	\N	\N	\N	54232.19		50202020-00	2A1-AC (NULAB)	999	1	375	2024-03-04 06:51:27	2024-03-04 07:37:28		FAD			1	0	0	FAD	0	0	0
626	DOC-2024-0353	02-0353	2752	\N	\N	\N	889		50202020-00	2A1-AC (Scholar Grad)	999	1	353	2024-03-04 06:07:00	2024-03-04 07:39:36		FAD			1	0	0	FAD	0	0	0
587	DOC-2024-0317	02-0317	3513	\N	\N	\N	25000		50202020-00	2A1-AC	999	1	317	2024-03-04 03:41:17	2024-03-04 07:44:30		FAD			1	0	0	FAD	0	0	0
496	DOC-2024-0255	02-0254	1131	\N	\N	\N	402356		50202020-00	2A1-101	999	1	255	2024-02-28 10:29:05	2024-03-04 03:20:08		FAD			1	0	0	FAD	0	0	0
575	DOC-2024-0308	02-0308	1190	\N	\N	\N	40000		50202020-00	2A1-101	999	1	308	2024-02-28 11:13:47	2024-03-04 02:50:32		FAD			1	0	0	FAD	0	0	0
679	DOC-2024-0383	02-0382	3483	\N	\N	\N	6768000		50202020-00	2A1-101	999	1	383	2024-03-04 06:55:22	2024-03-04 07:36:48		FAD			1	0	0	FAD	0	0	0
676	DOC-2024-0381	02-0380	1022	\N	\N	\N	81921		50202020-00	2A1-101	999	1	381	2024-03-04 06:54:41	2024-03-04 07:36:57		FAD			1	0	0	FAD	0	0	0
649	DOC-2024-0367	02-0366	2756	\N	\N	\N	1650		50202020-00	2A1-101	999	1	367	2024-03-04 06:22:44	2024-03-04 07:38:14		FAD			1	0	0	FAD	0	0	0
497	DOC-2024-0255	02-0254	1131	\N	\N	\N	140000		50202020-00	2A1-102	999	1	255	2024-02-28 10:29:05	2024-03-04 03:20:08		FAD			1	0	0	FAD	0	0	0
576	DOC-2024-0308	02-0308	1190	\N	\N	\N	20000		50202020-00	2A1-102	999	1	308	2024-02-28 11:13:47	2024-03-04 02:50:32		FAD			1	0	0	FAD	0	0	0
677	DOC-2024-0381	02-0380	1022	\N	\N	\N	95000		50202020-00	2A1-102	999	1	381	2024-03-04 06:54:41	2024-03-04 07:36:57		FAD			1	0	0	FAD	0	0	0
636	DOC-2024-0359	02-0358	2962	\N	\N	\N	31406		50202020-00	2A1-102	999	1	359	2024-03-04 06:15:04	2024-03-04 07:39:11		FAD			1	0	0	FAD	0	0	0
602	DOC-2024-0331	02-0331	3483	\N	\N	\N	9000		50202010-02	2A2B-101	999	1	331	2024-03-04 03:53:25	2024-03-04 07:43:02		FAD			1	0	0	FAD	0	0	0
524	DOC-2024-0266	02-0265	3483	\N	\N	\N	41550		50102050-02	2A2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
523	DOC-2024-0266	02-0265	3483	\N	\N	\N	117148.33		50102110-01	2A2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
433	DOC-2024-0202	02-0201	2737	\N	\N	\N	50000		50202010-02	2A2B-105	999	1	202	2024-02-28 09:35:03	2024-03-04 03:23:06		FAD			1	0	0	FAD	0	0	0
187	DOC-2024-0067	01-0067	1067	\N	\N	\N	5958809.29		50202020-00	2A1-104	999	1	67	2024-02-02 03:44:42	2024-02-07 04:18:49		FAD			1	0	0	FAD	0	0	0
482	DOC-2024-0245	02-0244	3483	\N	\N	\N	19650.75		50211990-00	PD 997	999	1	245	2024-02-28 10:20:47	2024-03-04 03:18:11		FAD			1	0	0	FAD	0	0	0
392	DOC-2024-0191	02-0190	3483	\N	\N	\N	70616.75		50101010-01	2A1-2	999	1	191	2024-02-28 09:16:44	2024-03-04 03:20:45		FAD			1	0	0		0	0	0
393	DOC-2024-0191	02-0190	3483	\N	\N	\N	147679.75		50101010-01	2A2	999	1	191	2024-02-28 09:16:44	2024-03-04 03:20:45		FAD			1	0	0		0	0	0
782	DOC-2024-0444	03-0433	3483	\N	\N	\N	960000		50202020-00	2A1-103	122	1	444	2024-03-15 03:29:30	2024-03-15 03:42:58		FAD			1	0	0	FAD	0	0	0
468	DOC-2024-0235	02-0234	2717	\N	\N	\N	16770.19		50101010-01	2A2	999	1	235	2024-02-28 10:13:03	2024-03-04 03:28:30		FAD			1	0	0	FAD	0	0	0
772	DOC-2024-0434	03-0422	1122	\N	\N	\N	193000		50202020-00	2A1-104	122	1	434	2024-03-15 03:22:06	2024-03-15 03:45:29		FAD			1	0	0	FAD	0	0	0
756	DOC-2024-0424	03-0412	2671	\N	\N	\N	780		50202010-02	2A2A-103	122	1	424	2024-03-15 03:14:26	2024-03-15 03:46:41		FAD			1	0	0	FAD	0	0	0
742	DOC-2024-0414	\N	3525	\N	\N	\N	25000		10405020-00	1A1	999	0	414	2024-03-14 06:33:43	\N		FAD			0	0	0	FAD	0	0	0
522	DOC-2024-0266	02-0265	3483	\N	\N	\N	62601.70		50102120-01	2A2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
521	DOC-2024-0266	02-0265	3483	\N	\N	\N	3636.35		50102060-03	2A1-2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
520	DOC-2024-0266	02-0265	3483	\N	\N	\N	12900		50102050-02	2A1-2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
519	DOC-2024-0266	02-0265	3483	\N	\N	\N	51327.85		50102110-01	2A1-2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
518	DOC-2024-0266	02-0265	3483	\N	\N	\N	22967.15		50102120-01	2A1-2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
684	DOC-2024-0387	02-0386	3038	\N	\N	\N	113300		50203010-01	1A1	999	1	387	2024-03-04 07:01:54	2024-03-04 07:35:48		FAD			1	0	0	FAD	0	0	0
535	DOC-2024-0273	02-0273	1103	\N	\N	\N	93595.75		50202020-00	2A1-104	999	1	273	2024-02-28 10:51:51	2024-03-04 03:15:23		FAD			1	0	0	FAD	0	0	0
620	DOC-2024-0347	02-0347	1059	\N	\N	\N	4339289.06		50202020-00	2A1-103	999	1	347	2024-03-04 04:05:54	2024-03-04 07:40:11		FAD			1	0	0	FAD	0	0	0
682	DOC-2024-0385	02-0384	3517	\N	\N	\N	463		50201020-00	2A1-1	999	1	385	2024-03-04 06:57:25	2024-03-04 07:36:24		FAD			1	0	0	FAD	0	0	0
202	DOC-2024-0080	01-0080	3489	\N	\N	\N	9102		50201010-00	1A1	999	1	80	2024-02-02 03:55:23	2024-02-07 04:19:56		FAD			1	0	0	FAD	0	0	0
188	DOC-2024-0068	01-0068	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	68	2024-02-02 03:45:06	2024-02-07 04:18:56		FAD			1	0	0	FAD	0	0	0
190	DOC-2024-0070	01-0070	3483	\N	\N	\N	8850		50202010-02	2A2B-101	999	1	70	2024-02-02 03:46:40	2024-02-07 04:19:06		FAD			1	0	0	FAD	0	0	0
193	DOC-2024-0072	01-0072	1155	\N	\N	\N	3967071.74		50202020-00	2A1-104	999	1	72	2024-02-02 03:48:34	2024-02-07 04:19:17		FAD			1	0	0	FAD	0	0	0
1032	DOC-2024-0625	03-0530	3483	\N	\N	\N	47200		50202010-02	2A2B-106	122	1	625	2024-04-11 05:11:28	2024-04-11 05:11:40		FAD			1	0	0	FAD	0	0	0
1008	DOC-2024-0606	03-0599	2340	\N	\N	\N	13500		50211990-00	PD 997	122	1	606	2024-04-05 09:52:20	2024-04-05 09:59:04		FAD			1	0	0	FAD	0	0	0
93	DOC-2024-0001	01-0001	3483	\N	\N	\N	88453.48		50101010-01	2A1-1	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	 	0	0	0
194	DOC-2024-0073	01-0073	1203	\N	\N	\N	12033730.06		50202020-00	2A1-104	999	1	73	2024-02-02 03:49:53	2024-02-07 04:19:22		FAD			1	0	0	FAD	0	0	0
196	DOC-2024-0075	01-0075	1118	\N	\N	\N	11185730.06		50202020-00	2A1-104	999	1	75	2024-02-02 03:51:23	2024-02-07 04:19:32		FAD			1	0	0	FAD	0	0	0
555	DOC-2024-0292	02-0292	3483	\N	\N	\N	512016.50		50202020-00	2A1-106	999	1	292	2024-02-28 11:04:53	2024-03-04 03:03:51		FAD			1	0	0	FAD	0	0	0
266	DOC-2024-0112	01-0112	3483	\N	\N	\N	2214000		50202020-00	2A1-102	999	1	112	2024-02-06 08:52:09	\N		FAD			1	0	0	FAD	0	0	0
164	DOC-2024-0046	01-0046	2709	\N	\N	\N	3360		50210030-00	1A1	999	1	46	2024-02-02 03:13:03	2024-02-07 04:08:47		FAD			1	0	0	FAD	0	0	0
267	DOC-2024-0113	01-0113	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	113	2024-02-06 08:52:35	\N		FAD			1	0	0	FAD	0	0	0
268	DOC-2024-0114	01-0114	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	114	2024-02-06 08:53:09	\N		FAD			1	0	0	FAD	0	0	0
458	DOC-2024-0225	02-0224	126	\N	\N	\N	196978.44		50202020-00	2A1-106	999	1	225	2024-02-28 10:06:53	2024-03-04 03:27:20		FAD			1	0	0	FAD	0	0	0
197	DOC-2024-0076	01-0076	1130	\N	\N	\N	4014071.74		50202020-00	2A1-104	999	1	76	2024-02-02 03:52:09	2024-02-07 04:19:36		FAD			1	0	0	FAD	0	0	0
198	DOC-2024-0077	01-0077	1060	\N	\N	\N	19390809.29		50202020-00	2A1-104	999	1	77	2024-02-02 03:52:40	2024-02-07 04:19:40		FAD			1	0	0	FAD	0	0	0
199	DOC-2024-0078	01-0078	1031	\N	\N	\N	2191000		50202020-00	2A1-104	999	1	78	2024-02-02 03:53:01	2024-02-07 04:19:46		FAD			1	0	0	FAD	0	0	0
200	DOC-2024-0079	01-0079	2732	\N	\N	\N	5000		50203990-00	1A1	999	1	79	2024-02-02 03:53:44	2024-02-07 04:19:52		FAD			1	0	0	FAD	0	0	0
216	DOC-2024-0091	01-0091	3483	\N	\N	\N	1889146.28		50202020-00	2A1-104	999	1	91	2024-02-02 06:35:15	2024-02-07 05:06:33		FAD			1	0	0	FAD	0	0	0
217	DOC-2024-0091	01-0091	3483	\N	\N	\N	265236.44		50202020-00	2A1-103	999	1	91	2024-02-02 06:35:15	2024-02-07 05:06:33		FAD			1	0	0	FAD	0	0	0
218	DOC-2024-0092	01-0092	3483	\N	\N	\N	76000		50202020-00	2A1-104	999	1	92	2024-02-02 06:36:54	2024-02-07 05:06:38		FAD			1	0	0	FAD	0	0	0
219	DOC-2024-0093	01-0093	3483	\N	\N	\N	2065645.91		50202020-00	2A1-AC (HR)	999	1	93	2024-02-02 06:39:28	2024-02-07 05:06:43		FAD			1	0	0	FAD	0	0	0
220	DOC-2024-0093	01-0093	3483	\N	\N	\N	17022.53		50211990-00	PD 997	999	1	93	2024-02-02 06:39:28	2024-02-07 05:06:43		FAD			1	0	0	FAD	0	0	0
224	DOC-2024-0096	01-0096	1046	\N	\N	\N	6610000		50202020-00	2A1-102	999	1	96	2024-02-02 06:44:14	2024-02-07 05:06:55		FAD			1	0	0	FAD	0	0	0
228	DOC-2024-0097	01-0097	1111	\N	\N	\N	6496000		50202020-00	2A1-102	999	1	97	2024-02-02 06:46:26	2024-02-07 05:07:01		FAD			1	0	0	FAD	0	0	0
233	DOC-2024-0100	01-0100	1039	\N	\N	\N	11847134		50202020-00	2A1-101	999	1	100	2024-02-02 06:53:49	2024-02-07 05:07:16		FAD			1	0	0	FAD	0	0	0
234	DOC-2024-0101	01-0101	1042	\N	\N	\N	22889628		50202020-00	2A1-101	999	1	101	2024-02-02 07:56:06	2024-02-07 05:07:21		FAD			1	0	0	FAD	0	0	0
242	DOC-2024-0104	01-0104	1045	\N	\N	\N	9693220		50202020-00	2A1-101	999	1	104	2024-02-06 08:43:05	2024-02-07 05:07:40		FAD			1	0	0	FAD	0	0	0
264	DOC-2024-0111	01-0111	1040	\N	\N	\N	8867000		50202020-00	2A1-102	999	1	111	2024-02-06 08:51:44	\N		FAD			1	0	0	FAD	0	0	0
727	DOC-2024-0409	03-0404	3483	\N	\N	\N	18000		50102010-01	2A1-2	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
545	DOC-2024-0283	02-0283	3508	\N	\N	\N	272415		50202020-00	2A1-101	999	1	283	2024-02-28 11:00:57	2024-03-04 03:06:03		FAD			1	0	0	FAD	0	0	0
498	DOC-2024-0256	02-0255	1129	\N	\N	\N	275004.38		50202020-00	2A1-101	999	1	256	2024-02-28 10:29:42	2024-03-04 03:07:51		FAD			1	0	0	FAD	0	0	0
499	DOC-2024-0256	02-0255	1129	\N	\N	\N	60000		50202020-00	2A1-102	999	1	256	2024-02-28 10:29:42	2024-03-04 03:07:51		FAD			1	0	0	FAD	0	0	0
434	DOC-2024-0203	02-0202	3483	\N	\N	\N	6480		50202010-02	2A2B-105	999	1	203	2024-02-28 09:35:41	2024-03-04 03:23:15		FAD			1	0	0	FAD	0	0	0
627	DOC-2024-0354	02-0354	3483	\N	\N	\N	17700		50202010-02	2A2B-105	999	1	354	2024-03-04 06:07:35	2024-03-04 07:39:32		FAD			1	0	0	FAD	0	0	0
743	DOC-2024-0415	\N	2704	\N	\N	\N	25000		50101010-01	1A1	999	0	415	2024-03-14 06:37:44	\N		FAD			0	0	0	FAD	0	0	0
744	DOC-2024-0415	\N	2704	\N	\N	\N	3000		50203210-00	2A1-101 (Patriot)	999	0	415	2024-03-14 06:37:44	\N		FAD			0	0	0	FAD	0	0	0
525	DOC-2024-0266	02-0265	3483	\N	\N	\N	8522.73		50102060-03	2A2	999	1	266	2024-02-28 10:44:04	2024-03-04 03:13:16		FAD			1	0	0	FAD	0	0	0
757	DOC-2024-0425	03-0413	3522	\N	\N	\N	11876.28		50202020-00	2A2B-101	122	1	425	2024-03-15 03:14:54	2024-03-15 03:46:34		FAD			1	0	0	FAD	0	0	0
469	DOC-2024-0236	02-0235	3486	\N	\N	\N	55232.66		50203090-00	1A1	999	1	236	2024-02-28 10:14:05	2024-03-04 03:16:39		FAD			1	0	0	FAD	0	0	0
394	DOC-2024-0192	02-0191	3483	\N	\N	\N	553826.94		50101010-01	1A1	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
395	DOC-2024-0192	02-0191	3483	\N	\N	\N	90044.52		50101010-01	2A1-1	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
396	DOC-2024-0192	02-0191	3483	\N	\N	\N	235249.26		50101010-01	2A1-2	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
397	DOC-2024-0192	02-0191	3483	\N	\N	\N	551391.98		50101010-01	2A2	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
536	DOC-2024-0274	02-0274	1103	\N	\N	\N	59099.77		50202020-00	2A1-104	999	1	274	2024-02-28 10:52:16	2024-03-04 03:15:31		FAD			1	0	0	FAD	0	0	0
585	DOC-2024-0315	02-0312	3483	\N	\N	\N	594675.57		50202020-00	2A1-103	999	1	312	2024-03-04 02:38:42	2024-03-04 02:43:24		FAD			1	0	0	FAD	0	0	0
621	DOC-2024-0348	02-0348	1196	\N	\N	\N	16758669.47		50202020-00	2A1-103	999	1	348	2024-03-04 04:06:37	2024-03-04 07:40:06		FAD			1	0	0	FAD	0	0	0
603	DOC-2024-0332	02-0332	3167	\N	\N	\N	196722.74		50204020-00	1A1	999	1	332	2024-03-04 03:54:22	2024-03-04 07:42:58		FAD			1	0	0	FAD	0	0	0
398	DOC-2024-0192	02-0191	3483	\N	\N	\N	38000		50102010-01	1A1	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
1009	DOC-2024-0607	03-0600	1122	\N	\N	\N	16640000		50202020-00	2A1-105	122	1	607	2024-04-05 09:52:58	2024-04-05 09:59:09		FAD			1	0	0	FAD	0	0	0
584	DOC-2024-0315	02-0312	3483	\N	\N	\N	3399228.57		50202020-00	2A1-104	999	1	312	2024-03-04 02:38:42	2024-03-04 02:43:24		FAD			1	0	0	FAD	0	0	0
606	DOC-2024-0335	02-0335	1631	\N	\N	\N	68816		50202020-00	2A1-104	999	1	335	2024-03-04 03:55:44	2024-03-04 07:42:42		FAD			1	0	0	FAD	0	0	0
427	DOC-2024-0196	02-0195	1156	\N	\N	\N	12067412		50202020-00	2A1-105	999	1	196	2024-02-28 09:31:59	2024-03-04 03:22:01		FAD			1	0	0	FAD	0	0	0
447	DOC-2024-0214	02-0213	1181	\N	\N	\N	579000		50202020-00	2A1-104	999	1	214	2024-02-28 10:01:33	2024-03-04 03:25:06		FAD			1	0	0	FAD	0	0	0
611	DOC-2024-0340	02-0340	2730	\N	\N	\N	4491.79		50202020-00	2A1-104	999	1	340	2024-03-04 03:58:06	2024-03-04 07:41:43		FAD			1	0	0	FAD	0	0	0
596	DOC-2024-0326	02-0326	1103	\N	\N	\N	504741.38		50202020-00	2A1-104	999	1	326	2024-03-04 03:50:18	2024-03-04 07:43:31		FAD			1	0	0	FAD	0	0	0
231	DOC-2024-0098	01-0098	1057	\N	\N	\N	6119000		50202020-00	2A1-102	999	1	98	2024-02-02 06:52:27	2024-02-07 05:07:05		FAD			1	0	0	FAD	0	0	0
236	DOC-2024-0101	01-0101	1042	\N	\N	\N	13160500		50202020-00	2A1-102	999	1	101	2024-02-02 07:56:06	2024-02-07 05:07:21		FAD			1	0	0	FAD	0	0	0
237	DOC-2024-0102	01-0102	1039	\N	\N	\N	17603000		50202020-00	2A1-101	999	1	102	2024-02-06 08:39:21	2024-02-07 05:07:30		FAD			1	0	0	FAD	0	0	0
238	DOC-2024-0102	01-0102	1039	\N	\N	\N	3915000		50202020-00	2A1-101 (RA10612)	999	1	102	2024-02-06 08:39:21	2024-02-07 05:07:30		FAD			1	0	0	FAD	0	0	0
239	DOC-2024-0102	01-0102	1039	\N	\N	\N	31610000		50202020-00	2A1-102	999	1	102	2024-02-06 08:39:21	2024-02-07 05:07:30		FAD			1	0	0	FAD	0	0	0
241	DOC-2024-0103	01-0103	3483	\N	\N	\N	246900		50202020-00	2A1-102	999	1	103	2024-02-06 08:41:49	2024-02-07 05:07:35		FAD			1	0	0	FAD	0	0	0
244	DOC-2024-0104	01-0104	1045	\N	\N	\N	1911000		50202020-00	2A1-102	999	1	104	2024-02-06 08:43:05	2024-02-07 05:07:40		FAD			1	0	0	FAD	0	0	0
302	DOC-2024-0133	01-0133	3494	\N	\N	\N	4730.90		50215030-00	1A1	999	1	133	2024-02-06 09:14:15	\N		FAD			1	0	0	FAD	0	0	0
303	DOC-2024-0134	01-0134	3494	\N	\N	\N	4008.78		50215030-00	1A1	999	1	134	2024-02-06 09:14:36	\N		FAD			1	0	0	FAD	0	0	0
247	DOC-2024-0105	01-0105	1044	\N	\N	\N	4590000		50202020-00	2A1-102	999	1	105	2024-02-06 08:44:18	2024-02-07 05:07:45		FAD			1	0	0	FAD	0	0	0
250	DOC-2024-0106	01-0106	1047	\N	\N	\N	2229500		50202020-00	2A1-102	999	1	106	2024-02-06 08:45:48	2024-02-07 05:07:51		FAD			1	0	0	FAD	0	0	0
253	DOC-2024-0107	01-0107	1037	\N	\N	\N	21145500		50202020-00	2A1-102	999	1	107	2024-02-06 08:47:18	2024-02-07 05:07:57		FAD			1	0	0	FAD	0	0	0
256	DOC-2024-0108	01-0108	1038	\N	\N	\N	26738000		50202020-00	2A1-102	999	1	108	2024-02-06 08:48:25	2024-02-07 05:08:03		FAD			1	0	0	FAD	0	0	0
259	DOC-2024-0109	01-0109	1041	\N	\N	\N	1627000		50202020-00	2A1-102	999	1	109	2024-02-06 08:49:24	2024-02-07 05:08:09		FAD			1	0	0	FAD	0	0	0
262	DOC-2024-0110	01-0110	1043	\N	\N	\N	20702000		50202020-00	2A1-102	999	1	110	2024-02-06 08:50:35	\N		FAD			1	0	0	FAD	0	0	0
324	DOC-2024-0152	01-0152	1851	\N	\N	\N	335821.75		50202020-00	2A1-104	999	1	152	2024-02-06 09:41:27	\N		FAD			1	0	0	FAD	0	0	0
286	DOC-2024-0127	01-0127	1184	\N	\N	\N	5260854		50202020-00	2A1-101	999	1	127	2024-02-06 09:07:24	\N		FAD			1	0	0	FAD	0	0	0
287	DOC-2024-0127	01-0127	1184	\N	\N	\N	87000		50202020-00	2A1-101 (RA10612)	999	1	127	2024-02-06 09:07:24	\N		FAD			1	0	0	FAD	0	0	0
537	DOC-2024-0275	02-0275	1103	\N	\N	\N	98780.84		50202020-00	2A1-104	999	1	275	2024-02-28 10:52:46	2024-03-04 03:15:36		FAD			1	0	0	FAD	0	0	0
500	DOC-2024-0257	02-0256	2709	\N	\N	\N	2000		50205020-01	1A1	999	1	257	2024-02-28 10:30:04	2024-03-04 03:08:01		FAD			1	0	0	FAD	0	0	0
483	DOC-2024-0246	02-0245	2663	\N	\N	\N	16934.55		50202020-00	2A1-AC (HR)	999	1	246	2024-02-28 10:23:49	2024-03-04 03:18:21		FAD			1	0	0	FAD	0	0	0
628	DOC-2024-0355	\N	3498	\N	\N	\N	3600		50103020 (732)	1A1	999	0	355	2024-03-04 06:08:04	\N		FAD			0	0	0	FAD	0	0	0
435	DOC-2024-0204	02-0203	2334	\N	\N	\N	4500		50202020-00	2A1-AC (FAD)	999	1	204	2024-02-28 09:36:14	2024-03-04 03:23:22		FAD			1	0	0	FAD	0	0	0
578	DOC-2024-0310	02-0310	1131	\N	\N	\N	120000		50202020-00	2A1-101	999	1	310	2024-02-28 11:14:38	2024-03-04 02:44:50		FAD			1	0	0	FAD	0	0	0
573	DOC-2024-0307	02-0307	3483	\N	\N	\N	8927.72		50202020-00	2A1-101	999	1	307	2024-02-28 11:12:41	2024-03-04 02:54:16		FAD			1	0	0	FAD	0	0	0
418	DOC-2024-0193	02-0192	3483	\N	\N	\N	136463.56		50101010-01	1A1	999	1	193	2024-02-28 09:29:04	2024-03-04 03:21:35		FAD			1	0	0	FAD	0	0	0
419	DOC-2024-0193	02-0192	3483	\N	\N	\N	27626.48		50101010-01	2A1-1	999	1	193	2024-02-28 09:29:04	2024-03-04 03:21:35		FAD			1	0	0	FAD	0	0	0
420	DOC-2024-0193	02-0192	3483	\N	\N	\N	70621.24		50101010-01	2A1-2	999	1	193	2024-02-28 09:29:04	2024-03-04 03:21:35		FAD			1	0	0	FAD	0	0	0
421	DOC-2024-0193	02-0192	3483	\N	\N	\N	147688.52		50101010-01	2A2	999	1	193	2024-02-28 09:29:04	2024-03-04 03:21:35		FAD			1	0	0	FAD	0	0	0
425	DOC-2024-0194	02-0193	3483	\N	\N	\N	147679.75		50101010-01	2A2	999	1	194	2024-02-28 09:30:27	2024-03-04 03:21:43		FAD			1	0	0	FAD	0	0	0
556	DOC-2024-0293	02-0293	3483	\N	\N	\N	5984000		50202020-00	2A1-101	999	1	293	2024-02-28 11:05:12	2024-03-04 03:03:41		FAD			1	0	0	FAD	0	0	0
604	DOC-2024-0333	02-0333	3483	\N	\N	\N	1997000		50202020-00	2A1-101	999	1	333	2024-03-04 03:54:44	2024-03-04 07:42:53		FAD			1	0	0	FAD	0	0	0
579	DOC-2024-0310	02-0310	1131	\N	\N	\N	109048		50202020-00	2A1-102	999	1	310	2024-02-28 11:14:38	2024-03-04 02:44:50		FAD			1	0	0	FAD	0	0	0
424	DOC-2024-0194	02-0193	3483	\N	\N	\N	70616.75		50101010-01	2A1-2	999	1	194	2024-02-28 09:30:27	2024-03-04 03:21:43		FAD			1	0	0	FAD	0	0	0
638	DOC-2024-0361	02-0360	1133	\N	\N	\N	20655		50202020-00	2A1-102	999	1	361	2024-03-04 06:16:33	2024-03-04 07:39:02		FAD			1	0	0	FAD	0	0	0
745	DOC-2024-0416	\N	2704	\N	\N	\N	25000		10602990-00	2A1-101 (RA10612)	122	0	416	2024-03-15 02:47:48	\N		FAD			0	0	0	FAD	0	0	0
1010	DOC-2024-0608	03-0601	1122	\N	\N	\N	871262.37		50202020-00	2A1-104	122	1	608	2024-04-05 09:53:19	2024-04-05 09:59:13		FAD			1	0	0	FAD	0	0	0
703	DOC-2024-0402	\N	1129	\N	\N	\N	40000		50202020-00	2A1-101	999	0	402	2024-03-04 07:28:14	\N		FAD			0	0	0	FAD	0	0	0
783	DOC-2024-0445	03-0434	1021	\N	\N	\N	280638.74		50202020-00	2A1-103	122	1	445	2024-03-15 03:30:02	2024-03-15 03:42:51		FAD			1	0	0	FAD	0	0	0
758	DOC-2024-0426	03-0414	2718	\N	\N	\N	50000		50202020-00	2A2A-101	122	1	426	2024-03-15 03:15:19	2024-03-15 03:46:27		FAD			1	0	0	FAD	0	0	0
650	DOC-2024-0368	02-0367	2766	\N	\N	\N	19677.2		50203990-00	1A1	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
470	DOC-2024-0237	02-0236	3483	\N	\N	\N	890962.35		50202020-00	2A1-104	999	1	237	2024-02-28 10:14:31	2024-03-04 03:16:49		FAD			1	0	0	FAD	0	0	0
622	DOC-2024-0349	02-0349	1200	\N	\N	\N	3595352.47		50202020-00	2A1-103	999	1	349	2024-03-04 06:04:19	2024-03-04 07:40:00		FAD			1	0	0	FAD	0	0	0
589	DOC-2024-0319	02-0319	3486	\N	\N	\N	36834.93		50203090-00	2A1-1	999	1	319	2024-03-04 03:47:07	2024-03-04 07:44:21		FAD			1	0	0	FAD	0	0	0
448	DOC-2024-0215	02-0214	1122	\N	\N	\N	6256000		50202020-00	2A1-104	999	1	215	2024-02-28 10:01:54	2024-03-04 03:25:13		FAD			1	0	0	FAD	0	0	0
459	DOC-2024-0226	02-0225	3483	\N	\N	\N	131348.11		50202020-00	2A1-104	999	1	226	2024-02-28 10:07:33	2024-03-04 03:27:31		FAD			1	0	0	FAD	0	0	0
568	DOC-2024-0302	02-0302	3483	\N	\N	\N	76000		50202020-00	2A1-104	999	1	302	2024-02-28 11:10:35	2024-03-04 02:55:57		FAD			1	0	0	FAD	0	0	0
546	DOC-2024-0284	02-0284	1059	\N	\N	\N	466000		50202020-00	2A1-104	999	1	284	2024-02-28 11:01:28	2024-03-04 03:05:55		FAD			1	0	0	FAD	0	0	0
612	DOC-2024-0341	02-0341	3514	\N	\N	\N	18180.09		50202020-00	2A1-104	999	1	341	2024-03-04 03:59:10	2024-03-04 07:41:38		FAD			1	0	0	FAD	0	0	0
794	DOC-2024-0454	03-0443	3484	\N	\N	\N	8450		50202010-02	2A2B-107	122	1	454	2024-03-15 03:36:59	2024-03-15 03:41:18		FAD			1	0	0	FAD	0	0	0
449	DOC-2024-0216	02-0215	3486	\N	\N	\N	54879.97		50202020-00	2A1-AC	999	1	216	2024-02-28 10:02:16	2024-03-04 03:25:29		FAD			1	0	0	FAD	0	0	0
471	DOC-2024-0238	02-0237	3483	\N	\N	\N	516743.47		50202020-00	2A1-101	999	1	238	2024-02-28 10:15:10	2024-03-04 03:16:57		FAD			1	0	0	FAD	0	0	0
484	DOC-2024-0247	02-0246	2034	\N	\N	\N	19398.24		50202020-00	2A1-101	999	1	247	2024-02-28 10:24:14	2024-03-04 03:18:29		FAD			1	0	0	FAD	0	0	0
795	DOC-2024-0454	03-0443	3484	\N	\N	\N	103908		50202010-02	2A2B-101	122	1	454	2024-03-15 03:36:59	2024-03-15 03:41:18		FAD			1	0	0	FAD	0	0	0
326	DOC-2024-0154	01-0154	3495	\N	\N	\N	286015.26		50202020-00	2A1-104	999	1	154	2024-02-06 09:43:00	\N		FAD			1	0	0	FAD	0	0	0
327	DOC-2024-0155	01-0155	499	\N	\N	\N	125896.37		50202020-00	2A1-104	999	1	155	2024-02-06 09:44:33	\N		FAD			1	0	0	FAD	0	0	0
422	DOC-2024-0194	02-0193	3483	\N	\N	\N	136453.75		50101010-01	1A1	999	1	194	2024-02-28 09:30:27	2024-03-04 03:21:43		FAD			1	0	0	FAD	0	0	0
423	DOC-2024-0194	02-0193	3483	\N	\N	\N	27625		50101010-01	2A1-1	999	1	194	2024-02-28 09:30:27	2024-03-04 03:21:43		FAD			1	0	0	FAD	0	0	0
460	DOC-2024-0227	02-0226	3422	\N	\N	\N	684750		50202010-02	2A2B-101	999	1	227	2024-02-28 10:08:20	2024-03-04 03:27:38		FAD			1	0	0	FAD	0	0	0
746	DOC-2024-0417	\N	2704	\N	\N	\N	30000		20201010-01	2A1-104	122	0	417	2024-03-15 02:49:26	\N		FAD			0	0	0	FAD	0	0	0
747	DOC-2024-0417	\N	2704	\N	\N	\N	20000		50102100-00	1A1	122	0	417	2024-03-15 02:49:26	\N		FAD			0	0	0	FAD	0	0	0
328	DOC-2024-0156	01-0156	3496	\N	\N	\N	153477.72		50202020-00	2A1-104	999	1	156	2024-02-06 09:45:46	\N		FAD			1	0	0	FAD	0	0	0
803	DOC-2024-0460	03-0449	1039	\N	\N	\N	181440		50202020-00	2A1-101	122	1	460	2024-03-15 03:39:20	2024-03-15 03:40:19		FAD			1	0	0	FAD	0	0	0
796	DOC-2024-0454	03-0443	3484	\N	\N	\N	177293		50202020-00	2A1-104	122	1	454	2024-03-15 03:36:59	2024-03-15 03:41:18		FAD			1	0	0	FAD	0	0	0
797	DOC-2024-0454	03-0443	3484	\N	\N	\N	187760		50202020-00	2A1-101	122	1	454	2024-03-15 03:36:59	2024-03-15 03:41:18		FAD			1	0	0	FAD	0	0	0
784	DOC-2024-0446	03-0435	3524	\N	\N	\N	16815		50202020-00	2A1-104	122	1	446	2024-03-15 03:31:08	2024-03-15 03:42:45		FAD			1	0	0	FAD	0	0	0
775	DOC-2024-0437	03-0425	3483	\N	\N	\N	5770500		50202020-00	2A1-101	122	1	437	2024-03-15 03:25:59	2024-03-15 03:44:01		FAD			1	0	0	FAD	0	0	0
765	DOC-2024-0429	03-0417	3523	\N	\N	\N	1970		50202010-02	2A2B-103	122	1	429	2024-03-15 03:18:10	2024-03-15 03:46:02		FAD			1	0	0	FAD	0	0	0
343	DOC-2024-0162	01-0161	3498	\N	\N	\N	1100		50103020 (732)	2A2-A	999	1	162	2024-02-07 02:30:49	\N		FAD			1	0	0		0	0	0
345	DOC-2024-0163	01-0162	3494	\N	\N	\N	96918.36		50103010 (731)	1A1	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
346	DOC-2024-0163	01-0162	3494	\N	\N	\N	20750.52		50103010 (731)	2A1-1	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
347	DOC-2024-0163	01-0162	3494	\N	\N	\N	53652.48		50103010 (731)	2A1-2	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
731	DOC-2024-0410	03-0405	3483	\N	\N	\N	70870.08		50101010-01	2A1-2	999	1	410	2024-03-11 08:06:59	2024-03-15 03:47:45		FAD			1	0	0	FAD	0	0	0
732	DOC-2024-0410	03-0405	3483	\N	\N	\N	148206.72		50101010-01	2A2	999	1	410	2024-03-11 08:06:59	2024-03-15 03:47:45		FAD			1	0	0	FAD	0	0	0
809	DOC-2024-0464	03-0457	2759	\N	\N	\N	5850		50202010-02	2A2B-107	122	1	464	2024-03-15 03:52:11	2024-03-15 03:52:42		FAD			1	0	0	FAD	0	0	0
353	DOC-2024-0163	01-0162	3494	\N	\N	\N	1100		50103040 (734)	2A2-A	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
352	DOC-2024-0163	01-0162	3494	\N	\N	\N	900		50103040 (734)	2A1-2	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
351	DOC-2024-0163	01-0162	3494	\N	\N	\N	400		50103040 (734)	2A1-1	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
309	DOC-2024-0139	01-0139	1103	\N	\N	\N	827645.33		50202020-00	2A1-104	999	1	139	2024-02-06 09:28:17	\N		FAD			1	0	0	FAD	0	0	0
1011	DOC-2024-0609	03-0602	1178	\N	\N	\N	20455		50202020-00	2A1-101	122	1	609	2024-04-05 09:53:52	2024-04-05 09:59:18		FAD			1	0	0	FAD	0	0	0
1012	DOC-2024-0609	03-0602	1178	\N	\N	\N	40000		50202020-00	2A1-102	122	1	609	2024-04-05 09:53:52	2024-04-05 09:59:18		FAD			1	0	0	FAD	0	0	0
340	DOC-2024-0162	01-0161	3498	\N	\N	\N	1800		50103020 (732)	1A1	999	1	162	2024-02-07 02:30:49	\N		FAD			1	0	0	FAD	0	0	0
339	DOC-2024-0161	01-0160	3497	\N	\N	\N	11682.94		50103030 (733)	2A2-B	999	1	161	2024-02-07 02:24:25	\N		FAD			1	0	0		0	0	0
338	DOC-2024-0161	01-0160	3497	\N	\N	\N	12249.75		50103030 (733)	2A2-A	999	1	161	2024-02-07 02:24:25	\N		FAD			1	0	0		0	0	0
337	DOC-2024-0161	01-0160	3497	\N	\N	\N	11177.62		50103030 (733)	2A1-2	999	1	161	2024-02-07 02:24:25	\N		FAD			1	0	0		0	0	0
336	DOC-2024-0161	01-0160	3497	\N	\N	\N	4323.03		50103030 (733)	2A1-1	999	1	161	2024-02-07 02:24:25	\N		FAD			1	0	0		0	0	0
331	DOC-2024-0158	01-0158	1129	\N	\N	\N	60000		50202020-00	2A1-102	999	1	158	2024-02-06 09:48:27	\N		FAD			1	0	0	FAD	0	0	0
308	DOC-2024-0138	01-0138	1103	\N	\N	\N	613488.61		50202020-00	2A1-104	999	1	138	2024-02-06 09:27:47	\N		FAD			1	0	0	FAD	0	0	0
294	DOC-2024-0129	01-0129	1179	\N	\N	\N	3422000		50202020-00	2A1-102	999	1	129	2024-02-06 09:09:11	\N		FAD			1	0	0	FAD	0	0	0
291	DOC-2024-0128	01-0128	1122	\N	\N	\N	11484000		50202020-00	2A1-102	999	1	128	2024-02-06 09:08:23	\N		FAD			1	0	0	FAD	0	0	0
288	DOC-2024-0127	01-0127	1184	\N	\N	\N	6380000		50202020-00	2A1-102	999	1	127	2024-02-06 09:07:24	\N		FAD			1	0	0	FAD	0	0	0
285	DOC-2024-0126	01-0126	3493	\N	\N	\N	377000		50202020-00	2A1-102	999	1	126	2024-02-06 09:06:22	\N		FAD			1	0	0	FAD	0	0	0
282	DOC-2024-0125	01-0125	1154	\N	\N	\N	1363000		50202020-00	2A1-102	999	1	125	2024-02-06 09:04:30	\N		FAD			1	0	0	FAD	0	0	0
277	DOC-2024-0122	01-0122	3483	\N	\N	\N	180000		50202020-00	2A1-102	999	1	122	2024-02-06 09:00:28	\N		FAD			1	0	0	FAD	0	0	0
275	DOC-2024-0121	01-0121	3491	\N	\N	\N	149950.80		50202020-00	2A1-104	999	1	121	2024-02-06 09:00:04	\N		FAD			1	0	0	FAD	0	0	0
274	DOC-2024-0120	01-0120	842	\N	\N	\N	6092.58		50202020-00	2A1-104	999	1	120	2024-02-06 08:58:02	\N		FAD			1	0	0	FAD	0	0	0
813	DOC-2024-0468	03-0461	3483	\N	\N	\N	299650		50202020-00	2A1-101	122	1	468	2024-03-15 03:54:05	2024-03-15 04:08:25		FAD			1	0	0	FAD	0	0	0
94	DOC-2024-0001	01-0001	3483	\N	\N	\N	231448.49		50101010-01	2A1-2	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	 	0	0	0
95	DOC-2024-0001	01-0001	3483	\N	\N	\N	525733.58		50101010-01	2A2	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	 	0	0	0
102	DOC-2024-0002	01-0002	3483	\N	\N	\N	71888.51		50101010-01	2A1-2	999	1	2	2024-02-02 01:49:03	2024-02-02 06:55:05		FAD			1	0	0	 	0	0	0
103	DOC-2024-0002	01-0002	3483	\N	\N	\N	143864.92		50101010-01	2A2	999	1	2	2024-02-02 01:49:03	2024-02-02 06:55:05		FAD			1	0	0	 	0	0	0
156	DOC-2024-0037	01-0037	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	37	2024-02-02 03:03:20	2024-02-07 04:08:05		FAD			1	0	0	FAD	0	0	0
157	DOC-2024-0038	01-0038	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	38	2024-02-02 03:03:58	2024-02-07 04:08:09		FAD			1	0	0	FAD	0	0	0
160	DOC-2024-0041	01-0041	1103	\N	\N	\N	320066.75		50202020-00	2A1-104	999	1	41	2024-02-02 03:04:58	2024-02-07 04:08:28		FAD			1	0	0	FAD	0	0	0
166	DOC-2024-0047	01-0047	2745	\N	\N	\N	11453.55		50203990-00	1A1	999	1	47	2024-02-02 03:14:25	2024-02-07 04:08:54		FAD			1	0	0	 	0	0	0
96	DOC-2024-0001	01-0001	3483	\N	\N	\N	38000		50102010-01	1A1	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	FAD	0	0	0
97	DOC-2024-0001	01-0001	3483	\N	\N	\N	8000		50102010-01	2A1-1	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	 	0	0	0
98	DOC-2024-0001	01-0001	3483	\N	\N	\N	18000		50102010-01	2A1-2	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	 	0	0	0
99	DOC-2024-0001	01-0001	3483	\N	\N	\N	42000		50102010-01	2A2	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	 	0	0	0
474	DOC-2024-0239	02-0238	3483	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	999	1	239	2024-02-28 10:16:02	2024-03-04 03:17:05		FAD			1	0	0	FAD	0	0	0
184	DOC-2024-0064	01-0064	1184	\N	\N	\N	15843809.29		50202020-00	2A1-104	999	1	64	2024-02-02 03:41:10	2024-02-07 04:18:35		FAD			1	0	0	FAD	0	0	0
192	DOC-2024-0071	01-0071	1033	\N	\N	\N	35472500		50202020-00	2A1-102	999	1	71	2024-02-02 03:47:47	2024-02-07 04:19:12		FAD			1	0	0	 	0	0	0
810	DOC-2024-0465	03-0458	3483	\N	\N	\N	33000		50202020-00	2A1-AC	122	1	465	2024-03-15 03:53:00	2024-03-15 04:08:51		FAD			1	0	0	FAD	0	0	0
201	DOC-2024-0079	01-0079	2732	\N	\N	\N	15000		50203010-02	1A1	999	1	79	2024-02-02 03:53:44	2024-02-07 04:19:52		FAD			1	0	0	 	0	0	0
206	DOC-2024-0084	01-0084	1034	\N	\N	\N	4260500		50202020-00	2A1-102	999	1	84	2024-02-02 03:57:11	2024-02-07 05:05:25		FAD			1	0	0	 	0	0	0
215	DOC-2024-0090	01-0090	1035	\N	\N	\N	4785000		50202020-00	2A1-102	999	1	90	2024-02-02 06:33:16	2024-02-07 05:06:01		FAD			1	0	0		0	0	0
450	DOC-2024-0217	02-0216	1189	\N	\N	\N	64302		50202020-00	2A1-106	999	1	217	2024-02-28 10:02:49	2024-03-04 03:25:39		FAD			1	0	0	FAD	0	0	0
1013	DOC-2024-0610	03-0603	2763	\N	\N	\N	2170		50202020-00	2A1-101	122	1	610	2024-04-05 09:54:10	2024-04-05 09:59:22		FAD			1	0	0	FAD	0	0	0
571	DOC-2024-0305	02-0305	1181	\N	\N	\N	386000		50202020-00	2A1-104	999	1	305	2024-02-28 11:11:44	2024-03-04 02:55:24		FAD			1	0	0	FAD	0	0	0
296	DOC-2024-0130	01-0130	1027	\N	\N	\N	58000		50202020-00	2A1-101 (RA10612)	999	1	130	2024-02-06 09:10:09	\N		FAD			1	0	0	FAD	0	0	0
426	DOC-2024-0195	02-0194	2727	\N	\N	\N	20000		50202020-00	2A1-AC	999	1	195	2024-02-28 09:31:30	2024-03-04 03:21:50		FAD			1	0	0	FAD	0	0	0
1082	DOC-2024-0651	04-0632	1131	\N	\N	\N	1093706		50202020-00	2A1-101	122	1	651	2024-04-17 03:03:14	2024-04-17 03:33:02		FAD			1	0	0	FAD	0	0	0
1083	DOC-2024-0651	04-0632	1131	\N	\N	\N	398611		50202020-00	2A1-102	122	1	651	2024-04-17 03:03:14	2024-04-17 03:33:02		FAD			1	0	0	FAD	0	0	0
475	DOC-2024-0239	02-0238	3483	\N	\N	\N	142000		50202020-00	2A1-102	999	1	239	2024-02-28 10:16:02	2024-03-04 03:17:05		FAD			1	0	0	FAD	0	0	0
92	DOC-2024-0001	01-0001	3483	\N	\N	\N	542113.60		50101010-01	1A1	999	1	1	2024-02-01 09:59:43	2024-02-02 06:37:39		FAD			1	0	0	FAD	0	0	0
580	DOC-2024-0311	02-0311	3510	\N	\N	\N	33000		50202010-02	2A2B-105	999	1	311	2024-02-28 11:16:32	2024-02-29 08:28:30		FAD			1	0	0	FAD	0	0	0
526	DOC-2024-0267	02-0266	2725	\N	\N	\N	24500		50202020-00	2A1-AC (HR)	999	1	267	2024-02-28 10:47:08	2024-03-04 03:13:24		FAD			1	0	0	FAD	0	0	0
501	DOC-2024-0258	02-0257	2726	\N	\N	\N	30000		50202020-00	2A1-AC (HR)	999	1	258	2024-02-28 10:30:26	2024-03-04 03:08:10		FAD			1	0	0	FAD	0	0	0
473	DOC-2024-0239	02-0238	3483	\N	\N	\N	163995.13		50202020-00	2A1-101	999	1	239	2024-02-28 10:16:02	2024-03-04 03:17:05		FAD			1	0	0	FAD	0	0	0
502	DOC-2024-0259	02-0258	2752	\N	\N	\N	711		50202010-02	2A2B-101	999	1	259	2024-02-28 10:30:56	2024-03-04 03:08:18		FAD			1	0	0	FAD	0	0	0
557	DOC-2024-0294	02-0294	3483	\N	\N	\N	12251.76		50202020-00	2A1-101	999	1	294	2024-02-28 11:05:49	2024-03-04 03:03:35		FAD			1	0	0	FAD	0	0	0
639	DOC-2024-0362	02-0361	3483	\N	\N	\N	642369.53		50202020-00	2A1-101	999	1	362	2024-03-04 06:17:28	2024-03-04 07:38:57		FAD			1	0	0	FAD	0	0	0
142	DOC-2024-0024	01-0024	2766	\N	\N	\N	10000		50213040-01	1A1	999	1	24	2024-02-02 02:55:21	2024-02-07 04:06:49		FAD			1	0	0	 	0	0	0
437	DOC-2024-0206	02-0205	3489	\N	\N	\N	28786		50201010-00	1A1	999	1	206	2024-02-28 09:37:53	2024-03-04 03:23:38		FAD			1	0	0	FAD	0	0	0
143	DOC-2024-0024	01-0024	2766	\N	\N	\N	20000		50213050-02	1A1	999	1	24	2024-02-02 02:55:21	2024-02-07 04:06:49		FAD			1	0	0	 	0	0	0
171	DOC-2024-0051	01-0051	3483	\N	\N	\N	156240.08		50202020-00	2A1-101	999	1	51	2024-02-02 03:16:51	2024-02-07 04:09:14		FAD			1	0	0	FAD	0	0	0
440	DOC-2024-0207	02-0206	3499	\N	\N	\N	2567		50202020-00	2A1-101 (RA10612)	999	1	207	2024-02-28 09:55:58	2024-03-04 03:23:48		FAD			1	0	0	FAD	0	0	0
748	DOC-2024-0418	\N	3483	\N	\N	\N	9		10605020-00	2A1-105	122	0	418	2024-03-15 02:52:19	\N		FAD			0	0	0	FAD	0	0	0
558	DOC-2024-0294	02-0294	3483	\N	\N	\N	69045.41		50202020-00	2A1-102	999	1	294	2024-02-28 11:05:49	2024-03-04 03:03:35		FAD			1	0	0	FAD	0	0	0
461	DOC-2024-0228	02-0227	3483	\N	\N	\N	29430.40		50202010-02	2A2B-101	999	1	228	2024-02-28 10:08:42	2024-03-04 03:27:44		FAD			1	0	0	FAD	0	0	0
785	DOC-2024-0447	03-0436	242	\N	\N	\N	101885.46		50202020-00	2A1-104	122	1	447	2024-03-15 03:31:33	2024-03-15 03:42:19		FAD			1	0	0	FAD	0	0	0
623	DOC-2024-0350	02-0350	1184	\N	\N	\N	2515792.74		50202020-00	2A1-103	999	1	350	2024-03-04 06:04:52	2024-03-04 07:39:55		FAD			1	0	0	FAD	0	0	0
776	DOC-2024-0438	03-0426	3483	\N	\N	\N	7001000		50202020-00	2A1-101	122	1	438	2024-03-15 03:26:41	2024-03-15 03:43:55		FAD			1	0	0	FAD	0	0	0
605	DOC-2024-0334	02-0334	1103	\N	\N	\N	800		50203990-00	1A1	999	1	334	2024-03-04 03:55:16	2024-03-04 07:42:47		FAD			1	0	0	FAD	0	0	0
760	DOC-2024-0428	03-0416	3483	\N	\N	\N	5691.52		50202020-00	2A1-101	122	1	428	2024-03-15 03:16:35	2024-03-15 03:46:12		FAD			1	0	0	FAD	0	0	0
633	DOC-2024-0356	02-0355	3498	\N	\N	\N	2000		50103020 (732)	2A2-B	999	1	356	2024-03-04 06:09:24	2024-03-04 07:39:27		FAD			1	0	0	FAD	0	0	0
632	DOC-2024-0356	02-0355	3498	\N	\N	\N	2200		50103020 (732)	2A2-A	999	1	356	2024-03-04 06:09:24	2024-03-04 07:39:27		FAD			1	0	0	FAD	0	0	0
631	DOC-2024-0356	02-0355	3498	\N	\N	\N	1800		50103020 (732)	2A1-2	999	1	356	2024-03-04 06:09:24	2024-03-04 07:39:27		FAD			1	0	0	FAD	0	0	0
590	DOC-2024-0320	02-0320	3494	\N	\N	\N	124330.9		50215030-00	1A1	999	1	320	2024-03-04 03:47:31	2024-03-04 07:44:15		FAD			1	0	0	FAD	0	0	0
349	DOC-2024-0163	01-0162	3494	\N	\N	\N	56078.04		50103010 (731)	2A2-B	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
348	DOC-2024-0163	01-0162	3494	\N	\N	\N	58798.68		50103010 (731)	2A2-A	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
485	DOC-2024-0248	02-0247	3483	\N	\N	\N	1600000		50202020-00	2A1-104	999	1	248	2024-02-28 10:24:57	2024-03-04 03:18:38		FAD			1	0	0	FAD	0	0	0
569	DOC-2024-0303	02-0303	1001	\N	\N	\N	57752.24		50202020-00	2A1-104	999	1	303	2024-02-28 11:10:55	2024-03-04 02:55:49		FAD			1	0	0	FAD	0	0	0
451	DOC-2024-0218	02-0217	3483	\N	\N	\N	354040		50202020-00	2A1-106	999	1	218	2024-02-28 10:03:06	2024-03-04 03:25:46		FAD			1	0	0	FAD	0	0	0
614	DOC-2024-0343	02-0343	3484	\N	\N	\N	74911		50202020-00	2A1-AC (NULAB)	999	1	343	2024-03-04 04:00:52	2024-03-04 07:41:24		FAD			1	0	0	FAD	0	0	0
581	DOC-2024-0312	02-0313	1038	\N	\N	\N	614600		50202020-00	2A1-101	999	1	313	2024-02-28 11:17:07	2024-02-29 08:28:24		FAD			1	0	0	FAD	0	0	0
438	DOC-2024-0207	02-0206	3499	\N	\N	\N	28156.94		50202020-00	2A1-101	999	1	207	2024-02-28 09:55:58	2024-03-04 03:23:48		FAD			1	0	0	FAD	0	0	0
577	DOC-2024-0309	02-0309	2609	\N	\N	\N	14000		50202020-00	2A1-101	999	1	309	2024-02-28 11:14:05	2024-03-04 02:45:05		FAD			1	0	0	FAD	0	0	0
548	DOC-2024-0286	02-0286	3483	\N	\N	\N	5646000		50202020-00	2A1-102	999	1	286	2024-02-28 11:02:11	2024-03-04 03:05:28		FAD			1	0	0	FAD	0	0	0
486	DOC-2024-0249	02-0248	3483	\N	\N	\N	392000		50202020-00	2A1-102	999	1	249	2024-02-28 10:25:34	2024-03-04 03:18:51		FAD			1	0	0	FAD	0	0	0
369	DOC-2024-0175	01-0174	2740	\N	\N	\N	300000		50202020-00	2A1-AC	999	1	175	2024-02-07 02:50:59	\N		FAD			1	0	0	FAD	0	0	0
371	DOC-2024-0177	01-0176	1195	\N	\N	\N	6019112		50202020-00	2A1-105	999	1	177	2024-02-07 02:51:59	\N		FAD			1	0	0	FAD	0	0	0
372	DOC-2024-0178	01-0177	1067	\N	\N	\N	7805296		50202020-00	2A1-105	999	1	178	2024-02-07 02:52:27	\N		FAD			1	0	0	FAD	0	0	0
373	DOC-2024-0179	01-0178	1196	\N	\N	\N	1427934		50202020-00	2A1-105	999	1	179	2024-02-07 02:52:56	\N		FAD			1	0	0	FAD	0	0	0
374	DOC-2024-0180	01-0179	1205	\N	\N	\N	16028394		50202020-00	2A1-105	999	1	180	2024-02-07 02:53:39	\N		FAD			1	0	0	FAD	0	0	0
375	DOC-2024-0181	01-0180	1059	\N	\N	\N	4413812		50202020-00	2A1-105	999	1	181	2024-02-07 02:54:06	\N		FAD			1	0	0	FAD	0	0	0
1401	DOC-2024-0912	04-0651	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	912	2024-04-30 02:59:46	2024-04-30 02:59:58		FAD			1	0	0	FAD	0	0	0
1145	DOC-2024-0709	04-0692	2752	\N	\N	\N	628		50202010-02	2A2B-101	122	1	709	2024-04-17 04:13:05	2024-04-17 04:35:56		FAD			1	0	0	FAD	0	0	0
832	DOC-2024-0479	03-0476	2952	\N	\N	\N	69210		50202020-00	2A1-AC	122	1	479	2024-03-15 04:05:47	2024-03-15 04:06:37		FAD			1	0	0	FAD	0	0	0
831	DOC-2024-0479	03-0476	2952	\N	\N	\N	62142		50202020-00	2A1-AC	122	1	479	2024-03-15 04:05:47	2024-03-15 04:06:37		FAD			1	0	0	FAD	0	0	0
1015	DOC-2024-0611	03-0605	3038	\N	\N	\N	199125		50202020-00	2A1-AC	122	1	611	2024-04-05 09:55:28	2024-04-05 09:59:29		FAD			1	0	0	FAD	0	0	0
1014	DOC-2024-0611	03-0605	3038	\N	\N	\N	5697		50202020-00	2A1-AC	122	1	611	2024-04-05 09:55:28	2024-04-05 09:59:29		FAD			1	0	0	FAD	0	0	0
833	DOC-2024-0480	03-0477	2680	\N	\N	\N	7550		50202020-00	2A1-106	122	1	480	2024-03-15 04:06:21	2024-03-15 04:06:32		FAD			1	0	0	FAD	0	0	0
829	DOC-2024-0479	03-0476	2952	\N	\N	\N	21336		50203010-01	1A1	122	1	479	2024-03-15 04:05:47	2024-03-15 04:06:37		FAD			1	0	0	FAD	0	0	0
830	DOC-2024-0479	03-0476	2952	\N	\N	\N	25989		50203010-01	1A1	122	1	479	2024-03-15 04:05:47	2024-03-15 04:06:37		FAD			1	0	0	FAD	0	0	0
828	DOC-2024-0478	03-0473	2768	\N	\N	\N	30000		50202010-02	2A2A-101	122	1	478	2024-03-15 04:04:12	2024-03-15 04:06:46		FAD			1	0	0	FAD	0	0	0
827	DOC-2024-0477	03-0472	1039	\N	\N	\N	45610		50202020-00	2A1-101	122	1	477	2024-03-15 04:03:29	2024-03-15 04:06:55		FAD			1	0	0	FAD	0	0	0
826	DOC-2024-0476	03-0471	1041	\N	\N	\N	326900		50202020-00	2A1-101	122	1	476	2024-03-15 04:03:07	2024-03-15 04:07:02		FAD			1	0	0	FAD	0	0	0
825	DOC-2024-0475	03-0470	1631	\N	\N	\N	68816		50202020-00	2A1-104	122	1	475	2024-03-15 04:01:44	2024-03-15 04:07:10		FAD			1	0	0	FAD	0	0	0
824	DOC-2024-0474	03-0469	2761	\N	\N	\N	1100000		50202020-00	2A1-101	122	1	474	2024-03-15 04:01:15	2024-03-15 04:07:20		FAD			1	0	0	FAD	0	0	0
1016	DOC-2024-0612	03-0606	3508	\N	\N	\N	15600		50202020-00	2A1-101	122	1	612	2024-04-05 09:55:48	2024-04-05 09:59:34		FAD			1	0	0	FAD	0	0	0
842	DOC-2024-0481	03-0479	3483	\N	\N	\N	22967.15		50102120-01	2A1-2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
439	DOC-2024-0207	02-0206	3499	\N	\N	\N	20412.76		50202020-00	2A1-102	999	1	207	2024-02-28 09:55:58	2024-03-04 03:23:48		FAD			1	0	0	FAD	0	0	0
126	DOC-2024-0014	01-0014	3483	\N	\N	\N	10884000		50202020-00	2A1-102	999	1	14	2024-02-02 02:41:39	2024-02-07 03:18:12		FAD			1	0	0	FAD	0	0	0
384	DOC-2024-0187	01-0186	3483	\N	\N	\N	885153.82		50202020-00	2A1-102	999	1	187	2024-02-07 02:58:44	\N		FAD			1	0	0	FAD	0	0	0
385	DOC-2024-0188	01-0187	3483	\N	\N	\N	4707000		50202020-00	2A1-102	999	1	188	2024-02-07 02:59:21	\N		FAD			1	0	0	FAD	0	0	0
386	DOC-2024-0189	01-0188	3483	\N	\N	\N	1858845.03		50202020-00	2A1-104	999	1	189	2024-02-07 02:59:39	\N		FAD			1	0	0	FAD	0	0	0
462	DOC-2024-0229	02-0228	1661	\N	\N	\N	13478.28		50202010-02	2A2B-101	999	1	229	2024-02-28 10:09:42	2024-03-04 03:27:49		FAD			1	0	0	FAD	0	0	0
615	DOC-2024-0343	02-0343	3484	\N	\N	\N	8864		50202010-02	2A2B-105	999	1	343	2024-03-04 04:00:52	2024-03-04 07:41:24		FAD			1	0	0	FAD	0	0	0
749	DOC-2024-0419	\N	1159	\N	\N	\N	8		10605021-00	2A1-105	122	0	419	2024-03-15 02:55:09	\N		FAD			0	0	0	FAD	0	0	0
539	DOC-2024-0277	02-0277	633	\N	\N	\N	144000		50202020-00	2A1-104	999	1	277	2024-02-28 10:53:25	2024-03-04 03:07:00		FAD			1	0	0	FAD	0	0	0
476	DOC-2024-0240	02-0239	1200	\N	\N	\N	11135000		50202020-00	2A1-104	999	1	240	2024-02-28 10:16:30	2024-03-04 03:17:14		FAD			1	0	0	FAD	0	0	0
591	DOC-2024-0321	02-0321	718	\N	\N	\N	90000		50202020-00	2A1-104	999	1	321	2024-03-04 03:47:55	2024-03-04 07:44:10		FAD			1	0	0	FAD	0	0	0
804	DOC-2024-0461	03-0450	1043	\N	\N	\N	114900		50202020-00	2A1-101	122	1	461	2024-03-15 03:39:45	2024-03-15 03:40:08		FAD			1	0	0	FAD	0	0	0
799	DOC-2024-0456	03-0445	3483	\N	\N	\N	376040		50202020-00	2A1-106	122	1	456	2024-03-15 03:37:41	2024-03-15 03:41:05		FAD			1	0	0	FAD	0	0	0
293	DOC-2024-0129	01-0129	1179	\N	\N	\N	551000		50202020-00	2A1-101 (RA10612)	999	1	129	2024-02-06 09:09:11	\N		FAD			1	0	0	FAD	0	0	0
792	DOC-2024-0453	03-0442	3483	\N	\N	\N	19605.6		50211990-00	PD 997	122	1	453	2024-03-15 03:35:08	2024-03-15 03:41:24		FAD			1	0	0	FAD	0	0	0
786	DOC-2024-0448	03-0437	3483	\N	\N	\N	372000		50202020-00	2A1-104	122	1	448	2024-03-15 03:31:57	2024-03-15 03:42:14		FAD			1	0	0	FAD	0	0	0
767	DOC-2024-0430	03-0418	3483	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	122	1	430	2024-03-15 03:19:06	2024-03-15 03:45:56		FAD			1	0	0	FAD	0	0	0
630	DOC-2024-0356	02-0355	3498	\N	\N	\N	800		50103020 (732)	2A1-1	999	1	356	2024-03-04 06:09:24	2024-03-04 07:39:27		FAD			1	0	0	FAD	0	0	0
366	DOC-2024-0172	01-0171	1094	\N	\N	\N	40000		50202020-00	2A1-102	999	1	172	2024-02-07 02:49:45	\N		FAD			1	0	0	FAD	0	0	0
364	DOC-2024-0171	01-0170	3483	\N	\N	\N	2275120.20		50202020-00	2A1-106	999	1	171	2024-02-07 02:49:11	\N		FAD			1	0	0	FAD	0	0	0
284	DOC-2024-0126	01-0126	3493	\N	\N	\N	29000		50202020-00	2A1-101 (RA10612)	999	1	126	2024-02-06 09:06:22	\N		FAD			1	0	0	FAD	0	0	0
283	DOC-2024-0126	01-0126	3493	\N	\N	\N	2853866		50202020-00	2A1-101	999	1	126	2024-02-06 09:06:22	\N		FAD			1	0	0	FAD	0	0	0
281	DOC-2024-0125	01-0125	1154	\N	\N	\N	145000		50202020-00	2A1-101 (RA10612)	999	1	125	2024-02-06 09:04:30	\N		FAD			1	0	0	FAD	0	0	0
280	DOC-2024-0125	01-0125	1154	\N	\N	\N	7529866		50202020-00	2A1-101	999	1	125	2024-02-06 09:04:30	\N		FAD			1	0	0	FAD	0	0	0
279	DOC-2024-0124	01-0124	3492	\N	\N	\N	378000		50202020-00	2A1-101 (Patriot)	999	1	124	2024-02-06 09:03:27	\N		FAD			1	0	0	FAD	0	0	0
278	DOC-2024-0123	01-0123	3483	\N	\N	\N	4682000		50202020-00	2A1-101	999	1	123	2024-02-06 09:02:22	\N		FAD			1	0	0	FAD	0	0	0
276	DOC-2024-0122	01-0122	3483	\N	\N	\N	442564.76		50202020-00	2A1-101	999	1	122	2024-02-06 09:00:28	\N		FAD			1	0	0	FAD	0	0	0
263	DOC-2024-0111	01-0111	1040	\N	\N	\N	27136394		50202020-00	2A1-101	999	1	111	2024-02-06 08:51:44	\N		FAD			1	0	0	FAD	0	0	0
616	DOC-2024-0343	02-0343	3484	\N	\N	\N	196081		50202020-00	2A1-104	999	1	343	2024-03-04 04:00:52	2024-03-04 07:41:24		FAD			1	0	0	FAD	0	0	0
640	DOC-2024-0362	02-0361	3483	\N	\N	\N	92109		50202020-00	2A1-101 (RA10612)	999	1	362	2024-03-04 06:17:28	2024-03-04 07:38:57		FAD			1	0	0	FAD	0	0	0
694	DOC-2024-0394	02-0392	1033	\N	\N	\N	55040		50202020-00	2A1-101 (Patriot)	999	1	394	2024-03-04 07:23:28	2024-03-04 07:34:20		FAD			1	0	0	FAD	0	0	0
708	DOC-2024-0406	02-0403	2752	\N	\N	\N	1200		50202010-02	2A2B-101	999	1	406	2024-03-04 07:32:10	2024-03-04 07:33:10		FAD			1	0	0	FAD	0	0	0
699	DOC-2024-0399	02-0397	3519	\N	\N	\N	30000		50202020-00	2A1-101	999	1	399	2024-03-04 07:26:55	2024-03-04 07:33:45		FAD			1	0	0	FAD	0	0	0
705	DOC-2024-0403	02-0400	1129	\N	\N	\N	20000		50202020-00	2A1-102	999	1	403	2024-03-04 07:28:50	2024-03-04 07:33:26		FAD			1	0	0	FAD	0	0	0
1402	DOC-2024-0913	04-0665	2798	\N	\N	\N	57000		50202020-00	2A1-AC	122	1	913	2024-04-30 03:00:48	2024-04-30 03:00:59		FAD			1	0	0	FAD	0	0	0
696	DOC-2024-0396	02-0394	1103	\N	\N	\N	200		50203990-00	1A1	999	1	396	2024-03-04 07:24:17	2024-03-04 07:34:01		FAD			1	0	0	FAD	0	0	0
690	DOC-2024-0390	02-0388	2860	\N	\N	\N	114574.43		50212020-00	1A1	999	1	390	2024-03-04 07:17:35	2024-03-04 07:34:58		FAD			1	0	0	FAD	0	0	0
688	DOC-2024-0389	02-0387	2748	\N	\N	\N	7500		50203990-00	1A1	999	1	389	2024-03-04 07:03:04	2024-03-04 07:35:22		FAD			1	0	0	FAD	0	0	0
685	DOC-2024-0387	02-0386	3038	\N	\N	\N	3450		50202020-00	2A1-AC (HR)	999	1	387	2024-03-04 07:01:54	2024-03-04 07:35:48		FAD			1	0	0	FAD	0	0	0
657	DOC-2024-0368	02-0367	2766	\N	\N	\N	16695		50202020-00	2A1-AC (HR)	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
642	DOC-2024-0363	02-0362	2621	\N	\N	\N	30000		50202020-00	2A1-AC	999	1	363	2024-03-04 06:18:20	2024-03-04 07:38:42		FAD			1	0	0	FAD	0	0	0
706	DOC-2024-0404	02-0401	1164	\N	\N	\N	20505		50202020-00	2A1-101	999	1	404	2024-03-04 07:29:11	2024-03-04 07:33:21		FAD			1	0	0	FAD	0	0	0
651	DOC-2024-0368	02-0367	2766	\N	\N	\N	1000		50211990-00	1A1	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
1017	DOC-2024-0613	03-0608	2908	\N	\N	\N	111600		50202020-00	2A1-101	122	1	613	2024-04-05 09:56:18	2024-04-05 09:59:38		FAD			1	0	0	FAD	0	0	0
897	DOC-2024-0523	03-0522	1196	\N	\N	\N	386000		50202020-00	2A1-104	122	1	523	2024-04-01 04:32:20	2024-04-01 05:22:30		FAD			1	0	0	FAD	0	0	0
898	DOC-2024-0524	03-0523	1059	\N	\N	\N	2822000		50202020-00	2A1-104	122	1	524	2024-04-01 04:32:41	2024-04-01 05:22:39		FAD			1	0	0	FAD	0	0	0
900	DOC-2024-0526	03-0525	1103	\N	\N	\N	542453.45		50202020-00	2A1-106	122	1	526	2024-04-01 04:33:21	2024-04-01 07:39:58		FAD			1	0	0	FAD	0	0	0
901	DOC-2024-0527	03-0526	3483	\N	\N	\N	2258485.5		50202020-00	2A1-106	122	1	527	2024-04-01 04:33:42	2024-04-01 07:40:03		FAD			1	0	0	FAD	0	0	0
652	DOC-2024-0368	02-0367	2766	\N	\N	\N	13950		50205020-01	1A1	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
653	DOC-2024-0368	02-0367	2766	\N	\N	\N	9880		50212990-99	1A1	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
654	DOC-2024-0368	02-0367	2766	\N	\N	\N	14400		50203990-00	2A1-1	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
658	DOC-2024-0368	02-0367	2766	\N	\N	\N	1580		50205020-01	2A2	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
629	DOC-2024-0356	02-0355	3498	\N	\N	\N	3600		50103020 (732)	1A1	999	1	356	2024-03-04 06:09:24	2024-03-04 07:39:27		FAD			1	0	0	FAD	0	0	0
588	DOC-2024-0318	02-0318	3489	\N	\N	\N	25799		50201010-00	2A1-1	999	1	318	2024-03-04 03:46:39	2024-03-04 07:44:25		FAD			1	0	0	FAD	0	0	0
362	DOC-2024-0169	01-0168	3483	\N	\N	\N	2891000		50202020-00	2A1-102	999	1	169	2024-02-07 02:47:53	\N		FAD			1	0	0	FAD	0	0	0
361	DOC-2024-0168	01-0167	1103	\N	\N	\N	401115.86		50202020-00	2A1-104	999	1	168	2024-02-07 02:47:28	\N		FAD			1	0	0	FAD	0	0	0
360	DOC-2024-0167	01-0166	1103	\N	\N	\N	401115.86		50202020-00	2A1-104	999	1	167	2024-02-07 02:47:03	\N		FAD			1	0	0	FAD	0	0	0
359	DOC-2024-0166	01-0165	936	\N	\N	\N	295023.60		50202020-00	2A1-104	999	1	166	2024-02-07 02:46:32	\N		FAD			1	0	0	FAD	0	0	0
358	DOC-2024-0165	01-0164	1190	\N	\N	\N	20000		50202020-00	2A1-102	999	1	165	2024-02-07 02:46:03	\N		FAD			1	0	0	FAD	0	0	0
357	DOC-2024-0165	01-0164	1190	\N	\N	\N	20400		50202020-00	2A1-101 (RA10612)	999	1	165	2024-02-07 02:46:03	\N		FAD			1	0	0	FAD	0	0	0
356	DOC-2024-0165	01-0164	1190	\N	\N	\N	40000		50202020-00	2A1-101	999	1	165	2024-02-07 02:46:03	\N		FAD			1	0	0	FAD	0	0	0
355	DOC-2024-0164	01-0163	1032	\N	\N	\N	223079.23		50202020-00	2A1-104	999	1	164	2024-02-07 02:44:34	\N		FAD			1	0	0	FAD	0	0	0
350	DOC-2024-0163	01-0162	3494	\N	\N	\N	1800		50103040 (734)	1A1	999	1	163	2024-02-07 02:33:12	\N		FAD			1	0	0		0	0	0
342	DOC-2024-0162	01-0161	3498	\N	\N	\N	900		50103020 (732)	2A1-2	999	1	162	2024-02-07 02:30:49	\N		FAD			1	0	0		0	0	0
341	DOC-2024-0162	01-0161	3498	\N	\N	\N	400		50103020 (732)	2A1-1	999	1	162	2024-02-07 02:30:49	\N		FAD			1	0	0		0	0	0
664	DOC-2024-0373	02-0372	3279	\N	\N	\N	4323.03		50103030 (733)	2A1-1	999	1	373	2024-03-04 06:50:44	2024-03-04 07:37:40		FAD			1	0	0	FAD	0	0	0
707	DOC-2024-0405	02-0402	3520	\N	\N	\N	20776.35		50202020-00	2A1-104	999	1	405	2024-03-04 07:31:44	2024-03-04 07:33:16		FAD			1	0	0	FAD	0	0	0
660	DOC-2024-0370	02-0369	568	\N	\N	\N	17563.5		50202020-00	2A1-104	999	1	370	2024-03-04 06:46:49	2024-03-04 07:37:56		FAD			1	0	0	FAD	0	0	0
704	DOC-2024-0403	02-0400	1129	\N	\N	\N	40000		50202020-00	2A1-101	999	1	403	2024-03-04 07:28:50	2024-03-04 07:33:26		FAD			1	0	0	FAD	0	0	0
701	DOC-2024-0401	02-0399	1190	\N	\N	\N	120000		50202020-00	2A1-101	999	1	401	2024-03-04 07:27:54	2024-03-04 07:33:35		FAD			1	0	0	FAD	0	0	0
686	DOC-2024-0387	02-0386	3038	\N	\N	\N	261000		50202020-00	2A1-101	999	1	387	2024-03-04 07:01:54	2024-03-04 07:35:48		FAD			1	0	0	FAD	0	0	0
702	DOC-2024-0401	02-0399	1190	\N	\N	\N	31500		50202020-00	2A1-102	999	1	401	2024-03-04 07:27:54	2024-03-04 07:33:35		FAD			1	0	0	FAD	0	0	0
700	DOC-2024-0400	02-0398	1185	\N	\N	\N	25909		50202020-00	2A1-102	999	1	400	2024-03-04 07:27:20	2024-03-04 07:33:41		FAD			1	0	0	FAD	0	0	0
698	DOC-2024-0398	02-0396	1133	\N	\N	\N	20505		50202020-00	2A1-102	999	1	398	2024-03-04 07:25:26	2024-03-04 07:33:50		FAD			1	0	0	FAD	0	0	0
802	DOC-2024-0459	03-0448	3044	\N	\N	\N	249700		50202020-00	2A1-101	122	1	459	2024-03-15 03:38:48	2024-03-15 03:40:26		FAD			1	0	0	FAD	0	0	0
800	DOC-2024-0457	03-0446	3483	\N	\N	\N	3203500		50202020-00	2A1-101	122	1	457	2024-03-15 03:38:01	2024-03-15 03:40:56		FAD			1	0	0	FAD	0	0	0
778	DOC-2024-0440	03-0428	1196	\N	\N	\N	4759000		50202020-00	2A1-104	122	1	440	2024-03-15 03:27:27	2024-03-15 03:43:41		FAD			1	0	0	FAD	0	0	0
766	DOC-2024-0430	03-0418	3483	\N	\N	\N	229083.33		50202020-00	2A1-101	122	1	430	2024-03-15 03:19:06	2024-03-15 03:45:56		FAD			1	0	0	FAD	0	0	0
750	DOC-2024-0420	03-0408	3521	\N	\N	\N	1420213.79		50202020-00	2A1-104	122	1	420	2024-03-15 03:03:31	2024-03-15 03:47:21		FAD			1	0	0	FAD	0	0	0
811	DOC-2024-0466	03-0459	3483	\N	\N	\N	34863500		50202020-00	2A1-102	122	1	466	2024-03-15 03:53:21	2024-03-15 04:08:43		FAD			1	0	0	FAD	0	0	0
335	DOC-2024-0161	01-0160	3497	\N	\N	\N	19413.27		50103030 (733)	1A1	999	1	161	2024-02-07 02:24:25	\N		FAD			1	0	0	FAD	0	0	0
334	DOC-2024-0160	01-0159	3483	\N	\N	\N	61813.22		50202020-00	2A1-102	999	1	160	2024-02-06 09:50:30	\N		FAD			1	0	0	FAD	0	0	0
1114	DOC-2024-0680	04-0661	3548	\N	\N	\N	26600		50202020-00	2A1-AC	999	1	680	2024-04-17 03:58:39	2024-04-17 04:02:00		FAD			1	0	0	FAD	0	0	0
857	DOC-2024-0489	03-0485	1159	\N	\N	\N	66564.52		50211990-00	PD 997	122	1	489	2024-04-01 03:42:04	2024-04-01 05:18:07		FAD			1	0	0	FAD	0	0	0
322	DOC-2024-0150	01-0150	1196	\N	\N	\N	20415550.43		50202020-00	2A1-103	999	1	150	2024-02-06 09:37:14	\N		FAD			1	0	0	FAD	0	0	0
321	DOC-2024-0149	01-0149	1059	\N	\N	\N	7984636		50202020-00	2A1-103	999	1	149	2024-02-06 09:36:03	\N		FAD			1	0	0	FAD	0	0	0
1018	DOC-2024-0614	03-0609	3483	\N	\N	\N	1269000		50202020-00	2A1-102	122	1	614	2024-04-05 09:56:35	2024-04-05 09:59:43		FAD			1	0	0	FAD	0	0	0
852	DOC-2024-0484	03-0480	3483	\N	\N	\N	329985		50202020-00	2A1-101	122	1	484	2024-04-01 03:39:05	2024-04-01 05:17:25		FAD			1	0	0	FAD	0	0	0
859	DOC-2024-0490	03-0486	3483	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	122	1	490	2024-04-01 03:42:58	2024-04-01 05:18:16		FAD			1	0	0	FAD	0	0	0
860	DOC-2024-0490	03-0486	3483	\N	\N	\N	1086230.32		50202020-00	2A1-102	122	1	490	2024-04-01 03:42:58	2024-04-01 05:18:16		FAD			1	0	0	FAD	0	0	0
892	DOC-2024-0518	03-0514	3530	\N	\N	\N	5900		50202010-02	2A2B-105	999	1	518	2024-04-01 04:03:34	2024-04-01 05:21:37		FAD			1	0	0	FAD	0	\N	\N
320	DOC-2024-0148	01-0148	1067	\N	\N	\N	9958636		50202020-00	2A1-103	999	1	148	2024-02-06 09:35:23	\N		FAD			1	0	0	FAD	0	0	0
319	DOC-2024-0147	01-0147	1122	\N	\N	\N	8230836		50202020-00	2A1-103	999	1	147	2024-02-06 09:34:41	\N		FAD			1	0	0	FAD	0	0	0
318	DOC-2024-0146	01-0146	1114	\N	\N	\N	10674436		50202020-00	2A1-103	999	1	146	2024-02-06 09:34:14	\N		FAD			1	0	0	FAD	0	0	0
317	DOC-2024-0145	01-0145	1200	\N	\N	\N	8693140		50202020-00	2A1-103	999	1	145	2024-02-06 09:33:35	\N		FAD			1	0	0	FAD	0	0	0
316	DOC-2024-0144	01-0144	1184	\N	\N	\N	8915804		50202020-00	2A1-103	999	1	144	2024-02-06 09:31:31	\N		FAD			1	0	0	FAD	0	0	0
315	DOC-2024-0143	01-0143	1027	\N	\N	\N	2013504		50202020-00	2A1-103	999	1	143	2024-02-06 09:31:02	\N		FAD			1	0	0	FAD	0	0	0
314	DOC-2024-0142	01-0142	1103	\N	\N	\N	64999.03		50202020-00	2A1-104	999	1	142	2024-02-06 09:29:59	\N		FAD			1	0	0	FAD	0	0	0
313	DOC-2024-0141	01-0141	1103	\N	\N	\N	9078.17		50202020-00	2A1-104	999	1	141	2024-02-06 09:29:30	\N		FAD			1	0	0	FAD	0	0	0
312	DOC-2024-0140	01-0140	3483	\N	\N	\N	20000		50202020-00	2A1-102	999	1	140	2024-02-06 09:29:03	\N		FAD			1	0	0	FAD	0	0	0
261	DOC-2024-0110	01-0110	1043	\N	\N	\N	3119000		50202020-00	2A1-101 (RA10612)	999	1	110	2024-02-06 08:50:35	\N		FAD			1	0	0	FAD	0	0	0
260	DOC-2024-0110	01-0110	1043	\N	\N	\N	31890494		50202020-00	2A1-101	999	1	110	2024-02-06 08:50:35	\N		FAD			1	0	0	FAD	0	0	0
258	DOC-2024-0109	01-0109	1041	\N	\N	\N	651500		50202020-00	2A1-101 (RA10612)	999	1	109	2024-02-06 08:49:24	2024-02-07 05:08:09		FAD			1	0	0	FAD	0	0	0
814	DOC-2024-0469	03-0462	2745	\N	\N	\N	5698		50202020-00	2A1-AC	122	1	469	2024-03-15 03:54:22	2024-03-15 04:08:16		FAD			1	0	0	FAD	0	0	0
709	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	96918.36		50103010 (731)	1A1	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
710	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	20750.52		50103010 (731)	2A1-1	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
711	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	53652.48		50103010 (731)	2A1-2	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
712	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	58798.68		50103010 (731)	2A2-A	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
713	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	56078.04		50103010 (731)	2A2-B	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
714	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	1800		50103040 (734)	1A1	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
715	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	400		50103040 (734)	2A1-1	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
716	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	900		50103040 (734)	2A1-2	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
717	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	1100		50103040 (734)	2A2-A	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
399	DOC-2024-0192	02-0191	3483	\N	\N	\N	8000		50102010-01	2A1-1	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
400	DOC-2024-0192	02-0191	3483	\N	\N	\N	18000		50102010-01	2A1-2	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
401	DOC-2024-0192	02-0191	3483	\N	\N	\N	42000		50102010-01	2A2	999	1	192	2024-02-28 09:24:50	2024-03-04 03:21:02		FAD			1	0	0	FAD	0	0	0
663	DOC-2024-0373	02-0372	3279	\N	\N	\N	19413.27		50103030 (733)	1A1	999	1	373	2024-03-04 06:50:44	2024-03-04 07:37:40		FAD			1	0	0	FAD	0	0	0
665	DOC-2024-0373	02-0372	3279	\N	\N	\N	11177.62		50103030 (733)	2A1-2	999	1	373	2024-03-04 06:50:44	2024-03-04 07:37:40		FAD			1	0	0	FAD	0	0	0
666	DOC-2024-0373	02-0372	3279	\N	\N	\N	12713.92		50103030 (733)	2A2-A	999	1	373	2024-03-04 06:50:44	2024-03-04 07:37:40		FAD			1	0	0	FAD	0	0	0
667	DOC-2024-0373	02-0372	3279	\N	\N	\N	12147.11		50103030 (733)	2A2-B	999	1	373	2024-03-04 06:50:44	2024-03-04 07:37:40		FAD			1	0	0	FAD	0	0	0
719	DOC-2024-0408	02-0344	2759	\N	\N	\N	60000		50201020-00	1A1	999	1	408	2024-03-06 09:29:35	2024-03-06 09:30:01		FAD			1	0	0	FAD	0	0	0
720	DOC-2024-0408	02-0344	2759	\N	\N	\N	9240.6		50201020-00	2A1-1	999	1	408	2024-03-06 09:29:35	2024-03-06 09:30:01		FAD			1	0	0	FAD	0	0	0
729	DOC-2024-0410	03-0405	3483	\N	\N	\N	107608.77		50101010-01	1A1	999	1	410	2024-03-11 08:06:59	2024-03-15 03:47:45		FAD			1	0	0	FAD	0	0	0
730	DOC-2024-0410	03-0405	3483	\N	\N	\N	27990.81		50101010-01	2A1-1	999	1	410	2024-03-11 08:06:59	2024-03-15 03:47:45		FAD			1	0	0	FAD	0	0	0
958	DOC-2024-0566	03-0571	3494	\N	\N	\N	1800		50103040 (734)	1A1	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
959	DOC-2024-0566	03-0571	3494	\N	\N	\N	400		50103040 (734)	2A1-1	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
1019	DOC-2024-0615	03-0610	3483	\N	\N	\N	4416000		50202020-00	2A1-101	122	1	615	2024-04-05 09:56:55	2024-04-05 09:59:47		FAD			1	0	0	FAD	0	0	0
948	DOC-2024-0564	03-0569	3484	\N	\N	\N	142226		50202020-00	2A1-AC (POSTER)	122	1	564	2024-04-01 04:58:53	2024-04-01 07:45:40		FAD			1	0	0	FAD	0	0	0
213	DOC-2024-0089	01-0089	1035	\N	\N	\N	1550500		50202020-00	2A1-101 (RA10612)	999	1	89	2024-02-02 06:32:23	2024-02-07 05:05:52		FAD			1	0	0	FAD	0	0	0
1086	DOC-2024-0653	04-0634	2526	\N	\N	\N	19941.14		50202010-02	2A2B-101	122	1	653	2024-04-17 03:04:16	2024-04-17 03:32:37		FAD			1	0	0	FAD	0	0	0
1144	DOC-2024-0708	04-0690	3483	\N	\N	\N	362700		50202020-00	2A1-AC	122	1	708	2024-04-17 04:12:47	2024-04-17 04:36:09		FAD			1	0	0	FAD	0	0	0
214	DOC-2024-0090	01-0090	1035	\N	\N	\N	14939128		50202020-00	2A1-101	999	1	90	2024-02-02 06:33:16	2024-02-07 05:06:01		FAD			1	0	0	FAD	0	0	0
270	DOC-2024-0116	01-0116	2747	\N	\N	\N	20000		50202010-02	2A2B-101	999	1	116	2024-02-06 08:55:55	\N		FAD			1	0	0	FAD	0	0	0
223	DOC-2024-0096	01-0096	1046	\N	\N	\N	3498408		50202020-00	2A1-101	999	1	96	2024-02-02 06:44:14	2024-02-07 05:06:55		FAD			1	0	0	FAD	0	0	0
129	DOC-2024-0015	01-0015	3483	\N	\N	\N	22967.15		50102120-01	2A1-2	999	1	15	2024-02-02 02:44:23	2024-02-07 03:34:07		FAD			1	0	0	 	0	0	0
167	DOC-2024-0047	01-0047	2745	\N	\N	\N	1740		50205020-01	1A1	999	1	47	2024-02-02 03:14:25	2024-02-07 04:08:54		FAD			1	0	0	 	0	0	0
225	DOC-2024-0096	01-0096	1046	\N	\N	\N	8735500		50202020-00	2A1-101 (RA10612)	999	1	96	2024-02-02 06:44:14	2024-02-07 05:06:55		FAD			1	0	0	FAD	0	0	0
226	DOC-2024-0097	01-0097	1111	\N	\N	\N	4057000		50202020-00	2A1-101	999	1	97	2024-02-02 06:46:26	2024-02-07 05:07:01		FAD			1	0	0	FAD	0	0	0
227	DOC-2024-0097	01-0097	1111	\N	\N	\N	29000		50202020-00	2A1-101 (RA10612)	999	1	97	2024-02-02 06:46:26	2024-02-07 05:07:01		FAD			1	0	0	FAD	0	0	0
229	DOC-2024-0098	01-0098	1057	\N	\N	\N	8087854		50202020-00	2A1-101	999	1	98	2024-02-02 06:52:27	2024-02-07 05:07:05		FAD			1	0	0	FAD	0	0	0
230	DOC-2024-0098	01-0098	1057	\N	\N	\N	87000		50202020-00	2A1-101 (RA10612)	999	1	98	2024-02-02 06:52:27	2024-02-07 05:07:05		FAD			1	0	0	FAD	0	0	0
232	DOC-2024-0099	01-0099	3483	\N	\N	\N	11276000		50202020-00	2A1-101	999	1	99	2024-02-02 06:53:08	2024-02-07 05:07:10		FAD			1	0	0	FAD	0	0	0
235	DOC-2024-0101	01-0101	1042	\N	\N	\N	2733500		50202020-00	2A1-101 (RA10612)	999	1	101	2024-02-02 07:56:06	2024-02-07 05:07:21		FAD			1	0	0	FAD	0	0	0
243	DOC-2024-0104	01-0104	1045	\N	\N	\N	1672500		50202020-00	2A1-101 (RA10612)	999	1	104	2024-02-06 08:43:05	2024-02-07 05:07:40		FAD			1	0	0	FAD	0	0	0
762	DOC-2024-0429	03-0417	3523	\N	\N	\N	11488		50203010-02	1A1	122	1	429	2024-03-15 03:18:10	2024-03-15 03:46:02		FAD			1	0	0	FAD	0	0	0
329	DOC-2024-0157	01-0157	3483	\N	\N	\N	275822.10		50202020-00	2A1-104	999	1	157	2024-02-06 09:46:25	\N		FAD			1	0	0	FAD	0	0	0
763	DOC-2024-0429	03-0417	3523	\N	\N	\N	31186.25		50203990-00	2A2	122	1	429	2024-03-15 03:18:10	2024-03-15 03:46:02		FAD			1	0	0	FAD	0	0	0
764	DOC-2024-0429	03-0417	3523	\N	\N	\N	9180		50202010-02	2A2B-102	122	1	429	2024-03-15 03:18:10	2024-03-15 03:46:02		FAD			1	0	0	FAD	0	0	0
344	DOC-2024-0162	01-0161	3498	\N	\N	\N	1000		50103020 (732)	2A2-B	999	1	162	2024-02-07 02:30:49	\N		FAD			1	0	0		0	0	0
382	DOC-2024-0186	01-0185	3483	\N	\N	\N	582398.13		50202020-00	2A1-102	999	1	186	2024-02-07 02:57:30	\N		FAD			1	0	0	FAD	0	0	0
125	DOC-2024-0013	01-0013	3483	\N	\N	\N	663000		50202020-00	2A1-102	999	1	13	2024-02-02 02:41:11	2024-02-07 03:17:59		FAD			1	0	0	FAD	0	0	0
655	DOC-2024-0368	02-0367	2766	\N	\N	\N	410		50201010-00	2A1-1	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
656	DOC-2024-0368	02-0367	2766	\N	\N	\N	2140		50205020-01	2A1-1	999	1	368	2024-03-04 06:45:49	2024-03-04 07:38:09		FAD			1	0	0	FAD	0	0	0
332	DOC-2024-0159	\N	3483	\N	\N	\N	0		50202020-00	2A1-101	999	0	159	2024-02-06 09:49:26	\N		FAD			0	0	0	FAD	0	0	0
990	DOC-2024-0589	03-0452	1294	\N	\N	\N	13500		50211990-00	PD 997	122	1	589	2024-04-01 07:58:13	2024-04-01 07:58:49		FAD			1	0	0	FAD	0	0	0
991	DOC-2024-0590	03-0453	1103	\N	\N	\N	132611		50202020-00	2A1-104	122	1	590	2024-04-01 07:58:33	2024-04-01 07:58:58		FAD			1	0	0	FAD	0	0	0
1403	DOC-2024-0914	04-0716	3492	\N	\N	\N	48000		50202020-00	2A1-104	122	1	914	2024-04-30 03:02:02	2024-04-30 03:02:35		FAD			1	0	0	FAD	0	0	0
806	DOC-2024-0462	03-0451	1185	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	122	1	462	2024-03-15 03:51:21	2024-03-15 03:52:25		FAD			1	0	0	FAD	0	0	0
807	DOC-2024-0462	03-0451	1185	\N	\N	\N	782500		50202020-00	2A1-102	122	1	462	2024-03-15 03:51:21	2024-03-15 03:52:25		FAD			1	0	0	FAD	0	0	0
808	DOC-2024-0463	03-0454	3521	\N	\N	\N	336046.07		50202020-00	2A1-104	122	1	463	2024-03-15 03:51:48	2024-03-15 03:52:34		FAD			1	0	0	FAD	0	0	0
812	DOC-2024-0467	03-0460	3483	\N	\N	\N	147930.50		50202020-00	2A1-106	122	1	467	2024-03-15 03:53:45	2024-03-15 04:08:34		FAD			1	0	0	FAD	0	0	0
839	DOC-2024-0481	03-0479	3483	\N	\N	\N	23580.15		50102110-01	2A1-1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
840	DOC-2024-0481	03-0479	3483	\N	\N	\N	9000		50102050-02	2A1-1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
841	DOC-2024-0481	03-0479	3483	\N	\N	\N	2000		50102060-03	2A1-1	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
843	DOC-2024-0481	03-0479	3483	\N	\N	\N	53064.04		50102110-01	2A1-2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
844	DOC-2024-0481	03-0479	3483	\N	\N	\N	14700		50102050-02	2A1-2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
845	DOC-2024-0481	03-0479	3483	\N	\N	\N	4227.28		50102060-03	2A1-2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
846	DOC-2024-0481	03-0479	3483	\N	\N	\N	62601.7		50102120-01	2A2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
847	DOC-2024-0481	03-0479	3483	\N	\N	\N	123940.89		50102110-01	2A2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
848	DOC-2024-0481	03-0479	3483	\N	\N	\N	46950		50102050-02	2A2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
849	DOC-2024-0481	03-0479	3483	\N	\N	\N	9727.27		50102060-03	2A2	122	1	481	2024-03-15 04:16:54	2024-03-15 04:17:12		FAD			1	0	0	FAD	0	0	0
853	DOC-2024-0485	03-0481	2747	\N	\N	\N	5055		50202010-02	2A2B-101	122	1	485	2024-04-01 03:39:33	2024-04-01 05:17:33		FAD			1	0	0	FAD	0	0	0
858	DOC-2024-0490	03-0486	3483	\N	\N	\N	387683.21		50202020-00	2A1-101	122	1	490	2024-04-01 03:42:58	2024-04-01 05:18:16		FAD			1	0	0	FAD	0	0	0
861	DOC-2024-0491	03-0487	3483	\N	\N	\N	48660		50202020-00	2A1-101 (RA10612)	122	1	491	2024-04-01 03:44:26	2024-04-01 05:18:27		FAD			1	0	0	FAD	0	0	0
862	DOC-2024-0492	03-0488	3483	\N	\N	\N	244562.42		50202020-00	2A1-101	122	1	492	2024-04-01 03:45:15	2024-04-01 05:18:37		FAD			1	0	0	FAD	0	0	0
863	DOC-2024-0492	03-0488	3483	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	122	1	492	2024-04-01 03:45:15	2024-04-01 05:18:37		FAD			1	0	0	FAD	0	0	0
864	DOC-2024-0492	03-0488	3483	\N	\N	\N	352023.16		50202020-00	2A1-102	122	1	492	2024-04-01 03:45:15	2024-04-01 05:18:37		FAD			1	0	0	FAD	0	0	0
927	DOC-2024-0547	03-0549	3483	\N	\N	\N	5393000		50202020-00	2A1-101	122	1	547	2024-04-01 04:46:03	2024-04-01 07:43:20		FAD			1	0	0	FAD	0	0	0
854	DOC-2024-0486	03-0482	3102	\N	\N	\N	9500		50202020-00	2A1-AC	122	1	486	2024-04-01 03:40:18	2024-04-01 05:17:41		FAD			1	0	0	FAD	0	0	0
635	DOC-2024-0358	02-0357	3483	\N	\N	\N	22413.20		50202020-00	2A1-104	999	1	358	2024-03-04 06:14:03	2024-03-04 07:39:16		FAD			1	0	0	FAD	0	0	0
491	DOC-2024-0251	02-0250	3483	\N	\N	\N	886678.7		50202020-00	2A1-102	999	1	251	2024-02-28 10:27:08	2024-03-04 03:19:32		FAD			1	0	0	FAD	0	0	0
801	DOC-2024-0458	03-0447	3483	\N	\N	\N	232000		50202020-00	2A1-101	122	1	458	2024-03-15 03:38:21	2024-03-15 03:40:33		FAD			1	0	0	FAD	0	0	0
789	DOC-2024-0451	03-0440	3489	\N	\N	\N	25612		50201010-00	1A1	122	1	451	2024-03-15 03:34:02	2024-03-15 03:41:47		FAD			1	0	0	FAD	0	0	0
870	DOC-2024-0497	03-0493	2860	\N	\N	\N	119435.33		50212020-00	1A1	122	1	497	2024-04-01 03:54:18	2024-04-01 05:19:07		FAD			1	0	0	FAD	0	0	0
871	DOC-2024-0498	03-0494	1190	\N	\N	\N	20000		50202020-00	2A1-101	122	1	498	2024-04-01 03:54:50	2024-04-01 05:19:11		FAD			1	0	0	FAD	0	0	0
872	DOC-2024-0498	03-0494	1190	\N	\N	\N	20000		50202020-00	2A1-102	122	1	498	2024-04-01 03:54:50	2024-04-01 05:19:11		FAD			1	0	0	FAD	0	0	0
873	DOC-2024-0499	03-0495	1094	\N	\N	\N	25455		50202020-00	2A1-102	122	1	499	2024-04-01 03:55:13	2024-04-01 05:19:23		FAD			1	0	0	FAD	0	0	0
874	DOC-2024-0500	03-0496	1113	\N	\N	\N	80455		50202020-00	2A1-101	122	1	500	2024-04-01 03:55:33	2024-04-01 05:19:28		FAD			1	0	0	FAD	0	0	0
875	DOC-2024-0501	03-0497	1103	\N	\N	\N	275949.93		50202020-00	2A1-106	122	1	501	2024-04-01 03:55:53	2024-04-01 05:19:34		FAD			1	0	0	FAD	0	0	0
876	DOC-2024-0502	03-0498	3181	\N	\N	\N	1076700		50202020-00	2A1-101	122	1	502	2024-04-01 03:56:16	2024-04-01 05:19:40		FAD			1	0	0	FAD	0	0	0
877	DOC-2024-0503	03-0499	2787	\N	\N	\N	322000		50202020-00	2A1-101	122	1	503	2024-04-01 03:56:33	2024-04-01 05:19:47		FAD			1	0	0	FAD	0	0	0
878	DOC-2024-0504	03-0500	1205	\N	\N	\N	10460		50202020-00	2A1-106	122	1	504	2024-04-01 03:56:50	2024-04-01 05:19:52		FAD			1	0	0	FAD	0	0	0
879	DOC-2024-0505	03-0501	2765	\N	\N	\N	12149.88		50202020-00	2A1-101	122	1	505	2024-04-01 03:57:11	2024-04-01 05:20:00		FAD			1	0	0	FAD	0	0	0
880	DOC-2024-0506	03-0502	3483	\N	\N	\N	3868000		50202020-00	2A1-102	122	1	506	2024-04-01 03:57:30	2024-04-01 05:20:07		FAD			1	0	0	FAD	0	0	0
881	DOC-2024-0507	03-0503	1989	\N	\N	\N	12000		50211990-00	PD 997	122	1	507	2024-04-01 03:57:49	2024-04-01 05:20:15		FAD			1	0	0	FAD	0	0	0
883	DOC-2024-0509	03-0505	1103	\N	\N	\N	900486.11		50202020-00	2A1-104	122	1	509	2024-04-01 03:58:41	2024-04-01 05:20:33		FAD			1	0	0	FAD	0	0	0
884	DOC-2024-0510	03-0506	1103	\N	\N	\N	57941.75		50202020-00	2A1-104	122	1	510	2024-04-01 03:59:06	2024-04-01 05:20:37		FAD			1	0	0	FAD	0	0	0
885	DOC-2024-0511	03-0507	3483	\N	\N	\N	51960		50202020-00	2A1-101	122	1	511	2024-04-01 03:59:28	2024-04-01 05:20:41		FAD			1	0	0	FAD	0	0	0
886	DOC-2024-0512	03-0508	3483	\N	\N	\N	3770000		50202020-00	2A1-101	122	1	512	2024-04-01 03:59:45	2024-04-01 05:20:48		FAD			1	0	0	FAD	0	0	0
887	DOC-2024-0513	03-0509	3483	\N	\N	\N	580000		50202020-00	2A1-101	122	1	513	2024-04-01 04:00:11	2024-04-01 05:20:56		FAD			1	0	0	FAD	0	0	0
888	DOC-2024-0514	03-0510	3483	\N	\N	\N	737793		50202020-00	2A1-102	122	1	514	2024-04-01 04:00:39	2024-04-01 05:21:04		FAD			1	0	0	FAD	0	0	0
889	DOC-2024-0515	03-0511	3483	\N	\N	\N	17700		50202010-02	2A2B-105	122	1	515	2024-04-01 04:00:57	2024-04-01 05:21:10		FAD			1	0	0	FAD	0	0	0
890	DOC-2024-0516	03-0512	3528	\N	\N	\N	5900		50202010-02	2A2B-105	122	1	516	2024-04-01 04:01:52	2024-04-01 05:21:18		FAD			1	0	0	FAD	0	0	0
891	DOC-2024-0517	03-0513	3529	\N	\N	\N	5900		50202010-02	2A2B-105	999	1	517	2024-04-01 04:02:43	2024-04-01 05:21:28		FAD			1	0	0	FAD	0	\N	\N
894	DOC-2024-0520	03-0516	167	\N	\N	\N	106560		50202020-00	2A1-104	122	1	520	2024-04-01 04:04:38	2024-04-01 05:21:59		FAD			1	0	0	FAD	0	0	0
895	DOC-2024-0521	03-0517	683	\N	\N	\N	6113.3		50202020-00	2A1-104	122	1	521	2024-04-01 04:05:19	2024-04-01 05:22:08		FAD			1	0	0	FAD	0	0	0
850	DOC-2024-0482	\N	2704	\N	\N	\N	100000		10405990-00	2A1-105	122	0	482	2024-03-15 07:47:16	\N		FAD			0	2	5	FAD	0	0	0
851	DOC-2024-0483	\N	2704	\N	\N	\N	2500		50101010-01	2A1-101	122	0	483	2024-03-20 01:45:40	\N		FAD			0	0	0	FAD	0	0	0
902	DOC-2024-0528	03-0527	1103	\N	\N	\N	464100.92		50202020-00	2A1-104	122	1	528	2024-04-01 04:34:15	2024-04-01 07:40:13		FAD			1	0	0	FAD	0	0	0
903	DOC-2024-0529	03-0528	1103	\N	\N	\N	42780.13		50202020-00	2A1-104	122	1	529	2024-04-01 04:34:47	2024-04-01 07:40:23		FAD			1	0	0	FAD	0	0	0
905	DOC-2024-0531	03-0531	3483	\N	\N	\N	12423.34		50202020-00	2A1-104	122	1	531	2024-04-01 04:35:30	2024-04-01 07:40:53		FAD			1	0	0	FAD	0	0	0
906	DOC-2024-0532	03-0532	1449	\N	\N	\N	5450		50202020-00	2A1-101	122	1	532	2024-04-01 04:35:48	2024-04-01 07:40:58		FAD			1	0	0	FAD	0	0	0
908	DOC-2024-0534	03-0534	2747	\N	\N	\N	50000		50202010-02	2A2B-101	122	1	534	2024-04-01 04:37:21	2024-04-01 07:41:14		FAD			1	0	0	FAD	0	0	0
909	DOC-2024-0535	03-0535	236	\N	\N	\N	150000		50202020-00	2A1-104	122	1	535	2024-04-01 04:37:43	2024-04-01 07:41:34		FAD			1	0	0	FAD	0	0	0
910	DOC-2024-0536	03-0536	1087	\N	\N	\N	13333.33		50202020-00	2A1-101	122	1	536	2024-04-01 04:38:10	2024-04-01 07:42:01		FAD			1	0	0	FAD	0	0	0
911	DOC-2024-0537	03-0537	1022	\N	\N	\N	20505		50202020-00	2A1-101	122	1	537	2024-04-01 04:38:30	2024-04-01 07:42:06		FAD			1	0	0	FAD	0	0	0
912	DOC-2024-0538	03-0538	3483	\N	\N	\N	9655.5		50202020-00	2A1-101	122	1	538	2024-04-01 04:39:22	2024-04-01 07:42:11		FAD			1	0	0	FAD	0	0	0
915	DOC-2024-0539	03-0540	3279	\N	\N	\N	19413.27		50103030 (733)	1A1	122	1	539	2024-04-01 04:41:14	2024-04-01 07:42:25		FAD			1	0	0	FAD	0	0	0
916	DOC-2024-0539	03-0540	3279	\N	\N	\N	4323.03		50103030 (733)	2A1-1	122	1	539	2024-04-01 04:41:14	2024-04-01 07:42:25		FAD			1	0	0	FAD	0	0	0
920	DOC-2024-0540	03-0542	1035	\N	\N	\N	146000		50202020-00	2A1-101	122	1	540	2024-04-01 04:41:33	2024-04-01 07:42:37		FAD			1	0	0	FAD	0	0	0
926	DOC-2024-0546	03-0548	505	\N	\N	\N	24537.28		50202020-00	2A1-104	122	1	546	2024-04-01 04:45:39	2024-04-01 07:42:50		FAD			1	0	0	FAD	0	0	0
925	DOC-2024-0545	03-0547	104	\N	\N	\N	3041.23		50202020-00	2A1-104	122	1	545	2024-04-01 04:45:19	2024-04-01 07:42:55		FAD			1	0	0	FAD	0	0	0
924	DOC-2024-0544	03-0546	886	\N	\N	\N	162000		50202020-00	2A1-104	999	1	544	2024-04-01 04:44:35	2024-04-01 07:43:00		FAD			1	0	0	FAD	0	\N	\N
923	DOC-2024-0543	03-0545	3533	\N	\N	\N	160000		50202020-00	2A1-104	999	1	543	2024-04-01 04:44:05	2024-04-01 07:43:04		FAD			1	0	0	FAD	0	\N	\N
1088	DOC-2024-0655	04-0636	1045	\N	\N	\N	150600		50202020-00	2A1-101	122	1	655	2024-04-17 03:04:55	2024-04-17 03:32:02		FAD			1	0	0	FAD	0	0	0
1117	DOC-2024-0683	04-0664	2928	\N	\N	\N	470000		50202020-00	2A1-AC	999	1	683	2024-04-17 04:01:36	2024-04-17 04:02:32		FAD			1	0	0	FAD	0	0	0
866	DOC-2024-0493	03-0489	3483	\N	\N	\N	24127.3		50211990-00	PD 997	122	1	493	2024-04-01 03:46:16	2024-04-01 05:18:44		FAD			1	0	0	FAD	0	0	0
867	DOC-2024-0494	03-0490	1059	\N	\N	\N	119300		50202020-00	2A1-105	122	1	494	2024-04-01 03:46:41	2024-04-01 05:18:52		FAD			1	0	0	FAD	0	0	0
868	DOC-2024-0495	03-0491	3140	\N	\N	\N	122106.23		50212030-00	1A1	122	1	495	2024-04-01 03:47:05	2024-04-01 05:18:59		FAD			1	0	0	FAD	0	0	0
922	DOC-2024-0542	03-0544	2696	\N	\N	\N	1266		50202020-00	2A1-104	122	1	542	2024-04-01 04:43:10	2024-04-01 07:43:09		FAD			1	0	0	FAD	0	0	0
921	DOC-2024-0541	03-0543	3532	\N	\N	\N	20260.73		50202020-00	2A1-104	999	1	541	2024-04-01 04:42:27	2024-04-01 07:43:13		FAD			1	0	0	FAD	0	\N	\N
929	DOC-2024-0548	03-0550	3494	\N	\N	\N	4456.08		50103010 (731)	2A2-B	122	1	548	2024-04-01 04:46:48	2024-04-01 07:43:34		FAD			1	0	0	FAD	0	0	0
938	DOC-2024-0557	03-0560	3483	\N	\N	\N	8100		50202010-02	2A2B-101	122	1	557	2024-04-01 04:52:16	2024-04-01 07:43:58		FAD			1	0	0	FAD	0	0	0
937	DOC-2024-0556	03-0559	1027	\N	\N	\N	3091000		50202020-00	2A1-105	122	1	556	2024-04-01 04:51:52	2024-04-01 07:44:03		FAD			1	0	0	FAD	0	0	0
936	DOC-2024-0555	03-0558	1051	\N	\N	\N	4014000		50202020-00	2A1-105	122	1	555	2024-04-01 04:51:25	2024-04-01 07:44:07		FAD			1	0	0	FAD	0	0	0
935	DOC-2024-0554	03-0557	1067	\N	\N	\N	14659500		50202020-00	2A1-105	122	1	554	2024-04-01 04:51:04	2024-04-01 07:44:11		FAD			1	0	0	FAD	0	0	0
934	DOC-2024-0553	03-0556	1055	\N	\N	\N	3346000		50202020-00	2A1-105	122	1	553	2024-04-01 04:50:39	2024-04-01 07:44:15		FAD			1	0	0	FAD	0	0	0
933	DOC-2024-0552	03-0555	1059	\N	\N	\N	4554000		50202020-00	2A1-105	122	1	552	2024-04-01 04:48:28	2024-04-01 07:44:22		FAD			1	0	0	FAD	0	0	0
932	DOC-2024-0551	03-0554	1122	\N	\N	\N	832395		50202020-00	2A1-104	122	1	551	2024-04-01 04:48:11	2024-04-01 07:44:27		FAD			1	0	0	FAD	0	0	0
931	DOC-2024-0550	03-0553	1183	\N	\N	\N	278650		50202020-00	2A1-104	122	1	550	2024-04-01 04:47:35	2024-04-01 07:44:31		FAD			1	0	0	FAD	0	0	0
941	DOC-2024-0560	03-0565	3534	\N	\N	\N	643500		50202010-02	2A2B-101	999	1	560	2024-04-01 04:54:14	2024-04-01 07:45:12		FAD			1	0	0	FAD	0	\N	\N
942	DOC-2024-0561	03-0566	3205	\N	\N	\N	485450		50202010-02	2A2B-101	999	1	561	2024-04-01 04:55:05	2024-04-01 07:45:18		FAD			1	0	0	FAD	0	\N	\N
943	DOC-2024-0562	03-0567	3483	\N	\N	\N	2721288.18		50202020-00	2A1-104	122	1	562	2024-04-01 04:56:15	2024-04-01 07:45:24		FAD			1	0	0	FAD	0	0	0
944	DOC-2024-0562	03-0567	3483	\N	\N	\N	564967.74		50202020-00	2A1-103	122	1	562	2024-04-01 04:56:15	2024-04-01 07:45:24		FAD			1	0	0	FAD	0	0	0
945	DOC-2024-0563	03-0568	3486	\N	\N	\N	56704.78		50203090-00	1A1	122	1	563	2024-04-01 04:56:45	2024-04-01 07:45:32		FAD			1	0	0	FAD	0	0	0
946	DOC-2024-0564	03-0569	3484	\N	\N	\N	547233		50202020-00	2A1-101	122	1	564	2024-04-01 04:58:53	2024-04-01 07:45:40		FAD			1	0	0	FAD	0	0	0
947	DOC-2024-0564	03-0569	3484	\N	\N	\N	12374		50202020-00	2A1-104	122	1	564	2024-04-01 04:58:53	2024-04-01 07:45:40		FAD			1	0	0	FAD	0	0	0
882	DOC-2024-0508	03-0504	1103	\N	\N	\N	737303.04		50202020-00	2A1-104	122	1	508	2024-04-01 03:58:08	2024-04-01 05:20:29		FAD			1	0	0	FAD	0	0	0
896	DOC-2024-0522	03-0521	1122	\N	\N	\N	1500000		50202020-00	2A1-104	122	1	522	2024-04-01 04:31:47	2024-04-01 05:22:20		FAD			1	0	0	FAD	0	0	0
899	DOC-2024-0525	03-0524	1044	\N	\N	\N	167990		50202020-00	2A1-101	122	1	525	2024-04-01 04:33:01	2024-04-01 07:39:50		FAD			1	0	0	FAD	0	0	0
907	DOC-2024-0533	03-0533	3531	\N	\N	\N	35156		50202020-00	2A1-104	122	1	533	2024-04-01 04:37:01	2024-04-01 07:41:04		FAD			1	0	0	FAD	0	0	0
913	DOC-2024-0538	03-0538	3483	\N	\N	\N	52373.54		50202020-00	2A1-102	122	1	538	2024-04-01 04:39:22	2024-04-01 07:42:11		FAD			1	0	0	FAD	0	0	0
914	DOC-2024-0538	03-0538	3483	\N	\N	\N	6973.06		50202020-00	2A1-101 (RA10612)	122	1	538	2024-04-01 04:39:22	2024-04-01 07:42:11		FAD			1	0	0	FAD	0	0	0
917	DOC-2024-0539	03-0540	3279	\N	\N	\N	11177.62		50103030 (733)	2A1-2	122	1	539	2024-04-01 04:41:14	2024-04-01 07:42:25		FAD			1	0	0	FAD	0	0	0
918	DOC-2024-0539	03-0540	3279	\N	\N	\N	12713.92		50103030 (733)	2A2-A	122	1	539	2024-04-01 04:41:14	2024-04-01 07:42:25		FAD			1	0	0	FAD	0	0	0
952	DOC-2024-0565	03-0570	3483	\N	\N	\N	1308621.11		50102990-14	1A1	122	1	565	2024-04-01 04:59:32	2024-04-01 07:45:50		FAD			1	0	0	FAD	0	0	0
953	DOC-2024-0566	03-0571	3494	\N	\N	\N	96918.36		50103010 (731)	1A1	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
954	DOC-2024-0566	03-0571	3494	\N	\N	\N	20750.52		50103010 (731)	2A1-1	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
963	DOC-2024-0567	03-0572	3498	\N	\N	\N	3600		50103020 (732)	1A1	122	1	567	2024-04-01 05:03:51	2024-04-01 07:46:15		FAD			1	0	0	FAD	0	0	0
964	DOC-2024-0567	03-0572	3498	\N	\N	\N	800		50103020 (732)	2A1-1	122	1	567	2024-04-01 05:03:51	2024-04-01 07:46:15		FAD			1	0	0	FAD	0	0	0
965	DOC-2024-0567	03-0572	3498	\N	\N	\N	1800		50103020 (732)	2A1-2	122	1	567	2024-04-01 05:03:51	2024-04-01 07:46:15		FAD			1	0	0	FAD	0	0	0
966	DOC-2024-0567	03-0572	3498	\N	\N	\N	2200		50103020 (732)	2A2-A	122	1	567	2024-04-01 05:03:51	2024-04-01 07:46:15		FAD			1	0	0	FAD	0	0	0
967	DOC-2024-0567	03-0572	3498	\N	\N	\N	2000		50103020 (732)	2A2-B	122	1	567	2024-04-01 05:03:51	2024-04-01 07:46:15		FAD			1	0	0	FAD	0	0	0
995	DOC-2024-0593	03-0466	1405	\N	\N	\N	71566.59		50202020-00	2A1-AC (HR)	122	1	593	2024-04-01 08:01:56	2024-04-01 08:02:30		FAD			1	0	0	FAD	0	0	0
999	DOC-2024-0597	03-0478	3319	\N	\N	\N	304657.34		50202020-00	2A1-AC	122	1	597	2024-04-01 08:06:32	2024-04-01 08:06:54		FAD			1	0	0	FAD	0	0	0
1089	DOC-2024-0656	04-0637	1047	\N	\N	\N	925460		50202020-00	2A1-101	122	1	656	2024-04-17 03:05:17	2024-04-17 03:31:40		FAD			1	0	0	FAD	0	0	0
1115	DOC-2024-0681	04-0662	3549	\N	\N	\N	15300		50202010-02	2A2A-102	999	1	681	2024-04-17 04:00:56	2024-04-17 04:02:08		FAD			1	0	0	FAD	0	0	0
1149	DOC-2024-0710	04-0693	3550	\N	\N	\N	2112		50202010-02	2A2B-103	999	1	710	2024-04-17 04:14:44	2024-04-17 04:35:42		FAD			1	0	0	FAD	0	0	0
1143	DOC-2024-0707	04-0689	2729	\N	\N	\N	10902.5		50202020-00	2A1-AC	122	1	707	2024-04-17 04:12:29	2024-04-17 04:36:25		FAD			1	0	0	FAD	0	0	0
1236	DOC-2024-0787	04-0771	3483	\N	\N	\N	702000		50202020-00	2A1-101	122	1	787	2024-04-29 04:55:37	2024-04-29 04:57:13		FAD			1	0	0	FAD	0	0	0
1264	DOC-2024-0814	04-0803	1190	\N	\N	\N	20000		50202020-00	2A1-101	122	1	814	2024-04-29 07:24:49	2024-04-29 07:28:55		FAD			1	0	0	FAD	0	0	0
1265	DOC-2024-0814	04-0803	1190	\N	\N	\N	31350		50202020-00	2A1-102	122	1	814	2024-04-29 07:24:49	2024-04-29 07:28:55		FAD			1	0	0	FAD	0	0	0
1461	DOC-2024-0959	04-0887	3580	\N	\N	\N	975374.40		50202020-00	2A1-AC	999	1	959	2024-05-02 04:20:32	2024-05-02 04:20:47		FAD			1	0	0	FAD	0	0	0
928	DOC-2024-0548	03-0550	3494	\N	\N	\N	4024.84		50103010 (731)	2A2-A	122	1	548	2024-04-01 04:46:48	2024-04-01 07:43:34		FAD			1	0	0	FAD	0	0	0
939	DOC-2024-0558	03-0561	2717	\N	\N	\N	1800		50202010-02	2A2B-101	122	1	558	2024-04-01 04:52:43	2024-04-01 07:43:53		FAD			1	0	0	FAD	0	0	0
1090	DOC-2024-0657	04-0638	2952	\N	\N	\N	17736		50202020-00	2A1-AC	122	1	657	2024-04-17 03:05:36	2024-04-17 03:31:24		FAD			1	0	0	FAD	0	0	0
1116	DOC-2024-0682	04-0663	3489	\N	\N	\N	22150		50201010-00	2A1-1	999	1	682	2024-04-17 04:01:16	2024-04-17 04:02:24		FAD			1	0	0	FAD	0	0	0
1150	DOC-2024-0711	04-0694	3551	\N	\N	\N	14455.67		50202020-00	2A1-AC (HR)	999	1	711	2024-04-17 04:15:55	2024-04-17 04:35:28		FAD			1	0	0	FAD	0	0	0
1693	DOC-2024-1122	05-1094	3483	\N	\N	\N	22967.15		50102120-01	2A1-2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1212	DOC-2024-0765	04-0748	3486	\N	\N	\N	43331.11		50202020-00	2A1-AC	122	1	765	2024-04-29 04:41:26	2024-04-29 04:44:13		FAD			1	0	0	FAD	0	0	0
1266	DOC-2024-0815	04-0804	1131	\N	\N	\N	220000		50202020-00	2A1-101	122	1	815	2024-04-29 07:25:25	2024-04-29 07:29:04		FAD			1	0	0	FAD	0	0	0
1267	DOC-2024-0815	04-0804	1131	\N	\N	\N	20000		50202020-00	2A1-102	122	1	815	2024-04-29 07:25:25	2024-04-29 07:29:04		FAD			1	0	0	FAD	0	0	0
1294	DOC-2024-0840	04-0835	1039	\N	\N	\N	26665000		50202020-00	2A1-101	122	1	840	2024-04-29 07:58:47	2024-04-29 07:58:57		FAD			1	0	0	FAD	0	0	0
1295	DOC-2024-0840	04-0835	1039	\N	\N	\N	3447500		50202020-00	2A1-101 (RA10612)	122	1	840	2024-04-29 07:58:47	2024-04-29 07:58:57		FAD			1	0	0	FAD	0	0	0
1296	DOC-2024-0840	04-0835	1039	\N	\N	\N	16755500		50202020-00	2A1-102	122	1	840	2024-04-29 07:58:47	2024-04-29 07:58:57		FAD			1	0	0	FAD	0	0	0
1318	DOC-2024-0861	04-0858	1185	\N	\N	\N	6272000		50202020-00	2A1-104	122	1	861	2024-04-29 09:26:33	2024-04-29 09:29:38		FAD			1	0	0	FAD	0	0	0
1352	DOC-2024-0888	04-0888	3360	\N	\N	\N	43000		50202020-00	2A1-AC	122	1	888	2024-04-29 10:42:21	2024-04-29 10:45:00		FAD			1	0	0	FAD	0	0	0
1404	DOC-2024-0915	04-0674	1057	\N	\N	\N	9453500		50202020-00	2A1-101	122	1	915	2024-04-30 04:06:04	2024-04-30 04:06:14		FAD			1	0	0	FAD	0	0	0
1405	DOC-2024-0915	04-0674	1057	\N	\N	\N	109500		50202020-00	2A1-101 (RA10612)	122	1	915	2024-04-30 04:06:04	2024-04-30 04:06:14		FAD			1	0	0	FAD	0	0	0
1406	DOC-2024-0915	04-0674	1057	\N	\N	\N	7701500		50202020-00	2A1-102	122	1	915	2024-04-30 04:06:04	2024-04-30 04:06:14		FAD			1	0	0	FAD	0	0	0
1442	DOC-2024-0940	04-0942	1035	\N	\N	\N	113800		50202020-00	2A1-101	122	1	940	2024-04-30 04:49:29	2024-04-30 04:49:41		FAD			1	0	0	FAD	0	0	0
1462	DOC-2024-0960	04-0850	1027	\N	\N	\N	1088000		50202020-00	2A1-104	122	1	960	2024-05-02 04:21:27	2024-05-02 04:21:38		FAD			1	0	0	FAD	0	0	0
1184	DOC-2024-0738	04-0715	3484	\N	\N	\N	74892		50202010-02	2A2B-101	122	1	738	2024-04-29 04:22:44	2024-04-29 04:22:58		FAD			1	0	0	FAD	0	0	0
1237	DOC-2024-0788	04-0772	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	788	2024-04-29 04:56:02	2024-04-29 04:57:22		FAD			1	0	0	FAD	0	0	0
1646	DOC-2024-1083	05-1054	3592	\N	\N	\N	133000	o	50202020-00	2A1-AC (FAD)	999	1	1083	2024-05-27 08:30:07	2024-05-27 09:34:18		FAD			1	0	0	FAD	0	0	0
1505	DOC-2024-0975	05-0954	3483	\N	\N	\N	164419		50101010-01	2A2	122	1	975	2024-05-08 04:24:46	2024-05-08 04:51:46		FAD			1	0	0	FAD	0	0	0
1694	DOC-2024-1122	05-1094	3483	\N	\N	\N	58083.29		50102110-01	2A1-2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1183	DOC-2024-0738	04-0715	3484	\N	\N	\N	13861		50202020-00	2A1-101	122	1	738	2024-04-29 04:22:44	2024-04-29 04:22:58		FAD			1	0	0	FAD	0	0	0
1695	DOC-2024-1122	05-1094	3483	\N	\N	\N	17400		50102050-02	2A1-2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1185	DOC-2024-0738	04-0715	3484	\N	\N	\N	18624		50202010-02	2A2B-106	122	1	738	2024-04-29 04:22:44	2024-04-29 04:22:58		FAD			1	0	0	FAD	0	0	0
1827	DOC-2024-1211	05-1186	3483	\N	\N	\N	647594.03	c	50202020-00	2A1-101	122	1	1211	2024-05-28 08:11:43	2024-05-28 08:25:06		FAD			1	0	0	FAD	0	0	0
1593	DOC-2024-1042	05-1013	2787	\N	\N	\N	312500	g	50202020-00	2A1-101 (Patriot)	122	1	1042	2024-05-24 05:18:17	2024-05-24 05:21:15		FAD			1	0	0	FAD	0	0	0
1538	DOC-2024-0996	05-0983	779	\N	\N	\N	185520.6	d	50202020-00	2A1-104	122	1	996	2024-05-08 04:38:55	2024-05-08 04:46:29		FAD			1	0	0	FAD	0	0	0
1757	DOC-2024-1168	05-1140	1103	\N	\N	\N	585269.12	f	50202020-00	2A1-104	122	1	1168	2024-05-28 07:10:14	2024-05-28 08:06:39		FAD			1	0	0	FAD	0	0	0
1620	DOC-2024-1063	05-1034	3483	\N	\N	\N	65957.22		50202020-00	2A2B-101	999	1	1063	2024-05-27 08:12:03	2024-05-27 08:17:30		FAD			1	0	0	FAD	0	0	0
1696	DOC-2024-1122	05-1094	3483	\N	\N	\N	4659.09		50102060-03	2A1-2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1697	DOC-2024-1122	05-1094	3483	\N	\N	\N	62601.7		50102120-01	2A2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1698	DOC-2024-1122	05-1094	3483	\N	\N	\N	138352.88		50102110-01	2A2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1699	DOC-2024-1122	05-1094	3483	\N	\N	\N	49500		50102050-02	2A2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1700	DOC-2024-1122	05-1094	3483	\N	\N	\N	10613.63		50102060-03	2A2	122	1	1122	2024-05-27 10:03:41	2024-05-27 10:12:52		FAD			1	0	0	FAD	0	0	0
1561	DOC-2024-1016	05-0981	2817	\N	\N	\N	51674.4	u	50202020-00	2A1-AC (NULAB)	122	1	1016	2024-05-13 07:38:00	2024-05-13 07:38:12		FAD			1	0	0	FAD	0	0	0
1774	DOC-2024-1184	05-1159	3483	\N	\N	\N	9743	p	50202020-00	2A1-AC (HR)	122	1	1184	2024-05-28 07:17:23	2024-05-28 07:52:27		FAD			1	0	0	FAD	0	0	0
1742	DOC-2024-1155	05-1127	2817	\N	\N	\N	23000	b	50202020-00	2A1-101	122	1	1155	2024-05-27 10:28:45	2024-05-27 10:37:48		FAD			1	0	0	FAD	0	0	0
1666	DOC-2024-1103	05-1074	3486	\N	\N	\N	20967		50203090-00	2A2	999	1	1103	2024-05-27 09:43:16	2024-05-27 09:51:22		FAD			1	0	0	FAD	0	0	0
981	DOC-2024-0580	03-0586	1124	\N	\N	\N	2844000		50202020-00	2A1-105	122	1	580	2024-04-01 05:13:02	2024-04-01 07:47:51		FAD			1	0	0	FAD	0	0	0
982	DOC-2024-0581	03-0587	1119	\N	\N	\N	1612000		50202020-00	2A1-105	122	1	581	2024-04-01 05:13:20	2024-04-01 07:47:55		FAD			1	0	0	FAD	0	0	0
983	DOC-2024-0582	03-0588	1106	\N	\N	\N	856000		50202020-00	2A1-105	122	1	582	2024-04-01 05:13:40	2024-04-01 07:47:59		FAD			1	0	0	FAD	0	0	0
984	DOC-2024-0583	03-0589	2034	\N	\N	\N	18185.85		50101010-01	2A1-101	122	1	583	2024-04-01 05:14:17	2024-04-01 07:48:03		FAD			1	0	0	FAD	0	0	0
1268	DOC-2024-0816	04-0805	1103	\N	\N	\N	908025.35		50202020-00	2A1-104	122	1	816	2024-04-29 07:25:49	2024-04-29 07:29:15		FAD			1	0	0	FAD	0	0	0
1293	DOC-2024-0839	04-0834	1046	\N	\N	\N	76573500		50202020-00	2A1-101	122	1	839	2024-04-29 07:57:44	2024-04-29 07:59:06		FAD			1	0	0	FAD	0	0	0
718	DOC-2024-0407	02-0403-A	3494	\N	\N	\N	1000		50103040 (734)	2A2-B	999	1	407	2024-03-06 08:06:49	2024-03-06 08:08:01		FAD			1	0	0	FAD	0	0	0
559	DOC-2024-0295	02-0295	1200	\N	\N	\N	7328000		50202020-00	2A1-104	999	1	295	2024-02-28 11:06:09	2024-03-04 02:59:36		FAD			1	0	0	FAD	0	0	0
540	DOC-2024-0278	02-0278	3505	\N	\N	\N	183048.8		50202020-00	2A1-104	999	1	278	2024-02-28 10:57:06	2024-03-04 03:07:08		FAD			1	0	0	FAD	0	0	0
541	DOC-2024-0279	02-0279	3506	\N	\N	\N	174000		50202020-00	2A1-104	999	1	279	2024-02-28 10:57:36	2024-03-04 03:07:14		FAD			1	0	0	FAD	0	0	0
478	DOC-2024-0242	02-0241	3503	\N	\N	\N	15902.37		50202020-00	2A1-104	999	1	242	2024-02-28 10:18:37	2024-03-04 03:17:37		FAD			1	0	0	FAD	0	0	0
531	DOC-2024-0270	02-0270	3483	\N	\N	\N	1680000		50202020-00	2A1-104	999	1	270	2024-02-28 10:50:21	2024-03-04 03:14:50		FAD			1	0	0	FAD	0	0	0
634	DOC-2024-0357	02-0356	3515	\N	\N	\N	138627.91		50202020-00	2A1-104	999	1	357	2024-03-04 06:12:42	2024-03-04 07:39:21		FAD			1	0	0	FAD	0	0	0
562	DOC-2024-0298	02-0298	23	\N	\N	\N	30450.53		50202020-00	2A1-104	999	1	298	2024-02-28 11:08:44	2024-03-04 02:57:23		FAD			1	0	0	FAD	0	0	0
542	DOC-2024-0280	02-0280	3507	\N	\N	\N	174000		50202020-00	2A1-104	999	1	280	2024-02-28 10:58:02	2024-03-04 03:06:39		FAD			1	0	0	FAD	0	0	0
1319	DOC-2024-0862	04-0859	3570	\N	\N	\N	1005600		50202020-00	2A1-101	999	1	862	2024-04-29 09:27:24	2024-04-29 09:29:50		FAD			1	0	0	FAD	0	0	0
445	DOC-2024-0212	02-0211	1183	\N	\N	\N	3088000		50202020-00	2A1-104	999	1	212	2024-02-28 10:00:49	2024-03-04 03:24:29		FAD			1	0	0	FAD	0	0	0
1091	DOC-2024-0658	04-0639	3312	\N	\N	\N	1880		50202020-00	2A1-AC	122	1	658	2024-04-17 03:05:54	2024-04-17 03:31:12		FAD			1	0	0	FAD	0	0	0
695	DOC-2024-0395	02-0393	2730	\N	\N	\N	114618.77		50202020-00	2A1-104	999	1	395	2024-03-04 07:23:50	2024-03-04 07:34:13		FAD			1	0	0	FAD	0	0	0
678	DOC-2024-0382	02-0381	1851	\N	\N	\N	82271.55		50202020-00	2A1-104	999	1	382	2024-03-04 06:55:02	2024-03-04 07:36:52		FAD			1	0	0	FAD	0	0	0
985	DOC-2024-0584	03-0590	1128	\N	\N	\N	25335.53		50202020-00	2A1-101	122	1	584	2024-04-01 05:14:38	2024-04-01 07:48:07		FAD			1	0	0	FAD	0	0	0
1151	DOC-2024-0712	04-0695	3552	\N	\N	\N	38900		50202020-00	2A1-AC (FAD)	999	1	712	2024-04-17 04:16:40	2024-04-17 04:35:14		FAD			1	0	0	FAD	0	0	0
1118	DOC-2024-0684	04-0666	2726	\N	\N	\N	2490		50202020-00	2A1-AC	122	1	684	2024-04-17 04:02:54	2024-04-17 04:41:28		FAD			1	0	0	FAD	0	0	0
722	DOC-2024-0409	03-0404	3483	\N	\N	\N	88954.19		50101010-01	2A1-1	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
986	DOC-2024-0585	03-0591	1129	\N	\N	\N	18542		50202020-00	2A1-102	122	1	585	2024-04-01 05:14:56	2024-04-01 07:48:11		FAD			1	0	0	FAD	0	0	0
987	DOC-2024-0586	03-0592	3483	\N	\N	\N	168176.7		50202020-00	2A1-106	122	1	586	2024-04-01 05:15:15	2024-04-01 07:48:15		FAD			1	0	0	FAD	0	0	0
988	DOC-2024-0587	03-0593	3483	\N	\N	\N	93136.09		50202010-02	2A2B-101	122	1	587	2024-04-01 05:16:01	2024-04-01 07:48:19		FAD			1	0	0	FAD	0	0	0
989	DOC-2024-0588	03-0430	3193	\N	\N	\N	44210		50202020-00	2A1-101	122	1	588	2024-04-01 07:56:11	2024-04-01 07:56:55		FAD			1	0	0	FAD	0	0	0
723	DOC-2024-0409	03-0404	3483	\N	\N	\N	234500.42		50101010-01	2A1-2	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
1353	DOC-2024-0889	04-0890	3493	\N	\N	\N	1369500		50202020-00	2A1-101	122	1	889	2024-04-29 10:43:07	2024-04-29 10:45:20		FAD			1	0	0	FAD	0	0	0
1180	DOC-2024-0735	04-0784	2717	\N	\N	\N	4250		50202010-02	2A2B-105	122	1	735	2024-04-17 05:00:03	2024-04-17 07:11:41		FAD			1	0	0	FAD	0	0	0
1186	DOC-2024-0739	04-0722	2727	\N	\N	\N	2462.25		50210030-00	1A1	122	1	739	2024-04-29 04:23:47	2024-04-29 04:24:04		FAD			1	0	0	FAD	0	0	0
1213	DOC-2024-0766	04-0749	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	766	2024-04-29 04:41:46	2024-04-29 04:44:20		FAD			1	0	0	FAD	0	0	0
1238	DOC-2024-0789	04-0766	3558	\N	\N	\N	34000		50202020-00	2A1-AC (GAD)	122	1	789	2024-04-29 04:59:37	2024-04-29 04:59:48		FAD			1	0	0	FAD	0	0	0
1354	DOC-2024-0889	04-0890	3493	\N	\N	\N	16500		50202020-00	2A1-101 (RA10612)	122	1	889	2024-04-29 10:43:07	2024-04-29 10:45:20		FAD			1	0	0	FAD	0	0	0
1355	DOC-2024-0889	04-0890	3493	\N	\N	\N	214500		50202020-00	2A1-102	122	1	889	2024-04-29 10:43:07	2024-04-29 10:45:20		FAD			1	0	0	FAD	0	0	0
1407	DOC-2024-0916	04-0707	3483	\N	\N	\N	9000		50202020-00	2A1-AC	122	1	916	2024-04-30 04:09:08	2024-04-30 04:09:17		FAD			1	0	0	FAD	0	0	0
1441	DOC-2024-0939	04-0941	3562	\N	\N	\N	60964		50202010-02	2A2B-106	122	1	939	2024-04-30 04:48:52	2024-04-30 04:49:50		FAD			1	0	0	FAD	0	0	0
1463	DOC-2024-0961	04-0827	3483	\N	\N	\N	167148.76		50202020-00	2A1-101	122	1	961	2024-05-02 04:22:29	2024-05-02 04:22:39		FAD			1	0	0	FAD	0	0	0
1539	DOC-2024-0997	05-0984	3483	\N	\N	\N	20846000		50202020-00	2A1-102	122	1	997	2024-05-08 04:39:11	2024-05-08 04:46:40		FAD			1	0	0	FAD	0	0	0
1506	DOC-2024-0976	05-0955	3483	\N	\N	\N	111913.46		50101010-01	1A1	122	1	976	2024-05-08 04:26:04	2024-05-08 04:51:35		FAD			1	0	0	FAD	0	0	0
1507	DOC-2024-0976	05-0955	3483	\N	\N	\N	28090.99		50101010-01	2A1-1	122	1	976	2024-05-08 04:26:04	2024-05-08 04:51:35		FAD			1	0	0	FAD	0	0	0
1508	DOC-2024-0976	05-0955	3483	\N	\N	\N	76415.68		50101010-01	2A1-2	122	1	976	2024-05-08 04:26:04	2024-05-08 04:51:35		FAD			1	0	0	FAD	0	0	0
1509	DOC-2024-0976	05-0955	3483	\N	\N	\N	164427.68		50101010-01	2A2	122	1	976	2024-05-08 04:26:04	2024-05-08 04:51:35		FAD			1	0	0	FAD	0	0	0
1562	DOC-2024-1017	05-0992	936	\N	\N	\N	74442.6	d	50202020-00	2A1-104	122	1	1017	2024-05-13 08:33:50	2024-05-13 08:34:34		FAD			1	0	0	FAD	0	0	0
1594	DOC-2024-1043	05-1014	3483	\N	\N	\N	2468117.18	j	50202020-00	2A1-106	122	1	1043	2024-05-24 05:18:36	2024-05-24 05:21:25		FAD			1	0	0	FAD	0	0	0
1092	DOC-2024-0659	04-0640	1184	\N	\N	\N	8489934		50202020-00	2A1-105	122	1	659	2024-04-17 03:06:14	2024-04-17 03:30:36		FAD			1	0	0	FAD	0	0	0
1152	DOC-2024-0713	04-0696	3553	\N	\N	\N	224985		50202020-00	2A1-AC (HR)	999	1	713	2024-04-17 04:17:17	2024-04-17 04:35:02		FAD			1	0	0	FAD	0	0	0
1119	DOC-2024-0685	04-0667	758	\N	\N	\N	12000		50211990-00	PD 997	122	1	685	2024-04-17 04:03:49	2024-04-17 04:41:14		FAD			1	0	0	FAD	0	0	0
721	DOC-2024-0409	03-0404	3483	\N	\N	\N	484846.73		50101010-01	1A1	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
728	DOC-2024-0409	03-0404	3483	\N	\N	\N	42000		50102010-01	2A2	999	1	409	2024-03-11 08:05:02	2024-04-17 07:11:16		FAD			1	0	0	FAD	0	0	0
1187	DOC-2024-0740	04-0723	3031	\N	\N	\N	4190970		50202020-00	2A1-101	122	1	740	2024-04-29 04:24:27	2024-04-29 04:25:01		FAD			1	0	0	FAD	0	0	0
1214	DOC-2024-0767	04-0750	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	767	2024-04-29 04:42:05	2024-04-29 04:44:59		FAD			1	0	0	FAD	0	0	0
1239	DOC-2024-0790	04-0773	3559	\N	\N	\N	42300		50202020-00	2A1-AC	122	1	790	2024-04-29 05:00:13	2024-04-29 05:00:23		FAD			1	0	0	FAD	0	0	0
1269	DOC-2024-0817	04-0806	3565	\N	\N	\N	105665.4		50202020-00	2A1-104	999	1	817	2024-04-29 07:26:36	2024-04-29 07:29:25		FAD			1	0	0	FAD	0	0	0
1292	DOC-2024-0838	04-0833	1046	\N	\N	\N	99986000		50202020-00	2A1-102	122	1	838	2024-04-29 07:57:16	2024-04-29 07:59:22		FAD			1	0	0	FAD	0	0	0
1320	DOC-2024-0863	04-0860	3571	\N	\N	\N	54000		50202020-00	2A1-104	999	1	863	2024-04-29 09:28:10	2024-04-29 09:30:04		FAD			1	0	0	FAD	0	0	0
1349	DOC-2024-0885	04-0883	15	\N	\N	\N	19614.70		50202020-00	2A1-104	122	1	885	2024-04-29 10:41:14	2024-04-29 10:44:20		FAD			1	0	0	FAD	0	0	0
1431	DOC-2024-0938	04-0940	3494	\N	\N	\N	96918.36		50103010 (731)	1A1	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1432	DOC-2024-0938	04-0940	3494	\N	\N	\N	20750.52		50103010 (731)	2A1-1	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1433	DOC-2024-0938	04-0940	3494	\N	\N	\N	53652.48		50103010 (731)	2A1-2	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1434	DOC-2024-0938	04-0940	3494	\N	\N	\N	61026.72		50103010 (731)	2A2-A	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1435	DOC-2024-0938	04-0940	3494	\N	\N	\N	58306.08		50103010 (731)	2A2-B	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1436	DOC-2024-0938	04-0940	3494	\N	\N	\N	1800		50103040 (734)	1A1	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1437	DOC-2024-0938	04-0940	3494	\N	\N	\N	400		50103040 (734)	2A1-1	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1438	DOC-2024-0938	04-0940	3494	\N	\N	\N	900		50103040 (734)	2A1-2	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1439	DOC-2024-0938	04-0940	3494	\N	\N	\N	1100		50103040 (734)	2A2-A	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1440	DOC-2024-0938	04-0940	3494	\N	\N	\N	1000		50103040 (734)	2A2-B	122	1	938	2024-04-30 04:48:31	2024-04-30 04:50:03		FAD			1	0	0	FAD	0	0	0
1464	DOC-2024-0962	04-0817	1038	\N	\N	\N	30000		50202020-00	2A1-101	122	1	962	2024-05-02 04:23:21	2024-05-02 04:23:31		FAD			1	0	0	FAD	0	0	0
1408	DOC-2024-0917	04-0786	3061	\N	\N	\N	16123		50202020-00	2A1-AC	122	1	917	2024-04-30 04:13:13	2024-04-30 04:13:23		FAD			1	0	0	FAD	0	0	0
1540	DOC-2024-0998	05-0985	1178	\N	\N	\N	40455		50202020-00	2A1-102	122	1	998	2024-05-08 04:39:29	2024-05-08 04:46:50		FAD			1	0	0	FAD	0	0	0
1510	DOC-2024-0977	05-0956	3483	\N	\N	\N	471931.54		50101010-01	1A1	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1511	DOC-2024-0977	05-0956	3483	\N	\N	\N	88653.01		50101010-01	2A1-1	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1512	DOC-2024-0977	05-0956	3483	\N	\N	\N	249188.32		50101010-01	2A1-2	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1513	DOC-2024-0977	05-0956	3483	\N	\N	\N	611735.32		50101010-01	2A2	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1514	DOC-2024-0977	05-0956	3483	\N	\N	\N	36000		50102010-01	1A1	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1515	DOC-2024-0977	05-0956	3483	\N	\N	\N	8000		50102010-01	2A1-1	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1516	DOC-2024-0977	05-0956	3483	\N	\N	\N	20000		50102010-01	2A1-2	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1517	DOC-2024-0977	05-0956	3483	\N	\N	\N	46000		50102010-01	2A2	122	1	977	2024-05-08 04:28:45	2024-05-08 04:51:19		FAD			1	0	0	FAD	0	0	0
1758	DOC-2024-1169	05-1141	1103	\N	\N	\N	132996.05	f	50202020-00	2A1-104	122	1	1169	2024-05-28 07:10:43	2024-05-28 08:06:28		FAD			1	0	0	FAD	0	0	0
1595	DOC-2024-1044	05-1015	3461	\N	\N	\N	78000		50202010-02	2A2B-101	122	1	1044	2024-05-24 05:18:58	2024-05-24 05:21:33		FAD			1	0	0	FAD	0	0	0
1812	DOC-2024-1200	05-1175	1041	\N	\N	\N	2423695.18	c	50202020-00	2A1-101	122	1	1200	2024-05-28 07:48:34	2024-05-28 07:49:47		FAD			1	0	0	FAD	0	0	0
1743	DOC-2024-1156	05-1128	3302	\N	\N	\N	24614.3	1	50205020-02	1A1	122	1	1156	2024-05-27 10:29:09	2024-05-27 10:37:40		FAD			1	0	0	FAD	0	0	0
1702	DOC-2024-1124	05-1096	1067	\N	\N	\N	6938484.11	c	50202020-00	2A1-103	122	1	1124	2024-05-27 10:04:39	2024-05-27 10:12:35		FAD			1	0	0	FAD	0	0	0
1648	DOC-2024-1085	05-1056	3489	\N	\N	\N	32968	1	50201010-00	1A1	999	1	1085	2024-05-27 08:30:59	2024-05-27 09:34:00		FAD			1	0	0	FAD	0	0	0
1668	DOC-2024-1105	05-1076	3518	\N	\N	\N	11220	j	50202020-00	2A1-106	999	1	1105	2024-05-27 09:44:05	2024-05-27 09:51:06		FAD			1	0	0	FAD	0	0	0
1622	DOC-2024-1065	05-1036	1037	\N	\N	\N	482830	g	50202020-00	2A1-101 (Patriot)	999	1	1065	2024-05-27 08:13:53	2024-05-27 08:17:46		FAD			1	0	0	FAD	0	0	0
1775	DOC-2024-1185	05-1160	3484	\N	\N	\N	49058	v	50202020-00	2A1-AC (PUSH4Science)	122	1	1185	2024-05-28 07:18:41	2024-05-28 07:52:17		FAD			1	0	0	FAD	0	0	0
1777	DOC-2024-1185	05-1160	3484	\N	\N	\N	37426		50202010-02	2A2B-105	122	1	1185	2024-05-28 07:18:41	2024-05-28 07:52:17		FAD			1	0	0	FAD	0	0	0
1851	DOC-2024-1226	05-1201	2928	\N	\N	\N	23000	o	50202020-00	2A1-AC (FAD)	122	1	1226	2024-05-30 09:14:47	2024-05-30 10:04:19		FAD			1	0	0	FAD	0	0	0
1776	DOC-2024-1185	05-1160	3484	\N	\N	\N	4658	t	50202020-00	2A1-AC (Science Camp)	122	1	1185	2024-05-28 07:18:41	2024-05-28 07:52:17		FAD			1	0	0	FAD	0	0	0
1093	DOC-2024-0660	04-0641	3543	\N	\N	\N	22392.52		50202020-00	2A1-AC	999	1	660	2024-04-17 03:07:15	2024-04-17 03:30:19		FAD			1	0	0	FAD	0	0	0
1153	DOC-2024-0714	04-0697	289	\N	\N	\N	124108.49		50202020-00	2A1-104	999	1	714	2024-04-17 04:17:41	2024-04-17 04:33:45		FAD			1	0	0	FAD	0	0	0
1120	DOC-2024-0686	04-0668	2340	\N	\N	\N	13500		50211990-00	PD 997	122	1	686	2024-04-17 04:04:18	2024-04-17 04:41:02		FAD			1	0	0	FAD	0	0	0
1409	DOC-2024-0918	04-0788	3574	\N	\N	\N	75600		50202020-00	2A1-AC	999	1	918	2024-04-30 04:15:09	2024-04-30 04:15:28		FAD			1	0	0	FAD	0	0	0
1465	DOC-2024-0963	04-0782	3483	\N	\N	\N	183632.57		50202020-00	2A1-104	122	1	963	2024-05-02 04:24:19	2024-05-02 04:24:30		FAD			1	0	0	FAD	0	0	0
1427	DOC-2024-0934	04-0936	2604	\N	\N	\N	1813.66		50202020-00	2A1-AC	122	1	934	2024-04-30 04:44:41	2024-04-30 04:50:51		FAD			1	0	0	FAD	0	0	0
1816	DOC-2024-1201	05-1176	1040	\N	\N	\N	858000	e	50202020-00	2A1-101 (RA10612)	122	1	1201	2024-05-28 07:49:20	2024-05-28 07:49:40		FAD			1	0	0	FAD	0	0	0
1188	DOC-2024-0741	04-0724	3403	\N	\N	\N	1970000		50202020-00	2A1-101	122	1	741	2024-04-29 04:24:47	2024-04-29 04:25:12		FAD			1	0	0	FAD	0	0	0
1215	DOC-2024-0768	04-0751	1103	\N	\N	\N	348963.62		50202020-00	2A1-104	122	1	768	2024-04-29 04:42:25	2024-04-29 04:45:07		FAD			1	0	0	FAD	0	0	0
1240	DOC-2024-0791	04-0774	1192	\N	\N	\N	193000		50202020-00	2A1-104	122	1	791	2024-04-29 05:00:44	2024-04-29 05:01:09		FAD			1	0	0	FAD	0	0	0
1270	DOC-2024-0818	04-0807	3566	\N	\N	\N	8709.49		50202020-00	2A1-104	999	1	818	2024-04-29 07:27:36	2024-04-29 07:29:34		FAD			1	0	0	FAD	0	0	0
1291	DOC-2024-0837	04-0832	2751	\N	\N	\N	10961.35		50202020-00	2A1-AC	122	1	837	2024-04-29 07:56:53	2024-04-29 07:59:31		FAD			1	0	0	FAD	0	0	0
1321	DOC-2024-0864	04-0861	2731	\N	\N	\N	18138.6		50101010-01	2A2	122	1	864	2024-04-29 09:33:02	2024-04-29 09:34:16		FAD			1	0	0	FAD	0	0	0
1350	DOC-2024-0886	04-0884	779	\N	\N	\N	29040.41		50202020-00	2A1-104	122	1	886	2024-04-29 10:41:33	2024-04-29 10:44:35		FAD			1	0	0	FAD	0	0	0
1815	DOC-2024-1201	05-1176	1040	\N	\N	\N	6508561.18	c	50202020-00	2A1-101	122	1	1201	2024-05-28 07:49:20	2024-05-28 07:49:40		FAD			1	0	0	FAD	0	0	0
1542	DOC-2024-0999	05-0986	1113	\N	\N	\N	36000		50202020-00	2A1-102	122	1	999	2024-05-08 04:39:58	2024-05-08 04:45:59		FAD			1	0	0	FAD	0	0	0
1888	DOC-2024-1247	05-1222	3577	\N	\N	\N	1732419.9	d	50202020-00	2A1-101	122	1	1247	2024-05-30 10:20:38	2024-05-30 10:31:11		FAD			1	0	0	FAD	0	0	0
1898	DOC-2024-1253	05-1234	1027	\N	\N	\N	56000	f	50202020-00	2A1-101 (RA10612)	122	1	1253	2024-05-30 10:23:22	2024-05-30 10:29:38		FAD			1	0	0	FAD	0	0	0
1571	DOC-2024-1024	\N	2704	\N	\N	\N	100000000		10405990-00	2A1-104	999	0	1024	2024-05-24 04:21:29	\N		FAD			0	0	0	FAD	0	0	0
1518	DOC-2024-0978	05-0957	1190	\N	\N	\N	60000	a	50202020-00	2A1-101	122	1	978	2024-05-08 04:29:28	2024-05-08 04:51:01		FAD			1	0	0	FAD	0	0	0
1623	DOC-2024-1066	05-1037	3589	\N	\N	\N	351365.71	e	50202020-00	2A1-104	999	1	1066	2024-05-27 08:14:43	2024-05-27 08:17:54		FAD			1	0	0	FAD	0	0	0
1759	DOC-2024-1170	05-1142	1103	\N	\N	\N	132996.05	f	50202020-00	2A1-104	122	1	1170	2024-05-28 07:11:09	2024-05-28 08:06:19		FAD			1	0	0	FAD	0	0	0
1831	DOC-2024-1213	05-1188	1103	\N	\N	\N	394146.95	g	50202020-00	2A1-104	122	1	1213	2024-05-28 08:17:17	2024-05-28 08:24:49		FAD			1	0	0	FAD	0	0	0
1596	DOC-2024-1045	05-1016	1188	\N	\N	\N	21801	j	50202020-00	2A1-106	122	1	1045	2024-05-24 05:19:24	2024-05-24 05:21:40		FAD			1	0	0	FAD	0	0	0
1778	DOC-2024-1186	05-1161	3483	\N	\N	\N	15000	v	50202020-00	2A1-AC (PUSH4Science)	122	1	1186	2024-05-28 07:19:21	2024-05-28 07:52:08		FAD			1	0	0	FAD	0	0	0
1720	DOC-2024-1140	05-1112	2713	\N	\N	\N	5250		50202010-02	2A2B-105	122	1	1140	2024-05-27 10:14:48	2024-05-27 10:42:08		FAD			1	0	0	FAD	0	0	0
1817	DOC-2024-1201	05-1176	1040	\N	\N	\N	1064000		50202020-00	2A1-102	122	1	1201	2024-05-28 07:49:20	2024-05-28 07:49:40		FAD			1	0	0	FAD	0	0	0
1897	DOC-2024-1253	05-1234	1027	\N	\N	\N	3970187.08	d	50202020-00	2A1-101	122	1	1253	2024-05-30 10:23:22	2024-05-30 10:29:38		FAD			1	0	0	FAD	0	0	0
1703	DOC-2024-1125	05-1097	1196	\N	\N	\N	8075000	c	50202020-00	2A1-103	122	1	1125	2024-05-27 10:04:57	2024-05-27 10:12:27		FAD			1	0	0	FAD	0	0	0
1669	DOC-2024-1106	05-1077	371	\N	\N	\N	111400	j	50202020-00	2A1-106	999	1	1106	2024-05-27 09:44:31	2024-05-27 09:50:53		FAD			1	0	0	FAD	0	0	0
1915	DOC-2024-1257	05-1243	3494	\N	\N	\N	7037.27		50103010 (731)	2A2-A	122	1	1257	2024-05-30 10:28:32	2024-05-30 10:28:44		FAD			1	0	0	FAD	0	0	0
1744	DOC-2024-1157	05-1129	3377	\N	\N	\N	28800	n	50202020-00	2A1-AC (POSTER)	122	1	1157	2024-05-27 10:29:23	2024-05-27 10:37:29		FAD			1	0	0	FAD	0	0	0
1896	DOC-2024-1252	05-1230	3518	\N	\N	\N	19239	p	50202020-00	2A1-AC (HR)	122	1	1252	2024-05-30 10:22:40	2024-05-30 10:30:03		FAD			1	0	0	FAD	0	0	0
1902	DOC-2024-1254	05-1235	1196	\N	\N	\N	16270000		50202020-00	2A1-102	122	1	1254	2024-05-30 10:24:05	2024-05-30 10:29:24		FAD			1	0	0	FAD	0	0	0
1899	DOC-2024-1253	05-1234	1027	\N	\N	\N	8334000		50202020-00	2A1-102	122	1	1253	2024-05-30 10:23:22	2024-05-30 10:29:38		FAD			1	0	0	FAD	0	0	0
1892	DOC-2024-1248	05-1223	1111	\N	\N	\N	610000		50202020-00	2A1-102	122	1	1248	2024-05-30 10:21:11	2024-05-30 10:30:49		FAD			1	0	0	FAD	0	0	0
1864	DOC-2024-1238	05-1213	3498	\N	\N	\N	200		50103020 (732)	2A2-A	122	1	1238	2024-05-30 09:49:32	2024-05-30 09:56:02		FAD			1	0	0	FAD	0	0	0
1865	DOC-2024-1238	05-1213	3498	\N	\N	\N	200		50103020 (732)	2A2-B	122	1	1238	2024-05-30 09:49:32	2024-05-30 09:56:02		FAD			1	0	0	FAD	0	0	0
1870	DOC-2024-1239	05-1214	3279	\N	\N	\N	12930.11		50103030 (733)	2A2-B	122	1	1239	2024-05-30 09:51:03	2024-05-30 09:55:47		FAD			1	0	0	FAD	0	0	0
1649	DOC-2024-1086	05-1057	2709	\N	\N	\N	2000	1	50205020-01	1A1	999	1	1086	2024-05-27 08:31:28	2024-05-27 09:33:51		FAD			1	0	0	FAD	0	0	0
1541	DOC-2024-0999	05-0986	1113	\N	\N	\N	120455	a	50202020-00	2A1-101	122	1	999	2024-05-08 04:39:58	2024-05-08 04:45:59		FAD			1	0	0	FAD	0	0	0
1901	DOC-2024-1254	05-1235	1196	\N	\N	\N	160000	f	50202020-00	2A1-101 (RA10612)	122	1	1254	2024-05-30 10:24:05	2024-05-30 10:29:24		FAD			1	0	0	FAD	0	0	0
1564	DOC-2024-1019	05-0999	3483	\N	\N	\N	192067.56	a	50202020-00	2A1-101	122	1	1019	2024-05-13 08:35:42	2024-05-13 08:38:15		FAD			1	0	0	FAD	0	0	0
1094	DOC-2024-0661	04-0642	2925	\N	\N	\N	149000		50202020-00	2A1-AC	999	1	661	2024-04-17 03:08:24	2024-04-17 03:30:06		FAD			1	0	0	FAD	0	0	0
968	DOC-2024-0568	03-0573	1046	\N	\N	\N	179080		50202020-00	2A1-101	122	1	568	2024-04-01 05:04:15	2024-04-01 07:46:29		FAD			1	0	0	FAD	0	0	0
969	DOC-2024-0569	03-0575	1034	\N	\N	\N	129060		50202020-00	2A1-101	122	1	569	2024-04-01 05:04:49	2024-04-01 07:46:34		FAD			1	0	0	FAD	0	0	0
970	DOC-2024-0570	03-0576	1040	\N	\N	\N	822860		50202020-00	2A1-101	122	1	570	2024-04-01 05:05:08	2024-04-01 07:46:40		FAD			1	0	0	FAD	0	0	0
971	DOC-2024-0571	03-0577	1091	\N	\N	\N	420660		50202020-00	2A1-101	122	1	571	2024-04-01 05:05:43	2024-04-01 07:46:49		FAD			1	0	0	FAD	0	0	0
972	DOC-2024-0571	03-0577	1091	\N	\N	\N	560000		50202020-00	2A1-102	122	1	571	2024-04-01 05:05:43	2024-04-01 07:46:49		FAD			1	0	0	FAD	0	0	0
973	DOC-2024-0572	03-0578	3483	\N	\N	\N	37380		50202020-00	2A1-101	122	1	572	2024-04-01 05:08:53	2024-04-01 07:46:56		FAD			1	0	0	FAD	0	0	0
974	DOC-2024-0573	03-0579	3483	\N	\N	\N	118560		50202020-00	2A1-101	122	1	573	2024-04-01 05:09:11	2024-04-01 07:47:01		FAD			1	0	0	FAD	0	0	0
975	DOC-2024-0574	03-0580	126	\N	\N	\N	181227.97		50202020-00	2A1-106	122	1	574	2024-04-01 05:09:33	2024-04-01 07:47:05		FAD			1	0	0	FAD	0	0	0
976	DOC-2024-0575	03-0581	3501	\N	\N	\N	250431.75		50202020-00	2A1-106	122	1	575	2024-04-01 05:10:40	2024-04-01 07:47:14		FAD			1	0	0	FAD	0	0	0
977	DOC-2024-0576	03-0582	840	\N	\N	\N	162357.99		50202020-00	2A1-106	122	1	576	2024-04-01 05:11:03	2024-04-01 07:47:23		FAD			1	0	0	FAD	0	0	0
978	DOC-2024-0577	03-0583	909	\N	\N	\N	28012.5		50202020-00	2A1-106	122	1	577	2024-04-01 05:11:24	2024-04-01 07:47:39		FAD			1	0	0	FAD	0	0	0
979	DOC-2024-0578	03-0584	2713	\N	\N	\N	3600		50202010-02	2A2B-106	122	1	578	2024-04-01 05:11:45	2024-04-01 07:47:43		FAD			1	0	0	FAD	0	0	0
980	DOC-2024-0579	03-0585	2737	\N	\N	\N	3600		50202010-02	2A2B-106	122	1	579	2024-04-01 05:12:07	2024-04-01 07:47:47		FAD			1	0	0	FAD	0	0	0
992	DOC-2024-0591	03-0455	3483	\N	\N	\N	3448595.29		50202020-00	2A1-104	122	1	591	2024-04-01 08:00:11	2024-04-01 08:00:39		FAD			1	0	0	FAD	0	0	0
993	DOC-2024-0591	03-0455	3483	\N	\N	\N	593790.14		50202020-00	2A1-103	122	1	591	2024-04-01 08:00:11	2024-04-01 08:00:39		FAD			1	0	0	FAD	0	0	0
996	DOC-2024-0594	03-0468	3167	\N	\N	\N	201861.41		50204020-00	1A1	122	1	594	2024-04-01 08:02:17	2024-04-01 08:02:34		FAD			1	0	0	FAD	0	0	0
997	DOC-2024-0595	03-0474	3241	\N	\N	\N	70000		50202020-00	2A1-101	122	1	595	2024-04-01 08:05:53	2024-04-01 08:06:44		FAD			1	0	0	FAD	0	0	0
998	DOC-2024-0596	03-0475	3483	\N	\N	\N	342205		50202020-00	2A1-101	122	1	596	2024-04-01 08:06:10	2024-04-01 08:06:49		FAD			1	0	0	FAD	0	0	0
960	DOC-2024-0566	03-0571	3494	\N	\N	\N	900		50103040 (734)	2A1-2	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
961	DOC-2024-0566	03-0571	3494	\N	\N	\N	1100		50103040 (734)	2A2-A	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
962	DOC-2024-0566	03-0571	3494	\N	\N	\N	1000		50103040 (734)	2A2-B	122	1	566	2024-04-01 05:02:29	2024-04-01 07:45:59		FAD			1	0	0	FAD	0	0	0
1020	DOC-2024-0616	03-0607	3536	\N	\N	\N	29232		50202020-00	2A1-101	122	1	616	2024-04-05 09:57:38	2024-04-05 09:59:52		FAD			1	0	0	FAD	0	0	0
994	DOC-2024-0592	03-0456	2727	\N	\N	\N	20000		50202020-00	2A1-AC (FAD)	122	1	592	2024-04-01 08:00:28	2024-04-01 08:00:46		FAD			1	0	0	FAD	0	0	0
1154	DOC-2024-0715	04-0698	3554	\N	\N	\N	18063.52		50202020-00	2A1-AC (HR)	999	1	715	2024-04-17 04:18:37	2024-04-17 04:33:37		FAD			1	0	0	FAD	0	0	0
1121	DOC-2024-0687	04-0669	462	\N	\N	\N	12000		50211990-00	PD 997	122	1	687	2024-04-17 04:04:48	2024-04-17 04:40:48		FAD			1	0	0	FAD	0	0	0
1189	DOC-2024-0742	04-0725	1021	\N	\N	\N	695090.74		50202020-00	2A1-103	122	1	742	2024-04-29 04:25:40	2024-04-29 04:27:13		FAD			1	0	0	FAD	0	0	0
1216	DOC-2024-0769	04-0752	3483	\N	\N	\N	2360000		50202020-00	2A1-103	122	1	769	2024-04-29 04:42:42	2024-04-29 04:45:14		FAD			1	0	0	FAD	0	0	0
1241	DOC-2024-0792	04-0775	3483	\N	\N	\N	9000		50202020-00	2A1-AC	122	1	792	2024-04-29 05:01:00	2024-04-29 05:01:18		FAD			1	0	0	FAD	0	0	0
1271	DOC-2024-0819	04-0809	136	\N	\N	\N	37507.04		50202020-00	2A1-104	999	1	819	2024-04-29 07:27:57	2024-04-29 07:29:55		FAD			1	0	0	FAD	0	0	0
1297	DOC-2024-0841	04-0836	1027	\N	\N	\N	6812210		50202020-00	2A1-103	122	1	841	2024-04-29 08:05:59	2024-04-29 08:09:10		FAD			1	0	0	FAD	0	0	0
1322	DOC-2024-0865	04-0862	2762	\N	\N	\N	18767.83		50101010-01	2A2	122	1	865	2024-04-29 09:36:38	2024-04-29 09:38:03		FAD			1	0	0	FAD	0	0	0
1351	DOC-2024-0887	04-0885	3483	\N	\N	\N	5860000		50202020-00	2A1-101	122	1	887	2024-04-29 10:41:56	2024-04-29 10:44:47		FAD			1	0	0	FAD	0	0	0
1410	DOC-2024-0919	04-0789	2857	\N	\N	\N	65100		50202020-00	2A1-AC	122	1	919	2024-04-30 04:16:14	2024-04-30 04:16:22		FAD			1	0	0	FAD	0	0	0
1443	DOC-2024-0941	04-0929	3578	\N	\N	\N	15000		50202020-00	2A1-AC	999	1	941	2024-05-02 04:00:33	2024-05-02 04:01:27		FAD			1	0	0	FAD	0	0	0
1466	DOC-2024-0964	04-0719	3471	\N	\N	\N	1173400		50202020-00	2A1-101	122	1	964	2024-05-02 04:26:17	2024-05-02 04:32:55		FAD			1	0	0	FAD	0	0	0
1543	DOC-2024-1000	05-0987	3483	\N	\N	\N	10154500		50202020-00	2A1-102	122	1	1000	2024-05-08 04:40:20	2024-05-08 04:45:45		FAD			1	0	0	FAD	0	0	0
1519	DOC-2024-0979	05-0958	1109	\N	\N	\N	20455	a	50202020-00	2A1-101	122	1	979	2024-05-08 04:29:47	2024-05-08 04:50:48		FAD			1	0	0	FAD	0	0	0
1670	DOC-2024-1107	05-1078	108	\N	\N	\N	54000	j	50202020-00	2A1-106	999	1	1107	2024-05-27 09:45:03	2024-05-27 09:50:43		FAD			1	0	0	FAD	0	0	0
1565	DOC-2024-1020	05-1000	3483	\N	\N	\N	2470000	d	50202020-00	2A1-104	122	1	1020	2024-05-13 08:36:10	2024-05-13 08:38:29		FAD			1	0	0	FAD	0	0	0
1597	DOC-2024-1046	05-1017	2726	\N	\N	\N	30000	p	50202020-00	2A1-AC (HR)	122	1	1046	2024-05-24 05:19:53	2024-05-24 05:21:48		FAD			1	0	0	FAD	0	0	0
1650	DOC-2024-1087	05-1058	3117	\N	\N	\N	11100		50202010-02	2A2B-105	122	1	1087	2024-05-27 08:32:17	2024-05-27 09:33:43		FAD			1	0	0	FAD	0	0	0
1572	DOC-2024-1025	05-0945	2740	\N	\N	\N	78957.69	u	50202020-00	2A1-AC (NULAB)	122	1	1025	2024-05-24 05:03:21	2024-05-24 05:03:59		FAD			1	0	0	FAD	0	0	0
1745	DOC-2024-1158	05-1130	675	\N	\N	\N	114000	j	50202020-00	2A1-106	122	1	1158	2024-05-27 10:29:46	2024-05-27 10:37:20		FAD			1	0	0	FAD	0	0	0
1721	DOC-2024-1141	05-1113	1819	\N	\N	\N	5250		50202010-02	2A2B-105	122	1	1141	2024-05-27 10:15:13	2024-05-27 10:42:00		FAD			1	0	0	FAD	0	0	0
1890	DOC-2024-1247	05-1222	3577	\N	\N	\N	204000		50202020-00	2A1-102	122	1	1247	2024-05-30 10:20:38	2024-05-30 10:31:11		FAD			1	0	0	FAD	0	0	0
1945	DOC-2024-1283	05-1154	2879	\N	\N	\N	10000	t	50202020-00	2A1-AC (Science Camp)	122	1	1283	2024-06-03 09:36:50	2024-06-03 09:37:29		FAD			1	0	0	FAD	0	0	0
1889	DOC-2024-1247	05-1222	3577	\N	\N	\N	98000	f	50202020-00	2A1-101 (RA10612)	122	1	1247	2024-05-30 10:20:38	2024-05-30 10:31:11		FAD			1	0	0	FAD	0	0	0
1948	DOC-2024-1286	05-1031	1106	\N	\N	\N	255120	i	50202020-00	2A1-105	122	1	1286	2024-06-03 09:44:21	2024-06-03 09:44:28		FAD			1	0	0	FAD	0	0	0
1929	DOC-2024-1268	05-1254	1042	\N	\N	\N	628000	f	50202020-00	2A1-101 (RA10612)	999	1	1268	2024-06-03 09:02:57	2024-06-03 09:15:09		FAD			1	0	0	FAD	0	0	0
1941	DOC-2024-1279	05-1265	3595	\N	\N	\N	1950	m	50202020-00	2A1-AC (Scholar Grad)	999	1	1279	2024-06-03 09:12:40	2024-06-03 09:13:11		FAD			1	0	0	FAD	0	0	0
1943	DOC-2024-1281	05-1205	3483	\N	\N	\N	743000	c	50202020-00	2A1-101	122	1	1281	2024-06-03 09:18:38	2024-06-03 09:18:46		FAD			1	0	0	FAD	0	0	0
1918	DOC-2024-1259	05-1245	3483	\N	\N	\N	526137.58	d	50202020-00	2A1-101	999	1	1259	2024-06-03 08:57:02	2024-06-03 09:16:38		FAD			1	0	0	FAD	0	0	0
1921	DOC-2024-1261	05-1247	2857	\N	\N	\N	3600	d	50202020-00	2A1-101	999	1	1261	2024-06-03 08:57:49	2024-06-03 09:16:20		FAD			1	0	0	FAD	0	0	0
1931	DOC-2024-1269	05-1255	1196	\N	\N	\N	834500	d	50202020-00	2A1-101	999	1	1269	2024-06-03 09:07:37	2024-06-03 09:15:01		FAD			1	0	0	FAD	0	0	0
1930	DOC-2024-1268	05-1254	1042	\N	\N	\N	1812000		50202020-00	2A1-102	999	1	1268	2024-06-03 09:02:57	2024-06-03 09:15:09		FAD			1	0	0	FAD	0	0	0
1937	DOC-2024-1275	05-1261	2989	\N	\N	\N	393995.06	p	50202020-00	2A1-AC (HR)	999	1	1275	2024-06-03 09:10:31	2024-06-03 09:13:40		FAD			1	0	0	FAD	0	0	0
1944	DOC-2024-1282	05-1153	1156	\N	\N	\N	105860	i	50202020-00	2A1-105	122	1	1282	2024-06-03 09:36:23	2024-06-03 09:37:37		FAD			1	0	0	FAD	0	0	0
1946	DOC-2024-1284	05-1155	2714	\N	\N	\N	3828	r	50202020-00	2A1-AC (StratCom)	122	1	1284	2024-06-03 09:37:06	2024-06-03 09:37:20		FAD			1	0	0	FAD	0	0	0
1932	DOC-2024-1270	05-1256	1045	\N	\N	\N	421800	d	50202020-00	2A1-101	999	1	1270	2024-06-03 09:08:02	2024-06-03 09:14:23		FAD			1	0	0	FAD	0	0	0
1917	DOC-2024-1258	05-1244	3594	\N	\N	\N	54000	j	50202020-00	2A1-106	999	1	1258	2024-06-03 08:56:32	2024-06-03 09:16:47		FAD			1	0	0	FAD	0	0	0
1938	DOC-2024-1276	05-1262	1190	\N	\N	\N	60000	f	50202020-00	2A1-101 (RA10612)	999	1	1276	2024-06-03 09:11:02	2024-06-03 09:13:32		FAD			1	0	0	FAD	0	0	0
1928	DOC-2024-1268	05-1254	1042	\N	\N	\N	4833695.18	d	50202020-00	2A1-101	999	1	1268	2024-06-03 09:02:57	2024-06-03 09:15:09		FAD			1	0	0	FAD	0	0	0
1926	DOC-2024-1266	05-1252	2942	\N	\N	\N	39768	k	50202020-00	2A1-AC (GAD)	999	1	1266	2024-06-03 09:00:42	2024-06-03 09:15:23		FAD			1	0	0	FAD	0	0	0
1939	DOC-2024-1277	05-1263	3483	\N	\N	\N	6750	m	50202020-00	2A1-AC (Scholar Grad)	999	1	1277	2024-06-03 09:11:23	2024-06-03 09:13:25		FAD			1	0	0	FAD	0	0	0
1919	DOC-2024-1259	05-1245	3483	\N	\N	\N	291846		50202020-00	2A1-102	999	1	1259	2024-06-03 08:57:02	2024-06-03 09:16:38		FAD			1	0	0	FAD	0	0	0
1940	DOC-2024-1278	05-1264	2752	\N	\N	\N	350	m	50202020-00	2A1-AC (Scholar Grad)	999	1	1278	2024-06-03 09:12:03	2024-06-03 09:13:18		FAD			1	0	0	FAD	0	0	0
1920	DOC-2024-1260	05-1246	1130	\N	\N	\N	965000	h	50202020-00	2A1-104	999	1	1260	2024-06-03 08:57:25	2024-06-03 09:16:28		FAD			1	0	0	FAD	0	0	0
1942	DOC-2024-1280	05-1224	1086	\N	\N	\N	95630	g	50202020-00	2A1-101 (Patriot)	122	1	1280	2024-06-03 09:17:47	2024-06-03 09:17:55		FAD			1	0	0	FAD	0	0	0
1922	DOC-2024-1262	05-1248	1203	\N	\N	\N	6712000	h	50202020-00	2A1-104	999	1	1262	2024-06-03 08:58:11	2024-06-03 09:16:12		FAD			1	0	0	FAD	0	0	0
1933	DOC-2024-1271	05-1257	1074	\N	\N	\N	858400	d	50202020-00	2A1-101	999	1	1271	2024-06-03 09:08:33	2024-06-03 09:14:14		FAD			1	0	0	FAD	0	0	0
1866	DOC-2024-1239	05-1214	3279	\N	\N	\N	19413.27		50103030 (733)	1A1	122	1	1239	2024-05-30 09:51:03	2024-05-30 09:55:47		FAD			1	0	0	FAD	0	0	0
1923	DOC-2024-1263	05-1249	1060	\N	\N	\N	5900000	h	50202020-00	2A1-104	999	1	1263	2024-06-03 08:58:49	2024-06-03 09:15:49		FAD			1	0	0	FAD	0	0	0
1719	DOC-2024-1139	05-1111	1089	\N	\N	\N	6100	1	50213060-01	1A1	122	1	1139	2024-05-27 10:14:26	2024-05-27 10:42:18		FAD			1	0	0	FAD	0	0	0
1924	DOC-2024-1264	05-1250	1124	\N	\N	\N	579000	h	50202020-00	2A1-104	999	1	1264	2024-06-03 08:59:55	2024-06-03 09:15:39		FAD			1	0	0	FAD	0	0	0
1925	DOC-2024-1265	05-1251	1155	\N	\N	\N	193000	h	50202020-00	2A1-104	999	1	1265	2024-06-03 09:00:21	2024-06-03 09:15:31		FAD			1	0	0	FAD	0	0	0
1927	DOC-2024-1267	05-1253	1203	\N	\N	\N	3136000	h	50202020-00	2A1-104	999	1	1267	2024-06-03 09:01:06	2024-06-03 09:15:16		FAD			1	0	0	FAD	0	0	0
1947	DOC-2024-1285	05-1089	2785	\N	\N	\N	8296125	t	50202020-00	2A1-AC (Science Camp)	122	1	1285	2024-06-03 09:42:57	2024-06-03 09:43:09		FAD			1	0	0	FAD	0	0	0
1934	DOC-2024-1272	05-1258	1046	\N	\N	\N	2375000	d	50202020-00	2A1-101	999	1	1272	2024-06-03 09:08:57	2024-06-03 09:14:06		FAD			1	0	0	FAD	0	0	0
1935	DOC-2024-1273	05-1259	1043	\N	\N	\N	613300	d	50202020-00	2A1-101	999	1	1273	2024-06-03 09:09:28	2024-06-03 09:13:59		FAD			1	0	0	FAD	0	0	0
1936	DOC-2024-1274	05-1260	1040	\N	\N	\N	978050	d	50202020-00	2A1-101	999	1	1274	2024-06-03 09:09:53	2024-06-03 09:13:52		FAD			1	0	0	FAD	0	0	0
1957	DOC-2024-1287	05-0949	2766	\N	\N	\N	6800		50203990-00	2A2	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1958	DOC-2024-1287	05-0949	2766	\N	\N	\N	790		50205020-01	2A2	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1959	DOC-2024-1288	05-1228	2717	\N	\N	\N	29541.68		50202010-02	2A2B-105	122	1	1288	2024-06-10 10:13:07	2024-06-10 10:14:22		FAD			1	0	0	FAD	0	0	0
1960	DOC-2024-1289	05-1229	3483	\N	\N	\N	555413.79		50202010-02	2A2B-106	122	1	1289	2024-06-10 10:13:40	2024-06-10 10:14:31		FAD			1	0	0	FAD	0	0	0
1964	DOC-2024-1291	05-1232	1122	\N	\N	\N	2516000		50202020-00	2A1-102	122	1	1291	2024-06-10 10:16:23	2024-06-10 10:16:40		FAD			1	0	0	FAD	0	0	0
1962	DOC-2024-1291	05-1232	1122	\N	\N	\N	5378171.28	d	50202020-00	2A1-101	122	1	1291	2024-06-10 10:16:23	2024-06-10 10:16:40		FAD			1	0	0	FAD	0	0	0
1967	DOC-2024-1293	05-1238	940	\N	\N	\N	18000		50203010-02	PD 997	122	1	1293	2024-06-10 10:18:34	2024-06-10 10:18:42		FAD			1	0	0	FAD	0	0	0
1968	DOC-2024-1294	05-1239	3084	\N	\N	\N	16800		50202020-00	2A2B-105	122	1	1294	2024-06-10 10:19:12	2024-06-10 10:20:05		FAD			1	0	0	FAD	0	0	0
1970	DOC-2024-1296	05-1241	2857	\N	\N	\N	13335		50202010-02	2A2B-106	122	1	1296	2024-06-10 10:19:55	2024-06-10 10:20:20		FAD			1	0	0	FAD	0	0	0
1798	DOC-2024-1195	05-1170	1047	\N	\N	\N	180000	e	50202020-00	2A1-101 (RA10612)	122	1	1195	2024-05-28 07:38:08	2024-05-28 07:50:37		FAD			1	0	0	FAD	0	0	0
1973	DOC-2024-1298	05-1174	2857	\N	\N	\N	20280	q	50202020-00	2A1-AC (Planning)	122	1	1298	2024-06-11 05:13:12	2024-06-11 05:13:36		FAD			1	0	0	FAD	0	0	0
1972	DOC-2024-1297	05-1233	3483	\N	\N	\N	141634.32		50202020-00	2A1-102	122	1	1297	2024-06-10 10:21:05	2024-06-10 10:21:14		FAD			1	0	0	FAD	0	0	0
1969	DOC-2024-1295	05-1240	2857	\N	\N	\N	46450		50202010-02	2A2B-106	122	1	1295	2024-06-10 10:19:33	2024-06-10 10:20:12		FAD			1	0	0	FAD	0	0	0
1950	DOC-2024-1287	05-0949	2766	\N	\N	\N	17769	1	50201010-00	1A1	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1953	DOC-2024-1287	05-0949	2766	\N	\N	\N	7140	1	50205020-01	1A1	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1949	DOC-2024-1287	05-0949	2766	\N	\N	\N	5704	1	50203090-00	1A1	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1951	DOC-2024-1287	05-0949	2766	\N	\N	\N	19738.8	1	50213060-01	1A1	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1952	DOC-2024-1287	05-0949	2766	\N	\N	\N	6300	1	50211990-00	1A1	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1954	DOC-2024-1287	05-0949	2766	\N	\N	\N	14400	b	50203990-00	2A1-1	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1631	DOC-2024-1072	05-1043	3483	\N	\N	\N	540015.46	c	50202020-00	2A1-103	122	1	1072	2024-05-27 08:20:06	2024-05-27 08:24:27		FAD			1	0	0	FAD	0	0	0
1624	DOC-2024-1067	05-1038	3590	\N	\N	\N	240463.5	e	50202020-00	2A1-104	999	1	1067	2024-05-27 08:15:25	2024-05-27 08:18:01		FAD			1	0	0	FAD	0	0	0
1956	DOC-2024-1287	05-0949	2766	\N	\N	\N	8755	p	50202020-00	2A1-AC (HR)	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1544	DOC-2024-1001	05-0988	3483	\N	\N	\N	3581500	a	50202020-00	2A1-101	122	1	1001	2024-05-08 04:40:36	2024-05-08 04:45:31		FAD			1	0	0	FAD	0	0	0
1545	DOC-2024-1002	05-0989	1129	\N	\N	\N	20000	a	50202020-00	2A1-101	122	1	1002	2024-05-08 04:40:52	2024-05-08 04:45:18		FAD			1	0	0	FAD	0	0	0
1791	DOC-2024-1193	05-1168	1037	\N	\N	\N	12416561.18	b	50202020-00	2A1-101	122	1	1193	2024-05-28 07:30:08	2024-05-28 07:50:56		FAD			1	0	0	FAD	0	0	0
1975	DOC-2024-1299	05-1045	1183	\N	\N	\N	2542400		50202020-00	2A1-102	122	1	1299	2024-06-11 05:20:28	2024-06-11 05:21:55		FAD			1	0	0	FAD	0	0	0
1532	DOC-2024-0990	05-0976	3582	\N	\N	\N	142584.5	d	50202020-00	2A1-104	999	1	990	2024-05-08 04:35:19	2024-05-08 04:47:18		FAD			1	0	0	FAD	0	0	0
1955	DOC-2024-1287	05-0949	2766	\N	\N	\N	1070	a	50205020-01	2A1-1	122	1	1287	2024-06-06 09:33:30	2024-06-06 09:33:50		FAD			1	0	0	FAD	0	0	0
1704	DOC-2024-1126	05-1098	1184	\N	\N	\N	7986400	c	50202020-00	2A1-103	122	1	1126	2024-05-27 10:05:18	2024-05-27 10:12:13		FAD			1	0	0	FAD	0	0	0
1836	DOC-2024-1217	05-1192	3483	\N	\N	\N	450188.94	c	50202020-00	2A1-103	122	1	1217	2024-05-28 08:21:51	2024-05-28 08:23:56		FAD			1	0	0	FAD	0	0	0
1769	DOC-2024-1180	05-1152	1184	\N	\N	\N	137160	i	50202020-00	2A1-105	122	1	1180	2024-05-28 07:15:17	2024-05-28 08:00:58		FAD			1	0	0	FAD	0	0	0
1961	DOC-2024-1290	05-1231	3483	\N	\N	\N	1578093.5	j	50202020-00	2A1-106	122	1	1290	2024-06-10 10:15:31	2024-06-10 10:16:32		FAD			1	0	0	FAD	0	0	0
1966	DOC-2024-1293	05-1238	940	\N	\N	\N	9000	j	50202020-00	2A1-106	122	1	1293	2024-06-10 10:18:34	2024-06-10 10:18:42		FAD			1	0	0	FAD	0	0	0
1566	DOC-2024-1021	05-1001	1091	\N	\N	\N	645259	a	50202020-00	2A1-101	122	1	1021	2024-05-13 08:37:03	2024-05-13 08:38:38		FAD			1	0	0	FAD	0	0	0
1974	DOC-2024-1299	05-1045	1183	\N	\N	\N	780684	a	50202020-00	2A1-101	122	1	1299	2024-06-11 05:20:28	2024-06-11 05:21:55		FAD			1	0	0	FAD	0	0	0
1842	DOC-2024-1223	05-1198	1044	\N	\N	\N	4911695.18	c	50202020-00	2A1-101	122	1	1223	2024-05-30 09:12:43	2024-05-30 10:05:16		FAD			1	0	0	FAD	0	0	0
1845	DOC-2024-1224	05-1199	1043	\N	\N	\N	5336561.18	c	50202020-00	2A1-101	122	1	1224	2024-05-30 09:13:33	2024-05-30 10:05:07		FAD			1	0	0	FAD	0	0	0
1848	DOC-2024-1225	05-1200	1045	\N	\N	\N	2980287.18	c	50202020-00	2A1-101	122	1	1225	2024-05-30 09:14:22	2024-05-30 10:04:45		FAD			1	0	0	FAD	0	0	0
1971	DOC-2024-1297	05-1233	3483	\N	\N	\N	31282.3	c	50202020-00	2A1-101	122	1	1297	2024-06-10 10:21:05	2024-06-10 10:21:14		FAD			1	0	0	FAD	0	0	0
1900	DOC-2024-1254	05-1235	1196	\N	\N	\N	8526673.28	d	50202020-00	2A1-101	122	1	1254	2024-05-30 10:24:05	2024-05-30 10:29:24		FAD			1	0	0	FAD	0	0	0
1813	DOC-2024-1200	05-1175	1041	\N	\N	\N	228000	e	50202020-00	2A1-101 (RA10612)	122	1	1200	2024-05-28 07:48:34	2024-05-28 07:49:47		FAD			1	0	0	FAD	0	0	0
1963	DOC-2024-1291	05-1232	1122	\N	\N	\N	432000	e	50202020-00	2A1-101 (RA10612)	122	1	1291	2024-06-10 10:16:23	2024-06-10 10:16:40		FAD			1	0	0	FAD	0	0	0
1732	DOC-2024-1150	05-1122	61	\N	\N	\N	208491.16	f	50202020-00	2A1-104	122	1	1150	2024-05-27 10:19:58	2024-05-27 10:38:33		FAD			1	0	0	FAD	0	0	0
1751	DOC-2024-1164	05-1136	233	\N	\N	\N	76759.2	f	50202020-00	2A1-104	122	1	1164	2024-05-27 10:31:30	2024-05-27 10:36:34		FAD			1	0	0	FAD	0	0	0
1753	DOC-2024-1166	05-1138	242	\N	\N	\N	18512.55	f	50202020-00	2A1-104	122	1	1166	2024-05-27 10:32:08	2024-05-27 10:36:22		FAD			1	0	0	FAD	0	0	0
1760	DOC-2024-1171	05-1143	1103	\N	\N	\N	132996.05	f	50202020-00	2A1-104	122	1	1171	2024-05-28 07:11:49	2024-05-28 08:06:08		FAD			1	0	0	FAD	0	0	0
1763	DOC-2024-1174	05-1146	633	\N	\N	\N	9828.22	g	50202020-00	2A1-104	122	1	1174	2024-05-28 07:12:56	2024-05-28 08:01:55		FAD			1	0	0	FAD	0	0	0
1764	DOC-2024-1175	05-1147	454	\N	\N	\N	54000	g	50202020-00	2A1-104	122	1	1175	2024-05-28 07:13:14	2024-05-28 08:01:45		FAD			1	0	0	FAD	0	0	0
1765	DOC-2024-1176	05-1148	2333	\N	\N	\N	90000	g	50202020-00	2A1-104	122	1	1176	2024-05-28 07:13:39	2024-05-28 08:01:34		FAD			1	0	0	FAD	0	0	0
1820	DOC-2024-1204	05-1179	2560	\N	\N	\N	326514.73	g	50202020-00	2A1-104	122	1	1204	2024-05-28 08:08:05	2024-05-28 08:26:34		FAD			1	0	0	FAD	0	0	0
1830	DOC-2024-1212	05-1187	1103	\N	\N	\N	2138.24	g	50202020-00	2A1-104	122	1	1212	2024-05-28 08:16:58	2024-05-28 08:24:58		FAD			1	0	0	FAD	0	0	0
1835	DOC-2024-1217	05-1192	3483	\N	\N	\N	2959877.18	g	50202020-00	2A1-104	122	1	1217	2024-05-28 08:21:51	2024-05-28 08:23:56		FAD			1	0	0	FAD	0	0	0
1838	DOC-2024-1219	05-1194	186	\N	\N	\N	150000	g	50202020-00	2A1-104	122	1	1219	2024-05-28 08:22:50	2024-05-28 08:23:42		FAD			1	0	0	FAD	0	0	0
1841	DOC-2024-1222	05-1197	1122	\N	\N	\N	896168	g	50202020-00	2A1-104	122	1	1222	2024-05-30 09:11:40	2024-05-30 10:05:31		FAD			1	0	0	FAD	0	0	0
1852	DOC-2024-1227	05-1202	738	\N	\N	\N	220452.66	g	50202020-00	2A1-104	122	1	1227	2024-05-30 09:15:07	2024-05-30 10:03:50		FAD			1	0	0	FAD	0	0	0
1859	DOC-2024-1234	05-1209	3483	\N	\N	\N	379790	g	50202020-00	2A1-104	122	1	1234	2024-05-30 09:47:37	2024-05-30 09:56:42		FAD			1	0	0	FAD	0	0	0
1887	DOC-2024-1246	05-1221	1130	\N	\N	\N	380649.73	g	50202020-00	2A1-104	122	1	1246	2024-05-30 10:19:46	2024-05-30 10:31:18		FAD			1	0	0	FAD	0	0	0
1903	DOC-2024-1255	05-1236	1004	\N	\N	\N	324272.32	h	50202020-00	2A1-104	122	1	1255	2024-05-30 10:24:24	2024-05-30 10:29:15		FAD			1	0	0	FAD	0	0	0
1965	DOC-2024-1292	05-1237	430	\N	\N	\N	157115.7	h	50202020-00	2A1-104	122	1	1292	2024-06-10 10:17:33	2024-06-10 10:17:42		FAD			1	0	0	FAD	0	0	0
1677	DOC-2024-1114	05-1085	1121	\N	\N	\N	1324000	e	50202020-00	2A1-104	999	1	1114	2024-05-27 09:47:44	2024-05-27 09:49:30		FAD			1	0	0	FAD	0	0	0
1680	DOC-2024-1117	05-1088	1124	\N	\N	\N	1680000	e	50202020-00	2A1-104	999	1	1117	2024-05-27 09:48:50	2024-05-27 09:49:08		FAD			1	0	0	FAD	0	0	0
1701	DOC-2024-1123	05-1095	3520	\N	\N	\N	36374.4	f	50202020-00	2A1-104	122	1	1123	2024-05-27 10:04:07	2024-05-27 10:12:42		FAD			1	0	0	FAD	0	0	0
2003	DOC-2024-1311	06-1278	1021	\N	\N	\N	2022866		50202020-00	2A1-101	999	1	1311	2024-06-18 04:33:56	2024-06-18 07:41:24		FAD			1	0	0	FAD	0	0	0
2001	DOC-2024-1309	06-1276	1119	\N	\N	\N	2042000		50202020-00	2A1-105	999	1	1309	2024-06-18 04:32:45	2024-06-18 07:42:24		FAD			1	0	0	FAD	0	0	0
2000	DOC-2024-1308	06-1275	2712	\N	\N	\N	1200		50202020-00	2A1-101	999	1	1308	2024-06-18 04:32:27	2024-06-18 07:42:43		FAD			1	0	0	FAD	0	0	0
1999	DOC-2024-1307	06-1274	1034	\N	\N	\N	523375		50202020-00	2A1-101	999	1	1307	2024-06-18 04:32:12	2024-06-18 07:43:01		FAD			1	0	0	FAD	0	0	0
2002	DOC-2024-1310	06-1277	1067	\N	\N	\N	2550000		50202020-00	2A1-103	999	1	1310	2024-06-18 04:33:03	2024-06-18 07:42:11		FAD			1	0	0	FAD	0	0	0
1998	DOC-2024-1306	06-1272	3596	\N	\N	\N	3000		50202020-00	2A1-AC (POSTER)	999	1	1306	2024-06-18 04:31:45	2024-06-18 07:43:16		FAD			1	0	0	FAD	0	0	0
1997	DOC-2024-1305	06-1271	3201	\N	\N	\N	72000		50202010-01	1A1	122	1	1305	2024-06-18 04:31:07	2024-06-18 07:43:26		FAD			1	0	0	FAD	0	0	0
1996	DOC-2024-1304	06-1270	1178	\N	\N	\N	21519.2		50202020-00	2A1-101	122	1	1304	2024-06-18 04:30:51	2024-06-18 07:43:40		FAD			1	0	0	FAD	0	0	0
1992	DOC-2024-1303	06-1269	3483	\N	\N	\N	100846.5		50101010-01	1A1	122	1	1303	2024-06-18 04:30:29	2024-06-18 07:44:02		FAD			1	0	0	FAD	0	0	0
1993	DOC-2024-1303	06-1269	3483	\N	\N	\N	28096		50101010-01	2A1-1	122	1	1303	2024-06-18 04:30:29	2024-06-18 07:44:02		FAD			1	0	0	FAD	0	0	0
1988	DOC-2024-1302	06-1268	3483	\N	\N	\N	100846.5		50101010-01	1A1	122	1	1302	2024-06-18 04:29:38	2024-06-18 07:44:11		FAD			1	0	0	FAD	0	0	0
1989	DOC-2024-1302	06-1268	3483	\N	\N	\N	28096		50101010-01	2A1-1	122	1	1302	2024-06-18 04:29:38	2024-06-18 07:44:11		FAD			1	0	0	FAD	0	0	0
1990	DOC-2024-1302	06-1268	3483	\N	\N	\N	75914.75		50101010-01	2A1-2	122	1	1302	2024-06-18 04:29:38	2024-06-18 07:44:11		FAD			1	0	0	FAD	0	0	0
1984	DOC-2024-1301	06-1267	3483	\N	\N	\N	100856.62		50101010-01	1A1	122	1	1301	2024-06-18 04:28:29	2024-06-18 07:44:23		FAD			1	0	0	FAD	0	0	0
1985	DOC-2024-1301	06-1267	3483	\N	\N	\N	28097.52		50101010-01	2A1-1	122	1	1301	2024-06-18 04:28:29	2024-06-18 07:44:23		FAD			1	0	0	FAD	0	0	0
1986	DOC-2024-1301	06-1267	3483	\N	\N	\N	75919.58		50101010-01	2A1-2	122	1	1301	2024-06-18 04:28:29	2024-06-18 07:44:23		FAD			1	0	0	FAD	0	0	0
1987	DOC-2024-1301	06-1267	3483	\N	\N	\N	168257.71		50101010-01	2A2	122	1	1301	2024-06-18 04:28:29	2024-06-18 07:44:23		FAD			1	0	0	FAD	0	0	0
1976	DOC-2024-1300	06-1266	3483	\N	\N	\N	505103.38		50101010-01	1A1	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
1977	DOC-2024-1300	06-1266	3483	\N	\N	\N	88631.48		50101010-01	2A1-1	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
1978	DOC-2024-1300	06-1266	3483	\N	\N	\N	250674.92		50101010-01	2A1-2	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
2053	DOC-2024-1353	06-1320	2730	\N	\N	\N	76796		50202020-00	2A1-104	999	1	1353	2024-06-18 07:15:49	2024-06-18 07:16:09		FAD			1	0	0	FAD	0	0	0
2052	DOC-2024-1352	06-1319	3578	\N	\N	\N	15000		50202020-00	2A1-AC (HR)	999	1	1352	2024-06-18 07:15:32	2024-06-18 07:16:29		FAD			1	0	0	FAD	0	0	0
2051	DOC-2024-1351	06-1318	3578	\N	\N	\N	7500		50202020-00	2A1-AC (HR)	999	1	1351	2024-06-18 07:15:13	2024-06-18 07:16:35		FAD			1	0	0	FAD	0	0	0
2050	DOC-2024-1350	06-1317	3578	\N	\N	\N	7500		50202020-00	2A1-AC (HR)	999	1	1350	2024-06-18 07:14:48	2024-06-18 07:16:42		FAD			1	0	0	FAD	0	0	0
2049	DOC-2024-1349	06-1316	3168	\N	\N	\N	6415.76		50204010-00	1A1	999	1	1349	2024-06-18 07:14:31	2024-06-18 07:16:50		FAD			1	0	0	FAD	0	0	0
2048	DOC-2024-1348	06-1315	3567	\N	\N	\N	99096.21		50202020-00	2A1-104	999	1	1348	2024-06-18 07:14:12	2024-06-18 07:16:59		FAD			1	0	0	FAD	0	0	0
2047	DOC-2024-1347	06-1314	428	\N	\N	\N	49824.04		50202020-00	2A1-104	999	1	1347	2024-06-18 07:13:52	2024-06-18 07:17:06		FAD			1	0	0	FAD	0	0	0
2046	DOC-2024-1346	06-1313	303	\N	\N	\N	7336.65		50202020-00	2A1-104	999	1	1346	2024-06-18 07:13:35	2024-06-18 07:17:14		FAD			1	0	0	FAD	0	0	0
2045	DOC-2024-1345	06-1312	136	\N	\N	\N	99203.37		50202020-00	2A1-104	999	1	1345	2024-06-18 07:13:16	2024-06-18 07:17:22		FAD			1	0	0	FAD	0	0	0
2044	DOC-2024-1344	06-1311	2715	\N	\N	\N	2608		50202020-00	2A1-104	999	1	1344	2024-06-18 07:12:57	2024-06-18 07:17:32		FAD			1	0	0	FAD	0	0	0
2043	DOC-2024-1343	06-1310	1129	\N	\N	\N	97999		50202020-00	2A1-101	999	1	1343	2024-06-18 07:12:36	2024-06-18 07:19:11		FAD			1	0	0	FAD	0	0	0
2042	DOC-2024-1342	06-1309	3602	\N	\N	\N	41983		50202020-00	2A1-101	999	1	1342	2024-06-18 07:11:34	2024-06-18 07:19:28		FAD			1	0	0	FAD	0	0	0
2041	DOC-2024-1341	06-1308	3601	\N	\N	\N	156795.83		50202020-00	2A1-104	999	1	1341	2024-06-18 07:10:19	2024-06-18 07:19:37		FAD			1	0	0	FAD	0	0	0
2040	DOC-2024-1340	06-1307	2857	\N	\N	\N	14400		50202010-02	2A2B-105	999	1	1340	2024-06-18 07:09:36	2024-06-18 07:20:30		FAD			1	0	0	FAD	0	0	0
2039	DOC-2024-1339	06-1306	3600	\N	\N	\N	5000		50202020-00	2A1-AC (HR)	999	1	1339	2024-06-18 07:09:17	2024-06-18 07:20:41		FAD			1	0	0	FAD	0	0	0
2038	DOC-2024-1338	06-1305	3061	\N	\N	\N	16575		50213050-02	1A1	999	1	1338	2024-06-18 07:08:16	2024-06-18 07:20:49		FAD			1	0	0	FAD	0	0	0
2037	DOC-2024-1337	06-1304	3038	\N	\N	\N	61000		50202020-00	2A1-AC (FAD)	999	1	1337	2024-06-18 07:07:53	2024-06-18 07:21:04		FAD			1	0	0	FAD	0	0	0
2036	DOC-2024-1336	06-1303	3599	\N	\N	\N	3000		50202010-02	2A2B-105	999	1	1336	2024-06-18 07:07:31	2024-06-18 07:21:16		FAD			1	0	0	FAD	0	0	0
2035	DOC-2024-1335	06-1302	2713	\N	\N	\N	3000		50202010-02	2A2B-105	999	1	1335	2024-06-18 07:06:46	2024-06-18 07:21:35		FAD			1	0	0	FAD	0	0	0
2034	DOC-2024-1334	06-1301	2717	\N	\N	\N	3182		50202020-00	2A1-AC (POSTER)	999	1	1334	2024-06-18 07:06:26	2024-06-18 07:21:44		FAD			1	0	0	FAD	0	0	0
2033	DOC-2024-1333	06-1300	2755	\N	\N	\N	3538		50202020-00	2A1-AC	999	1	1333	2024-06-18 07:06:09	2024-06-18 07:24:10		FAD			1	0	0	FAD	0	0	0
2032	DOC-2024-1332	06-1299	1192	\N	\N	\N	688000		50202020-00	2A1-104	999	1	1332	2024-06-18 07:05:46	2024-06-18 07:24:30		FAD			1	0	0	FAD	0	0	0
2031	DOC-2024-1331	06-1298	2741	\N	\N	\N	1200		50202020-00	2A1-101	999	1	1331	2024-06-18 07:05:27	2024-06-18 07:24:38		FAD			1	0	0	FAD	0	0	0
2030	DOC-2024-1330	06-1297	1841	\N	\N	\N	140537.36		50202010-02	2A2B-106	999	1	1330	2024-06-18 07:05:10	2024-06-18 07:24:46		FAD			1	0	0	FAD	0	0	0
2028	DOC-2024-1329	06-1296	1131	\N	\N	\N	60000		50202020-00	2A1-101	999	1	1329	2024-06-18 05:02:17	2024-06-18 07:25:01		FAD			1	0	0	FAD	0	0	0
2029	DOC-2024-1329	06-1296	1131	\N	\N	\N	60000		50202020-00	2A1-102	999	1	1329	2024-06-18 05:02:17	2024-06-18 07:25:01		FAD			1	0	0	FAD	0	0	0
2026	DOC-2024-1328	06-1295	1109	\N	\N	\N	40455		50202020-00	2A1-101	999	1	1328	2024-06-18 04:59:33	2024-06-18 07:25:10		FAD			1	0	0	FAD	0	0	0
2027	DOC-2024-1328	06-1295	1109	\N	\N	\N	20000		50202020-00	2A1-102	999	1	1328	2024-06-18 04:59:33	2024-06-18 07:25:10		FAD			1	0	0	FAD	0	0	0
2024	DOC-2024-1327	06-1294	1113	\N	\N	\N	54609		50202020-00	2A1-101	999	1	1327	2024-06-18 04:59:04	2024-06-18 07:25:20		FAD			1	0	0	FAD	0	0	0
2025	DOC-2024-1327	06-1294	1113	\N	\N	\N	40000		50202020-00	2A1-102	999	1	1327	2024-06-18 04:59:04	2024-06-18 07:25:20		FAD			1	0	0	FAD	0	0	0
2022	DOC-2024-1326	06-1293	1128	\N	\N	\N	271501.27		50202020-00	2A1-101	999	1	1326	2024-06-18 04:58:33	2024-06-18 07:25:33		FAD			1	0	0	FAD	0	0	0
2023	DOC-2024-1326	06-1293	1128	\N	\N	\N	53333.35		50202020-00	2A1-102	999	1	1326	2024-06-18 04:58:33	2024-06-18 07:25:33		FAD			1	0	0	FAD	0	0	0
2021	DOC-2024-1325	06-1292	1164	\N	\N	\N	20455		50202020-00	2A1-102	999	1	1325	2024-06-18 04:57:55	2024-06-18 07:25:43		FAD			1	0	0	FAD	0	0	0
2020	DOC-2024-1324	06-1291	3483	\N	\N	\N	1171000		50202020-00	2A1-101	999	1	1324	2024-06-18 04:56:40	2024-06-18 07:25:56		FAD			1	0	0	FAD	0	0	0
2019	DOC-2024-1323	06-1290	1103	\N	\N	\N	38366.88		50202020-00	2A1-104	999	1	1323	2024-06-18 04:56:21	2024-06-18 07:38:39		FAD			1	0	0	FAD	0	0	0
2018	DOC-2024-1322	06-1289	1103	\N	\N	\N	106744.92		50202020-00	2A1-104	999	1	1322	2024-06-18 04:56:00	2024-06-18 07:38:56		FAD			1	0	0	FAD	0	0	0
2017	DOC-2024-1321	06-1288	1103	\N	\N	\N	12969.43		50202020-00	2A1-104	999	1	1321	2024-06-18 04:55:31	2024-06-18 07:39:16		FAD			1	0	0	FAD	0	0	0
2016	DOC-2024-1320	06-1287	1103	\N	\N	\N	130721.48		50202020-00	2A1-104	999	1	1320	2024-06-18 04:54:29	2024-06-18 07:39:25		FAD			1	0	0	FAD	0	0	0
2015	DOC-2024-1319	06-1286	1103	\N	\N	\N	20818.30		50202020-00	2A1-104	999	1	1319	2024-06-18 04:54:08	2024-06-18 07:39:34		FAD			1	0	0	FAD	0	0	0
2014	DOC-2024-1318	06-1285	1103	\N	\N	\N	402369.07		50202020-00	2A1-104	999	1	1318	2024-06-18 04:53:49	2024-06-18 07:39:43		FAD			1	0	0	FAD	0	0	0
2013	DOC-2024-1317	06-1284	1103	\N	\N	\N	50710.69		50202020-00	2A1-104	999	1	1317	2024-06-18 04:52:32	2024-06-18 07:39:54		FAD			1	0	0	FAD	0	0	0
2012	DOC-2024-1316	06-1283	2505	\N	\N	\N	8888.89		50202020-00	2A1-101	999	1	1316	2024-06-18 04:52:14	2024-06-18 07:40:10		FAD			1	0	0	FAD	0	0	0
2011	DOC-2024-1315	06-1282	3597	\N	\N	\N	363411.6		50202020-00	2A1-104	999	1	1315	2024-06-18 04:38:17	2024-06-18 07:40:29		FAD			1	0	0	FAD	0	0	0
2009	DOC-2024-1313	06-1280	2746	\N	\N	\N	1620		50202020-00	2A1-AC (GAD)	999	1	1313	2024-06-18 04:36:32	2024-06-18 07:41:02		FAD			1	0	0	FAD	0	0	0
2007	DOC-2024-1312	06-1279	1021	\N	\N	\N	110000		50202020-00	2A1-101 (RA10612)	999	1	1312	2024-06-18 04:36:15	2024-06-18 07:41:11		FAD			1	0	0	FAD	0	0	0
2010	DOC-2024-1314	06-1281	3181	\N	\N	\N	107400		50202020-00	2A1-101	999	1	1314	2024-06-18 04:36:47	2024-06-18 07:40:40		FAD			1	0	0	FAD	0	0	0
2006	DOC-2024-1312	06-1279	1021	\N	\N	\N	2308866		50202020-00	2A1-101	999	1	1312	2024-06-18 04:36:15	2024-06-18 07:41:11		FAD			1	0	0	FAD	0	0	0
2008	DOC-2024-1312	06-1279	1021	\N	\N	\N	910000		50202020-00	2A1-102	999	1	1312	2024-06-18 04:36:15	2024-06-18 07:41:11		FAD			1	0	0	FAD	0	0	0
2004	DOC-2024-1311	06-1278	1021	\N	\N	\N	178000		50202020-00	2A1-101 (RA10612)	999	1	1311	2024-06-18 04:33:56	2024-06-18 07:41:24		FAD			1	0	0	FAD	0	0	0
2005	DOC-2024-1311	06-1278	1021	\N	\N	\N	822000		50202020-00	2A1-102	999	1	1311	2024-06-18 04:33:56	2024-06-18 07:41:24		FAD			1	0	0	FAD	0	0	0
1994	DOC-2024-1303	06-1269	3483	\N	\N	\N	75914.75		50101010-01	2A1-2	122	1	1303	2024-06-18 04:30:29	2024-06-18 07:44:02		FAD			1	0	0	FAD	0	0	0
1995	DOC-2024-1303	06-1269	3483	\N	\N	\N	168250.5		50101010-01	2A2	122	1	1303	2024-06-18 04:30:29	2024-06-18 07:44:02		FAD			1	0	0	FAD	0	0	0
1991	DOC-2024-1302	06-1268	3483	\N	\N	\N	168250.5		50101010-01	2A2	122	1	1302	2024-06-18 04:29:38	2024-06-18 07:44:11		FAD			1	0	0	FAD	0	0	0
1979	DOC-2024-1300	06-1266	3483	\N	\N	\N	600242.29		50101010-01	2A2	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
2055	DOC-2024-1355	\N	3483	\N	\N	\N	1200		50202020-00	2A1-AC (POSTER)	999	0	1355	2024-06-18 07:46:58	\N		FAD			0	0	0	FAD	0	0	0
2091	DOC-2024-1380	06-1348	2727	\N	\N	\N	1182.5		50202020-00	2A1-AC (FAD)	999	1	1380	2024-06-18 08:01:55	2024-06-18 09:38:54		FAD			1	0	0	FAD	0	0	0
2090	DOC-2024-1379	06-1347	2727	\N	\N	\N	20000		50202020-00	2A1-AC (FAD)	999	1	1379	2024-06-18 08:01:31	2024-06-18 09:39:02		FAD			1	0	0	FAD	0	0	0
2088	DOC-2024-1378	06-1346	3483	\N	\N	\N	2581087.98		50202020-00	2A1-AC (HR)	999	1	1378	2024-06-18 07:59:39	2024-06-18 09:39:12		FAD			1	0	0	FAD	0	0	0
2083	DOC-2024-1377	06-1345	3484	\N	\N	\N	25839		50202020-00	2A1-104	999	1	1377	2024-06-18 07:58:52	2024-06-18 09:39:21		FAD			1	0	0	FAD	0	0	0
2082	DOC-2024-1376	06-1344	1027	\N	\N	\N	772000		50202020-00	2A1-104	999	1	1376	2024-06-18 07:57:32	2024-06-18 09:39:32		FAD			1	0	0	FAD	0	0	0
2081	DOC-2024-1375	06-1343	3588	\N	\N	\N	30000		50202020-00	2A1-AC (POSTER)	999	1	1375	2024-06-18 07:57:12	2024-06-18 09:39:46		FAD			1	0	0	FAD	0	0	0
2079	DOC-2024-1373	06-1341	3483	\N	\N	\N	9072000		50202020-00	2A1-102	999	1	1373	2024-06-18 07:56:36	2024-06-18 09:40:26		FAD			1	0	0	FAD	0	0	0
2080	DOC-2024-1374	06-1342	2746	\N	\N	\N	16800.11		50202020-00	2A1-101	999	1	1374	2024-06-18 07:56:53	2024-06-18 09:40:19		FAD			1	0	0	FAD	0	0	0
2078	DOC-2024-1372	06-1340	3546	\N	\N	\N	124000		50202020-00	2A1-104	999	1	1372	2024-06-18 07:56:21	2024-06-18 09:40:34		FAD			1	0	0	FAD	0	0	0
2077	DOC-2024-1371	06-1339	2315	\N	\N	\N	253000		50202020-00	2A1-104	999	1	1371	2024-06-18 07:56:04	2024-06-18 09:40:46		FAD			1	0	0	FAD	0	0	0
2076	DOC-2024-1370	06-1337	3604	\N	\N	\N	160000		50202020-00	2A1-104	999	1	1370	2024-06-18 07:55:46	2024-06-18 09:41:02		FAD			1	0	0	FAD	0	0	0
2074	DOC-2024-1369	06-1336	1025	\N	\N	\N	54038.32		50202020-00	2A1-101	999	1	1369	2024-06-18 07:55:12	2024-06-18 09:41:17		FAD			1	0	0	FAD	0	0	0
2075	DOC-2024-1369	06-1336	1025	\N	\N	\N	142666.63		50202020-00	2A1-102	999	1	1369	2024-06-18 07:55:12	2024-06-18 09:41:17		FAD			1	0	0	FAD	0	0	0
2070	DOC-2024-1365	06-1332	1103	\N	\N	\N	48708.4		50202020-00	2A1-104	999	1	1365	2024-06-18 07:52:47	2024-06-18 09:41:30		FAD			1	0	0	FAD	0	0	0
2069	DOC-2024-1364	06-1330	3061	\N	\N	\N	5684		50202020-00	2A1-101	999	1	1364	2024-06-18 07:52:29	2024-06-18 09:41:43		FAD			1	0	0	FAD	0	0	0
2054	DOC-2024-1354	06-1321	3489	\N	\N	\N	28911		50201010-00	2A1-1	999	1	1354	2024-06-18 07:46:41	2024-06-18 09:41:57		FAD			1	0	0	FAD	0	0	0
2056	DOC-2024-1356	06-1322	3483	\N	\N	\N	12000		50202020-00	2A1-AC (POSTER)	999	1	1356	2024-06-18 07:47:26	2024-06-18 09:42:07		FAD			1	0	0	FAD	0	0	0
2057	DOC-2024-1357	06-1323	1027	\N	\N	\N	29066		50202020-00	2A1-106	999	1	1357	2024-06-18 07:47:45	2024-06-18 09:42:17		FAD			1	0	0	FAD	0	0	0
2058	DOC-2024-1358	06-1324	2726	\N	\N	\N	73773.75		50202020-00	2A1-AC (HR)	999	1	1358	2024-06-18 07:48:05	2024-06-18 09:42:30		FAD			1	0	0	FAD	0	0	0
2059	DOC-2024-1359	06-1325	2725	\N	\N	\N	15000		50202020-00	2A1-AC (HR)	999	1	1359	2024-06-18 07:48:52	2024-06-18 09:42:41		FAD			1	0	0	FAD	0	0	0
2060	DOC-2024-1360	06-1326	3483	\N	\N	\N	17000		50102020-00	1A1	999	1	1360	2024-06-18 07:50:30	2024-06-18 09:42:54		FAD			1	0	0	FAD	0	0	0
2061	DOC-2024-1360	06-1326	3483	\N	\N	\N	7500		50102020-00	2A1-2	999	1	1360	2024-06-18 07:50:30	2024-06-18 09:42:54		FAD			1	0	0	FAD	0	0	0
2062	DOC-2024-1360	06-1326	3483	\N	\N	\N	13500		50102020-00	2A2	999	1	1360	2024-06-18 07:50:30	2024-06-18 09:42:54		FAD			1	0	0	FAD	0	0	0
2066	DOC-2024-1361	06-1327	3603	\N	\N	\N	9397.5		50202020-00	2A1-AC (Indie Siyensya)	999	1	1361	2024-06-18 07:51:20	2024-06-18 09:43:04		FAD			1	0	0	FAD	0	0	0
2067	DOC-2024-1362	06-1328	3278	\N	\N	\N	20150		50202020-00	2A1-AC	999	1	1362	2024-06-18 07:51:48	2024-06-18 09:43:15		FAD			1	0	0	FAD	0	0	0
2071	DOC-2024-1366	06-1333	1103	\N	\N	\N	15112.86		50202020-00	2A1-104	999	1	1366	2024-06-18 07:53:08	2024-06-18 09:43:47		FAD			1	0	0	FAD	0	0	0
2068	DOC-2024-1363	06-1329	3508	\N	\N	\N	23816		50202020-00	2A1-AC	999	1	1363	2024-06-18 07:52:08	2024-06-18 09:43:34		FAD			1	0	0	FAD	0	0	0
2072	DOC-2024-1367	06-1334	3483	\N	\N	\N	1129500		50202020-00	2A1-104	999	1	1367	2024-06-18 07:53:26	2024-06-18 09:44:01		FAD			1	0	0	FAD	0	0	0
2073	DOC-2024-1368	06-1335	3483	\N	\N	\N	342000		50202020-00	2A1-104	999	1	1368	2024-06-18 07:53:44	2024-06-18 09:44:10		FAD			1	0	0	FAD	0	0	0
1980	DOC-2024-1300	06-1266	3483	\N	\N	\N	36000		50102010-01	1A1	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
1981	DOC-2024-1300	06-1266	3483	\N	\N	\N	8000		50102010-01	2A1-1	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
1982	DOC-2024-1300	06-1266	3483	\N	\N	\N	20000		50102010-01	2A1-2	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
1983	DOC-2024-1300	06-1266	3483	\N	\N	\N	46000		50102010-01	2A2	122	1	1300	2024-06-18 04:27:27	2024-06-18 07:44:34		FAD			1	0	0	FAD	0	0	0
2099	DOC-2024-1388	\N	3483	\N	\N	\N	5195.96		50202020-00	2A1-101	999	0	1388	2024-06-18 08:59:52	\N		FAD			0	0	0	FAD	0	0	0
2102	DOC-2024-1390	\N	3483	\N	\N	\N	11564.63		50202020-00	2A1-101	999	0	1390	2024-06-18 09:05:37	\N		FAD			0	0	0	FAD	0	0	0
2103	DOC-2024-1390	\N	3483	\N	\N	\N	303674.47		50202020-00	2A1-102	999	0	1390	2024-06-18 09:05:37	\N		FAD			0	0	0	FAD	0	0	0
2144	DOC-2024-1414	06-1382	1631	\N	\N	\N	68816		50202020-00	2A1-104	999	1	1414	2024-06-18 09:32:37	2024-06-18 09:32:55		FAD			1	0	0	FAD	0	0	0
2143	DOC-2024-1413	06-1381	1060	\N	\N	\N	635516.88		50202020-00	2A1-104	999	1	1413	2024-06-18 09:32:15	2024-06-18 09:33:02		FAD			1	0	0	FAD	0	0	0
2142	DOC-2024-1412	06-1380	1044	\N	\N	\N	376600		50202020-00	2A1-101	999	1	1412	2024-06-18 09:31:52	2024-06-18 09:33:08		FAD			1	0	0	FAD	0	0	0
2141	DOC-2024-1411	06-1379	2754	\N	\N	\N	135718		50202020-00	2A2B-107	999	1	1411	2024-06-18 09:31:17	2024-06-18 09:33:15		FAD			1	0	0	FAD	0	0	0
2140	DOC-2024-1410	06-1378	2607	\N	\N	\N	14996		50202020-00	2A1-AC (PUSH4Science)	999	1	1410	2024-06-18 09:30:57	2024-06-18 09:33:25		FAD			1	0	0	FAD	0	0	0
2138	DOC-2024-1408	06-1376	3333	\N	\N	\N	7000		50202020-00	2A1-AC (Planning)	999	1	1408	2024-06-18 09:30:20	2024-06-18 09:33:43		FAD			1	0	0	FAD	0	0	0
2137	DOC-2024-1407	06-1375	3606	\N	\N	\N	70000		50202010-02	2A2B-106	999	1	1407	2024-06-18 09:26:11	2024-06-18 09:33:51		FAD			1	0	0	FAD	0	0	0
2121	DOC-2024-1406	06-1374	3483	\N	\N	\N	51997.68		50102120-01	1A1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2120	DOC-2024-1405	06-1373	3167	\N	\N	\N	237190.36		50204020-00	1A1	999	1	1405	2024-06-18 09:12:35	2024-06-18 09:34:13		FAD			1	0	0	FAD	0	0	0
2119	DOC-2024-1404	06-1372	2007	\N	\N	\N	9769.25		50202010-02	2A2B-106	999	1	1404	2024-06-18 09:12:15	2024-06-18 09:34:26		FAD			1	0	0	FAD	0	0	0
2118	DOC-2024-1403	06-1371	3521	\N	\N	\N	241033.74		50202020-00	2A1-104	999	1	1403	2024-06-18 09:11:52	2024-06-18 09:35:09		FAD			1	0	0	FAD	0	0	0
2117	DOC-2024-1402	06-1370	1089	\N	\N	\N	20505		50202020-00	2A1-102	999	1	1402	2024-06-18 09:11:33	2024-06-18 09:35:25		FAD			1	0	0	FAD	0	0	0
2111	DOC-2024-1396	06-1364	3483	\N	\N	\N	2207000		50202020-00	2A1-101	999	1	1396	2024-06-18 09:08:32	2024-06-18 09:35:38		FAD			1	0	0	FAD	0	0	0
2114	DOC-2024-1399	06-1367	1129	\N	\N	\N	20000		50202020-00	2A1-101	999	1	1399	2024-06-18 09:09:18	2024-06-18 09:36:02		FAD			1	0	0	FAD	0	0	0
2115	DOC-2024-1400	06-1368	1024	\N	\N	\N	15229.19		50202020-00	2A1-102	999	1	1400	2024-06-18 09:10:53	2024-06-18 09:36:10		FAD			1	0	0	FAD	0	0	0
2116	DOC-2024-1401	06-1369	1190	\N	\N	\N	20000		50202020-00	2A1-101	999	1	1401	2024-06-18 09:11:13	2024-06-18 09:36:17		FAD			1	0	0	FAD	0	0	0
2110	DOC-2024-1395	06-1362	1091	\N	\N	\N	40455		50202020-00	2A1-101	999	1	1395	2024-06-18 09:08:14	2024-06-18 09:36:39		FAD			1	0	0	FAD	0	0	0
2109	DOC-2024-1394	06-1361	3605	\N	\N	\N	59947.69		50202020-00	2A1-104	999	1	1394	2024-06-18 09:07:58	2024-06-18 09:36:46		FAD			1	0	0	FAD	0	0	0
2108	DOC-2024-1393	06-1360	3565	\N	\N	\N	99364.11		50202020-00	2A1-104	999	1	1393	2024-06-18 09:07:16	2024-06-18 09:37:05		FAD			1	0	0	FAD	0	0	0
2106	DOC-2024-1392	06-1359	3483	\N	\N	\N	3305805.73		50202020-00	2A1-104	999	1	1392	2024-06-18 09:06:56	2024-06-18 09:37:12		FAD			1	0	0	FAD	0	0	0
2107	DOC-2024-1392	06-1359	3483	\N	\N	\N	511465.52		50202020-00	2A1-103	999	1	1392	2024-06-18 09:06:56	2024-06-18 09:37:12		FAD			1	0	0	FAD	0	0	0
2104	DOC-2024-1391	06-1358	3483	\N	\N	\N	119564.63		50202020-00	2A1-101	999	1	1391	2024-06-18 09:06:15	2024-06-18 09:37:23		FAD			1	0	0	FAD	0	0	0
2105	DOC-2024-1391	06-1358	3483	\N	\N	\N	303674.47		50202020-00	2A1-102	999	1	1391	2024-06-18 09:06:15	2024-06-18 09:37:23		FAD			1	0	0	FAD	0	0	0
2100	DOC-2024-1389	06-1357	3483	\N	\N	\N	5195.96		50202020-00	2A1-101	999	1	1389	2024-06-18 09:00:24	2024-06-18 09:37:30		FAD			1	0	0	FAD	0	0	0
2101	DOC-2024-1389	06-1357	3483	\N	\N	\N	30249		50202020-00	2A1-102	999	1	1389	2024-06-18 09:00:24	2024-06-18 09:37:30		FAD			1	0	0	FAD	0	0	0
2098	DOC-2024-1387	06-1356	3483	\N	\N	\N	2038000		50202020-00	2A1-102	999	1	1387	2024-06-18 08:59:25	2024-06-18 09:37:38		FAD			1	0	0	FAD	0	0	0
2097	DOC-2024-1386	06-1355	1103	\N	\N	\N	89087.99		50202020-00	2A1-104	999	1	1386	2024-06-18 08:59:08	2024-06-18 09:37:46		FAD			1	0	0	FAD	0	0	0
2096	DOC-2024-1385	06-1353	1067	\N	\N	\N	68579.5		50202020-00	2A1-104	999	1	1385	2024-06-18 08:58:46	2024-06-18 09:38:03		FAD			1	0	0	FAD	0	0	0
2095	DOC-2024-1384	06-1352	2717	\N	\N	\N	117384		50202020-00	2A1-AC (POSTER)	999	1	1384	2024-06-18 08:03:28	2024-06-18 09:38:15		FAD			1	0	0	FAD	0	0	0
2094	DOC-2024-1383	06-1351	3600	\N	\N	\N	5000		50202010-02	2A2A-103	999	1	1383	2024-06-18 08:03:01	2024-06-18 09:38:23		FAD			1	0	0	FAD	0	0	0
2093	DOC-2024-1382	06-1350	3518	\N	\N	\N	24840		50202010-02	2A2A-103	999	1	1382	2024-06-18 08:02:35	2024-06-18 09:38:31		FAD			1	0	0	FAD	0	0	0
2174	DOC-2024-1442	06-1419	2743	\N	\N	\N	12837.78		50202020-00	2A1-101	999	1	1442	2024-06-21 04:47:34	2024-06-21 04:54:03		FAD			1	0	0	FAD	0	0	0
2172	DOC-2024-1441	06-1418	1087	\N	\N	\N	93333.31		50202020-00	2A1-101	999	1	1441	2024-06-21 04:42:08	2024-06-21 04:54:15		FAD			1	0	0	FAD	0	0	0
2173	DOC-2024-1441	06-1418	1087	\N	\N	\N	109999.98		50202020-00	2A1-102	999	1	1441	2024-06-21 04:42:08	2024-06-21 04:54:15		FAD			1	0	0	FAD	0	0	0
2171	DOC-2024-1440	06-1417	3483	\N	\N	\N	862375		50202020-00	2A1-104	999	1	1440	2024-06-21 04:41:30	2024-06-21 04:54:25		FAD			1	0	0	FAD	0	0	0
2170	DOC-2024-1439	06-1416	3483	\N	\N	\N	486000		50202020-00	2A1-101	999	1	1439	2024-06-21 04:41:13	2024-06-21 04:54:32		FAD			1	0	0	FAD	0	0	0
2113	DOC-2024-1398	06-1366	2034	\N	\N	\N	19398.24		50202020-00	2A1-101	999	1	1398	2024-06-18 09:09:04	2024-06-18 09:35:53		FAD			1	0	0	FAD	0	0	0
2112	DOC-2024-1397	06-1365	1038	\N	\N	\N	1320000		50202020-00	2A1-101 (Patriot)	999	1	1397	2024-06-18 09:08:47	2024-06-18 09:35:45		FAD			1	0	0	FAD	0	0	0
2139	DOC-2024-1409	06-1377	2721	\N	\N	\N	3401.59		50202020-00	2A1-AC (StratCom)	999	1	1409	2024-06-18 09:30:40	2024-06-18 09:33:34		FAD			1	0	0	FAD	0	0	0
2122	DOC-2024-1406	06-1374	3483	\N	\N	\N	131874.27		50102110-01	1A1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2124	DOC-2024-1406	06-1374	3483	\N	\N	\N	8500		50102060-03	1A1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2125	DOC-2024-1406	06-1374	3483	\N	\N	\N	10572.15		50102120-01	2A1-1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2126	DOC-2024-1406	06-1374	3483	\N	\N	\N	21596.15		50102110-01	2A1-1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2127	DOC-2024-1406	06-1374	3483	\N	\N	\N	8850		50102050-02	2A1-1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2128	DOC-2024-1406	06-1374	3483	\N	\N	\N	1772.73		50102060-03	2A1-1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2129	DOC-2024-1406	06-1374	3483	\N	\N	\N	22967.15		50102120-01	2A1-2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2130	DOC-2024-1406	06-1374	3483	\N	\N	\N	62716.76		50102110-01	2A1-2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2131	DOC-2024-1406	06-1374	3483	\N	\N	\N	19500		50102050-02	2A1-2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2132	DOC-2024-1406	06-1374	3483	\N	\N	\N	4613.63		50102060-03	2A1-2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2133	DOC-2024-1406	06-1374	3483	\N	\N	\N	62601.7		50102120-01	2A2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2134	DOC-2024-1406	06-1374	3483	\N	\N	\N	150375.89		50102110-01	2A2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2135	DOC-2024-1406	06-1374	3483	\N	\N	\N	48600		50102050-02	2A2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2136	DOC-2024-1406	06-1374	3483	\N	\N	\N	10568.18		50102060-03	2A2	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2092	DOC-2024-1381	06-1349	3486	\N	\N	\N	44777.41		50203090-00	1A1	999	1	1381	2024-06-18 08:02:14	2024-06-18 09:38:41		FAD			1	0	0	FAD	0	0	0
2089	DOC-2024-1378	06-1346	3483	\N	\N	\N	25480.61		50211990-00	PD 997	999	1	1378	2024-06-18 07:59:39	2024-06-18 09:39:12		FAD			1	0	0	FAD	0	0	0
2084	DOC-2024-1377	06-1345	3484	\N	\N	\N	36798		50202020-00	2A1-101	999	1	1377	2024-06-18 07:58:52	2024-06-18 09:39:21		FAD			1	0	0	FAD	0	0	0
2085	DOC-2024-1377	06-1345	3484	\N	\N	\N	1900		50202020-00	2A1-AC (PUSH4Science)	999	1	1377	2024-06-18 07:58:52	2024-06-18 09:39:21		FAD			1	0	0	FAD	0	0	0
2086	DOC-2024-1377	06-1345	3484	\N	\N	\N	8815		50202020-00	2A1-AC (NULAB)	999	1	1377	2024-06-18 07:58:52	2024-06-18 09:39:21		FAD			1	0	0	FAD	0	0	0
2087	DOC-2024-1377	06-1345	3484	\N	\N	\N	79084		50202020-00	2A1-AC (Scholar Grad)	999	1	1377	2024-06-18 07:58:52	2024-06-18 09:39:21		FAD			1	0	0	FAD	0	0	0
2063	DOC-2024-1360	06-1326	3483	\N	\N	\N	7500		50102030-01	1A1	999	1	1360	2024-06-18 07:50:30	2024-06-18 09:42:54		FAD			1	0	0	FAD	0	0	0
2064	DOC-2024-1360	06-1326	3483	\N	\N	\N	7500		50102030-01	2A1-2	999	1	1360	2024-06-18 07:50:30	2024-06-18 09:42:54		FAD			1	0	0	FAD	0	0	0
2065	DOC-2024-1360	06-1326	3483	\N	\N	\N	12000		50102030-01	2A2	999	1	1360	2024-06-18 07:50:30	2024-06-18 09:42:54		FAD			1	0	0	FAD	0	0	0
2168	DOC-2024-1437	06-1414	3508	\N	\N	\N	64300		50202020-00	2A1-101 (Patriot)	999	1	1437	2024-06-21 04:38:03	2024-06-21 04:54:45		FAD			1	0	0	FAD	0	0	0
2167	DOC-2024-1436	06-1413	3227	\N	\N	\N	2818700		50202020-00	2A1-101 (Patriot)	999	1	1436	2024-06-21 04:36:35	2024-06-21 04:54:52		FAD			1	0	0	FAD	0	0	0
2166	DOC-2024-1435	06-1412	3518	\N	\N	\N	13300		50202010-02	2A2A-102	999	1	1435	2024-06-21 04:36:16	2024-06-21 04:55:02		FAD			1	0	0	FAD	0	0	0
2165	DOC-2024-1434	06-1411	3608	\N	\N	\N	471500		50202020-00	2A1-AC	999	1	1434	2024-06-21 04:30:20	2024-06-21 04:55:15		FAD			1	0	0	FAD	0	0	0
2163	DOC-2024-1432	06-1409	1961	\N	\N	\N	18376.95		50202020-00	2A1-101	999	1	1432	2024-06-21 04:28:34	2024-06-21 04:55:44		FAD			1	0	0	FAD	0	0	0
2161	DOC-2024-1431	06-1408	3483	\N	\N	\N	9288.96		50202020-00	2A1-101	999	1	1431	2024-06-21 04:28:14	2024-06-21 04:55:52		FAD			1	0	0	FAD	0	0	0
2160	DOC-2024-1430	06-1407	3379	\N	\N	\N	5999800		50202020-00	2A1-101 (Patriot)	999	1	1430	2024-06-21 04:27:30	2024-06-21 04:55:59		FAD			1	0	0	FAD	0	0	0
2159	DOC-2024-1429	06-1406	3137	\N	\N	\N	43971.2		50202020-00	2A1-AC (POSTER)	999	1	1429	2024-06-21 04:27:10	2024-06-21 04:56:05		FAD			1	0	0	FAD	0	0	0
2158	DOC-2024-1428	06-1404	2747	\N	\N	\N	1708		50202020-00	2A1-AC	999	1	1428	2024-06-21 04:26:40	2024-06-21 04:56:17		FAD			1	0	0	FAD	0	0	0
2156	DOC-2024-1426	06-1398	1349	\N	\N	\N	20125		50202010-02	2A2B-101	999	1	1426	2024-06-21 04:25:49	2024-06-21 04:58:57		FAD			1	0	0	FAD	0	0	0
2155	DOC-2024-1425	06-1394	3483	\N	\N	\N	369455.5		50202020-00	2A1-106	999	1	1425	2024-06-21 04:24:54	2024-06-21 04:59:12		FAD			1	0	0	FAD	0	0	0
2123	DOC-2024-1406	06-1374	3483	\N	\N	\N	48450		50102050-02	1A1	999	1	1406	2024-06-18 09:18:12	2024-06-18 09:34:05		FAD			1	0	0	FAD	0	0	0
2157	DOC-2024-1427	06-1400	1195	\N	\N	\N	282000		50202020-00	2A1-105	999	1	1427	2024-06-21 04:26:10	2024-06-21 04:58:40		FAD			1	0	0	FAD	0	0	0
2153	DOC-2024-1423	06-1391	909	\N	\N	\N	57000		50202020-00	2A1-106	999	1	1423	2024-06-21 04:22:31	2024-06-21 05:00:38		FAD			1	0	0	FAD	0	0	0
2152	DOC-2024-1422	06-1390	2707	\N	\N	\N	18757.16		50202020-00	2A1-AC (HR)	999	1	1422	2024-06-21 04:22:14	2024-06-21 05:00:47		FAD			1	0	0	FAD	0	0	0
2151	DOC-2024-1421	06-1389	3483	\N	\N	\N	561029.2		50202010-02	2A2B-107	999	1	1421	2024-06-21 04:21:57	2024-06-21 05:01:00		FAD			1	0	0	FAD	0	0	0
2150	DOC-2024-1420	06-1388	2607	\N	\N	\N	2650.5		50202020-00	2A1-AC (PUSH4Science)	999	1	1420	2024-06-21 04:21:28	2024-06-21 05:01:08		FAD			1	0	0	FAD	0	0	0
2149	DOC-2024-1419	06-1387	2681	\N	\N	\N	2650.5		50202020-00	2A1-AC (PUSH4Science)	999	1	1419	2024-06-21 04:20:19	2024-06-21 05:01:15		FAD			1	0	0	FAD	0	0	0
2148	DOC-2024-1418	06-1386	3574	\N	\N	\N	12000		50202020-00	2A1-AC (GAD)	999	1	1418	2024-06-21 04:20:00	2024-06-21 05:01:24		FAD			1	0	0	FAD	0	0	0
2147	DOC-2024-1417	06-1385	2709	\N	\N	\N	2000		50205020-01	1A1	999	1	1417	2024-06-21 04:19:03	2024-06-21 05:02:46		FAD			1	0	0	FAD	0	0	0
2145	DOC-2024-1415	06-1383	1103	\N	\N	\N	1048060.15		50202020-00	2A1-104	999	1	1415	2024-06-21 04:17:56	2024-06-21 05:03:04		FAD			1	0	0	FAD	0	0	0
2154	DOC-2024-1424	06-1392	3302	\N	\N	\N	24614.3		50205020-02	1A1	999	1	1424	2024-06-21 04:24:37	2024-06-21 05:00:29		FAD			1	0	0	FAD	0	0	0
2186	DOC-2024-1444	06-1422	3610	\N	\N	\N	95000		50202020-00	2A1-AC (HR)	999	1	1444	2024-06-21 04:53:10	2024-06-21 04:53:28		FAD			1	0	0	FAD	0	0	0
2175	DOC-2024-1443	06-1421	3508	\N	\N	\N	7099		50203010-02	1A1	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2176	DOC-2024-1443	06-1421	3508	\N	\N	\N	5523		50202020-00	2A1-AC (GAD)	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2177	DOC-2024-1443	06-1421	3508	\N	\N	\N	18961		50203010-02	1A1	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2178	DOC-2024-1443	06-1421	3508	\N	\N	\N	6935		50203990-00	1A1	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2179	DOC-2024-1443	06-1421	3508	\N	\N	\N	22133		50202020-00	2A1-AC (Planning)	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2180	DOC-2024-1443	06-1421	3508	\N	\N	\N	2886		50203990-00	1A1	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2181	DOC-2024-1443	06-1421	3508	\N	\N	\N	676		50203010-02	1A1	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2182	DOC-2024-1443	06-1421	3508	\N	\N	\N	247		50202020-00	2A1-AC (FAD)	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2183	DOC-2024-1443	06-1421	3508	\N	\N	\N	13166.5		50203010-02	PD 997	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2184	DOC-2024-1443	06-1421	3508	\N	\N	\N	11340		50202020-00	2A1-106	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2185	DOC-2024-1443	06-1421	3508	\N	\N	\N	19370		50202020-00	2A1-101	999	1	1443	2024-06-21 04:52:31	2024-06-21 04:53:49		FAD			1	0	0	FAD	0	0	0
2169	DOC-2024-1438	06-1415	3609	\N	\N	\N	19902.66		50202020-00	2A1-104	999	1	1438	2024-06-21 04:40:36	2024-06-21 04:54:38		FAD			1	0	0	FAD	0	0	0
2164	DOC-2024-1433	06-1410	3607	\N	\N	\N	256370.4		50202020-00	2A1-AC (NULAB)	999	1	1433	2024-06-21 04:29:11	2024-06-21 04:55:27		FAD			1	0	0	FAD	0	0	0
2162	DOC-2024-1431	06-1408	3483	\N	\N	\N	5220.32		50202020-00	2A1-102	999	1	1431	2024-06-21 04:28:14	2024-06-21 04:55:52		FAD			1	0	0	FAD	0	0	0
2187	DOC-2024-1445	06-1402	1067	\N	\N	\N	86300		50202020-00	2A1-105	122	1	1445	2024-06-21 04:59:31	2024-06-21 04:59:43		FAD			1	0	0	FAD	0	0	0
2146	DOC-2024-1416	06-1384	3137	\N	\N	\N	21140		50202020-00	2A1-101 (Patriot)	999	1	1416	2024-06-21 04:18:42	2024-06-21 05:02:54		FAD			1	0	0	FAD	0	0	0
2219	DOC-2024-1473	06-1454	3483	\N	\N	\N	18000		50202020-00	2A1-AC (Indie Siyensya)	999	1	1473	2024-06-24 08:32:22	2024-06-24 08:36:04		FAD			1	0	0	FAD	0	0	0
2217	DOC-2024-1472	06-1453	3483	\N	\N	\N	2281379.58		50202020-00	2A1-AC (HR)	999	1	1472	2024-06-24 08:31:19	2024-06-24 08:36:10		FAD			1	0	0	FAD	0	0	0
2216	DOC-2024-1471	06-1452	2897	\N	\N	\N	1497500		50202020-00	2A1-AC	999	1	1471	2024-06-24 08:30:26	2024-06-24 08:36:20		FAD			1	0	0	FAD	0	0	0
2215	DOC-2024-1470	06-1451	3518	\N	\N	\N	3300		50202020-00	2A1-AC (HR)	999	1	1470	2024-06-24 08:30:03	2024-06-24 08:36:27		FAD			1	0	0	FAD	0	0	0
2214	DOC-2024-1469	06-1450	3178	\N	\N	\N	32690		50202020-00	2A1-AC (FAD)	999	1	1469	2024-06-24 08:29:43	2024-06-24 08:36:35		FAD			1	0	0	FAD	0	0	0
2211	DOC-2024-1468	06-1449	3484	\N	\N	\N	329807		50202010-02	2A2B-106	999	1	1468	2024-06-24 08:29:15	2024-06-24 08:36:43		FAD			1	0	0	FAD	0	0	0
2212	DOC-2024-1468	06-1449	3484	\N	\N	\N	18439		50202020-00	2A1-AC (HR)	999	1	1468	2024-06-24 08:29:15	2024-06-24 08:36:43		FAD			1	0	0	FAD	0	0	0
2210	DOC-2024-1467	06-1448	3613	\N	\N	\N	7875		50202020-00	2A1-AC (HR)	999	1	1467	2024-06-24 08:27:46	2024-06-24 08:36:52		FAD			1	0	0	FAD	0	0	0
2209	DOC-2024-1466	06-1447	3031	\N	\N	\N	26000		50202020-00	2A1-AC (Indie Siyensya)	999	1	1466	2024-06-24 08:27:13	2024-06-24 08:37:01		FAD			1	0	0	FAD	0	0	0
2208	DOC-2024-1465	06-1445	2714	\N	\N	\N	20000		50202010-02	2A2A-104	999	1	1465	2024-06-24 08:26:55	2024-06-24 08:37:55		FAD			1	0	0	FAD	0	0	0
2207	DOC-2024-1464	06-1444	387	\N	\N	\N	99000		50202020-00	2A1-104	999	1	1464	2024-06-24 08:26:34	2024-06-24 08:38:04		FAD			1	0	0	FAD	0	0	0
2206	DOC-2024-1463	06-1443	1148	\N	\N	\N	130580		50202020-00	2A1-105	999	1	1463	2024-06-24 08:26:09	2024-06-24 08:38:14		FAD			1	0	0	FAD	0	0	0
2205	DOC-2024-1462	06-1442	3051	\N	\N	\N	200750		50202020-00	2A1-AC (HR)	999	1	1462	2024-06-24 08:25:45	2024-06-24 08:38:24		FAD			1	0	0	FAD	0	0	0
2204	DOC-2024-1461	06-1440	2857	\N	\N	\N	73430		50202020-00	2A1-AC (FAD)	999	1	1461	2024-06-24 08:25:20	2024-06-24 08:38:41		FAD			1	0	0	FAD	0	0	0
2202	DOC-2024-1459	06-1438	3612	\N	\N	\N	158301		50202020-00	2A1-104	999	1	1459	2024-06-24 08:24:19	2024-06-24 08:39:42		FAD			1	0	0	FAD	0	0	0
2203	DOC-2024-1460	06-1439	1942	\N	\N	\N	84938.66		50202020-00	2A1-104	999	1	1460	2024-06-24 08:25:01	2024-06-24 08:39:19		FAD			1	0	0	FAD	0	0	0
2201	DOC-2024-1458	06-1437	3611	\N	\N	\N	143505		50202020-00	2A1-104	999	1	1458	2024-06-24 08:23:40	2024-06-24 08:39:53		FAD			1	0	0	FAD	0	0	0
2200	DOC-2024-1457	06-1436	1103	\N	\N	\N	388958.34		50202020-00	2A1-104	999	1	1457	2024-06-24 08:23:04	2024-06-24 08:40:08		FAD			1	0	0	FAD	0	0	0
2199	DOC-2024-1456	06-1435	1103	\N	\N	\N	1029822.81		50202020-00	2A1-104	999	1	1456	2024-06-24 08:22:44	2024-06-24 08:40:16		FAD			1	0	0	FAD	0	0	0
2198	DOC-2024-1455	06-1434	1103	\N	\N	\N	90781.8		50202020-00	2A1-104	999	1	1455	2024-06-24 08:22:23	2024-06-24 08:40:33		FAD			1	0	0	FAD	0	0	0
2197	DOC-2024-1454	06-1433	1103	\N	\N	\N	121411.1		50202020-00	2A1-104	999	1	1454	2024-06-24 08:22:04	2024-06-24 08:40:43		FAD			1	0	0	FAD	0	0	0
2196	DOC-2024-1453	06-1432	1103	\N	\N	\N	1029822.81		50202020-00	2A1-104	999	1	1453	2024-06-24 08:21:31	2024-06-24 08:40:59		FAD			1	0	0	FAD	0	0	0
2195	DOC-2024-1452	06-1431	1103	\N	\N	\N	716724.94		50202020-00	2A1-104	999	1	1452	2024-06-24 08:21:11	2024-06-24 08:41:14		FAD			1	0	0	FAD	0	0	0
2193	DOC-2024-1450	06-1429	155	\N	\N	\N	187190.45		50202020-00	2A1-104	999	1	1450	2024-06-24 08:19:57	2024-06-24 08:41:32		FAD			1	0	0	FAD	0	0	0
2192	DOC-2024-1449	06-1428	3483	\N	\N	\N	376360		50202020-00	2A1-104	999	1	1449	2024-06-24 08:19:27	2024-06-24 08:41:45		FAD			1	0	0	FAD	0	0	0
2190	DOC-2024-1448	06-1427	1183	\N	\N	\N	500673		50202020-00	2A1-101	999	1	1448	2024-06-24 08:18:53	2024-06-24 08:41:55		FAD			1	0	0	FAD	0	0	0
2189	DOC-2024-1447	06-1425	2752	\N	\N	\N	35000		50202020-00	2A1-AC (Scholar Grad)	999	1	1447	2024-06-24 08:18:16	2024-06-24 08:42:20		FAD			1	0	0	FAD	0	0	0
2188	DOC-2024-1446	06-1424	2752	\N	\N	\N	350		50202020-00	2A1-AC (Scholar Grad)	999	1	1446	2024-06-24 08:17:56	2024-06-24 08:42:33		FAD			1	0	0	FAD	0	0	0
2224	DOC-2024-1478	06-1460	3140	\N	\N	\N	134805.99		50212030-00	1A1	999	1	1478	2024-06-24 08:34:36	2024-06-24 08:34:56		FAD			1	0	0	FAD	0	0	0
2223	DOC-2024-1477	06-1459	2747	\N	\N	\N	1687.5		50202010-02	2A2B-101	999	1	1477	2024-06-24 08:34:17	2024-06-24 08:35:04		FAD			1	0	0	FAD	0	0	0
2221	DOC-2024-1475	06-1456	3540	\N	\N	\N	1151494.45		50202020-00	2A1-106	999	1	1475	2024-06-24 08:33:26	2024-06-24 08:35:32		FAD			1	0	0	FAD	0	0	0
2222	DOC-2024-1476	06-1457	3483	\N	\N	\N	115343		50202020-00	2A1-106	999	1	1476	2024-06-24 08:33:53	2024-06-24 08:35:43		FAD			1	0	0	FAD	0	0	0
2220	DOC-2024-1474	06-1455	3483	\N	\N	\N	51260.35		50202020-00	2A1-AC (HR)	999	1	1474	2024-06-24 08:32:45	2024-06-24 08:35:54		FAD			1	0	0	FAD	0	0	0
2218	DOC-2024-1472	06-1453	3483	\N	\N	\N	20305.80		50211990-00	PD 997	999	1	1472	2024-06-24 08:31:19	2024-06-24 08:36:10		FAD			1	0	0	FAD	0	0	0
2213	DOC-2024-1468	06-1449	3484	\N	\N	\N	195925		50202020-00	2A1-AC (POSTER)	999	1	1468	2024-06-24 08:29:15	2024-06-24 08:36:43		FAD			1	0	0	FAD	0	0	0
2194	DOC-2024-1451	06-1430	1103	\N	\N	\N	165734.23		50202020-00	2A1-104	999	1	1451	2024-06-24 08:20:45	2024-06-24 08:41:22		FAD			1	0	0	FAD	0	0	0
2191	DOC-2024-1448	06-1427	1183	\N	\N	\N	2020000		50202020-00	2A1-102	999	1	1448	2024-06-24 08:18:53	2024-06-24 08:41:55		FAD			1	0	0	FAD	0	0	0
2225	DOC-2024-1479	06-1399	1196	\N	\N	\N	29312		50202020-00	2A1-105	122	1	1479	2024-06-24 09:15:35	2024-06-24 09:16:05		FAD			1	0	0	FAD	0	0	0
2226	DOC-2024-1480	06-1401	1119	\N	\N	\N	161400		50202020-00	2A1-105	122	1	1480	2024-06-24 09:15:52	2024-06-24 09:16:14		FAD			1	0	0	FAD	0	0	0
2227	DOC-2024-1481	06-1331	3614	\N	\N	\N	1150000		50202020-00	2A1-101 (Patriot)	999	1	1481	2024-06-24 10:00:02	2024-06-24 10:00:16		FAD			1	0	0	FAD	0	0	0
2228	DOC-2024-1482	06-1393	3380	\N	\N	\N	3000		50205020-01	1A1	122	1	1482	2024-06-26 04:12:28	2024-06-26 04:12:59		FAD			1	0	0	FAD	0	0	0
2229	DOC-2024-1483	06-1461	126	\N	\N	\N	204939.73		50202020-00	2A1-106	122	1	1483	2024-07-01 10:30:49	2024-07-01 10:31:51		FAD			1	0	0	FAD	0	0	0
2230	DOC-2024-1484	06-1462	3569	\N	\N	\N	134060.16		50202020-00	2A1-104	122	1	1484	2024-07-01 10:31:06	2024-07-01 10:31:58		FAD			1	0	0	FAD	0	0	0
2231	DOC-2024-1485	06-1463	1103	\N	\N	\N	1250406.4		50202020-00	2A1-104	122	1	1485	2024-07-01 10:31:20	2024-07-01 10:32:05		FAD			1	0	0	FAD	0	0	0
2232	DOC-2024-1486	06-1464	309	\N	\N	\N	245867.7		50202020-00	2A1-104	122	1	1486	2024-07-01 10:31:36	2024-07-01 10:32:23		FAD			1	0	0	FAD	0	0	0
2233	DOC-2024-1487	06-1465	633	\N	\N	\N	138018.55		50202020-00	2A1-104	122	1	1487	2024-07-01 10:32:42	2024-07-01 10:33:14		FAD			1	0	0	FAD	0	0	0
2234	DOC-2024-1488	06-1466	3557	\N	\N	\N	104763		50202020-00	2A1-104	122	1	1488	2024-07-01 10:33:00	2024-07-01 10:33:27		FAD			1	0	0	FAD	0	0	0
2235	DOC-2024-1489	06-1470	3483	\N	\N	\N	23725.44		50202020-00	2A1-AC (NULAB)	122	1	1489	2024-07-01 10:34:10	2024-07-01 10:34:54		FAD			1	0	0	FAD	0	0	0
2236	DOC-2024-1490	06-1471	1067	\N	\N	\N	1786666.22		50202020-00	2A1-101	122	1	1490	2024-07-01 10:34:25	2024-07-01 10:35:04		FAD			1	0	0	FAD	0	0	0
2237	DOC-2024-1491	06-1472	1190	\N	\N	\N	20000		50202020-00	2A1-101	122	1	1491	2024-07-01 10:34:41	2024-07-01 10:35:12		FAD			1	0	0	FAD	0	0	0
2238	DOC-2024-1492	06-1473	1129	\N	\N	\N	20000		50202020-00	2A1-101	122	1	1492	2024-07-01 10:35:27	2024-07-01 10:37:28		FAD			1	0	0	FAD	0	0	0
2239	DOC-2024-1493	06-1474	1178	\N	\N	\N	20201.98		50202020-00	2A1-102	122	1	1493	2024-07-01 10:35:41	2024-07-01 10:37:35		FAD			1	0	0	FAD	0	0	0
2240	DOC-2024-1494	06-1475	1128	\N	\N	\N	25084.7		50202020-00	2A1-101	122	1	1494	2024-07-01 10:36:07	2024-07-01 10:37:41		FAD			1	0	0	FAD	0	0	0
2241	DOC-2024-1494	06-1475	1128	\N	\N	\N	26666.66		50202020-00	2A1-102	122	1	1494	2024-07-01 10:36:07	2024-07-01 10:37:41		FAD			1	0	0	FAD	0	0	0
2242	DOC-2024-1495	06-1476	3483	\N	\N	\N	540000		50202020-00	2A1-104	122	1	1495	2024-07-01 10:36:22	2024-07-01 10:38:07		FAD			1	0	0	FAD	0	0	0
2243	DOC-2024-1496	06-1477	3483	\N	\N	\N	2864000		50202020-00	2A1-102	122	1	1496	2024-07-01 10:36:35	2024-07-01 10:38:26		FAD			1	0	0	FAD	0	0	0
2244	DOC-2024-1497	06-1478	3483	\N	\N	\N	930000		50202020-00	2A1-101	122	1	1497	2024-07-01 10:36:52	2024-07-01 10:38:34		FAD			1	0	0	FAD	0	0	0
2245	DOC-2024-1498	06-1479	2741	\N	\N	\N	2250		50202020-00	2A1-101	122	1	1498	2024-07-01 10:37:13	2024-07-01 10:38:42		FAD			1	0	0	FAD	0	0	0
2256	DOC-2024-1508	06-1492	2733	\N	\N	\N	53923.05		50202020-00	2A1-AC	122	1	1508	2024-07-01 10:43:18	2024-07-01 10:43:26		FAD			1	0	0	FAD	0	0	0
2255	DOC-2024-1507	06-1491	3483	\N	\N	\N	93750		50202020-00	2A1-AC (NULAB)	122	1	1507	2024-07-01 10:42:58	2024-07-01 10:43:37		FAD			1	0	0	FAD	0	0	0
2254	DOC-2024-1506	06-1487	1022	\N	\N	\N	36905		50202020-00	2A1-101	122	1	1506	2024-07-01 10:42:23	2024-07-01 10:43:48		FAD			1	0	0	FAD	0	0	0
2252	DOC-2024-1505	06-1486	1131	\N	\N	\N	79999.6		50202020-00	2A1-101	122	1	1505	2024-07-01 10:41:55	2024-07-01 10:43:54		FAD			1	0	0	FAD	0	0	0
2253	DOC-2024-1505	06-1486	1131	\N	\N	\N	20000		50202020-00	2A1-102	122	1	1505	2024-07-01 10:41:55	2024-07-01 10:43:54		FAD			1	0	0	FAD	0	0	0
2251	DOC-2024-1504	06-1485	1122	\N	\N	\N	844868		50202020-00	2A1-104	122	1	1504	2024-07-01 10:41:30	2024-07-01 10:44:01		FAD			1	0	0	FAD	0	0	0
2250	DOC-2024-1503	06-1484	1059	\N	\N	\N	170800		50202020-00	2A1-105	122	1	1503	2024-07-01 10:40:25	2024-07-01 10:44:14		FAD			1	0	0	FAD	0	0	0
2249	DOC-2024-1502	06-1483	3483	\N	\N	\N	360000		50202020-00	2A1-103	122	1	1502	2024-07-01 10:40:12	2024-07-01 10:44:21		FAD			1	0	0	FAD	0	0	0
2248	DOC-2024-1501	06-1482	3483	\N	\N	\N	320000		50202020-00	2A1-104	122	1	1501	2024-07-01 10:39:48	2024-07-01 10:44:30		FAD			1	0	0	FAD	0	0	0
2247	DOC-2024-1500	06-1481	2751	\N	\N	\N	7899.6		50202010-02	2A2A-104	122	1	1500	2024-07-01 10:39:32	2024-07-01 10:44:47		FAD			1	0	0	FAD	0	0	0
2246	DOC-2024-1499	06-1480	2712	\N	\N	\N	2250		50202020-00	2A1-101	122	1	1499	2024-07-01 10:39:17	2024-07-01 10:44:57		FAD			1	0	0	FAD	0	0	0
2261	DOC-2024-1513	06-1497	2675	\N	\N	\N	18726.36		50202020-00	2A1-AC (HR)	122	1	1513	2024-07-01 10:47:05	2024-07-01 10:50:51		FAD			1	0	0	FAD	0	0	0
2260	DOC-2024-1512	06-1496	3483	\N	\N	\N	2375000		50202020-00	2A1-104	122	1	1512	2024-07-01 10:46:50	2024-07-01 10:51:01		FAD			1	0	0	FAD	0	0	0
2259	DOC-2024-1511	06-1495	3489	\N	\N	\N	24687		50201010-00	2A1-1	122	1	1511	2024-07-01 10:46:31	2024-07-01 10:51:08		FAD			1	0	0	FAD	0	0	0
2258	DOC-2024-1510	06-1494	3486	\N	\N	\N	38677.9		50203090-00	2A1-1	122	1	1510	2024-07-01 10:46:12	2024-07-01 10:51:18		FAD			1	0	0	FAD	0	0	0
2257	DOC-2024-1509	06-1493	2760	\N	\N	\N	21424.3		50202020-00	2A1-AC (HR)	122	1	1509	2024-07-01 10:45:48	2024-07-01 10:51:30		FAD			1	0	0	FAD	0	0	0
2267	DOC-2024-1518	06-1502	3483	\N	\N	\N	20100		50202020-00	2A1-AC (HR)	122	1	1518	2024-07-01 10:49:43	2024-07-01 10:49:59		FAD			1	0	0	FAD	0	0	0
2266	DOC-2024-1517	06-1501	2860	\N	\N	\N	120358.2		50212020-00	1A1	122	1	1517	2024-07-01 10:49:28	2024-07-01 10:50:17		FAD			1	0	0	FAD	0	0	0
2264	DOC-2024-1515	06-1499	3167	\N	\N	\N	205214.89		50204020-00	1A1	122	1	1515	2024-07-01 10:48:48	2024-07-01 10:50:33		FAD			1	0	0	FAD	0	0	0
2262	DOC-2024-1514	06-1498	3137	\N	\N	\N	312832.8		50202020-00	2A1-AC	122	1	1514	2024-07-01 10:47:45	2024-07-01 10:50:41		FAD			1	0	0	FAD	0	0	0
2263	DOC-2024-1514	06-1498	3137	\N	\N	\N	29971.2		50202020-00	2A1-AC (PUSH4Science)	122	1	1514	2024-07-01 10:47:45	2024-07-01 10:50:41		FAD			1	0	0	FAD	0	0	0
2268	DOC-2024-1519	06-1503	1159	\N	\N	\N	68500		50211990-00	PD 997	122	1	1519	2024-07-01 10:52:12	2024-07-01 10:54:57		FAD			1	0	0	FAD	0	0	0
2269	DOC-2024-1520	06-1504	758	\N	\N	\N	12000		50211990-00	PD 997	122	1	1520	2024-07-01 10:52:26	2024-07-01 10:55:03		FAD			1	0	0	FAD	0	0	0
2270	DOC-2024-1521	06-1505	2340	\N	\N	\N	13500		50211990-00	PD 997	122	1	1521	2024-07-01 10:52:42	2024-07-01 10:55:10		FAD			1	0	0	FAD	0	0	0
2271	DOC-2024-1522	06-1506	1989	\N	\N	\N	12000		50211990-00	PD 997	122	1	1522	2024-07-01 10:52:56	2024-07-01 10:55:17		FAD			1	0	0	FAD	0	0	0
2272	DOC-2024-1523	06-1507	1294	\N	\N	\N	13500		50211990-00	PD 997	122	1	1523	2024-07-01 10:53:12	2024-07-01 10:55:24		FAD			1	0	0	FAD	0	0	0
2273	DOC-2024-1524	06-1508	462	\N	\N	\N	12000		50211990-00	PD 997	122	1	1524	2024-07-01 10:53:34	2024-07-01 10:55:32		FAD			1	0	0	FAD	0	0	0
2274	DOC-2024-1525	06-1509	1380	\N	\N	\N	13500		50211990-00	PD 997	122	1	1525	2024-07-01 10:53:51	2024-07-01 10:55:42		FAD			1	0	0	FAD	0	0	0
2276	DOC-2024-1527	06-1511	2709	\N	\N	\N	38756.62		50202010-02	2A2A-105A	122	1	1527	2024-07-01 10:54:25	2024-07-01 10:56:03		FAD			1	0	0	FAD	0	0	0
2277	DOC-2024-1528	06-1512	1021	\N	\N	\N	6350.8		50202020-00	2A1-103	122	1	1528	2024-07-01 10:54:46	2024-07-01 10:56:11		FAD			1	0	0	FAD	0	0	0
2284	DOC-2024-1535	06-1520	3483	\N	\N	\N	3339523.13		50202020-00	2A1-104	122	1	1535	2024-07-01 10:58:46	2024-07-01 10:58:54		FAD			1	0	0	FAD	0	0	0
2285	DOC-2024-1535	06-1520	3483	\N	\N	\N	464896.34		50202020-00	2A1-103	122	1	1535	2024-07-01 10:58:46	2024-07-01 10:58:54		FAD			1	0	0	FAD	0	0	0
2283	DOC-2024-1534	06-1519	3483	\N	\N	\N	239400		50202020-00	2A1-AC (NULAB)	122	1	1534	2024-07-01 10:58:05	2024-07-01 10:59:01		FAD			1	0	0	FAD	0	0	0
2282	DOC-2024-1533	06-1518	1067	\N	\N	\N	230606		50202020-00	2A1-106	122	1	1533	2024-07-01 10:57:50	2024-07-01 10:59:07		FAD			1	0	0	FAD	0	0	0
2281	DOC-2024-1532	06-1517	1189	\N	\N	\N	10660.5		50202020-00	2A1-106	122	1	1532	2024-07-01 10:57:33	2024-07-01 10:59:14		FAD			1	0	0	FAD	0	0	0
2280	DOC-2024-1531	06-1516	3483	\N	\N	\N	589040		50202020-00	2A1-106	122	1	1531	2024-07-01 10:57:17	2024-07-01 10:59:49		FAD			1	0	0	FAD	0	0	0
2279	DOC-2024-1530	06-1514	3483	\N	\N	\N	108000		50202020-00	2A1-104	122	1	1530	2024-07-01 10:56:54	2024-07-01 11:00:00		FAD			1	0	0	FAD	0	0	0
2278	DOC-2024-1529	06-1513	3483	\N	\N	\N	180000		50202020-00	2A1-104	122	1	1529	2024-07-01 10:56:39	2024-07-01 11:00:09		FAD			1	0	0	FAD	0	0	0
2286	DOC-2024-1536	06-1515	3615	\N	\N	\N	964454.4		50202020-00	2A1-AC	122	1	1536	2024-07-03 02:36:28	2024-07-03 02:36:52		FAD			1	0	0	FAD	0	0	0
2289	DOC-2024-1539	06-1488	3618	\N	\N	\N	158789.7		50202020-00	2A1-104	122	1	1539	2024-07-03 02:38:09	2024-07-03 02:38:20		FAD			1	0	0	FAD	0	0	0
2288	DOC-2024-1538	06-1489	3617	\N	\N	\N	371446.02		50202020-00	2A1-104	122	1	1538	2024-07-03 02:37:45	2024-07-03 02:38:29		FAD			1	0	0	FAD	0	0	0
2287	DOC-2024-1537	06-1490	3616	\N	\N	\N	87000		50202020-00	2A1-101	122	1	1537	2024-07-03 02:37:27	2024-07-03 02:38:38		FAD			1	0	0	FAD	0	0	0
2292	DOC-2024-1542	06-1469	3619	\N	\N	\N	54000		50202020-00	2A1-104	122	1	1542	2024-07-03 02:39:45	2024-07-03 02:40:05		FAD			1	0	0	FAD	0	0	0
2291	DOC-2024-1541	06-1468	3620	\N	\N	\N	90000		50202020-00	2A1-104	122	1	1541	2024-07-03 02:39:28	2024-07-03 02:40:13		FAD			1	0	0	FAD	0	0	0
2290	DOC-2024-1540	06-1467	3621	\N	\N	\N	54000		50202020-00	2A1-103	122	1	1540	2024-07-03 02:39:17	2024-07-03 02:40:23		FAD			1	0	0	FAD	0	0	0
2293	DOC-2024-1543	06-1458	3589	\N	\N	\N	422253.55		50202020-00	2A1-104	122	1	1543	2024-07-03 02:40:58	2024-07-03 02:41:06		FAD			1	0	0	FAD	0	0	0
2294	DOC-2024-1544	06-1446	3476	\N	\N	\N	14751		50202020-00	2A1-AC	122	1	1544	2024-07-03 02:42:58	2024-07-03 02:43:06		FAD			1	0	0	FAD	0	0	0
2295	DOC-2024-1545	06-1441	3483	\N	\N	\N	630000		50202020-00	2A1-101	122	1	1545	2024-07-03 02:43:44	2024-07-03 02:43:52		FAD			1	0	0	FAD	0	0	0
2296	DOC-2024-1546	06-1426	590	\N	\N	\N	19469.41		50202020-00	2A1-AC (HR)	122	1	1546	2024-07-03 02:44:18	2024-07-03 02:44:28		FAD			1	0	0	FAD	0	0	0
2297	DOC-2024-1547	06-1423	1103	\N	\N	\N	467962.78		50202020-00	2A1-104	122	1	1547	2024-07-03 02:44:52	2024-07-03 02:45:04		FAD			1	0	0	FAD	0	0	0
2298	DOC-2024-1548	06-1420	3494	\N	\N	\N	96918.36		50103010 (731)	1A1	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2299	DOC-2024-1548	06-1420	3494	\N	\N	\N	20750.52		50103010 (731)	2A1-1	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2275	DOC-2024-1526	06-1510	3137	\N	\N	\N	14873.6		50205010-00	1A1	122	1	1526	2024-07-01 10:54:07	2024-07-03 03:24:40		FAD			1	0	0	FAD	0	0	0
2265	DOC-2024-1516	06-1500	2768	\N	\N	\N	1390		50202010-02	2A2A-103	122	1	1516	2024-07-01 10:49:09	2024-07-01 10:50:23		FAD			1	0	0	FAD	0	0	0
2300	DOC-2024-1548	06-1420	3494	\N	\N	\N	57410.88		50103010 (731)	2A1-2	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2301	DOC-2024-1548	06-1420	3494	\N	\N	\N	68205.84		50103010 (731)	2A2-A	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2302	DOC-2024-1548	06-1420	3494	\N	\N	\N	64394.28		50103010 (731)	2A2-B	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2303	DOC-2024-1548	06-1420	3494	\N	\N	\N	1800		50103040 (734)	1A1	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2304	DOC-2024-1548	06-1420	3494	\N	\N	\N	400		50103040 (734)	2A1-1	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2305	DOC-2024-1548	06-1420	3494	\N	\N	\N	1000		50103040 (734)	2A1-2	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2306	DOC-2024-1548	06-1420	3494	\N	\N	\N	1200		50103040 (734)	2A2-A	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2307	DOC-2024-1548	06-1420	3494	\N	\N	\N	1100		50103040 (734)	2A2-B	122	1	1548	2024-07-03 02:48:22	2024-07-03 02:48:34		FAD			1	0	0	FAD	0	0	0
2308	DOC-2024-1549	06-1405	2752	\N	\N	\N	47.25		50202020-00	2A1-AC (Scholar Grad)	122	1	1549	2024-07-03 02:50:27	2024-07-03 02:50:37		FAD			1	0	0	FAD	0	0	0
2309	DOC-2024-1550	06-1403	3279	\N	\N	\N	19413.27		50103030 (733)	1A1	122	1	1550	2024-07-03 02:52:15	2024-07-03 02:52:25		FAD			1	0	0	FAD	0	0	0
2310	DOC-2024-1550	06-1403	3279	\N	\N	\N	4323.03		50103030 (733)	2A1-1	122	1	1550	2024-07-03 02:52:15	2024-07-03 02:52:25		FAD			1	0	0	FAD	0	0	0
2311	DOC-2024-1550	06-1403	3279	\N	\N	\N	11960.62		50103030 (733)	2A1-2	122	1	1550	2024-07-03 02:52:15	2024-07-03 02:52:25		FAD			1	0	0	FAD	0	0	0
2312	DOC-2024-1550	06-1403	3279	\N	\N	\N	13705.72		50103030 (733)	2A2-A	122	1	1550	2024-07-03 02:52:15	2024-07-03 02:52:25		FAD			1	0	0	FAD	0	0	0
2313	DOC-2024-1550	06-1403	3279	\N	\N	\N	13919.34		50103030 (733)	2A2-B	122	1	1550	2024-07-03 02:52:15	2024-07-03 02:52:25		FAD			1	0	0	FAD	0	0	0
2314	DOC-2024-1551	06-1397	3498	\N	\N	\N	3600		50103020 (732)	1A1	122	1	1551	2024-07-03 02:54:11	2024-07-03 02:54:20		FAD			1	0	0	FAD	0	0	0
2315	DOC-2024-1551	06-1397	3498	\N	\N	\N	800		50103020 (732)	2A1-1	122	1	1551	2024-07-03 02:54:11	2024-07-03 02:54:20		FAD			1	0	0	FAD	0	0	0
2316	DOC-2024-1551	06-1397	3498	\N	\N	\N	2000		50103020 (732)	2A1-2	122	1	1551	2024-07-03 02:54:11	2024-07-03 02:54:20		FAD			1	0	0	FAD	0	0	0
2317	DOC-2024-1551	06-1397	3498	\N	\N	\N	2400		50103020 (732)	2A2-A	122	1	1551	2024-07-03 02:54:11	2024-07-03 02:54:20		FAD			1	0	0	FAD	0	0	0
2318	DOC-2024-1551	06-1397	3498	\N	\N	\N	2200		50103020 (732)	2A2-B	122	1	1551	2024-07-03 02:54:11	2024-07-03 02:54:20		FAD			1	0	0	FAD	0	0	0
2320	DOC-2024-1553	06-1396	3595	\N	\N	\N	1131		50202020-00	2A1-AC (Scholar Grad)	122	1	1553	2024-07-03 02:55:43	2024-07-03 02:55:53		FAD			1	0	0	FAD	0	0	0
2319	DOC-2024-1552	06-1395	1103	\N	\N	\N	209095.1		50202020-00	2A1-104	122	1	1552	2024-07-03 02:55:27	2024-07-03 02:56:00		FAD			1	0	0	FAD	0	0	0
2321	DOC-2024-1554	06-1363	1449	\N	\N	\N	33360		50202010-02	2A2B-106	122	1	1554	2024-07-03 02:56:24	2024-07-03 02:56:33		FAD			1	0	0	FAD	0	0	0
2322	DOC-2024-1555	06-1354	2034	\N	\N	\N	18792		50202020-00	2A1-101	122	1	1555	2024-07-03 02:57:00	2024-07-03 02:57:16		FAD			1	0	0	FAD	0	0	0
2323	DOC-2024-1556	06-1338	3483	\N	\N	\N	13500		50202010-02	2A2A-104	122	1	1556	2024-07-03 02:57:41	2024-07-03 02:57:55		FAD			1	0	0	FAD	0	0	0
2324	DOC-2024-1557	06-1273	3436	\N	\N	\N	400000		50213060-01	1A1	122	1	1557	2024-07-03 02:58:41	2024-07-03 02:58:52		FAD			1	0	0	FAD	0	0	0
2325	DOC-2024-1557	06-1273	3436	\N	\N	\N	200000		50203090-00	2A2	122	1	1557	2024-07-03 02:58:41	2024-07-03 02:58:52		FAD			1	0	0	FAD	0	0	0
2326	DOC-2024-1558	07-1521	3483	\N	\N	\N	506007.97		50101010-01	1A1	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2327	DOC-2024-1558	07-1521	3483	\N	\N	\N	88868.51		50101010-01	2A1-1	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2328	DOC-2024-1558	07-1521	3483	\N	\N	\N	253067.41		50101010-01	2A1-2	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2329	DOC-2024-1558	07-1521	3483	\N	\N	\N	6055485.38		50101010-01	2A2	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2330	DOC-2024-1558	07-1521	3483	\N	\N	\N	36000		50102010-01	1A1	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2331	DOC-2024-1558	07-1521	3483	\N	\N	\N	8000		50102010-01	2A1-1	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2379	DOC-2024-1587	\N	2644	\N	\N	\N	5662.99		50202020-00	2A1-AC (HR)	999	0	1587	2024-07-16 03:13:09	\N		FAD			0	0	0	FAD	0	0	0
2382	DOC-2024-1590	07-1556	3305	\N	\N	\N	4895400		50202020-00	2A1-101 (Patriot)	999	1	1590	2024-07-16 03:14:17	2024-07-16 03:35:26		FAD			1	0	0	FAD	0	0	0
2381	DOC-2024-1589	07-1555	3166	\N	\N	\N	895776		50202020-00	2A1-101	999	1	1589	2024-07-16 03:13:54	2024-07-16 03:35:45		FAD			1	0	0	FAD	0	0	0
2380	DOC-2024-1588	07-1554	2644	\N	\N	\N	5663		50202020-00	2A1-AC (HR)	999	1	1588	2024-07-16 03:13:34	2024-07-16 03:35:57		FAD			1	0	0	FAD	0	0	0
2378	DOC-2024-1586	07-1553	2832	\N	\N	\N	10970		50203990-00	2A1-102	999	1	1586	2024-07-16 03:12:47	2024-07-16 03:36:09		FAD			1	0	0	FAD	0	0	0
2377	DOC-2024-1585	07-1551	3038	\N	\N	\N	27100		50202010-02	2A2B-105	999	1	1585	2024-07-16 03:07:29	2024-07-16 03:36:23		FAD			1	0	0	FAD	0	0	0
2374	DOC-2024-1584	07-1550	3483	\N	\N	\N	2330923.27		50202020-00	2A1-AC (HR)	999	1	1584	2024-07-16 03:07:05	2024-07-16 03:36:34		FAD			1	0	0	FAD	0	0	0
2373	DOC-2024-1583	07-1549	2787	\N	\N	\N	142800		50202010-02	2A2A-102	999	1	1583	2024-07-16 03:05:54	2024-07-16 03:36:48		FAD			1	0	0	FAD	0	0	0
2372	DOC-2024-1582	07-1548	392	\N	\N	\N	50000		50202020-00	2A1-101	999	1	1582	2024-07-16 03:05:34	2024-07-16 03:36:57		FAD			1	0	0	FAD	0	0	0
2371	DOC-2024-1581	07-1547	3483	\N	\N	\N	4706000		50202020-00	2A1-102	999	1	1581	2024-07-16 03:05:20	2024-07-16 03:37:34		FAD			1	0	0	FAD	0	0	0
2370	DOC-2024-1580	07-1546	3625	\N	\N	\N	148500		50202020-00	2A1-AC (PUSH4Science)	999	1	1580	2024-07-16 03:05:03	2024-07-16 03:37:49		FAD			1	0	0	FAD	0	0	0
2368	DOC-2024-1579	07-1545	3038	\N	\N	\N	4950		50202020-00	2A1-AC (HR)	999	1	1579	2024-07-16 03:03:21	2024-07-16 03:37:58		FAD			1	0	0	FAD	0	0	0
2369	DOC-2024-1579	07-1545	3038	\N	\N	\N	163200		50202020-00	2A1-101	999	1	1579	2024-07-16 03:03:21	2024-07-16 03:37:58		FAD			1	0	0	FAD	0	0	0
2367	DOC-2024-1578	07-1544	3489	\N	\N	\N	29054		50201010-00	2A1-1	999	1	1578	2024-07-16 03:02:40	2024-07-16 03:38:12		FAD			1	0	0	FAD	0	0	0
2366	DOC-2024-1577	07-1543	3486	\N	\N	\N	33442.73		50203090-00	2A1-1	999	1	1577	2024-07-16 03:02:05	2024-07-16 03:38:27		FAD			1	0	0	FAD	0	0	0
2365	DOC-2024-1576	07-1542	3624	\N	\N	\N	27200		50202020-00	2A1-AC (FAD)	999	1	1576	2024-07-16 03:01:43	2024-07-16 03:38:39		FAD			1	0	0	FAD	0	0	0
2363	DOC-2024-1575	07-1541	3483	\N	\N	\N	395788.35		50202020-00	2A1-101	999	1	1575	2024-07-16 03:00:50	2024-07-16 03:38:52		FAD			1	0	0	FAD	0	0	0
2364	DOC-2024-1575	07-1541	3483	\N	\N	\N	371738.35		50202020-00	2A1-102	999	1	1575	2024-07-16 03:00:50	2024-07-16 03:38:52		FAD			1	0	0	FAD	0	0	0
2362	DOC-2024-1574	07-1539	3441	\N	\N	\N	189000		50202010-02	2A2B-105	999	1	1574	2024-07-16 02:59:59	2024-07-16 03:39:04		FAD			1	0	0	FAD	0	0	0
2361	DOC-2024-1573	07-1538	2787	\N	\N	\N	99000		50202010-02	2A2B-105	999	1	1573	2024-07-16 02:59:26	2024-07-16 03:39:15		FAD			1	0	0	FAD	0	0	0
2360	DOC-2024-1572	07-1537	2740	\N	\N	\N	94556.12		50202020-00	2A1-AC (NULAB)	999	1	1572	2024-07-16 02:59:06	2024-07-16 03:39:24		FAD			1	0	0	FAD	0	0	0
2355	DOC-2024-1571	07-1536	2809	\N	\N	\N	4071322		50202020-00	2A1-AC	999	1	1571	2024-07-16 02:58:49	2024-07-16 03:39:34		FAD			1	0	0	FAD	0	0	0
2356	DOC-2024-1571	07-1536	2809	\N	\N	\N	1949000		50203010-01	1A1	999	1	1571	2024-07-16 02:58:49	2024-07-16 03:39:34		FAD			1	0	0	FAD	0	0	0
2354	DOC-2024-1570	07-1535	3483	\N	\N	\N	33150		50202010-02	2A2B-106	999	1	1570	2024-07-16 02:57:02	2024-07-16 03:39:46		FAD			1	0	0	FAD	0	0	0
2353	DOC-2024-1569	07-1534	2740	\N	\N	\N	728860		50202020-00	2A1-AC (NULAB)	999	1	1569	2024-07-16 02:56:43	2024-07-16 03:40:04		FAD			1	0	0	FAD	0	0	0
2352	DOC-2024-1568	07-1533	3483	\N	\N	\N	1241000		50202020-00	2A1-101	999	1	1568	2024-07-16 02:56:22	2024-07-16 03:40:17		FAD			1	0	0	FAD	0	0	0
2351	DOC-2024-1567	07-1532	3623	\N	\N	\N	36000		50202020-00	2A1-104	999	1	1567	2024-07-16 02:56:02	2024-07-16 03:40:29		FAD			1	0	0	FAD	0	0	0
2350	DOC-2024-1566	07-1531	3622	\N	\N	\N	76000		50202020-00	2A1-104	999	1	1566	2024-07-16 02:55:11	2024-07-16 03:40:37		FAD			1	0	0	FAD	0	0	0
2349	DOC-2024-1565	07-1530	2034	\N	\N	\N	18792		50202020-00	2A1-101	999	1	1565	2024-07-16 02:49:18	2024-07-16 03:40:48		FAD			1	0	0	FAD	0	0	0
2348	DOC-2024-1564	07-1529	3483	\N	\N	\N	382000		50202020-00	2A1-104	999	1	1564	2024-07-16 02:48:44	2024-07-16 03:40:56		FAD			1	0	0	FAD	0	0	0
2347	DOC-2024-1563	07-1526	2729	\N	\N	\N	3179		50202020-00	2A1-AC (SMART)	999	1	1563	2024-07-16 02:48:26	2024-07-16 03:41:09		FAD			1	0	0	FAD	0	0	0
2346	DOC-2024-1562	07-1525	1189	\N	\N	\N	32474		50202020-00	2A1-104	999	1	1562	2024-07-16 02:48:00	2024-07-16 03:41:17		FAD			1	0	0	FAD	0	0	0
2342	DOC-2024-1561	07-1524	3483	\N	\N	\N	100545		50101010-01	1A1	999	1	1561	2024-07-16 02:47:40	2024-07-16 03:41:34		FAD			1	0	0	FAD	0	0	0
2343	DOC-2024-1561	07-1524	3483	\N	\N	\N	28017		50101010-01	2A1-1	999	1	1561	2024-07-16 02:47:40	2024-07-16 03:41:34		FAD			1	0	0	FAD	0	0	0
2344	DOC-2024-1561	07-1524	3483	\N	\N	\N	75117.25		50101010-01	2A1-2	999	1	1561	2024-07-16 02:47:40	2024-07-16 03:41:34		FAD			1	0	0	FAD	0	0	0
2338	DOC-2024-1560	07-1523	3483	\N	\N	\N	100545		50101010-01	1A1	999	1	1560	2024-07-16 02:38:05	2024-07-16 03:41:44		FAD			1	0	0	FAD	0	0	0
2339	DOC-2024-1560	07-1523	3483	\N	\N	\N	28017		50101010-01	2A1-1	999	1	1560	2024-07-16 02:38:05	2024-07-16 03:41:44		FAD			1	0	0	FAD	0	0	0
2340	DOC-2024-1560	07-1523	3483	\N	\N	\N	75117.25		50101010-01	2A1-2	999	1	1560	2024-07-16 02:38:05	2024-07-16 03:41:44		FAD			1	0	0	FAD	0	0	0
2334	DOC-2024-1559	07-1522	3483	\N	\N	\N	100555.03		50101010-01	1A1	999	1	1559	2024-07-16 02:36:04	2024-07-16 03:41:55		FAD			1	0	0	FAD	0	0	0
2335	DOC-2024-1559	07-1522	3483	\N	\N	\N	28018.49		50101010-01	2A1-1	999	1	1559	2024-07-16 02:36:04	2024-07-16 03:41:55		FAD			1	0	0	FAD	0	0	0
2336	DOC-2024-1559	07-1522	3483	\N	\N	\N	75122.09		50101010-01	2A1-2	999	1	1559	2024-07-16 02:36:04	2024-07-16 03:41:55		FAD			1	0	0	FAD	0	0	0
2337	DOC-2024-1559	07-1522	3483	\N	\N	\N	166514.62		50101010-01	2A2	999	1	1559	2024-07-16 02:36:04	2024-07-16 03:41:55		FAD			1	0	0	FAD	0	0	0
2332	DOC-2024-1558	07-1521	3483	\N	\N	\N	20000		50102010-01	2A1-2	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2333	DOC-2024-1558	07-1521	3483	\N	\N	\N	46000		50102010-01	2A2	999	1	1558	2024-07-16 02:32:10	2024-07-16 03:42:05		FAD			1	0	0	FAD	0	0	0
2416	DOC-2024-1606	07-1580	2857	\N	\N	\N	19800		50202020-00	2A1-AC (FAD)	999	1	1606	2024-07-16 03:26:47	2024-07-16 03:27:08		FAD			1	0	0	FAD	0	0	0
2400	DOC-2024-1605	07-1579	3483	\N	\N	\N	53788.8		50102120-01	1A1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2401	DOC-2024-1605	07-1579	3483	\N	\N	\N	220535.24		50102110-01	1A1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2402	DOC-2024-1605	07-1579	3483	\N	\N	\N	40800		50102050-02	1A1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2403	DOC-2024-1605	07-1579	3483	\N	\N	\N	8750		50102060-03	1A1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2404	DOC-2024-1605	07-1579	3483	\N	\N	\N	10572.15		50102120-01	2A1-1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2405	DOC-2024-1605	07-1579	3483	\N	\N	\N	21222.12		50102110-01	2A1-1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2406	DOC-2024-1605	07-1579	3483	\N	\N	\N	7800		50102050-02	2A1-1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2407	DOC-2024-1605	07-1579	3483	\N	\N	\N	2000		50102060-03	2A1-1	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2408	DOC-2024-1605	07-1579	3483	\N	\N	\N	24066.34		50102120-01	2A1-2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2409	DOC-2024-1605	07-1579	3483	\N	\N	\N	53449.86		50102110-01	2A1-2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2410	DOC-2024-1605	07-1579	3483	\N	\N	\N	15450		50102050-02	2A1-2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2411	DOC-2024-1605	07-1579	3483	\N	\N	\N	4795.45		50102060-03	2A1-2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2412	DOC-2024-1605	07-1579	3483	\N	\N	\N	62601.7		50102120-01	2A2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2413	DOC-2024-1605	07-1579	3483	\N	\N	\N	124083.09		50102110-01	2A2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2414	DOC-2024-1605	07-1579	3483	\N	\N	\N	32250		50102050-02	2A2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2415	DOC-2024-1605	07-1579	3483	\N	\N	\N	10704.53		50102060-03	2A2	999	1	1605	2024-07-16 03:26:31	2024-07-16 03:27:23		FAD			1	0	0	FAD	0	0	0
2399	DOC-2024-1604	07-1578	392	\N	\N	\N	50000		50202020-00	2A1-101	999	1	1604	2024-07-16 03:21:19	2024-07-16 03:27:32		FAD			1	0	0	FAD	0	0	0
2398	DOC-2024-1603	07-1577	3627	\N	\N	\N	745800		50202020-00	2A1-AC (Scholar Grad)	999	1	1603	2024-07-16 03:21:04	2024-07-16 03:29:09		FAD			1	0	0	FAD	0	0	0
2397	DOC-2024-1602	07-1576	3336	\N	\N	\N	518000		50202020-00	1A1	999	1	1602	2024-07-16 03:20:05	2024-07-16 03:29:19		FAD			1	0	0	FAD	0	0	0
2396	DOC-2024-1601	07-1574	2984	\N	\N	\N	159000		50202020-00	2A1-AC (NULAB)	999	1	1601	2024-07-16 03:19:41	2024-07-16 03:30:32		FAD			1	0	0	FAD	0	0	0
2395	DOC-2024-1600	07-1573	2751	\N	\N	\N	2309		50202010-02	2A2A-104	999	1	1600	2024-07-16 03:19:21	2024-07-16 03:30:43		FAD			1	0	0	FAD	0	0	0
2394	DOC-2024-1599	07-1572	2751	\N	\N	\N	7228.5		50202020-00	2A1-AC (Indie Siyensya)	999	1	1599	2024-07-16 03:18:46	2024-07-16 03:30:50		FAD			1	0	0	FAD	0	0	0
2393	DOC-2024-1598	07-1569	1631	\N	\N	\N	68816		50202020-00	2A1-104	999	1	1598	2024-07-16 03:18:31	2024-07-16 03:31:05		FAD			1	0	0	FAD	0	0	0
2392	DOC-2024-1597	07-1568	1143	\N	\N	\N	24800		50202020-00	2A1-105	999	1	1597	2024-07-16 03:18:03	2024-07-16 03:31:43		FAD			1	0	0	FAD	0	0	0
2391	DOC-2024-1596	07-1567	1124	\N	\N	\N	499800		50202020-00	2A1-105	999	1	1596	2024-07-16 03:17:45	2024-07-16 03:33:04		FAD			1	0	0	FAD	0	0	0
2390	DOC-2024-1595	07-1566	1059	\N	\N	\N	79500		50202020-00	2A1-105	999	1	1595	2024-07-16 03:17:22	2024-07-16 03:33:13		FAD			1	0	0	FAD	0	0	0
2389	DOC-2024-1594	07-1560	3626	\N	\N	\N	475500		50202020-00	2A2B-106	999	1	1594	2024-07-16 03:17:02	2024-07-16 03:34:02		FAD			1	0	0	FAD	0	0	0
2388	DOC-2024-1593	07-1559	3483	\N	\N	\N	8950		50202020-00	2A1-AC (Scholar Grad)	999	1	1593	2024-07-16 03:16:24	2024-07-16 03:34:13		FAD			1	0	0	FAD	0	0	0
2387	DOC-2024-1592	07-1558	2737	\N	\N	\N	3959		50202010-02	2A2B-106	999	1	1592	2024-07-16 03:16:06	2024-07-16 03:34:46		FAD			1	0	0	FAD	0	0	0
2383	DOC-2024-1591	07-1557	3484	\N	\N	\N	19192		50202020-00	2A1-101	999	1	1591	2024-07-16 03:15:30	2024-07-16 03:35:04		FAD			1	0	0	FAD	0	0	0
2384	DOC-2024-1591	07-1557	3484	\N	\N	\N	156175		50202020-00	2A1-AC (Scholar Grad)	999	1	1591	2024-07-16 03:15:30	2024-07-16 03:35:04		FAD			1	0	0	FAD	0	0	0
2385	DOC-2024-1591	07-1557	3484	\N	\N	\N	70064		50202020-00	2A1-AC (Indie Siyensya)	999	1	1591	2024-07-16 03:15:30	2024-07-16 03:35:04		FAD			1	0	0	FAD	0	0	0
2386	DOC-2024-1591	07-1557	3484	\N	\N	\N	29879		50202020-00	2A1-AC (NULAB)	999	1	1591	2024-07-16 03:15:30	2024-07-16 03:35:04		FAD			1	0	0	FAD	0	0	0
2375	DOC-2024-1584	07-1550	3483	\N	\N	\N	12665.21		50202020-00	2A1-AC (NULAB)	999	1	1584	2024-07-16 03:07:05	2024-07-16 03:36:34		FAD			1	0	0	FAD	0	0	0
2376	DOC-2024-1584	07-1550	3483	\N	\N	\N	19702.02		50202020-00	PD 997	999	1	1584	2024-07-16 03:07:05	2024-07-16 03:36:34		FAD			1	0	0	FAD	0	0	0
2357	DOC-2024-1571	07-1536	2809	\N	\N	\N	2639600		50202020-00	2A1-AC	999	1	1571	2024-07-16 02:58:49	2024-07-16 03:39:34		FAD			1	0	0	FAD	0	0	0
2358	DOC-2024-1571	07-1536	2809	\N	\N	\N	4520000		50202020-00	2A1-AC	999	1	1571	2024-07-16 02:58:49	2024-07-16 03:39:34		FAD			1	0	0	FAD	0	0	0
2359	DOC-2024-1571	07-1536	2809	\N	\N	\N	76500		50202020-00	2A1-AC	999	1	1571	2024-07-16 02:58:49	2024-07-16 03:39:34		FAD			1	0	0	FAD	0	0	0
2345	DOC-2024-1561	07-1524	3483	\N	\N	\N	166500.5		50101010-01	2A2	999	1	1561	2024-07-16 02:47:40	2024-07-16 03:41:34		FAD			1	0	0	FAD	0	0	0
2341	DOC-2024-1560	07-1523	3483	\N	\N	\N	166500.50		50101010-01	2A2	999	1	1560	2024-07-16 02:38:05	2024-07-16 03:41:44		FAD			1	0	0	FAD	0	0	0
2422	DOC-2024-1612	07-1589	3508	\N	\N	\N	13720		50202020-00	2A1-101 (Patriot)	122	1	1612	2024-07-16 03:44:53	2024-07-16 03:51:42		FAD			1	0	0	FAD	0	0	0
2421	DOC-2024-1611	07-1587	3508	\N	\N	\N	10000		50202010-02	2A2B-106	122	1	1611	2024-07-16 03:44:34	2024-07-16 03:52:10		FAD			1	0	0	FAD	0	0	0
2420	DOC-2024-1610	07-1585	3053	\N	\N	\N	244080		50202010-02	2A2B-106	122	1	1610	2024-07-16 03:44:18	2024-07-16 03:52:23		FAD			1	0	0	FAD	0	0	0
2419	DOC-2024-1609	07-1584	1040	\N	\N	\N	210050		50202020-00	2A1-101	122	1	1609	2024-07-16 03:43:31	2024-07-16 03:52:33		FAD			1	0	0	FAD	0	0	0
2418	DOC-2024-1608	07-1582	1203	\N	\N	\N	80000		50202020-00	2A1-104	122	1	1608	2024-07-16 03:42:55	2024-07-16 03:52:44		FAD			1	0	0	FAD	0	0	0
2417	DOC-2024-1607	07-1581	3483	\N	\N	\N	1240140		50202020-00	2A1-106	122	1	1607	2024-07-16 03:42:35	2024-07-16 03:52:55		FAD			1	0	0	FAD	0	0	0
2431	DOC-2024-1620	07-1597	1067	\N	\N	\N	3466665.8		50202020-00	2A1-102	122	1	1620	2024-07-16 03:49:16	2024-07-16 03:50:26		FAD			1	0	0	FAD	0	0	0
2430	DOC-2024-1619	07-1596	1766	\N	\N	\N	263893.5		50202020-00	2A1-104	122	1	1619	2024-07-16 03:48:54	2024-07-16 03:50:35		FAD			1	0	0	FAD	0	0	0
2429	DOC-2024-1618	07-1595	3319	\N	\N	\N	9393.55		50202020-00	2A1-AC	122	1	1618	2024-07-16 03:48:33	2024-07-16 03:50:41		FAD			1	0	0	FAD	0	0	0
2428	DOC-2024-1617	07-1594	3483	\N	\N	\N	484079		50202020-00	2A1-AC (HR)	122	1	1617	2024-07-16 03:48:06	2024-07-16 03:50:54		FAD			1	0	0	FAD	0	0	0
2426	DOC-2024-1616	07-1593	3193	\N	\N	\N	16041		50202020-00	2A1-101	122	1	1616	2024-07-16 03:47:37	2024-07-16 03:51:02		FAD			1	0	0	FAD	0	0	0
2427	DOC-2024-1616	07-1593	3193	\N	\N	\N	3497		50202020-00	2A1-AC (FAD)	122	1	1616	2024-07-16 03:47:37	2024-07-16 03:51:02		FAD			1	0	0	FAD	0	0	0
2425	DOC-2024-1615	07-1592	3411	\N	\N	\N	61765		50202020-00	2A1-101 (Patriot)	122	1	1615	2024-07-16 03:45:50	2024-07-16 03:51:09		FAD			1	0	0	FAD	0	0	0
2424	DOC-2024-1614	07-1591	3483	\N	\N	\N	639000		50202010-02	2A1-102	122	1	1614	2024-07-16 03:45:28	2024-07-16 03:51:15		FAD			1	0	0	FAD	0	0	0
2423	DOC-2024-1613	07-1590	3483	\N	\N	\N	520000		50202020-00	2A1-101 (Patriot)	122	1	1613	2024-07-16 03:45:11	2024-07-16 03:51:34		FAD			1	0	0	FAD	0	0	0
2432	DOC-2024-1621	07-1598	2709	\N	\N	\N	2000		50205020-01	1A1	122	1	1621	2024-07-16 03:49:32	2024-07-16 03:49:55		FAD			1	0	0	FAD	0	0	0
2433	DOC-2024-1622	\N	2704	\N	\N	\N	25000		00000000-00	1A1	122	0	1622	2024-07-18 10:06:54	\N		FAD			0	0	0	FAD	0	0	0
2434	DOC-2024-1623	\N	2704	\N	\N	\N	5000		00000000-00	1A1	999	0	1623	2024-07-18 10:27:04	\N		FAD			0	0	0	FAD	0	0	0
2435	DOC-2024-1624	\N	2704	\N	\N	\N	25000		00000000-00	1A1	999	0	1624	2024-07-19 03:00:33	\N		FAD			0	0	0	FAD	0	0	10
2436	DOC-2024-1625	\N	2704	\N	\N	\N	2000		00000000-00	1A1	999	0	1625	2024-07-19 03:02:13	\N		FAD			0	0	0	FAD	0	1	0
2437	DOC-2024-1626	\N	2704	\N	\N	\N	25000		00000000-00	1A1	999	0	1626	2024-07-19 03:05:45	\N		FAD			0	0	0	FAD	0	0	0
2438	DOC-2024-1627	\N	2704	\N	\N	\N	25000		00000000-00	1A1	999	0	1627	2024-07-19 03:06:31	\N		FAD			0	0	0	FAD	0	0	10
2439	DOC-2024-1628	\N	2704	\N	\N	\N	25000		00000000-00	1A1	999	0	1628	2024-07-19 03:06:53	\N		FAD			0	0	0	FAD	0	0	10
2440	DOC-2024-1629	\N	2704	\N	\N	\N	5000	payment for tuition	50202020-00	1A1	999	0	1629	2024-07-19 03:37:41	\N	qwertyuiop	FAD			0	0	0	FAD	0	0	10
2441	DOC-2024-1630	\N	2704	\N	\N	\N	10000	payment for tuition payment for tuition payment for tuition payment for tuition	50202020-00	1A1	999	0	1630	2024-07-19 03:44:28	\N	additional details additional details additional details additional details additional details additional details additional details additional details 	FAD			1	0	0	FAD	0	0	10
2442	DOC-2024-1630	\N	2704	\N	\N	\N	20000		50202020-00	2A1-1	999	0	1630	2024-07-19 03:44:28	\N	additional details additional details additional details additional details additional details additional details additional details additional details 	FAD			1	0	0	FAD	0	0	10
2443	DOC-2024-1630	\N	2704	\N	\N	\N	30000		50202020-00	2A1-2	999	0	1630	2024-07-19 03:44:28	\N	additional details additional details additional details additional details additional details additional details additional details additional details 	FAD			1	0	0	FAD	0	0	10
2444	DOC-2024-1630	\N	2704	\N	\N	\N	40000		50202020-00	2A2	999	0	1630	2024-07-19 03:44:28	\N	additional details additional details additional details additional details additional details additional details additional details additional details 	FAD			1	0	0	FAD	0	0	10
2445	DOC-2024-1630	\N	2704	\N	\N	\N	50000		50202020-00	PD 997	999	0	1630	2024-07-19 03:44:28	\N	additional details additional details additional details additional details additional details additional details additional details additional details 	FAD			1	0	0	FAD	0	0	10
2466	DOC-2024-1651	07-1622	2727	\N	\N	\N	52.78		50202020-00	2A1-AC (FAD)	999	1	1651	2024-07-29 04:55:58	2024-07-29 09:55:04		FAD			1	0	0	FAD	0	0	0
2467	DOC-2024-1652	07-1623	3140	\N	\N	\N	134805.99		50212030-00	1A1	999	1	1652	2024-07-29 09:15:51	2024-07-29 09:55:14		FAD			1	0	0	FAD	0	0	0
2468	DOC-2024-1653	07-1624	3483	\N	\N	\N	2085000		50202020-00	2A1-102	999	1	1653	2024-07-29 09:16:09	2024-07-29 09:55:23		FAD			1	0	0	FAD	0	0	0
2464	DOC-2024-1649	07-1619	2643	\N	\N	\N	21730.47		50202020-00	2A1-AC (HR)	999	1	1649	2024-07-29 04:55:15	2024-07-29 09:56:25		FAD			1	0	0	FAD	0	0	0
2463	DOC-2024-1648	07-1618	2730	\N	\N	\N	76796		50202020-00	2A1-104	999	1	1648	2024-07-29 04:54:53	2024-07-29 09:56:36		FAD			1	0	0	FAD	0	0	0
2462	DOC-2024-1647	07-1616	1205	\N	\N	\N	14600		50202020-00	2A1-106	999	1	1647	2024-07-29 04:54:35	2024-07-29 09:56:51		FAD			1	0	0	FAD	0	0	0
2458	DOC-2024-1643	07-1612	3483	\N	\N	\N	30410190		50202020-00	2A1-104	999	1	1643	2024-07-29 04:51:56	2024-07-29 09:58:58		FAD			1	0	0	FAD	0	0	0
2460	DOC-2024-1645	07-1614	2764	\N	\N	\N	200		50205010-00	1A1	999	1	1645	2024-07-29 04:53:50	2024-07-29 09:57:52		FAD			1	0	0	FAD	0	0	0
2459	DOC-2024-1644	07-1613	3629	\N	\N	\N	49888		50202020-00	2A1-AC (NULAB)	999	1	1644	2024-07-29 04:53:29	2024-07-29 09:58:12		FAD			1	0	0	FAD	0	0	0
2448	DOC-2024-1633	07-1602	2760	\N	\N	\N	12030		50202020-00	2A1-AC (HR)	999	1	1633	2024-07-29 04:06:34	2024-07-29 09:58:24		FAD			1	0	0	FAD	0	0	0
2453	DOC-2024-1638	07-1607	2760	\N	\N	\N	5450		50202020-00	2A1-AC (HR)	999	1	1638	2024-07-29 04:08:16	2024-07-29 09:58:43		FAD			1	0	0	FAD	0	0	0
2457	DOC-2024-1642	07-1611	249	\N	\N	\N	510284.63		50202020-00	2A1-104	999	1	1642	2024-07-29 04:51:20	2024-07-29 09:59:09		FAD			1	0	0	FAD	0	0	0
2456	DOC-2024-1641	07-1610	2730	\N	\N	\N	3750		50202020-00	2A1-104	999	1	1641	2024-07-29 04:09:13	2024-07-29 09:59:26		FAD			1	0	0	FAD	0	0	0
2455	DOC-2024-1640	07-1609	2767	\N	\N	\N	3750		50202020-00	2A1-104	999	1	1640	2024-07-29 04:08:55	2024-07-29 09:59:35		FAD			1	0	0	FAD	0	0	0
2452	DOC-2024-1637	07-1606	3483	\N	\N	\N	1444000		50202020-00	2A1-101	999	1	1637	2024-07-29 04:07:50	2024-07-29 09:59:57		FAD			1	0	0	FAD	0	0	0
2451	DOC-2024-1636	07-1605	2745	\N	\N	\N	3630		50210030-00	1A1	999	1	1636	2024-07-29 04:07:34	2024-07-29 10:00:26		FAD			1	0	0	FAD	0	0	0
2450	DOC-2024-1635	07-1604	3483	\N	\N	\N	26250		50202010-02	2A2A-104	999	1	1635	2024-07-29 04:07:14	2024-07-29 10:00:39		FAD			1	0	0	FAD	0	0	0
2449	DOC-2024-1634	07-1603	3483	\N	\N	\N	3404000		50202020-00	2A1-101	999	1	1634	2024-07-29 04:06:51	2024-07-29 10:00:51		FAD			1	0	0	FAD	0	0	0
2447	DOC-2024-1632	07-1600	1034	\N	\N	\N	405950		50202020-00	2A1-101	999	1	1632	2024-07-29 04:06:15	2024-07-29 10:01:36		FAD			1	0	0	FAD	0	0	0
2446	DOC-2024-1631	07-1599	3628	\N	\N	\N	36000		50202020-00	2A2B-106	999	1	1631	2024-07-29 04:05:44	2024-07-29 10:01:53		FAD			1	0	0	FAD	0	0	0
2492	DOC-2024-1677	07-1655	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1677	2024-07-29 09:49:11	2024-07-29 09:49:47		FAD			1	0	0	FAD	0	0	0
2491	DOC-2024-1676	07-1654	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1676	2024-07-29 09:48:51	2024-07-29 09:49:54		FAD			1	0	0	FAD	0	0	0
2490	DOC-2024-1675	07-1653	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1675	2024-07-29 09:48:19	2024-07-29 09:50:01		FAD			1	0	0	FAD	0	0	0
2489	DOC-2024-1674	07-1652	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1674	2024-07-29 09:48:04	2024-07-29 09:50:09		FAD			1	0	0	FAD	0	0	0
2488	DOC-2024-1673	07-1651	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1673	2024-07-29 09:47:33	2024-07-29 09:50:18		FAD			1	0	0	FAD	0	0	0
2487	DOC-2024-1672	07-1650	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1672	2024-07-29 09:47:19	2024-07-29 09:50:26		FAD			1	0	0	FAD	0	0	0
2486	DOC-2024-1671	07-1649	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1671	2024-07-29 09:46:59	2024-07-29 09:50:34		FAD			1	0	0	FAD	0	0	0
2485	DOC-2024-1670	07-1648	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1670	2024-07-29 09:46:43	2024-07-29 09:50:41		FAD			1	0	0	FAD	0	0	0
2484	DOC-2024-1669	07-1647	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1669	2024-07-29 09:46:28	2024-07-29 09:50:48		FAD			1	0	0	FAD	0	0	0
2483	DOC-2024-1668	07-1646	2757	\N	\N	\N	12777.78		50202020-00	2A1-101	999	1	1668	2024-07-29 09:46:08	2024-07-29 09:51:11		FAD			1	0	0	FAD	0	0	0
2482	DOC-2024-1667	07-1641	2726	\N	\N	\N	30000		50202020-00	2A1-AC (HR)	999	1	1667	2024-07-29 09:45:51	2024-07-29 09:51:34		FAD			1	0	0	FAD	0	0	0
2481	DOC-2024-1666	07-1640	1103	\N	\N	\N	3708993.48		50202020-00	2A1-104	999	1	1666	2024-07-29 09:45:36	2024-07-29 09:51:47		FAD			1	0	0	FAD	0	0	0
2480	DOC-2024-1665	07-1639	1103	\N	\N	\N	111089.1		50202020-00	2A1-104	999	1	1665	2024-07-29 09:45:16	2024-07-29 09:51:57		FAD			1	0	0	FAD	0	0	0
2479	DOC-2024-1664	07-1638	1103	\N	\N	\N	247420.39		50202020-00	2A1-104	999	1	1664	2024-07-29 09:28:12	2024-07-29 09:52:09		FAD			1	0	0	FAD	0	0	0
2478	DOC-2024-1663	07-1637	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1663	2024-07-29 09:27:46	2024-07-29 09:52:23		FAD			1	0	0	FAD	0	0	0
2477	DOC-2024-1662	07-1634	3483	\N	\N	\N	496800		50202020-00	2A1-104	999	1	1662	2024-07-29 09:27:24	2024-07-29 09:52:39		FAD			1	0	0	FAD	0	0	0
2476	DOC-2024-1661	07-1633	3483	\N	\N	\N	25920		50202010-02	2A2A-104	999	1	1661	2024-07-29 09:27:08	2024-07-29 09:52:48		FAD			1	0	0	FAD	0	0	0
2475	DOC-2024-1660	07-1632	3483	\N	\N	\N	372115		50202020-00	2A1-106	999	1	1660	2024-07-29 09:19:18	2024-07-29 09:52:57		FAD			1	0	0	FAD	0	0	0
2474	DOC-2024-1659	07-1630	3630	\N	\N	\N	54000		50202020-00	2A1-104	999	1	1659	2024-07-29 09:18:58	2024-07-29 09:53:17		FAD			1	0	0	FAD	0	0	0
2473	DOC-2024-1658	07-1629	236	\N	\N	\N	55909		50202020-00	2A1-104	999	1	1658	2024-07-29 09:17:52	2024-07-29 09:53:27		FAD			1	0	0	FAD	0	0	0
2465	DOC-2024-1650	07-1621	2727	\N	\N	\N	20000		50202020-00	2A1-AC (FAD)	999	1	1650	2024-07-29 04:55:37	2024-07-29 09:53:49		FAD			1	0	0	FAD	0	0	0
2469	DOC-2024-1654	07-1625	1103	\N	\N	\N	5896594.73		50202020-00	2A1-104	999	1	1654	2024-07-29 09:16:30	2024-07-29 09:55:43		FAD			1	0	0	FAD	0	0	0
2470	DOC-2024-1655	07-1626	1103	\N	\N	\N	984643.38		50202020-00	2A1-104	999	1	1655	2024-07-29 09:16:55	2024-07-29 09:55:49		FAD			1	0	0	FAD	0	0	0
2471	DOC-2024-1656	07-1627	465	\N	\N	\N	6963.84		50202020-00	2A1-104	999	1	1656	2024-07-29 09:17:16	2024-07-29 09:55:57		FAD			1	0	0	FAD	0	0	0
2472	DOC-2024-1657	07-1628	285	\N	\N	\N	6963.84		50202020-00	2A1-104	999	1	1657	2024-07-29 09:17:35	2024-07-29 09:56:04		FAD			1	0	0	FAD	0	0	0
2461	DOC-2024-1646	07-1615	1027	\N	\N	\N	61616		50202020-00	2A1-106	999	1	1646	2024-07-29 04:54:08	2024-07-29 09:57:39		FAD			1	0	0	FAD	0	0	0
2454	DOC-2024-1639	07-1608	2765	\N	\N	\N	400000		50202020-00	2A1-101	999	1	1639	2024-07-29 04:08:35	2024-07-29 09:59:45		FAD			1	0	0	FAD	0	0	0
2514	DOC-2024-1694	07-1675	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1694	2024-07-30 03:45:59	2024-07-30 04:36:10		FAD			1	0	0	FAD	0	0	0
2513	DOC-2024-1693	07-1674	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1693	2024-07-30 03:45:40	2024-07-30 04:36:19		FAD			1	0	0	FAD	0	0	0
2512	DOC-2024-1692	07-1673	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1692	2024-07-30 03:45:23	2024-07-30 04:36:29		FAD			1	0	0	FAD	0	0	0
2511	DOC-2024-1691	07-1672	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1691	2024-07-30 03:45:01	2024-07-30 04:36:44		FAD			1	0	0	FAD	0	0	0
2510	DOC-2024-1690	07-1671	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1690	2024-07-30 03:44:40	2024-07-30 04:37:06		FAD			1	0	0	FAD	0	0	0
2508	DOC-2024-1688	07-1669	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1688	2024-07-30 03:43:51	2024-07-30 04:37:54		FAD			1	0	0	FAD	0	0	0
2506	DOC-2024-1686	07-1666	2860	\N	\N	\N	120358.2		50212020-00	1A1	999	1	1686	2024-07-30 03:43:07	2024-07-30 04:38:07		FAD			1	0	0	FAD	0	0	0
2505	DOC-2024-1685	07-1664	2748	\N	\N	\N	2588		50202020-00	2A1-AC (HR)	999	1	1685	2024-07-30 03:42:22	2024-07-30 04:38:28		FAD			1	0	0	FAD	0	0	0
2504	DOC-2024-1684	07-1663	3319	\N	\N	\N	609314.68		50202020-00	2A1-AC	999	1	1684	2024-07-30 03:42:02	2024-07-30 04:38:42		FAD			1	0	0	FAD	0	0	0
2498	DOC-2024-1683	07-1662	3483	\N	\N	\N	20000		50102020-00	1A1	999	1	1683	2024-07-30 03:41:38	2024-07-30 04:38:53		FAD			1	0	0	FAD	0	0	0
2497	DOC-2024-1682	07-1661	2714	\N	\N	\N	2735		50202020-00	2A1-AC (Indie Siyensya)	999	1	1682	2024-07-30 03:39:18	2024-07-30 04:39:07		FAD			1	0	0	FAD	0	0	0
2496	DOC-2024-1681	07-1660	2787	\N	\N	\N	80000		50202020-00	2A1-AC (Indie Siyensya)	999	1	1681	2024-07-30 03:38:58	2024-07-30 04:39:24		FAD			1	0	0	FAD	0	0	0
2495	DOC-2024-1680	07-1659	3283	\N	\N	\N	235780		50202020-00	2A1-101 (Patriot)	999	1	1680	2024-07-30 03:38:39	2024-07-30 04:39:36		FAD			1	0	0	FAD	0	0	0
2494	DOC-2024-1679	07-1658	3629	\N	\N	\N	4080		50202020-00	2A1-101	999	1	1679	2024-07-30 03:38:18	2024-07-30 04:39:45		FAD			1	0	0	FAD	0	0	0
2493	DOC-2024-1678	07-1657	3631	\N	\N	\N	1350		50202020-00	2A2B-106	999	1	1678	2024-07-30 03:37:57	2024-07-30 04:39:56		FAD			1	0	0	FAD	0	0	0
2549	DOC-2024-1728	\N	3635	\N	\N	\N	309970.46		50202020-00	2A1-104	999	0	1728	2024-07-30 04:05:58	\N		FAD			0	0	0	FAD	0	0	0
2560	DOC-2024-1738	07-1739	3640	\N	\N	\N	5808.76		50202020-00	2A1-AC (Scholar Grad)	999	1	1738	2024-07-30 04:12:04	2024-07-30 04:13:54		FAD			1	0	0	FAD	0	0	0
2559	DOC-2024-1737	07-1738	3639	\N	\N	\N	11993.69		50202020-00	2A1-AC (Scholar Grad)	999	1	1737	2024-07-30 04:11:28	2024-07-30 04:14:08		FAD			1	0	0	FAD	0	0	0
2558	DOC-2024-1736	07-1737	3638	\N	\N	\N	14452.57		50202020-00	2A1-AC (Scholar Grad)	999	1	1736	2024-07-30 04:10:43	2024-07-30 04:14:18		FAD			1	0	0	FAD	0	0	0
2557	DOC-2024-1735	07-1736	3637	\N	\N	\N	16014.25		50202020-00	2A1-AC (Scholar Grad)	999	1	1735	2024-07-30 04:10:02	2024-07-30 04:14:29		FAD			1	0	0	FAD	0	0	0
2555	DOC-2024-1733	07-1720	3483	\N	\N	\N	1025000		50202020-00	2A1-101	999	1	1733	2024-07-30 04:08:24	2024-07-30 04:14:56		FAD			1	0	0	FAD	0	0	0
2554	DOC-2024-1732	07-1719	3483	\N	\N	\N	2048625		50202020-00	2A1-104	999	1	1732	2024-07-30 04:08:08	2024-07-30 04:15:07		FAD			1	0	0	FAD	0	0	0
2553	DOC-2024-1731	07-1717	3483	\N	\N	\N	108000		50202020-00	2A1-104	999	1	1731	2024-07-30 04:07:48	2024-07-30 04:15:17		FAD			1	0	0	FAD	0	0	0
2551	DOC-2024-1730	07-1716	1067	\N	\N	\N	159999.96		50202020-00	2A1-101	999	1	1730	2024-07-30 04:07:30	2024-07-30 04:15:30		FAD			1	0	0	FAD	0	0	0
2552	DOC-2024-1730	07-1716	1067	\N	\N	\N	4746665.48		50202020-00	2A1-102	999	1	1730	2024-07-30 04:07:30	2024-07-30 04:15:30		FAD			1	0	0	FAD	0	0	0
2550	DOC-2024-1729	07-1715	3635	\N	\N	\N	306970.46		50202020-00	2A1-104	999	1	1729	2024-07-30 04:06:41	2024-07-30 04:15:40		FAD			1	0	0	FAD	0	0	0
2548	DOC-2024-1727	07-1709	1203	\N	\N	\N	291588		50202020-00	2A1-104	999	1	1727	2024-07-30 04:05:09	2024-07-30 04:16:18		FAD			1	0	0	FAD	0	0	0
2547	DOC-2024-1726	07-1708	2740	\N	\N	\N	3750		50202020-00	2A1-AC (NULAB)	999	1	1726	2024-07-30 03:59:59	2024-07-30 04:16:44		FAD			1	0	0	FAD	0	0	0
2546	DOC-2024-1725	07-1707	3483	\N	\N	\N	21100		50202020-00	2A1-AC (HR)	999	1	1725	2024-07-30 03:59:43	2024-07-30 04:24:45		FAD			1	0	0	FAD	0	0	0
2545	DOC-2024-1724	07-1706	1032	\N	\N	\N	371904		50202020-00	2A1-104	999	1	1724	2024-07-30 03:59:25	2024-07-30 04:24:54		FAD			1	0	0	FAD	0	0	0
2544	DOC-2024-1723	07-1705	1027	\N	\N	\N	581892		50202020-00	2A1-104	999	1	1723	2024-07-30 03:59:05	2024-07-30 04:25:03		FAD			1	0	0	FAD	0	0	0
2543	DOC-2024-1722	07-1704	1155	\N	\N	\N	81600		50202020-00	2A1-104	999	1	1722	2024-07-30 03:58:33	2024-07-30 04:25:16		FAD			1	0	0	FAD	0	0	0
2526	DOC-2024-1706	07-1688	1122	\N	\N	\N	1176315.69		50202020-00	2A1-104	999	1	1706	2024-07-30 03:50:18	2024-07-30 04:25:38		FAD			1	0	0	FAD	0	0	0
2542	DOC-2024-1721	07-1703	1059	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1721	2024-07-30 03:57:52	2024-07-30 04:25:45		FAD			1	0	0	FAD	0	0	0
2540	DOC-2024-1720	07-1702	1067	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1720	2024-07-30 03:57:28	2024-07-30 04:25:53		FAD			1	0	0	FAD	0	0	0
2541	DOC-2024-1720	07-1702	1067	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1720	2024-07-30 03:57:28	2024-07-30 04:25:53		FAD			1	0	0	FAD	0	0	0
2539	DOC-2024-1719	07-1701	1122	\N	\N	\N	1034394		50202020-00	2A1-104	999	1	1719	2024-07-30 03:56:51	2024-07-30 04:26:00		FAD			1	0	0	FAD	0	0	0
2538	DOC-2024-1718	07-1700	1196	\N	\N	\N	1115952		50202020-00	2A1-104	999	1	1718	2024-07-30 03:56:32	2024-07-30 04:26:08		FAD			1	0	0	FAD	0	0	0
2537	DOC-2024-1717	07-1699	1200	\N	\N	\N	1142316		50202020-00	2A1-104	999	1	1717	2024-07-30 03:55:59	2024-07-30 04:26:23		FAD			1	0	0	FAD	0	0	0
2536	DOC-2024-1716	07-1698	1121	\N	\N	\N	248466		50202020-00	2A1-104	999	1	1716	2024-07-30 03:55:29	2024-07-30 04:26:30		FAD			1	0	0	FAD	0	0	0
2535	DOC-2024-1715	07-1697	1192	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1715	2024-07-30 03:55:11	2024-07-30 04:26:39		FAD			1	0	0	FAD	0	0	0
2534	DOC-2024-1714	07-1696	1130	\N	\N	\N	248466		50202020-00	2A1-104	999	1	1714	2024-07-30 03:54:29	2024-07-30 04:26:46		FAD			1	0	0	FAD	0	0	0
2533	DOC-2024-1713	07-1695	3634	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1713	2024-07-30 03:54:12	2024-07-30 04:27:01		FAD			1	0	0	FAD	0	0	0
2532	DOC-2024-1712	07-1694	3633	\N	\N	\N	291588		50202020-00	2A1-104	999	1	1712	2024-07-30 03:53:24	2024-07-30 04:27:13		FAD			1	0	0	FAD	0	0	0
2531	DOC-2024-1711	07-1693	1060	\N	\N	\N	517092		50202020-00	2A1-104	999	1	1711	2024-07-30 03:52:00	2024-07-30 04:27:37		FAD			1	0	0	FAD	0	0	0
2530	DOC-2024-1710	07-1692	1183	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1710	2024-07-30 03:51:41	2024-07-30 04:27:46		FAD			1	0	0	FAD	0	0	0
2529	DOC-2024-1709	07-1691	1184	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1709	2024-07-30 03:51:20	2024-07-30 04:27:57		FAD			1	0	0	FAD	0	0	0
2528	DOC-2024-1708	07-1690	1031	\N	\N	\N	81600		50202020-00	2A1-104	999	1	1708	2024-07-30 03:50:56	2024-07-30 04:28:05		FAD			1	0	0	FAD	0	0	0
2527	DOC-2024-1707	07-1689	3527	\N	\N	\N	553092		50202020-00	2A1-104	999	1	1707	2024-07-30 03:50:36	2024-07-30 04:28:26		FAD			1	0	0	FAD	0	0	0
2525	DOC-2024-1705	07-1686	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1705	2024-07-30 03:49:37	2024-07-30 04:28:40		FAD			1	0	0	FAD	0	0	0
2507	DOC-2024-1687	07-1668	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	999	1	1687	2024-07-30 03:43:32	2024-07-30 04:28:56		FAD			1	0	0	FAD	0	0	0
2524	DOC-2024-1704	07-1685	3632	\N	\N	\N	180360		50202020-00	2A1-104	999	1	1704	2024-07-30 03:49:19	2024-07-30 04:34:42		FAD			1	0	0	FAD	0	0	0
2523	DOC-2024-1703	07-1684	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1703	2024-07-30 03:48:45	2024-07-30 04:34:50		FAD			1	0	0	FAD	0	0	0
2522	DOC-2024-1702	07-1683	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1702	2024-07-30 03:48:24	2024-07-30 04:34:57		FAD			1	0	0	FAD	0	0	0
2521	DOC-2024-1701	07-1682	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1701	2024-07-30 03:48:09	2024-07-30 04:35:06		FAD			1	0	0	FAD	0	0	0
2520	DOC-2024-1700	07-1681	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1700	2024-07-30 03:47:50	2024-07-30 04:35:13		FAD			1	0	0	FAD	0	0	0
2518	DOC-2024-1698	07-1679	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1698	2024-07-30 03:47:16	2024-07-30 04:35:32		FAD			1	0	0	FAD	0	0	0
2517	DOC-2024-1697	07-1678	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1697	2024-07-30 03:46:58	2024-07-30 04:35:42		FAD			1	0	0	FAD	0	0	0
2516	DOC-2024-1696	07-1677	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1696	2024-07-30 03:46:38	2024-07-30 04:35:49		FAD			1	0	0	FAD	0	0	0
2515	DOC-2024-1695	07-1676	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1695	2024-07-30 03:46:22	2024-07-30 04:35:58		FAD			1	0	0	FAD	0	0	0
2556	DOC-2024-1734		3636	\N	\N	\N	6127.47		50202020-00	2A1-AC (Scholar Grad)	999	1	1734	2024-07-30 04:09:20	2024-08-12 08:35:35		FAD			1	0	0	FAD	0	0	0
2519	DOC-2024-1699	07-1680	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1699	2024-07-30 03:47:34	2024-07-30 04:35:21		FAD			1	0	0	FAD	0	0	0
2509	DOC-2024-1689	07-1670	1103	\N	\N	\N	113960.26		50202020-00	2A1-104	999	1	1689	2024-07-30 03:44:22	2024-07-30 04:37:24		FAD			1	0	0	FAD	0	0	0
2499	DOC-2024-1683	07-1662	3483	\N	\N	\N	7500		50102020-00	2A1-2	999	1	1683	2024-07-30 03:41:38	2024-07-30 04:38:53		FAD			1	0	0	FAD	0	0	0
2500	DOC-2024-1683	07-1662	3483	\N	\N	\N	16500		50102020-00	2A2	999	1	1683	2024-07-30 03:41:38	2024-07-30 04:38:53		FAD			1	0	0	FAD	0	0	0
2501	DOC-2024-1683	07-1662	3483	\N	\N	\N	10500		50102030-01	1A1	999	1	1683	2024-07-30 03:41:38	2024-07-30 04:38:53		FAD			1	0	0	FAD	0	0	0
2502	DOC-2024-1683	07-1662	3483	\N	\N	\N	7500		50102030-01	2A1-2	999	1	1683	2024-07-30 03:41:38	2024-07-30 04:38:53		FAD			1	0	0	FAD	0	0	0
2503	DOC-2024-1683	07-1662	3483	\N	\N	\N	16500		50102030-01	2A2	999	1	1683	2024-07-30 03:41:38	2024-07-30 04:38:53		FAD			1	0	0	FAD	0	0	0
2561	DOC-2024-1739	\N	2704	\N	\N	\N	100000		00000000-00	1A1	999	0	1739	2024-08-05 09:38:45	\N		FAD			1	2	5	FAD	0	1	10
2562	DOC-2024-1740	07-1527	909	\N	\N	\N	57000		50202020-00	2A1-106	122	1	1740	2024-08-12 05:08:49	2024-08-12 05:09:48		FAD			1	0	0	FAD	0	0	0
2576	DOC-2024-1752	07-1583	1038	\N	\N	\N	33722500		50202020-00	2A1-101	122	1	1752	2024-08-12 05:21:01	2024-08-12 05:22:28		FAD			1	0	0	FAD	0	0	0
2577	DOC-2024-1752	07-1583	1038	\N	\N	\N	1777000		50202020-00	2A1-101 (RA10612)	122	1	1752	2024-08-12 05:21:01	2024-08-12 05:22:28		FAD			1	0	0	FAD	0	0	0
2578	DOC-2024-1752	07-1583	1038	\N	\N	\N	21854000		50202020-00	2A1-102	122	1	1752	2024-08-12 05:21:01	2024-08-12 05:22:28		FAD			1	0	0	FAD	0	0	0
2563	DOC-2024-1741	07-1528	1041	\N	\N	\N	3396500		50202020-00	2A1-101	122	1	1741	2024-08-12 05:09:32	2024-08-12 05:10:37		FAD			1	0	0	FAD	0	0	0
2564	DOC-2024-1741	07-1528	1041	\N	\N	\N	307500		50202020-00	2A1-101 (RA10612)	122	1	1741	2024-08-12 05:09:32	2024-08-12 05:10:37		FAD			1	0	0	FAD	0	0	0
2565	DOC-2024-1741	07-1528	1041	\N	\N	\N	1163500		50202020-00	2A1-102	122	1	1741	2024-08-12 05:09:32	2024-08-12 05:10:37		FAD			1	0	0	FAD	0	0	0
2566	DOC-2024-1742	07-1540	3483	\N	\N	\N	145856.61		50202020-00	2A1-101	122	1	1742	2024-08-12 05:11:19	2024-08-12 05:11:27		FAD			1	0	0	FAD	0	0	0
2567	DOC-2024-1743	07-1552	3441	\N	\N	\N	235300		50202010-02	2A2B-106	122	1	1743	2024-08-12 05:12:19	2024-08-12 05:12:28		FAD			1	0	0	FAD	0	0	0
2572	DOC-2024-1748	07-1565	3483	\N	\N	\N	64408.94		50202020-00	2A1-AC (Scholar Grad)	122	1	1748	2024-08-12 05:15:09	2024-08-12 05:15:24		FAD			1	0	0	FAD	0	0	0
2571	DOC-2024-1747	07-1564	606	\N	\N	\N	14047.37		50202020-00	2A1-AC (Scholar Grad)	122	1	1747	2024-08-12 05:14:50	2024-08-12 05:15:31		FAD			1	0	0	FAD	0	0	0
2570	DOC-2024-1746	07-1563	2063	\N	\N	\N	13698.06		50202020-00	2A1-AC (Scholar Grad)	122	1	1746	2024-08-12 05:14:21	2024-08-12 05:15:37		FAD			1	0	0	FAD	0	0	0
2569	DOC-2024-1745	07-1562	990	\N	\N	\N	14295.77		50202020-00	2A1-AC (Scholar Grad)	122	1	1745	2024-08-12 05:13:54	2024-08-12 05:15:44		FAD			1	0	0	FAD	0	0	0
2568	DOC-2024-1744	07-1561	1834	\N	\N	\N	11365.35		50202020-00	2A1-AC (Scholar Grad)	122	1	1744	2024-08-12 05:13:29	2024-08-12 05:15:51		FAD			1	0	0	FAD	0	0	0
2573	DOC-2024-1749	07-1570	2752	\N	\N	\N	2250		50202020-00	2A1-AC	122	1	1749	2024-08-12 05:17:40	2024-08-12 05:18:05		FAD			1	0	0	FAD	0	0	0
2574	DOC-2024-1750	07-1571	2717	\N	\N	\N	1350		50202020-00	2A1-AC	122	1	1750	2024-08-12 05:17:54	2024-08-12 05:18:12		FAD			1	0	0	FAD	0	0	0
2575	DOC-2024-1751	07-1575	3291	\N	\N	\N	3154540.51		50202020-00	2A1-101	122	1	1751	2024-08-12 05:18:59	2024-08-12 05:19:09		FAD			1	0	0	FAD	0	0	0
2579	DOC-2024-1753	07-1586	1338	\N	\N	\N	5282000		50202020-00	2A1-101 (Patriot)	122	1	1753	2024-08-12 05:21:34	2024-08-12 05:22:44		FAD			1	0	0	FAD	0	0	0
2580	DOC-2024-1754	07-1588	3483	\N	\N	\N	3367690.67		50202020-00	2A1-104	122	1	1754	2024-08-12 05:22:08	2024-08-12 05:22:52		FAD			1	0	0	FAD	0	0	0
2581	DOC-2024-1754	07-1588	3483	\N	\N	\N	558682.10		50202020-00	2A1-103	122	1	1754	2024-08-12 05:22:08	2024-08-12 05:22:52		FAD			1	0	0	FAD	0	0	0
2582	DOC-2024-1755	07-1601	3187	\N	\N	\N	264992		50202020-00	2A1-AC (FAD)	122	1	1755	2024-08-12 07:25:08	2024-08-12 07:25:19		FAD			1	0	0	FAD	0	0	0
2583	DOC-2024-1756	07-1617	3483	\N	\N	\N	593184		50202020-00	2A1-101	122	1	1756	2024-08-12 07:25:54	2024-08-12 07:26:04		FAD			1	0	0	FAD	0	0	0
2584	DOC-2024-1757	07-1620	1039	\N	\N	\N	54143500		50202020-00	2A1-101	122	1	1757	2024-08-12 07:27:24	2024-08-12 07:27:34		FAD			1	0	0	FAD	0	0	0
2585	DOC-2024-1757	07-1620	1039	\N	\N	\N	3263500		50202020-00	2A1-101 (RA10612)	122	1	1757	2024-08-12 07:27:24	2024-08-12 07:27:34		FAD			1	0	0	FAD	0	0	0
2586	DOC-2024-1757	07-1620	1039	\N	\N	\N	30387000		50202020-00	2A1-102	122	1	1757	2024-08-12 07:27:24	2024-08-12 07:27:34		FAD			1	0	0	FAD	0	0	0
2587	DOC-2024-1758	07-1631	1200	\N	\N	\N	294180		50202020-00	2A1-104	122	1	1758	2024-08-12 07:37:16	2024-08-12 07:38:34		FAD			1	0	0	FAD	0	0	0
2588	DOC-2024-1759	07-1635	3483	\N	\N	\N	63176		50202020-00	2A1-101	122	1	1759	2024-08-12 07:38:00	2024-08-12 07:38:47		FAD			1	0	0	FAD	0	0	0
2589	DOC-2024-1760	07-1636	3527	\N	\N	\N	724160		50202020-00	2A1-104	122	1	1760	2024-08-12 07:38:24	2024-08-12 07:38:58		FAD			1	0	0	FAD	0	0	0
2592	DOC-2024-1762	07-1643	1035	\N	\N	\N	14082500		50202020-00	2A1-101	122	1	1762	2024-08-12 07:45:59	2024-08-12 08:07:11		FAD			1	0	0	FAD	0	0	0
2595	DOC-2024-1763	07-1644	2766	\N	\N	\N	17989		50203990-00	1A1	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2596	DOC-2024-1763	07-1644	2766	\N	\N	\N	899		50203010-02	1A1	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2597	DOC-2024-1763	07-1644	2766	\N	\N	\N	14639.85		50213060-01	1A1	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2590	DOC-2024-1761	07-1642	2745	\N	\N	\N	12237.1		50210030-00	1A1	122	1	1761	2024-08-12 07:45:11	2024-08-12 08:07:01		FAD			1	0	0	FAD	0	0	0
2591	DOC-2024-1761	07-1642	2745	\N	\N	\N	1885		50203990-00	1A1	122	1	1761	2024-08-12 07:45:11	2024-08-12 08:07:01		FAD			1	0	0	FAD	0	0	0
2593	DOC-2024-1762	07-1643	1035	\N	\N	\N	1054500		50202020-00	2A1-101 (RA10612)	122	1	1762	2024-08-12 07:45:59	2024-08-12 08:07:11		FAD			1	0	0	FAD	0	0	0
2594	DOC-2024-1762	07-1643	1035	\N	\N	\N	6272500		50202020-00	2A1-102	122	1	1762	2024-08-12 07:45:59	2024-08-12 08:07:11		FAD			1	0	0	FAD	0	0	0
2603	DOC-2024-1763	07-1644	2766	\N	\N	\N	3430		50205020-01	2A2	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2598	DOC-2024-1763	07-1644	2766	\N	\N	\N	2810		50211990-00	1A1	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2599	DOC-2024-1763	07-1644	2766	\N	\N	\N	14540		50205020-01	1A1	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2600	DOC-2024-1763	07-1644	2766	\N	\N	\N	14000		50203090-00	2A1-101	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2601	DOC-2024-1763	07-1644	2766	\N	\N	\N	21188		50201010-00	2A1-101	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2602	DOC-2024-1763	07-1644	2766	\N	\N	\N	288		50202020-00	2A1-AC (FAD)	122	1	1763	2024-08-12 08:06:00	2024-08-12 08:07:29		FAD			1	0	0	FAD	0	0	0
2604	DOC-2024-1764	07-1645	1036	\N	\N	\N	38350000		50202020-00	2A1-101	122	1	1764	2024-08-12 08:06:46	2024-08-12 08:07:38		FAD			1	0	0	FAD	0	0	0
2605	DOC-2024-1764	07-1645	1036	\N	\N	\N	2218500		50202020-00	2A1-101 (RA10612)	122	1	1764	2024-08-12 08:06:46	2024-08-12 08:07:38		FAD			1	0	0	FAD	0	0	0
2606	DOC-2024-1764	07-1645	1036	\N	\N	\N	11883500		50202020-00	2A1-102	122	1	1764	2024-08-12 08:06:46	2024-08-12 08:07:38		FAD			1	0	0	FAD	0	0	0
2607	DOC-2024-1765	07-1656	3171	\N	\N	\N	453550		50202020-00	2A1-AC (Scholar Grad)	122	1	1765	2024-08-12 08:08:22	2024-08-12 08:08:35		FAD			1	0	0	FAD	0	0	0
2609	DOC-2024-1767	07-1667	3483	\N	\N	\N	868159.6		50202020-00	2A1-104	122	1	1767	2024-08-12 08:09:26	2024-08-12 08:09:35		FAD			1	0	0	FAD	0	0	0
2608	DOC-2024-1766	07-1665	2942	\N	\N	\N	120219		50202020-00	2A1-AC (POSTER)	122	1	1766	2024-08-12 08:09:11	2024-08-12 08:09:44		FAD			1	0	0	FAD	0	0	0
2610	DOC-2024-1768	07-1687	1121	\N	\N	\N	177600		50202020-00	2A1-104	122	1	1768	2024-08-12 08:10:48	2024-08-12 08:11:03		FAD			1	0	0	FAD	0	0	0
2611	DOC-2024-1769	07-1710	3634	\N	\N	\N	191860		50202020-00	2A1-104	122	1	1769	2024-08-12 08:12:16	2024-08-12 08:13:43		FAD			1	0	0	FAD	0	0	0
2612	DOC-2024-1770	07-1711	1192	\N	\N	\N	76280		50202020-00	2A1-104	122	1	1770	2024-08-12 08:12:31	2024-08-12 08:13:50		FAD			1	0	0	FAD	0	0	0
2613	DOC-2024-1771	07-1712	1067	\N	\N	\N	251000		50202020-00	2A1-104	122	1	1771	2024-08-12 08:12:52	2024-08-12 08:13:58		FAD			1	0	0	FAD	0	0	0
2614	DOC-2024-1772	07-1713	1059	\N	\N	\N	89520		50202020-00	2A1-104	122	1	1772	2024-08-12 08:13:10	2024-08-12 08:14:09		FAD			1	0	0	FAD	0	0	0
2615	DOC-2024-1773	07-1714	450	\N	\N	\N	11579.14		50202020-00	2A1-104	122	1	1773	2024-08-12 08:13:28	2024-08-12 08:14:17		FAD			1	0	0	FAD	0	0	0
2616	DOC-2024-1774	07-1718	3483	\N	\N	\N	62200		50202020-00	2A1-101	122	1	1774	2024-08-12 08:15:16	2024-08-12 08:15:25		FAD			1	0	0	FAD	0	0	0
2617	DOC-2024-1775	07-1721	2227	\N	\N	\N	18646.15		50202010-02	2A2B-106	122	1	1775	2024-08-12 08:23:24	2024-08-12 08:30:51		FAD			1	0	0	FAD	0	0	0
2618	DOC-2024-1776	07-1722	1433	\N	\N	\N	16574.35		50202010-02	2A2B-106	122	1	1776	2024-08-12 08:23:46	2024-08-12 08:31:05		FAD			1	0	0	FAD	0	0	0
2619	DOC-2024-1777	07-1723	2053	\N	\N	\N	16574.35		50202010-02	2A2B-106	122	1	1777	2024-08-12 08:24:10	2024-08-12 08:31:16		FAD			1	0	0	FAD	0	0	0
2620	DOC-2024-1778	07-1724	1661	\N	\N	\N	13466.66		50202010-02	2A2B-106	122	1	1778	2024-08-12 08:24:31	2024-08-12 08:31:25		FAD			1	0	0	FAD	0	0	0
2621	DOC-2024-1779	07-1725	3502	\N	\N	\N	13466.66		50202010-02	2A2B-106	122	1	1779	2024-08-12 08:25:02	2024-08-12 08:31:34		FAD			1	0	0	FAD	0	0	0
2622	DOC-2024-1780	07-1726	2566	\N	\N	\N	13466.66		50202010-02	2A2B-106	122	1	1780	2024-08-12 08:25:29	2024-08-12 08:32:09		FAD			1	0	0	FAD	0	0	0
2623	DOC-2024-1781	07-1727	3483	\N	\N	\N	191640.94		50202010-02	2A2B-106	122	1	1781	2024-08-12 08:25:50	2024-08-12 08:32:22		FAD			1	0	0	FAD	0	0	0
2624	DOC-2024-1782	07-1728	1449	\N	\N	\N	29520		50202020-00	2A1-AC (FAD)	122	1	1782	2024-08-12 08:26:13	2024-08-12 08:32:33		FAD			1	0	0	FAD	0	0	0
2625	DOC-2024-1783	07-1729	2898	\N	\N	\N	63000		50203990-00	2A2	122	1	1783	2024-08-12 08:26:42	2024-08-12 08:32:44		FAD			1	0	0	FAD	0	0	0
2628	DOC-2024-1786	07-1730	3641	\N	\N	\N	210210		50202020-00	2A1-AC (FAD)	122	1	1786	2024-08-12 08:29:15	2024-08-12 08:33:10		FAD			1	0	0	FAD	0	0	0
2626	DOC-2024-1784	07-1731	3489	\N	\N	\N	31146		50201010-00	2A1-101	122	1	1784	2024-08-12 08:27:26	2024-08-12 08:33:22		FAD			1	0	0	FAD	0	0	0
2629	DOC-2024-1787	07-1732	3642	\N	\N	\N	10518.74		50202020-00	2A1-AC (Scholar Grad)	122	1	1787	2024-08-12 08:29:38	2024-08-12 08:33:48		FAD			1	0	0	FAD	0	0	0
2627	DOC-2024-1785	07-1733	640	\N	\N	\N	13628.88		50202020-00	2A1-AC (Scholar Grad)	122	1	1785	2024-08-12 08:27:54	2024-08-12 08:34:09		FAD			1	0	0	FAD	0	0	0
2631	DOC-2024-1789	07-1734	3636	\N	\N	\N	6127.47		50202020-00	2A1-AC (Scholar Grad)	122	1	1789	2024-08-12 08:34:37	2024-08-12 08:34:47		FAD			1	0	0	FAD	0	0	0
2630	DOC-2024-1788	07-1735	3644	\N	\N	\N	6540		50202020-00	2A1-AC (Scholar Grad)	122	1	1788	2024-08-12 08:30:18	2024-08-12 08:35:02		FAD			1	0	0	FAD	0	0	0
2640	DOC-2024-1798	07-1748	2752	\N	\N	\N	21423.25		50202010-02	2A2B-101	999	1	1798	2024-08-12 08:51:18	2024-08-12 09:04:54		FAD			1	0	0	FAD	0	0	0
2639	DOC-2024-1797	07-1747	3483	\N	\N	\N	2596.14		50202020-00	2A1-104	999	1	1797	2024-08-12 08:50:51	2024-08-12 09:05:03		FAD			1	0	0	FAD	0	0	0
2638	DOC-2024-1796	07-1746	3486	\N	\N	\N	55396.53		50202020-00	2A1-101	999	1	1796	2024-08-12 08:50:36	2024-08-12 09:05:20		FAD			1	0	0	FAD	0	0	0
2637	DOC-2024-1795	07-1745	1184	\N	\N	\N	106466		50202020-00	2A1-104	999	1	1795	2024-08-12 08:50:18	2024-08-12 09:05:29		FAD			1	0	0	FAD	0	0	0
2635	DOC-2024-1793	07-1743	2742	\N	\N	\N	100000		50202020-00	2A1-101 (Patriot)	999	1	1793	2024-08-12 08:49:30	2024-08-12 09:05:46		FAD			1	0	0	FAD	0	0	0
2634	DOC-2024-1792	07-1742	2949	\N	\N	\N	1398193.55		50202020-00	2A1-AC	999	1	1792	2024-08-12 08:48:51	2024-08-12 09:05:58		FAD			1	0	0	FAD	0	0	0
2633	DOC-2024-1791	07-1741	2949	\N	\N	\N	169806.46		50202020-00	2A1-AC	999	1	1791	2024-08-12 08:48:05	2024-08-12 09:06:09		FAD			1	0	0	FAD	0	0	0
2632	DOC-2024-1790	07-1740	3545	\N	\N	\N	2919925		50202020-00	2A1-101	999	1	1790	2024-08-12 08:46:56	2024-08-12 09:06:17		FAD			1	0	0	FAD	0	0	0
2666	DOC-2024-1819	07-1770	2928	\N	\N	\N	23000		50202020-00	2A1-AC (FAD)	999	1	1819	2024-08-12 09:00:26	2024-08-12 09:00:45		FAD			1	0	0	FAD	0	0	0
2665	DOC-2024-1818	07-1769	3483	\N	\N	\N	73120.52		50202010-02	2A2B-101	999	1	1818	2024-08-12 09:00:10	2024-08-12 09:00:52		FAD			1	0	0	FAD	0	0	0
2664	DOC-2024-1817	07-1768	3626	\N	\N	\N	48880		50202010-02	2A2A-104	999	1	1817	2024-08-12 08:59:51	2024-08-12 09:00:59		FAD			1	0	0	FAD	0	0	0
2663	DOC-2024-1816	07-1767	332	\N	\N	\N	8735.87		50202020-00	2A1-106	999	1	1816	2024-08-12 08:59:33	2024-08-12 09:01:06		FAD			1	0	0	FAD	0	0	0
2661	DOC-2024-1815	07-1766	3178	\N	\N	\N	22325		50202020-00	2A1-AC (HR)	999	1	1815	2024-08-12 08:59:06	2024-08-12 09:01:23		FAD			1	0	0	FAD	0	0	0
2662	DOC-2024-1815	07-1766	3178	\N	\N	\N	3490		50202020-00	2A1-AC (FAD)	999	1	1815	2024-08-12 08:59:06	2024-08-12 09:01:23		FAD			1	0	0	FAD	0	0	0
2660	DOC-2024-1814	07-1765	3645	\N	\N	\N	500500		50202010-02	2A2B-101	999	1	1814	2024-08-12 08:58:40	2024-08-12 09:01:32		FAD			1	0	0	FAD	0	0	0
2659	DOC-2024-1813	07-1764	3645	\N	\N	\N	91200		50202020-00	2A1-AC (POSTER)	999	1	1813	2024-08-12 08:58:11	2024-08-12 09:01:39		FAD			1	0	0	FAD	0	0	0
2658	DOC-2024-1812	07-1763	1514	\N	\N	\N	3020		50202020-00	2A1-101	999	1	1812	2024-08-12 08:57:38	2024-08-12 09:01:56		FAD			1	0	0	FAD	0	0	0
2655	DOC-2024-1811	07-1762	2925	\N	\N	\N	387000		50202020-00	2A1-AC (POSTER)	999	1	1811	2024-08-12 08:57:20	2024-08-12 09:02:03		FAD			1	0	0	FAD	0	0	0
2656	DOC-2024-1811	07-1762	2925	\N	\N	\N	357000		50202020-00	2A1-101	999	1	1811	2024-08-12 08:57:20	2024-08-12 09:02:03		FAD			1	0	0	FAD	0	0	0
2657	DOC-2024-1811	07-1762	2925	\N	\N	\N	67000		50202010-02	2A2A-102	999	1	1811	2024-08-12 08:57:20	2024-08-12 09:02:03		FAD			1	0	0	FAD	0	0	0
2654	DOC-2024-1810	07-1761	3302	\N	\N	\N	24614.30		50202020-00	1A1	999	1	1810	2024-08-12 08:56:33	2024-08-12 09:02:10		FAD			1	0	0	FAD	0	0	0
2653	DOC-2024-1809	07-1760	2034	\N	\N	\N	18185.85		50202020-00	2A1-101	999	1	1809	2024-08-12 08:56:17	2024-08-12 09:02:17		FAD			1	0	0	FAD	0	0	0
2652	DOC-2024-1808	07-1759	1757	\N	\N	\N	12430.76		50202020-00	2A1-101 (Patriot)	999	1	1808	2024-08-12 08:55:59	2024-08-12 09:02:30		FAD			1	0	0	FAD	0	0	0
2651	DOC-2024-1807	07-1758	2514	\N	\N	\N	62153.82		50202020-00	2A1-101 (Patriot)	999	1	1807	2024-08-12 08:55:42	2024-08-12 09:02:38		FAD			1	0	0	FAD	0	0	0
2650	DOC-2024-1806	07-1757	1354	\N	\N	\N	62153.82		50202020-00	2A1-101 (Patriot)	999	1	1806	2024-08-12 08:55:24	2024-08-12 09:02:45		FAD			1	0	0	FAD	0	0	0
2649	DOC-2024-1805	07-1756	2465	\N	\N	\N	145025.58		50202020-00	2A1-101 (Patriot)	999	1	1805	2024-08-12 08:55:08	2024-08-12 09:02:56		FAD			1	0	0	FAD	0	0	0
2648	DOC-2024-1804	07-1755	2224	\N	\N	\N	62153.82		50202020-00	2A1-101 (Patriot)	999	1	1804	2024-08-12 08:54:47	2024-08-12 09:03:03		FAD			1	0	0	FAD	0	0	0
2645	DOC-2024-1803	07-1754	3483	\N	\N	\N	2307264.82		50202020-00	2A1-AC (HR)	999	1	1803	2024-08-12 08:54:26	2024-08-12 09:03:25		FAD			1	0	0	FAD	0	0	0
2646	DOC-2024-1803	07-1754	3483	\N	\N	\N	12268.5		50202020-00	2A1-AC (NULAB)	999	1	1803	2024-08-12 08:54:26	2024-08-12 09:03:25		FAD			1	0	0	FAD	0	0	0
2647	DOC-2024-1803	07-1754	3483	\N	\N	\N	17030.78		50211990-00	PD 997	999	1	1803	2024-08-12 08:54:26	2024-08-12 09:03:25		FAD			1	0	0	FAD	0	0	0
2644	DOC-2024-1802	07-1753	1103	\N	\N	\N	658643.98		50202020-00	2A1-104	999	1	1802	2024-08-12 08:53:37	2024-08-12 09:03:34		FAD			1	0	0	FAD	0	0	0
2643	DOC-2024-1801	07-1752	1103	\N	\N	\N	34476.51		50202020-00	2A1-104	999	1	1801	2024-08-12 08:53:17	2024-08-12 09:04:04		FAD			1	0	0	FAD	0	0	0
2642	DOC-2024-1800	07-1751	1103	\N	\N	\N	231193.77		50202020-00	2A1-104	999	1	1800	2024-08-12 08:52:59	2024-08-12 09:04:13		FAD			1	0	0	FAD	0	0	0
2641	DOC-2024-1799	07-1749	1103	\N	\N	\N	7725718.32		50202020-00	2A1-104	999	1	1799	2024-08-12 08:51:37	2024-08-12 09:04:28		FAD			1	0	0	FAD	0	0	0
2636	DOC-2024-1794	07-1744	3483	\N	\N	\N	199075.53		50202020-00	2A1-106	999	1	1794	2024-08-12 08:49:54	2024-08-12 09:05:37		FAD			1	0	0	FAD	0	0	0
2667	DOC-2024-1820	07-1750	1103	\N	\N	\N	1245094.94		50202020-00	2A1-104	122	1	1820	2024-08-12 09:06:42	2024-08-12 09:06:50		FAD			1	0	0	FAD	0	0	0
2684	DOC-2024-1830	07-1780	3163	\N	\N	\N	127200		50202020-00	2A1-101	122	1	1830	2024-08-12 09:25:22	2024-08-12 09:25:37		FAD			1	0	0	FAD	0	0	0
2683	DOC-2024-1829	07-1779	2857	\N	\N	\N	5000		50202020-00	2A1-101	122	1	1829	2024-08-12 09:25:03	2024-08-12 09:25:44		FAD			1	0	0	FAD	0	0	0
2682	DOC-2024-1828	07-1778	2735	\N	\N	\N	3394		50202020-00	2A1-AC (HR)	122	1	1828	2024-08-12 09:24:39	2024-08-12 09:27:04		FAD			1	0	0	FAD	0	0	0
2676	DOC-2024-1827	07-1777	3178	\N	\N	\N	6674		50202020-00	2A1-AC (FAD)	122	1	1827	2024-08-12 09:24:21	2024-08-12 09:27:12		FAD			1	0	0	FAD	0	0	0
2677	DOC-2024-1827	07-1777	3178	\N	\N	\N	800		50202020-00	2A1-AC (GAD)	122	1	1827	2024-08-12 09:24:21	2024-08-12 09:27:12		FAD			1	0	0	FAD	0	0	0
2678	DOC-2024-1827	07-1777	3178	\N	\N	\N	6852		50202020-00	2A1-AC (FAD)	122	1	1827	2024-08-12 09:24:21	2024-08-12 09:27:12		FAD			1	0	0	FAD	0	0	0
2675	DOC-2024-1826	07-1776	2768	\N	\N	\N	850		50202020-00	2A1-AC (NULAB)	122	1	1826	2024-08-12 09:11:08	2024-08-12 09:27:20		FAD			1	0	0	FAD	0	0	0
2674	DOC-2024-1825	07-1775	3527	\N	\N	\N	250000		50202020-00	2A1-104	122	1	1825	2024-08-12 09:10:52	2024-08-12 09:27:38		FAD			1	0	0	FAD	0	0	0
2673	DOC-2024-1824	07-1774	1059	\N	\N	\N	250000		50202020-00	2A1-104	122	1	1824	2024-08-12 09:10:30	2024-08-12 09:27:50		FAD			1	0	0	FAD	0	0	0
2670	DOC-2024-1823	07-1773	1034	\N	\N	\N	12669500		50202020-00	2A1-101	122	1	1823	2024-08-12 09:09:20	2024-08-12 09:27:58		FAD			1	0	0	FAD	0	0	0
2671	DOC-2024-1823	07-1773	1034	\N	\N	\N	847000		50202020-00	2A1-101 (RA10612)	122	1	1823	2024-08-12 09:09:20	2024-08-12 09:27:58		FAD			1	0	0	FAD	0	0	0
2672	DOC-2024-1823	07-1773	1034	\N	\N	\N	3202500		50202020-00	2A1-102	122	1	1823	2024-08-12 09:09:20	2024-08-12 09:27:58		FAD			1	0	0	FAD	0	0	0
2669	DOC-2024-1822	07-1772	1059	\N	\N	\N	300000		50202020-00	2A1-104	122	1	1822	2024-08-12 09:08:27	2024-08-12 09:28:06		FAD			1	0	0	FAD	0	0	0
2668	DOC-2024-1821	07-1771	3483	\N	\N	\N	12000		50202010-02	2A2B-101	122	1	1821	2024-08-12 09:08:10	2024-08-12 09:28:14		FAD			1	0	0	FAD	0	0	0
2679	DOC-2024-1827	07-1777	3178	\N	\N	\N	7200		50202010-02	2A2B-105	122	1	1827	2024-08-12 09:24:21	2024-08-12 09:27:12		FAD			1	0	0	FAD	0	0	0
2680	DOC-2024-1827	07-1777	3178	\N	\N	\N	2320		50203010-02	2A2	122	1	1827	2024-08-12 09:24:21	2024-08-12 09:27:12		FAD			1	0	0	FAD	0	0	0
2681	DOC-2024-1827	07-1777	3178	\N	\N	\N	2970		50202010-02	2A2A-102	122	1	1827	2024-08-12 09:24:21	2024-08-12 09:27:12		FAD			1	0	0	FAD	0	0	0
2694	DOC-2024-1840	07-1789	3646	\N	\N	\N	16335.06		50202010-02	2A2B-101	999	1	1840	2024-08-12 09:44:26	2024-08-12 09:44:47		FAD			1	0	0	FAD	0	0	0
2693	DOC-2024-1839	07-1790	1106	\N	\N	\N	103136.18		50202010-02	2A2B-106	122	1	1839	2024-08-12 09:43:50	2024-08-12 09:44:56		FAD			1	0	0	FAD	0	0	0
2692	DOC-2024-1838	07-1788	2755	\N	\N	\N	30000		50202010-02	2A2B-101	122	1	1838	2024-08-12 09:43:12	2024-08-12 09:45:04		FAD			1	0	0	FAD	0	0	0
2691	DOC-2024-1837	07-1787	1009	\N	\N	\N	157539.6		50202020-00	2A1-104	122	1	1837	2024-08-12 09:42:51	2024-08-12 09:45:11		FAD			1	0	0	FAD	0	0	0
2690	DOC-2024-1836	07-1786	1103	\N	\N	\N	337116.74		50202020-00	2A1-104	122	1	1836	2024-08-12 09:42:33	2024-08-12 09:45:18		FAD			1	0	0	FAD	0	0	0
2689	DOC-2024-1835	07-1785	3483	\N	\N	\N	285540.64		50202020-00	2A1-104	122	1	1835	2024-08-12 09:30:24	2024-08-12 09:45:36		FAD			1	0	0	FAD	0	0	0
2688	DOC-2024-1834	07-1784	3483	\N	\N	\N	1665.72		50202020-00	2A1-104	122	1	1834	2024-08-12 09:30:03	2024-08-12 09:45:43		FAD			1	0	0	FAD	0	0	0
2687	DOC-2024-1833	07-1783	3483	\N	\N	\N	4839000		50202020-00	2A1-101	122	1	1833	2024-08-12 09:29:44	2024-08-12 09:45:52		FAD			1	0	0	FAD	0	0	0
2686	DOC-2024-1832	07-1782	3483	\N	\N	\N	2020000		50202020-00	2A1-102	122	1	1832	2024-08-12 09:29:27	2024-08-12 09:45:59		FAD			1	0	0	FAD	0	0	0
2685	DOC-2024-1831	07-1781	3087	\N	\N	\N	217550		50202020-00	2A1-101	122	1	1831	2024-08-12 09:29:11	2024-08-12 09:46:07		FAD			1	0	0	FAD	0	0	0
2695	DOC-2024-1841	\N	3333	\N	\N	\N	7000		50202020-00	2A1-AC (HR)	999	0	1841	2024-08-12 09:46:44	\N		FAD			0	0	0	FAD	0	0	0
2706	DOC-2024-1851	07-1800	1184	\N	\N	\N	7673824		50202020-00	2A1-104	999	1	1851	2024-08-12 09:58:25	2024-08-12 09:59:25		FAD			1	0	0	FAD	0	0	0
2704	DOC-2024-1850	07-1799	2904	\N	\N	\N	13500		50203090-00	1A1	999	1	1850	2024-08-12 09:57:56	2024-08-12 09:59:44		FAD			1	0	0	FAD	0	0	0
2705	DOC-2024-1850	07-1799	2904	\N	\N	\N	44150		50213060-01	1A1	999	1	1850	2024-08-12 09:57:56	2024-08-12 09:59:44		FAD			1	0	0	FAD	0	0	0
2703	DOC-2024-1849	07-1798	3649	\N	\N	\N	41400		50202020-00	2A1-101	999	1	1849	2024-08-12 09:57:25	2024-08-12 09:59:55		FAD			1	0	0	FAD	0	0	0
2696	DOC-2024-1842	07-1791	3647	\N	\N	\N	7000		50202020-00	2A1-AC (HR)	999	1	1842	2024-08-12 09:47:52	2024-08-12 10:00:09		FAD			1	0	0	FAD	0	0	0
2697	DOC-2024-1843	07-1792	3333	\N	\N	\N	50003		50202020-00	2A1-101	999	1	1843	2024-08-12 09:48:07	2024-08-12 10:00:17		FAD			1	0	0	FAD	0	0	0
2698	DOC-2024-1844	07-1793	2879	\N	\N	\N	12000		50202020-00	2A1-103	999	1	1844	2024-08-12 09:54:46	2024-08-12 10:00:23		FAD			1	0	0	FAD	0	0	0
2699	DOC-2024-1845	07-1794	2879	\N	\N	\N	10000		50202020-00	2A1-101	999	1	1845	2024-08-12 09:55:01	2024-08-12 10:00:30		FAD			1	0	0	FAD	0	0	0
2700	DOC-2024-1846	07-1795	2879	\N	\N	\N	8000		50202020-00	2A1-101	999	1	1846	2024-08-12 09:55:16	2024-08-12 10:00:36		FAD			1	0	0	FAD	0	0	0
2701	DOC-2024-1847	07-1796	3312	\N	\N	\N	1749		50202010-02	2A2A-105A	999	1	1847	2024-08-12 09:55:34	2024-08-12 10:00:45		FAD			1	0	0	FAD	0	0	0
2702	DOC-2024-1848	07-1797	3648	\N	\N	\N	17700		50202010-02	2A2A-104	999	1	1848	2024-08-12 09:56:22	2024-08-12 10:00:54		FAD			1	0	0	FAD	0	0	0
2707	DOC-2024-1852	07-1801	1040	\N	\N	\N	15448000		50202020-00	2A1-101	999	1	1852	2024-08-12 10:01:54	2024-08-12 10:09:09		FAD			1	0	0	FAD	0	0	0
2708	DOC-2024-1852	07-1801	1040	\N	\N	\N	1395000		50202020-00	2A1-101 (RA10612)	999	1	1852	2024-08-12 10:01:54	2024-08-12 10:09:09		FAD			1	0	0	FAD	0	0	0
2709	DOC-2024-1852	07-1801	1040	\N	\N	\N	6326000		50202020-00	2A1-102	999	1	1852	2024-08-12 10:01:54	2024-08-12 10:09:09		FAD			1	0	0	FAD	0	0	0
2710	DOC-2024-1853	07-1802	1047	\N	\N	\N	6496000		50202020-00	2A1-101	999	1	1853	2024-08-12 10:03:54	2024-08-12 10:09:16		FAD			1	0	0	FAD	0	0	0
2711	DOC-2024-1853	07-1802	1047	\N	\N	\N	241000		50202020-00	2A1-101 (RA10612)	999	1	1853	2024-08-12 10:03:54	2024-08-12 10:09:16		FAD			1	0	0	FAD	0	0	0
2713	DOC-2024-1854	07-1803	1043	\N	\N	\N	26159500		50202020-00	2A1-101	999	1	1854	2024-08-12 10:05:11	2024-08-12 10:09:25		FAD			1	0	0	FAD	0	0	0
2714	DOC-2024-1854	07-1803	1043	\N	\N	\N	1451500		50202020-00	2A1-101 (RA10612)	999	1	1854	2024-08-12 10:05:11	2024-08-12 10:09:25		FAD			1	0	0	FAD	0	0	0
2715	DOC-2024-1854	07-1803	1043	\N	\N	\N	18242000		50202020-00	2A1-102	999	1	1854	2024-08-12 10:05:11	2024-08-12 10:09:25		FAD			1	0	0	FAD	0	0	0
2716	DOC-2024-1855	07-1804	1044	\N	\N	\N	10073157.87		50202020-00	2A1-101	999	1	1855	2024-08-12 10:05:45	2024-08-12 10:09:33		FAD			1	0	0	FAD	0	0	0
2717	DOC-2024-1855	07-1804	1044	\N	\N	\N	210500		50202020-00	2A1-101 (RA10612)	999	1	1855	2024-08-12 10:05:45	2024-08-12 10:09:33		FAD			1	0	0	FAD	0	0	0
2718	DOC-2024-1856	07-1805	1037	\N	\N	\N	34513500		50202020-00	2A1-101	999	1	1856	2024-08-12 10:06:31	2024-08-12 10:09:40		FAD			1	0	0	FAD	0	0	0
2719	DOC-2024-1856	07-1805	1037	\N	\N	\N	2542000		50202020-00	2A1-101 (RA10612)	999	1	1856	2024-08-12 10:06:31	2024-08-12 10:09:40		FAD			1	0	0	FAD	0	0	0
2721	DOC-2024-1857	07-1806	1042	\N	\N	\N	20086500		50202020-00	2A1-101	999	1	1857	2024-08-12 10:07:14	2024-08-12 10:09:49		FAD			1	0	0	FAD	0	0	0
2722	DOC-2024-1857	07-1806	1042	\N	\N	\N	1052500		50202020-00	2A1-101 (RA10612)	999	1	1857	2024-08-12 10:07:14	2024-08-12 10:09:49		FAD			1	0	0	FAD	0	0	0
2723	DOC-2024-1857	07-1806	1042	\N	\N	\N	13205000		50202020-00	2A1-102	999	1	1857	2024-08-12 10:07:14	2024-08-12 10:09:49		FAD			1	0	0	FAD	0	0	0
2724	DOC-2024-1858	07-1807	1046	\N	\N	\N	95901000		50202020-00	2A1-101	999	1	1858	2024-08-12 10:07:35	2024-08-12 10:09:56		FAD			1	0	0	FAD	0	0	0
2725	DOC-2024-1859	07-1808	1046	\N	\N	\N	85390000		50202020-00	2A1-102	999	1	1859	2024-08-12 10:07:57	2024-08-12 10:10:03		FAD			1	0	0	FAD	0	0	0
2726	DOC-2024-1860	07-1809	1046	\N	\N	\N	34636000		50202020-00	2A1-101	999	1	1860	2024-08-12 10:08:28	2024-08-12 10:10:10		FAD			1	0	0	FAD	0	0	0
2727	DOC-2024-1860	07-1809	1046	\N	\N	\N	3576000		50202020-00	2A1-101 (RA10612)	999	1	1860	2024-08-12 10:08:28	2024-08-12 10:10:10		FAD			1	0	0	FAD	0	0	0
2728	DOC-2024-1861	07-1810	3137	\N	\N	\N	49500		50202020-00	2A1-AC (POSTER)	999	1	1861	2024-08-12 10:08:45	2024-08-12 10:10:18		FAD			1	0	0	FAD	0	0	0
2712	DOC-2024-1853	07-1802	1047	\N	\N	\N	1528500		50202020-00	2A1-102	999	1	1853	2024-08-12 10:03:54	2024-08-12 10:09:16		FAD			1	0	0	FAD	0	0	0
2720	DOC-2024-1856	07-1805	1037	\N	\N	\N	15216500		50202020-00	2A1-102	999	1	1856	2024-08-12 10:06:31	2024-08-12 10:09:40		FAD			1	0	0	FAD	0	0	0
2762	DOC-2024-1874	07-1823	3651	\N	\N	\N	530000		50202020-00	2A1-101	999	1	1874	2024-08-12 10:25:47	2024-08-12 10:26:09		FAD			1	0	0	FAD	0	0	0
2761	DOC-2024-1873	07-1822	3483	\N	\N	\N	3500		50202020-00	2A1-AC (NULAB)	999	1	1873	2024-08-12 10:25:07	2024-08-12 10:26:16		FAD			1	0	0	FAD	0	0	0
2760	DOC-2024-1872	07-1821	2721	\N	\N	\N	2700		50202020-00	2A1-AC (StratCom)	999	1	1872	2024-08-12 10:24:52	2024-08-12 10:26:23		FAD			1	0	0	FAD	0	0	0
2759	DOC-2024-1871	07-1820	3578	\N	\N	\N	7500		50202020-00	2A1-AC (HR)	999	1	1871	2024-08-12 10:24:36	2024-08-12 10:26:29		FAD			1	0	0	FAD	0	0	0
2758	DOC-2024-1870	07-1819	3578	\N	\N	\N	7500		50202020-00	2A1-AC (HR)	999	1	1870	2024-08-12 10:24:16	2024-08-12 10:26:37		FAD			1	0	0	FAD	0	0	0
2756	DOC-2024-1869	07-1818	3650	\N	\N	\N	2140		50205010-00	1A1	999	1	1869	2024-08-12 10:23:58	2024-08-12 10:26:44		FAD			1	0	0	FAD	0	0	0
2757	DOC-2024-1869	07-1818	3650	\N	\N	\N	127650		50202020-00	2A1-101	999	1	1869	2024-08-12 10:23:58	2024-08-12 10:26:44		FAD			1	0	0	FAD	0	0	0
2752	DOC-2024-1868	07-1817	3484	\N	\N	\N	613187		50202020-00	2A1-101	999	1	1868	2024-08-12 10:22:55	2024-08-12 10:26:51		FAD			1	0	0	FAD	0	0	0
2753	DOC-2024-1868	07-1817	3484	\N	\N	\N	65385		50202010-02	2A2A-101	999	1	1868	2024-08-12 10:22:55	2024-08-12 10:26:51		FAD			1	0	0	FAD	0	0	0
2754	DOC-2024-1868	07-1817	3484	\N	\N	\N	100080		50202010-02	2A1-104	999	1	1868	2024-08-12 10:22:55	2024-08-12 10:26:51		FAD			1	0	0	FAD	0	0	0
2755	DOC-2024-1868	07-1817	3484	\N	\N	\N	21404		50202020-00	2A1-AC (HR)	999	1	1868	2024-08-12 10:22:55	2024-08-12 10:26:51		FAD			1	0	0	FAD	0	0	0
2751	DOC-2024-1867	07-1816	3526	\N	\N	\N	15000		50202020-00	2A1-AC (HR)	999	1	1867	2024-08-12 10:21:49	2024-08-12 10:26:58		FAD			1	0	0	FAD	0	0	0
2750	DOC-2024-1866	07-1815	2268	\N	\N	\N	7800		50202020-00	2A1-AC (HR)	999	1	1866	2024-08-12 10:21:33	2024-08-12 10:27:06		FAD			1	0	0	FAD	0	0	0
2745	DOC-2024-1865	07-1814	3498	\N	\N	\N	3600		50103020 (732)	1A1	999	1	1865	2024-08-12 10:20:00	2024-08-12 10:27:13		FAD			1	0	0	FAD	0	0	0
2746	DOC-2024-1865	07-1814	3498	\N	\N	\N	800		50103020 (732)	2A1-1	999	1	1865	2024-08-12 10:20:00	2024-08-12 10:27:13		FAD			1	0	0	FAD	0	0	0
2747	DOC-2024-1865	07-1814	3498	\N	\N	\N	2000		50103020 (732)	2A1-2	999	1	1865	2024-08-12 10:20:00	2024-08-12 10:27:13		FAD			1	0	0	FAD	0	0	0
2748	DOC-2024-1865	07-1814	3498	\N	\N	\N	2400		50103020 (732)	2A2-A	999	1	1865	2024-08-12 10:20:00	2024-08-12 10:27:13		FAD			1	0	0	FAD	0	0	0
2749	DOC-2024-1865	07-1814	3498	\N	\N	\N	2200		50103020 (732)	2A2-B	999	1	1865	2024-08-12 10:20:00	2024-08-12 10:27:13		FAD			1	0	0	FAD	0	0	0
2740	DOC-2024-1864	07-1813	3279	\N	\N	\N	19413.27		50103030 (733)	1A1	999	1	1864	2024-08-12 10:18:38	2024-08-12 10:27:21		FAD			1	0	0	FAD	0	0	0
2741	DOC-2024-1864	07-1813	3279	\N	\N	\N	4323.03		50103030 (733)	2A1-1	999	1	1864	2024-08-12 10:18:38	2024-08-12 10:27:21		FAD			1	0	0	FAD	0	0	0
2742	DOC-2024-1864	07-1813	3279	\N	\N	\N	11960.62		50103030 (733)	2A1-2	999	1	1864	2024-08-12 10:18:38	2024-08-12 10:27:21		FAD			1	0	0	FAD	0	0	0
2743	DOC-2024-1864	07-1813	3279	\N	\N	\N	14209.57		50103030 (733)	2A2-A	999	1	1864	2024-08-12 10:18:38	2024-08-12 10:27:21		FAD			1	0	0	FAD	0	0	0
2744	DOC-2024-1864	07-1813	3279	\N	\N	\N	13415.49		50103030 (733)	2A2-B	999	1	1864	2024-08-12 10:18:38	2024-08-12 10:27:21		FAD			1	0	0	FAD	0	0	0
2730	DOC-2024-1863	07-1812	3494	\N	\N	\N	96918.36		50103010 (731)	1A1	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2731	DOC-2024-1863	07-1812	3494	\N	\N	\N	20750.52		50103010 (731)	2A1-1	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2732	DOC-2024-1863	07-1812	3494	\N	\N	\N	57410.88		50103010 (731)	2A1-2	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2733	DOC-2024-1863	07-1812	3494	\N	\N	\N	68205.84		50103010 (731)	2A2-A	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2734	DOC-2024-1863	07-1812	3494	\N	\N	\N	64394.28		50103010 (731)	2A2-B	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2735	DOC-2024-1863	07-1812	3494	\N	\N	\N	1800		50103040 (734)	1A1	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2736	DOC-2024-1863	07-1812	3494	\N	\N	\N	400		50103040 (734)	2A1-1	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2737	DOC-2024-1863	07-1812	3494	\N	\N	\N	1000		50103040 (734)	2A1-2	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2738	DOC-2024-1863	07-1812	3494	\N	\N	\N	1200		50103040 (734)	2A2-A	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2739	DOC-2024-1863	07-1812	3494	\N	\N	\N	1100		50103040 (734)	2A2-B	999	1	1863	2024-08-12 10:16:57	2024-08-12 10:27:30		FAD			1	0	0	FAD	0	0	0
2729	DOC-2024-1862	07-1811	2709	\N	\N	\N	160451.69		50202010-02	2A2A-105A	999	1	1862	2024-08-12 10:13:36	2024-08-12 10:27:38		FAD			1	0	0	FAD	0	0	0
2764	DOC-2024-1876	08-1825	3483	\N	\N	\N	509911.95		50101010-01	1A1	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2765	DOC-2024-1876	08-1825	3483	\N	\N	\N	90088.12		50101010-01	2A1-1	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2766	DOC-2024-1876	08-1825	3483	\N	\N	\N	254642.41		50101010-01	2A1-2	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2763	DOC-2024-1875	08-1824	3066	\N	\N	\N	950000		50202020-00	2A1-AC	999	1	1875	2024-08-13 03:01:51	2024-08-13 03:28:47		FAD			1	0	0	FAD	0	0	0
2805	DOC-2024-1900	08-1850	1961	\N	\N	\N	18376.95		50202020-00	2A1-101	999	1	1900	2024-08-13 03:23:53	2024-08-13 03:24:56		FAD			1	0	0	FAD	0	0	0
2804	DOC-2024-1899	08-1849	3483	\N	\N	\N	1802000		50202020-00	2A1-101	999	1	1899	2024-08-13 03:23:33	2024-08-13 03:25:03		FAD			1	0	0	FAD	0	0	0
2803	DOC-2024-1898	08-1848	3483	\N	\N	\N	12000		50202020-00	2A1-102	999	1	1898	2024-08-13 03:23:17	2024-08-13 03:25:17		FAD			1	0	0	FAD	0	0	0
2802	DOC-2024-1897	08-1847	3137	\N	\N	\N	94986.2		50202020-00	2A1-101	999	1	1897	2024-08-13 03:22:15	2024-08-13 03:25:31		FAD			1	0	0	FAD	0	0	0
2801	DOC-2024-1896	08-1846	3137	\N	\N	\N	64867.68		50202020-00	2A1-101 (Patriot)	999	1	1896	2024-08-13 03:21:35	2024-08-13 03:25:43		FAD			1	0	0	FAD	0	0	0
2800	DOC-2024-1895	08-1845	3483	\N	\N	\N	5891		50202020-00	2A1-AC (HR)	999	1	1895	2024-08-13 03:21:11	2024-08-13 03:25:51		FAD			1	0	0	FAD	0	0	0
2799	DOC-2024-1894	08-1844	2719	\N	\N	\N	11100		50202020-00	2A1-AC (HR)	999	1	1894	2024-08-13 03:20:47	2024-08-13 03:25:59		FAD			1	0	0	FAD	0	0	0
2798	DOC-2024-1893	08-1843	2725	\N	\N	\N	11100		50202020-00	2A1-AC (HR)	999	1	1893	2024-08-13 03:20:29	2024-08-13 03:26:07		FAD			1	0	0	FAD	0	0	0
2797	DOC-2024-1892	08-1842	3486	\N	\N	\N	49382.93		50203090-00	2A1-2	999	1	1892	2024-08-13 03:20:11	2024-08-13 03:26:17		FAD			1	0	0	FAD	0	0	0
2796	DOC-2024-1891	08-1840	3654	\N	\N	\N	270000		50202020-00	2A1-AC (POSTER)	999	1	1891	2024-08-13 03:19:45	2024-08-13 03:26:37		FAD			1	0	0	FAD	0	0	0
2795	DOC-2024-1890	08-1839	3143	\N	\N	\N	44100		50202020-00	2A1-AC (POSTER)	999	1	1890	2024-08-13 03:18:59	2024-08-13 03:26:45		FAD			1	0	0	FAD	0	0	0
2794	DOC-2024-1889	08-1838	3653	\N	\N	\N	659700		50202010-02	2A2B-106	999	1	1889	2024-08-13 03:18:38	2024-08-13 03:26:52		FAD			1	0	0	FAD	0	0	0
2793	DOC-2024-1888	08-1837	1206	\N	\N	\N	25639000		50202020-00	2A1-105	999	1	1888	2024-08-13 03:17:48	2024-08-13 03:27:00		FAD			1	0	0	FAD	0	0	0
2792	DOC-2024-1887	08-1836	2660	\N	\N	\N	9725.2		50202020-00	2A1-AC (NULAB)	999	1	1887	2024-08-13 03:17:30	2024-08-13 03:27:07		FAD			1	0	0	FAD	0	0	0
2791	DOC-2024-1886	08-1835	840	\N	\N	\N	199865.65		50202020-00	2A1-106	999	1	1886	2024-08-13 03:17:03	2024-08-13 03:27:15		FAD			1	0	0	FAD	0	0	0
2790	DOC-2024-1885	08-1834	3590	\N	\N	\N	41375.88		50202020-00	2A1-104	999	1	1885	2024-08-13 03:16:40	2024-08-13 03:27:23		FAD			1	0	0	FAD	0	0	0
2789	DOC-2024-1884	08-1833	2719	\N	\N	\N	2467		50202020-00	2A1-AC (HR)	999	1	1884	2024-08-13 03:16:19	2024-08-13 03:27:32		FAD			1	0	0	FAD	0	0	0
2788	DOC-2024-1883	08-1832	2857	\N	\N	\N	126180		50202020-00	2A1-101	999	1	1883	2024-08-13 03:16:02	2024-08-13 03:27:39		FAD			1	0	0	FAD	0	0	0
2786	DOC-2024-1882	08-1831	3483	\N	\N	\N	3390395.49		50202020-00	2A1-104	999	1	1882	2024-08-13 03:15:39	2024-08-13 03:27:48		FAD			1	0	0	FAD	0	0	0
2787	DOC-2024-1882	08-1831	3483	\N	\N	\N	532185.91		50202020-00	2A1-103	999	1	1882	2024-08-13 03:15:39	2024-08-13 03:27:48		FAD			1	0	0	FAD	0	0	0
2785	DOC-2024-1881	08-1830	3652	\N	\N	\N	35000		50202020-00	2A1-AC	999	1	1881	2024-08-13 03:14:44	2024-08-13 03:27:55		FAD			1	0	0	FAD	0	0	0
2784	DOC-2024-1880	08-1829	3483	\N	\N	\N	71400		50202020-00	2A1-AC (NULAB)	999	1	1880	2024-08-13 03:13:44	2024-08-13 03:28:04		FAD			1	0	0	FAD	0	0	0
2780	DOC-2024-1879	08-1828	3483	\N	\N	\N	99243.75		50101010-01	1A1	999	1	1879	2024-08-13 03:13:09	2024-08-13 03:28:11		FAD			1	0	0	FAD	0	0	0
2781	DOC-2024-1879	08-1828	3483	\N	\N	\N	27610.25		50101010-01	2A1-1	999	1	1879	2024-08-13 03:13:09	2024-08-13 03:28:11		FAD			1	0	0	FAD	0	0	0
2782	DOC-2024-1879	08-1828	3483	\N	\N	\N	74592.25		50101010-01	2A1-2	999	1	1879	2024-08-13 03:13:09	2024-08-13 03:28:11		FAD			1	0	0	FAD	0	0	0
2783	DOC-2024-1879	08-1828	3483	\N	\N	\N	162395.25		50101010-01	2A2	999	1	1879	2024-08-13 03:13:09	2024-08-13 03:28:11		FAD			1	0	0	FAD	0	0	0
2776	DOC-2024-1878	08-1827	3483	\N	\N	\N	99243.75		50101010-01	1A1	999	1	1878	2024-08-13 03:12:03	2024-08-13 03:28:19		FAD			1	0	0	FAD	0	0	0
2777	DOC-2024-1878	08-1827	3483	\N	\N	\N	27610.25		50101010-01	2A1-1	999	1	1878	2024-08-13 03:12:03	2024-08-13 03:28:19		FAD			1	0	0	FAD	0	0	0
2778	DOC-2024-1878	08-1827	3483	\N	\N	\N	74592.25		50101010-01	2A1-2	999	1	1878	2024-08-13 03:12:03	2024-08-13 03:28:19		FAD			1	0	0	FAD	0	0	0
2779	DOC-2024-1878	08-1827	3483	\N	\N	\N	162395.25		50101010-01	2A2	999	1	1878	2024-08-13 03:12:03	2024-08-13 03:28:19		FAD			1	0	0	FAD	0	0	0
2772	DOC-2024-1877	08-1826	3483	\N	\N	\N	99253.55		50101010-01	1A1	999	1	1877	2024-08-13 03:10:56	2024-08-13 03:28:30		FAD			1	0	0	FAD	0	0	0
2773	DOC-2024-1877	08-1826	3483	\N	\N	\N	27612.38		50101010-01	2A1-1	999	1	1877	2024-08-13 03:10:56	2024-08-13 03:28:30		FAD			1	0	0	FAD	0	0	0
2774	DOC-2024-1877	08-1826	3483	\N	\N	\N	74594.09		50101010-01	2A1-2	999	1	1877	2024-08-13 03:10:56	2024-08-13 03:28:30		FAD			1	0	0	FAD	0	0	0
2775	DOC-2024-1877	08-1826	3483	\N	\N	\N	162408.18		50101010-01	2A2	999	1	1877	2024-08-13 03:10:56	2024-08-13 03:28:30		FAD			1	0	0	FAD	0	0	0
2767	DOC-2024-1876	08-1825	3483	\N	\N	\N	617802.32		50101010-01	2A2	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2768	DOC-2024-1876	08-1825	3483	\N	\N	\N	36000		50102010-01	1A1	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2769	DOC-2024-1876	08-1825	3483	\N	\N	\N	8000		50102010-01	2A1-1	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2770	DOC-2024-1876	08-1825	3483	\N	\N	\N	20000		50102010-01	2A1-2	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2771	DOC-2024-1876	08-1825	3483	\N	\N	\N	46000		50102010-01	2A2	999	1	1876	2024-08-13 03:09:19	2024-08-13 03:28:38		FAD			1	0	0	FAD	0	0	0
2811	DOC-2024-1903	08-1853	3483	\N	\N	\N	13949000		50202020-00	2A1-102	999	1	1903	2024-08-13 03:32:06	2024-08-13 04:18:25		FAD			1	0	0	FAD	0	0	0
2810	DOC-2024-1902	08-1852	3655	\N	\N	\N	8100		50202020-00	2A1-101	999	1	1902	2024-08-13 03:31:48	2024-08-13 04:18:32		FAD			1	0	0	FAD	0	0	0
2806	DOC-2024-1901	08-1851	3483	\N	\N	\N	48600		50202020-00	2A1-103	999	1	1901	2024-08-13 03:29:37	2024-08-13 04:18:40		FAD			1	0	0	FAD	0	0	0
2807	DOC-2024-1901	08-1851	3483	\N	\N	\N	48600		50202020-00	2A1-103	999	1	1901	2024-08-13 03:29:37	2024-08-13 04:18:40		FAD			1	0	0	FAD	0	0	0
2808	DOC-2024-1901	08-1851	3483	\N	\N	\N	24300		50202020-00	2A1-101	999	1	1901	2024-08-13 03:29:37	2024-08-13 04:18:40		FAD			1	0	0	FAD	0	0	0
2819	DOC-2024-1908	08-1860	1183	\N	\N	\N	267120		50202020-00	2A1-104	999	1	1908	2024-08-13 04:17:15	2024-08-13 04:17:36		FAD			1	0	0	FAD	0	0	0
2818	DOC-2024-1907	08-1859	3508	\N	\N	\N	98000		50202020-00	2A1-101	999	1	1907	2024-08-13 04:16:54	2024-08-13 04:17:47		FAD			1	0	0	FAD	0	0	0
2817	DOC-2024-1906	08-1856	3656	\N	\N	\N	33000		50202020-00	2A1-101	999	1	1906	2024-08-13 04:16:32	2024-08-13 04:17:55		FAD			1	0	0	FAD	0	0	0
2815	DOC-2024-1905	08-1855	3483	\N	\N	\N	20159.54		50202020-00	2A1-101	999	1	1905	2024-08-13 03:34:00	2024-08-13 04:18:05		FAD			1	0	0	FAD	0	0	0
2816	DOC-2024-1905	08-1855	3483	\N	\N	\N	28006.4		50202020-00	2A1-102	999	1	1905	2024-08-13 03:34:00	2024-08-13 04:18:05		FAD			1	0	0	FAD	0	0	0
2812	DOC-2024-1904	08-1854	3483	\N	\N	\N	640021.18		50202020-00	2A1-101	999	1	1904	2024-08-13 03:32:58	2024-08-13 04:18:16		FAD			1	0	0	FAD	0	0	0
2813	DOC-2024-1904	08-1854	3483	\N	\N	\N	37459		50202020-00	2A1-101 (RA10612)	999	1	1904	2024-08-13 03:32:58	2024-08-13 04:18:16		FAD			1	0	0	FAD	0	0	0
2814	DOC-2024-1904	08-1854	3483	\N	\N	\N	1049598.94		50202020-00	2A1-102	999	1	1904	2024-08-13 03:32:58	2024-08-13 04:18:16		FAD			1	0	0	FAD	0	0	0
2809	DOC-2024-1901	08-1851	3483	\N	\N	\N	24300		50202020-00	2A1-101	999	1	1901	2024-08-13 03:29:37	2024-08-13 04:18:40		FAD			1	0	0	FAD	0	0	0
2829	DOC-2024-1918	08-1870	1203	\N	\N	\N	74840		50202020-00	2A1-104	999	1	1918	2024-08-13 04:23:00	2024-08-13 04:23:15		FAD			1	0	0	FAD	0	0	0
2828	DOC-2024-1917	08-1869	1130	\N	\N	\N	198780		50202020-00	2A1-104	999	1	1917	2024-08-13 04:22:44	2024-08-13 04:23:22		FAD			1	0	0	FAD	0	0	0
2827	DOC-2024-1916	08-1868	1184	\N	\N	\N	187160		50202020-00	2A1-104	999	1	1916	2024-08-13 04:21:58	2024-08-13 04:23:29		FAD			1	0	0	FAD	0	0	0
2826	DOC-2024-1915	08-1867	3633	\N	\N	\N	368440		50202020-00	2A1-104	999	1	1915	2024-08-13 04:21:40	2024-08-13 04:23:37		FAD			1	0	0	FAD	0	0	0
2824	DOC-2024-1913	08-1865	1122	\N	\N	\N	663480		50202020-00	2A1-104	999	1	1913	2024-08-13 04:20:58	2024-08-13 04:23:56		FAD			1	0	0	FAD	0	0	0
2825	DOC-2024-1914	08-1866	3483	\N	\N	\N	5267.9		50202010-02	2A2B-107	999	1	1914	2024-08-13 04:21:18	2024-08-13 04:24:03		FAD			1	0	0	FAD	0	0	0
2823	DOC-2024-1912	08-1864	1031	\N	\N	\N	153240		50202020-00	2A1-104	999	1	1912	2024-08-13 04:20:41	2024-08-13 04:24:10		FAD			1	0	0	FAD	0	0	0
2822	DOC-2024-1911	08-1863	1155	\N	\N	\N	31360		50202020-00	2A1-104	999	1	1911	2024-08-13 04:19:46	2024-08-13 04:24:17		FAD			1	0	0	FAD	0	0	0
2821	DOC-2024-1910	08-1862	1060	\N	\N	\N	206960		50202020-00	2A1-104	999	1	1910	2024-08-13 04:19:28	2024-08-13 04:24:24		FAD			1	0	0	FAD	0	0	0
2820	DOC-2024-1909	08-1861	1196	\N	\N	\N	341960		50202020-00	2A1-104	999	1	1909	2024-08-13 04:19:08	2024-08-13 04:24:31		FAD			1	0	0	FAD	0	0	0
2851	DOC-2024-1928	08-1880	2034	\N	\N	\N	19398.24		50202020-00	2A1-101	999	1	1928	2024-08-13 04:33:24	2024-08-13 04:33:52		FAD			1	0	0	FAD	0	0	0
2848	DOC-2024-1927	08-1878	3483	\N	\N	\N	255010.08		50202020-00	2A1-101	999	1	1927	2024-08-13 04:33:04	2024-08-13 04:34:03		FAD			1	0	0	FAD	0	0	0
2849	DOC-2024-1927	08-1878	3483	\N	\N	\N	21500		50202020-00	2A1-101 (RA10612)	999	1	1927	2024-08-13 04:33:04	2024-08-13 04:34:03		FAD			1	0	0	FAD	0	0	0
2850	DOC-2024-1927	08-1878	3483	\N	\N	\N	374004.75		50202020-00	2A1-102	999	1	1927	2024-08-13 04:33:04	2024-08-13 04:34:03		FAD			1	0	0	FAD	0	0	0
2846	DOC-2024-1926	08-1879	3483	\N	\N	\N	221833.33		50202020-00	2A1-101	999	1	1926	2024-08-13 04:31:30	2024-08-13 04:34:12		FAD			1	0	0	FAD	0	0	0
2847	DOC-2024-1926	08-1879	3483	\N	\N	\N	283333.33		50202020-00	2A1-102	999	1	1926	2024-08-13 04:31:30	2024-08-13 04:34:12		FAD			1	0	0	FAD	0	0	0
2841	DOC-2024-1925	08-1877	3484	\N	\N	\N	35529		50202020-00	2A1-101	999	1	1925	2024-08-13 04:30:33	2024-08-13 04:34:21		FAD			1	0	0	FAD	0	0	0
2842	DOC-2024-1925	08-1877	3484	\N	\N	\N	7184		50202020-00	2A1-104	999	1	1925	2024-08-13 04:30:33	2024-08-13 04:34:21		FAD			1	0	0	FAD	0	0	0
2843	DOC-2024-1925	08-1877	3484	\N	\N	\N	41402		50202010-02	2A2B-101	999	1	1925	2024-08-13 04:30:33	2024-08-13 04:34:21		FAD			1	0	0	FAD	0	0	0
2844	DOC-2024-1925	08-1877	3484	\N	\N	\N	375150		50202010-02	2A2B-105	999	1	1925	2024-08-13 04:30:33	2024-08-13 04:34:21		FAD			1	0	0	FAD	0	0	0
2845	DOC-2024-1925	08-1877	3484	\N	\N	\N	13920		50202020-00	2A1-AC (HR)	999	1	1925	2024-08-13 04:30:33	2024-08-13 04:34:21		FAD			1	0	0	FAD	0	0	0
2840	DOC-2024-1924	08-1876	3483	\N	\N	\N	12960		50202020-00	2A2A-104	999	1	1924	2024-08-13 04:28:18	2024-08-13 04:34:29		FAD			1	0	0	FAD	0	0	0
2839	DOC-2024-1923	08-1875	3380	\N	\N	\N	6000		50205020-01	1A1	999	1	1923	2024-08-13 04:27:14	2024-08-13 04:34:37		FAD			1	0	0	FAD	0	0	0
2836	DOC-2024-1922	08-1874	3483	\N	\N	\N	2325052.16		50202020-00	2A1-AC (HR)	999	1	1922	2024-08-13 04:26:59	2024-08-13 04:34:45		FAD			1	0	0	FAD	0	0	0
2837	DOC-2024-1922	08-1874	3483	\N	\N	\N	13086.4		50202020-00	2A1-AC (NULAB)	999	1	1922	2024-08-13 04:26:59	2024-08-13 04:34:45		FAD			1	0	0	FAD	0	0	0
2838	DOC-2024-1922	08-1874	3483	\N	\N	\N	22293.54		50202020-00	PD 997	999	1	1922	2024-08-13 04:26:59	2024-08-13 04:34:45		FAD			1	0	0	FAD	0	0	0
2833	DOC-2024-1921	08-1873	1033	\N	\N	\N	30582500		50202020-00	2A1-101	999	1	1921	2024-08-13 04:26:14	2024-08-13 04:34:55		FAD			1	0	0	FAD	0	0	0
2834	DOC-2024-1921	08-1873	1033	\N	\N	\N	757500		50202020-00	2A1-101 (RA10612)	999	1	1921	2024-08-13 04:26:14	2024-08-13 04:34:55		FAD			1	0	0	FAD	0	0	0
2835	DOC-2024-1921	08-1873	1033	\N	\N	\N	28543500		50202020-00	2A1-102	999	1	1921	2024-08-13 04:26:14	2024-08-13 04:34:55		FAD			1	0	0	FAD	0	0	0
2831	DOC-2024-1920	08-1872	3137	\N	\N	\N	216720		50202020-00	2A1-AC	999	1	1920	2024-08-13 04:25:30	2024-08-13 04:35:04		FAD			1	0	0	FAD	0	0	0
2832	DOC-2024-1920	08-1872	3137	\N	\N	\N	5769.12		50202020-00	2A1-AC (PUSH4Science)	999	1	1920	2024-08-13 04:25:30	2024-08-13 04:35:04		FAD			1	0	0	FAD	0	0	0
2830	DOC-2024-1919	08-1881	3312	\N	\N	\N	33440		50202010-02	2A2A-101	999	1	1919	2024-08-13 04:24:56	2024-08-13 04:35:16		FAD			1	0	0	FAD	0	0	0
2857	DOC-2024-1932	08-1884	3483	\N	\N	\N	1308000		50202020-00	2A1-101	999	1	1932	2024-08-13 04:36:55	2024-08-13 04:41:17		FAD			1	0	0	FAD	0	0	0
2853	DOC-2024-1930	08-1882	1045	\N	\N	\N	5835000		50202020-00	2A1-101	999	1	1930	2024-08-13 04:36:23	2024-08-13 04:41:35		FAD			1	0	0	FAD	0	0	0
2852	DOC-2024-1929	08-1881	3483	\N	\N	\N	159647.43		50202020-00	2A1-104	999	1	1929	2024-08-13 04:35:40	2024-08-13 04:41:43		FAD			1	0	0	FAD	0	0	0
2868	DOC-2024-1938	08-1890	1111	\N	\N	\N	8240000		50202020-00	2A1-101	999	1	1938	2024-08-13 04:40:12	2024-08-13 04:40:30		FAD			1	0	0	FAD	0	0	0
2869	DOC-2024-1938	08-1890	1111	\N	\N	\N	49000		50202020-00	2A1-101 (RA10612)	999	1	1938	2024-08-13 04:40:12	2024-08-13 04:40:30		FAD			1	0	0	FAD	0	0	0
2870	DOC-2024-1938	08-1890	1111	\N	\N	\N	14000000		50202020-00	2A1-102	999	1	1938	2024-08-13 04:40:12	2024-08-13 04:40:30		FAD			1	0	0	FAD	0	0	0
2865	DOC-2024-1937	08-1889	1131	\N	\N	\N	474943.6		50202020-00	2A1-101	999	1	1937	2024-08-13 04:39:24	2024-08-13 04:40:38		FAD			1	0	0	FAD	0	0	0
2866	DOC-2024-1937	08-1889	1131	\N	\N	\N	19994		50202020-00	2A1-101 (RA10612)	999	1	1937	2024-08-13 04:39:24	2024-08-13 04:40:38		FAD			1	0	0	FAD	0	0	0
2867	DOC-2024-1937	08-1889	1131	\N	\N	\N	134575		50202020-00	2A1-102	999	1	1937	2024-08-13 04:39:24	2024-08-13 04:40:38		FAD			1	0	0	FAD	0	0	0
2863	DOC-2024-1936	08-1888	1094	\N	\N	\N	20455		50202020-00	2A1-101	999	1	1936	2024-08-13 04:38:46	2024-08-13 04:40:46		FAD			1	0	0	FAD	0	0	0
2864	DOC-2024-1936	08-1888	1094	\N	\N	\N	20000		50202020-00	2A1-102	999	1	1936	2024-08-13 04:38:46	2024-08-13 04:40:46		FAD			1	0	0	FAD	0	0	0
2861	DOC-2024-1935	08-1887	1089	\N	\N	\N	20505		50202020-00	2A1-101	999	1	1935	2024-08-13 04:38:21	2024-08-13 04:40:54		FAD			1	0	0	FAD	0	0	0
2862	DOC-2024-1935	08-1887	1089	\N	\N	\N	20000		50202020-00	2A1-101 (RA10612)	999	1	1935	2024-08-13 04:38:21	2024-08-13 04:40:54		FAD			1	0	0	FAD	0	0	0
2860	DOC-2024-1934	08-1886	1128	\N	\N	\N	46737.77		50202020-00	2A1-101	999	1	1934	2024-08-13 04:37:41	2024-08-13 04:41:01		FAD			1	0	0	FAD	0	0	0
2858	DOC-2024-1933	08-1885	1129	\N	\N	\N	86180		50202020-00	2A1-101	999	1	1933	2024-08-13 04:37:18	2024-08-13 04:41:09		FAD			1	0	0	FAD	0	0	0
2859	DOC-2024-1933	08-1885	1129	\N	\N	\N	6180		50202020-00	2A1-102	999	1	1933	2024-08-13 04:37:18	2024-08-13 04:41:09		FAD			1	0	0	FAD	0	0	0
2856	DOC-2024-1931	08-1883	1027	\N	\N	\N	89520		50202020-00	2A1-104	999	1	1931	2024-08-13 04:36:41	2024-08-13 04:41:25		FAD			1	0	0	FAD	0	0	0
2854	DOC-2024-1930	08-1882	1045	\N	\N	\N	780000		50202020-00	2A1-101 (RA10612)	999	1	1930	2024-08-13 04:36:23	2024-08-13 04:41:35		FAD			1	0	0	FAD	0	0	0
2855	DOC-2024-1930	08-1882	1045	\N	\N	\N	1299000		50202020-00	2A1-102	999	1	1930	2024-08-13 04:36:23	2024-08-13 04:41:35		FAD			1	0	0	FAD	0	0	0
2891	DOC-2024-1947	08-1900	1184	\N	\N	\N	8144500		50202020-00	2A1-101	999	1	1947	2024-08-13 04:47:37	2024-08-13 07:21:22		FAD			1	0	0	FAD	0	0	0
2892	DOC-2024-1947	08-1900	1184	\N	\N	\N	150500		50202020-00	2A1-101 (RA10612)	999	1	1947	2024-08-13 04:47:37	2024-08-13 07:21:22		FAD			1	0	0	FAD	0	0	0
2893	DOC-2024-1947	08-1900	1184	\N	\N	\N	12374000		50202020-00	2A1-102	999	1	1947	2024-08-13 04:47:37	2024-08-13 07:21:22		FAD			1	0	0	FAD	0	0	0
2871	DOC-2024-1939	08-1891	1175	\N	\N	\N	10599000		50202020-00	2A1-101	122	1	1939	2024-08-13 04:42:36	2024-08-13 07:21:47		FAD			1	0	0	FAD	0	0	0
2872	DOC-2024-1939	08-1891	1175	\N	\N	\N	148000		50202020-00	2A1-101 (RA10612)	122	1	1939	2024-08-13 04:42:36	2024-08-13 07:21:47		FAD			1	0	0	FAD	0	0	0
2873	DOC-2024-1939	08-1891	1175	\N	\N	\N	4584000		50202020-00	2A1-102	122	1	1939	2024-08-13 04:42:36	2024-08-13 07:21:47		FAD			1	0	0	FAD	0	0	0
2874	DOC-2024-1940	08-1892	1175	\N	\N	\N	5545500		50202020-00	2A1-101	999	1	1940	2024-08-13 04:43:37	2024-08-13 07:21:57		FAD			1	0	0	FAD	0	0	0
2875	DOC-2024-1940	08-1892	1175	\N	\N	\N	104000		50202020-00	2A1-101 (RA10612)	999	1	1940	2024-08-13 04:43:37	2024-08-13 07:21:57		FAD			1	0	0	FAD	0	0	0
2876	DOC-2024-1940	08-1892	1175	\N	\N	\N	2612000		50202020-00	2A1-102	999	1	1940	2024-08-13 04:43:37	2024-08-13 07:21:57		FAD			1	0	0	FAD	0	0	0
2877	DOC-2024-1941	08-1893	3577	\N	\N	\N	6994500		50202020-00	2A1-101	999	1	1941	2024-08-13 04:44:17	2024-08-13 07:22:06		FAD			1	0	0	FAD	0	0	0
2878	DOC-2024-1941	08-1893	3577	\N	\N	\N	62000		50202020-00	2A1-101 (RA10612)	999	1	1941	2024-08-13 04:44:17	2024-08-13 07:22:06		FAD			1	0	0	FAD	0	0	0
2879	DOC-2024-1941	08-1893	3577	\N	\N	\N	1435500		50202020-00	2A1-102	999	1	1941	2024-08-13 04:44:17	2024-08-13 07:22:06		FAD			1	0	0	FAD	0	0	0
2880	DOC-2024-1942	08-1895	3493	\N	\N	\N	2837500		50202020-00	2A1-101	999	1	1942	2024-08-13 04:45:06	2024-08-13 07:22:19		FAD			1	0	0	FAD	0	0	0
2881	DOC-2024-1942	08-1895	3493	\N	\N	\N	29000		50202020-00	2A1-101 (RA10612)	999	1	1942	2024-08-13 04:45:06	2024-08-13 07:22:19		FAD			1	0	0	FAD	0	0	0
2882	DOC-2024-1942	08-1895	3493	\N	\N	\N	682000		50202020-00	2A1-102	999	1	1942	2024-08-13 04:45:06	2024-08-13 07:22:19		FAD			1	0	0	FAD	0	0	0
2883	DOC-2024-1943	08-1896	1027	\N	\N	\N	14753500		50202020-00	2A1-101	999	1	1943	2024-08-13 04:45:46	2024-08-13 07:22:26		FAD			1	0	0	FAD	0	0	0
2884	DOC-2024-1943	08-1896	1027	\N	\N	\N	98000		50202020-00	2A1-101 (RA10612)	999	1	1943	2024-08-13 04:45:46	2024-08-13 07:22:26		FAD			1	0	0	FAD	0	0	0
2885	DOC-2024-1943	08-1896	1027	\N	\N	\N	30682500		50202020-00	2A1-102	999	1	1943	2024-08-13 04:45:46	2024-08-13 07:22:26		FAD			1	0	0	FAD	0	0	0
2886	DOC-2024-1944	08-1897	1196	\N	\N	\N	34927500		50202020-00	2A1-101	999	1	1944	2024-08-13 04:46:30	2024-08-13 07:22:33		FAD			1	0	0	FAD	0	0	0
2887	DOC-2024-1944	08-1897	1196	\N	\N	\N	267000		50202020-00	2A1-101 (RA10612)	999	1	1944	2024-08-13 04:46:30	2024-08-13 07:22:33		FAD			1	0	0	FAD	0	0	0
2888	DOC-2024-1944	08-1897	1196	\N	\N	\N	56007000		50202020-00	2A1-102	999	1	1944	2024-08-13 04:46:30	2024-08-13 07:22:33		FAD			1	0	0	FAD	0	0	0
2889	DOC-2024-1945	08-1898	3483	\N	\N	\N	534000		50202020-00	2A1-101	999	1	1945	2024-08-13 04:46:44	2024-08-13 07:22:42		FAD			1	0	0	FAD	0	0	0
2890	DOC-2024-1946	08-1899	3483	\N	\N	\N	1391500		50202020-00	2A1-102	999	1	1946	2024-08-13 04:46:58	2024-08-13 07:22:49		FAD			1	0	0	FAD	0	0	0
2894	DOC-2025-0001	01-0001	3483	\N	\N	\N	602833.29	\N	50101010-01	1A1	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2895	DOC-2025-0001	01-0001	3483	\N	\N	\N	93818.94	\N	50101010-01	2A1-1	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2896	DOC-2025-0001	01-0001	3483	\N	\N	\N	251982.92	\N	50101010-01	2A1-2	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2897	DOC-2025-0001	01-0001	3483	\N	\N	\N	654043	\N	50101010-01	2A2	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2902	DOC-2025-0002	01-0002	3483	\N	\N	\N	119723.71	\N	50101010-01	1A1	999	1	1949	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2903	DOC-2025-0002	01-0002	3483	\N	\N	\N	29192.06	\N	50101010-01	2A1-1	999	1	1949	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2904	DOC-2025-0002	01-0002	3483	\N	\N	\N	83127.58	\N	50101010-01	2A1-2	999	1	1949	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2905	DOC-2025-0002	01-0002	3483	\N	\N	\N	168135	\N	50101010-01	2A2	999	1	1949	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2906	DOC-2025-0003	01-0003	3483	\N	\N	\N	119713	\N	50101010-01	1A1	999	1	1950	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2907	DOC-2025-0003	01-0003	3483	\N	\N	\N	29191	\N	50101010-01	2A1-1	999	1	1950	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2908	DOC-2025-0003	01-0003	3483	\N	\N	\N	83123.25	\N	50101010-01	2A1-2	999	1	1950	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2909	DOC-2025-0003	01-0003	3483	\N	\N	\N	168123	\N	50101010-01	2A2	999	1	1950	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2910	DOC-2025-0004	01-0004	3483	\N	\N	\N	119713	\N	50101010-01	1A1	999	1	1951	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2911	DOC-2025-0004	01-0004	3483	\N	\N	\N	29191	\N	50101010-01	2A1-1	999	1	1951	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2912	DOC-2025-0004	01-0004	3483	\N	\N	\N	83123.25	\N	50101010-01	2A1-2	999	1	1951	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2913	DOC-2025-0004	01-0004	3483	\N	\N	\N	168123	\N	50101010-01	2A2	999	1	1951	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2914	DOC-2025-0005	01-0005	3484	\N	\N	31	284359	\N	50202020-00	2A1-106	999	1	1952	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2916	DOC-2025-0007	01-0007	3483	\N	\N	\N	6356000	\N	50202020-00	2A1-102	999	1	1954	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2918	DOC-2025-0009	01-0009	3483	\N	\N	\N	10158090.93	\N	50202020-00	2A1-104	999	1	1956	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2919	DOC-2025-0010	01-0010	3483	\N	\N	\N	44560557.86	\N	50202020-00	2A1-104	999	1	1957	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2920	DOC-2025-0011	01-0011	3483	\N	\N	\N	486000	\N	50202020-00	2A1-104	999	1	1958	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2921	DOC-2025-0012	01-0012	3483	\N	\N	\N	17473090.93	\N	50202020-00	2A1-104	999	1	1959	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2922	DOC-2025-0013	01-0013	3483	\N	\N	\N	42885692.12	\N	50202020-00	2A1-104	999	1	1960	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2923	DOC-2025-0014	01-0014	3483	\N	\N	\N	16936000	\N	50202020-00	2A1-101	999	1	1961	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2924	DOC-2025-0015	01-0015	3483	\N	\N	\N	29623522.44	\N	50202020-00	2A1-104	999	1	1962	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2925	DOC-2025-0016	01-0016	3483	\N	\N	\N	720660	\N	50202020-00	2A1-101	999	1	1963	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2926	DOC-2025-0016	01-0016	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	1963	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2927	DOC-2025-0017	01-0017	434	\N	\N	\N	2721	\N	50201010-00	1A1	999	1	1964	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2928	DOC-2025-0018	01-0018	3483	\N	\N	\N	1221000	\N	50202020-00	2A1-101	999	1	1965	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2929	DOC-2025-0019	01-0019	3483	\N	\N	\N	951541.2	\N	50202020-00	2A1-104	999	1	1966	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2930	DOC-2025-0020	01-0020	3483	\N	\N	\N	16097	\N	50202020-00	2A1-101	999	1	1967	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2931	DOC-2025-0021	01-0021	633	\N	\N	\N	36803.25	\N	50202020-00	2A1-104	999	1	1968	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2932	DOC-2025-0022	01-0022	3483	\N	\N	\N	2426452	\N	50202020-00	2A1-104	999	1	1969	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2933	DOC-2025-0023	01-0023	3483	\N	\N	\N	212479	\N	50202020-00	2A1-104	999	1	1970	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2934	DOC-2025-0024	01-0024	3483	\N	\N	\N	54577.54	\N	50102120-01	1A1	999	1	1971	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2935	DOC-2025-0024	01-0024	3483	\N	\N	\N	10572.15	\N	50102120-01	2A1-1	999	1	1971	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2936	DOC-2025-0024	01-0024	3483	\N	\N	\N	25069.75	\N	50102120-01	2A1-2	999	1	1971	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2937	DOC-2025-0024	01-0024	3483	\N	\N	\N	62601.7	\N	50102120-01	2A2	999	1	1971	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2938	DOC-2025-0025	01-0025	3519	\N	\N	\N	63701896	\N	50202020-00	2A1-101  	999	1	1972	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2939	DOC-2025-0025	01-0025	3519	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	1972	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2940	DOC-2025-0025	01-0025	3519	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	1972	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2941	DOC-2025-0026	01-0026	3649	\N	\N	\N	24695084	\N	50202020-00	2A1-101	999	1	1973	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2942	DOC-2025-0026	01-0026	3634	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	1973	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2943	DOC-2025-0026	01-0026	3634	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	1973	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2944	DOC-2025-0027	01-0027	3486	\N	\N	\N	9927090.93	\N	50202020-00	2A1-104	999	1	1974	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2945	DOC-2025-0028	01-0028	3483	\N	\N	\N	12471923.03	\N	50202020-00	2A1-104	999	1	1975	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2946	DOC-2025-0029	01-0029	3483	\N	\N	\N	7522090.93	\N	50202020-00	2A1-104	999	1	1976	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2947	DOC-2025-0030	01-0030	1035	\N	\N	\N	10073090.93	\N	50202020-00	2A1-104	999	1	1977	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2948	DOC-2025-0031	01-0031	3483	\N	\N	\N	1743400.58	\N	50202020-00	2A1-104	999	1	1978	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2949	DOC-2025-0032	01-0032	3519	\N	\N	\N	20301291.96	\N	50202020-00	2A1-101	999	1	1979	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2950	DOC-2025-0032	01-0032	3657	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	1979	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2951	DOC-2025-0032	01-0032	3657	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	1979	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2952	DOC-2025-0033	01-0033	3494	\N	\N	\N	30866791.96	\N	50202020-00	2A1-101	999	1	1980	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2953	DOC-2025-0033	01-0033	3494	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	1980	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2954	DOC-2025-0033	01-0033	3494	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	1980	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2955	DOC-2025-0034	01-0034	3498	\N	\N	\N	6362791.96	\N	50202020-00	2A1-101	999	1	1981	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2956	DOC-2025-0034	01-0034	3498	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	1981	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2957	DOC-2025-0034	01-0034	3498	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	1981	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2958	DOC-2025-0035	01-0035	1037	\N	\N	\N	15487090.93	\N	50202020-00	2A1-104	999	1	1982	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2959	DOC-2025-0036	01-0036	3493	\N	\N	\N	10720389.96	\N	50202020-00	2A1-101	999	1	1983	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2960	DOC-2025-0036	01-0036	3493	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	1983	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2961	DOC-2025-0036	01-0036	3493	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	1983	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2962	DOC-2025-0037	01-0037	3483	\N	\N	\N	498250	\N	50202020-00	2A1-104	999	1	1984	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2963	DOC-2025-0038	01-0038	3483	\N	\N	\N	878226	\N	50202020-00	2A1-104	999	1	1985	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2964	DOC-2025-0039	01-0039	3494	\N	\N	\N	88299000	\N	50202020-00	2A1-102	999	1	1986	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2915	DOC-2025-0006	01-0006	1094	\N	\N	31	72000	\N	50202020-00	2A1-106	999	1	1953	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2917	DOC-2025-0008	01-0008	3483	\N	\N	31	38214	\N	50202020-00	2A1-106	999	1	1955	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2966	DOC-2025-0041	01-0041	588	\N	\N	\N	90000	\N	50202020-00	2A1-104	999	1	1988	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2967	DOC-2025-0042	01-0042	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1989	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2968	DOC-2025-0043	01-0043	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1990	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2969	DOC-2025-0044	01-0044	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1991	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2970	DOC-2025-0045	01-0045	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1992	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2971	DOC-2025-0046	01-0046	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1993	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2972	DOC-2025-0047	01-0047	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1994	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2973	DOC-2025-0048	01-0048	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1995	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2974	DOC-2025-0049	01-0049	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1996	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2975	DOC-2025-0050	01-0050	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1997	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2976	DOC-2025-0051	01-0051	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1998	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2977	DOC-2025-0052	01-0052	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	1999	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2978	DOC-2025-0053	01-0053	3540	\N	\N	\N	58967057.86	\N	50202020-00	2A1-101	999	1	2000	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2979	DOC-2025-0053	01-0053	3540	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2000	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2980	DOC-2025-0053	01-0053	3540	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2000	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2981	DOC-2025-0054	01-0054	3629	\N	\N	\N	62536396	\N	50202020-00	2A1-101 RA10612	999	1	2001	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2982	DOC-2025-0054	01-0054	3629	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2001	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2983	DOC-2025-0054	01-0054	3606	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2001	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2984	DOC-2025-0055	01-0055	3494	\N	\N	\N	57015596	\N	50202020-00	2A1-101	999	1	2002	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2985	DOC-2025-0056	01-0056	3494	\N	\N	\N	75074500	\N	50202020-00	2A1-101	999	1	2003	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2986	DOC-2025-0056	01-0056	3494	\N	\N	\N	5929000	\N	50202020-00	2A1-101 RA10612	999	1	2003	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2987	DOC-2025-0057	01-0057	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	2004	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2991	DOC-2025-0061	01-0061	3483	\N	\N	\N	596000	\N	50202020-00	2A1-102	999	1	2008	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2992	DOC-2025-0062	01-0062	3483	\N	\N	\N	3400	\N	50210030-00	1A1	999	1	2009	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2993	DOC-2025-0063	01-0063	3483	\N	\N	\N	1693382.44	\N	50202020-00	2A1-AC HR	999	1	2010	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2994	DOC-2025-0063	01-0063	3483	\N	\N	\N	\N	\N	50202020-00	2A1-AC NULAB	999	1	2010	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2995	DOC-2025-0063	01-0063	3483	\N	\N	\N	\N	\N	50202020-00	3A1-PD997	999	1	2010	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2997	DOC-2025-0065	01-0065	3483	\N	\N	\N	557868.6	\N	50202020-00	2A1-101	999	1	2012	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2998	DOC-2025-0065	01-0065	3483	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2012	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2999	DOC-2025-0065	01-0065	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2012	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3000	DOC-2025-0066	01-0066	3483	\N	\N	\N	270603.66	\N	50202020-00	2A1-101	999	1	2013	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3001	DOC-2025-0066	01-0066	3483	\N	\N	\N	20000	\N	50202020-00	2A1-101 RA10612	999	1	2013	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3002	DOC-2025-0066	01-0066	3483	\N	\N	\N	640324.48	\N	50202020-00	2A1-102	999	1	2013	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3003	DOC-2025-0067	01-0067	3483	\N	\N	\N	340029.56	\N	50202020-00	2A1-104	999	1	2014	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3004	DOC-2025-0068	01-0068	3483	\N	\N	\N	16861.9	\N	50202020-00	2A1-101	999	1	2015	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3005	DOC-2025-0069	01-0069	1036	\N	\N	\N	6000	\N	50202020-00	2A1-103	999	1	2016	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3006	DOC-2025-0070	01-0070	3483	\N	\N	\N	2848122.33	\N	50202020-00	2A1-104	999	1	2017	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3007	DOC-2025-0071	01-0071	3483	\N	\N	\N	1641000	\N	50202020-00	2A1-101	999	1	2018	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3008	DOC-2025-0072	01-0072	3483	\N	\N	\N	352000	\N	50202020-00	2A1-102	999	1	2019	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3009	DOC-2025-0073	01-0073	3483	\N	\N	\N	2170000	\N	50202020-00	2A1-102	999	1	2020	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3010	DOC-2025-0074	01-0074	878	\N	\N	\N	102884.68	\N	50202020-00	2A1-104	999	1	2021	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3011	DOC-2025-0075	01-0075	3494	\N	\N	\N	57113281.51	\N	50202020-00	2A1-101	999	1	2022	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3012	DOC-2025-0075	01-0075	3494	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2022	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3013	DOC-2025-0075	01-0075	3494	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2022	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3014	DOC-2025-0076	01-0076	3483	\N	\N	\N	3229265.9	\N	50202020-00	2A1-104	999	1	2023	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3015	DOC-2025-0077	01-0077	1237	\N	\N	\N	579000	\N	50202020-00	2A1-104	999	1	2024	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3016	DOC-2025-0078	01-0078	3483	\N	\N	\N	740087	\N	50202020-00	2A1-104	999	1	2025	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2989	DOC-2025-0059	01-0059	3483	\N	\N	31	172167.66	\N	50202020-00	2A1-106	999	1	2006	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3017	DOC-2025-0079	01-0079	408	\N	\N	\N	167735.34	\N	50202020-00	2A1-AC HR	999	1	2026	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3018	DOC-2025-0080	01-0080	3483	\N	\N	\N	21868.88	\N	50202020-00	2A1-101	999	1	2027	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3019	DOC-2025-0080	01-0080	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2027	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3020	DOC-2025-0081	01-0081	3483	\N	\N	\N	22705.24	\N	50102110-01	1A1	999	1	2028	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3021	DOC-2025-0082	01-0082	3483	\N	\N	\N	296046	\N	50202020-00	2A1-104	999	1	2029	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3022	DOC-2025-0083	01-0083	3483	\N	\N	\N	96000	\N	50202020-00	2A1-104	999	1	2030	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3023	DOC-2025-0084	01-0084	124	\N	\N	\N	5841090.93	\N	50202020-00	2A1-104	999	1	2031	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3024	DOC-2025-0085	01-0085	1033	\N	\N	\N	9323090.93	\N	50202020-00	2A1-104	999	1	2032	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3025	DOC-2025-0086	01-0086	3494	\N	\N	\N	17565126	\N	50202020-00	2A1-101	999	1	2033	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3026	DOC-2025-0086	01-0086	3494	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2033	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3027	DOC-2025-0086	01-0086	3494	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2033	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3028	DOC-2025-0087	01-0087	3498	\N	\N	\N	27818756	\N	50202020-00	2A1-101	999	1	2034	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3029	DOC-2025-0087	01-0087	3498	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2034	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3030	DOC-2025-0087	01-0087	3498	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2034	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3031	DOC-2025-0088	01-0088	3500	\N	\N	\N	96849516	\N	50202020-00	2A1-101  	999	1	2035	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3032	DOC-2025-0088	01-0088	3500	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2035	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3033	DOC-2025-0088	01-0088	3498	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2035	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3034	DOC-2025-0089	01-0089	3518	\N	\N	\N	63870208	\N	50202020-00	2A1-101	999	1	2036	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3035	DOC-2025-0089	01-0089	3508	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2036	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3036	DOC-2025-0089	01-0089	3508	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2036	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3037	DOC-2025-0090	01-0090	3483	\N	\N	\N	1858	\N	50210030-00	1A1	999	1	2037	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3039	DOC-2025-0092	01-0092	3483	\N	\N	\N	218747.63	\N	50202020-00	2A1-101	999	1	2039	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3040	DOC-2025-0093	01-0093	3484	\N	\N	\N	20455	\N	50202020-00	2A1-101	999	1	2040	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3041	DOC-2025-0094	01-0094	3483	\N	\N	\N	7094265.9	\N	50202020-00	2A1-104	999	1	2041	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3042	DOC-2025-0095	01-0095	3483	\N	\N	\N	3536000	\N	50202020-00	2A1-102	999	1	2042	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3043	DOC-2025-0096	01-0096	3483	\N	\N	\N	3267000	\N	50202020-00	2A1-101	999	1	2043	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3044	DOC-2025-0097	01-0097	3483	\N	\N	\N	11311000	\N	50202020-00	2A1-101	999	1	2044	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3045	DOC-2025-0098	01-0098	3483	\N	\N	\N	212000	\N	50202020-00	2A1-102	999	1	2045	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3046	DOC-2025-0099	01-0099	3483	\N	\N	\N	44000	\N	50202020-00	2A1-102	999	1	2046	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3047	DOC-2025-0100	01-0100	3483	\N	\N	\N	5176500	\N	50202020-00	2A1-101	999	1	2047	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3048	DOC-2025-0101	01-0101	3483	\N	\N	\N	1496000	\N	50202020-00	2A1-101	999	1	2048	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3049	DOC-2025-0102	01-0102	3483	\N	\N	\N	131000	\N	50202020-00	2A1-101	999	1	2049	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3050	DOC-2025-0103	01-0103	3483	\N	\N	\N	179745.9	\N	50202020-00	2A1-101	999	1	2050	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3051	DOC-2025-0103	01-0103	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2050	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3052	DOC-2025-0104	01-0104	3483	\N	\N	\N	20000	\N	50202020-00	2A1-101	999	1	2051	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3053	DOC-2025-0105	01-0105	3483	\N	\N	\N	21071.66	\N	50202020-00	2A1-101	999	1	2052	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3054	DOC-2025-0105	01-0105	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2052	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3061	DOC-2025-0112	01-0112	3484	\N	\N	\N	18633090.93	\N	50202020-00	2A1-104	999	1	2059	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3062	DOC-2025-0113	01-0113	3483	\N	\N	\N	258000	\N	50202020-00	2A1-101	999	1	2060	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3063	DOC-2025-0114	01-0114	3483	\N	\N	\N	371000	\N	50202020-00	2A1-102	999	1	2061	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3064	DOC-2025-0115	01-0115	3483	\N	\N	\N	1060500	\N	50202020-00	2A1-102	999	1	2062	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3065	DOC-2025-0116	01-0116	3483	\N	\N	\N	110000	\N	50202020-00	2A1-102	999	1	2063	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3066	DOC-2025-0117	01-0117	3483	\N	\N	\N	668367.35	\N	50202020-00	2A1-104	999	1	2064	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3067	DOC-2025-0118	01-0118	3483	\N	\N	\N	1076483.83	\N	50202020-00	2A1-104	999	1	2065	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3068	DOC-2025-0119	01-0119	3483	\N	\N	\N	373014.38	\N	50202020-00	2A1-104	999	1	2066	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3069	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103010 (731)	1A1	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3070	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103010 (731)	2A1-1	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3071	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103010 (731)	2A1-2	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3072	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103010 (731)	2A2-A	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3073	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103010 (731)	2A2-B	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3074	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103040 (734)	1A1	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3075	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103040 (734)	2A1-1	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3076	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103040 (734)	2A1-2	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3077	DOC-2025-0120	01-0120	1046	\N	\N	\N	\N	\N	50103040 (734)	2A2-A	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3078	DOC-2025-0120	01-0120	1045	\N	\N	\N	\N	\N	50103040 (734)	2A2-B	999	1	2067	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3079	DOC-2025-0121	01-0121	3494	\N	\N	\N	12586480	\N	50202020-00	2A1-101	999	1	2068	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3080	DOC-2025-0121	01-0121	3494	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2068	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3081	DOC-2025-0121	01-0121	3494	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2068	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3082	DOC-2025-0122	01-0122	3483	\N	\N	\N	47472214.99	\N	50202020-00	2A1-104	999	1	2069	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3083	DOC-2025-0123	01-0123	3483	\N	\N	\N	2560000	\N	50202020-00	2A1-104	999	1	2070	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3084	DOC-2025-0124	01-0124	3483	\N	\N	\N	14648166.01	\N	50202020-00	2A1-102	999	1	2071	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3085	DOC-2025-0125	01-0125	244	\N	\N	\N	317883.96	\N	50202020-00	2A1-04	999	1	2072	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3086	DOC-2025-0126	01-0126	3483	\N	\N	\N	631940.4	\N	50202020-00	2A1-104	999	1	2073	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3087	DOC-2025-0127	01-0127	3483	\N	\N	\N	2676000	\N	50202020-00	2A1-101	999	1	2074	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3088	DOC-2025-0128	01-0128	3483	\N	\N	\N	1241221.32	\N	50202020-00	2A1-101	999	1	2075	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3089	DOC-2025-0128	01-0128	3483	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2075	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3090	DOC-2025-0128	01-0128	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2075	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3091	DOC-2025-0129	01-0129	1035	\N	\N	\N	9375	\N	50202020-00	2A1-101	999	1	2076	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3092	DOC-2025-0130	01-0130	1036	\N	\N	\N	211577.5	\N	50202020-00	2A1-104	999	1	2077	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3093	DOC-2025-0131	01-0131	1045	\N	\N	\N	2100000	\N	50212990-99	1A1	999	1	2078	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3094	DOC-2025-0132	01-0132	3483	\N	\N	\N	12684000	\N	50202020-00	2A1-102	999	1	2079	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3095	DOC-2025-0133	01-0133	3483	\N	\N	\N	1477925.31	\N	50202020-00	2A1-104	999	1	2080	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3096	DOC-2025-0133	01-0133	3483	\N	\N	\N	\N	\N	50202020-00	2A1-103	999	1	2080	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3097	DOC-2025-0134	01-0134	1038	\N	\N	\N	12102.18	\N	50202020-00	2A1-104	999	1	2081	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3098	DOC-2025-0135	01-0135	1027	\N	\N	\N	46994.85	\N	50202020-00	2A1-104	999	1	2082	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3099	DOC-2025-0136	01-0136	3483	\N	\N	\N	73402.17	\N	50103030 (733)	1A1	999	1	2083	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3100	DOC-2025-0136	01-0136	3483	\N	\N	\N	\N	\N	50103030 (733)	2A1-1	999	1	2083	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3101	DOC-2025-0136	01-0136	3483	\N	\N	\N	\N	\N	50103030 (733)	2A1-2	999	1	2083	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3102	DOC-2025-0136	01-0136	3483	\N	\N	\N	\N	\N	50103030 (733)	2A2-A	999	1	2083	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3103	DOC-2025-0136	01-0136	3483	\N	\N	\N	\N	\N	50103030 (733)	2A2-B	999	1	2083	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3104	DOC-2025-0137	01-0137	1041	\N	\N	\N	11400	\N	50103020 (732)	1A1	999	1	2084	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3105	DOC-2025-0137	01-0137	1041	\N	\N	\N	\N	\N	50103020 (732)	2A1-1	999	1	2084	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3106	DOC-2025-0137	01-0137	1041	\N	\N	\N	\N	\N	50103020 (732)	2A1-2	999	1	2084	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3107	DOC-2025-0137	01-0137	1040	\N	\N	\N	\N	\N	50103020 (732)	2A2-A	999	1	2084	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3108	DOC-2025-0137	01-0137	1040	\N	\N	\N	\N	\N	50103020 (732)	2A2-B	999	1	2084	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3109	DOC-2025-0138	01-0138	3483	\N	\N	\N	583082.66	\N	50202020-00	2A1-101	999	1	2085	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3110	DOC-2025-0138	01-0138	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2085	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3111	DOC-2025-0139	01-0139	767	\N	\N	\N	186161.36	\N	50202020-00	2A1-104	999	1	2086	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3112	DOC-2025-0140	01-0140	3483	\N	\N	\N	839000	\N	50202020-00	2A1-101  	999	1	2087	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3113	DOC-2025-0141	01-0141	3483	\N	\N	\N	4209000	\N	50202020-00	2A1-101	999	1	2088	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3114	DOC-2025-0141	01-0141	3483	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2088	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3115	DOC-2025-0141	01-0141	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2088	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3116	DOC-2025-0142	01-0142	124	\N	\N	\N	20072188.94	\N	50202020-00	2A1-101	999	1	2089	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3117	DOC-2025-0142	01-0142	92	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2089	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3118	DOC-2025-0142	01-0142	78	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2089	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3119	DOC-2025-0143	01-0143	1034	\N	\N	\N	11441188.94	\N	50202020-00	2A1-101  	999	1	2090	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3120	DOC-2025-0143	01-0143	1034	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2090	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3121	DOC-2025-0143	01-0143	1034	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2090	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3122	DOC-2025-0144	01-0144	3483	\N	\N	\N	7192500	\N	50202020-00	2A1-101  	999	1	2091	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3123	DOC-2025-0145	01-0145	3483	\N	\N	\N	98457.2	\N	50205020-02	1A1	999	1	2092	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3128	DOC-2025-0147	01-0147	3483	\N	\N	\N	14250	\N	50202020-00	2A1-AC PUSH SCIENCE	999	1	2094	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3129	DOC-2025-0148	01-0148	3483	\N	\N	\N	4429823.77	\N	50202020-00	2A1-101 RA10612	999	1	2095	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3130	DOC-2025-0148	01-0148	3483	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2095	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3131	DOC-2025-0148	01-0148	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2095	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3132	DOC-2025-0149	01-0149	3483	\N	\N	\N	30145231.8	\N	50202020-00	2A1-101	999	1	2096	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3133	DOC-2025-0149	01-0149	3483	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2096	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3134	DOC-2025-0149	01-0149	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2096	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3135	DOC-2025-0150	01-0150	3483	\N	\N	\N	21865688.94	\N	50202020-00	2A1-101	999	1	2097	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3136	DOC-2025-0150	01-0150	3483	\N	\N	\N	\N	\N	50202020-00	2A1-101 RA10612	999	1	2097	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3137	DOC-2025-0150	01-0150	3483	\N	\N	\N	\N	\N	50202020-00	2A1-102	999	1	2097	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3138	DOC-2025-0151	01-0151	3483	\N	\N	\N	50000	\N	50202010-02	2A2B-101	999	1	2098	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3139	DOC-2025-0152	01-0152	1025	\N	\N	\N	\N	\N	CANCEL	CANCEL	999	1	2099	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3140	DOC-2025-0153	01-0153	1027	\N	\N	\N	200430	\N	50202020-00	2A1-104	999	1	2100	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3141	DOC-2025-0154	01-0154	489	\N	\N	\N	129450	\N	50202020-00	2A1-104	999	1	2101	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3142	DOC-2025-0155	01-0155	126	\N	\N	\N	453467.95	\N	50202020-00	2A1-104	999	1	2102	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3143	DOC-2025-0156	01-0156	573	\N	\N	\N	26550.07	\N	50202020-00	2A1-104	999	1	2103	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3144	DOC-2025-0157	01-0157	3483	\N	\N	\N	2078332.98	\N	50202020-00	2A1-101	999	1	2104	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3145	DOC-2025-0158	01-0158	3483	\N	\N	\N	8529690	\N	50202020-00	2A1-104	999	1	2105	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3146	DOC-2025-0159	01-0159	3483	\N	\N	\N	160848.54	\N	50202020-00	2A1-104	999	1	2106	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3147	DOC-2025-0160	01-0160	3483	\N	\N	\N	5464000	\N	50202020-00	2A1-101	999	1	2107	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3148	DOC-2025-0161	01-0161	3483	\N	\N	\N	4437500	\N	50202020-00	2A1-102	999	1	2108	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3149	DOC-2025-0162	01-0162	3483	\N	\N	\N	945000	\N	50202020-00	2A1-102	999	1	2109	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3150	DOC-2025-0163	01-0163	1045	\N	\N	\N	4834.7	\N	50212990-99	1A1	999	1	2110	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3151	DOC-2025-0164	01-0164	3483	\N	\N	\N	423658	\N	50202020-00	2A1-104	999	1	2111	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3152	DOC-2025-0165	01-0165	3483	\N	\N	\N	38725	\N	50202020-00	2A1-104	999	1	2112	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3153	DOC-2025-0166	01-0166	3483	\N	\N	\N	66780	\N	50202020-00	2A1-104	999	1	2113	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3154	DOC-2025-0167	01-0167	3483	\N	\N	\N	7687000	\N	50202020-00	2A1-104	999	1	2114	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3155	DOC-2025-0168	01-0168	3483	\N	\N	\N	1737000	\N	50202020-00	2A1-104	999	1	2115	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3156	DOC-2025-0169	01-0169	3483	\N	\N	\N	304657.34	\N	50202020-00	2A1-AC DEV OF IS	999	1	2116	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3157	DOC-2025-0170	02-0170	3483	\N	\N	\N	599022.06	\N	50101010-01	1A1	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3158	DOC-2025-0170	02-0170	3483	\N	\N	\N	98576.98	\N	50101010-01	2A1-1	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3159	DOC-2025-0170	02-0170	3483	\N	\N	\N	279512.19	\N	50101010-01	2A1-2	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3160	DOC-2025-0170	02-0170	3483	\N	\N	\N	698067.04	\N	50101010-01	2A2	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3161	DOC-2025-0170	02-0170	3483	\N	\N	\N	36000	\N	50102010-01	1A1	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3162	DOC-2025-0170	02-0170	3483	\N	\N	\N	8000	\N	50102010-01	2A1-1	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3163	DOC-2025-0170	02-0170	3483	\N	\N	\N	22000	\N	50102010-01	2A1-2	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3164	DOC-2025-0170	02-0170	3483	\N	\N	\N	48000	\N	50102010-01	2A2	999	1	2117	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3165	DOC-2025-0171	02-0171	3483	\N	\N	\N	137404.94	\N	50101010-01	1A1	999	1	2118	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3166	DOC-2025-0171	02-0171	3483	\N	\N	\N	30389.52	\N	50101010-01	2A1-1	999	1	2118	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3167	DOC-2025-0171	02-0171	3483	\N	\N	\N	96103.31	\N	50101010-01	2A1-2	999	1	2118	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3168	DOC-2025-0171	02-0171	3483	\N	\N	\N	190799.46	\N	50101010-01	2A2	999	1	2118	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3169	DOC-2025-0172	02-0172	3483	\N	\N	\N	137397	\N	50101010-01	1A1	999	1	2119	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3170	DOC-2025-0172	02-0172	3483	\N	\N	\N	30387.75	\N	50101010-01	2A1-1	999	1	2119	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3171	DOC-2025-0172	02-0172	3483	\N	\N	\N	96099.25	\N	50101010-01	2A1-2	999	1	2119	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3172	DOC-2025-0172	02-0172	3483	\N	\N	\N	190786.25	\N	50101010-01	2A2	999	1	2119	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3173	DOC-2025-0173	02-0173	3483	\N	\N	\N	137397	\N	50101010-01	1A1	999	1	2120	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3174	DOC-2025-0173	02-0173	3483	\N	\N	\N	30387.75	\N	50101010-01	2A1-1	999	1	2120	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3175	DOC-2025-0173	02-0173	3483	\N	\N	\N	96099.25	\N	50101010-01	2A1-2	999	1	2120	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3176	DOC-2025-0173	02-0173	3483	\N	\N	\N	190786.25	\N	50101010-01	2A2	999	1	2120	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3177	DOC-2025-0174	02-0174	3483	\N	\N	\N	521882.17	\N	50202020-00	2A1-101	999	1	2121	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3178	DOC-2025-0174	02-0174	3483	\N	\N	\N	246841	\N	50202020-00	2A1-101 RA10612	999	1	2121	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3179	DOC-2025-0174	02-0174	3483	\N	\N	\N	1469945.66	\N	50202020-00	2A1-102	999	1	2121	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3180	DOC-2025-0175	02-0175	3483	\N	\N	\N	35549.46	\N	50202010-02	2A2B-101	999	1	2122	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3183	DOC-2025-0178	02-0178	3483	\N	\N	\N	2583000	\N	50202020-00	2A1-101	999	1	2125	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3184	DOC-2025-0179	02-0179	3483	\N	\N	\N	708000	\N	50202020-00	2A1-102	999	1	2126	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3185	DOC-2025-0180	02-0180	3483	\N	\N	\N	1858500	\N	50202020-00	2A1-102	999	1	2127	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3186	DOC-2025-0181	02-0181	1937	\N	\N	\N	48205.19	\N	50101010-01	2A1-1	999	1	2128	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3187	DOC-2025-0181	02-0181	518	\N	\N	\N	2363.64	\N	50102010-01	2A1-1	999	1	2128	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3188	DOC-2025-0181	02-0181	491	\N	\N	\N	590.91	\N	50102060-03	2A1-1	999	1	2128	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3189	DOC-2025-0181	02-0181	496	\N	\N	\N	3450	\N	50102050-02	2A1-1	999	1	2128	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3190	DOC-2025-0182	02-0182	952	\N	\N	\N	13200	\N	50202020-00	2A1-AC HR	999	1	2129	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3191	DOC-2025-0183	02-0183	3483	\N	\N	\N	252000	\N	50202020-00	2A1-101	999	1	2130	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3192	DOC-2025-0184	02-0184	225	\N	\N	\N	114000	\N	50202020-00	2A1-104	999	1	2131	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3193	DOC-2025-0185	02-0185	3483	\N	\N	\N	3467000	\N	50202020-00	2A1-101	999	1	2132	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3194	DOC-2025-0186	02-0186	939	\N	\N	\N	6600	\N	50202020-00	2A1-101	999	1	2133	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3195	DOC-2025-0187	02-0187	595	\N	\N	\N	72860.25	\N	50202020-00	2A1-104	999	1	2134	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3196	DOC-2025-0188	02-0188	3483	\N	\N	\N	1407000	\N	50202020-00	2A1-101	999	1	2135	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3197	DOC-2025-0189	02-0189	3483	\N	\N	\N	2210000	\N	50202020-00	2A1-102	999	1	2136	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3198	DOC-2025-0190	02-0190	3483	\N	\N	\N	20256.72	\N	50202020-00	2A1-101	999	1	2137	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3199	DOC-2025-0190	02-0190	3483	\N	\N	\N	35248.55	\N	50202020-00	2A1-102	999	1	2137	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3200	DOC-2025-0191	02-0191	1790	\N	\N	\N	74425.57	\N	50202020-00	2A1-104	999	1	2138	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3201	DOC-2025-0192	02-0192	1027	\N	\N	\N	181961.25	\N	50202020-00	2A1-104	999	1	2139	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3202	DOC-2025-0193	02-0193	1022	\N	\N	\N	227371.13	\N	50202020-00	2A1-104	999	1	2140	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3203	DOC-2025-0194	02-0194	992	\N	\N	\N	409645.5	\N	50202020-00	2A1-104	999	1	2141	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3204	DOC-2025-0195	02-0195	1021	\N	\N	\N	71217.5	\N	50202020-00	2A1-104	999	1	2142	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3205	DOC-2025-0196	02-0196	458	\N	\N	\N	30446.49	\N	50202020-00	2A1-104	999	1	2143	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3206	DOC-2025-0197	02-0197	3483	\N	\N	\N	1310269.32	\N	50202020-00	2A1-102	999	1	2144	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3207	DOC-2025-0197	02-0197	3483	\N	\N	\N	475097.66	\N	50202020-00	2A1-101  	999	1	2144	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3208	DOC-2025-0198	02-0198	1024	\N	\N	\N	284677.4	\N	50202020-00	2A1-104	999	1	2145	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3209	DOC-2025-0199	02-0199	3483	\N	\N	\N	4071000	\N	50202020-00	2A1-101	999	1	2146	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3210	DOC-2025-0200	02-0200	3483	\N	\N	\N	1255663.99	\N	50202020-00	2A1-101	999	1	2147	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3211	DOC-2025-0200	02-0200	3483	\N	\N	\N	33333.33	\N	50202020-00	2A1-101 RA10612	999	1	2147	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3212	DOC-2025-0200	02-0200	3483	\N	\N	\N	652839.74	\N	50202020-00	2A1-102	999	1	2147	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3213	DOC-2025-0201	02-0201	70	\N	\N	\N	10525448.73	\N	50202020-00	2A1-103	999	1	2148	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3214	DOC-2025-0202	02-0202	58	\N	\N	\N	414588	\N	50202020-00	2A1-104	999	1	2149	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3215	DOC-2025-0203	02-0203	3483	\N	\N	\N	749167	\N	50202020-00	2A1-104	999	1	2150	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3216	DOC-2025-0204	02-0204	3483	\N	\N	\N	47716675.16	\N	50202020-00	2A1-103	999	1	2151	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3217	DOC-2025-0205	02-0205	3483	\N	\N	\N	12142923.03	\N	50202020-00	2A1-104	999	1	2152	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3218	DOC-2025-0206	02-0206	3483	\N	\N	\N	1165362	\N	50202020-00	2A1-104	999	1	2153	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3219	DOC-2025-0207	02-0207	3483	\N	\N	\N	12880	\N	50202020-00	2A1-104	999	1	2154	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3220	DOC-2025-0208	02-0208	3483	\N	\N	\N	2096000	\N	50202020-00	2A1-104	999	1	2155	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3221	DOC-2025-0209	02-0209	3486	\N	\N	\N	37683066.93	\N	50202020-00	2A1-103	999	1	2156	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3223	DOC-2025-0211	02-0211	3483	\N	\N	\N	1384000	\N	50202020-00	2A1-101	999	1	2158	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3224	DOC-2025-0212	02-0212	3483	\N	\N	\N	984000	\N	50202020-00	2A1-101	999	1	2159	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3225	DOC-2025-0213	02-0213	3483	\N	\N	\N	2719842.63	\N	50202020-00	2A1-AC HR	999	1	2160	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3226	DOC-2025-0213	02-0213	3483	\N	\N	\N	15846.72	\N	50202020-00	2A1-AC NULAB	999	1	2160	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3227	DOC-2025-0213	02-0213	3483	\N	\N	\N	21497.85	\N	50202020-00	3A1-PD997	999	1	2160	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3228	DOC-2025-0214	02-0214	3483	\N	\N	\N	181145.86	\N	50204020-00	1A1	999	1	2161	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3229	DOC-2025-0215	02-0215	3483	\N	\N	\N	100000	\N	50203010-02	1A1	999	1	2162	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3230	DOC-2025-0215	02-0215	3483	\N	\N	\N	168112.71	\N	50203010-02	2A2 	999	1	2162	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3231	DOC-2025-0216	02-0216	3483	\N	\N	\N	2532.97	\N	50202010-02	2A2B-101	999	1	2163	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3232	DOC-2025-0216	02-0216	3483	\N	\N	\N	3500	\N	50202010-02	2A2B-105	999	1	2163	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3233	DOC-2025-0217	02-0217	3483	\N	\N	\N	77500	\N	50202020-00	2A1-AC HR	999	1	2164	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3234	DOC-2025-0218	02-0218	3011	\N	\N	\N	338965.56	\N	50202020-00	2A1-104	999	1	2165	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3235	DOC-2025-0219	02-0219	543	\N	\N	\N	161548.4	\N	50202020-00	2A1-104	999	1	2166	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3236	DOC-2025-0220	02-0220	3604	\N	\N	\N	185712.43	\N	50202020-00	2A1-104	999	1	2167	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3237	DOC-2025-0221	02-0221	492	\N	\N	\N	3252.8	\N	50202020-00	2A1-104	999	1	2168	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3238	DOC-2025-0222	02-0222	1034	\N	\N	\N	226666.61	\N	50202020-00	2A1-101	999	1	2169	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3239	DOC-2025-0222	02-0222	1033	\N	\N	\N	786666.47	\N	50202020-00	2A1-102	999	1	2169	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3240	DOC-2025-0223	02-0223	3138	\N	\N	\N	79898.27	\N	50202020-00	2A1-104	999	1	2170	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3241	DOC-2025-0224	02-0224	645	\N	\N	\N	130618.97	\N	50202020-00	2A1-104	999	1	2171	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3242	DOC-2025-0225	02-0225	3483	\N	\N	\N	641766.66	\N	50202020-00	2A1-104	999	1	2172	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3243	DOC-2025-0225	02-0225	3483	\N	\N	\N	35000	\N	50202020-00	2A1-103	999	1	2172	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3244	DOC-2025-0225	02-0225	3483	\N	\N	\N	924598.18	\N	50202020-00	2A1-101	999	1	2172	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3245	DOC-2025-0226	02-0226	3483	\N	\N	\N	3589827.94	\N	50202020-00	2A1-104	999	1	2173	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3246	DOC-2025-0226	02-0226	3483	\N	\N	\N	554328.26	\N	50202020-00	2A1-103	999	1	2173	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3247	DOC-2025-0227	02-0227	3483	\N	\N	\N	360000	\N	50202020-00	2A1-102	999	1	2174	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3248	DOC-2025-0228	02-0228	3483	\N	\N	\N	2436000	\N	50202020-00	2A1-101	999	1	2175	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3249	DOC-2025-0229	02-0229	3483	\N	\N	\N	404000	\N	50202020-00	2A1-102	999	1	2176	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3250	DOC-2025-0230	02-0230	3483	\N	\N	\N	4420000	\N	50202020-00	2A1-102	999	1	2177	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3251	DOC-2025-0231	02-0231	3483	\N	\N	\N	2940000	\N	50202020-00	2A1-101	999	1	2178	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3252	DOC-2025-0232	02-0232	3483	\N	\N	\N	1972000	\N	50202020-00	2A1-101	999	1	2179	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3253	DOC-2025-0233	02-0233	3483	\N	\N	\N	816000	\N	50202020-00	2A1-102	999	1	2180	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3254	DOC-2025-0234	02-0234	3483	\N	\N	\N	1232000	\N	50202020-00	2A1-101	999	1	2181	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3255	DOC-2025-0235	02-0235	3483	\N	\N	\N	1788000	\N	50202020-00	2A1-101	999	1	2182	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3256	DOC-2025-0236	02-0236	3483	\N	\N	\N	2504000	\N	50202020-00	2A1-102	999	1	2183	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3257	DOC-2025-0237	02-0237	3436	\N	\N	\N	860000	\N	50202020-00	2A1-101	999	1	2184	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3258	DOC-2025-0238	02-0238	3436	\N	\N	\N	5752000	\N	50202020-00	2A1-102	999	1	2185	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3259	DOC-2025-0239	02-0239	3380	\N	\N	\N	96000	\N	50202020-00	2A1-101	999	1	2186	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3260	DOC-2025-0240	02-0240	3341	\N	\N	\N	4528000	\N	50202020-00	2A1-101	999	1	2187	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3261	DOC-2025-0241	02-0241	3319	\N	\N	\N	536000	\N	50202020-00	2A1-101	999	1	2188	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3262	DOC-2025-0242	02-0242	3319	\N	\N	\N	1592000	\N	50202020-00	2A1-102	999	1	2189	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3263	DOC-2025-0243	02-0243	3307	\N	\N	\N	14748	\N	50202020-00	2A1-101 PATRIOT	999	1	2190	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3264	DOC-2025-0244	02-0244	3307	\N	\N	\N	1546500	\N	50202020-00	2A1-102	999	1	2191	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3265	DOC-2025-0245	02-0245	3304	\N	\N	\N	4180000	\N	50202020-00	2A1-102	999	1	2192	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3266	DOC-2025-0246	02-0246	3302	\N	\N	\N	211000	\N	50202020-00	2A1-102	999	1	2193	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3267	DOC-2025-0247	02-0247	3302	\N	\N	\N	167088.05	\N	50202020-00	2A1-101	999	1	2194	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3268	DOC-2025-0248	02-0248	3483	\N	\N	\N	835628.77	\N	50202020-00	2A1-101	999	1	2195	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3269	DOC-2025-0248	02-0248	3483	\N	\N	\N	11000	\N	50202020-00	2A1-101 RA 10612	999	1	2195	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3270	DOC-2025-0248	02-0248	3483	\N	\N	\N	55000	\N	50202020-00	2A1-102	999	1	2195	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3271	DOC-2025-0249	02-0249	3483	\N	\N	\N	34609768.93	\N	50202020-00	2A1-103	999	1	2196	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3272	DOC-2025-0250	02-0250	1047	\N	\N	\N	483265.9	\N	50202020-00	2A1-101	999	1	2197	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3273	DOC-2025-0250	02-0250	1047	\N	\N	\N	3000	\N	50202020-00	2A1-101 RA 10612	999	1	2197	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3274	DOC-2025-0250	02-0250	1047	\N	\N	\N	28000	\N	50202020-00	2A1-102	999	1	2197	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3275	DOC-2025-0251	02-0251	3483	\N	\N	\N	2378666.16	\N	50202020-00	2A1-101	999	1	2198	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3276	DOC-2025-0251	02-0251	3483	\N	\N	\N	14333.33	\N	50202020-00	2A1-101 RA 10612	999	1	2198	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3277	DOC-2025-0251	02-0251	3483	\N	\N	\N	3755332.46	\N	50202020-00	2A1-102	999	1	2198	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3278	DOC-2025-0252	02-0252	3483	\N	\N	\N	479265.9	\N	50202020-00	2A1-101	999	1	2199	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3279	DOC-2025-0253	02-0253	3483	\N	\N	\N	1328731.8	\N	50202020-00	2A1-101	999	1	2200	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3280	DOC-2025-0253	02-0253	3483	\N	\N	\N	15000	\N	50202020-00	2A1-101 RA10612	999	1	2200	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3281	DOC-2025-0253	02-0253	3483	\N	\N	\N	119000	\N	50202020-00	2A1-102	999	1	2200	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3282	DOC-2025-0254	02-0254	3483	\N	\N	\N	4579265.9	\N	50202020-00	2A1-101	999	1	2201	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3283	DOC-2025-0254	02-0254	3483	\N	\N	\N	63000	\N	50202020-00	2A1-101 RA10612	999	1	2201	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3284	DOC-2025-0254	02-0254	3483	\N	\N	\N	1953000	\N	50202020-00	2A1-102	999	1	2201	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3285	DOC-2025-0255	02-0255	3483	\N	\N	\N	43756203.16	\N	50202020-00	2A1-103	999	1	2202	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3286	DOC-2025-0256	02-0256	3302	\N	\N	\N	4200	\N	50202010-02	2A2B-101	999	1	2203	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3287	DOC-2025-0257	02-0257	31	\N	\N	\N	11978995.03	\N	50202020-00	2A1-105	999	1	2204	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3288	DOC-2025-0258	02-0258	1033	\N	\N	\N	33130429.9	\N	50202020-00	2A1-105	999	1	2205	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3289	DOC-2025-0259	02-0259	3483	\N	\N	\N	50639339.92	\N	50202020-00	2A1-103	999	1	2206	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3290	DOC-2025-0260	02-0260	3483	\N	\N	\N	43969923.45	\N	50202020-00	2A1-103	999	1	2207	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3291	DOC-2025-0261	02-0261	1033	\N	\N	\N	37502599.5	\N	50202020-00	2A1-103	999	1	2208	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3292	DOC-2025-0262	02-0262	3483	\N	\N	\N	2374265.9	\N	50202020-00	2A1-101 PATRIOT	999	1	2209	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3293	DOC-2025-0262	02-0262	3483	\N	\N	\N	21000	\N	50202020-00	2A1-101 RA 10612	999	1	2209	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3294	DOC-2025-0262	02-0262	3483	\N	\N	\N	1071000	\N	50202020-00	2A1-102	999	1	2209	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3295	DOC-2025-0263	02-0263	3483	\N	\N	\N	61245196.83	\N	50202020-00	2A1-105	999	1	2210	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3296	DOC-2025-0264	02-0264	3483	\N	\N	\N	11195629.9	\N	50202020-00	2A1-105	999	1	2211	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3297	DOC-2025-0265	02-0265	3486	\N	\N	\N	15184595.03	\N	50202020-00	2A1-105	999	1	2212	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3298	DOC-2025-0266	02-0266	1245	\N	\N	\N	193000	\N	50202020-00	2A1-104	999	1	2213	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3299	DOC-2025-0267	02-0267	1033	\N	\N	\N	3494000	\N	50202020-00	2A1-104	999	1	2214	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3300	DOC-2025-0268	02-0268	3483	\N	\N	\N	1035000	\N	50202020-00	2A1-104	999	1	2215	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3301	DOC-2025-0269	02-0269	1035	\N	\N	\N	772000	\N	50202020-00	2A1-104	999	1	2216	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3302	DOC-2025-0270	02-0270	3483	\N	\N	\N	1584000	\N	50202020-00	2A1-104	999	1	2217	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3303	DOC-2025-0271	02-0271	3483	\N	\N	\N	127882.05	\N	50212020-00	1A1	999	1	2218	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3304	DOC-2025-0272	02-0272	1038	\N	\N	\N	9500	\N	50203010-02	1A1	999	1	2219	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3305	DOC-2025-0272	02-0272	1038	\N	\N	\N	8080	\N	50202020-00	2A1-AC SCHOLAR GRADS	999	1	2219	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3306	DOC-2025-0273	02-0273	3483	\N	\N	\N	30000	\N	50203990-00	1A1	999	1	2220	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3307	DOC-2025-0273	02-0273	3483	\N	\N	\N	4078.03	\N	50213060-01	1A1	999	1	2220	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3308	DOC-2025-0274	02-0274	3483	\N	\N	\N	18300000	\N	50202020-00	2A1-104	999	1	2221	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3309	DOC-2025-0275	02-0275	3283	\N	\N	\N	6460	\N	50205020-01	1A1	999	1	2222	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3310	DOC-2025-0276	02-0276	3279	\N	\N	\N	106000	\N	50202020-00	2A1-102	999	1	2223	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3312	DOC-2025-0278	02-0278	3483	\N	\N	\N	100000	\N	50202010-02	2A2B-105	999	1	2225	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3313	DOC-2025-0279	02-0279	3279	\N	\N	\N	1421366.36	\N	50202020-00	2A1-104	999	1	2226	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3314	DOC-2025-0280	02-0280	3483	\N	\N	\N	24614.3	\N	50205020-02	1A1	999	1	2227	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3315	DOC-2025-0281	02-0281	3484	\N	\N	\N	7558000	\N	50202020-00	2A1-104	999	1	2228	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3316	DOC-2025-0282	02-0282	3483	\N	\N	\N	2360000	\N	50202020-00	2A1-104	999	1	2229	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3317	DOC-2025-0283	02-0283	3483	\N	\N	\N	4720000	\N	50202020-00	2A1-104	999	1	2230	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3318	DOC-2025-0284	02-0284	1035	\N	\N	\N	4796000	\N	50202020-00	2A1-104	999	1	2231	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3319	DOC-2025-0285	02-0285	3483	\N	\N	\N	10586229.9	\N	50202020-00	2A1-105	999	1	2232	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3320	DOC-2025-0286	02-0286	3483	\N	\N	\N	2720000	\N	50202020-00	2A1-104	999	1	2233	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3321	DOC-2025-0287	02-0287	3486	\N	\N	\N	17140629.9	\N	50202020-00	2A1-105	999	1	2234	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3322	DOC-2025-0288	02-0288	3483	\N	\N	\N	20170000	\N	50202020-00	2A1-104	999	1	2235	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3323	DOC-2025-0289	02-0289	3483	\N	\N	\N	14013995.03	\N	50202020-00	2A1-105	999	1	2236	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3324	DOC-2025-0290	02-0290	3483	\N	\N	\N	18582000	\N	50202020-00	2A1-104	999	1	2237	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3325	DOC-2025-0291	02-0291	1237	\N	\N	\N	1772000	\N	50202020-00	2A1-104	999	1	2238	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3326	DOC-2025-0292	02-0292	3483	\N	\N	\N	44183044.77	\N	50202020-00	2A1-105	999	1	2239	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3327	DOC-2025-0293	02-0293	3489	\N	\N	\N	19550307.9	\N	50202020-00	2A1-105	999	1	2240	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3328	DOC-2025-0294	02-0294	3484	\N	\N	\N	3636000	\N	50202020-00	2A1-104	999	1	2241	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3329	DOC-2025-0295	02-0295	1035	\N	\N	\N	3876000	\N	50202020-00	2A1-104	999	1	2242	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3330	DOC-2025-0296	02-0296	3483	\N	\N	\N	10123995.03	\N	50202020-00	2A1-105	999	1	2243	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3331	DOC-2025-0297	02-0297	3483	\N	\N	\N	3704000	\N	50202020-00	2A1-104	999	1	2244	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3332	DOC-2025-0298	02-0298	3483	\N	\N	\N	2545429.9	\N	50202020-00	2A1-105	999	1	2245	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3333	DOC-2025-0299	02-0299	3483	\N	\N	\N	7004000	\N	50202020-00	2A1-104	999	1	2246	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3334	DOC-2025-0300	02-0300	3483	\N	\N	\N	15276395.03	\N	50202020-00	2A1-105	999	1	2247	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3335	DOC-2025-0301	02-0301	1037	\N	\N	\N	6196000	\N	50202020-00	2A1-104	999	1	2248	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3336	DOC-2025-0302	02-0302	3483	\N	\N	\N	6101429.9	\N	50202020-00	2A1-105	999	1	2249	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3337	DOC-2025-0303	02-0303	3483	\N	\N	\N	1052000	\N	50202020-00	2A1-104	999	1	2250	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3338	DOC-2025-0304	02-0304	3483	\N	\N	\N	6015829.9	\N	50202020-00	2A1-105	999	1	2251	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3339	DOC-2025-0305	02-0305	3483	\N	\N	\N	26979.04	\N	50202020-00	2A1-101	999	1	2252	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3340	DOC-2025-0306	02-0306	3279	\N	\N	\N	413769	\N	50202020-00	2A1-101 PATRIOT	999	1	2253	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3341	DOC-2025-0307	02-0307	3279	\N	\N	\N	150000	\N	50202020-00	2A1-101 RA10612	999	1	2254	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3342	DOC-2025-0308	02-0308	3279	\N	\N	\N	11610	\N	50202020-00	2A1-101 PATRIOT	999	1	2255	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3343	DOC-2025-0309	02-0309	3279	\N	\N	\N	1058456.31	\N	50202020-00	2A1-104	999	1	2256	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3344	DOC-2025-0310	02-0310	3279	\N	\N	\N	1248000	\N	50202020-00	2A1-101	999	1	2257	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3345	DOC-2025-0311	02-0311	3279	\N	\N	\N	114710	\N	50202020-00	2A1-102	999	1	2258	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3346	DOC-2025-0312	02-0312	3279	\N	\N	\N	800000	\N	50202020-00	2A1-102	999	1	2259	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3347	DOC-2025-0313	02-0313	3279	\N	\N	\N	600000	\N	50202020-00	2A1-102	999	1	2260	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3348	DOC-2025-0314	02-0314	3279	\N	\N	\N	1240000	\N	50202020-00	2A1-102	999	1	2261	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3349	DOC-2025-0315	02-0315	3279	\N	\N	\N	334000	\N	50202020-00	2A1-102	999	1	2262	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3350	DOC-2025-0316	02-0316	3279	\N	\N	\N	91000	\N	50202020-00	2A1-102	999	1	2263	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3351	DOC-2025-0317	02-0317	3279	\N	\N	\N	3339000	\N	50202020-00	2A1-102	999	1	2264	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3352	DOC-2025-0318	02-0318	3279	\N	\N	\N	1635000	\N	50202020-00	2A1-102	999	1	2265	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3353	DOC-2025-0319	02-0319	3167	\N	\N	\N	108000	\N	50202020-00	2A1-102	999	1	2266	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3354	DOC-2025-0320	02-0320	3167	\N	\N	\N	296500	\N	50202020-00	2A1-102	999	1	2267	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3355	DOC-2025-0321	02-0321	3167	\N	\N	\N	2223000	\N	50202020-00	2A1-102	999	1	2268	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3356	DOC-2025-0322	02-0322	196	\N	\N	\N	27360.16	\N	50202020-00	2A1-104	999	1	2269	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3357	DOC-2025-0323	02-0323	236	\N	\N	\N	181439.4	\N	50202020-00	2A1-104	999	1	2270	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3358	DOC-2025-0324	02-0324	3140	\N	\N	\N	12960	\N	50202020-00	2A1-101 PATRIOT	999	1	2271	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3359	DOC-2025-0325	02-0325	1825	\N	\N	\N	7191.45	\N	50202020-00	2A1-104	999	1	2272	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3360	DOC-2025-0326	02-0326	3483	\N	\N	\N	315.55	\N	50202020-00	2A1-104	999	1	2273	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3361	DOC-2025-0327	02-0327	3051	\N	\N	\N	55391.73	\N	50102120-01	1A1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3362	DOC-2025-0327	02-0327	3038	\N	\N	\N	158433.95	\N	50102110-01	1A1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3363	DOC-2025-0327	02-0327	3010	\N	\N	\N	36450	\N	50102050-02	1A1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3364	DOC-2025-0327	02-0327	2968	\N	\N	\N	7795.46	\N	50102060-03	1A1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3365	DOC-2025-0327	02-0327	2952	\N	\N	\N	12614.82	\N	50102120-01	2A1-1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3366	DOC-2025-0327	02-0327	2949	\N	\N	\N	18170.1	\N	50102110-01	2A1-1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3367	DOC-2025-0327	02-0327	2860	\N	\N	\N	5700	\N	50102050-02	2A1-1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3368	DOC-2025-0327	02-0327	2860	\N	\N	\N	1431.82	\N	50102060-03	2A1-1	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3369	DOC-2025-0327	02-0327	2857	\N	\N	\N	28725.02	\N	50102120-01	2A1-2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3370	DOC-2025-0327	02-0327	2857	\N	\N	\N	65700.04	\N	50102110-01	2A1-2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3371	DOC-2025-0327	02-0327	2824	\N	\N	\N	16800	\N	50102050-02	2A1-2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3372	DOC-2025-0327	02-0327	2810	\N	\N	\N	4227.29	\N	50102060-03	2A1-2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3373	DOC-2025-0327	02-0327	2774	\N	\N	\N	67262.48	\N	50102120-01	2A2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3374	DOC-2025-0327	02-0327	2774	\N	\N	\N	156622.01	\N	50102110-01	2A2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3375	DOC-2025-0327	02-0327	2766	\N	\N	\N	48900	\N	50102050-02	2A2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3376	DOC-2025-0327	02-0327	2766	\N	\N	\N	10340.92	\N	50102060-03	2A2	999	1	2274	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3377	DOC-2025-0328	02-0328	1488	\N	\N	\N	63215.88	\N	50202020-00	2A1-104	999	1	2275	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3378	DOC-2025-0329	02-0329	2766	\N	\N	\N	415000	\N	50202020-00	2A1-101	999	1	2276	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3379	DOC-2025-0330	02-0330	2766	\N	\N	\N	3385000	\N	50202020-00	2A1-101	999	1	2277	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3380	DOC-2025-0331	02-0331	2769	\N	\N	\N	110000	\N	50202020-00	2A1-104	999	1	2278	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3381	DOC-2025-0332	02-0332	3483	\N	\N	\N	830000	\N	50202020-00	2A1-104	999	1	2279	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3382	DOC-2025-0333	02-0333	3483	\N	\N	\N	27001.91	\N	50202020-00	2A1-104	999	1	2280	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3383	DOC-2025-0334	02-0334	2766	\N	\N	\N	74500	\N	50202020-00	2A1-101 PATRIOT	999	1	2281	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3384	DOC-2025-0335	02-0335	274	\N	\N	\N	40000	\N	50202020-00	2A1-101	999	1	2282	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3385	DOC-2025-0336	02-0336	1548	\N	\N	\N	355339.34	\N	50202020-00	2A1-104	999	1	2283	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3386	DOC-2025-0337	02-0337	1024	\N	\N	\N	112799.23	\N	50202020-00	2A1-104	999	1	2284	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3387	DOC-2025-0338	02-0338	3483	\N	\N	\N	180660	\N	50202020-00	2A1-101	999	1	2285	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3388	DOC-2025-0338	02-0338	3483	\N	\N	\N	414068	\N	50202020-00	2A1-102	999	1	2285	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3389	DOC-2025-0339	02-0339	2766	\N	\N	\N	3438000	\N	50202020-00	2A1-101	999	1	2286	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3390	DOC-2025-0340	02-0340	2766	\N	\N	\N	1152000	\N	50202020-00	2A1-101 	999	1	2287	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3391	DOC-2025-0341	02-0341	3483	\N	\N	\N	2500	\N	50205020-01	1A1	999	1	2288	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3392	DOC-2025-0342	02-0342	1033	\N	\N	\N	220000	\N	50202020-00	2A1-104	999	1	2289	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3393	DOC-2025-0343	02-0343	3483	\N	\N	\N	32200.29	\N	50101010-01	2A2	999	1	2290	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3394	DOC-2025-0343	02-0343	3483	\N	\N	\N	1818.18	\N	50102010-01	2A2	999	1	2290	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3395	DOC-2025-0344	02-0344	1091	\N	\N	\N	9846	\N	50201010-00	2A2	999	1	2291	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3396	DOC-2025-0345	02-0345	3483	\N	\N	\N	50000	\N	50202020-00	2A1-101 PATRIOT	999	1	2292	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3397	DOC-2025-0346	02-0346	3483	\N	\N	\N	2216	\N	50210030-00	1A1	999	1	2293	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3400	DOC-2025-0349	02-0349	3483	\N	\N	\N	84016	\N	50202020-00	2A1-104	999	1	2296	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3401	DOC-2025-0350	02-0350	3483	\N	\N	\N	1000	\N	50202010-02	2A2B-101	999	1	2297	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3402	DOC-2025-0351	02-0351	1051	\N	\N	\N	43872	\N	50201010-00	1A1	999	1	2298	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3403	DOC-2025-0352	02-0352	2766	\N	\N	\N	1421000	\N	50202020-00	2A1-101	999	1	2299	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3404	DOC-2025-0353	02-0353	3483	\N	\N	\N	43778	\N	50202020-00	2A1-104	999	1	2300	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3405	DOC-2025-0354	02-0354	244	\N	\N	\N	3299.73	\N	50202020-00	2A1-104	999	1	2301	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3406	DOC-2025-0355	02-0355	178	\N	\N	\N	40705	\N	50202020-00	2A1-101	999	1	2302	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3407	DOC-2025-0355	02-0355	1428	\N	\N	\N	60000	\N	50202020-00	2A1-102	999	1	2302	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3408	DOC-2025-0356	02-0356	3483	\N	\N	\N	143000	\N	50202020-00	2A1-101	999	1	2303	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3409	DOC-2025-0357	02-0357	3483	\N	\N	\N	60455	\N	50202020-00	2A1-101	999	1	2304	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3410	DOC-2025-0358	02-0358	858	\N	\N	\N	20455	\N	50202020-00	2A1-102	999	1	2305	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3411	DOC-2025-0359	02-0359	3483	\N	\N	\N	494146	\N	50202020-00	2A1-101	999	1	2306	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3412	DOC-2025-0359	02-0359	3483	\N	\N	\N	160000	\N	50202020-00	2A1-102	999	1	2306	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3413	DOC-2025-0360	02-0360	3484	\N	\N	\N	22977	\N	50202020-00	2A1-101	999	1	2307	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3414	DOC-2025-0360	02-0360	3484	\N	\N	\N	31670	\N	50202020-00	2A1-102	999	1	2307	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3415	DOC-2025-0361	02-0361	2766	\N	\N	\N	552537.82	\N	50202020-00	2A1-101	999	1	2308	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3416	DOC-2025-0361	02-0361	2766	\N	\N	\N	495038.32	\N	50202020-00	2A1-102	999	1	2308	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3417	DOC-2025-0362	02-0362	3483	\N	\N	\N	340100	\N	50202020-00	2A1-AC PLANNING	999	1	2309	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3418	DOC-2025-0363	02-0363	3483	\N	\N	\N	579403.08	\N	50202020-00	2A1-101	999	1	2310	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3419	DOC-2025-0363	02-0363	3483	\N	\N	\N	155000	\N	50202020-00	2A1-102	999	1	2310	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3420	DOC-2025-0364	02-0364	2766	\N	\N	\N	78897.6	\N	50202020-00	2A1-101	999	1	2311	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3421	DOC-2025-0365	02-0365	463	\N	\N	\N	7191.45	\N	50202020-00	2A1-101	999	1	2312	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3422	DOC-2025-0366	02-0366	2766	\N	\N	\N	174000	\N	50202020-00	2A1-101	999	1	2313	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3423	DOC-2025-0367	02-0367	3483	\N	\N	\N	584	\N	50202020-00	2A1-AC HR	999	1	2314	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3424	DOC-2025-0368	02-0368	3483	\N	\N	\N	217649.66	\N	50202020-00	2A1-104	999	1	2315	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3425	DOC-2025-0369	02-0369	3483	\N	\N	\N	1582603.23	\N	50202020-00	2A1-104	999	1	2316	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3426	DOC-2025-0370	02-0370	2763	\N	\N	\N	20781.81	\N	50202020-00	2A1-AC FAD	999	1	2317	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3427	DOC-2025-0371	02-0371	2757	\N	\N	\N	89000	\N	50202020-00	2A1-102	999	1	2318	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3428	DOC-2025-0372	02-0372	2757	\N	\N	\N	2826099.79	\N	50202020-00	2A1-AC HR	999	1	2319	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3429	DOC-2025-0372	02-0372	2757	\N	\N	\N	19683.28	\N	50202020-00	2A1-AC NULAB	999	1	2319	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3430	DOC-2025-0372	02-0372	2757	\N	\N	\N	23801.25	\N	50211990-00	3A1-PD997	999	1	2319	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3432	DOC-2025-0374	02-0374	2754	\N	\N	\N	435000	\N	50202020-00	2A1-101	999	1	2321	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3433	DOC-2025-0375	02-0375	2747	\N	\N	\N	48000	\N	50202020-00	2A1-102	999	1	2322	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3434	DOC-2025-0376	02-0376	2747	\N	\N	\N	4271500	\N	50202020-00	2A1-102	999	1	2323	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3435	DOC-2025-0377	02-0377	2747	\N	\N	\N	18502000	\N	50202020-00	2A1-101	999	1	2324	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3436	DOC-2025-0378	02-0378	2742	\N	\N	\N	125197.6	\N	50202020-00	2A1-101	999	1	2325	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3437	DOC-2025-0379	02-0379	2742	\N	\N	\N	4206000	\N	50202020-00	2A1-101	999	1	2326	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3438	DOC-2025-0380	02-0380	3483	\N	\N	\N	150000	\N	50202020-00	2A1-AC NULAB	999	1	2327	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3439	DOC-2025-0381	02-0381	2740	\N	\N	\N	1068000	\N	50202020-00	2A1-101	999	1	2328	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3440	DOC-2025-0382	02-0382	2737	\N	\N	\N	135000	\N	50202020-00	2A1-101	999	1	2329	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3441	DOC-2025-0383	02-0383	2734	\N	\N	\N	320000	\N	50202020-00	2A1-104	999	1	2330	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3442	DOC-2025-0384	02-0384	2732	\N	\N	\N	124333.33	\N	50202020-00	2A1-102	999	1	2331	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3443	DOC-2025-0385	02-0385	2730	\N	\N	\N	184000	\N	50202020-00	2A1-102	999	1	2332	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3444	DOC-2025-0386	02-0386	1035	\N	\N	\N	134664	\N	50202020-00	2A1-104	999	1	2333	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3445	DOC-2025-0387	02-0387	3483	\N	\N	\N	40000	\N	50202020-00	2A1-101	999	1	2334	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3446	DOC-2025-0388	02-0388	3483	\N	\N	\N	20455	\N	50202020-00	2A1-101	999	1	2335	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3447	DOC-2025-0388	02-0388	3483	\N	\N	\N	40000	\N	50202020-00	2A1-102	999	1	2335	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3448	DOC-2025-0389	02-0389	3483	\N	\N	\N	20455	\N	50202020-00	2A1-101	999	1	2336	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3449	DOC-2025-0390	02-0390	3483	\N	\N	\N	27171.66	\N	50202020-00	2A1-101	999	1	2337	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3450	DOC-2025-0390	02-0390	3483	\N	\N	\N	13333.33	\N	50202020-00	2A1-102	999	1	2337	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3451	DOC-2025-0391	02-0391	151	\N	\N	\N	20000	\N	50202020-00	2A1-101	999	1	2338	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3452	DOC-2025-0391	02-0391	2864	\N	\N	\N	20000	\N	50202020-00	2A1-102	999	1	2338	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3453	DOC-2025-0392	02-0392	1013	\N	\N	\N	17777.59	\N	50202020-00	2A1-101	999	1	2339	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3454	DOC-2025-0393	02-0393	2730	\N	\N	\N	389980.97	\N	50202020-00	2A1-102	999	1	2340	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3455	DOC-2025-0394	02-0394	2726	\N	\N	\N	1484000	\N	50202020-00	2A1-102	999	1	2341	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3456	DOC-2025-0395	02-0395	1059	\N	\N	\N	52500	\N	50203090-00	1A1	999	1	2342	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3457	DOC-2025-0395	02-0395	1059	\N	\N	\N	52500	\N	50203090-00	2A1-1	999	1	2342	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3458	DOC-2025-0395	02-0395	1059	\N	\N	\N	52500	\N	50203090-00	2A1-2	999	1	2342	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3459	DOC-2025-0395	02-0395	1055	\N	\N	\N	52500	\N	50203090-00	2A2 	999	1	2342	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3460	DOC-2025-0396	02-0396	3484	\N	\N	\N	171660	\N	50202020-00	2A1-101	999	1	2343	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3461	DOC-2025-0396	02-0396	3484	\N	\N	\N	400000	\N	50202020-00	2A1-102	999	1	2343	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3462	DOC-2025-0397	02-0397	1047	\N	\N	\N	24206	\N	50201010-00	1A1	999	1	2344	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3463	DOC-2025-0398	02-0398	3483	\N	\N	\N	28002.9	\N	50202020-00	2A1-101 	999	1	2345	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3464	DOC-2025-0399	02-0399	643	\N	\N	\N	25639.68	\N	50202020-00	2A1-104	999	1	2346	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3465	DOC-2025-0400	02-0400	2726	\N	\N	\N	1160000	\N	50202020-00	2A1-104	999	1	2347	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3466	DOC-2025-0401	02-0401	3483	\N	\N	\N	90691.88	\N	50202020-00	2A1-104	999	1	2348	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3467	DOC-2025-0402	02-0402	3483	\N	\N	\N	506300.95	\N	50202020-00	2A1-104	999	1	2349	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3468	DOC-2025-0403	02-0403	3483	\N	\N	\N	90000	\N	50202020-00	2A1-104	999	1	2350	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3469	DOC-2025-0404	02-0404	963	\N	\N	\N	68067.12	\N	50202020-00	2A1-104	999	1	2351	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3470	DOC-2025-0405	02-0405	2726	\N	\N	\N	25750	\N	50102020-00	1A1	999	1	2352	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3471	DOC-2025-0405	02-0405	2725	\N	\N	\N	7500	\N	50102020-00	2A1-2	999	1	2352	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3472	DOC-2025-0405	02-0405	2723	\N	\N	\N	12000	\N	50102020-00	2A2	999	1	2352	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3473	DOC-2025-0405	02-0405	2719	\N	\N	\N	6000	\N	50102030-01	1A1	999	1	2352	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3474	DOC-2025-0405	02-0405	2717	\N	\N	\N	6000	\N	50102030-01	2A1-2	999	1	2352	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3475	DOC-2025-0405	02-0405	2717	\N	\N	\N	12000	\N	50102030-01	2A2	999	1	2352	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3476	DOC-2025-0406	02-0406	2714	\N	\N	\N	4266.2	\N	50202020-00	2A1-101	999	1	2353	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3477	DOC-2025-0406	02-0406	2710	\N	\N	\N	40621.28	\N	50202020-00	2A1-102	999	1	2353	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3479	DOC-2025-0408	02-0408	3483	\N	\N	\N	961953	\N	50202020-00	2A1-104	999	1	2355	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3480	DOC-2025-0409	02-0409	2709	\N	\N	\N	15750	\N	50202020-00	2A1-AC NULAB	999	1	2356	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3481	DOC-2025-0410	02-0410	3483	\N	\N	\N	223796.55	\N	50204020-00	1A1	999	1	2357	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3482	DOC-2025-0411	02-0411	1045	\N	\N	\N	124301.74	\N	50215030-00	1A1	999	1	2358	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3483	DOC-2025-0412	02-0412	2709	\N	\N	\N	7200	\N	50202020-00	2A1-101 PATRIOT	999	1	2359	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3484	DOC-2025-0413	02-0413	1034	\N	\N	\N	30000	\N	50202020-00	2A1-AC PLANNING	999	1	2360	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3485	DOC-2025-0414	02-0414	3590	\N	\N	\N	388799.6	\N	50202020-00	2A1-101	999	1	2361	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3486	DOC-2025-0415	02-0415	1036	\N	\N	\N	250000	\N	50202010-02	2A2B-105	999	1	2362	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3487	DOC-2025-0416	02-0416	3483	\N	\N	\N	916542	\N	50202020-00	2A1-101  	999	1	2363	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3488	DOC-2025-0416	02-0416	3483	\N	\N	\N	1000000	\N	50202020-00	2A1-102	999	1	2363	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3489	DOC-2025-0417	02-0417	3566	\N	\N	\N	27471.84	\N	50202020-00	2A1-104	999	1	2364	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3492	DOC-2025-0420	02-0420	2709	\N	\N	\N	3355483	\N	50202020-00	2A1-104	999	1	2367	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3493	DOC-2025-0421	02-0421	2709	\N	\N	\N	3599361.69	\N	50202020-00	2A1-104	999	1	2368	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3494	DOC-2025-0421	02-0421	2660	\N	\N	\N	532538.33	\N	50202020-00	2A1-103	999	1	2368	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3495	DOC-2025-0422	02-0422	3483	\N	\N	\N	33710	\N	50202020-00	2A1-AC HR	999	1	2369	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3496	DOC-2025-0423	02-0423	3483	\N	\N	\N	4140	\N	50202020-00	2A1-101 PATRIOT	999	1	2370	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3497	DOC-2025-0424	02-0424	1034	\N	\N	\N	22000	\N	50202020-00	2A1-104	999	1	2371	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3498	DOC-2025-0425	02-0425	1941	\N	\N	\N	75683.32	\N	50202020-00	2A1-104	999	1	2372	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3499	DOC-2025-0426	02-0426	2658	\N	\N	\N	35700	\N	50202010-02	2A2B-105	999	1	2373	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3500	DOC-2025-0427	02-0427	1039	\N	\N	\N	283.5	\N	50202020-00	2A1-AC HR	999	1	2374	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3501	DOC-2025-0428	02-0428	2658	\N	\N	\N	9473	\N	50205020-01	2A2	999	1	2375	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3502	DOC-2025-0429	02-0429	3483	\N	\N	\N	1050	\N	50202010-02	2A2B-101	999	1	2376	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3503	DOC-2025-0430	02-0430	1045	\N	\N	\N	685.67	\N	50103010 (731)	1A1	999	1	2377	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3504	DOC-2025-0430	02-0430	1045	\N	\N	\N	6580.31	\N	50103010 (731)	2A1-2	999	1	2377	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3505	DOC-2025-0430	02-0430	1045	\N	\N	\N	5016.92	\N	50103010 (731)	2A2-A	999	1	2377	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3506	DOC-2025-0430	02-0430	1045	\N	\N	\N	1189.73	\N	50103010 (731)	2A2-B	999	1	2377	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3507	DOC-2025-0430	02-0430	1044	\N	\N	\N	200	\N	50103040 (734)	2A1-2	999	1	2377	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3508	DOC-2025-0430	02-0430	1044	\N	\N	\N	100	\N	50103040 (734)	2A2-A	999	1	2377	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3509	DOC-2025-0431	02-0431	1044	\N	\N	\N	116085.36	\N	50103010 (731)	1A1	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3510	DOC-2025-0431	02-0431	1044	\N	\N	\N	21767.16	\N	50103010 (731)	2A1-1	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3511	DOC-2025-0431	02-0431	1043	\N	\N	\N	65156.76	\N	50103010 (731)	2A1-2	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3512	DOC-2025-0431	02-0431	1043	\N	\N	\N	76887.24	\N	50103010 (731)	2A2-A	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3513	DOC-2025-0431	02-0431	1043	\N	\N	\N	68905.08	\N	50103010 (731)	2A2-B	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3514	DOC-2025-0431	02-0431	1043	\N	\N	\N	1800	\N	50103040 (734)	1A1	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3515	DOC-2025-0431	02-0431	1043	\N	\N	\N	400	\N	50103040 (734)	2A1-1	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3516	DOC-2025-0431	02-0431	1042	\N	\N	\N	1100	\N	50103040 (734)	2A1-2	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3517	DOC-2025-0431	02-0431	1042	\N	\N	\N	1300	\N	50103040 (734)	2A2-A	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3518	DOC-2025-0431	02-0431	1042	\N	\N	\N	1100	\N	50103040 (734)	2A2-B	999	1	2378	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3519	DOC-2025-0432	02-0432	1040	\N	\N	\N	3600	\N	50103020 (732)	1A1	999	1	2379	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3520	DOC-2025-0432	02-0432	1040	\N	\N	\N	800	\N	50103020 (732)	2A1-1	999	1	2379	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3521	DOC-2025-0432	02-0432	1040	\N	\N	\N	2200	\N	50103020 (732)	2A1-2	999	1	2379	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3522	DOC-2025-0432	02-0432	1040	\N	\N	\N	2600	\N	50103020 (732)	2A2-A	999	1	2379	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3523	DOC-2025-0432	02-0432	1039	\N	\N	\N	2200	\N	50103020 (732)	2A2-B	999	1	2379	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3524	DOC-2025-0433	02-0433	3483	\N	\N	\N	22702.24	\N	50103030 (733)	1A1	999	1	2380	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3525	DOC-2025-0433	02-0433	3483	\N	\N	\N	4743.55	\N	50103030 (733)	2A1-1	999	1	2380	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3526	DOC-2025-0433	02-0433	3483	\N	\N	\N	14195.37	\N	50103030 (733)	2A1-2	999	1	2380	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3527	DOC-2025-0433	02-0433	3483	\N	\N	\N	16750.75	\N	50103030 (733)	2A2-A	999	1	2380	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3528	DOC-2025-0433	02-0433	3483	\N	\N	\N	15010.26	\N	50103030 (733)	2A2-B	999	1	2380	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3529	DOC-2025-0434	02-0434	3483	\N	\N	\N	12975	\N	50202020-00	2A1-101	999	1	2381	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3530	DOC-2025-0435	02-0435	2639	\N	\N	\N	56700	\N	50202020-00	2A1-104	999	1	2382	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3531	DOC-2025-0436	02-0436	909	\N	\N	\N	12400	\N	50210030-00	1A1	999	1	2383	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3532	DOC-2025-0437	02-0437	3494	\N	\N	\N	8992000	\N	50202020-00	2A1-101 PATRIOT	999	1	2384	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3533	DOC-2025-0438	02-0438	3498	\N	\N	\N	11445600	\N	50202020-00	2A1-101 PATRIOT	999	1	2385	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3534	DOC-2025-0439	02-0439	3494	\N	\N	\N	11868000	\N	50202020-00	2A1-101 PATRIOT	999	1	2386	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3535	DOC-2025-0440	02-0440	3519	\N	\N	\N	51000	\N	50202020-00	2A1-101 PATRIOT	999	1	2387	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3536	DOC-2025-0441	02-0441	3657	\N	\N	\N	1875000	\N	50202020-00	2A1-101 PATRIOT	999	1	2388	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3537	DOC-2025-0442	02-0442	3494	\N	\N	\N	2278200	\N	50202020-00	2A1-101 PATRIOT	999	1	2389	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3538	DOC-2025-0443	02-0443	3492	\N	\N	\N	2278200	\N	50202020-00	2A1-101 PATRIOT	999	1	2390	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3539	DOC-2025-0444	02-0444	3521	\N	\N	\N	1875000	\N	50202020-00	2A1-101 PATRIOT	999	1	2391	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3540	DOC-2025-0445	02-0445	2538	\N	\N	\N	10560	\N	50202020-00	2A1-101 PATRIOT	999	1	2392	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3541	DOC-2025-0446	02-0446	2524	\N	\N	\N	29870000	\N	50202020-00	2A1-102	999	1	2393	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3542	DOC-2025-0447	02-0447	3506	\N	\N	\N	593677	\N	50202020-00	2A1-101	999	1	2394	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3543	DOC-2025-0448	02-0448	3634	\N	\N	\N	132271	\N	50202020-00	2A1-101	999	1	2395	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3544	DOC-2025-0449	02-0449	3519	\N	\N	\N	595434	\N	50202020-00	2A1-101	999	1	2396	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3545	DOC-2025-0450	02-0450	2517	\N	\N	\N	659224.32	\N	50202020-00	2A1-101	999	1	2397	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3546	DOC-2025-0450	02-0450	2470	\N	\N	\N	153053	\N	50202020-00	2A1-101 RA10612	999	1	2397	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3547	DOC-2025-0450	02-0450	2469	\N	\N	\N	1291200	\N	50202020-00	2A1-102	999	1	2397	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3548	DOC-2025-0451	02-0451	1033	\N	\N	\N	1999999.5	\N	50202020-00	2A1-101	999	1	2398	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3549	DOC-2025-0451	02-0451	1033	\N	\N	\N	79999.98	\N	50202020-00	2A1-102	999	1	2398	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3550	DOC-2025-0452	02-0452	2435	\N	\N	\N	4232500	\N	50202020-00	2A1-101	999	1	2399	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3551	DOC-2025-0453	02-0453	3483	\N	\N	\N	735980.7	\N	50202020-00	2A1-104	999	1	2400	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3552	DOC-2025-0454	02-0454	3483	\N	\N	\N	986242.36	\N	50202020-00	2A1-104	999	1	2401	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3553	DOC-2025-0455	02-0455	974	\N	\N	\N	156433.44	\N	50202020-00	2A1-104	999	1	2402	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3554	DOC-2025-0456	02-0456	3483	\N	\N	\N	156370.5	\N	50202020-00	2A1-104	999	1	2403	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3555	DOC-2025-0457	02-0457	3483	\N	\N	\N	289709.53	\N	50202020-00	2A1-104	999	1	2404	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3556	DOC-2025-0458	02-0458	2424	\N	\N	\N	5623774	\N	50202020-00	2A1-104	999	1	2405	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3557	DOC-2025-0459	02-0459	2411	\N	\N	\N	7474500	\N	50202020-00	2A1-102	999	1	2406	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3558	DOC-2025-0460	02-0460	1091	\N	\N	\N	221408	\N	50202020-00	2A1-101 PATRIOT	999	1	2407	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3559	DOC-2025-0460	02-0460	1091	\N	\N	\N	28027	\N	50202010-02	2A2B-105	999	1	2407	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3560	DOC-2025-0460	02-0460	1089	\N	\N	\N	161950	\N	50202010-02	2A2B-101	999	1	2407	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3561	DOC-2025-0461	02-0461	3483	\N	\N	\N	36580	\N	50202020-00	2A1-101	999	1	2408	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3562	DOC-2025-0462	02-0462	3483	\N	\N	\N	1800	\N	50201010-00	1A1	999	1	2409	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3563	DOC-2025-0463	02-0463	3483	\N	\N	\N	20871.66	\N	50202020-00	2A1-101 	999	1	2410	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3564	DOC-2025-0464	02-0464	2341	\N	\N	\N	306713.73	\N	50202020-00	2A1-104	999	1	2411	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3565	DOC-2025-0465	02-0465	2341	\N	\N	\N	10403	\N	50202020-00	2A1-101 PATRIOT	999	1	2412	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3566	DOC-2025-0466	02-0466	3483	\N	\N	\N	37563.75	\N	50202020-00	2A1-101	999	1	2413	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3567	DOC-2025-0467	02-0467	1038	\N	\N	\N	4725	\N	50202020-00	2A1-AC HR	999	1	2414	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3569	DOC-2025-0469	02-0469	3483	\N	\N	\N	5072.5	\N	50203990-00	1A1	999	1	2416	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3570	DOC-2025-0469	02-0469	3483	\N	\N	\N	34659.56	\N	50203090-00	1A1	999	1	2416	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3571	DOC-2025-0469	02-0469	3483	\N	\N	\N	1560	\N	50201010-00	1A1	999	1	2416	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3572	DOC-2025-0469	02-0469	3483	\N	\N	\N	1000	\N	50213060-01	1A1	999	1	2416	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3573	DOC-2025-0469	02-0469	3483	\N	\N	\N	5460	\N	50212990-99	1A1	999	1	2416	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3574	DOC-2025-0469	02-0469	3483	\N	\N	\N	15000	\N	50201010-00	2A1-1	999	1	2416	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3575	DOC-2025-0469	02-0469	3483	\N	\N	\N	7680	\N	50202020-00	2A1-AC HR	999	1	2416	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3576	DOC-2025-0470	03-0470	2340	\N	\N	\N	603099.35	\N	50101010-01	1A1	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3577	DOC-2025-0470	03-0470	2286	\N	\N	\N	97853.03	\N	50101010-01	2A1-1	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3578	DOC-2025-0470	03-0470	2253	\N	\N	\N	274161.66	\N	50101010-01	2A1-2	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3579	DOC-2025-0470	03-0470	2253	\N	\N	\N	690670.1	\N	50101010-01	2A2	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3580	DOC-2025-0470	03-0470	2082	\N	\N	\N	36000	\N	50102010-01	1A1	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3581	DOC-2025-0470	03-0470	2034	\N	\N	\N	8000	\N	50102010-01	2A1-1	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3582	DOC-2025-0470	03-0470	2034	\N	\N	\N	22000	\N	50102010-01	2A1-2	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3583	DOC-2025-0470	03-0470	2034	\N	\N	\N	48000	\N	50102010-01	2A2	999	1	2417	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3584	DOC-2025-0471	03-0471	2034	\N	\N	\N	136045.15	\N	50101010-01	1A1	999	1	2418	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3585	DOC-2025-0471	03-0471	2034	\N	\N	\N	30630.47	\N	50101010-01	2A1-1	999	1	2418	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3586	DOC-2025-0471	03-0471	1989	\N	\N	\N	97887.84	\N	50101010-01	2A1-2	999	1	2418	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3587	DOC-2025-0471	03-0471	1851	\N	\N	\N	193263.9	\N	50101010-01	2A2	999	1	2418	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3588	DOC-2025-0472	03-0472	1757	\N	\N	\N	136038.25	\N	50101010-01	1A1	999	1	2419	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3589	DOC-2025-0472	03-0472	1757	\N	\N	\N	30629.25	\N	50101010-01	2A1-1	999	1	2419	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3590	DOC-2025-0472	03-0472	1742	\N	\N	\N	97882.25	\N	50101010-01	2A1-2	999	1	2419	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3591	DOC-2025-0472	03-0472	1713	\N	\N	\N	193252.5	\N	50101010-01	2A2	999	1	2419	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3592	DOC-2025-0473	03-0473	1655	\N	\N	\N	136038.25	\N	50101010-01	1A1	999	1	2420	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3593	DOC-2025-0473	03-0473	1631	\N	\N	\N	30629.25	\N	50101010-01	2A1-1	999	1	2420	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3594	DOC-2025-0473	03-0473	1449	\N	\N	\N	97882.25	\N	50101010-01	2A1-2	999	1	2420	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3595	DOC-2025-0473	03-0473	1449	\N	\N	\N	193252.5	\N	50101010-01	2A2	999	1	2420	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3596	DOC-2025-0474	03-0474	254	\N	\N	\N	186441	\N	50202020-00	2A1-104	999	1	2421	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3597	DOC-2025-0475	03-0475	1449	\N	\N	\N	75560	\N	50202020-00	2A1-104	999	1	2422	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3598	DOC-2025-0476	03-0476	1380	\N	\N	\N	482000	\N	50202020-00	2A1-104	999	1	2423	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3599	DOC-2025-0477	03-0477	1331	\N	\N	\N	2452500	\N	50202020-00	2A1-101	999	1	2424	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3600	DOC-2025-0478	03-0478	1022	\N	\N	\N	104025.57	\N	50202020-00	2A1-104	999	1	2425	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3601	DOC-2025-0479	03-0479	1331	\N	\N	\N	2404500	\N	50202020-00	2A1-102	999	1	2426	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3602	DOC-2025-0480	03-0480	3483	\N	\N	\N	1221197.86	\N	50202020-00	2A1-104	999	1	2427	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3603	DOC-2025-0481	03-0481	3483	\N	\N	\N	14248	\N	50202020-00	2A1-101	999	1	2428	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3605	DOC-2025-0483	03-0483	3631	\N	\N	\N	46092.65	\N	50202020-00	2A1-104	999	1	2430	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3606	DOC-2025-0484	03-0484	1027	\N	\N	\N	57339.58	\N	50202020-00	2A1-AC IPU	999	1	2431	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3607	DOC-2025-0485	03-0485	1294	\N	\N	\N	7717500	\N	50202020-00	2A1-101	999	1	2432	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3608	DOC-2025-0486	03-0486	1231	\N	\N	\N	471033.33	\N	50202020-00	2A1-101	999	1	2433	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3609	DOC-2025-0486	03-0486	1231	\N	\N	\N	1015099.33	\N	50202020-00	2A1-102	999	1	2433	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3611	DOC-2025-0488	03-0488	3483	\N	\N	\N	150551.21	\N	50202020-00	2A1-104	999	1	2435	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3612	DOC-2025-0489	03-0489	3047	\N	\N	\N	371589.6	\N	50202020-00	2A1-104	999	1	2436	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3615	DOC-2025-0492	03-0492	1047	\N	\N	\N	24510	\N	50201010-00	1A1	999	1	2439	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3616	DOC-2025-0493	03-0493	3483	\N	\N	\N	154710	\N	50203010-01	1A1	999	1	2440	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3617	DOC-2025-0494	03-0494	244	\N	\N	\N	29350.53	\N	50202020-00	2A1-AC IPU	999	1	2441	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3618	DOC-2025-0495	03-0495	3494	\N	\N	\N	233506.93	\N	50202020-00	2A1-101	999	1	2442	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3619	DOC-2025-0496	03-0496	3498	\N	\N	\N	80000	\N	50202020-00	2A1-101	999	1	2443	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3620	DOC-2025-0497	03-0497	1206	\N	\N	\N	916000	\N	50202020-00	2A1-102	999	1	2444	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3621	DOC-2025-0498	03-0498	1203	\N	\N	\N	536000	\N	50202020-00	2A1-101	999	1	2445	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3622	DOC-2025-0499	03-0499	1203	\N	\N	\N	4528000	\N	50202020-00	2A1-101	999	1	2446	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3623	DOC-2025-0500	03-0500	1200	\N	\N	\N	4164000	\N	50202020-00	2A1-102	999	1	2447	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3624	DOC-2025-0501	03-0501	1200	\N	\N	\N	984000	\N	50202020-00	2A1-101	999	1	2448	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3625	DOC-2025-0502	03-0502	1200	\N	\N	\N	1200000	\N	50202020-00	2A1-101	999	1	2449	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3626	DOC-2025-0503	03-0503	1200	\N	\N	\N	1724000	\N	50202020-00	2A1-101	999	1	2450	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3627	DOC-2025-0504	03-0504	1200	\N	\N	\N	2940000	\N	50202020-00	2A1-101	999	1	2451	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3628	DOC-2025-0505	03-0505	1200	\N	\N	\N	360000	\N	50202020-00	2A1-102	999	1	2452	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3629	DOC-2025-0506	03-0506	1200	\N	\N	\N	1404000	\N	50202020-00	2A1-101	999	1	2453	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3630	DOC-2025-0507	03-0507	1197	\N	\N	\N	5104000	\N	50202020-00	2A1-101	999	1	2454	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3631	DOC-2025-0508	03-0508	1196	\N	\N	\N	120000	\N	50202020-00	2A1-101	999	1	2455	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3632	DOC-2025-0509	03-0509	1196	\N	\N	\N	1468000	\N	50202020-00	2A1-102	999	1	2456	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3633	DOC-2025-0510	03-0510	1196	\N	\N	\N	1044000	\N	50202020-00	2A1-101	999	1	2457	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3634	DOC-2025-0511	03-0511	1196	\N	\N	\N	1644000	\N	50202020-00	2A1-102	999	1	2458	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3635	DOC-2025-0512	03-0512	1196	\N	\N	\N	40000	\N	50202020-00	2A1-102	999	1	2459	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3636	DOC-2025-0513	03-0513	1196	\N	\N	\N	8240000	\N	50202020-00	2A1-102	999	1	2460	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3637	DOC-2025-0514	03-0514	1196	\N	\N	\N	1028000	\N	50202020-00	2A1-101	999	1	2461	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3638	DOC-2025-0515	03-0515	1196	\N	\N	\N	628000	\N	50202020-00	2A1-101	999	1	2462	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3639	DOC-2025-0516	03-0516	1196	\N	\N	\N	2940000	\N	50202020-00	2A1-101	999	1	2463	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3640	DOC-2025-0517	03-0517	1196	\N	\N	\N	1216000	\N	50202020-00	2A1-101	999	1	2464	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3641	DOC-2025-0518	03-0518	1196	\N	\N	\N	708000	\N	50202020-00	2A1-102	999	1	2465	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3642	DOC-2025-0519	03-0519	1195	\N	\N	\N	584000	\N	50202020-00	2A1-102	999	1	2466	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3643	DOC-2025-0520	03-0520	1192	\N	\N	\N	1232000	\N	50202020-00	2A1-102	999	1	2467	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3644	DOC-2025-0521	03-0521	1192	\N	\N	\N	404000	\N	50202020-00	2A1-102	999	1	2468	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3645	DOC-2025-0522	03-0522	1192	\N	\N	\N	1568000	\N	50202020-00	2A1-102	999	1	2469	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3646	DOC-2025-0523	03-0523	1192	\N	\N	\N	2028000	\N	50202020-00	2A1-102	999	1	2470	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3647	DOC-2025-0524	03-0524	1192	\N	\N	\N	776000	\N	50202020-00	2A1-102	999	1	2471	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3648	DOC-2025-0525	03-0525	1192	\N	\N	\N	4420000	\N	50202020-00	2A1-102	999	1	2472	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3649	DOC-2025-0526	03-0526	1190	\N	\N	\N	48000	\N	50202020-00	2A1-101	999	1	2473	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3650	DOC-2025-0527	03-0527	1190	\N	\N	\N	392000	\N	50202020-00	2A1-101	999	1	2474	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3651	DOC-2025-0528	03-0528	1190	\N	\N	\N	1128000	\N	50202020-00	2A1-101	999	1	2475	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3652	DOC-2025-0529	03-0529	1190	\N	\N	\N	1972000	\N	50202020-00	2A1-101	999	1	2476	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3653	DOC-2025-0530	03-0530	1189	\N	\N	\N	1360000	\N	50202020-00	2A1-101	999	1	2477	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3654	DOC-2025-0531	03-0531	1189	\N	\N	\N	776000	\N	50202020-00	2A1-102	999	1	2478	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3655	DOC-2025-0532	03-0532	1189	\N	\N	\N	96000	\N	50202020-00	2A1-101	999	1	2479	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3656	DOC-2025-0533	03-0533	1189	\N	\N	\N	10045043.86	\N	50202020-001	2A1-103	999	1	2480	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3657	DOC-2025-0534	03-0534	1047	\N	\N	\N	42491	\N	50201010-00	2A1-1	999	1	2481	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3658	DOC-2025-0535	03-0535	3483	\N	\N	\N	202800	\N	50202020-00	2A1-101	999	1	2482	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3659	DOC-2025-0536	03-0536	3483	\N	\N	\N	9900	\N	50202020-00	2A1-101	999	1	2483	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3660	DOC-2025-0537	03-0537	1189	\N	\N	\N	5479	\N	50205020-01	1A1	999	1	2484	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3661	DOC-2025-0538	03-0538	1185	\N	\N	\N	4785000	\N	50202020-00	2A1-102	999	1	2485	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3662	DOC-2025-0539	03-0539	1185	\N	\N	\N	2831000	\N	50202020-00	2A1-101	999	1	2486	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3663	DOC-2025-0540	03-0540	1185	\N	\N	\N	800000	\N	50202020-00	2A1-104	999	1	2487	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3664	DOC-2025-0541	03-0541	1505	\N	\N	\N	99097.63	\N	50202020-00	2A1-104	999	1	2488	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3665	DOC-2025-0542	03-0542	254	\N	\N	\N	113155.78	\N	50202020-00	2A1-104	999	1	2489	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3666	DOC-2025-0543	03-0543	1185	\N	\N	\N	8640	\N	50202020-00	2A1-101 PATRIOT	999	1	2490	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3667	DOC-2025-0544	03-0544	3483	\N	\N	\N	13495	\N	50203990-00	2A2	999	1	2491	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3668	DOC-2025-0545	03-0545	1185	\N	\N	\N	1069000	\N	50202020-00	2A1-101	999	1	2492	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3669	DOC-2025-0546	03-0546	3483	\N	\N	\N	2356000	\N	50202020-00	2A1-104	999	1	2493	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3670	DOC-2025-0547	03-0547	3483	\N	\N	\N	24269.18	\N	50202020-00	2A1-101	999	1	2494	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3671	DOC-2025-0548	03-0548	1185	\N	\N	\N	2856500	\N	50202020-00	2A1-101	999	1	2495	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3672	DOC-2025-0549	03-0549	1185	\N	\N	\N	5908500	\N	50202020-00	2A1-102	999	1	2496	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3673	DOC-2025-0550	03-0550	1185	\N	\N	\N	856000	\N	50202020-00	2A1-101	999	1	2497	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3674	DOC-2025-0551	03-0551	1185	\N	\N	\N	1320000	\N	50202020-00	2A1-102	999	1	2498	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3675	DOC-2025-0552	03-0552	1184	\N	\N	\N	788000	\N	50202020-00	2A1-101	999	1	2499	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3676	DOC-2025-0553	03-0553	1184	\N	\N	\N	1452000	\N	50202020-00	2A1-102	999	1	2500	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3677	DOC-2025-0554	03-0554	1184	\N	\N	\N	200000	\N	50202020-00	2A1-102	999	1	2501	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3678	DOC-2025-0555	03-0555	1184	\N	\N	\N	2393743.68	\N	50202020-00	2A1-AC HR	999	1	2502	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3679	DOC-2025-0555	03-0555	1184	\N	\N	\N	13158.48	\N	50202020-00	2A1-AC NULAB	999	1	2502	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3680	DOC-2025-0555	03-0555	1184	\N	\N	\N	19041	\N	50211990-00	3A1-PD997	999	1	2502	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3681	DOC-2025-0556	03-0556	3483	\N	\N	\N	423750	\N	50202020-00	2A1-101 TEST AD	999	1	2503	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3682	DOC-2025-0557	03-0557	3483	\N	\N	\N	142605	\N	50212030-00	1A1	999	1	2504	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3683	DOC-2025-0558	03-0558	3483	\N	\N	\N	70000	\N	50202020-00	2A1-AC POSTER	999	1	2505	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3684	DOC-2025-0559	03-0559	1184	\N	\N	\N	1504000	\N	50202020-00	2A1-101  	999	1	2506	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3685	DOC-2025-0560	03-0560	1184	\N	\N	\N	4308000	\N	50202020-00	2A1-101 RA10612	999	1	2507	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3686	DOC-2025-0561	03-0561	1021	\N	\N	\N	12406.15	\N	50202020-00	2A1-104	999	1	2508	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3687	DOC-2025-0562	03-0562	3483	\N	\N	\N	491566	\N	50202020-00	2A1-104	999	1	2509	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3688	DOC-2025-0563	03-0563	3483	\N	\N	\N	1500000	\N	50202020-00	2A1-104	999	1	2510	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3689	DOC-2025-0564	03-0564	1184	\N	\N	\N	466579.17	\N	50202020-00	2A1-101	999	1	2511	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3690	DOC-2025-0564	03-0564	1184	\N	\N	\N	40000	\N	50202020-00	2A1-101 RA10612	999	1	2511	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3691	DOC-2025-0564	03-0564	1184	\N	\N	\N	2823677.32	\N	50202020-00	2A1-102	999	1	2511	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3692	DOC-2025-0565	03-0565	3483	\N	\N	\N	30000	\N	50202020-00	2A1-AC HR	999	1	2512	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3693	DOC-2025-0566	03-0566	188	\N	\N	\N	362206.16	\N	50202020-00	2A1-104	999	1	2513	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3694	DOC-2025-0567	03-0567	3483	\N	\N	\N	31000	\N	50202020-00	2A1-101	999	1	2514	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3696	DOC-2025-0569	03-0569	3483	\N	\N	\N	25000	\N	50202020-00	2A1-AC HR	999	1	2516	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3697	DOC-2025-0570	03-0570	3631	\N	\N	\N	45635.09	\N	50202020-00	2A1-104	999	1	2517	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3698	DOC-2025-0571	03-0571	1047	\N	\N	\N	192400	\N	50202010-02	2A2B-105	999	1	2518	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3699	DOC-2025-0572	03-0572	1184	\N	\N	\N	362958.66	\N	50202020-00	2A1-101	999	1	2519	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3700	DOC-2025-0572	03-0572	1179	\N	\N	\N	20000	\N	50202020-00	2A1-101 RA10612	999	1	2519	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3701	DOC-2025-0572	03-0572	1179	\N	\N	\N	763689.33	\N	50202020-00	2A1-102	999	1	2519	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3702	DOC-2025-0573	03-0573	1179	\N	\N	\N	326100	\N	50202020-00	2A1-101 TES ADMIN	999	1	2520	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3705	DOC-2025-0576	03-0576	3494	\N	\N	\N	1992000	\N	50202020-00	2A1-101 PATRIOT	999	1	2523	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3706	DOC-2025-0577	03-0577	1178	\N	\N	\N	2880	\N	50202020-00	2A1-AC CSYC	999	1	2524	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3707	DOC-2025-0578	03-0578	3483	\N	\N	\N	1580	\N	50202010-02	2A2B-101	999	1	2525	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3708	DOC-2025-0579	03-0579	3483	\N	\N	\N	24614.3	\N	50205020-02	1A1	999	1	2526	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3709	DOC-2025-0580	03-0580	1178	\N	\N	\N	3635978.25	\N	50202020-00	2A1-104	999	1	2527	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3710	DOC-2025-0580	03-0580	1178	\N	\N	\N	519847.9	\N	50202020-00	2A1-103	999	1	2527	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3711	DOC-2025-0581	03-0581	1175	\N	\N	\N	14400	\N	50202020-00	2A1-101 PATRIOT	999	1	2528	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3712	DOC-2025-0582	03-0582	3483	\N	\N	\N	1647	\N	50202010-02	2A2B-101	999	1	2529	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3713	DOC-2025-0583	03-0583	289	\N	\N	\N	554	\N	50202010-02	2A2B-105	999	1	2530	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3714	DOC-2025-0584	03-0584	1175	\N	\N	\N	3964	\N	50202010-02	2A2B-101	999	1	2531	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3715	DOC-2025-0584	03-0584	1175	\N	\N	\N	3500	\N	50202010-02	2A2B-105	999	1	2531	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3716	DOC-2025-0585	03-0585	1175	\N	\N	\N	9070000	\N	50202020-00	2A1-101	999	1	2532	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3717	DOC-2025-0586	03-0586	1175	\N	\N	\N	2032000	\N	50202020-00	2A1-101	999	1	2533	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3718	DOC-2025-0587	03-0587	1175	\N	\N	\N	139855	\N	50202020-00	2A1-101 TES ADMIN	999	1	2534	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3719	DOC-2025-0588	03-0588	1159	\N	\N	\N	125352.74	\N	50202010-02	2A2B-101	999	1	2535	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3720	DOC-2025-0589	03-0589	1157	\N	\N	\N	102727.02	\N	50202010-02	2A2B-101	999	1	2536	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3721	DOC-2025-0590	03-0590	3483	\N	\N	\N	75560	\N	50202020-00	2A1-104	999	1	2537	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3722	DOC-2025-0591	03-0591	3483	\N	\N	\N	22500.03	\N	50202020-00	2A1-AC NULAB	999	1	2538	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3723	DOC-2025-0592	03-0592	3483	\N	\N	\N	6874	\N	50202010-02	2A2B-105	999	1	2539	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3724	DOC-2025-0593	03-0593	1036	\N	\N	\N	8800	\N	50202020-00	2A1-AC HR	999	1	2540	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3725	DOC-2025-0594	03-0594	3483	\N	\N	\N	4080	\N	50202020-00	2A1-AC HR	999	1	2541	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3726	DOC-2025-0595	03-0595	3483	\N	\N	\N	688800	\N	50202020-00	2A1-AC IPU	999	1	2542	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3727	DOC-2025-0596	03-0596	3483	\N	\N	\N	1277	\N	50210030-00	1A1	999	1	2543	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3728	DOC-2025-0597	03-0597	3483	\N	\N	\N	1807	\N	50210030-00	1A1	999	1	2544	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3729	DOC-2025-0598	03-0598	3483	\N	\N	\N	2500	\N	50205020-01	1A1	999	1	2545	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3730	DOC-2025-0599	03-0599	3483	\N	\N	\N	2127456.7	\N	50202020-00	2A1-103	999	1	2546	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3731	DOC-2025-0600	03-0600	1157	\N	\N	\N	4800	\N	50202020-00	2A2B-105	999	1	2547	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3732	DOC-2025-0601	03-0601	1157	\N	\N	\N	4800	\N	50202020-00	2A2B-105	999	1	2548	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3733	DOC-2025-0602	03-0602	1157	\N	\N	\N	2648000	\N	50202020-00	2A1-101	999	1	2549	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3734	DOC-2025-0603	03-0603	1157	\N	\N	\N	1388000	\N	50202020-00	2A1-102	999	1	2550	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3735	DOC-2025-0604	03-0604	1156	\N	\N	\N	108000	\N	50202020-00	2A1-102	999	1	2551	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3736	DOC-2025-0605	03-0605	1155	\N	\N	\N	4790500	\N	50202020-00	2A1-102	999	1	2552	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3737	DOC-2025-0606	03-0606	1155	\N	\N	\N	7377000	\N	50202020-00	2A1-101	999	1	2553	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3738	DOC-2025-0607	03-0607	1155	\N	\N	\N	385866.66	\N	50202020-00	2A1-101	999	1	2554	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3739	DOC-2025-0607	03-0607	1154	\N	\N	\N	1120233.33	\N	50202020-00	2A1-102	999	1	2554	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3740	DOC-2025-0608	03-0608	1154	\N	\N	\N	234233.31	\N	50202020-00	2A1-101  	999	1	2555	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3741	DOC-2025-0608	03-0608	1154	\N	\N	\N	918650	\N	50202020-00	2A1-102	999	1	2555	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3742	DOC-2025-0609	03-0609	3483	\N	\N	\N	1404000	\N	50202020-00	2A1-104	999	1	2556	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3743	DOC-2025-0610	03-0610	3483	\N	\N	\N	1976	\N	50202010-02	2A2B-101	999	1	2557	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3744	DOC-2025-0611	03-0611	1148	\N	\N	\N	55854.05	\N	50102120-01	1A1	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3745	DOC-2025-0611	03-0611	1138	\N	\N	\N	167981.75	\N	50102110-01	1A2	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3746	DOC-2025-0611	03-0611	1134	\N	\N	\N	42000	\N	50102050-02	1A3	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3747	DOC-2025-0611	03-0611	1133	\N	\N	\N	8568.18	\N	50102060-03	1A4	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3748	DOC-2025-0611	03-0611	1131	\N	\N	\N	12771.95	\N	50102120-01	2A1-1	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3749	DOC-2025-0611	03-0611	1131	\N	\N	\N	17872.11	\N	50102110-01	2A1-2	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3750	DOC-2025-0611	03-0611	1131	\N	\N	\N	4650	\N	50102050-02	2A1-3	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3751	DOC-2025-0611	03-0611	1131	\N	\N	\N	1477.27	\N	50102060-03	2A1-4	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3752	DOC-2025-0611	03-0611	1131	\N	\N	\N	29006.2	\N	50102120-01	2A1-2	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3753	DOC-2025-0611	03-0611	1130	\N	\N	\N	68270.4	\N	50102110-01	2A1-3	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3754	DOC-2025-0611	03-0611	1130	\N	\N	\N	12900	\N	50102050-02	2A1-4	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3755	DOC-2025-0611	03-0611	1130	\N	\N	\N	4613.64	\N	50102060-03	2A1-5	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3756	DOC-2025-0611	03-0611	1129	\N	\N	\N	67621	\N	50102120-01	2A2	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3757	DOC-2025-0611	03-0611	1129	\N	\N	\N	147560.05	\N	50102110-01	2A2	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3758	DOC-2025-0611	03-0611	1129	\N	\N	\N	41400	\N	50102050-02	2A2	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3759	DOC-2025-0611	03-0611	1129	\N	\N	\N	10545.46	\N	50102060-03	2A2	999	1	2558	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3760	DOC-2025-0612	03-0612	3483	\N	\N	\N	342992.7	\N	50202020-00	2A1-104	999	1	2559	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3761	DOC-2025-0613	03-0613	3483	\N	\N	\N	400	\N	50202020-00	2A1-AC AGDPP	999	1	2560	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3762	DOC-2025-0614	03-0614	2963	\N	\N	\N	631	\N	50202020-00	2A1-101 PATRIOT	999	1	2561	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3763	DOC-2025-0615	03-0615	3483	\N	\N	\N	1250	\N	50202020-00	2A1-AC HR	999	1	2562	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3764	DOC-2025-0616	03-0616	909	\N	\N	\N	6600	\N	50299030-00	3A1 PD 997	999	1	2563	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3765	DOC-2025-0617	03-0617	1038	\N	\N	\N	274485	\N	50202020-00	2A1-101	999	1	2564	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3766	DOC-2025-0618	03-0618	1128	\N	\N	\N	92500	\N	50202020-00	2A1-101	999	1	2565	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3767	DOC-2025-0619	03-0619	1031	\N	\N	\N	172153	\N	50202020-00	2A1-104	999	1	2566	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3768	DOC-2025-0620	03-0620	3483	\N	\N	\N	562	\N	50202020-00	2A1-104	999	1	2567	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3769	DOC-2025-0621	03-0621	505	\N	\N	\N	490200	\N	50202020-00	2A1-AC POSTER	999	1	2568	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3770	DOC-2025-0622	03-0622	1039	\N	\N	\N	3600	\N	50103020 (732)	1A1	999	1	2569	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3771	DOC-2025-0622	03-0622	1039	\N	\N	\N	800	\N	50103020 (732)	2A1-1	999	1	2569	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3772	DOC-2025-0622	03-0622	1039	\N	\N	\N	2200	\N	50103020 (732)	2A1-2	999	1	2569	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3773	DOC-2025-0622	03-0622	1039	\N	\N	\N	2600	\N	50103020 (732)	2A2-A	999	1	2569	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3774	DOC-2025-0622	03-0622	1039	\N	\N	\N	2200	\N	50103020 (732)	2A2-B	999	1	2569	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3775	DOC-2025-0623	03-0623	3483	\N	\N	\N	16938996.47	\N	50202020-00	2A1-103	999	1	2570	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3776	DOC-2025-0624	03-0624	1128	\N	\N	\N	5723953.63	\N	50202020-00	2A1-103	999	1	2571	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3777	DOC-2025-0625	03-0625	1128	\N	\N	\N	1128000	\N	50202020-00	2A1-102	999	1	2572	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3778	DOC-2025-0626	03-0626	1128	\N	\N	\N	3588000	\N	50202020-00	2A1-104	999	1	2573	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3779	DOC-2025-0627	03-0627	274	\N	\N	\N	118675.08	\N	50202020-00	2A1-104	999	1	2574	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3780	DOC-2025-0628	03-0628	1128	\N	\N	\N	284000	\N	50202020-00	2A1-102	999	1	2575	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3781	DOC-2025-0629	03-0629	1089	\N	\N	\N	12610	\N	50202020-00	2A1-101	999	1	2576	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3782	DOC-2025-0630	03-0630	3483	\N	\N	\N	17320.29	\N	50202010-02	2A2B-101	999	1	2577	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3783	DOC-2025-0631	03-0631	3483	\N	\N	\N	3815.64	\N	50202020-00	2A1-AC POSTER	999	1	2578	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3784	DOC-2025-0632	03-0632	1128	\N	\N	\N	3000	\N	50202010-02	2A2B-105	999	1	2579	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3785	DOC-2025-0633	03-0633	1124	\N	\N	\N	572362.66	\N	50202020-00	2A1-101	999	1	2580	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3786	DOC-2025-0633	03-0633	1122	\N	\N	\N	20000	\N	50202020-00	2A1-101 RA10612	999	1	2580	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3787	DOC-2025-0633	03-0633	1122	\N	\N	\N	808727.66	\N	50202020-00	2A1-102	999	1	2580	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3788	DOC-2025-0634	03-0634	3483	\N	\N	\N	700	\N	50202020-00	2A1-AC INDIE SIYENSYA	999	1	2581	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3789	DOC-2025-0635	03-0635	1089	\N	\N	\N	29286	\N	50202020-00	2A1-101  	999	1	2582	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3790	DOC-2025-0635	03-0635	1067	\N	\N	\N	38199	\N	50202020-00	2A1-101 PATRIOT	999	1	2582	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3791	DOC-2025-0635	03-0635	1067	\N	\N	\N	47871	\N	50202020-00	2A1-AC NULAB	999	1	2582	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3792	DOC-2025-0635	03-0635	1067	\N	\N	\N	178008	\N	50202020-00	2A1-AC POSTER	999	1	2582	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3793	DOC-2025-0636	03-0636	3483	\N	\N	\N	23120	\N	50203010-01	1A1	999	1	2583	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3794	DOC-2025-0637	03-0637	3483	\N	\N	\N	12000	\N	50202020-00	2A1-101	999	1	2584	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3795	DOC-2025-0637	03-0637	3483	\N	\N	\N	604000	\N	50202020-00	2A1-101 (RA 10612)	999	1	2584	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3796	DOC-2025-0637	03-0637	3483	\N	\N	\N	592000	\N	50202020-00	2A1-102	999	1	2584	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3797	DOC-2025-0637	03-0637	3483	\N	\N	\N	1824000	\N	50202020-00	2A1-101 (PATRIOT)	999	1	2584	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3798	DOC-2025-0637	03-0637	3483	\N	\N	\N	36000	\N	50202020-00	2A1-101	999	1	2584	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3799	DOC-2025-0638	03-0638	1001	\N	\N	\N	16936.91	\N	50202020-00	2A1-AC GAD	999	1	2585	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3800	DOC-2025-0639	03-0639	1027	\N	\N	\N	987800	\N	50202010-02	2A2B-101	999	1	2586	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3801	DOC-2025-0640	03-0640	3483	\N	\N	\N	22702.24	\N	50103030 (733)1	1A1	999	1	2587	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3802	DOC-2025-0640	03-0640	3483	\N	\N	\N	4743.55	\N	50103030 (733)1	2A1-1	999	1	2587	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3803	DOC-2025-0640	03-0640	3483	\N	\N	\N	14195.37	\N	50103030 (733)1	2A1-2	999	1	2587	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3804	DOC-2025-0640	03-0640	3483	\N	\N	\N	16750.75	\N	50103030 (733)1	2A2-A	999	1	2587	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3805	DOC-2025-0640	03-0640	3483	\N	\N	\N	15010.26	\N	50103030 (733)1	2A2-B	999	1	2587	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3806	DOC-2025-0641	03-0641	1122	\N	\N	\N	2700500	\N	50202020-00	2A1-102	999	1	2588	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3807	DOC-2025-0642	03-0642	1122	\N	\N	\N	380445	\N	50202020-00	2A1-101 TESR ADMIN	999	1	2589	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3808	DOC-2025-0643	03-0643	719	\N	\N	\N	148526	\N	50202020-00	2A1-104	999	1	2590	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3809	DOC-2025-0644	03-0644	1036	\N	\N	\N	3000	\N	50202020-00	2A1-104	999	1	2591	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3810	DOC-2025-0645	03-0645	3483	\N	\N	\N	19050	\N	50202020-00	2A1-101 PATRIOT	999	1	2592	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3811	DOC-2025-0646	03-0646	3483	\N	\N	\N	87000	\N	50202020-00	2A1-101	999	1	2593	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3812	DOC-2025-0646	03-0646	3483	\N	\N	\N	20000	\N	50202020-00	2A1-102	999	1	2593	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3815	DOC-2025-0649	03-0649	3483	\N	\N	\N	1905199	\N	50202020-00	2A1-104	999	1	2596	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3816	DOC-2025-0650	03-0650	1122	\N	\N	\N	27250	\N	50102020-00	1A1	999	1	2597	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3817	DOC-2025-0650	03-0650	1122	\N	\N	\N	7500	\N	50102020-00	2A1-2	999	1	2597	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3818	DOC-2025-0650	03-0650	1122	\N	\N	\N	15000	\N	50102020-00	2A2	999	1	2597	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3819	DOC-2025-0650	03-0650	1122	\N	\N	\N	7500	\N	50102030-01	1A1	999	1	2597	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3820	DOC-2025-0650	03-0650	1122	\N	\N	\N	4500	\N	50102030-01	2A1-2	999	1	2597	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3821	DOC-2025-0650	03-0650	1122	\N	\N	\N	10500	\N	50102030-01	2A2	999	1	2597	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3822	DOC-2025-0651	03-0651	3483	\N	\N	\N	75500	\N	50211990-00	3A1 PD 997	999	1	2598	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3823	DOC-2025-0652	03-0652	456	\N	\N	\N	12000	\N	50211990-00	3A1-PD997	999	1	2599	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3824	DOC-2025-0653	03-0653	3483	\N	\N	\N	12000	\N	50211990-00	3A1-PD997	999	1	2600	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3825	DOC-2025-0654	03-0654	3483	\N	\N	\N	13500	\N	50211990-00	3A1-PD997	999	1	2601	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3826	DOC-2025-0655	03-0655	3483	\N	\N	\N	13500	\N	50211990-00	3A1-PD997	999	1	2602	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3827	DOC-2025-0656	03-0656	3483	\N	\N	\N	13500	\N	50211990-00	3A1-PD997	999	1	2603	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3828	DOC-2025-0657	03-0657	1042	\N	\N	\N	12110.39	\N	50215030-00	1A1	999	1	2604	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3829	DOC-2025-0658	03-0658	3483	\N	\N	\N	1760	\N	50210030-00	1A1	999	1	2605	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3830	DOC-2025-0659	03-0659	1042	\N	\N	\N	13065.3	\N	50215030-00	1A1	999	1	2606	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3831	DOC-2025-0660	03-0660	1038	\N	\N	\N	14487	\N	50202020-00	2A1-AC FAD	999	1	2607	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3832	DOC-2025-0661	03-0661	3483	\N	\N	\N	127882.05	\N	50212020-00	1A1	999	1	2608	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3833	DOC-2025-0662	03-0662	3483	\N	\N	\N	161856	\N	50202020-00	2A1-101	999	1	2609	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3834	DOC-2025-0662	03-0662	3483	\N	\N	\N	36437.3	\N	50203010-01	1A1	999	1	2609	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3835	DOC-2025-0663	03-0663	1122	\N	\N	\N	3628000	\N	50202020-00	2A1-101	999	1	2610	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3836	DOC-2025-0664	03-0664	1094	\N	\N	\N	12000	\N	50211990-00	3A1-PD997	999	1	2611	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3837	DOC-2025-0665	03-0665	1122	\N	\N	\N	9599000	\N	50202020-00	2A1-101	999	1	2612	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3838	DOC-2025-0666	03-0666	3483	\N	\N	\N	183050	\N	50202020-00	2A1-101	999	1	2613	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3839	DOC-2025-0667	03-0667	1122	\N	\N	\N	6182000	\N	50202020-00	2A1-101	999	1	2614	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3840	DOC-2025-0668	03-0668	3483	\N	\N	\N	1428000	\N	50202020-00	2A1-104	999	1	2615	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3841	DOC-2025-0669	03-0669	1122	\N	\N	\N	2947563.54	\N	50202020-00	2A1-AC HR	999	1	2616	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3842	DOC-2025-0669	03-0669	1122	\N	\N	\N	14856.3	\N	50202020-00	2A1-AC NULAB	999	1	2616	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3843	DOC-2025-0669	03-0669	1122	\N	\N	\N	24447.17	\N	50211990-00	3A1-PD997	999	1	2616	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3844	DOC-2025-0670	03-0670	3484	\N	\N	\N	6270000	\N	50202020-00	2A1-104	999	1	2617	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3845	DOC-2025-0671	03-0671	3483	\N	\N	\N	1125000	\N	50202020-00	2A1-104	999	1	2618	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3846	DOC-2025-0672	03-0672	3483	\N	\N	\N	11095000	\N	50202020-00	2A1-104	999	1	2619	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3847	DOC-2025-0673	03-0673	1035	\N	\N	\N	193000	\N	50202020-00	2A1-104	999	1	2620	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3849	DOC-2025-0675	03-0675	129	\N	\N	\N	262066.66	\N	50202020-00	2A1-AC LINKAGES	999	1	2622	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3850	DOC-2025-0676	03-0676	126	\N	\N	\N	262066.66	\N	50202020-00	2A1-AC LINKAGES	999	1	2623	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3851	DOC-2025-0677	03-0677	126	\N	\N	\N	262066.66	\N	50202020-00	2A1-AC LINKAGES	999	1	2624	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3852	DOC-2025-0678	03-0678	903	\N	\N	\N	7600	\N	50202020-00	2A1-AC HR	999	1	2625	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3857	DOC-2025-0683	03-0683	1122	\N	\N	\N	45250	\N	50202020-00	2A1-AC HR	999	1	2630	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3858	DOC-2025-0684	03-0684	3483	\N	\N	\N	433397.79	\N	50202020-00	2A1-104	999	1	2631	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3859	DOC-2025-0685	03-0685	3483	\N	\N	\N	154539.9	\N	50202020-00	2A1-104	999	1	2632	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3860	DOC-2025-0686	03-0686	1122	\N	\N	\N	236000	\N	50202020-00	2A1-102	999	1	2633	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3861	DOC-2025-0687	03-0687	1122	\N	\N	\N	855500	\N	50202020-00	2A1-102	999	1	2634	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3862	DOC-2025-0688	03-0688	192	\N	\N	\N	644276.55	\N	50202020-00	2A1-103	999	1	2635	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3863	DOC-2025-0689	03-0689	173	\N	\N	\N	154539.9	\N	50202020-00	2A1-103	999	1	2636	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3864	DOC-2025-0690	03-0690	1501	\N	\N	\N	154539.9	\N	50202020-00	2A1-104	999	1	2637	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3865	DOC-2025-0691	03-0691	3483	\N	\N	\N	72347	\N	50202020-00	2A1-104	999	1	2638	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3866	DOC-2025-0692	03-0692	1122	\N	\N	\N	3724395	\N	50202020-00	2A1-104	999	1	2639	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3867	DOC-2025-0693	03-0693	3586	\N	\N	\N	10192000	\N	50202020-00	2A1-101 PATRIOT	999	1	2640	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3868	DOC-2025-0694	03-0694	3483	\N	\N	\N	407090.06	\N	50202020-00	2A1-104	999	1	2641	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3869	DOC-2025-0695	03-0695	3483	\N	\N	\N	332635.08	\N	50202020-00	2A1-104	999	1	2642	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3870	DOC-2025-0696	03-0696	1122	\N	\N	\N	229212.33	\N	50202020-00	2A1-101	999	1	2643	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3871	DOC-2025-0696	03-0696	1122	\N	\N	\N	801858.33	\N	50202020-00	2A1-102	999	1	2643	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3872	DOC-2025-0697	03-0697	1122	\N	\N	\N	480000	\N	50202020-00	2A1-103	999	1	2644	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3873	DOC-2025-0698	03-0698	1122	\N	\N	\N	746000	\N	50202020-00	2A1-101	999	1	2645	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3874	DOC-2025-0699	03-0699	1122	\N	\N	\N	208000	\N	50202020-00	2A1-101	999	1	2646	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3875	DOC-2025-0700	03-0700	1122	\N	\N	\N	2480000	\N	50202020-00	2A1-103	999	1	2647	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3876	DOC-2025-0701	03-0701	3483	\N	\N	\N	384000	\N	50202020-00	2A1-105	999	1	2648	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3877	DOC-2025-0702	03-0702	1122	\N	\N	\N	9900	\N	50202010-02	2A2B-105	999	1	2649	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3879	DOC-2025-0704	03-0704	1122	\N	\N	\N	2640000	\N	50202020-00	2A1-104	999	1	2651	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3880	DOC-2025-0705	03-0705	1025	\N	\N	\N	45000	\N	50202020-00	2A1-AC FAD	999	1	2652	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3881	DOC-2025-0706	03-0706	244	\N	\N	\N	12420.4	\N	50202010-02	2A2B-105	999	1	2653	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3882	DOC-2025-0707	03-0707	3483	\N	\N	\N	16179.53	\N	50202010-02	2A2B-105	999	1	2654	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3883	DOC-2025-0708	03-0708	1039	\N	\N	\N	753.75	\N	50215020-00	1A1	999	1	2655	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3884	DOC-2025-0709	03-0709	3483	\N	\N	\N	5000	\N	50202020-00	2A1-AC HR	999	1	2656	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3885	DOC-2025-0710	03-0710	1122	\N	\N	\N	3210671.94	\N	50202020-00	2A1-104	999	1	2657	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3886	DOC-2025-0710	03-0710	1121	\N	\N	\N	440824.88	\N	50202020-00	2A1-103	999	1	2657	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3887	DOC-2025-0711	03-0711	3483	\N	\N	\N	1272000	\N	50202020-00	2A1-101	999	1	2658	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3888	DOC-2025-0711	03-0711	3483	\N	\N	\N	40000	\N	50202020-00	2A1-101 RA10612	999	1	2658	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3889	DOC-2025-0711	03-0711	3483	\N	\N	\N	2056000	\N	50202020-00	2A1-102	999	1	2658	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3890	DOC-2025-0712	03-0712	3483	\N	\N	\N	2700	\N	50202020-00	1A1	999	1	2659	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3891	DOC-2025-0713	03-0713	1008	\N	\N	\N	102510.37	\N	50202020-00	2A1-104	999	1	2660	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3892	DOC-2025-0714	03-0714	61	\N	\N	\N	112175.91	\N	50202020-00	2A1-104	999	1	2661	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3893	DOC-2025-0715	03-0715	1121	\N	\N	\N	321700	\N	50202020-00	2A1-101	999	1	2662	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3894	DOC-2025-0715	03-0715	1121	\N	\N	\N	606200	\N	50202020-00	2A1-102	999	1	2662	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3895	DOC-2025-0716	03-0716	1042	\N	\N	\N	49096.22	\N	50202020-00	2A1-AC NULAB	999	1	2663	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3896	DOC-2025-0717	03-0717	1120	\N	\N	\N	442002	\N	50202020-00	2A1-104	999	1	2664	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3897	DOC-2025-0718	03-0718	3483	\N	\N	\N	166193.55	\N	50202020-00	2A1-AC MISU	999	1	2665	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3898	DOC-2025-0719	03-0719	3483	\N	\N	\N	130000	\N	50202020-00	2A1-104	999	1	2666	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3899	DOC-2025-0720	03-0720	1027	\N	\N	\N	35366.92	\N	50202020-00	2A1-104	999	1	2667	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3900	DOC-2025-0721	03-0721	1036	\N	\N	\N	6674.43	\N	50202020-00	2A1-104	999	1	2668	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3901	DOC-2025-0722	03-0722	888	\N	\N	\N	40000	\N	50202020-00	2A1-101  	999	1	2669	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3902	DOC-2025-0723	03-0723	3483	\N	\N	\N	25292.85	\N	50202020-00	2A1-101	999	1	2670	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3903	DOC-2025-0724	03-0724	1027	\N	\N	\N	279262.32	\N	50202020-00	2A1-104	999	1	2671	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3904	DOC-2025-0725	03-0725	3483	\N	\N	\N	1980160	\N	50202020-00	2A1-103	999	1	2672	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3905	DOC-2025-0726	03-0726	3483	\N	\N	\N	5031585.48	\N	50202020-00	2A1-103	999	1	2673	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3906	DOC-2025-0727	03-0727	3483	\N	\N	\N	264485	\N	50202020-00	2A1-104	999	1	2674	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3907	DOC-2025-0728	03-0728	1060	\N	\N	\N	673036	\N	50202020-00	2A1-101 TEST ADMIN	999	1	2675	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3908	DOC-2025-0728	03-0728	1060	\N	\N	\N	54960	\N	50202020-00	2A1-101 TEST ADMIN	999	1	2675	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3909	DOC-2025-0728	03-0728	1060	\N	\N	\N	113309	\N	50202020-00	2A1-101 PATRIOT	999	1	2675	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3910	DOC-2025-0728	03-0728	1059	\N	\N	\N	7833	\N	50202020-00	2A1-AC HR	999	1	2675	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3911	DOC-2025-0729	03-0729	3483	\N	\N	\N	330004.93	\N	50202020-00	2A1-104	999	1	2676	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3912	DOC-2025-0730	03-0730	3483	\N	\N	\N	425659.12	\N	50202020-00	2A1-104	999	1	2677	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3913	DOC-2025-0731	03-0731	3483	\N	\N	\N	393968.96	\N	50202020-00	2A1-104	999	1	2678	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3914	DOC-2025-0732	03-0732	3483	\N	\N	\N	136845.6	\N	50202020-00	2A1-104	999	1	2679	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3915	DOC-2025-0733	03-0733	1119	\N	\N	\N	186600	\N	50202020-00	2A1-101 TEST ADMIN	999	1	2680	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3916	DOC-2025-0734	03-0734	1114	\N	\N	\N	464000	\N	50202020-00	2A1-101  	999	1	2681	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3917	DOC-2025-0735	03-0735	1114	\N	\N	\N	1306000	\N	50202020-00	2A1-101 PATRIOT	999	1	2682	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3918	DOC-2025-0736	03-0736	3483	\N	\N	\N	577698.87	\N	50202020-00	2A1-104	999	1	2683	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3919	DOC-2025-0737	03-0737	1006	\N	\N	\N	300546.32	\N	50202020-00	2A1-104	999	1	2684	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3920	DOC-2025-0738	03-0738	3483	\N	\N	\N	529918	\N	50202020-00	2A1-104	999	1	2685	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3921	DOC-2025-0739	03-0739	3483	\N	\N	\N	1001014	\N	50202020-00	2A1-104	999	1	2686	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3922	DOC-2025-0740	03-0740	3483	\N	\N	\N	193000	\N	50202020-00	2A1-104	999	1	2687	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3923	DOC-2025-0741	03-0741	3483	\N	\N	\N	2316000	\N	50202020-00	2A1-104	999	1	2688	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3924	DOC-2025-0742	03-0742	3483	\N	\N	\N	5583000	\N	50202020-00	2A1-101 PATRIOT	999	1	2689	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3925	DOC-2025-0743	03-0743	3483	\N	\N	\N	125775	\N	50202020-00	2A1-104	999	1	2690	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3926	DOC-2025-0744	03-0744	3483	\N	\N	\N	1541328.67	\N	50202020-00	2A1-104	999	1	2691	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3927	DOC-2025-0745	03-0745	1037	\N	\N	\N	3514000	\N	50202020-00	2A1-104	999	1	2692	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3928	DOC-2025-0746	03-0746	3483	\N	\N	\N	772000	\N	50202020-00	2A1-104	999	1	2693	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3929	DOC-2025-0747	03-0747	3483	\N	\N	\N	304657.34	\N	50202020-00	2A1-AC MISU	999	1	2694	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3930	DOC-2025-0748	03-0748	3483	\N	\N	\N	226768.7	\N	50204020-00	1A1	999	1	2695	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3931	DOC-2025-0749	03-0749	840	\N	\N	\N	20455	\N	50202020-00	2A1-101	999	1	2696	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3932	DOC-2025-0749	03-0749	758	\N	\N	\N	20000	\N	50202020-00	2A1-102	999	1	2696	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3933	DOC-2025-0750	03-0750	474	\N	\N	\N	13897.92	\N	50202020-00	2A1-104	999	1	2697	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3934	DOC-2025-0751	03-0751	1113	\N	\N	\N	780000	\N	50202020-00	2A1-102	999	1	2698	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3935	DOC-2025-0752	03-0752	1113	\N	\N	\N	4948000	\N	50202020-00	2A1-101	999	1	2699	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3936	DOC-2025-0753	03-0753	450	\N	\N	\N	154683	\N	50202020-00	2A1-104	999	1	2700	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3937	DOC-2025-0754	03-0754	3074	\N	\N	\N	24367.55	\N	50202020-00	2A1-104	999	1	2701	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3938	DOC-2025-0755	03-0755	462	\N	\N	\N	169794.8	\N	50202020-00	2A1-104	999	1	2702	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3939	DOC-2025-0756	03-0756	1111	\N	\N	\N	640000	\N	50202020-00	2A1-103	999	1	2703	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3940	DOC-2025-0757	03-0757	3036	\N	\N	\N	110203	\N	50202020-00	2A1-104	999	1	2704	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3941	DOC-2025-0758	03-0758	150	\N	\N	\N	20505	\N	50202020-00	2A1-102	999	1	2705	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3942	DOC-2025-0759	03-0759	1034	\N	\N	\N	94000	\N	50202020-00	2A1-AC POSTER	999	1	2706	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3943	DOC-2025-0760	03-0760	1036	\N	\N	\N	12500	\N	50202020-00	2A1-101   	999	1	2707	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3944	DOC-2025-0761	03-0761	1031	\N	\N	\N	386000	\N	50202020-00	2A1-104	999	1	2708	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3945	DOC-2025-0762	03-0762	1036	\N	\N	\N	111000	\N	50211990-00	1A1	999	1	2709	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3946	DOC-2025-0763	03-0763	1024	\N	\N	\N	35640	\N	50202020-00	2A1-AC HR	999	1	2710	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3947	DOC-2025-0764	03-0764	3483	\N	\N	\N	23225	\N	50202010-01	2A2B-105	999	1	2711	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3948	DOC-2025-0765	03-0765	888	\N	\N	\N	99000	\N	50202020-00	2A1-101	999	1	2712	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3949	DOC-2025-0766	03-0766	1111	\N	\N	\N	8280	\N	50202020-00	2A1-101 PATRIOT	999	1	2713	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3950	DOC-2025-0767	03-0767	1111	\N	\N	\N	11287000	\N	50202020-00	2A1-101	999	1	2714	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3951	DOC-2025-0768	03-0768	1109	\N	\N	\N	2664000	\N	50202020-00	2A1-102	999	1	2715	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3952	DOC-2025-0769	03-0769	499	\N	\N	\N	54000	\N	50202020-00	2A1-103	999	1	2716	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3953	DOC-2025-0770	03-0770	104	\N	\N	\N	63000	\N	50202020-00	2A1-101	999	1	2717	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3954	DOC-2025-0771	03-0771	1109	\N	\N	\N	172080	\N	50202020-00	2A1-102	999	1	2718	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3955	DOC-2025-0772	03-0772	3483	\N	\N	\N	4320	\N	50202020-00	2A1-101 PATRIOT	999	1	2719	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3956	DOC-2025-0773	03-0773	1109	\N	\N	\N	410341.92	\N	50202020-00	2A1-101	999	1	2720	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3957	DOC-2025-0773	03-0773	1106	\N	\N	\N	286053.66	\N	50202020-00	2A1-102	999	1	2720	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3958	DOC-2025-0774	03-0774	1103	\N	\N	\N	27000	\N	50202020-00	2A1-102	999	1	2721	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3959	DOC-2025-0775	03-0775	1103	\N	\N	\N	16515500	\N	50202020-00	2A1-102	999	1	2722	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3960	DOC-2025-0776	03-0776	1103	\N	\N	\N	4348000	\N	50202020-00	2A1-102	999	1	2723	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3961	DOC-2025-0777	03-0777	3498	\N	\N	\N	12104000	\N	50202020-00	2A1-101	999	1	2724	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3962	DOC-2025-0777	03-0777	3498	\N	\N	\N	1312000	\N	50202020-00	2A1-101 RA10612	999	1	2724	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3963	DOC-2025-0777	03-0777	3498	\N	\N	\N	6272000	\N	50202020-00	2A1-102	999	1	2724	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3964	DOC-2025-0778	03-0778	3634	\N	\N	\N	3424000	\N	50202020-00	2A1-101  	999	1	2725	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3965	DOC-2025-0778	03-0778	3634	\N	\N	\N	384000	\N	50202020-00	2A1-101 RA10612	999	1	2725	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3966	DOC-2025-0778	03-0778	3633	\N	\N	\N	1728000	\N	50202020-00	2A1-102	999	1	2725	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3967	DOC-2025-0779	03-0779	3581	\N	\N	\N	10312000	\N	50202020-00	2A1-101	999	1	2726	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3968	DOC-2025-0779	03-0779	3578	\N	\N	\N	928000	\N	50202020-00	2A1-101 RA10612	999	1	2726	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3969	DOC-2025-0779	03-0779	3560	\N	\N	\N	3712000	\N	50202020-00	2A1-102	999	1	2726	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3970	DOC-2025-0780	03-0780	3649	\N	\N	\N	3288000	\N	50202020-00	2A1-101	999	1	2727	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3971	DOC-2025-0780	03-0780	3649	\N	\N	\N	304000	\N	50202020-00	2A1-101 RA10612	999	1	2727	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3972	DOC-2025-0780	03-0780	3649	\N	\N	\N	1032000	\N	50202020-00	2A1-102	999	1	2727	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3973	DOC-2025-0781	03-0781	3519	\N	\N	\N	5560000	\N	50202020-00	2A1-101	999	1	2728	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3974	DOC-2025-0781	03-0781	3519	\N	\N	\N	240000	\N	50202020-00	2A1-101 RA10612	999	1	2728	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3975	DOC-2025-0781	03-0781	3519	\N	\N	\N	5560000	\N	50202020-00	2A1-102	999	1	2728	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3976	DOC-2025-0782	03-0782	3508	\N	\N	\N	8760000	\N	50202020-00	2A1-101	999	1	2729	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3977	DOC-2025-0782	03-0782	3508	\N	\N	\N	664000	\N	50202020-00	2A1-101 RA10612	999	1	2729	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3978	DOC-2025-0782	03-0782	3508	\N	\N	\N	5704000	\N	50202020-00	2A1-102	999	1	2729	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3979	DOC-2025-0783	03-0783	3483	\N	\N	\N	140000	\N	50202020-00	2A1-101	999	1	2730	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3980	DOC-2025-0783	03-0783	3483	\N	\N	\N	198806	\N	50202020-00	2A1-102	999	1	2730	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3981	DOC-2025-0784	03-0784	3483	\N	\N	\N	308522.58	\N	50202020-00	2A1-104	999	1	2731	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3982	DOC-2025-0785	03-0785	3483	\N	\N	\N	160296.81	\N	50202020-00	2A1-104	999	1	2732	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3983	DOC-2025-0786	03-0786	3483	\N	\N	\N	293341.46	\N	50202020-00	2A1-104	999	1	2733	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3984	DOC-2025-0787	03-0787	1037	\N	\N	\N	1000	\N	50203990-00	1A1	999	1	2734	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3985	DOC-2025-0788	03-0788	285	\N	\N	\N	220000	\N	50202020-00	2A1-104	999	1	2735	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3986	DOC-2025-0789	03-0789	3566	\N	\N	\N	10904.96	\N	50202020-00	2A1-104	999	1	2736	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3987	DOC-2025-0790	03-0790	1103	\N	\N	\N	971500	\N	50202020-00	2A1-101	999	1	2737	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3988	DOC-2025-0791	03-0791	1037	\N	\N	\N	61482	\N	50202020-00	2A1-104	999	1	2738	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3989	DOC-2025-0792	03-0792	1103	\N	\N	\N	268000	\N	50202020-00	2A1-101	999	1	2739	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3990	DOC-2025-0793	03-0793	1103	\N	\N	\N	5838000	\N	50202020-00	2A1-104	999	1	2740	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3991	DOC-2025-0794	03-0794	1103	\N	\N	\N	236000	\N	50202020-00	2A1-102	999	1	2741	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3992	DOC-2025-0795	03-0795	1103	\N	\N	\N	18088000	\N	50202020-00	2A1-102	999	1	2742	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3993	DOC-2025-0796	03-0796	1103	\N	\N	\N	315867.49	\N	50202020-00	2A1-101	999	1	2743	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3994	DOC-2025-0796	03-0796	1103	\N	\N	\N	10000	\N	50202020-00	2A1-101 RA10612	999	1	2743	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3995	DOC-2025-0796	03-0796	1103	\N	\N	\N	483376.94	\N	50202020-00	2A1-102	999	1	2743	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3997	DOC-2025-0798	03-0798	3483	\N	\N	\N	2500	\N	50210030-00	1A1	999	1	2745	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3998	DOC-2025-0799	03-0799	3483	\N	\N	\N	2546.75	\N	50203990-00	1A1	999	1	2746	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3999	DOC-2025-0799	03-0799	3483	\N	\N	\N	12910	\N	50203090-00	1A1	999	1	2746	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4000	DOC-2025-0799	03-0799	3483	\N	\N	\N	6950	\N	50203990-00	2A2  	999	1	2746	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4001	DOC-2025-0799	03-0799	3483	\N	\N	\N	47802.88	\N	50203090-00	2A2 	999	1	2746	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4002	DOC-2025-0799	03-0799	3483	\N	\N	\N	7210	\N	50201010-00	2A1-1 	999	1	2746	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4003	DOC-2025-0799	03-0799	3483	\N	\N	\N	21054	\N	50202020-00	2A1-AC FAD	999	1	2746	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4004	DOC-2025-0800	03-0800	3489	\N	\N	\N	1728000	\N	50202020-00	2A1-101	999	1	2747	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4005	DOC-2025-0800	03-0800	3489	\N	\N	\N	144000	\N	50202020-00	2A1-101 RA10612	999	1	2747	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4006	DOC-2025-0800	03-0800	3489	\N	\N	\N	528000	\N	50202020-00	2A1-102	999	1	2747	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4007	DOC-2025-0801	03-0801	3494	\N	\N	\N	18632000	\N	50202020-00	2A1-101  	999	1	2748	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4008	DOC-2025-0801	03-0801	3494	\N	\N	\N	1424000	\N	50202020-00	2A1-101 RA10612	999	1	2748	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4009	DOC-2025-0802	03-0802	3494	\N	\N	\N	13392000	\N	50202020-00	2A1-101	999	1	2749	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4010	DOC-2025-0803	03-0803	3527	\N	\N	\N	8856000	\N	50202020-00	2A1-101	999	1	2750	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4011	DOC-2025-0803	03-0803	3527	\N	\N	\N	1040000	\N	50202020-00	2A1-101 RA10612	999	1	2750	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4012	DOC-2025-0803	03-0803	3527	\N	\N	\N	4272000	\N	50202020-00	2A1-102	999	1	2750	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4013	DOC-2025-0804	03-0804	3494	\N	\N	\N	21424000	\N	50202020-00	2A1-102	999	1	2751	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4014	DOC-2025-0805	03-0805	3483	\N	\N	\N	688415	\N	50202010-02	2A2B-105	999	1	2752	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4015	DOC-2025-0806	03-0806	1103	\N	\N	\N	1316000	\N	50202020-00	2A1-102	999	1	2753	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4016	DOC-2025-0807	03-0807	1103	\N	\N	\N	4651500	\N	50202020-00	2A1-102	999	1	2754	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4018	DOC-2025-0809	03-0809	1027	\N	\N	\N	6000	\N	50202020-00	2A1-105	999	1	2756	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4019	DOC-2025-0810	03-0810	3483	\N	\N	\N	3000	\N	50202020-00	2A1-105	999	1	2757	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4020	DOC-2025-0811	03-0811	1798	\N	\N	\N	22135.3	\N	50202020-00	2A1-104	999	1	2758	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4021	DOC-2025-0812	03-0812	1103	\N	\N	\N	26650	\N	50202020-00	2A1-101 TEST ADMIN	999	1	2759	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4022	DOC-2025-0813	03-0813	3483	\N	\N	\N	14244.17	\N	50204020-00	1A1	999	1	2760	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4023	DOC-2025-0814	03-0814	434	\N	\N	\N	181749.3	\N	50202020-00	2A1-104	999	1	2761	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4024	DOC-2025-0815	03-0815	254	\N	\N	\N	6457	\N	50202020-00	2A1-104	999	1	2762	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4025	DOC-2025-0816	03-0816	1103	\N	\N	\N	14992500	\N	50202020-00	2A1-101	999	1	2763	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4026	DOC-2025-0817	03-0817	686	\N	\N	\N	252000	\N	50202010-02	2A2B-105	999	1	2764	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4027	DOC-2025-0818	03-0818	1103	\N	\N	\N	9059	\N	50205020-01	2A2	999	1	2765	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4028	DOC-2025-0819	03-0819	3484	\N	\N	\N	7207	\N	50202020-00	2A1-101	999	1	2766	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4029	DOC-2025-0820	03-0820	3483	\N	\N	\N	1357500	\N	50202020-00	2A1-104	999	1	2767	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4030	DOC-2025-0821	03-0821	129	\N	\N	\N	40000	\N	50202020-00	2A1-101	999	1	2768	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4031	DOC-2025-0822	03-0822	3483	\N	\N	\N	13838.33	\N	50202020-00	2A1-101	999	1	2769	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4032	DOC-2025-0823	03-0823	3483	\N	\N	\N	60455	\N	50202020-00	2A1-101	999	1	2770	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4033	DOC-2025-0823	03-0823	3483	\N	\N	\N	20000	\N	50202020-00	2A1-102	999	1	2770	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4034	DOC-2025-0824	03-0824	3483	\N	\N	\N	11985	\N	50202020-00	2A1-101 PATRIOT	999	1	2771	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4017	DOC-2025-0808	03-0808	1103	\N	\N	31	659215	\N	50202020-00	2A1-106	999	1	2755	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4035	DOC-2025-0825	03-0825	1945	\N	\N	\N	115877.57	\N	50202020-00	2A1-104	999	1	2772	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4036	DOC-2025-0826	03-0826	3483	\N	\N	\N	120655	\N	50202020-00	2A1-101	999	1	2773	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4037	DOC-2025-0826	03-0826	3483	\N	\N	\N	40000	\N	50202020-00	2A1-102	999	1	2773	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4038	DOC-2025-0827	03-0827	1103	\N	\N	\N	641000	\N	50202020-00	2A1-101	999	1	2774	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4039	DOC-2025-0828	03-0828	3483	\N	\N	\N	40655	\N	50202020-00	2A1-101	999	1	2775	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4040	DOC-2025-0828	03-0828	3483	\N	\N	\N	100000	\N	50202020-00	2A1-102	999	1	2775	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4041	DOC-2025-0829	03-0829	1103	\N	\N	\N	29626	\N	50202020-00	2A1-101	999	1	2776	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4042	DOC-2025-0830	03-0830	1038	\N	\N	\N	113800	\N	50203990-00	2A1-1	999	1	2777	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4043	DOC-2025-0831	03-0831	3498	\N	\N	\N	4320000	\N	50202020-00	2A1-101	999	1	2778	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4044	DOC-2025-0831	03-0831	3498	\N	\N	\N	664000	\N	50202020-00	2A1-101 RA10612	999	1	2778	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4045	DOC-2025-0831	03-0831	3498	\N	\N	\N	1992000	\N	50202020-00	2A1-102	999	1	2778	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4046	DOC-2025-0832	03-0832	3494	\N	\N	\N	1808000	\N	50202020-00	2A1-101	999	1	2779	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4047	DOC-2025-0833	03-0833	3494	\N	\N	\N	2992000	\N	50202020-00	2A1-101	999	1	2780	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4048	DOC-2025-0833	03-0833	3494	\N	\N	\N	152000	\N	50202020-00	2A1-101 RA10612	999	1	2780	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4049	DOC-2025-0833	03-0833	3494	\N	\N	\N	1040000	\N	50202020-00	2A1-102	999	1	2780	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4050	DOC-2025-0834	03-0834	3483	\N	\N	\N	4576000	\N	50202020-00	2A1-101	999	1	2781	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4051	DOC-2025-0834	03-0834	3483	\N	\N	\N	288000	\N	50202020-00	2A1-101 RA10612	999	1	2781	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4052	DOC-2025-0834	03-0834	3483	\N	\N	\N	3896000	\N	50202020-00	2A1-102	999	1	2781	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4053	DOC-2025-0835	03-0835	3483	\N	\N	\N	5848000	\N	50202020-00	2A1-101	999	1	2782	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4054	DOC-2025-0835	03-0835	3483	\N	\N	\N	392000	\N	50202020-00	2A1-101 RA10612	999	1	2782	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4055	DOC-2025-0835	03-0835	3483	\N	\N	\N	4368000	\N	50202020-00	2A1-102	999	1	2782	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4056	DOC-2025-0836	03-0836	3494	\N	\N	\N	3840000	\N	50202020-00	2A1-101	999	1	2783	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4057	DOC-2025-0836	03-0836	3494	\N	\N	\N	464000	\N	50202020-00	2A1-101 RA10612	999	1	2783	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4058	DOC-2025-0836	03-0836	3494	\N	\N	\N	2488000	\N	50202020-00	2A1-102	999	1	2783	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4059	DOC-2025-0837	04-0837	1103	\N	\N	\N	626168.13	\N	50101010-01	1A1	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4060	DOC-2025-0837	04-0837	1103	\N	\N	\N	76588.33	\N	50101010-01	2A1-1	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4061	DOC-2025-0837	04-0837	1103	\N	\N	\N	277580.57	\N	50101010-01	2A1-2	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4062	DOC-2025-0837	04-0837	1103	\N	\N	\N	700159.39	\N	50101010-01	2A2	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4063	DOC-2025-0837	04-0837	1103	\N	\N	\N	38000	\N	50102010-01	1A1	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4064	DOC-2025-0837	04-0837	1103	\N	\N	\N	6000	\N	50102010-01	2A1-1	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4065	DOC-2025-0837	04-0837	1103	\N	\N	\N	22000	\N	50102010-01	2A1-2	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4066	DOC-2025-0837	04-0837	1103	\N	\N	\N	48000	\N	50102010-01	2A2	999	1	2784	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4067	DOC-2025-0838	04-0838	1103	\N	\N	\N	141759.87	\N	50101010-01	1A1	999	1	2785	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4068	DOC-2025-0838	04-0838	1103	\N	\N	\N	18922.17	\N	50101010-01	2A1-1	999	1	2785	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4069	DOC-2025-0838	04-0838	1103	\N	\N	\N	96747.43	\N	50101010-01	2A1-2	999	1	2785	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4070	DOC-2025-0838	04-0838	1103	\N	\N	\N	190101.61	\N	50101010-01	2A2	999	1	2785	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4071	DOC-2025-0839	04-0839	1103	\N	\N	\N	141750.5	\N	50101010-01	1A1	999	1	2786	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4072	DOC-2025-0839	04-0839	1103	\N	\N	\N	18920.75	\N	50101010-01	2A1-1	999	1	2786	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4073	DOC-2025-0839	04-0839	1103	\N	\N	\N	96743	\N	50101010-01	2A1-2	999	1	2786	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4074	DOC-2025-0839	04-0839	1103	\N	\N	\N	190089	\N	50101010-01	2A2	999	1	2786	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4075	DOC-2025-0840	04-0840	1103	\N	\N	\N	141750.5	\N	50101010-01	1A1	999	1	2787	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4076	DOC-2025-0840	04-0840	1103	\N	\N	\N	18920.75	\N	50101010-01	2A1-1	999	1	2787	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4077	DOC-2025-0840	04-0840	1103	\N	\N	\N	96743	\N	50101010-01	2A1-2	999	1	2787	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4078	DOC-2025-0840	04-0840	1091	\N	\N	\N	190089	\N	50101010-01	2A2	999	1	2787	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4079	DOC-2025-0841	04-0841	3483	\N	\N	32	46028	\N	50202020-00	2A1-106	999	1	2788	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4082	DOC-2025-0844	04-0844	1091	\N	\N	2	8836	\N	50202010-02	2A2B-105	999	1	2791	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4080	DOC-2025-0842	04-0842	3483	\N	\N	32	51232.5	\N	50202020-00	2A1-106	999	1	2789	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
4081	DOC-2025-0843	04-0843	3138	\N	\N	32	161126.29	\N	50202020-00	2A1-106	999	1	2790	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3124	DOC-2025-0146	01-0146	3483	\N	\N	\N	48811.31	\N	50101010-01	1A1	999	1	2093	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3125	DOC-2025-0146	01-0146	3483	\N	\N	\N	8349	\N	50101010-01	2A1-1	999	1	2093	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3126	DOC-2025-0146	01-0146	3483	\N	\N	\N	31446.39	\N	50101010-01	2A1-2	999	1	2093	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3127	DOC-2025-0146	01-0146	3483	\N	\N	\N	74795.36	\N	50101010-01	2A2  	999	1	2093	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2898	DOC-2025-0001	01-0001	3483	\N	\N	\N	36000	\N	50102010-01	1A1	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2899	DOC-2025-0001	01-0001	3483	\N	\N	\N	8000	\N	50102010-01	2A1-1	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2900	DOC-2025-0001	01-0001	3483	\N	\N	\N	20000	\N	50102010-01	2A1-2	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2901	DOC-2025-0001	01-0001	3483	\N	\N	\N	46000	\N	50102010-01	2A2	999	1	1948	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2965	DOC-2025-0040	01-0040	3483	\N	\N	1	62183.35	\N	50202020-00	2A1-AC HR	999	1	1987	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3996	DOC-2025-0797	03-0797	3483	\N	\N	2	322076	\N	50202020-00	2A1-AC HR	999	1	2744	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2988	DOC-2025-0058	01-0058	652	\N	\N	31	190094.55	\N	50202020-00	2A1-106	999	1	2005	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2990	DOC-2025-0060	01-0060	254	\N	\N	31	57000	\N	50202020-00	2A1-106	999	1	2007	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
2996	DOC-2025-0064	01-0064	1037	\N	\N	31	1140537.55	\N	50202020-00	2A1-106	999	1	2011	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3038	DOC-2025-0091	01-0091	3483	\N	\N	31	852773.2	\N	50202020-00	2A1-106	999	1	2038	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3055	DOC-2025-0106	01-0106	3483	\N	\N	31	80000	\N	50202020-00	2A1-106	999	1	2053	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3056	DOC-2025-0107	01-0107	104	\N	\N	31	80000	\N	50202020-00	2A1-106	999	1	2054	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3057	DOC-2025-0108	01-0108	254	\N	\N	31	80000	\N	50202020-00	2A1-106	999	1	2055	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3058	DOC-2025-0109	01-0109	254	\N	\N	31	100000	\N	50202020-00	2A1-106	999	1	2056	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3059	DOC-2025-0110	01-0110	505	\N	\N	31	230000	\N	50202020-00	2A1-106	999	1	2057	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3060	DOC-2025-0111	01-0111	3483	\N	\N	31	52874	\N	50202020-00	2A1-106	999	1	2058	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3181	DOC-2025-0176	02-0176	1094	\N	\N	31	367690.91	\N	50202020-00	2A1-106	999	1	2123	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3182	DOC-2025-0177	02-0177	3483	\N	\N	31	1127173.49	\N	50202020-00	2A1-106	999	1	2124	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3222	DOC-2025-0210	02-0210	3483	\N	\N	31	27500	\N	50202020-00	2A1-106	999	1	2157	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3311	DOC-2025-0277	02-0277	1027	\N	\N	31	213070.95	\N	50202020-00	2A1-106	999	1	2224	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3398	DOC-2025-0347	02-0347	1022	\N	\N	31	38000	\N	50202020-00	2A1-106	999	1	2294	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3399	DOC-2025-0348	02-0348	2766	\N	\N	31	759516.42	\N	50202020-00	2A1-106	999	1	2295	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3431	DOC-2025-0373	02-0373	2757	\N	\N	31	881000	\N	50202020-00	2A1-106	999	1	2320	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3478	DOC-2025-0407	02-0407	1501	\N	\N	31	169790.68	\N	50202020-00	2A1-106	999	1	2354	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3490	DOC-2025-0418	02-0418	3484	\N	\N	31	201701	\N	50202020-00	2A1-106	999	1	2365	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3491	DOC-2025-0419	02-0419	3483	\N	\N	31	74538	\N	50202020-00	2A1-106	999	1	2366	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3568	DOC-2025-0468	02-0468	387	\N	\N	31	255024.08	\N	50202020-00	2A1-106	999	1	2415	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3604	DOC-2025-0482	03-0482	1037	\N	\N	31	564974.9	\N	50202020-00	2A1-106	999	1	2429	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3610	DOC-2025-0487	03-0487	3484	\N	\N	31	122868	\N	50202020-00	2A1-106	999	1	2434	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3613	DOC-2025-0490	03-0490	1231	\N	\N	31	234000	\N	50202020-00	2A1-106	999	1	2437	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3614	DOC-2025-0491	03-0491	1206	\N	\N	31	763917	\N	50202020-00	2A1-106	999	1	2438	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3695	DOC-2025-0568	03-0568	3483	\N	\N	31	33488	\N	50202020-00	2A1-106	999	1	2515	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3703	DOC-2025-0574	03-0574	1178	\N	\N	31	219000	\N	50202020-00	2A1-106	999	1	2521	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3704	DOC-2025-0575	03-0575	1178	\N	\N	31	821000	\N	50202020-00	2A1-106	999	1	2522	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3813	DOC-2025-0647	03-0647	1122	\N	\N	31	4774906.65	\N	50202020-00	2A1-106	999	1	2594	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3814	DOC-2025-0648	03-0648	1122	\N	\N	31	1359000	\N	50202020-00	2A1-106	999	1	2595	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3848	DOC-2025-0674	03-0674	3138	\N	\N	31	252349	\N	50202020-00	2A1-106	999	1	2621	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3853	DOC-2025-0679	03-0679	3483	\N	\N	31	120000	\N	50202020-00	2A1-106	999	1	2626	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3854	DOC-2025-0680	03-0680	3631	\N	\N	31	146947	\N	50202020-00	2A1-106	999	1	2627	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3855	DOC-2025-0681	03-0681	465	\N	\N	31	80000	\N	50202020-00	2A1-106	999	1	2628	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3856	DOC-2025-0682	03-0682	242	\N	\N	31	80000	\N	50202020-00	2A1-106	999	1	2629	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
3878	DOC-2025-0703	03-0703	244	\N	\N	31	28621	\N	50202020-00	2A1-106	999	1	2650	2025-04-10 03:45:42	2025-04-10 03:45:42	\N	FAD	\N	\N	1	0	0	FAD	0	0	0
\.


--
-- TOC entry 5006 (class 0 OID 24713)
-- Dependencies: 240
-- Data for Name: orstbl_libitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orstbl_libitems (orslib_id, ors_id, lib_id, ors_random) FROM stdin;
1	2965	6	DOC-2025-0040
\.


--
-- TOC entry 4993 (class 0 OID 24655)
-- Dependencies: 227
-- Data for Name: payeedb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payeedb (payeeid, payeetype, payeename, payeeacctnum, payeeaddr, payeetin, payeeoffice) FROM stdin;
1	Sch-CIP	AARON JOSEPH M. MACASPAC	1827-4272-30	LBP-BICUTAN		\N
2	Sch-CIP	ABBIE L. PADRONES	1827-3224-46	LBP-BICUTAN		\N
3	Sch-CIP	ABDUL NAZER KAMID UGOKAN	2746-2835-07	LBP-COTABATO BR.		\N
4	Sch-CIP	ABDULRAHIM H. ABDULLAH	0375-1306-53	LBP-COTABATO BR.		\N
5	Sch-CIP	ABDULRAHMAN C. MANALUNDONG	1267-0556-84	LBP-MARAWI		\N
6	Sch-CIP	ABEGAIL ANDRES RAGONOT	3466-2073-05	LBP-SAN JOSE DEL MONTE BR.		\N
7	Sch-CIP	ABEL GARBULO LUCIDO	1987-2274-15	LBP-YMCA BRANCH		\N
8	Sch-CIP	ABIGAIL FLORES GUECO	1897-0993-96	LBP-LOS BANOS		\N
9	Sch-CIP	ABIGAILE MIA VENTURA JAVIER	0237-1502-44	LBP-WEST AVE. QC BR		\N
10	Sch-CIP	ABRAHAM ALEJANDRO PORCAL	2326-1665-80	LBP-GAISANO LAPAZ, ILOILO BR		\N
11	Sch-CIP	ACHILLES EREVE ESPALDON	3216-1354-14	LBP-QUEZON CITY		\N
12	Sch-CIP	ADELAIDA CASTILLO DURAN	0707-0724-82	LBP-QC CIRCLE		\N
13	Sch-CIP	ADELAIDA TISICO CALPE	1897-0849-41	LBP-UP LOS BA?OS		\N
14	Sch-CIP	ADONIS T. MARQUEZ	1827-4610-80	LBP-BICUTAN		\N
15	Sch-CIP	ADRIAN BRON ABARIENTOS	0596-2165-01	LBP-MANILA		\N
16	Sch-CIP	AGNES GONZALES MORALES	1897-0503-97	LBP-LOS BANOS		\N
17	Sch-CIP	AHDRIAN CAMILO C. GERNALE	1827-3432-49	LBP-BICUTAN		\N
18	Sch-CIP	AIMEE LYNN B. DUPO	1897-0438-11	LBP-UP LOS BA?OS		\N
19	Sch-CIP	AIRA COLLENE SALINAS RAGOS	0597-2345-70	LBP-PADRE FAURA BR.		\N
20	Sch-CIP	AL MARCIAL CALLEJA BENGCO	0056-1932-43	LBP-BUENDIA BRANCH		\N
21	Sch-CIP	ALAINE GARIBAY PAGATPATAN	1897-1634-93	LBP-UP-LOS BA?OS LAGUNA BR.		\N
22	Sch-CIP	ALAN ROYCE BERNIL TIZON	0167-3027-42	LBP-DAVAO CITY BR.		\N
23	Sch-CIP	ALBERT CHRISTOPHER II PANGANTIHON DANIOT	1716-0931-46	LBP-BUKIDNON		\N
24	Sch-CIP	ALELI A. COLLADO	1896-2873-42	LBP-UPLB BRANCH		\N
25	Sch-CIP	ALELI CORNELIA R. PLETE	1827-3628-71	LBP-BICUTAN		\N
26	Sch-CIP	ALETA BELISSA DURANO CORREA	1897-0995-40	LBP-UPLB BRANCH		\N
27	Sch-CIP	ALEX MARCELINO PALOMO	1827-1689-51	LBP-BICUTAN		\N
28	Sch-CIP	ALEXANDER JOHN DEPASUPIL BORJA	1897-1309-94	LBP-UP LOS BA?OS		\N
29	Sch-CIP	ALEXANDER JR MARIANO ARGAME	1826-1779-90	LBP-BICUTAN		\N
30	Sch-CIP	ALEXIA JEWEL DAMSEL CASTILLO	2697-0707-56	LBP-PATEROS BR.		\N
31	Sch-CIP	ALFEE B. CAPULE	1827-3216-44	LBP-BICUTAN		\N
32	Sch-CIP	ALFONSO PANGAN ALAMBAN	0157-2151-32	LBP-CAGAYAN DE ORO CITY		\N
33	Sch-CIP	ALFRED B. CALIBUSO	0186-4010-18	LBP-TACLOBAN		\N
34	Sch-CIP	ALFREDO RYENEL MANALO PARUNGAO	1897-0995-82	LBP-LOS BANOS		\N
35	Sch-CIP	ALICE NIGAPATAN DELA CRUZ	0237-2086-50	LBP-WEST AVE., QC. BR.		\N
36	Sch-CIP	ALJEMEDIN SAKILAN JAUDINEZ	1247-0325-99	LBP-TAWI-TAWI BR.		\N
37	Sch-CIP	ALLAN BANASIHAN SIANO	1897-0890-48	LBP-UP LOS BA?OS		\N
38	Sch-CIP	ALLAN JOHN S. LIMSON	1827-2048-50	LBP-BICUTAN		\N
39	Sch-CIP	ALLEN DARYL F. ASUELO	0037-1889-80	LBP-ILOILO CITY		\N
40	Sch-CIP	ALVIE A. ASTRONOMO	0237-1306-77	LBP-WEST AVE.		\N
41	Sch-CIP	ALVIN KIM M. COLLERA	1827-3914-30	LBP-BICUTAN		\N
42	Sch-CIP	ALXIS JOHN C. MOVIDA	1827-4048-41	LBP-BICUTAN		\N
43	Sch-CIP	ALYANNA ALFONSO RAYALA	0257-3393-51	LBP-VALENZUELA BRANCH		\N
44	Sch-CIP	ALYSSA MARIE ALBO LOLA	3727-0072-44	LBP-MANILA		\N
45	Sch-CIP	ALYZIA ANDREA E. ADORNA	1827-2551-02	LBP-BICUTAN		\N
46	Sch-CIP	AMEERA AL-RASHID JOSE	1467-0758-50	LBP-KATIPUNAN		\N
47	Sch-CIP	AMIEL TAMAYO CARREON	3777-0278-15	LBP-WEST SAN FERNANDO BR.		\N
48	Sch-CIP	AMSTER FEI P. BAQUIRAN	1827-3214-90	LBP-BICUTAN		\N
49	Sch-CIP	ANA CIAREN H. ITULID	1826-1627-55	LBP-BICUTAN		\N
50	Sch-CIP	ANA ELENA L. CONJARES	0237-0930-38	LBP-WEST AVE.		\N
51	Sch-CIP	ANA MARIA A CHUPUNGCO	0237-0960-02	LBP-Q.C. 		\N
52	Sch-CIP	ANABEL B. ABULENCIA	1897-1511-42	LBP-LOS BA?OS		\N
53	Sch-CIP	ANALINDA M. FAJARDO	1897-0264-61	LBP-KATIPUNAN		\N
54	Sch-CIP	ANALIZA C. DIAZ	1897-1053-70	LBP-LOS BANOS		\N
55	Sch-CIP	ANALIZA REBUELTA TEH	0717-0339-73	LBP-DILIMAN BR.		\N
56	Sch-CIP	ANDY GARINA MATULA	1877-0888-43	LBP-EDSA BR.		\N
57	Sch-CIP	ANGEL TUGADE BAUTISTA VII	0237-1306-69	LBP-WEST AVE.		\N
58	Sch-CIP	ANGELA BUENA PASICOLAN	2467-0551-89	LBP- LAS PI?AS BR		\N
59	Sch-CIP	ANGELA SAN GABRIEL DELA PENA	2336-1498-11	LBP-UP DILIMAN		\N
60	Sch-CIP	ANGELEIGH ROSE TEDLOS CIRUNAY	1897-1494-07	LBP-LOS BA?OS		\N
61	Sch-CIP	ANGELINA ASPRA AQUINO	3077-0905-16	LBP-DILIMAN		\N
62	Sch-CIP	ANGELINE LUMBICAN DOLINEN	1377-0884-56	LBP-LA TRINIDAD BAGUIO BR.		\N
63	Sch-CIP	ANGELO ABSALON PANLAQUI	0237-1963-68	LBP-WEST AVENUE BRANCH		\N
64	Sch-CIP	ANGELO P. OLVIDO	0037-0490-00	LBP-ILOILO CITY		\N
65	Sch-CIP	ANGIELICA REAMBILLO  NAVASERO	1897-1462-20	LBP-LOS BANOS		\N
66	Sch-CIP	ANN KRISTINE CALABON ARANGUREN	1897-1082-71	LBP-UP LOS BA?OS		\N
67	Sch-CIP	ANN STEPHANIE B. DE LA TORRE	1887-0371-98	LBP-STA. MARIA, BULACAN BR.		\N
68	Sch-CIP	ANNA KATHERINE L. GACER	0329-0391-88	BPI-UP DILIMAN		\N
69	Sch-CIP	ANNA LIZA B. SAET 	2816-2263-28	LBP-TAGUIG		\N
70	Sch-CIP	ANNA MAE M DE LOS REYES	1897-1282-48	LBP-LOS BANOS		\N
71	Sch-CIP	ANNABELLE C. FLORES	1827-3810-35	LBP-BICUTAN		\N
72	Sch-CIP	ANNALIE LUMBAY ROSALES	1896-3467-72	LBP-LOS BANOS		\N
73	Sch-CIP	ANNAVI MARIE GABRIEL VILLANUEVA	1827-2178-12	LBP-BICUTAN		\N
74	Sch-CIP	ANNE MICHELLE CALIBO RAMIREZ	0146-3452-20	LBP-CEBU		\N
75	Sch-CIP	ANNIVER RYAN P. LAPUZ	1897-0718-07	LBP-LOS BANOS		\N
76	Sch-CIP	ANORLY RACUYAL  NARCA	1736-3962-42	LBP-TACLOBAN 		\N
77	Sch-CIP	ANTHONY CINCO SALES	2567-0001-79	LBP-DAVAO BRANCH		\N
78	Sch-CIP	ANTHONY GREG FERNANDEZ ALONZO	1827-2543-51	LBP-BICUTAN		\N
79	Sch-CIP	ANWAR ZEUS S. PATTUINAN	0327-1024-27	LBP-ILIGAN CITY		\N
80	Sch-CIP	APPLE JEAN CAUILAN MARTIN	1897-0941-57	LBP-LOS BANOS		\N
81	Sch-CIP	APRIL AQUINO ESTEBAN	0237-1951-59	LBP-WEST AVE. BR.		\N
82	Sch-CIP	APRIL JACOBE VILLAFUERTE	1517-2060-80	LBP-MALACA?ANG BR.		\N
83	Sch-CIP	APRIL ROSE CASTILLO VERANGA	1827-4874-96	LBP-BICUTAN		\N
84	Sch-CIP	APRIL ROSE ITCHON MULIMBAYAN	1897-0998-25	LBP-UPLB BR.		\N
85	Sch-CIP	ARACELI ASUNCION LIM	3237-0054-21	LBP-ZAMBAONGA		\N
86	Sch-CIP	ARFE G. CASTILLO	0227-0919-67	LBP-BAGUIO BRANCH		\N
87	Sch-CIP	ARIANNE VILLANUEVA JULIAN	2967-0771-97	LBP-NUEVA ECIJA BR.		\N
88	Sch-CIP	ARIEL JUGUILON RICABLANGCA	1246-2428-59	LBP-TAWI-TAWI BR.		\N
89	Sch-CIP	ARIS REYNOLD V. CAJIGAL	2137-0174-34	LBP-BATAC		\N
90	Sch-CIP	ARLENE G. ESTACIO	1827-4606-36	LBP-BICUTAN		\N
91	Sch-CIP	ARMANDO S. SOMINTAC	3077-0274-90	LBP-UP DILIMAN		\N
92	Sch-CIP	ARMELA K. RAZO	1827-3436-05	LBP-BICUTAN		\N
93	Sch-CIP	ARNALDO C. REYES	1826-2678-75	LBP-BICUTAN		\N
94	Sch-CIP	ARNALDO T. AMOSCO JR	1737-0070-88	LBP-TACLOBAN		\N
95	Sch-CIP	ARNEL BAS BELTRAN	5277-0256-49	LBP-P. OCAMPO BRANCH		\N
96	Sch-CIP	ARTURO JR G. CAUBA	0366-4902-48	LBP-AGUSAN DEL NORTE		\N
97	Sch-CIP	ARVIN ORTEGA DIMAANO	0237-1381-63	LBP-WEST AVE.		\N
98	Sch-CIP	ATHENA DANA C. CHAVEZ	1827-3914-56	LBP-BICUTAN		\N
99	Sch-CIP	AUNG LA PYAE 	1896-3925-88	LBP-LOS BA?OS		\N
100	Sch-CIP	AURA CASTILLO MASTIAS	3077-0341-52	LBP-UP DILIMAN BR.		\N
101	Sch-CIP	AXCELLOR CABANGIS AQUINO	1597-0812-66	LBP-NOVALICHES BR.		\N
102	Sch-CIP	AYESHA DUAVIS ABARCA	3726-0203-95	LBP-ESPA?A, MANILA BRANCH		\N
103	Sch-CIP	AZEL GLORY CABINTOY BANGANAN	1897-1512-58	LBP-UPLB BR.		\N
104	Sch-CIP	AZMAN AKUK NADS	0327-1810-50	LBP-ILIGAN CITY BR.		\N
105	Sch-CIP	BEA C. MATEO	1827-2186-14	LBP-BICUTAN		\N
106	Sch-CIP	BEATRICE BALTAZAR ARIVE	5277-0617-77	LBP-VITO CRUZ BR.		\N
107	Sch-CIP	BENIGNO JR. CABARDO MONTEMAYOR	0237-1143-02	LBP-WEST AVE.		\N
108	Sch-CIP	BENJAMIN ARCILLA SANTOS	1827-5308-47	LBP-BICUTAN		\N
109	Sch-CIP	BENJOE REY B. VISAYAS	0327-0432-50	LBP-ILIGAN CITY		\N
110	Sch-CIP	BERNADETTE YUSI SANTOS	3846-0034-19	LBP-Q.C.		\N
111	Sch-CIP	BERNARD JOHN VALLEJOS TONGOL	3726-0075-50	LBP-ESPANA MANILA		\N
112	Sch-CIP	BERNARDA GRANADA PEREZ	2407-0050-42	LBP-BANILAD CEBU		\N
113	Sch-CIP	BETHEL JANE NAVARRO ILIGAN	2416-2918-48	LBP-CDO BRANCH		\N
114	Sch-CIP	BIANCA CLAUDETTE ROSALES CANLAS	1826-1802-57	LBP-BICUTAN		\N
115	Sch-CIP	BIENVENIDO B. FLORES JR.	1827-3810-43	LBP-BICUTAN		\N
116	Sch-CIP	BIN JEREMIAH D. BARBA	0237-1690-42	LBP-WEST AVE.		\N
117	Sch-CIP	BLAISE DAWAT MANSUETO	1826-1840-90	LBP-BICUTAN		\N
118	Sch-CIP	BLESSIE TABIANDO JIMENO	0826-2330-95	LBP-DAGUPAN BR.		\N
119	Sch-CIP	BLESSY HANNA TAYAM MALINAO	1896-3061-18	LBP-LOS BANOS		\N
120	Sch-CIP	BOBBY C. MATIRA	1826-1239-38	LBP-BICUTAN		\N
121	Sch-CIP	BONIFACIO B. TAMPARONG JR.	1827-3208-77	LBP-BICUTAN		\N
122	Sch-CIP	BOON KRISTOFFER PAZA LAUW	0237-2036-66	LBP-WEST BR.		\N
123	Sch-CIP	BOTVINNIK LOMBOY PALATTAO	0237-1568-54	LBP-WEST AVE.		\N
124	Sch-CIP	BRENDA MAGNO BADONGEN	0227-0669-54	LBP-MARCOS HIGHWAY BR.		\N
125	Sch-CIP	BRIAN JESSE MATUGUINA TEXEIRA	1437-1796-85	LBP-TAYUMAN BR.		\N
126	Sch-CIP	BRYAN BAYLOSIS YBANEZ	2407-0699-03	LBP-BANILA BR, CEBU		\N
127	Sch-CIP	BRYAN MAURICIO BALTAZAR	1896-3218-18	LBP-LOS BANOS		\N
128	Sch-CIP	CAMILLE LEVINA LARIOS	0707-1098-90	LBP-QC CIRCLE		\N
129	Sch-CIP	CARINNA TEMELO SALDANA	1827-4027-68	LBP-BICUTAN BRANCH		\N
130	Sch-CIP	CARL ANTHONY ORDANES LANTICAN	1897-1355-46	LBP-LOS BANOS		\N
131	Sch-CIP	CARL CHRISTIAN AMADOR CHAGUILE	0227-1179-31	LBP-BICUTAN BRANCH		\N
132	Sch-CIP	CARLO ANGELO PELOTENIA	1986-2215-02	LBP-YMCA BRANCH		\N
133	Sch-CIP	CARLO CHRIS S. APURILLO	0186-2527-30	LBP-TACLOBAN		\N
135	Sch-CIP	CARMINA SABIROLA DALIDA	0237-1971-35	LBP-WEST AVE. QC BR		\N
136	Sch-CIP	CASEY OLIVER ARELLANO TURINGAN	3836-0490-54	LBP-ALABANG BR.		\N
137	Sch-CIP	CATHERINE CORTEZ ALA	1725-0470-50	LBP-QUEZON CITY HALL		\N
138	Sch-CIP	CATHERINE HOFILENA DAMASO	3057-0192-20	LBP-ILOILO CITY		\N
139	Sch-CIP	CEASAR ROLDAN ADALLA ESDICUL	1086-0126-81	LBP -BASCO BATANES BR		\N
141	Sch-CIP	CECILIA DIANA CALAPIT PALAO	1897-0972-37	LBP-LOS BANOS		\N
142	Sch-CIP	CECILIA S. CALAGUI	3707-0053-85	LBP-TUGUEGARAO		\N
143	Sch-CIP	CECILLE ALMAZAN MOLDEZ	1897-0898-97	LBP-LOS BANOS		\N
144	Sch-CIP	CELINA ANN ZALAMEDA JAVIER	1827-1758-77	LBP-BICUTAN		\N
145	Sch-CIP	CESAR CABRERA SEVILLA	1896-2234-41	LBP-UP LOS BA?OS BR		\N
146	Sch-CIP	CESAR JR FORTUN NAVALES	0977-0779-40	LBP-AGUSAN DEL SUR		\N
147	Sch-CIP	CHARDY CANETE FERNANDO	0367-1457-06	LBP-CARAGA		\N
148	Sch-CIP	CHARITO T. ARANILLA	0237-0926-78	LBP-WEST AVE.		\N
149	Sch-CIP	CHARITY SIASON ROMANO	0366-3987-32	LBP-BUTUAN CITY BR.		\N
150	Sch-CIP	CHARLAINE ESTABAYA IRANG	1987-3653-89	LBP-YMCA BRANCH		\N
151	Sch-CIP	CHARLENE GARCIA MENDOZA	1827-2204-73	LBP-BICUTAN		\N
153	Sch-CIP	CHARLES BUCALA CANCERAN	0397-0829-54	LBP-MUNTINLUPA BR.		\N
154	Sch-CIP	CHARLES PATRICK DIONISIO UY	1827-1786-12	LBP-BICUTAN		\N
155	Sch-CIP	CHARLOTTE VILLANUEVA BALDERAS	0237-1961-20	LBP-QUEZON CITY BR.		\N
156	Sch-CIP	CHARMAINE V. VILLAMIL	0707-1451-61	LBP-QUEZON CITY		\N
157	Sch-CIP	CHARRYMAE PEREZ FERNANDEZ	1267-0611-53	LBP-BAGUIO CITY BR.		\N
158	Sch-CIP	CHARYL C. APUYAN	1826-0138-73	LBP-BICUTAN		\N
159	Sch-CIP	CHARZEN MAE ARANCILLO KINOAN	1937-0713-84	LBP-ILOILO CITY BR.		\N
160	Sch-CIP	CHEANHCHIAYSEYHA NOURN	3077-1565-92	LBP-QUEZON CITY		\N
161	Sch-CIP	CHERI ANNE M. DINGLE	0237-1308-98	LBP-WEST AVE.		\N
162	Sch-CIP	CHERIE SHEY PADUA DELA CRUZ	0487-0402-40	LBP-MONUMENTO, SOUTH CALOOCAN BR.		\N
163	Sch-CIP	CHERRY MAY M. OLAYA	3077-0844-27	LBP-UP DILIMAN		\N
164	Sch-CIP	CHERRY RABULAN JACOB	0237-1067-76	LBP-WEST AVE.		\N
165	Sch-CIP	CHERRYLENE MANALO BOLANTE	1896-4700-82	LBP-LOS BA?OS BR.		\N
166	Sch-CIP	CHRIS ALLEN EARL FRANCIA TENA FRANCIA	0236-1362-13	LBP-WEST AVE.		\N
167	Sch-CIP	CHRISTALLINE JHINE LAO SHI	5806-0157-43	LBP-JONES, CEBU BR.		\N
168	Sch-CIP	CHRISTENE MAE ALIBUDBUD CANILLO	0597-2346-27	LBP-TAFT AVE. BR.		\N
134	Sch-CIP	CARLOS ANTONIO PENA	1896-4092-51	LBP-LOS BANOS		\N
169	Sch-CIP	CHRISTER LAURENZ GAMISERA FETALVERO	0406-2365-87	LBP-VIGAN		\N
2145	RP	MARK JOSEPH DEBLOIS PASTOR	0267-0643-18	LBP-LAOAG CITY		\N
170	Sch-CIP	CHRISTIAN ANDREW ALCAZAREN ALMALBIS	0476-3581-83	LBP-ILOILO CITY BR.		\N
171	Sch-CIP	CHRISTIAN DEO TORREQUEMADA DEGUIT	0597-1965-63	LBP-MANILA		\N
172	Sch-CIP	CHRISTIAN ICALINA NARVACAN	3507-0522-90	LBP-CARCAR CITY, CEBU BR.		\N
173	Sch-CIP	CHRISTIAN M. IBANEZ	1827-4608-73	LBP-BICUTAN		\N
174	Sch-CIP	CHRISTIAN MATTHEW PETRONA TANDINGAN	0227-1377-46	LBP-BAGUIO CITY BR.		\N
175	Sch-CIP	CHRISTIAN RABBI ANGELES GARAZA	1826-2193-90	LBP-BICUTAN		\N
176	Sch-CIP	CHRISTINA AQUINO BINAG	3726-0063-50	LBP-ESPA?A BRANCH		\N
177	Sch-CIP	CHRISTINE EDEN TABAFUNDA CORTEZ	1827-2179-44	LBP-BICUTAN		\N
178	Sch-CIP	CHRISTINE JOY DR AGUILA	0237-1487-89	LBP-WEST AVE.		\N
179	Sch-CIP	CHRISTINE MAY D. GAYLAN	1827-2400-67	LBP-BICUTAN		\N
180	Sch-CIP	CHRISTINE R. SANTOS	0707-0732-50	LBP-Q.C		\N
181	Sch-CIP	CHRISTOPER C. GEALAN	1826-2024-63	LBP-BICUTAN		\N
182	Sch-CIP	CHRISTOPHER G. MILLENA	0136-3068-63	LBP-LEGASPI		\N
183	Sch-CIP	CHRISTOPHER GRAJO HALNIN	0237-0934-37	LBP-WEST AVE. QC BR		\N
184	Sch-CIP	CHRISTY MARIE VILLARINO ALSADO	4447-0004-70	LBP-BUKIDNON		\N
185	Sch-CIP	CHRIZTEL FAYE SUCILLA REYES	2817-0983-15	LBP-MANILA BR.		\N
186	Sch-CIP	CIARA ANGELI GALLARDO JUAN	0236-1358-88	LBP-WEST AVE.		\N
187	Sch-CIP	CINTH MIKAELA LIM CORDOVA	0376-5890-30	LBP-TAFT AVE.		\N
188	Sch-CIP	CLAIRE MALIBIRAN GACIAS	1827-3222-84	LBP-BICUTAN BRANCH		\N
189	Sch-CIP	CLAIRE SOLIS ZUBIA	1897-0896-76	LBP-LOS BANOS		\N
190	Sch-CIP	CLARE ANNE DIVINO CAPITO	1827-3622-35	LBP-BICUTAN BR.		\N
191	Sch-CIP	CLARISSA C. RIVERA	1827-0030-30	LBP-BICUTAN		\N
192	Sch-CIP	CLEENDY U. LAGUNZAD	1737-0317-95	LBP-TACLOBAN BR.		\N
193	Sch-CIP	COLA JANE ILIGAN BAGUIO	0167-1749-57	LBP-DAVAO BRANCH		\N
194	Sch-CIP	CONCESA T. CORTEZ	1827-0293-07	LBP-BICUTAN		\N
195	Sch-CIP	CONELISA F. NAVALES	1505-0311-10	LBP-TAGAYTAY, CAVITE		\N
196	Sch-CIP	CONNIE M. ROA	1827-0918-27	LBP-BICUTAN		\N
197	Sch-CIP	CORAZON VALINO RODRIGUEZ	1987-2092-04	LBP-QUIPO BRANCH		\N
198	Sch-CIP	CORNELIO JR VILORIA LOYOLA	1827-5190-96	LBP-BICUTAN		\N
199	Sch-CIP	CRIS REVEN LUSTRE GIBAGA	0237-1953-02	LBP-WEST AVE. BR.		\N
200	Sch-CIP	CRISELDA TIAMSIM BAUTISTA	3837-0156-25	LBP-LAGUNA		\N
201	Sch-CIP	CRISLINE MAE C. ALHAMBRA	1476-1944-46	LBP-DAVAO BRANCH		\N
202	Sch-CIP	CRISTOPHER C. BAUZON	1827-3621-70	LBP-BICUTAN		\N
203	Sch-CIP	CYNTHIA MAITIM BIHIS	1827-3621-89	LBP-BICUTAN		\N
204	Sch-CIP	CYNTHIA ROMERO PALTUOB	0707-0073-89	LBP-QUEZON CITY		\N
205	Sch-CIP	CYNTHIA VASQUEZ ALMAZAN	1897-0871-00	LBP-LOS BANOS		\N
206	Sch-CIP	CYRA GAIL PAMBID FERNANDEZ	1896-2270-80	LPB-LOS BANOS		\N
207	Sch-CIP	CYRIL JOHN ARCIAGA DOMINGO	0206-2143-17	LBP-SAN FERNANDO 		\N
208	Sch-CIP	CYRILL SARMIENTO ESTIMADO	1897-1476-09	LBP-UP LOS BA?OS		\N
209	Sch-CIP	CZARINA ANNE ESPINO DE MESA	1827-5518-28	LBP-BICUTAN		\N
210	Sch-CIP	DALE ANN PASCO ACAL	0326-4168-00	LBP-ILIGAN CITY		\N
211	Sch-CIP	DALISAY ESPIRITU CABRAL	1896-2852-85	LBP-LOS BANOS		\N
212	Sch-CIP	DANE ARCHIBALD G. BALANON	1827-3621-11	LBP-BICUTAN		\N
213	Sch-CIP	DANIEL R. SANSON	3236-1342-60	LBP-ILIGAN CITY		\N
214	Sch-CIP	DANIELA CARLA SOTELO DELA CRUZ	3777-0051-29	LBP-SAN FERNANDO 		\N
215	Sch-CIP	DANTE QUINA BAJET	0237-1202-30	LBP-WEST AVE. BR.		\N
216	Sch-CIP	DARLYN DENISE POLLENTES PRUEBAS	1926-1716-03	LBP-GUIMARAS BR.		\N
217	Sch-CIP	DARYL ANNE BETE VARELA	1716-1048-81	LBP-CDO BRANCH		\N
218	Sch-CIP	DARYL MENDOZA MAGPANTAY	0307-0773-61	LBP-BATANGAS CITY		\N
219	Sch-CIP	DARYL QUEBRAR GRANARIO	3077-0740-81	LBP-QUEZON CITY		\N
220	Sch-CIP	DARYNNE ARIANA MORTEL SOLIDUM	3076-1025-10	LBP-UP DILIMAN		\N
221	Sch-CIP	DAVE P. BRIONES	1827-3215-63	LBP-BICUTAN		\N
222	Sch-CIP	DAVISON TORRES BALDOS	0237-1306-34	LBP-WEST AVE. 		\N
223	Sch-CIP	DAYUTH AN	1827-5166-82	LBP-BICUTAN		\N
224	Sch-CIP	DELIA P. CASASIS	2087-0279-80	LBP-CAMARINES SUR		\N
225	Sch-CIP	DEN WHILREX ROSARDA GARCIA	0017-3164-94	LBP-INTRAMUROS		\N
226	Sch-CIP	DENIS D. AQUINO	0237-0926-60	LBP-WEST AVE.		\N
227	Sch-CIP	DENISSE ABBIE A. CABALLES	1827-3408-43	LBP-BICUTAN		\N
228	Sch-CIP	DENNIESE CASIM SY	2816-2836-40	LBP-FTI BRANCH		\N
229	Sch-CIP	DENNIS A. JUABOT	1736-2128-42	LBP-TACLOBAN 		\N
230	Sch-CIP	DENNIS BRUCE ARDINA LERION	0186-4817-80	LBP-TACLOBAN		\N
231	Sch-CIP	DENNIS T. LEYSON	3077-0267-45	LBP -QUEZON CITY		\N
232	Sch-CIP	DESAMARIE ANTONETTE P. FERNANDEZ	1896-2471-70	LBP-LOS BANOS		\N
233	Sch-CIP	DHALLY ACENAS ILISAN	0347-0929-75	LBP-TAGUM BR.		\N
234	Sch-CIP	DHENBER CASTIL LUSANTA	3577-0484-78	LBP-BAYBAY LEYTE BR.		\N
235	Sch-CIP	DIANA CECILIA Z. ESTRELLA	3777-0120-28	LBP-SAN FERNANDO BR.		\N
236	Sch-CIP	DIANA CORPUZ CASTILLO	2966-0854-39	LBP-MU?OZ,NUEVA ECIJA BR.		\N
237	Sch-CIP	DIANA ROSE PALINES CABELLO	1897-0994-00	LBP-LOS BANOS		\N
238	Sch-CIP	DIANE MARIE C. BERNARDO	1826-2359-73	LBP-BICUTAN		\N
239	Sch-CIP	DIANNE A. DAVID	1047-0000-2632	CHINABANK-TRINOMA		\N
240	Sch-CIP	DINAH LIZZA M. GUTIERREZ	0237-0951-70	LBP-Q.C. 		\N
241	Sch-CIP	DIOVEN DELOS REYES CARDINAS	2176-2543-54	LBP-CALBAYOG BR.		\N
242	Sch-CIP	DIVINE RHEA JASARENO CERUMA	1826-2185-99	LBP-BICUTAN BR.		\N
243	Sch-CIP	DIVORAH VINLUAN AGUILA	1827-3213-50	LBP-BICUTAN		\N
244	Sch-CIP	DJOWEL RECTO V. MONTEFALCON	0237-1837-89	LBP-WEST AVE. BR.		\N
246	Sch-CIP	DONA ROSE C. LAYUSA	1827-3656-41	LBP-BICUTAN		\N
247	Sch-CIP	DONAH JANE C. LUSANTA	1897-1283-88	LBP-LOS BANOS		\N
248	Sch-CIP	DONNA C. AGUILAR	1827-1946-18	LBP-BICUTAN		\N
249	Sch-CIP	DORALYN SARRIA DALISAY	2326-2531-06	LBP-ILOILO CITY BR.		\N
250	Sch-CIP	DORINA MARIE ELUMBARING YTANG	0326-2458-95	LBP-ILIGAN CITY 		\N
251	Sch-CIP	DUBHE JOY SUAAN CARMEN	0327-1021-41	LBP-ILIGAN CITY		\N
252	Sch-CIP	EARL JERALD FADRIQUELA CANSINO	3077-1544-92	LBP-DILIMAN BR.		\N
3499	\N	SE3	\N	\N	\N	\N
3500	\N	BTR FIDELITY FUND	\N	\N	\N	\N
253	Sch-CIP	EDELYN ABARCA BAUTISTA	0796-2615-87	LBP-QUIPO BRANCH		\N
254	Sch-CIP	EDEN V. EVANGELISTA	1987-1287-86	LBP-AROCEROS, MANILA		\N
255	Sch-CIP	EDGAR ALAN DONASCO	0327-0010-60	LBP-ILIGAN CITY		\N
256	Sch-CIP	EDGARDO P. CATORCE JR.	1826-0493-98	LBP-BICUTAN		\N
257	Sch-CIP	EDILBERTO LORION PARADELA	2407-0730-64	LBP-BANILAD CEBU		\N
258	Sch-CIP	EDMAR P. CASA	1827-3807-99	LBP-BICUTAN		\N
259	Sch-CIP	EDRALYN  FERNANDEZ  BUSQUIT	1827-3429-86	LBP-BICUTAN		\N
260	Sch-CIP	EDRIC ANCEL PASTRANO DUENAS	0036-5740-62	LBP-ILOILO CITY BR.		\N
261	Sch-CIP	EDUARDO O. MANGAOANG	0956-0681-50	LBP-ORMOC CITY		\N
262	Sch-CIP	EDWARD PAUL S. MARASIGAN	1897-0941-90	LBP-LOS BANOS		\N
263	Sch-CIP	EDWARD VINCENT  J. MAGTIBAY	1827-3222-68	LBP-BICUTAN		\N
264	Sch-CIP	EDWIN CRISOSTOMO VILLAR	1897-0291-34	LBP-UP LOS BA?OS BR		\N
265	Sch-CIP	EDWIN L DEL ROSARIO	0237-1713-90	LBP-WEST AVE. BR.		\N
266	Sch-CIP	EDWIN MIGUEL SARATAN ANADON	3077-0951-00	LBP-UP DILIMAN		\N
267	Sch-CIP	EILEEN M. REDERA	1896-0115-84	LBP-LOS BANOS		\N
268	Sch-CIP	EL VIC ROCELLO MADRIGAL	1897-1530-80	LBP-LOS BANOS		\N
269	Sch-CIP	ELAICA PAGAO GADOR	0347-1709-33	LBP-DAVAO CITY BR.		\N
270	Sch-CIP	ELEONOR FABON DUQUE	0707-0734-03	LBP-QUEZON CITY		\N
271	Sch-CIP	ELLA U. DE LUNA	1827-3421-02	LBP-BICUTAN		\N
272	Sch-CIP	ELLVIN W. COLLANTES	1827-3439-90	LBP-BICUTAN		\N
273	Sch-CIP	ELMER C. PERAMO	0707-0743-61	LBP-QUEZON CITY CIRCLE BR.		\N
274	Sch-CIP	ELVIRG FIGURA SOLANA	2407-0728-74	LBP-BANILAD, CEBU CITY BR.		\N
275	Sch-CIP	ELYSON KEITH P. ENCARNACION	1827-3915-88	LBP-BICUTAN BRANCH		\N
276	Sch-CIP	EMELITA ASUNCION S. DIMAPILIS	1827-0350-21	LBP-BICUTAN		\N
277	Sch-CIP	EMELYN A. MAGLAHUS	1737-0317-87	LBP-TACLOBAN		\N
278	Sch-CIP	EMERSON BRYAN D DILLA	1897-1214-48	LBP-LOS BA?OS 		\N
279	Sch-CIP	EMIEL PRISCO NARANJA DISCAR	3916-0432-60	LBP-GUIUAN		\N
280	Sch-CIP	EMILIANO III MAYRENA SANTOS	1827-5080-27	LBP-BICUTAN BR.		\N
281	Sch-CIP	EMILIE EUREKA PANISALES SALVADOR	0037-2857-49	LBP-ILOILO BR.		\N
282	Sch-CIP	EMMANUEL DIORESMA MONTEROLA	0327-0835-70	LBP-ILIGAN CITY		\N
283	Sch-CIP	EMMANUEL S. DELLORO JR.	3056-0959-50	LBP-ILOILO CITY		\N
284	Sch-CIP	ENCARNACION EMILIA S. YAP	3057-0031-70	LBP-MIAG-AO, ILOILO BR.		\N
285	Sch-CIP	ENRICO MANITE CABUTAJE 	1827-4868-21	LBP-BICUTAN		\N
286	Sch-CIP	ENRYKIE BELESARIO FORTAJADA	1897-1459-40	LBP-LOS BANOS		\N
287	Sch-CIP	ERA JOY URETA DE LOS REYES	0037-2770-88	LBP-ILOILO CITY		\N
288	Sch-CIP	ERIC ANTHONY C. ARANCES	3077-0437-80	LBP-QUEZON CITY		\N
289	Sch-CIP	ERIC JOHN DATOY FLORIDA	4286-0408-59	LBP-CAGAYAN DE ORO CITY		\N
290	Sch-CIP	ERIC PAUL DIZON PERALTA	1897-1194-00	LBP-LOS BA?OS BR.		\N
291	Sch-CIP	ERIC RAILEY DULAY MESA	0497-1287-14	LBP-MARCOS HIGHWAY BR.		\N
292	Sch-CIP	ERICA AMBAL GARCIA	3077-1606-20	LBP-UP DILIMAN BR.		\N
293	Sch-CIP	ERICKSON E. FAJICULAY	1827-1764-90	LBP-BICUTAN		\N
294	Sch-CIP	ERIKA JOZIELLE MORFON MERZA	0707-2573-42	LBP-QC CIRCLE BR.		\N
295	Sch-CIP	ERIN JUDE LUMIBAO DELA CRUZ	0237-1263-43	LBP-WEST AVE.		\N
296	Sch-CIP	ERISH TORIO DARANCIANG	1827-4965-33	LBP-BICUTAN BRANCH		\N
297	Sch-CIP	ERVIN LEMSIC LOPEZ	1827-3441-80	LBP-BICUTAN		\N
298	Sch-CIP	ERWIN DON R. RACASA	1827-1770-20	LBP-BICUTAN		\N
299	Sch-CIP	ERWIN VILLANO ARIOLA	1826-2197-90	LBP-BICUTAN		\N
300	Sch-CIP	ESMERANDO RIVERA ESCOTO	3077-0961-40	LBP-UP DILIMAN		\N
301	Sch-CIP	EUGENIO G. AFALLA JR.	1897-1077-20	LBP-LOS BANOS		\N
302	Sch-CIP	EUNICE RAIZA REPIZO PANAGSAGAN	0037-1895-88	LBP-ILOILO CITY		\N
303	Sch-CIP	EUNICE TAN ESTRELLA	5706-0120-11	LBP-CALDERON, BAGUIO CITY BR.		\N
304	Sch-CIP	EVA A. GOYENA	1827-3220-55	LBP-BICUTAN		\N
305	Sch-CIP	EVANGELINE PRONUEVO BAUTISTA	1466-0576-45	LBP-KATIPUNAN		\N
306	Sch-CIP	EVELYN B. TABLANTE	1737-0074-52	LBP-TACLOBAN		\N
307	Sch-CIP	EVELYN C. CREENCIA	0327-0080-64	LBP-ILIGAN CITY		\N
308	Sch-CIP	EVELYN SAMONTE DELLOMAS	1725-1270-02	LBP-QUEZON CITY HALL		\N
309	Sch-CIP	FEBY E. CARMEN	3057-0171-03	LBP-ILOILO CITY		\N
310	Sch-CIP	FEDERICO E. DEL POZO JR.	1827-3191-86	LBP-BICUTAN		\N
311	Sch-CIP	FELINO P. LANSIGAN	1896-2461-82	LBP-LAGUNA		\N
312	Sch-CIP	FELIONA B. BAUTISTA	1897-1125-54	LBP-LOS BANOS		\N
313	Sch-CIP	FELIX S. TABANAO JR	0157-1511-77	LBP-CDO BRANCH		\N
314	Sch-CIP	FERDINAND DOCTOR MIRA	3076-1064-00	LBP-UP DILIMAN BR.		\N
315	Sch-CIP	FERISSA BUENSALIDA ABLOLA	2516-0372-56	LBP-NAIA BRANCH		\N
316	Sch-CIP	FEZOIL LUZ C. DECENA	1897-0292-82	LBP-UP LOS BA?OS		\N
317	Sch-CIP	FLORANTE A. CATALAN	1827-0269-52	LBP-BICUTAN		\N
318	Sch-CIP	FLORDELINO C. ORTEZA JR.	0407-0196-60	LBP-VIGAN		\N
319	Sch-CIP	FLORDELIZA E. FERMIN	0237-0958-55	LBP-WEST AVE. QC		\N
320	Sch-CIP	FLORENCE DELA CRUZ RAMIREZ	2407-0690-40	LBP-BANILAD CEBU		\N
321	Sch-CIP	FLORENTINO L. QUINONES JR.	1737-0075-17	LBP-TACLOBAN CITY 		\N
323	Sch-CIP	FRAMELIA V. ANONAS	1826-0397-32	LBP-BICUTAN		\N
324	Sch-CIP	FRANCES ISABELLE B. JACALAN	1827-1689-60	LBP-BICUTAN		\N
325	Sch-CIP	FRANCES POLA SANTOS ARIAS	1827-4956-69	LBP-BICUTAN		\N
326	Sch-CIP	FRANCIS AMIEL ALANO RUBIO	0597-2342-36	LBP-PADRE FAURA BR.		\N
327	Sch-CIP	FRANCIS JOSEPH VIOLA FERNANDO SERINA	0577-2137-71	LBP-QC		\N
328	Sch-CIP	FRANCIS MURILLO EMRALINO	0307-1363-84	LBP-BATANGAS CITY		\N
329	Sch-CIP	FRANCIS S. LEGARIO	0036-4283-84	LBP-ILOILO CITY		\N
330	Sch-CIP	FRANKIE LYCURGUS DEPAUDHON AVORQUE	1896-3232-76	LBP-LOS BA?OS		\N
331	Sch-CIP	FRED V. GIMENEZ	1086-0270-00	LBP-BASCO BATANES BR		\N
332	Sch-CIP	FREDERICK C. HILA	0237-1588-73	LBP-WEST AVE.		\N
333	Sch-CIP	FREDERICK CORONADO BUENO	1827-3914-05	LBP-BICUTAN		\N
334	Sch-CIP	GARRY A. DIOPOL	1827-3809-18	LBP-BICUTAN		\N
335	Sch-CIP	GARRY TAYONA BALINON	0037-1890-06	LBP-ILOILO BR		\N
336	Sch-CIP	GAY D. DEFIESTA	3057-0029-71	LBP-MIAG-AO		\N
337	Sch-CIP	GAY JANE PEREZ	1467-0222-41	LBP-KATIPUNAN		\N
338	Sch-CIP	GAY JANE PEREZ PEREZ	3077-0409-26	LBP-UP DILIMAN		\N
339	Sch-CIP	GELITO  JOSEPH M. SIKAT	1827-3920-70	LBP-BICUTAN		\N
340	Sch-CIP	GENESIS C. ALBARICO	1827-3412-70	LBP-BICUTAN		\N
341	Sch-CIP	GENEVIC ROSBERO OBRERO	1897-1728-32	LBP-UPLB BR.		\N
342	Sch-CIP	GENNIE ALMADRONES ORDONA	1827-0331-77	LBP-BICUTAN		\N
343	Sch-CIP	GENNY G. BANDOLES	1897-0349-60	LBP-LOS BANOS		\N
344	Sch-CIP	GEOFFREY RAY LAVISTE NABLO	3077-1341-65	LBP-UP DILIMAN		\N
345	Sch-CIP	GEORGE ROBERT III E. VALENCIA	1827-3420-30	LBP-BICUTAN		\N
346	Sch-CIP	GEOVERT JOHN DOYDORA LABITA	0327-0835-11	LBP-ILIGAN CITY		\N
347	Sch-CIP	GERALD ANTHONY AMADOR JAEN	1827-5665-58	LBP-BICUTAN BRANCH		\N
348	Sch-CIP	GERALD PINERO DICEN	0236-1228-59	LBP-WEST AVE.		\N
349	Sch-CIP	GERALDO S. PETILLA	1827-0976-12	LBP-BICUTAN		\N
350	Sch-CIP	GERRY CUSIT GOZE	0865-0281-21	LBP-BUGUEY, CAGAYAN BR.		\N
351	Sch-CIP	GERRYLOU SWEET MOJICA PIA	0157-0381-50	LBP-CAGAYAN DE ORO CITY		\N
352	Sch-CIP	GHARRY M. BATHAN	1827-4601-48	LBP-BICUTAN		\N
353	Sch-CIP	GIL P. DE LUNA	0436-0864-58	LBP-SOLANO BRANCH		\N
354	Sch-CIP	GILBERT MADANGUIT  PORALAN JR. 	1827-5342-81	LBP-BICUTAN		\N
355	Sch-CIP	GILBERTO T. DIANO	0237-1568-46	LBP-WEST AVE.		\N
356	Sch-CIP	GILCHOR PERMISON CUBILLO	1506-1724-69	LBP-TAGAYTAY, CAVITE BR.		\N
357	Sch-CIP	GILDA MELANIE OGAYA BABARAN	1896-3264-37	LBP-LOS BA?OS		\N
358	Sch-CIP	GINA B. ABRERA	0237-0925-54	LBP-WEST AVE.		\N
359	Sch-CIP	GIRLIE EUNICE POLICARPIO LOPEZ	0237-1864-43	LBP-WEST AVE.		\N
360	Sch-CIP	GIRLIE O. DIMANARIG	0707-0660-75	LBP-QUEZON CITY		\N
361	Sch-CIP	GISELLE EVE SILADAN	2746-2119-56	LBP-ESTOSAN, COTABATO CITY BR.		\N
362	Sch-CIP	GLECEL RUBIO ECAT	1827-4078-40	LBP-BICUTAN		\N
363	Sch-CIP	GLEEZA LARIBA MANULAT	1896-3095-24	LBP-LOS BANOS		\N
364	Sch-CIP	GLEN MELVIN P. GIRONELLA	1827-1688-62	LBP-BICUTAN		\N
365	Sch-CIP	GLENDA DORCAS T. SACBIBIT	1827-0030-65	LBP-BICUTAN		\N
366	Sch-CIP	GLENDA PARRA FULE	1897-0996-20	LBP-LOS BANOS		\N
367	Sch-CIP	GLENN BORJA GREGORIO OR MYLA BEATRIZ AUDIJE GREGORIO	1896-2837-11	LBP-UP LOS BA?OS BR		\N
368	Sch-CIP	GLORIAMARIS LOY CARAOS	0237-0936-58	LBP-WEST AVE.		\N
369	Sch-CIP	GMELINA JOY SINA DELA PENA	0436-3385-38	LBP-BAGUIO CITY BRANCH		\N
370	Sch-CIP	GRACESON D. CUYASEN	3556-0246-09	LBP-NAGUILIAN		\N
371	Sch-CIP	GRETCHEN MAE BUGAAY EMPUESTO	0366-4038-92	LBP-BUTUAN BRANCH		\N
372	Sch-CIP	GUADA R. DIMAYA	1827-3658-97	LBP-BICUTAN		\N
373	Sch-CIP	GUILLERMO III QUESADA TABIOS	3077-0354-77	LBP-UP DILIMAN BR.		\N
374	Sch-CIP	HANSI GUINILING DINUMLA	1377-0572-40	LBP-LA TRINIDAD BAGUIO		\N
375	Sch-CIP	HARMIE NAVALTA LUYAO	0327-1022-57	LBP-ILIGAN BRANCH		\N
376	Sch-CIP	HAROLD P. MEDIODIA	0036-1393-90	LBP-ILOILO CITY		\N
377	Sch-CIP	HAROLD RAY RUIZ LANDINGIN 	2966-0567-06	LBP-NUEVA ECIJA		\N
378	Sch-CIP	HAROLD V. GALLO	0436-0388-01	LBP-SOLANO		\N
379	Sch-CIP	HAYDEE M. SOLOMON	0237-0944-50	LBP-WEST AVE.		\N
380	Sch-CIP	HAZEL T. LAT	1897-1074-88	LBP		\N
381	Sch-CIP	HAZIEL MAY C. NATORILLA	1827-4136-70	LBP-BICUTAN		\N
382	Sch-CIP	HEBER A. MATOZA	1737-0318-09	LBP-TACLOBAN CITY LEYTE		\N
383	Sch-CIP	HELEN SORIANO VILLANUEVA	1826-2070-07	LBP-BICUTAN		\N
384	Sch-CIP	HENRY J. RAMOS	3077-0274-74	LBP-UP DILIMAN		\N
385	Sch-CIP	HERNA VALENCIA COLOQUIO	2566-1505-25	LBP-DAVAO BRANCH		\N
386	Sch-CIP	HERNANDO S. SALAPARE III	2477-0247-61	LBP-MAKATI		\N
387	Sch-CIP	HERSCHEL APAT GUTIERREZ	1266-4457-30	LBP-MARAWI CITY, LANAO DEL SUR BR.		\N
388	Sch-CIP	HILDA C. MONTANO	0031-5414-76	LBP -ILOILO		\N
389	Sch-CIP	HSU MYAT NOE HNIN	1897-1819-63	LBP-UP LOS BANOS BR		\N
392	Sch-CIP	IAN JUNE L. GARCES	1466-0563-55	LBP-KATIPUNAN		\N
393	Sch-CIP	IRENE ALIS BRILLO	1827-4957-58	LBP-BICUTAN		\N
394	Sch-CIP	IRISH GUIMBA MILANTE	1827-5345-59	LBP-BICUTAN BR.		\N
395	Sch-CIP	ISABELITA M. PAMPOSA	1737-0071-50	LBP-TACLOBAN CITY		\N
396	Sch-CIP	IVY LAPETAJI LIBRANDO	0326-2475-29	LBP-ILIGAN CITY		\N
397	Sch-CIP	JACOB ANDERSON C. SANCHEZ	1977-0259-03	LBP-DAU, PAMPANGA		\N
398	Sch-CIP	JACQUELINE AGARPAO PARIS	3987-0128-02	LBP-PEZA TAGUIG BRANCH		\N
399	Sch-CIP	JACUS SABADO NACIS	1827-3223-73	LBP-BICUTAN		\N
400	Sch-CIP	JADIES CALAIS MIEL GUINGAB ALVARO	1497-0676-73	LBP-NOVALICHES BR.		\N
401	Sch-CIP	JAEVIER ANGCAO VILLANUEVA	2317-1113-15	LBP-MANDALUYONG CITY HALL		\N
402	Sch-CIP	JAIDEE PUERTO AGNE	1827-3731-72	LBP-BICUTAN		\N
403	Sch-CIP	JAIME CARLOS MONTOYA	1827-0468-13	LBP-BICUTAN BRANCH		\N
404	Sch-CIP	JAIME M. BORDALES JR.	0707-1154-40	LBP-QUEZON CITY CIRCLE BR.		\N
405	Sch-CIP	JAINITO-ROI CARDENAS ATIS	0597-1094-74	LBP-TAFT AVE. BR.		\N
406	Sch-CIP	JAMES DAVID S. ALCANTARA	1826-1948-35	LBP-BICUTAN		\N
407	Sch-CIP	JAMES N. VANCE	1827-1462-65	LBP-BICUTAN		\N
408	Sch-CIP	JAN GRENECHAUX V BOHOL	0367-2124-62	LBP-BUTUAN CITY BR.		\N
409	Sch-CIP	JAN IVY L. BAUSA	0707-0710-28	LBP-Q.C. BRANCH		\N
410	Sch-CIP	JAN MARTIN SOLIS GONZALES	0227-1231-68	LBP-BAGUIO CITY BR.		\N
411	Sch-CIP	JANE DURANA PALACIO	1467-0758-76	LBP-KATIPUNAN BRANCH		\N
412	Sch-CIP	JAN-ERVIN CUDIA GUERRERO	1827-4875-18	LBP-BICUTAN		\N
413	Sch-CIP	JANETH CRUZADA VIDAL	1827-1952-15	LBP-BICUTAN		\N
414	Sch-CIP	JANETH M. FUENTES	1736-1970-10	LBP-TACLOBAN		\N
415	Sch-CIP	JANICE IRENE FAUSTINO  BERRIS	1897-0932-66	LBP-UPLB BRANCH		\N
416	Sch-CIP	JANICE MARIE J. LAGRIMAS	0597-0589-34	LBP-MANILA		\N
417	Sch-CIP	JANICE WIJANGCO CORNEL	1827-6457-09	LBP-BICUTAN BR.		\N
418	Sch-CIP	JANSEN PAOLO S. HERNANDEZ	1826-1815-63	LBP-BICUTAN		\N
419	Sch-CIP	JAREL ELGIN MENDOZA TOLENTINO	3076-1157-79	LBP-UP DILIMAN		\N
420	Sch-CIP	JARO SON MAQUED LACERNA	0707-0793-71	LBP-PHILCOA BRANCH		\N
421	Sch-CIP	JASMIN LEE DONAAL	1377-0575-69	LBP-LA TRINIDAD BAGUIO		\N
422	Sch-CIP	JASPER KIT VILLAR TANGAL	3446-2031-41	LBP-BAYUGAN CITY BR.		\N
423	Sch-CIP	JASPER TUTONG ARBOIS	4216-0443-77	LBP-MISAMIS OCCIDENTAL		\N
424	Sch-CIP	JASTINE MAE JULITA GALANG	1896-4048-61	LBP-LOS BANOS		\N
426	Sch-CIP	JAY-ANNE BAGA BULAUAN	1377-0622-28	LBP-BAGUIO CITY		\N
3497	\N	PHILIPPINE HEALTH INSURANCE CORP.	\N	\N	\N	\N
427	Sch-CIP	JAYSON MORALES SALIGAO	3966-0295-60	LBP-PASEO DE SANTA ROSA		\N
428	Sch-CIP	JAYSON OCAMPO FUMERA	1896-2717-05	LBP-LOS BANOS		\N
429	Sch-CIP	JAYSON P. ROGELIO	1827-4614-62	LBP-BICUTAN		\N
430	Sch-CIP	JAYVEE ABLANA SACO	0307-1547-90	LBP-BATANGAS CITY		\N
431	Sch-CIP	JEAN EDESSA D. AVILA	0037-1889-99	LBP-ILOILO CITY		\N
432	Sch-CIP	JEAN GAY O. RAGUB	1737-0375-80	LBP-TACLOBAN		\N
433	Sch-CIP	JED ARIES F. CASTRO	1587-0877-20	LBP-CLARK 		\N
434	Sch-CIP	JEDI JOY BELMONTE MAHILUM	3577-0459-32	LBP-BAYBAY CITY BR.		\N
435	Sch-CIP	JEFFERSON JAVIER RAPISURA	1896-3210-79	LBP-LOS BANOS		\N
436	Sch-CIP	JEJOMAR ORTIZ BONGAT	0237-1875-39	LBP-WEST AVENUE BRANCH		\N
437	Sch-CIP	JELLY N. ORTIZ	1827-0323-67	LBP-BICUTAN		\N
438	Sch-CIP	JENELYN PORYALLOSTE ROMBAON	0707-2035-95	LBP-QUEZON CITY CIRCLE BR.		\N
439	Sch-CIP	JENIFFER PASCUAL ARCEBUCHE	1897-1334-89	LBP-LOS BANOS		\N
440	Sch-CIP	JENNIFER CAPISTRANO PUNTANAR	1897-1192-14	LBP-UPLB BRANCH		\N
441	Sch-CIP	JENNIFER DULDILAO QUEDDENG	3217-0596-73	LBP-ELLIPTICAL RD.,DILIMAN QC		\N
442	Sch-CIP	JENNIFER HIDALGO MORO	1086-0062-74	LBP-BASCO BATANES BR		\N
443	Sch-CIP	JENNIFER M. CONDA	1897-0941-65	LBP-LOS BANOS		\N
444	Sch-CIP	JENNILOU CORTES BALES	0956-4474-45	LBP-ORMOC CITY		\N
445	Sch-CIP	JENNILOU GEPITULAN CORTES	3576-0613-65	LBP-LEYTE BRANCH		\N
446	Sch-CIP	JENNY SENORA BRONBURAC	1897-0985-43	LBP-UP LOS BA?OS		\N
447	Sch-CIP	JENSHIAM E. BALGUA	0436-0678-01	LBP-SOLANO, NUEVA VIZCAYA		\N
448	Sch-CIP	JERALD BALOLOY BONGALOS	0237-1961-39	LBP-WEST AVE. QC BR		\N
449	Sch-CIP	JERAMEL FUENTES PAREJA	1827-3702-54	LBP-BICUTAN		\N
450	Sch-CIP	JERICKSON MANUEL DELA CRUZ	3216-1131-00	LBP-QUEZON CITY		\N
451	Sch-CIP	JERICO B. BACANI	0226-3724-15	LBP-BAGUIO BRANCH		\N
452	Sch-CIP	JERICO M. CONSOLACION	0327-0889-12	LBP-ILIGAN CITY  BRANCH		\N
453	Sch-CIP	JERUSKHA CHRISTINE RUEDA ABELLA	2966-1778-48	LBP-MU?OZ,NUEVA ECIJA BR.		\N
454	Sch-CIP	JERWIN RIVERA VIANZON	3777-0180-42	LBP-SAN FERNANDO PAMPANGA		\N
455	Sch-CIP	JESS RICHARDSON ROBLES GONZALES	0417-0947-17	LBP-PADRE FAURA BR.		\N
456	Sch-CIP	JESSA ACALAIN PAYUSAN	0326-3808-14	LBP-ILIGAN CITY		\N
457	Sch-CIP	JESSALYN MARASIGAN PARCO	1896-2333-74	LBP-LOS BANOS		\N
458	Sch-CIP	JESSI CHRISTA REVILLA RUBIO	0707-1252-76	LBP-UP DILIMAN		\N
459	Sch-CIP	JESSICA LEJANO MORAL	1776-0629-83	LBP-BSP COMPLEX MABINI, MNL BR		\N
460	Sch-CIP	JESSICA MARIE R. SUERTE	1827-3930-68	LBP-BICUTAN		\N
461	Sch-CIP	JESSICA VIEN SANCHEZ MANDI	0557-1611-98	LBP-QUEZON CITY		\N
462	Sch-CIP	JESSIE O. SAMANIEGO	1827-0989-70	LBP-BICUTAN		\N
464	Sch-CIP	JESUSA ALMIRA NORBERTE DIMACULA	1607-1339-52	LBP-LIPA CITY BR.		\N
465	Sch-CIP	JEWEL C. DE PADUA	1827-4270-27	LBP-BICUTAN		\N
466	Sch-CIP	JHOANNA N. BOLENCIS	0037-2334-47	LBP-ILOILO CITY BR.		\N
467	Sch-CIP	JHOANNA R. MAGAT	0237-1069-97	LBP-WEST AVE.		\N
468	Sch-CIP	JHOVI ANN EMADEM DUQUIATAN	1827-5071-10	LBP-BICUTAN		\N
469	Sch-CIP	JHUD MIKHAIL ORTILLO  ABERILLA	3076-0753-94	LBP-UP DILIMAN BR.		\N
470	Sch-CIP	JHURDAN GAYASO PILAY	1377-1232-60	LBP-BAGUIO CITY BR.		\N
471	Sch-CIP	JILL MAEGAN BERMEJO PAMPLONA	0326-4328-57	LBP-BAGUIO CITY BR.		\N
472	Sch-CIP	JILLY BARIMBAO ESPINOSA	0326-3457-17	LBP-ILIGAN CITY		\N
473	Sch-CIP	JO ANN C. SY	1827-3814-69	LBP-BICUTAN		\N
474	Sch-CIP	JO JANE DAISOG ATOK	3577-0185-10	LBP-BAYBAY LEYTE BR.		\N
475	Sch-CIP	JOANA A. AMERICA	1827-3927-03	LBP-BICUTAN		\N
476	Sch-CIP	JOANNE DOMINGO CAGUIAT	4226-0191-50	LBP-NUEVA ECIJA BR.		\N
477	Sch-CIP	JOANNE KATHERINE R. BANAAG	0156-2459-33	LBP-CAGAYAN DE ORO CITY		\N
478	Sch-CIP	JOBRIELL CRUZ BALUYOT	3076-0901-80	LBP-UP DILIMAN		\N
479	Sch-CIP	JOE BROGADA POBLETE	1896-3895-44	LBP-LOS BANOS		\N
480	Sch-CIP	JOEBIT C. OCASLA	1827-0073-11	LBP-BICUTAN		\N
481	Sch-CIP	JOEIN L. LUCES	1827-4610-12	LBP-BICUTAN		\N
482	Sch-CIP	JOEL  PADILLA RIVADENEIRA	1897-0971-48	LBP-LOS BANOS		\N
483	Sch-CIP	JOEL OMAYA LEGASPI	2407-0729-63	LBP-BANILAD CEBU		\N
485	Sch-CIP	JOEYLYN HINGCO TERANIA	0037-2775-25	LBP-ILOILO BR		\N
486	Sch-CIP	JOHANNA A. BANGOY	1897-1125-46	LBP-LOS BA?OS BR.		\N
487	Sch-CIP	JOHANNA RACHELLE QUIAMBAO TUAZON	1827-3649-98	LBP-BICUTAN		\N
488	Sch-CIP	JOHN ADRIAN NACIONAL VILLANUEVA	3077-1239-37	LBP-UP DILIMAN BR.		\N
489	Sch-CIP	JOHN ALBERT PAROT LACHICA	1896-2627-65	LPB-LOS BANOS		\N
490	Sch-CIP	JOHN CARLO B. REYES	1827-2177-82	LBP-BICUTAN		\N
491	Sch-CIP	JOHN CARLO M. MALABAD	1827-1785-40	LBP-BICUTAN		\N
492	Sch-CIP	JOHN DARBY WILLY TAGUIAM	1897-1526-70	LPB-LOS BANOS		\N
493	Sch-CIP	JOHN DARYL BATAC WYSON	0237-1964-81	LBP-WEST BR.		\N
494	Sch-CIP	JOHN GLENN D. OCANA	1737-0082-11	LBP-LEYTE		\N
495	Sch-CIP	JOHN KENNETH T. MALILAY	1897-1347-28	LBP-LOS BANOS		\N
496	Sch-CIP	JOHN LEONARD RALLOS LABIDES	0237-1862-65	LBP-WEST BR.		\N
497	Sch-CIP	JOHN MAVERICK SAYABOC DE LEON	1896-5145-51	LBP-LOS BA?OS BR.		\N
498	Sch-CIP	JOHN NIKKO V. SALVILLA	3077-1343-86	LBP-UP DILIMAN		\N
499	Sch-CIP	JOHN PAUL ORTIZ BUSTILLO	0596-2104-73	LBP-MANILA		\N
500	Sch-CIP	JOHN PAULO  G. JOSE	1827-3917-07	LBP-BICUTAN		\N
501	Sch-CIP	JOHN RICHARD ERESO HIZON	3077-0001-69	LBP-UP DILIMAN BR.		\N
502	Sch-CIP	JOHN RICK DOLOR MANZANARES	0227-1231-41	LBP-BAGUIO CITY BR.		\N
503	Sch-CIP	JOHN ROBERT T. MENDOZA	0707-0695-38	LBP-PHILCOA BRANCH		\N
504	Sch-CIP	JOHNEL TERANTE LUMACAO	0167-2900-60	LBP-C.M. RECTO DAVAO CITY		\N
3490	Sch-CIP	RONIE BITUIN	\N	\N	\N	\N
505	Sch-CIP	JOJENE RENDON SANTILLAN 	0366-5305-09	LBP-BUTUAN BR.		\N
506	Sch-CIP	JOMAR CUISON STA ANA	1827-5168-87	LBP-BICUTAN		\N
507	Sch-CIP	JON URIEL GENESIS LAYOS	2486-1648-78	LBP-LOS BA?OS BRANCH		\N
508	Sch-CIP	JONA M. BERNAL	1827-4134-17	LBP-BICUTAN		\N
509	Sch-CIP	JONA MAY B. AGYAMOC	0227-0919-59	LBP-BAGUIO BRANCH		\N
510	Sch-CIP	JONAH JOY BASILISCO AQUINO	0327-1582-60	LBP-ILIGAN CITY		\N
511	Sch-CIP	JONATHAN ESPINOZA WONG	3077-1359-51	LBP-UP DILIMAN		\N
512	Sch-CIP	JONATHAN LLORCA CAINA	0597-1525-23	LBP-MANILA		\N
513	Sch-CIP	JOPETH MIRANDA RAMIS	1516-0704-51	LBP-MALACANANG 		\N
514	Sch-CIP	JOSE A. PERANO	3237-0060-45	LBP-ZAMBAONGA		\N
515	Sch-CIP	JOSE MARCO D. LATOSA	1827-3811-32	LBP-BICUTAN BRANCH		\N
516	Sch-CIP	JOSE MARI EQUINA ORTEGA	0167-1038-39	LBP-DAVAO CITY BR.		\N
517	Sch-CIP	JOSEPH E. MIRANDA	0137-1197-22	LBP-LEGASPI CITY		\N
518	Sch-CIP	JOSEPH EDNIE C SORIANO	1587-0876-81	LBP-PAMPANGA BRANCH		\N
519	Sch-CIP	JOSEPH JR S. TABADERO	0227-0921-22	LBP-BAGUIO BRANCH		\N
520	Sch-CIP	JOSEPH MARTIN Q. PAET	1897-1524-24	LBP-LOS BA?OS BR.		\N
521	Sch-CIP	JOSEPHINE BEJOC NOHAY	1957-0494-90	LBP-ZAMBOANGA		\N
522	Sch-CIP	JOSHUA PASGAR SALAZAR	1437-1811-59	LBP-TAYUMAN BR.		\N
523	Sch-CIP	JOVANNI CAIPAN CABANA	2616-2456-70	LBP-CANDELARIA BRANCH		\N
525	Sch-CIP	JUAN CARLO MALABANAN MANAS	1897-1562-76	LBP-UPLB BRANCH		\N
526	Sch-CIP	JUANITO P. JIMENEZ JR	1896-0737-76	LBP-LOS BANOS		\N
527	Sch-CIP	JUDIEL MALAGUENO MARIANO	1896-4985-21	LBP-LOS BANOS		\N
528	Sch-CIP	JULIA CRISTINA AGUTAYA MORATA	1466-0651-50	LBP-KATIPUNAN		\N
529	Sch-CIP	JULIE ANNE HONUNGAN BACULIO	3146-1919-40	LBP-CARMEN , CDO BR		\N
530	Sch-CIP	JULIENNE YAP OSDANA	0036-5740-38	LBP-ILOILO CITY BR.		\N
531	Sch-CIP	JULITA CLIMACO ROBLES	5277-0132-92	LBP-P. OCAMPO BR.		\N
532	Sch-CIP	JULIUS INCILLO JIMENEZ	2136-1453-31	LBP-PAOAY ILOCOS NORTE		\N
534	Sch-CIP	JUNEL LALIS SOLIVA	3466-2198-93	LBP-SAN JOSE DEL MONTE BR.		\N
535	Sch-CIP	JUNELYN LOUVENA B. RUIZ	0156-0604-70	LBP-CAPISTRANO, CDO BR		\N
536	Sch-CIP	JUSTIN I. ALVAREZ	0237-1787-42	LBP-WEST AVE. QC BR		\N
537	Sch-CIP	JUSTINE PERRY TOMINES DOMINGO	3076-0935-70	LBP-ILOILO CITY		\N
538	Sch-CIP	KAREN B. BURDEOS	0366-4900-51	LBP-BUTUAN CITY BR.		\N
539	Sch-CIP	KAREN DE GUZMAN GARCIA	0626-1293-90	LBP-QUEZON CITY		\N
540	Sch-CIP	KAREN PATAYAN NOCUM	1606-1525-70	LBP-BATANGAS CITY		\N
541	Sch-CIP	KAREN SORIANO YANGO	3777-0096-71	LBP-WEST SAN FERNANDO BR.		\N
542	Sch-CIP	KAREN STA. MARIA CRUZ	1827-1947-07	LBP-BICUTAN		\N
543	Sch-CIP	KARLA CRISTINA PAGAO CRUZ	1646-1069-70	LBP-PASIG		\N
544	Sch-CIP	KARLEEN ISRAEL GARCIA	0326-3126-73	LBP-ILIGAN CITY		\N
545	Sch-CIP	KARTER ORCULLO RONQUILLO	0367-1815-91	LBP-BUTUAN CITY BR.		\N
546	Sch-CIP	KATHERINE APRILLE S. DULA	1826-1750-24	LBP-BICUTAN		\N
547	Sch-CIP	KATHERINE JOY DEL MUNDO CAIMBRE	3457-1517-39	LBP-MAKATI BR.		\N
548	Sch-CIP	KATHLEEN JOY BISENIO BITAO	1896-2949-00	LBP-LOS BANOS		\N
549	Sch-CIP	KATHLYN G. BANAYAG	3576-0606-79	LBP-BAYBAY LEYTE		\N
550	Sch-CIP	KATHLYN KAI H. NEGADO	1827-3435-08	LBP-BICUTAN		\N
551	Sch-CIP	KATRINA KAE SALUNSON PRINCIPE	1897-0991-75	LBP-LOS BA?OS		\N
552	Sch-CIP	KATRINA MARIE VIRAY MANANGHAYA	1897-1012-26	LBP-LOS BANOS		\N
553	Sch-CIP	KAY THI KHAING	1896-3968-34	LBP-LOS BA?OS		\N
554	Sch-CIP	KEITH BISENIO BITAO	1897-0951-37	LBP-LOS BANOS		\N
555	Sch-CIP	KEITH IVY NAVARRO AGGASID	0436-1976-67	LBP-SOLANO, NUEVA VIZCAYA		\N
556	Sch-CIP	KEITH PAOLO ANTIPOLO BUENAVENTURA	1156-1143-80	LBP-BOAC BRANCH		\N
557	Sch-CIP	KEITHLYN SARAH BIBIT BERNARDINO	0037-1890-14	LBP-IZNART ST., ILOILO CITY BR.		\N
558	Sch-CIP	KEN JOSEPH ERASMO CLEMENTE	3726-0407-60	LBP- ESPA?A		\N
559	Sch-CIP	KENNETH DIGAO BARROGA	2567-0460-12	LBP-DAVAO BRANCH		\N
560	Sch-CIP	KEVIN CHRISTIAN VERCELES OLARTE	3077-1356-41	LBP-UP DILIMAN		\N
561	Sch-CIP	KEVIN FERNANDEZ YAPTENCO	1897-0265-42	LBP-UP LOS BA?OS		\N
563	Sch-CIP	KHAMSOY SIPHENGPHET	1827-5694-25	LBP-BICUTAN		\N
564	Sch-CIP	KHIN HNIN YU	1896-3566-97	LBP-LOS BANOS		\N
565	Sch-CIP	KHIN LAI OO	1897-1807-20	LBP-LOS BANOS		\N
566	Sch-CIP	KHIN THAN THIN	1827-5520-42	LBP-BICUTAN		\N
567	Sch-CIP	KHRIS JUNE LANAJA CALLANO	3397-0356-02	LBP-NABUNTURAN BRANCH		\N
568	Sch-CIP	KIARA SANDEL ESGUERRA	0656-0974-50	LBP-MALABON		\N
569	Sch-CIP	KIM BRYON JURALBAR MENDOZA	3587-0739-77	LBP-TAGUIG CITY HALL BR.		\N
570	Sch-CIP	KIM LOUISSE APONGAN PATAGNAN	1896-3635-70	LBP-LOS BA?OS		\N
571	Sch-CIP	KIMBERLYN FAGTANAC FEGURO	2327-0619-79	LBP-ILOILO CITY BR.		\N
572	Sch-CIP	KO KO MAUNG 	1896-3930-53	LBP-LOS BA?OS		\N
573	Sch-CIP	KRIS KIMBERLY AGUILAR BALINA	0366-3361-17	LBP-BUTUAN CITY BR.		\N
574	Sch-CIP	KRISTAN DIANE BARIN  CANTA	1827-4871-00	LBP -BICUTAN		\N
575	Sch-CIP	KRISTIAN HAUSER ARELLANO VILLEGAS	3077-0752-74	LBP-UP DILIMAN		\N
576	Sch-CIP	KRISTINE JOY B. PANALIGAN	1897-1476-41	LBP-UP LOS BA?OS		\N
577	Sch-CIP	KRISTINE V. MONTECILLO	1826-2097-86	LBP-BICUTAN		\N
578	Sch-CIP	LAWRENCE PILAPIL TIMBREZA	1827-4870-46	LBP-BICUTAN		\N
579	Sch-CIP	LEA BISCOCHO LANDICHO	1827-3700-76	LBP-BICUTAN		\N
581	Sch-CIP	LEILANI DOMINGO PELEGRINA	1897-1056-04	LBP-LOS BANOS		\N
582	Sch-CIP	LEOMIR A. DIAZ	2166-1524-48	LBP-DILIMAN CAMPUS BR.		\N
583	Sch-CIP	LESELLE  INTONG  ABATOL	2567-0336-46	LBP-DAVAO BRANCH		\N
584	Sch-CIP	LESLI NAMUAG UY	0966-1819-74	LBP-MALAYBALAY CITY, BUKIDNON		\N
585	Sch-CIP	LESLIE MICHELLE MALALUAN DALMACIO	3406-6499-70	LBP-MALATE BRANCH		\N
586	Sch-CIP	LEXYBER CASANTOSAN MANALO	0467-1429-92	LBP-PALAWAN		\N
587	Sch-CIP	LIBERTINE ROSE SANTOS SANCHEZ	3076-0880-20	LBP-UP DILIMAN		\N
588	Sch-CIP	LIEZEL GRANDE MACARANAS	2965-0113-00	LBP-MU?OZ,NUEVA ECIJA BR.		\N
589	Sch-CIP	LIEZLY LUMOCSO MAGDUA	1896-3519-03	LBP-LOS BA?OS		\N
590	Sch-CIP	LINDA G. RIVERA	1827-4614-38	LBP-BICUTAN		\N
591	Sch-CIP	LIZLIT CANDA CABAG	0987-1079-36	LBP-SURIGAO DEL NORTE		\N
592	Sch-CIP	LOIS ANNE BENEDICTO LEAL	3077-1516-39	LBP-QUEZON CITY		\N
593	Sch-CIP	LOREIBELLE NAONG ABIAN	1827-5475-37	LBP-BICUTAN		\N
594	Sch-CIP	LORELLE A. BARACOL	1827-3621-38	LBP-BICUTAN		\N
595	Sch-CIP	LORENZO MIGUEL INIEGO REY	3756-0144-89	LBP-GSIS, PASAY BR.		\N
596	Sch-CIP	LORYJEAN DE LEON CANILLO	0707-0743-29	LBP-QUEZON CITY		\N
597	Sch-CIP	LOUIE CARL RECALDE MANDAPAT	1827-1989-82	LBP-BICUTAN		\N
598	Sch-CIP	LOURDES  B. CARDENAS	1897-0568-32	LBP-LOS BANOS		\N
3498	\N	PAGIBIG FUND	\N	\N	\N	\N
599	Sch-CIP	LOUREN JOY G. ASMANDO	1827-4600-24	LBP-BICUTAN		\N
600	Sch-CIP	LUCIA P. DAUZ	1737-0072-07	LBP-TACLOBAN		\N
601	Sch-CIP	LUCILLE ROSE DM. SANICO	0707-1437-97	LBP-QUEZON CITY		\N
602	Sch-CIP	LUE XIONG	1827-5694-33	LBP-BICUTAN		\N
603	Sch-CIP	LUISITO TINGZON EVANGELISTA	1987-1617-59	LBP-ARROCEROS BRANCH		\N
604	Sch-CIP	LYDIA SOBERANO ROLEDA	3406-6233-00	LBP-ERMITA BR.		\N
605	Sch-CIP	LYKHA JEAN NATIZON MONSANTO	2047-0345-85	LBP-LEYTE, BATANGAS BR.		\N
606	Sch-CIP	LYNNE JERISA VILLAR ALFECHE	1827-5081-40	LBP-BICUTAN		\N
607	Sch-CIP	MA ANGELA CRISTOBAL GABAYERON	0397-0829-70	LBP-MUNTINLUPA BR.		\N
608	Sch-CIP	MA DONNA SOLIS REBONG	0237-1427-80	LBP-WEST AVE. BRANCH		\N
609	Sch-CIP	MA HEIJACINTH RIVERA CASTILLO	0237-1913-90	LBP-WEST AVE. QC BR		\N
610	Sch-CIP	MA KRISTINA SANTELECES SAYO	3287-0661-54	LBP-GMA CAVITE BR.		\N
611	Sch-CIP	MA NAZARENE MALABANAN BACULANTA	1827-3806-32	LBP-BICUTAN BRANCH		\N
612	Sch-CIP	MA.  JOSEFINA PORMENTO ABILAY	1826-1065-10	LBP-BICUTAN		\N
613	Sch-CIP	MA. ALEXANDRA ARPON CATARINING	3466-2086-70	LBP-SAN JOSE DEL MONTE BR.		\N
614	Sch-CIP	MA. ALICIA SOLEDAD A. SALAZAR	0037-1896-00	LBP-ILOILO CITY		\N
616	Sch-CIP	MA. CARISSE M. COMPENDIO	1897-1520-09	LBP-LOS BANOS		\N
617	Sch-CIP	MA. CARMELA PAULA P. BLACER	0037-0324-17	LBP-ILOILO CITY		\N
618	Sch-CIP	MA. ESTRELLA B. VALLE	1827-3420-48	LBP-BICUTAN		\N
620	Sch-CIP	MA. KRISTINE BALTAZAR REYES	1827-5079-50	LBP-BICUTAN		\N
621	Sch-CIP	MA. LUISA SALVATIERRA 	0707-0074-19	LBP-PHILCOA BRANCH		\N
622	Sch-CIP	MA. NEDA A. CATALMA	1897-0922-51	LBP- LOS BA?OS		\N
624	Sch-CIP	MA. OLIVIA BANATLAO OLIVARES	0597-2328-61	LBP-TAFT AVE. BR.		\N
625	Sch-CIP	MABELLINE T. CAHULOGAN	0707-1435-92	LBP-PHILCOA BRANCH		\N
626	Sch-CIP	MAC MICHAEL MANTILE RUBIO	2966-0899-30	LBP-MU?OZ,NUEVA ECIJA BR.		\N
627	Sch-CIP	MACBETH SIANGCO DAL	1916-0565-39	LBP-LARENA BRANCH		\N
628	Sch-CIP	MADEL VERRA TUTOR	3076-0860-00	LBP-UP DILIMAN		\N
629	Sch-CIP	MADELAINE LABING-ISA EBARVIA	1827-4868-64	LBP-BICUTAN		\N
630	Sch-CIP	MADONNA CIEGO ESTRELES	0706-1308-61	LBP-STA ANA		\N
631	Sch-CIP	MAE ANGELES DAGAAS	1897-0997-60	LBP-BICUTAN		\N
632	Sch-CIP	MAE ANN SON TONGOL	2976-0989-70	LBP-SAGAY, NEGROS OCC. BR.		\N
633	Sch-CIP	MAJVELL KAY ODARVE VEQUIZO	0327-0427-26	LBP-ILIGAN CITY BR.		\N
634	Sch-CIP	MANOLITO R. TAPANGAN	0367-0749-90	LBP-BUTUAN		\N
635	Sch-CIP	MAR FRANCIS DIEZMOS DE GUZMAN	0707-1754-94	LBP-QUEZON CITY		\N
636	Sch-CIP	MARCELINA V. SERVANEZ	1827-3417-00	LBP- BICUTAN BR.		\N
637	Sch-CIP	MARCIANA BAJA GALAMBAO	3577-0113-88	LBP-LEYTE		\N
638	Sch-CIP	MARCO POLO AGUDAL IBANEZ	1467-0774-61	LBP-KATIPUNAN BRANCH		\N
639	Sch-CIP	MARGIE DIAMANTE BRENDIA	1897-0941-73	LBP-LOS BANOS		\N
640	Sch-CIP	MARIA ADELIA C. BELEN	1896-2252-07	LBP-LOS BANOS		\N
641	Sch-CIP	MARIA ALICIA B. CABRAL	1826-1917-20	LBP-BICUTAN		\N
642	Sch-CIP	MARIA ANA ARCARTE ESPIRITU	0086-0804-35	LBP-SAN FERNANDO,PAMPANGA		\N
643	Sch-CIP	MARIA BETH ESPINA FABE	0237-1637-10	LBP-WEST AVE. QC BR		\N
644	Sch-CIP	MARIA CHRISTINE BARQUILLA LATOSA	1827-4943-36	LBP-BICUTAN		\N
645	Sch-CIP	MARIA CORAZON M. BALASA	1827-3429-00	LBP-BICUTAN		\N
646	Sch-CIP	MARIA FELICIANA BENITA M. ELORETA	2087-0279-64	LBP-CAMARINES SUR		\N
647	Sch-CIP	MARIA INES ROSANA BALANGUE TARRIELA	3077-0257-06	LBP-UP DILIMAN		\N
648	Sch-CIP	MARIA ISABEL B. AGUILAR	0237-1488-19	LBP-WEST AVE.		\N
649	Sch-CIP	MARIA JULIA GOLLOSO GUBAT	1827-3220-71	LBP-BICUTAN		\N
651	Sch-CIP	MARIA STEPHANIE NATAL  PARANI	1897-1524-40	LBP-LOS BANOS		\N
652	Sch-CIP	MARIA VERONICA SIBAYAN TORRALBA	0237-0990-95	LBP-WEST AVE		\N
653	Sch-CIP	MARIAN C. GELERA	1827-3432-30	LBP-BICUTAN		\N
654	Sch-CIP	MARIANITO T. MARGARITO	1827-0052-46	LBP-BICUTAN		\N
655	Sch-CIP	MARIBETH  A. SAPORAS	3576-0607-92	LBP-BAYBAY LEYTE		\N
656	Sch-CIP	MARICAR SISON PRUDENTE	3406-6233-18	LBP-ERMITA BR.		\N
657	Sch-CIP	MARIE GRACE A GOMEZ	3076-0431-15	LBP-MAKATI		\N
658	Sch-CIP	MARIE GRACE T. MOLINA	0136-1990-56	LBP-LEGASPI		\N
659	Sch-CIP	MARIE ROSELLYNN CALIZO ENGUITO	0816-2455-75	LBP-MISAMIS OCCIDENTAL		\N
660	Sch-CIP	MARIE SHARON S. ABILAY	1827-4598-08	LBP-BICUTAN		\N
661	Sch-CIP	MARIE THERESE LOURDES GALLEGO LEDESMA	0037-2771-42	LBP-IZNART BRANCH		\N
662	Sch-CIP	MARIE YSABEL TONGCUA LACORTE	6036-0227-77	LBP-BACOLOD,SAN JUAN BR.		\N
663	Sch-CIP	MARIEDITH F. ITANG	3577-0237-85	LBP-LEYTE		\N
664	Sch-CIP	MARIELLE J. PASUQUIN	1897-0992-05	LBP-UPLB BRANCH		\N
665	Sch-CIP	MARIEVIC V. NARQUITA	1827-4136-62	LBP-BICUTAN		\N
666	Sch-CIP	MARILYN O. RADAM	1737-0073-80	LBP-TACLOBAN		\N
667	Sch-CIP	MARILYN U. BALAGTAS	1986-0067-09	LBP-MANILA		\N
668	Sch-CIP	MARINA G. YAO	1827-0066-92	LBP-BICUTAN		\N
669	Sch-CIP	MARINELL B. PALANGAO 	1827-2320-48	LBP-BICUTAN		\N
670	Sch-CIP	MARIO A. AURELIO	0717-0156-90	LBP-CAINTA		\N
671	Sch-CIP	MARITES R. DAYO	1896-2506-43	LBP-LOS BANOS		\N
672	Sch-CIP	MARIVIC T. MORATA	0237-1193-47	LBP-WEST AVE.		\N
673	Sch-CIP	MARK ANGELO CABRERA PURIO	1986-2070-20	LBP-YMCA BRANCH		\N
674	Sch-CIP	MARK ANTHONY B. PELAEZ	2087-0280-90	LBP-CAMARINES SUR		\N
675	Sch-CIP	MARK ANTHONY TABLANDO GALON	0157-1931-39	LBP-CAGAYAN DE ORO CITY		\N
676	Sch-CIP	MARK ANTHONY UNILONGO ESTORES	1826-2129-81	LBP-BICUTAN		\N
677	Sch-CIP	MARK DONDI MENDOZA ARBOLEDA	1897-1066-60	LBP-LOS BA?OS BRANCH		\N
678	Sch-CIP	MARK EDWARD ABAD JOLEJOLE	1467-0755-82	LBP-KATIPUNAN		\N
679	Sch-CIP	MARK GIL S. HIZON	3707-0181-00	LBP-TUGUEGARAO		\N
680	Sch-CIP	MARK JOHN V AYAAY	0237-1356-10	LBP-Q.C.		\N
681	Sch-CIP	MARK JOSEPH MENDOZA ABACA	1827-2177-23	LBP-BICUTAN		\N
682	Sch-CIP	MARK LESTER APOLINARIO FERNANDO	1897-0994-26	LBP-LOS BANOS		\N
683	Sch-CIP	MARK LESTER FRANCISCO PADILLA	1986-2237-00	LBP-YMCA BRANCH		\N
684	Sch-CIP	MARK LLOYD GRANADEROS DAPAR	3727-0071-80	LBP-ESPA?A BRANCH		\N
686	Sch-CIP	MARK PRETZEL P. ZUMARAGA	1827-3229-50	LBP-BICUTAN		\N
687	Sch-CIP	MARK REMBERT M. PATINDOL	3576-0608-22	LBP-BAYBAY LEYTE		\N
688	Sch-CIP	MARLENE R. RAFANAN	1827-4613-73	LBP-BICUTAN		\N
689	Sch-CIP	MARLON O. BALITAON	1827-3214-74	LBP-BICUTAN		\N
690	Sch-CIP	MARNELL BONGATO BACORDIO	0367-0994-96	LBP-BUTUAN CITY BR.		\N
692	Sch-CIP	MARTIN AUSEJO WEE	1957-0493-18	LBP-ZAMBOANGA		\N
693	Sch-CIP	MARVELOUS GRACE L. VILLAZORDA	0327-0832-52	LBP-ILIGAN CITY		\N
694	Sch-CIP	MARVIN DECENILLA CASCANTE	3576-1237-86	LBP-BAYBAY, LEYTE BRANCH		\N
695	Sch-CIP	MARVIN RICK GADON FORCADO	1166-2240-78	LBP-ROMBLON		\N
696	Sch-CIP	MARVIN SANCHEZ CABTALAN	0017-4227-90	LBP-INTRAMUROS BR.		\N
697	Sch-CIP	MARY ANN P. MAGLASIN	3707-0049-90	LBP-TUGUEGARAO (CAPITOL) BR		\N
698	Sch-CIP	MARY ANTONETTE P. KABRISTANTE	2566-1896-93	LBP-DAVAO BRANCH		\N
699	Sch-CIP	MARY CHARLOTTE O. FRESCO	1827-3688-61	LBP-BICUTAN		\N
700	Sch-CIP	MARY GRACE R. NAVARRO	5107-1191-26	LBP-VIGAN		\N
701	Sch-CIP	MARY GRACE R. POSTOR	1827-3435-67	LBP-BICUTAN		\N
702	Sch-CIP	MARY JANE BAILON SUAREZ	1587-0877-11	LBP-NUEVA ECIJA		\N
703	Sch-CIP	MARY JEAN ASPA MORANTE	1696-1819-73	LBP-COA Q.C.		\N
704	Sch-CIP	MARY JOY M. BAUTISTA	1827-4601-56	LBP-BICUTAN		\N
705	Sch-CIP	MARY JOY P. PAICO	1827-3628-47	LBP-BICUTAN		\N
706	Sch-CIP	MARY ROSE MANALO MARTIN	1827-3419-20	LBP-BICUTAN		\N
707	Sch-CIP	MARY ROSE O. SUERTE	0037-1896-50	LBP-ILOILO CITY		\N
708	Sch-CIP	MARYBETH HOPE T. BANDA	0326-4238-40	LBP-ILIGAN CITY		\N
709	Sch-CIP	MAUREEN JOY B. COLLADO	0436-1294-40	LBP-NUEVA VIZCAYA		\N
710	Sch-CIP	MAY ANN DEVANADERA GIRONELLA	1827-1951-85	LBP-BICUTAN		\N
711	Sch-CIP	MAY BASCO DIVINA	2966-1327-04	LBP-MU?OZ,NUEVA ECIJA BR.		\N
712	Sch-CIP	MAYETTE MAMUCOD CARLON	0367-0749-49	LBP-BUTUAN		\N
713	Sch-CIP	MAYLENE PUA CAJUCOM	1826-0412-90	LBP-BICUTAN BR.		\N
714	Sch-CIP	MAZE ANN B. AQUINO	1827-2331-17	LBP-BICUTAN		\N
715	Sch-CIP	MELANIE GUZMAN GURAT	0436-0362-48	LBP-SOLANO, NUEVA VIZCAYA BR		\N
716	Sch-CIP	MELANIE R. AQUINO	0707-0065-01	LBP-QUEZON CITY		\N
717	Sch-CIP	MELBA C. PATACSIL	0227-0921-81	LBP-BAGUIO BRANCH		\N
718	Sch-CIP	MELCHOR JOCANAIN POTESTAS	0326-2609-16	LBP-ILIGAN CITY		\N
719	Sch-CIP	MELISSA JUNE VILLENA PADEROG 	0036-5646-52	LBP-ILOILO CITY BR.		\N
720	Sch-CIP	MELISSA S. BORLAGDAN	1827-2003-08	LBP-BICUTAN		\N
721	Sch-CIP	MELIZA FESTEJO ABELEDA	1897-1271-52	LBP-LOS BANOS		\N
722	Sch-CIP	MELVIN BALAGTAS CARLOS	1897-0982-33	LBP-UP LOS BA?OS BR.		\N
723	Sch-CIP	MELVIN JOEL BALMES SACMAR	0187-0137-80	LBP-BORONGAN BR.		\N
724	Sch-CIP	MERAB ANTONE CHAN	1466-0592-22	LBP-KATIPUNAN		\N
725	Sch-CIP	MERELL PABILONA BILLACURA	1266-3980-14	LBP-BUTUAN		\N
726	Sch-CIP	MERGEBELLE D. DENGAL	1266-3308-43	LBP-MARAWI		\N
727	Sch-CIP	MERLITA ROMERO ODI	1827-4015-75	LBP-BICUTAN		\N
728	Sch-CIP	MERLY TABION PANGANIBAN	1826-2119-18	LBP-LOS BANOS		\N
729	Sch-CIP	MERTELLA LENIE MANANSALA YSULAT	1827-5100-48	LBP-BICUTAN		\N
730	Sch-CIP	MERVIN B GOROSPE	1827-4608-22	LBP-BICUTAN		\N
731	Sch-CIP	META MOUY	1827-5665-90	LBP-BICUTAN		\N
732	Sch-CIP	MIA MERCADO NUNEZ	1897-1712-16	LBP-UPLB BRANCH		\N
733	Sch-CIP	MICHAEL BARTIDO VILLADOZ	1827-3437-88	LBP-BICUTAN		\N
734	Sch-CIP	MICHAEL BENEDICT LIGGAYU VIRTUCIO	0707-1759-23	LBP-QC CIRCLE		\N
735	Sch-CIP	MICHAEL CARLO C. MARIANO	3777-0179-50	LBP-PAMPANGA BRANCH		\N
736	Sch-CIP	MICHAEL DAVE POGOY BARQUILLA	3146-2214-90	LBP-CDO BRANCH		\N
737	Sch-CIP	MICHAEL E. SERAFICO	1827-0429-07	LBP-BICUTAN		\N
738	Sch-CIP	MICHAEL GEYROZAGA BACUS	2986-2426-89	LBP-DAVAO CITY		\N
739	Sch-CIP	MICHAEL JOHN SINGAYAN RIVERA	3777-0175-42	LBP-SAN FERNANDO 		\N
740	Sch-CIP	MICHAEL JOSEPH M. NAGPALA	1826-1877-66	LBP-BICUTAN		\N
741	Sch-CIP	MICHAEL TY MAYO	4117-0033-91	LBP-KORONADAL CITY BR		\N
742	Sch-CIP	MICHELLE A DE VERA	1896-3187-10	LBP-UP LOS BA?OS		\N
743	Sch-CIP	MICHELLE B. DUCUSIN	0407-0197-09	LBP-VIGAN		\N
744	Sch-CIP	MICHELLE PURISIMA CAPARAS	1896-2330-21	LBP-UP LOS BA?OS BR.		\N
745	Sch-CIP	MICHELLE V. ATIENZA	1827-3610-50	LBP-BICUTAN		\N
746	Sch-CIP	MIGUEL ALFONSO BERNAL NERI	1497-0682-62	LBP-ROBINSON FAIRVIEW		\N
747	Sch-CIP	MIKEE CASABUENA MERCADO	2316-1468-24	LBP-MANDALUYONG CITY HALL		\N
748	Sch-CIP	MILAGROS M. PERALTA	1897-0586-06	LBP-LOS BANOS		\N
749	Sch-CIP	MILDRED O. GUIRINDOLA	1827-0116-29	LBP-BICUTAN		\N
750	Sch-CIP	MINETTE MENDOZA FELISMINO	1897-1347-01	LBP-LOS BA?OS		\N
751	Sch-CIP	MIRABELLE L. PINEDA	0136-2958-88	LBP-LEGASPI		\N
752	Sch-CIP	MIRASOL G. DOMINGO	2567-0056-50	LBP-DAVAO BRANCH		\N
753	Sch-CIP	MON BRYAN ZAMBALE GILI	0237-1963-84	LBP-WEST AVE. QC. BR		\N
754	Sch-CIP	MONICA R. MANALO	1827-3626-85	LBP-BICUTAN		\N
755	Sch-CIP	MONINA CHESKA L. CASTRO	1897-0953-15	LBP-LOS BANOS		\N
756	Sch-CIP	MYLENE A. ALANO	1827-3420-64	LBP-BICUTAN		\N
757	Sch-CIP	MYLENE DESPUES RIZARE	1897-1439-21	LBP-UPLB BR.		\N
758	Sch-CIP	MYLENE FANG MUYANO	3127-0199-07	LBP-BATASAN HILLS, QUEZON CITY		\N
759	Sch-CIP	MYO THONT KYAW	1896-3567-35	LBP-LOS BANOS		\N
760	Sch-CIP	NABIL ABDULHAMID HADJI YASSIN	0377-1873-42	LBP-COTABATO CITY BR.		\N
761	Sch-CIP	NADERAH TAIB ZULKIFLE	2746-3817-46	LBP-COTABATO CITY BR.		\N
762	Sch-CIP	NADINE JANELLE ESTACIO SINCO	1897-1525-80	LBP-LOS BA?OS		\N
763	Sch-CIP	NANCY ABNASAN BANTOG	1377-0575-50	LBP-LA TRINIDAD BAGUIO		\N
764	Sch-CIP	NANCY CORAZON  GUIMMAYEN	3707-0050-75	LBP-TUGUEGARAO		\N
765	Sch-CIP	NAOMI COSSETTE R. LUIS	0037-1894-21	LBP-ILOILO CITY		\N
766	Sch-CIP	NAPOLEON KILATES JUANILLO JR.	0707-1247-92	LBP-Q.C. CIRCLE		\N
767	Sch-CIP	NARIROTH KEO	00000-321-00G	LCL BANQUE ET ASSURANCE		\N
768	Sch-CIP	NATHAN ANGELO DE OCAMPO LUGTU	0657-0450-20	LBP-MALABON CITY BR.		\N
769	Sch-CIP	NEIL MORES MAME	0307-0145-13	LBP-BATANGAS CITY		\N
770	Sch-CIP	NELLY B. AGPAWA	1827-4133-28	LBP-BICUTAN		\N
771	Sch-CIP	NELSON A. ROSAROSO	2406-0442-49	LBP-CEBU		\N
772	Sch-CIP	NEMA FREYA DIONIO CEBRITAS	2567-0501-17	LBP-DAVAO BRANCH		\N
773	Sch-CIP	NENITA RETERACION	1267-0343-34	LBP-MARAWI		\N
774	Sch-CIP	NESTLY ANNE MALAPITAN CRUZ	1827-3649-55	LBP-BICUTAN		\N
775	Sch-CIP	NICHOLE MACALINAO BRISTOL	1827-4943-60	LBP-BICUTAN BRANCH		\N
776	Sch-CIP	NINA GONZALES GLORIANI	0596-1912-07	LBP-PACO MANILA		\N
777	Sch-CIP	NINA MAE LIWAG DELA CRUZ	3076-0676-69	LBP-UP DILIMAN		\N
778	Sch-CIP	NOEL A. CATIBOG	1897-0290-02	LBP-LOS BANOS		\N
779	Sch-CIP	NOEL ANGELO P. KALACAS	1827-4271-67	LBP-BICUTAN		\N
780	Sch-CIP	NOELENE ANNE CABASAN ARAM	1897-1745-17	LBP-LOS BA?OS BR.		\N
781	Sch-CIP	NOELLE LYN C. SANTOS	1827-3227-48	LBP-BICUTAN		\N
782	Sch-CIP	NOLI B. ABRIGO JR.	0125-1999-41	LBP-TUGUEGARAO CITY BR.		\N
783	Sch-CIP	NORBERTO G. AMBAGAN	1827-0071-41	LBP-BICUTAN		\N
784	Sch-CIP	NORLI L. AIDASANI	1827-3805-60	LBP-BICUTAN		\N
785	Sch-CIP	NORMAN DELOS SANTOS MENDOZA	0237-1202-13	LBP-WEST AVE.		\N
786	Sch-CIP	NWE NI MAR	1897-1807-38	LBP-UP LOS BANOS BR		\N
787	Sch-CIP	ODYSSA NATIVIDAD R. MONTOYA	0327-0183-70	LBP-ILIGAN CITY		\N
788	Sch-CIP	OSCAR B. SEVILLA JR	1826-0634-20	LBP-BICUTAN		\N
789	Sch-CIP	PAOLA BIANCA MENIADO BUISER	1827-2313-60	LBP-BICUTAN		\N
790	Sch-CIP	PATRICIA BRAZIL ARINTO	1896-2646-28	LBP-UPLB BRANCH		\N
791	Sch-CIP	PATRICIA ISABEL GAYYA AMITA	1506-0765-40	LBP-TAYTAY BRANCH		\N
792	Sch-CIP	PATRICK JAY E. CABALAR	0237-1799-43	LBP-WEST AVE BR		\N
793	Sch-CIP	PAUL JERSEY G. LERON	1897-0443-20	LPB-LOS BANOS		\N
794	Sch-CIP	PAUL RAYMUND JUMOC YAP	1826-2965-06	LBP-BICUTAN		\N
795	Sch-CIP	PAULA JANE A. DE LEON	1827-3926-14	LBP-BICUTAN		\N
796	Sch-CIP	PAULENE SANTOS PINEDA	2966-1759-34	LBP-NUEVA ECIJA		\N
797	Sch-CIP	PAULO MIGUEL MARGALLO KIM	1896-3158-18	LBP-LOS BANOS		\N
798	Sch-CIP	PEPITA PICPICAN	1377-0575-18	LBP-LA TRINIDAD BAGUIO		\N
799	Sch-CIP	PHIL PINGKIAN SANTUA	0627-0273-89	LBP-COMMONWEALTH BR.		\N
800	Sch-CIP	PHILIPPINE SOCIAL SCIENCE COUNCIL INC.	0701-1362-41	LBP-QC CIRCLE		\N
801	Sch-CIP	PHILLIP JORDAN VASQUES RAMBOYON	2087-0450-59	LBP-GOA CAMARINES SUR		\N
802	Sch-CIP	PHYLLICIA ANNE MORENO BAGUYO	1826-1935-53	LBP-BICUTAN BR.		\N
803	Sch-CIP	PHYO WAI HTIKE	1896-3562-20	LBP-LOS BANOS		\N
804	Sch-CIP	PIERRE SONIA S. DELA CORTE	1827-0377-09	LBP-BICUTAN		\N
806	Sch-CIP	PRECIOUS RIVERA MONEDERA	1897-0934-52	LBP-UPLB BR.		\N
807	Sch-CIP	PRINCESS AGGABAO GARCIA	2905-0111-22	LBP-NUEVA ECIJA BR.		\N
808	Sch-CIP	PRINCESS HEDDA CASOCOT AMPARO	1567-2405-56	LBP-SUCAT, PARA?AQUE BR.		\N
809	Sch-CIP	PRINCESS TUCODAN PUNDOGAR	0326-3353-12	LBP-ILIGAN CITY		\N
810	Sch-CIP	QUEENCY HIPOLITO ALCANTARA	1826-2066-63	LBP-BICUTAN		\N
811	Sch-CIP	QUINCY E. YBANEZ	1897-1133-72	LBP-LOS BA?OS		\N
812	Sch-CIP	RACHELLE-ANN ALIPIO BAUTISTA	1697-1068-00	LBP-QC BR.		\N
813	Sch-CIP	RAFAEL MICHAEL ORTIZ PAZ	0687-0541-56	LBP-G. ARANETA BRANCH		\N
814	Sch-CIP	RAFAEL MIGUEL MARTINEZ DELA CRUZ	0237-1856-17	LBP-WEST EVE. BRANCH		\N
815	Sch-CIP	RALPH ANGELO ARCEO CANLAS	2946-1830-00	LBP-PADRE FAURA BR.		\N
816	Sch-CIP	RAMIL T. UY	1737-0071-00	LBP-TACLOBAN		\N
817	Sch-CIP	RAMON R. PIO RODA	1827-0109-16	LBP-BICUTAN		\N
818	Sch-CIP	RAMON SUAN DEL FIERRO	2406-0446-72	LBP-MAKATI		\N
819	Sch-CIP	RAUL A ABLAY	0187-0544-27	LBP-LEYTE		\N
820	Sch-CIP	RAUL JR BRIONES JAVIER	1897-0899-00	LBP-LOS BANOS		\N
821	Sch-CIP	RAY ANNE GRACE M. GARALDE	1826-0739-22	LBP-BICUTAN		\N
822	Sch-CIP	RAYMUND T. VELASCO	0436-0324-63	LBP-NUEVA VIZCAYA		\N
823	Sch-CIP	RAZEL C. GAMBA	0367-0750-31	LBP-BUTUAN		\N
824	Sch-CIP	REA C. CASTRO	1827-4603-00	LBP-BICUTAN		\N
825	Sch-CIP	REGINA G. RODRIGUEZ	1827-3226-40	LBP-BICUTAN		\N
826	Sch-CIP	REGINALD ROY U. DELA CRUZ	1827-2303-98	LBP-BICUTAN		\N
827	Sch-CIP	REIHVELLE AMBROSIO PEREZ	1826-0053-90	LBP-BICUTAN		\N
828	Sch-CIP	REINA D. ELAYDA	0446-2155-58	LBP-PAMPANGA BRANCH		\N
829	Sch-CIP	REINZIE JOYCE CANLAS JABSON	1827-4094-01	LBP-BICUTAN BR.		\N
830	Sch-CIP	REMILYN M. MENDOZA	1827-5256-65	LBP-BICUTAN		\N
831	Sch-CIP	RENALD JAMES B. LEGASPI	1897-1386-26	LBP-LOS BANOS		\N
832	Sch-CIP	RENATO U. SOLIDUM JR.	0707-1449-80	LBP-QC CIRCLE		\N
833	Sch-CIP	RENZ JIMWEL SILVA MINA	3796-0457-94	LBP-BAGUIO CITY		\N
834	Sch-CIP	RESTITUTO FELIPE R GABUYA	1827-4607-17	LBP-BICUTAN		\N
836	Sch-CIP	REYMUND CALLANGA DERILO	0436-3005-30	LBP-SOLANO, NUEVA VIZCAYA		\N
837	Sch-CIP	REYNALDO M. VEQUIZO	0327-0097-70	LBP-ILIGAN CITY		\N
838	Sch-CIP	REYNALDO ONIANA BAYOT	1827-3660-79	LBP-BICUTAN		\N
839	Sch-CIP	RHEALYN JOY VIBAS NABONG	2966-1470-86	LBP-BAGUIO CITY BRANCH		\N
840	Sch-CIP	RHETT SIMON DELA CRUZ TABBADA	0236-1235-53	LBP-WEST AVE.		\N
841	Sch-CIP	RHOALYN DE LA ROSA GACHO	1827-3421-29	LBP-BICUTAN BRANCH		\N
842	Sch-CIP	RIC JOHN LABOA OMBID	1776-1009-23	LBP-MANILA		\N
843	Sch-CIP	RICARDO JR RELOX DELFIN	0687-1166-31	LBP-G. ARANETA BRANCH		\N
844	Sch-CIP	RICARIDO JR MAGLAQUI SATURAY	0227-1229-27	LBP-BAGUIO CITY		\N
845	Sch-CIP	RICHARD BACTOL EDEN	1466-0595-16	LBP-KATIPUNAN		\N
846	Sch-CIP	RICHELLE CAHANAP MALAAY	1826-1466-79	LBP-BICUTAN		\N
847	Sch-CIP	RICHIE EVE GASPAR RAGAS	3177-2006-02	LBP-LAHUG, CEBU CITY		\N
848	Sch-CIP	RICK ADRIAN ALMALVEZ MULIMBAYAN	1897-0992-64	LBP-LOS BANOS		\N
849	Sch-CIP	RICKY LODOR	2487-0625-99	LBP-SAN PEDRO, LAGUNA BR.		\N
850	Sch-CIP	RICKY MICHAEL MORALES OLIVA	1167-0254-35	LBP-ROMBLON		\N
851	Sch-CIP	RITA ROWENA BAGUIO LAQUINON	1896-2250-70	LBP-LOS BANOS		\N
852	Sch-CIP	RITCHIE MAE L. GUNO	0157-1113-45	LBP-CAGAYAN DE ORO CITY		\N
853	Sch-CIP	RIZA GLORIA M. MAGSINO	1827-4272-48	LBP-BICUTAN		\N
854	Sch-CIP	RIZALNINO LUCIDO NOBLE	1827-5258-00	LBP-BICUTAN BR.		\N
855	Sch-CIP	ROAN NAVARRO MAMBA	0597-1221-87	LBP-KATIPUNAN		\N
856	Sch-CIP	ROBELYN CALUB REVILLA	2477-0071-74	LBP		\N
857	Sch-CIP	ROBERTH RIGGS L. RONDILLA	1827-4274-93	LBP-BICUTAN		\N
858	Sch-CIP	ROBERTO C. SISON	1827-3437-37	LBP-BICUTAN		\N
859	Sch-CIP	RODEL JAEB-R SARIEGO PARANGAN	0036-5740-46	LBP-ILOILO CITY BR.		\N
860	Sch-CIP	RODESA N. FORCADILLA	1827-3213-00	LBP-BICUTAN		\N
861	Sch-CIP	RODNEL OCAMPO TAMAYO	1827-4616-08	LBP-BICUTAN BRANCH		\N
862	Sch-CIP	ROEL ANSELMO SANCHO	1827-3672-61	LBP-BICUTAN		\N
863	Sch-CIP	ROGEL VICTOR DOMONDON MENDOZA	3077-1355-95	LBP-UP DILIMAN		\N
864	Sch-CIP	ROGELIO JR OBIAS RANTAEL	1897-0951-10	LBP-LOS BA?OS BR.		\N
865	Sch-CIP	ROHIT CONCEPCION TILWANI	1587-0877-38	LBP-NUEVA VIZCAYA		\N
866	Sch-CIP	ROLAND ANDREW TARROZA CRUZ	1827-3622-94	LBP-BICUTAN BRANCH		\N
867	Sch-CIP	ROLAND VELARDE RALLOS	0237-1208-09	LBP-WEST AVE.		\N
868	Sch-CIP	ROLEX EMMANUEL C. PADILLA	0186-2962-14	LBP-TACLOBAN		\N
869	Sch-CIP	ROMAN NAPENAS FORNESA	1896-4715-93	LBP-LOS BA?OS		\N
870	Sch-CIP	ROMEL A. ARROBANG	1896-2920-10	LBP-LOS BA?OS		\N
871	Sch-CIP	ROMELEN T. TRESVALLES	1826-0952-09	LBP-LOS BANOS		\N
872	Sch-CIP	ROMEO L. DIGNOS	1216-0368-20	LBP-NAVAL		\N
873	Sch-CIP	ROMEO P. SANTIAGO	1897-0431-53	LBP-UP LOS BA?OS		\N
874	Sch-CIP	ROMHAR QUIBLAT	0437-1110-30	LBP-BAGUIO CITY BRANCH		\N
875	Sch-CIP	ROMMEL J. GESTUVEO	3056-0813-20	LBP-ILOILO CITY		\N
876	Sch-CIP	ROMMEL M. BELANDRES	1827-3807-13	LBP-BICUTAN		\N
877	Sch-CIP	ROMMEL VERENA VISPERAS	1896-3605-03	LBP-LOS BANOS		\N
878	Sch-CIP	RON CHUCK MACOLA GABAYAN	3637-0568-74	LBP-PALAWAN		\N
879	Sch-CIP	RONALD ACAS PANGAN	0157-1319-07	LBP-CAPISTRANO, CDO BR		\N
880	Sch-CIP	RONALD ALCEBAR GICA	0167-3216-31	LBP-DAVAO RECTO BR.		\N
881	Sch-CIP	RONALD DARYLL ESPINO GATCHALIAN	0237-1866-48	LBP-WEST AVE.		\N
882	Sch-CIP	RONALDO P. PARRENO JR.	1827-3813-70	LBP-BICUTAN		\N
883	Sch-CIP	RONEIL CHRISTIAN SAMALCA ALONDAY	1897-1456-90	LBP-LOS BA?OS		\N
884	Sch-CIP	RONILO ONIGO DE CASTRO	1896-2874-07	LBP-UPLB BRANCH		\N
885	Sch-CIP	RONNALEE NAVASCA ORTEZA	0407-0196-95	LBP-VIGAN BR		\N
886	Sch-CIP	RONNEL JOHN ACOSTA GARCIA	2966-1583-12	LBP-BAGUIO CITY BR.		\N
887	Sch-CIP	RONYA MAE LUENGAS BAYAN	2407-0731-29	LBP-BANILAD BR.		\N
888	Sch-CIP	ROSALINDA CABANERO TORRES	1827-3921-42	LBP-BICUTAN BR.		\N
889	Sch-CIP	ROSE ANN FERNANDEZ GROSPE	2967-0899-69	LBP-NUEVA ECIJA BR.		\N
890	Sch-CIP	ROSE ANN H. BONTO	1826-1985-39	LBP-BICUTAN		\N
891	Sch-CIP	ROSE ANNE MANANGHAYA AYA	1897-1250-10	LBP-UPLB BRANCH		\N
892	Sch-CIP	ROSE ANNE TORRES BAUTISTA	3777-0119-94	LBP-WEST SAN FERNANDO BR.		\N
893	Sch-CIP	ROSELYN VALMORES ARELLANO	0156-0140-36	LBP-CAGAYAN DE ORO CITY		\N
894	Sch-CIP	ROSEMARIE J. DUMAG	1827-0361-25	LBP-BICUTAN		\N
895	Sch-CIP	ROSLYN DONGZAL TAMBAGO	0296-2628-70	LBP-DUMAGUETE		\N
896	Sch-CIP	ROTHER JAY BALANA COPINO	0707-1672-62	LBP-QC CIRCLE		\N
897	Sch-CIP	ROWENA ESCOBIN RAMOS	1897-0932-23	LBP-LOS BANOS		\N
898	Sch-CIP	ROWENA T. VACAL	0186-5231-99	LBP-TACLOBAN		\N
899	Sch-CIP	ROXANNE S. AVINANTE	0707-0673-90	LBP-PHILCOA BRANCH		\N
900	Sch-CIP	ROY PACACO	0037-0066-10	LBP-ILOILO CITY		\N
901	Sch-CIP	ROY R. CONSULTA	0707-0638-58	LBP-PHILCOA BRANCH		\N
902	Sch-CIP	RUBIRIZA DELA CRUZ RESUELLO	1897-0994-18	LBP-LOS BANOS		\N
903	Sch-CIP	RUBY A. ASUNCION	0136-2966-12	LBP-LEGASPI		\N
904	Sch-CIP	RUBY FELICIA MABANGLO MANONGDO	2566-1055-62	LBP-BAJADA BRANCH		\N
905	Sch-CIP	RUDOLPH VALENTINO ABRENICA DOCOT	2886-2816-28	LBP- MAKATI		\N
906	Sch-CIP	RUFINO E. MENGOTE	1737-0070-70	LPB-TACLOBAN 		\N
907	Sch-CIP	RUNDOLFO PALIS LLAMAS	1897-1512-23	LBP-LOS BANOS		\N
908	Sch-CIP	RUSSEL POLICARPIO OLARTE	1887-0375-70	LBP-STA. MARIA, BULACAN BR.		\N
909	Sch-CIP	RUSSELL MATA PILI	1827-0351-29	LBP-BICUTAN BR.		\N
910	Sch-CIP	RYA LANEI ESPINA DESOLOC	0597-2349-02	LBP-PADRE FAURA BR.		\N
911	Sch-CIP	RYAN CANLAS ESPINO	0226-3810-07	LBP-MARCOS HIGHWAY BR.		\N
912	Sch-CIP	RYAN CLIFFORD LARRAQUEL PEREZ	1156-1702-04	LBP-BOAC BRANCH		\N
913	Sch-CIP	RYAN H. EBRON	1827-3421-45	LBP-BICUTAN		\N
914	Sch-CIP	SACHAI SAYKHAMMOUN	1896-3974-40	LBP-LOS BA?OS		\N
915	Sch-CIP	SALVADOR R. SERRANO	1827-0116-53	LBP-BICUTAN		\N
916	Sch-CIP	SAMANTHA CARIDAD DUREMDES	1826-3424-35	LBP-BICUTAN BRANCH		\N
917	Sch-CIP	SAMANTHA RIERA ANGELES	1896-4955-22	LBP-LOS BANOS BR.		\N
918	Sch-CIP	SAMDY HANN	3077-1444-20	LBP-UP-DILIMAN EXTENSION OFFICE		\N
919	Sch-CIP	SAMERAH M. DATUDACULA	0176-2116-44	LBP-GEN.SAN		\N
920	Sch-CIP	SAMERAH MACABALANG DATUDACULA	3886-0003-31	LBP-GEN.SAN CITY		\N
921	Sch-CIP	SAMMUEL SABANDAL SARIO	1827-4901-60	LBP-BICUTAN		\N
922	Sch-CIP	SAMOUN NAM	1827-5166-66	LBP-BICUTAN		\N
923	Sch-CIP	SANCHO A. MABBORANG	3707-0050-59	LBP-TUGUEGARAO		\N
924	Sch-CIP	SARAH A. EISMA	0237-1569-35	LBP-WEST AVE.		\N
925	Sch-CIP	SARAH DIANE CASTRO ONG	1827-5158-56	LBP-BICUTAN		\N
926	Sch-CIP	SARAH GRACE SANTOS ZAMUDIO	1787-0326-36	LBP-LOS BA?OS		\N
927	Sch-CIP	SARAH HAZEL DEL ROSARIO MARANAN	1897-1475-52	LBP-UPLB BRANCH		\N
928	Sch-CIP	SARAH JESSICA S. NAPOLES	0237-1786-53	LBP-WEST AVE. QC		\N
929	Sch-CIP	SARAH S. CABALUNA	1736-3821-87	LBP-TACLOBAN		\N
930	Sch-CIP	SARAHME CORAZON BONDOC ESTEBAN	1897-0709-08	LBP-UPLB BR.		\N
931	Sch-CIP	SARLEEN GALLARDO CASTRO	3727-0073-09	LBP-ESPA?A BRANCH		\N
933	Sch-CIP	SERVIN SARZONA SANCHEZ	3727-0193-31	LBP-ESPA?A BRANCH		\N
934	Sch-CIP	SETH NATHANIEL P. LINGA	1897-1225-41	LBP-LOS BANOS		\N
936	Sch-CIP	SHANA FRESNIDO GENAVIA	1827-4270-86	LBP-BICUTAN		\N
937	Sch-CIP	SHANIA YVETH BAYLON DE GUZMAN	1417-1008-10	LBP-ANTIPOLO CITY BR.		\N
938	Sch-CIP	SHAREL SHYATEZA MADJOS ABELLAR	1827-3438-00	LBP-BICUTAN		\N
939	Sch-CIP	SHARIE AL-FAIHA A. ABUSTAN	1897-0996-55	LBP-LOS BANOS		\N
940	Sch-CIP	SHARON MASUCOL  DEJARME	0167-0787-10	LBP-DAVAO BRANCH		\N
941	Sch-CIP	SHAULA MAE POMBUENA GERALDINO	3076-0859-85	LBP-UP DILIMAN		\N
942	Sch-CIP	SHEENA S. BEDIS	1827-4601-64	LBP-BICUTAN		\N
943	Sch-CIP	SHEILA CONSUELO CUELA	1896-3344-72	LBP-LOS BANOS		\N
944	Sch-CIP	SHEILA E. VILLANUEVA	0707-0651-76	LBP-QUEZON CITY		\N
945	Sch-CIP	SHEILA MAE DAVID GOLINGAY	1467-0752-48	LBP-KATIPUNAN		\N
946	Sch-CIP	SHERRYL LIPIO PAZ	1897-1477-30	LBP-UPLB BRANCH		\N
947	Sch-CIP	SHERWIN L. ESCAYO	3056-0759-32	LBP-ILOILO CITY		\N
948	Sch-CIP	SHIELA SAGUID DEMEGILLO	3077-1352-50	LBP-UP DILIMAN		\N
949	Sch-CIP	SHIENNA MARIE A. PONTILLAS	1827-1519-94	LBP-BICUTAN		\N
950	Sch-CIP	SHIRLY ONGOVO UBAL	1896-2873-50	LBP-LOS BANOS		\N
951	Sch-CIP	SOCHEATA YEM	1827-5672-01	LBP-BICUTAN		\N
952	Sch-CIP	SOPHIA CHENG KO	0666-1377-87	LBP-QUEZON AVE. BR.		\N
953	Sch-CIP	SOPHIE TRISHA ANG REGINIO	0627-0225-14	LBP-COMMONWEALTH BR.		\N
954	Sch-CIP	SOPHIRAK B. NOU	3077-1508-96	LBP-UP DILIMAN		\N
955	Sch-CIP	SOVANNDANY KIM	1827-5685-69	LBP-BICUTAN		\N
956	Sch-CIP	SOVANNMONY LAY	1827-5518-60	LBP-BICUTAN		\N
958	Sch-CIP	SYCHHENG MEAS	1827-5666-04	LBP-BICUTAN		\N
959	Sch-CIP	THERESA KRISTA BAUTISTA JOLEJOLE	1897-1495-39	LBP-LOS BANOS		\N
960	Sch-CIP	THERESA MARIE N. CHAN-SEE	1827-3622-60	LBP-BICUTAN		\N
961	Sch-CIP	THU ZAR KYAW	1896-3921-46	LBP-LOS BA?OS		\N
962	Sch-CIP	TITO E. CACHERO	1736-0456-95	LBP-TACLOBAN 		\N
963	Sch-CIP	TOM JORDAN G. SECUNDO	2087-0280-81	LBP-CAMARINES SUR		\N
965	Sch-CIP	TONI AN MAE CABREROS SALCEDO	1896-3533-53	LBP-LOS BANOS		\N
966	Sch-CIP	TREXTAN THADDEUS B. SANCHEZ	0167-1065-87	LBP-DAVAO BRANCH		\N
967	Sch-CIP	TRINMAR A. BOADO	1827-3943-82	LBP-BICUTAN		\N
968	Sch-CIP	TRISTAN LAPLANA ABANDO	2407-0699-11	LBP-BANILAD CEBU		\N
969	Sch-CIP	TUN TUN OO	1827-5343-20	LBP-BICUTAN		\N
970	Sch-CIP	ULLYANN C. GARCIA	1827-0431-48	LBP-BICUTAN		\N
971	Sch-CIP	ULYSSES M. PALMONES	1827-0349-12	LBP-BICUTAN		\N
972	Sch-CIP	UNA GRACE MAESTRADO DOLLETE	1827-2209-61	LBP-BICUTAN		\N
973	Sch-CIP	UNICO ALVAREZ BAUTISTA	0237-1307-82	LBP-WEST AVE.		\N
974	Sch-CIP	VALERIE FAY REMOROSA ABLANG	1827-3632-07	LBP-BICUTAN BR.		\N
975	Sch-CIP	VANESA O. OSIANA	0707-0674-20	LBP-Q.C		\N
976	Sch-CIP	VANESSA  JOY CABLAYAN MAPALO	1827-4869-37	LBP-BICUTAN		\N
977	Sch-CIP	VANESSA CALUZA GUERINA	0137-2316-54	LBP-LEGAZPI BR.		\N
978	Sch-CIP	VANESSA JOY F. DIAMANTE	1897-1127-75	LBP-LOS BANOS		\N
979	Sch-CIP	VANESSA NEILLIZZLE BACOLCOL BARTOLOME	1821-2057-15	LBP-BICUTAN		\N
980	Sch-CIP	VANNIZSA CUIZON IBANEZ	1826-1977-96	LBP-BICUTAN		\N
981	Sch-CIP	VENUS DAHUNAN RETUYA	2406-0343-08	LBP-BANILAD CEBU		\N
983	Sch-CIP	VHANDER T. RAMOS	0707-0794-01	LBP-PHILCOA BRANCH		\N
984	Sch-CIP	VINA MARIE ESQUIERDO PITOGO	0326-3862-35	LBP-ILIGAN CITY		\N
985	Sch-CIP	VINCENT SILVERIO LABINDAO	1827-4075-06	LBP-BICUTAN BRANCH		\N
986	Sch-CIP	VIRGINIA P. ANDRES	0237-0949-80	LBP-WEST AVE.		\N
987	Sch-CIP	VIVIAN DAMUYAN MAGUIDE	0237-1866-64	LBP-WEST BR.		\N
988	Sch-CIP	WAI WAI PHYO	1897-1807-46	LBP-LOS BANOS		\N
989	Sch-CIP	WENCY HOSENA CARMELO	1896-2255-68	LBP-LOS BANOS		\N
990	Sch-CIP	WILFREDO FERNANDEZ SIBAL 	3777-0185-73	LBP-WEST SAN FERNANDO BR.		\N
991	Sch-CIP	WILSON MAZO TAN	1827-0935-10	LBP-BICUTAN BRANCH		\N
992	Sch-CIP	XAVIER GREG ISAGUIRRE CAGUIAT	2967-0468-01	LBP-NUEVA ECIJA BR.		\N
993	Sch-CIP	XAVIER ROMY ORTIZ BRANA	0037-2555-64	LBP-ILOILO CITY BR.		\N
994	Sch-CIP	YE WIN AUNG	1896-3562-12	LPB-LOS BANOS		\N
995	Sch-CIP	YEE PHYO THET	1897-1807-54	LBP-LOS BANOS		\N
996	Sch-CIP	ZALDA R. GAYAHAN	1827-1953-12	LBP-BICUTAN		\N
997	Sch-CIP	ZALDIE CONSIGO GAWAD	1827-4074-84	LBP-BICUTAN BR.		\N
998	Sch-CIP	ZAYAR SOE	1896-3562-47	LBP-LOS BANOS		\N
999	Sch-CIP	ZENAIDA DUMANSAL GUIANO	4117-0033-32	LBP-GAISANO, KORONADAL BR.		\N
1000	Sch-CIP	ZORAYDA V. ANG	1827-3620-49	LBP-BICUTAN		\N
1001	Sch-CIP	JERTZ VLYN DE LA TORRE ESCALA	3296-2606-80	LBP-JARO, ILOILO CITY BR.		\N
1002	Sch-CIP	BEATRIZ NICOLLE ABLAT OPPUS	3577-0546-48	LBP-BAYBAY CITY, LEYTE BR.		\N
1003	Sch-CIP	FRANCIS JHUN TIN AO MACALAM	1896-3229-89	LBP-CDO, KETKAI BR.		\N
1004	Sch-CIP	ANTON GARCIA ELEPANO	1896-5150-27	LBP-UP LOS BA?OS BR.		\N
1005	Sch-CIP	ANGELO CIPRA CASTRO	1897-1486-64	LBP-LOS BANOS		\N
1006	Sch-CIP	HELEN MAE NAVAL MEJIA	3577-0283-70	LBP-LEYTE		\N
1007	Sch-CIP	MARY GRACE MERCADO EUGENIO-BANAL	0597-1983-02	LBP-MANILA		\N
1008	Sch-CIP	FRANK DARYL PULANCO INDUCTIVO	2966-1928-71	LBP-SCIENCE CITY OF MU?OZ BR.		\N
1009	Sch-CIP	ROCHELLE CAGADAS OLANA	3577-0559-46	LBP-BAYBAY, LEYTE BRANCH		\N
1010	Sch-CIP	MONALAINE MARTINEZ BERMOY	5947-0309-40	LBP-BUTUAN CITY BR.		\N
1011	Sch-CIP	CHRICEL BAUTISTA LATTAO	1517-2085-46	LBP-MALACA?ANG BR.		\N
1012	Sch-CIP	BERNHARD EGWOLF	0159-0937-94	BPI-ESPA?A		\N
3491	Sch-CIP	DANTE C. DAGANDANAN	\N	\N	\N	\N
3492	\N	SAVOY HOTEL MANILA INC	\N	\N	\N	\N
1013	Sch-CIP	CARLA LENORE FERROLINO CALUMPANG	1896-3315-54	LBP-LOS BANOS		\N
1014	Sch-CIP	LEILA CZARIA DE GUZMAN SALAZAR	3117-0348-86	LBP-TAYTAY BRANCH		\N
1015	Sch-CIP	FREDDIEWEBB BUSWAY SIGNABON	1896-4958-67	LBP-UPLB BR.		\N
1016	Sch-CIP	ACE MUGSSY LINA AGUSTIN	2966-1227-25	LBP-SCIENCE CITY OF MU?OZ BR.		\N
1017	Sch-CIP	AL B. BESMONTE	0135-1271-75	LBP-LEGAZPI BR.		\N
1019	Sch-CIP	MICHELLE DANIEL LOSANEZ	0136-4661-27	LBP-LEGAZPI BR.		\N
1020	Sch-CIP	CHARLES NIETO ASAGRA	0135-0962-88	LBP-LEGAZPI BR.		\N
1022	Univs	ADAMSON OZANAM EDUCATION INC.	0039-4056-4472	BDO-UN AVE. BR		\N
1023	Univs	AMA COMPUTER UNIVERSITY	0232-1163-82	LBP-QC BR.		\N
1024	Univs	ARELLANO UNIVERSITY	0022-6304-2517	BPI-LEGARDA MANILA BR		\N
1025	Univs	ASIA PACIFIC TECHNOLOGY EDUCATIONAL FOUNDATION, INC	00202-00373-82	BDO-MAKATI BR.		\N
1026	Univs	ATENEO DE DAVAO UNIVERSITY	0162-1059-06	LBP-C.M. RECTO BRANCH		\N
1027	Univs	ATENEO DE MANILA UNIVERSITY	1462-1014-61	LBP-KATIPUNAN		\N
1029	Univs	ATENEO DE NAGA UNIVERSITY	005970-1147-24	BDO-C.M RECTO BR.		\N
1031	Univs	BATANGAS STATE UNIVERSITY	0302-1132-97	LBP-BATANGAS CITY BR		\N
1051	Univs	BU (VARIOUS ACCTS)	0132-0169-33	LBP-LEGAZPI CITY		\N
1052	Univs	BULACAN STATE UNIVERSITY - BSU	2792-1005-22	LBP-BULACAN		\N
1053	Univs	CAPIZ STATE UNIVERSITY - MAMBUSAO UNIT	0770-0208-5403-0	DBP-ROXAS		\N
1054	Univs	CCF LIFE ACADEMY FOUNDATION, INC.	000000857454-1	SECURITY BANK-SILVER CITY		\N
1055	Univs	CEBU NORMAL UNIVERSITY	3172-1024-67	LBP-CEBU CITY		\N
2146	RP	MARK JOSEPH NEPOMUCENO COMETA	0115-0719-55	LBP-URDANETA CITY		\N
1056	Univs	CENTRAL PHILIPPINE UNIVERSITY	009245-8137-48	BPI-SOLIS ST., ILOILO CITY		\N
1057	Univs	CENTRO ESCOLAR UNIVERSITY	0341-196747-001	SECURITY BANK-MENDIOLA BR.		\N
1058	Univs	CHINESE GENERAL HOSPITAL COLLEGES, INC.	0051-011358-001	SECURITY BANK-BLUMENTRITT		\N
1059	Univs	CLSU TRUST LIABILITY FUND	2961-0024-46	LBP-NUEVA ECIJA		\N
1060	Univs	CMU ACCOUNT I FUND	0352-1082-19	LBP-VALENCIA CITY BR.		\N
1061	Univs	CMU SPECIAL TF - FUND 164	0352-1113-68	LBP-VALENCIA CITY BR.		\N
1062	Univs	COLEGIO DE SAN LORENZO, INC.	1087-7000-0551	PNB-VISAYAS CONGRESSIONAL AVE.		\N
1063	Univs	COLEGIO SAN AGUSTIN	0291-0018-15	BPI-FORBES PARK, MAKATI		\N
1064	Univs	COLLEGE OF ST. CATHERINE QUEZON CITY	0361-024-449-001	SECURITY BANK-QUIRINO HIGHWAY		\N
1065	Univs	CSU CARIG SPECIAL TRUST FUND	5722-0009-53	LBP-TUGUEGARAO CITY		\N
1066	Univs	CSU CARIG SPECIAL TRUST FUND1	1021-6000-0825	UCPB-TUGUEGARAO CITY		\N
1067	Univs	DE LA SALLE UNIVERSITY	0592-1063-61	LBP-TAFT AVE MANILA		\N
1071	Univs	DEPT. OF SCIENCE & TECH. CAR	1372-0016-03	LBP-BENGUET		\N
1072	Univs	DEPT. OF SCIENCE AND TECHNOLOGY REGION I	0202-0239-16	LBP-LA UNION		\N
1073	Univs	DEPT. OF SCIENCE AND TECHNOLOGY REGIONAL OFFICE NO. III	3772-1000-42	LBP-PAMPANGA		\N
1074	Univs	DOST 13 (FOR DEPOSIT TO DOST 13 BUREAU OF TREASURY ACCOUNT RE: MOOE)	3402-2506-65	LBP-BTR-DOST 13		\N
1075	Univs	DOST IV-A	1892-1003-53	LBP-LOS BANOS		\N
1076	Univs	DOST IV-B CURRENT ACCOUNT	1822-1046-70	LBP-BICUTAN		\N
1077	Univs	DOST REGION 11	2562-0030-05	LBP-DAVAO CITY		\N
1078	Univs	DOST REGIONAL OFFICE 02	3702-1007-54	LBP-CAGAYAN		\N
1079	Univs	DOST REGIONAL OFFICE 10	0152-0392-71	LBP-CDO		\N
1080	Univs	DOST REGIONAL OFFICE NO 7	2402-1003-65	LBP-CEBU CITY		\N
1081	Univs	DOST REGIONAL OFFICE NO. 8	0182-1020-24	LBP-LEYTE		\N
1021	Univs	TECHNOLOGICAL INSTITUTE OF THE PHILIPPINES	0000-2016-8985	BDO-RECTO MANILA		\N
1070	Univs	DE LA SALLE UNIVERSITY - DASMARINAS	000961-0046-59	BPI-E. AGUINALDO HI-WAY, DASMARI?AS CAVITE		\N
1082	Univs	DOST REGIONAL OFFICE NO. IX	1952-1000-64	LBP-ZAMBOANGA		\N
1083	Univs	DOST REGIONAL OFFICE NO. V	0132-0200-94	LBP-LEGAZPI		\N
1084	Univs	DOST REGIONAL OFFICE NO. VI	2322-1032-07	LBP-ILOILO		\N
1086	Univs	DOST-PC REG XII	0372-1004-78	LBP-COTABATO CITY		\N
1087	Univs	EAST ASIA COMPUTER CENTER INC.	1581-00-2218	BPI-MORAYTA BR.		\N
1088	Univs	ELIZABETH SETON SCHOOL	042-301827196-6	METROBANK-LAS PINAS		\N
1089	Univs	EMILIO AGUINALDO EDUCATIONAL CORPORATION	0039-4056-2291	BDO-UN AVE. BR		\N
1090	Univs	EVSU TRUST FUND ACCOUNT	000-000-90775-3	DBP - TACLOBAN		\N
1091	Univs	FAR EASTERN UNIVERSITY	1583-0266-45	BPI-MORAYTA BR.		\N
1092	Univs	FATHER SATURNINO URIOS UNIVERSITY	0361-2016-47	LBP-BUTUAN CITY		\N
1093	Univs	FEU ALABANG, INC.	0931-00-1779	BPI-ALABANG		\N
1094	Univs	FEU NRMF -  SCHOOL OF MEDICAL TECHNOLOGY	117-6023-135	RCBC COMMERCIAL BANK-DAHLIA BR.		\N
1095	Univs	HOLY ANGEL SCHOOL OF CALOOCAN INC.	7-590-55956-7	RCBC SAVINGS BANK-CAMARIN		\N
1096	Univs	INFORMATICS COLLEGE MANILA INC	0045-5015-4392	BDO-RECTO MANILA		\N
1097	Univs	ITDI-BTR	3402-2552-50	LBP- (BTR-ITDI)		\N
1098	Univs	JOSE RIZAL UNIVERSITY INC.	0002-1801-5927	BDO-KALENTONG		\N
1099	Univs	LA CONSOLACION COLLEGE CALOOCAN, INC.	7590-56226-7	RCBC-SANGANDAAN		\N
1100	Univs	LA CONSOLACION COLLEGE OF DEPORO,NOVALICHES,KALOOKAN CITY, INC.	0000-0011-0301-1040	RCBC-NOVALICHES, CALOOCAN CITY		\N
1101	Univs	LA NAVAL ACADEMY, INC.	2000-0689-6207	EASTWEST-M. NAVAL ST., NAVOTAS		\N
1102	Univs	LA SALLE GREEN HILLS, INC.	1296-8035-09	RCBC-GREENHILLS		\N
1104	Univs	LEARN & EXPLORE MONTESSORI SCHOOL, INC.	5941-0477-44	BPI FAMILY SAVINGS-LIBERTAD		\N
1105	Univs	LEYTE NORMAL  UNIVERSITY - HOUSE	0775-017414-030	DBP-TACLOBAN CITY		\N
1106	Univs	LEYTE NORMAL UNIVERSITY	0182-1029-54	LBP-TACLOBAN CITY		\N
1107	Univs	LEYTE NORMAL UNIVERSITY	0181-2072-48	LBP-TACLOBAN CITY		\N
1108	Univs	LYCEUM OF ALABANG INC.	4747-4749-0400-4	METROBANK-TUNASAN, MUNTINLUPA		\N
1109	Univs	LYCEUM OF THE PHILIPPINES INC.	4953-0500-43	BPI-INTRAMUROS		\N
1112	Univs	MANILA ADVENTIST COLLEGE	0008-6000-4582	UNIONBANK-MALATE BR		\N
1113	Univs	MANILA CENTRAL UNIVERSITY	4641-1001-32	BPI-MONUMENTO		\N
1114	Univs	MAPUA INSTITUTE OF TECHNOLOGY	0012-1175-23	LBP-INTRAMUROS		\N
1115	Univs	MARIANO MARCOS STATE UNIVERSITY-IGP	2132-1043-71	LBP BATAC BRANCH		\N
1116	Univs	MARINEL FERRER AQUILATO	4757-0151-40	LBP-		\N
1117	Univs	MARY CHILES COLLEGE	002263-0341-58	BPI-LEGRADA MANILA		\N
1118	Univs	MINDANAO STATE UNIVERSITY-TRUST FUND	1262-1281-01	LBP-MARAWI CITY BRANCH		\N
1119	Univs	MMSU RLE	2132-1021-66	LBP-BATAC,ILOCOS NORTE		\N
1120	Univs	MOST BARMM	0372-1072-60	LBP-COTABATO CITY		\N
1121	Univs	MSU AT NAAWAN DOST PROJECT	0322-1124-16	LBP-ILIGAN CITY BR.		\N
1122	Univs	MSU IIT DOST	0322-1095-55	LBP-ILIGAN		\N
1123	Univs	MSU IIT INCOME	0322-1088-77	LBP-MSU, ILIGAN BR		\N
1124	Univs	MSU RSTC TRUST FUND	1262-1281-28	LBP-LANAO DEL SUR		\N
1125	Univs	MSU TCTO SPECIAL TRUST FUND TUITION FEES AND OTHERS	1242-1055-98	LBP-BONGAO BR.		\N
1126	Univs	NATIONAL CHRISTIAN LIFE COLLEGE INC.	0021-5802-2747	BDO-MARIKINA		\N
1127	Univs	NATIONAL TREASURY SCIENCE EDUCATION INSTITUTE	3402-2745-99	LBP-INTRAMUROS		\N
1128	Univs	NATIONAL UNIVERSITY	0067-5000-7529	BDO-NATIONAL UNIVERSITY MANILA		\N
1129	Univs	NEW ERA UNIVERSITY	0622-1030-10	LBP-QC CIRCLE		\N
1130	Univs	NUEVA VIZCAYA STATE UNIVERSITY	0432-1028-82	LBP- BAYOMBONG BR.		\N
1131	Univs	OUR LADY OF FATIMA UNIVERSITY	0251-0184-21	LBP-VALENZUELA BR.		\N
1132	Univs	PALAWAN STATE UNIVERSITY	0-1203-635-6	DBP-PUERTO PRINCESA BR.		\N
1133	Univs	PATTS COLLEGE OF AERONAUTICS INC.	0321-0323-22201	SECURITY BANK-SUCAT		\N
1134	Univs	PCAARRD TRUST FUND	1892-1036-11	UP LOS BANOS		\N
1135	Univs	PCARI SCHOLARSHIPS PROJECT	1822-1049-80	LBP-BICUTAN		\N
1136	Univs	PCHRD	1822-1048-66	LBP-BICUTAN		\N
1137	Univs	PHIL ASSN FOR GOVT BUDGET ADMINISTRATION, (PAGBA), INC.	1692-1000-30	LBP-COA BR.		\N
1138	Univs	PHIL CHRISTIAN UNIVERSITY CORP (DELIVERING HIGHER EDUC INST)	0591-1952-04	LBP-MALATE MANILA BR.		\N
1139	Univs	PHILIPPINE ASSOCIATION FOR THE ADVANCEMENT OF SCIENCE AND TECHNOLOGY, INC.	658-7658020567	METROBANK-PASIG		\N
1140	Univs	PHILIPPINE BRITISH ASSURANCE CO INC	0051-5319-30	LBP-BUENDIA BR.		\N
1141	Univs	PHILIPPINE COUNCIL FOR HEALTH AND RESEARCH AND DEVELOPMENT(FOR DEPOSIT TO PCHRD\\S BTr Acct. RE:MOOE)	3402-2679-16	LBP-(BTR-PCHRD)		\N
1143	Univs	PHILIPPINE NORMAL UNIVERSITY - NCGSME	1982-1082-05	LBP-MANILA		\N
1144	Univs	PHILIPPINE SOCIAL SCIENCE COUNCIL INC	0701-1362-41	LBP-QC CIRCLE		\N
1145	Univs	PHILIPPINE WOMENS UNIVERSITY	3402-1018-99	LBP-MALATE MANILA BR.		\N
1146	Univs	PNU PROJECT DIRECTOR (DOST)	1982-1011-20	LBP-MANILA		\N
1147	Univs	PNU SPECIAL TRUST FUND	1982-1011-38	LBP-ERMITA BRANCH		\N
1148	Univs	PROJECT DIRECTOR PROJECT RISE/MUST RSTC-WMSU	3232-1005-90	LBP-ZAMBOANGA		\N
1149	Univs	PUP TRUST RECEIPTS INCOME 164	0682-1020-47	LBP STA MESA MANILA		\N
1150	Univs	QUEZON CITY ACADEMY FOUNDATION, INC.	000-678-048-269	BDO-QUEZON CITY		\N
1151	Univs	RONADANE NARIDO LIWANAG	1897-1141-74	LBP-LOS BANOS		\N
1153	Univs	ROOSEVELT COLLEGE, INC.	00-4000-181-109	BDO-MARCOS HIGHWAY		\N
1154	Univs	RTU (DOST-SEI SCHOLARSHIP FUND)	2312-1004-55	LBP-SHAW BLVD BRANCH		\N
1155	Univs	SAINT LOUIS UNIVERSITY INC	0222-0208-24	LBP-BAGUIO CITY BRANCH		\N
1156	Univs	SAINT MARYS UNIVERSITY	0431-1803-91	LBP-BAYOMBONG,NUEVA VIZCAYA BR.		\N
1157	Univs	SCIENCE EDUCATION INSTITUTE	1821-1964-65	LBP-BICUTAN		\N
1152	Univs	RONNE MATTHEWS CASTILLO	1897-1514-28	LBP-LOS BANOS		\N
1103	Univs	LBP BICUTAN BRANCH		BICUTAN		\N
1110	Univs	MALAYAN COLLEGES INC - DOST-SEI	0012-1183-17	LBP-INTRAMUROS		\N
1111	Univs	MALAYAN COLLEGES, INC	0012-1183-09	LBP-INTRAMUROS		\N
1159	Univs	SEI-ATM PAYROLL ACCOUNT	1822-1031-42	LBP-BICUTAN		\N
1160	Univs	SEIEA  MUTUAL BENEFIT FUND	1821-1567-22	LBP-BICUTAN		\N
1161	Univs	SEI-EA PISO PISO FUND	1821-2005-19	LBP-BICUTAN		\N
1162	Univs	SILLIMAN UNIVERSITY	0291-1480-00	LBP-DUMAGUETE BRANCH		\N
1163	Univs	SMDKIA FOUNDATION, INC.	0040-8124-1509	UCPB-DON RUFINO ALONZO ST.,COTABATO CITY		\N
1164	Univs	SOUTHVILLE INTERNATIONAL SCHOOL AND COLLEGES	4611-0042-36	BPI-LAS PI?AS BR		\N
1165	Univs	ST SCHOLASTICA\\S COLLEGE-(SHSVP)	0592-1067-36	LBP-TAFT AVE. MANILA BR.		\N
1166	Univs	ST. DOMINIC SAVIO COLLEGE, INC.	2000-2397-5938	EASTWEST BANK-CALOOCAN		\N
1167	Univs	ST. JAMES ACADEMY	4863-0503-89	BPI-MALABON		\N
1169	Univs	ST. PAUL UNIVERSITY QUEZON CITY, INC.	0401-0070-32	BPI-BROADWAY		\N
1170	Univs	STI COLLEGE ALABANG, INC.	0851-0215-1200-1	SECURITY BANK-ALABANG-ACACIA		\N
1171	Univs	STO. NINO CATHOLIC SCHOOL INC.	0200-1000-2064	ASIA UNITED BANK-BGC, TAGUIG		\N
1172	Univs	SYSTEMS PLUS COMPUTER COLLEGE OF KALOOKAN, INC.	1408-0000-3543	CHINABANK-1OTH AVE, CALOOCAN CITY		\N
1173	Univs	TECHNOLOGICAL INSTITUTE OF THE PHILIPPINES	0028-2004-2224	BDO-NOTRE DAME BR		\N
1174	Univs	TECHNOLOGICAL INSTITUTE OF THE PHILS	1512-1041-14	LBP-MALACA?ANG BRANCH		\N
1175	Univs	TECHNOLOGICAL UNIVERSITY OF THE PHILS.	2812-1000-01	LBP-FTI		\N
1176	Univs	TRESTON INTERNATIONAL COLLEGE, INC.	003721-0072-42	BPI-MAKATI CITY		\N
1177	Univs	TRINITY POLYTECHNIC COLLEGE, INC.	004543-1515-35	BPI-SARMIENTO, NOVALICHES		\N
1178	Univs	TRINITY UNIVERSITY OF ASIA, INC.	223-000821-0	CHINABANK-QUEZON CITY BR.		\N
1179	Univs	TUP-DOST-SEI	0592-1051-87	LBP-MANILA		\N
1180	Univs	U.P. DILIMAN TRUST FUND	0455-010531-030	DBP-COMMONWEALTH		\N
1181	Univs	U.P. VISAYAS TRUST FUND	3052-1014-91	LBP-MIAG-AO BRANCH		\N
1182	Univs	UNITED CHRISTIAN ACADEMY, INC.	0014-7800-1969	BDO-BF HOMES SOUTHPARK		\N
1183	Univs	UNIV OF SANTO TOMAS	3721-0001-40	LBP-ESPANA		\N
1184	Univs	UNIVERSITY OF SAN CARLOS	0141-4138-56	LBP-JONES BRANCH		\N
1185	Univs	UNIVERSITY OF SANTO TOMAS	0151-0000-45	BPI-ESPA?A		\N
1186	Univs	UNIVERSITY OF SCIENCE AND TECHNOLOGY OF SOUTHERN PHILIPPINES (USTP)	2412-1013-86	LBP-VELEZ BRANCH		\N
1187	Univs	UNIVERSITY OF SOUTHEASTERN PHILIPPINES-CDM	0-00594-915-7	DBP-DAVAO BR.		\N
1188	Univs	UNIVERSITY OF ST LA SALLE INC	0421-2528-82	LBP-BACOLOD		\N
1189	Univs	UNIVERSITY OF THE CORDILLERAS	3551-0090-91	LBP-CAGAYAN		\N
1190	Univs	UNIVERSITY OF THE EAST	1512-1022-78	LBP-MALACA?ANG		\N
1191	Univs	UNIVERSITY OF THE PHILIPPINES BAGUIO TRUST DOST PROJECT	0222-0258-42	LBP-BAGUIO CITY BRANCH		\N
1192	Univs	UP MANILA TRUST LIABILITY	0411-036684-032	DBP- MANILA		\N
1193	Univs	UP OPEN UNIVERSITY FOUNDATION, INC.	0911-0656-14	BPI- LOS BANOS		\N
1194	Univs	UP OPEN UNIVERSITY REVOLVING FUND	1892-1029-92	LBP-UPLB BRANCH		\N
1195	Univs	UP OPEN UNIVERSITY TRUST FUND	1892-1029-25	LBP-LOS BANOS		\N
1197	Univs	UPD REVOLVING FUND	3072-1006-96	LBP-DILIMAN		\N
1198	Univs	UPLB FOUNDATION, INC.-GENERAL FUND	1892-1003-29	LBP-UPLB BRANCH		\N
1199	Univs	UPLB SPECIAL REVOLVING FUND	1892-1004-93	LBP-LOS BANOS		\N
1200	Univs	UPLB TRUST PROJECT FUND	1892-1005-07	LBP-LOS BANOS		\N
1201	Univs	UPSITF TRAININGS	3071-0461-75	LBP-UP DILIMAN BR		\N
1202	Univs	UPV TACLOBAN COLLEGE	0182-1056-19	LBP-TACLOBAN		\N
1203	Univs	USTP-EXTERNAL FUNDS	2412-1089-25	LBP-CAGAYAN DE ORO BR.		\N
1204	Univs	VISAYAS STATE UNIVERSITY - 101 TRUST	3572-1000-48	LBP-LEYTE		\N
1205	Univs	WEST VISAYAS STATE UNIVERSITY	00-0-00630-755-1	DBP- ILOILO		\N
1206	Univs	WVSU (ASTHRDP-SECC)	0032-1513-70	LBP-ILOILO		\N
1211	RP	ABDULAZIZ H. DAPILIN	0195-1091-76	LBP-ZAMBOANGA CITY		\N
1212	RP	ABDULLAH AYOB LATIP	0376-5087-90	LBP-ESTOSAN BRANCH		\N
1213	RP	ABEGAIL G. PAPONG	1897-1462-62	LBP-LOS BA?OS BRANCH		\N
1214	RP	ABIGAEL L. CESAR	6051-0200-6388	Chinabank Savings-Mutya		\N
1215	RP	ABRIEL S. BULASAG	1897-0646-73	LBP-UPLB		\N
1216	RP	ADAIAH  PRESTO	1987-3028-40	LBP-YMCA BRANCH		\N
1217	RP	ADAIAH C. PRESTO	6355-1929-64	DBP-PUERTO PRINCESA		\N
1218	RP	ADAM ROY V. GALOLO	0805-650232-500	DBP-CARAGA		\N
1219	RP	ADELAIDA B. ELAMPARO	5157-6639-43	LBP-GSIS HEAD OFFICE BRANCH		\N
1220	RP	ADELIENE EVE G. PARASO	3219-0865-03	BPI-CORINTHIAN PLAZA,MAKATI BR.		\N
1221	RP	ADELIENE EVE GAYYA PARASO	3076-1273-94	LBP-UP DILIMAN BR		\N
1222	RP	ADELISA DE CASTRO FLORENDO	0207-1149-10	LBP-SAN FERNANDO LA UNION		\N
1223	RP	ADELO PEREIRA NATIVIDAD	0596-1850-10	LBP-PACO MANILA		\N
1224	RP	ADONIS TAER GALLENTES	3077-1353-82	LBP-DILIMAN		\N
1225	RP	ADORA T. ORTIZ	1827-3628-12	LBP-BICUTAN		\N
1226	RP	AGUSTIN OWEN PENA	8446-8357-07	BPI-		\N
1227	RP	AGUSTIN OWEN VELARDE PENA	2485-0230-06	LBP-LAGUNA		\N
1228	RP	AHL GERALDE BALITAON	8909-1558-36	BPI- SORSOGON		\N
1229	RP	AILAH JALOTJOT	0919-3827-08	BPI SAVINGS BANK-LOS BANOS		\N
1230	RP	AILEEN C. GARCELLANO	00-5-12047-635-8	DBP-PUERTO PRINCESA CITY BR		\N
1231	RP	AILEEN FAY MOLINYAWE VILLEGAS	1826-1979-15	LBP-DOST BR.		\N
1232	RP	AILENE RUBITO ABELARDO	0707-1596-69	LBP-QUEZON CIRCLE		\N
1233	RP	AIMEE  LYNN B. DUPO	1897-0438-11	LBP- LOS BA?OS		\N
1234	RP	AIRENE D. ROSETE	2737-0287-23	LBP-COTABATO CITY		\N
1235	RP	ALBERT DE OCAMPO MONTINO	2055-0222-51	LBP-TRECE MARTIRES CITY BR.		\N
1236	RP	ALBERT MATIAS PALLAYA	1827-4956-93	LBP-BICUTAN		\N
1237	RP	ALDOUS CESAR F. BUENO	1587-0990-86	LBP-CLARK		\N
1238	RP	ALELI R. MARTIN	2137-0218-49	LBP-ILOCOS NORTE		\N
1196	Univs	UPD TRUST FUND	3072-1007-18	LBP-DILIMAN		\N
1239	RP	ALETTA T. YNIGUEZ	0229-0019-01	BPI-THE GROVE BY ROCKWELL BR		\N
1240	RP	ALETTA T. YNIGUEZ	3077-0406-67	LBP-UP DILIMAN		\N
1241	RP	ALEXANDER DOMINIC MAYORALGO	0069-5501-18	BPI-MAKATI		\N
1242	RP	ALEXANDER JR FERNICOL PADILLA	3077-1526-60	LBP-UP DILIMAN BR		\N
1243	RP	ALEXANDER R. MADRIGAL	1897-0503-38	LBP-LOS BANOS		\N
1244	RP	ALEXIS CASTILLO ALBO	2035-0628-26	LBP-PINAMALAYAN BRANCH		\N
1245	RP	ALEXIS M. ORTIZ	1827-3224-20	LBP-BICUTAN		\N
1246	RP	ALFONS JAYSON ORBASE PELGONE	2765-0368-04	LBP-ALBAY		\N
1248	RP	ALFRAYZAR C. MULSID	1920-0109-88	BDO-SM CITY BATANGAS		\N
1249	RP	ALICIA ASIONG BALACUA	1377-0578-60	LBP-LA TRINIDAD, BENGUET		\N
1250	RP	ALISON C. EMADEM	1826-2021-61	LBP-BICUTAN		\N
1251	RP	ALJAMAL RONGCO BANTILAN	2746-3177-11	LBP-COTABATO CITY		\N
1252	RP	ALLAN MESA CANONIGO	3077-0689-36	LBP-UP DILIMAN		\N
1253	RP	ALLEN DARYL FERRER ASUELO	0037-1889-80	LBP-ILOILO		\N
1254	RP	ALLEN DENNIS T. PULMA	0017-2482-51	LBP-INTRAMUROS		\N
1255	RP	ALLIA MARIA YSABELL ISIDRO ACOSTA	3076-1023-08	LBP-UP DILIMAN,QC		\N
1256	RP	ALUMANDA M. DELA ROSA	0237-0947-94	LBP-WEST AVE.		\N
1257	RP	ALYSSA FATMAH SARIP MASTURA	0327-1570-00	LBP-ILIGAN CITY		\N
1258	RP	ALYSSA M. PELEO ALAMPAY	3077-0206-66	LBP-Q.C.		\N
1259	RP	ALYZIA ANDREA ADORNA	1827-2551-02	LBP-BICUTAN		\N
1260	RP	AMARYLLIS T. TORRES	0089-4002-3361	BDO-TANDANG SORA BR		\N
1261	RP	AMEERHA P. ORTEGA	3776-0438-09	LBP-SAN FERNANDO		\N
1262	RP	AMELIA T. BUAN	0327-0211-68	LBP-ILIGAN		\N
1263	RP	AMELIA Z. DAQUIOAG	2966-0132-50	LBP-CLSU MUNOZ		\N
1264	RP	AMIE V. SANCHEZ	2000-4405-1078	EASTWEST, ROSARIO		\N
1265	RP	AMIEL ARANO ABACAN	0307-0863-95	LBP-BATANGAS CITY		\N
1266	RP	AMINA JAVELLANA	2569-3993-46	BPI-SHANGRI-LA PLAZA		\N
1268	RP	AMYRA S. MOHAMMAD	3237-0112-86	LBP-ZAMBOANGA CITY		\N
1269	RP	ANA JAMILLE ADVINCULA RESTUBOG	0695-0390-42	LBP-CONGRESSIONAL,QC		\N
1270	RP	ANA LIZA C. ARMAS	2255-0013-05	LBP-LUNA, APAYAO		\N
1271	RP	ANA ROSE M. FACULIN	0775-0276-65	LBP-ANTIQUE		\N
1272	RP	ANALIZA CANDELARIA CLAUREN	0707-1273-76	LBP-PHILCOA BRANCH		\N
1273	RP	ANALIZA MANANSALA DE LEON	1587-0850-42	LBP-PAMPANGA		\N
1274	RP	ANALYNE A. GUEVARA	0436-0629-74	LBP-SOLANO, N.V.		\N
1275	RP	ANASTACIA BALLESIL ALVAREZ	1466-0268-71	LBP-LOYOLA HEIGHTS BR.		\N
1276	RP	ANDALUS JULIE T. PUNONGBAYAN	1827-1324-42	LBP-BICUTAN		\N
1277	RP	ANDREW D. MONTECILLO	1897-0670-01	LBP-UPLB		\N
1278	RP	ANGEL TALONGON BASBASAN JR	1827-3621-54	LBP-BICUTAN BRANCH		\N
1279	RP	ANGELA C. CASTILLO	2255-0032-94	LBP-LUNA, APAYAO		\N
1280	RP	ANGELINA N. RAMIREZ	5106-9477-42	LBP-ILOILO		\N
1281	RP	ANGELITA V MIRANDA	1807-0054-10	LBP-PASEO BRANCH		\N
1282	RP	ANGELITA V. SEEPING	2967-0094-85	LBP-NUEVA ECIJA		\N
1283	RP	ANGEL\\S JADE CANTEEN	6292-3750-0015	PNB-UN AVENUE		\N
1284	RP	ANGELYN SALVADOR IDALA	1827-5343-89	LBP-BICUTAN BRANCH		\N
1285	RP	ANGIE MELEA A. JUANICH	00-5040-1631-00	BDO-PUERTO PRINCESA CITY BR		\N
1286	RP	ANITA B. GUBALANE	0776-1861-20	LBP-ANTIQUE		\N
1287	RP	ANITA G. MALAZARTE	5-10609-635-0	DBP-PUERTO PRINCESA		\N
1288	RP	ANJELA VERONICA S. ZARASPE	0307-1250-80	LBP-BATANGAS		\N
1289	RP	ANNA CHERYLLE RAMOS	0171-436379-200	SECURITY BANK-UST BR		\N
1290	RP	ANNA LIZA BAYUBAY SAET	1826-0962-05	LBP-BICUTAN BRANCH		\N
1291	RP	ANNA MA RITA C. TICA AMRT ENTERPRISES	0231-1663-94	LBP-WEST AVE.		\N
1292	RP	ANNA MARIE SISANTE DAIGAN	1897-0934-79	LBP-LOS BA?OS BRANCH		\N
1293	RP	ANNA MONICA DULATRE BORDADO	1897-1457-54	LBP-LOS BA?OS BRANCH		\N
1294	RP	ANNABELLE V. BRIONES	1827-3807-30	LBP-BICUTAN		\N
1295	RP	ANNIE B. QUITALEG	0596-1197-94	LBP-MANILA		\N
1297	RP	ANTHONY SORIA ILANO	0936-1046-57	LBP-Bogo City,Cebu Branch		\N
1298	RP	ANTONETTE UYACO DONATO	3296-2247-14	LBP-JARO, ILOILO BRANCH		\N
1299	RP	ANTONIO  V. FERRER	1987-1297-23	LBP-YMCA BRANCH		\N
1300	RP	ANTONIO JULIAN L. BOTOR AB SURVEYING & DEVELOPMENT	1411-1413-29	LBP-Antipolo Branch		\N
1301	RP	ANTONIO MARTIN BASILIO	0166-4121-70	LBP-DAVAO		\N
1302	RP	ANTRIMAN VIPINOSA ORLEANS	1987-1277-12	LBP-YMCA BRANCH		\N
1303	RP	ANWAR ZEUS SAAVEDRA PATTUINAN	0327-1024-27	LBP-ILIGAN BRANCH		\N
1305	RP	ARADE LOUISE P. VILLENA	402-3-402-36401-8	METROBANK SAVINGS ACCT-ANTIPOLO		\N
1306	RP	ARIEL LAGDAMEO BABIERRA	1896-0700-50	LBP-UP LOS BA?OS BR.		\N
1307	RP	ARIEL PESADO BUSA KFB CATERING SERVICES	3811-0142-13	LBP-CARIGARA BR.		\N
1308	RP	ARIEL REY ZAMUDIO	0707-0724-74	LBP-BICOL		\N
1309	RP	ARIES NIEPES OLIVEROS	1587-0851-23	LBP-CLARK BRANCH		\N
1311	RP	ARJAY C. ESCONDO	1827-4135-73	LBP-BICUTAN		\N
1312	RP	ARJAY S. ARNAO	1827-3806-08	LBP-BICUTAN		\N
1313	RP	ARLENE A. PASCASIO	5277-0108-03	LBP-		\N
1314	RP	ARLENE ELIGADO DAYAO	0137-0953-60	LBP-LEGASPI ALBAY		\N
3620	\N	ZENITH ARNEJO				\N
1315	RP	ARLENE GONZALES TORRE	0037-1889-13	LBP-ILOILO		\N
1316	RP	ARLENE L. TABAQUERO	0436-0900-21	LBP-NUEVA VIZCAYA		\N
1317	RP	ARLON PONCE CADIZ	1695-0079-10	LBP-BULACAN		\N
1318	RP	ARMANDO JR. P. HERRERA	2317-0659-68	LBP-MANDALUYONG BR.		\N
1319	RP	ARMANDO QUINES GANAL	0207-1534-60	LBP-LA UNION		\N
1320	RP	ARMINDA V. SANTIAGO	3077-0169-10	LBP-QUEZON CITY		\N
1321	RP	ARNOLD ASOTIGUE	1267-0041-50	LBP-MARAWI CITY BR.		\N
1322	RP	ARNOLD BIOL ASOTIGUE	2556-2028-61	LBP-SINDANGAN, ZAMBOANGA DEL NORTE BR.		\N
1323	RP	ARNOLD BONGABONG BARTOLATA  JAR CATERING SERVICES	0321-2281-78	LBP-ILIGAN CITY		\N
1324	RP	ARNOLD JR. M. DOMINGO 	2255-0191-40	LBP-LUNA, APAYAO		\N
1325	RP	ARNOLD R ELEPANO	1897-0592-20	LBP-UP LOS BANOS		\N
1326	RP	ARNOLD VELEZ	1008-7800-4626	UNION BANK-SALCEDO-MAKATI		\N
1327	RP	ARNOLD VILLAFLOR HALLARE	3076-0750-50	LBP-UP DILIMAN		\N
1328	RP	ARTEMIO B. LARANO	1827-3433-62	LBP-BICUTAN		\N
1329	RP	ARTEMIO P. SEATRIZ	0266-0607-50	LBP-ILOCOS NORTE		\N
1330	RP	ARTURO M. TOLENTINO	002859-2695-94	BPI-DISTRICT DASMARI?AS		\N
1331	RP	ASSOCIATION OF GOVERNMENT INTERNAL  AUDITORS, INC.	3402-1031-31	LBP-Q.C.		\N
1332	RP	ASTERIO CUTIT MADALLA	1375-0223-85	LBP-BENGUET		\N
1333	RP	AUBREY COGONON GUERRERO	3237-0185-23	LBP-ZAMBOANGA CITY		\N
1334	RP	AUBREY MAY FLORES BALIGNOT	1955-0224-47	LBP-ZAMBOANGA CITY		\N
1335	RP	AURA CASTILLO MATIAS	3077-0341-52	LBP-UP DILIMAN BR.		\N
1336	RP	AURORA DUNGCA DELA ROSA	1676-0938-73	LBP-CAMP AGUINALDO		\N
1337	RP	AURORA L. PEREZ	1825-0418-90	LBP		\N
1338	RP	AVEATE MANAGEMENT CORPORATION	2722-1026-41	LBP-MARIKINA CITY		\N
1339	RP	AVP CATERING SERVICES BY ALICIA VILLAR PENA	0131-2515-48	LBP-LEGAZPI		\N
1340	RP	BARTOLOME CAGAS	1267-0342-45	LBP-MARAWI CITY BR.		\N
1341	RP	BASHER O. JAMAHALI	0000-0496-7999-2	SECURITY BANK-PAGADIAN BR.		\N
1342	RP	BASHER ONG  JAMAHALI	1956-1860-79	LBP-ZAMBOANGA CITY		\N
1343	RP	BAYOSA AYA BELARMINO CARINO-VALDEZ	1466-0723-18	LBP-KATIPUNAN		\N
1344	RP	BELINDA E. REVILLAS	0479-4364-36	BPI-PUERTO PRINCESA CITY		\N
1345	RP	BELLVIEW KUZZINA BAR BY MARIECAR J. MASAYON	1911-0624-84	LBP-SIQUIJOR		\N
1346	RP	BENIGNO C. MONTEMAYOR JR	0237-1143-02	LBP-WEST AVE.		\N
1347	RP	BENITO ARAGON BAJE	3507-0391-61	LBP-CEBU		\N
1348	RP	BERNABE L. LINOG	0805-365-840-560	DBP-BUTUAN CITY		\N
1349	RP	BERNADETH CRUZ DARAN	3347-0174-33	LBP-DECS EXT. OFFICE PASIG		\N
1350	RP	BERNADETTE B. GARCIA	1827-3954-00	LBP-BICUTAN		\N
1352	RP	BERNARD C. LLAGUNO	0237-0956-69	LBP-WEST AVE.		\N
1353	RP	BERNARD R. PUNZALAN  II	0707-0744-26	LBP-PHILCOA BRANCH		\N
1354	RP	BERNIE C. CANGREJO	000-740-385-224	BDO-JARO, ILOILO CITY		\N
1355	RP	BERRIS CUISINE 	065-331-00-1426	PS BANK LOS BANOS		\N
1356	RP	BERT AGPUON GAMIAO	2137-0586-61	LBP-ILOCOS NORTE		\N
1357	RP	BEVERLY JAVIER BRAVO	8329-2234-43	BPI-MUNTINLUPA BR		\N
1358	RP	BEVERLY M. BANIAGA	005552-9455-52	DBP-TABUK, KALINGA BR.		\N
1359	RP	BIANCA CLAUDETTE R. CANLAS	1826-1802-57	LBP-BICUTAN		\N
1360	RP	BICOL FOOD DELIGHTS CATERING SERVICES	0131-2879-84	LBP-LEGASPI BR.		\N
1361	RP	BILLY JOSEPH M.  BAUTISTA	3076-0813-60	LBP-DILIMAN		\N
1362	RP	BIN JEREMIAH DUENAS BARBA	0237-1690-42	LBP-WEST AVE.		\N
1363	RP	BLANCA  ALEJANDRO	1093-6101-4543	PS BANK-		\N
1364	RP	BLESSILDA SUMABAT	0075-3002-0711	BDO-MANILA		\N
1366	RP	BONIFACIA Y. FLORES	1826-1682-65	LBP-BICUTAN		\N
1367	RP	BRANDON CYRIL S. LIRA	4339-3874-49	BPI-EASTWOOD CITY		\N
1368	RP	BRENDA ABARRACOSO PELAGIO	1587-1099-52	LBP-RIZAL BRANCH		\N
1369	RP	BRENDA VALDEZ PAO ITON	1056-1870-29	LBP-TABUK, KALINGA		\N
1370	RP	BRENDALYN D. DUMALLEG	1057-0257-66	LBP-TABUK, KALINGA		\N
1371	RP	BRIAN JUN AQUINO	264-3-91998657-4	METROBANK-Burgos Circle BGC branch		\N
1372	RP	BRYAN ACOCOS HIDALGO	2525-0474-18	LBP-BURGOS LA		\N
1373	RP	BRYAN PANA MANALO	0307-0772-05	LBP-BATANGAS		\N
1374	RP	BRYANT C. ACAR	00-5-67367-735-4	DBP-COLON CEBU CITY BR.		\N
1375	RP	CANDY DELOS REYES	1098-6629-2202	UNIONBANK-CEBU CITY		\N
1376	RP	CANDY S. VALDECANAS	1827-3921-93	LBP-BICUTAN		\N
1377	RP	CARA MICAH REYES SUMABAT	1896-3800-08	LBP-LOS BA?OS		\N
1378	RP	CARL FRANCIS ORATE JAVATE	1826-2262-49	LBP-BICUTAN		\N
1379	RP	CARLINA CACACHO SAGISI	2255-0178-56	LBP-LUNA, APAYAO		\N
1380	RP	CARLO ABUNDO ARCILLA	0237-1867-02	LBP-Q.C.		\N
1382	RP	CARLOS MATTI OPPUS	3086-0920-13	BPI SAVINGS- KATIPUNAN Q.C		\N
1383	RP	CARLOS PRIMO C. DAVID	3077-0327-88	LBP-UP BRANCH		\N
1384	RP	CARLUZ BAUTISTA	1826-1849-53	LBP-BICUTAN		\N
1385	RP	CARMELA VANNETTE BESA VICERA	3727-0074-22	LBP-ESPA?A		\N
1386	RP	CARMELITA PABITON	6253-1812-71	BPI-BETTERLIVING		\N
1387	RP	CARMINDA ROSAL TANDELCARMEN	1826-0131-64	LBP-BICUTAN		\N
1388	RP	CAROUSEL PRODUCTIONS INC.	0160-3000-3534	UNIONBANK-SHAW BLVD. PASIG		\N
1389	RP	CARYL DE LA SERNA BENJAMIN	3077-0360-74	LBP-UP DILIMAN		\N
1390	RP	CATHERINE A. PANOY	8399-1112-27	BPI-SUBIC BRANCH		\N
1391	RP	CATHERINE VISTRO YU	1466-0568-51	LBP-KATIPUNAN		\N
1392	RP	CECILE CHAN DUNGOG	1827-2177-31	LBP-BICUTAN		\N
1394	RP	CECILIA S. QUINDARA	1827-3225-86	LBP-BICUTAN		\N
1395	RP	CEDRIC DAEP	0859-0443-87	BPI-LEGAZPI ALBAY		\N
1396	RP	CELIA OPRENARIO ASAAD	0237-0926-94	LBP-WEST AVE.,Q.C		\N
1397	RP	CELIA RIVERA BALBIN	3077-0197-06	LBP-UP CAMPUS,DILIMAN		\N
1398	RP	CELINA P. SARMIENTO	1987-1707-23	LBP-YMCA BRANCH		\N
1399	RP	CELSO G. ZARA	0307-0813-26	LBP-BATANGAS CITY		\N
1400	RP	CELYN CARINO DOLATRE	0295-0007-32	LBP-DUMAGUETE CITY		\N
1401	RP	CERILINA MALICDEM MARAMAG	3077-0234-28	LBP-KATIPUNAN BR.		\N
1402	RP	CESAR A. RESTAURO, JR.	5397-9073-50	DBP-CEBU CITY BR.		\N
1404	RP	CESAR JR ANGCOS RESTAURO	0146-3712-99	LBP-CEBU CITY BR		\N
1405	RP	CEZAR ROMERO PEDRAZA	1447-0094-35	LBP-MANILA		\N
1406	RP	CHARISSE TONGSON REYES	1897-1133-99	LBP-UPLB BRANCH		\N
1407	RP	CHARITY A. ALDOVER	0307-0105-69	LBP-BATANGAS		\N
1408	RP	CHARITY MULIG CRUZ	0327-0181-91	LBP-ILIGAN		\N
1409	RP	CHARLA ROCHELLA GINO GINO SANTIAGO	3077-0415-40	LBP-UP DILIMAN,QC		\N
1410	RP	CHARLENE P. RECENTES	1897-1327-76	LBP-LOS BANOS		\N
1411	RP	CHARLENE U. BASIG	1827-3439-07	LBP-BICUTAN		\N
1412	RP	CHARLINDO TORRION	3577-0232-46	LBP-BAYBAY LEYTE		\N
1413	RP	CHARMAIGNE DACLES AGUIRRE	0037-2346-80	LBP-ILOILO BRANCH		\N
1414	RP	CHARMAINE A. MALONZO	0137-1196-84	LBP-LEGASPI		\N
3501	\N	DAVID J ALCARDE JR.	\N	\N	\N	\N
3502	\N	ARIEL SALARDA	\N	\N	\N	\N
1415	RP	CHARMAINE VILLANUEVA VILLAMIL	0707-1451-61	LBP-QC CIRCLE BR.		\N
1416	RP	CHATTY MAE MONDEJAR GO	0706-1852-08	LBP-PHILCOA BRANCH		\N
1417	RP	CHELCEY LAUREN T. LIM	0023-4036-1601	BDO-ROCKWELL-POWERPLANT		\N
1418	RP	CHERRT G. GONZALES	3406-0470-23	LBP-KATIPUNAN		\N
1419	RP	CHERRY G. GONSALES	1827-3432-65	LBP-BICUTAN		\N
1420	RP	CHERRY GILLADO GONZALES	1827-2273-62	LBP-BICUTAN		\N
1421	RP	CHERRY MAE CAUSAPIN SIGNO	2055-0462-90	LBP-TRECE MARTIRES CITY BR.		\N
1422	RP	CHERRY S. TAMAYAO	0695-0355-19	LBP-CONGRESSIONAL		\N
1423	RP	CHERRYLENE M. BOLANTE	1896-4700-82	BPI-MANDALUYONG BR		\N
1424	RP	CHERRYLL V. GUZMAN	00-5-17167-635-4	DBP-PUERTO PRINCESA CITY BR		\N
1425	RP	CHERYL LYN C. DELGADO	5-18594-755-3	DBP-ILOILO CITY BR		\N
1426	RP	CHERYL M. JUICO	1725-0021-37	LBP-QUEZON CITY		\N
1427	RP	CHINELO MENDEZ CARDANO	3577-0280-60	LBP-BAYBAY CITY, LEYTE BRANCH		\N
1428	RP	CHOZARA PATRIMONIO DUROY	2785-0360-61	LBP-ALBAY		\N
1429	RP	CHRIS PAULINE MARQUEZ ALBERCA	1827-5758-91	LBP-BICUTAN		\N
1430	RP	CHRISALYN D. YSULAT	0775-0367-45	LBP-ANTIQUE		\N
1431	RP	CHRISHA KATE DE LEON DIMAPILIS	0695-0889-06	LBP-CONGRESSIONAL, Q.C		\N
1432	RP	CHRISTIAN DAVE VELARDE ALQUIZAR	1006-3334-07	LBP-COTABATO CITY		\N
1433	RP	CHRISTIAN G. ABALOS	5059-5977-57	DBP-TACLOBAN CITY		\N
1434	RP	CHRISTIAN JEFFREY HIDALGO	003-41026220-7	BDO-SILVER CITY BR.		\N
1435	RP	CHRISTIAN MARK SAMSON ISON	0707-1273-68	LBP-QUEZON CIRCLE		\N
1436	RP	CHRISTINA Y. LOQUERE	0805-662407-500	DBP-CARAGA		\N
1437	RP	CHRISTINE ANN SALDITOS TILA	1896-3223-34	LBP-LOS BA?OS BRANCH		\N
1438	RP	CHRISTONY GUINANGHAN DUYAPAT	1377-1329-35	LBP-LA TRINIDAD, BENGUET BR.		\N
1439	RP	CHRISTOPHER C. DACANAY	0159-2540-97	BPI-ESPA?A		\N
1440	RP	CHRISTOPHER C. DELOS REYES	0076-1861-20	LBP-TARLAC CITY		\N
1441	RP	CHRISTOPHER DE LEON	1010-0000-5795-1014	CARD BANK SOCORRO, ORIENTAL MINDORO		\N
1442	RP	CHRISTOPHER NEWHALL	0849-0002-09	BPI-LEGAZPI ROTONDA		\N
1443	RP	CHRISTOPHER OCHOA LUMBA	3775-0175-37	LBP-PAMPANGA		\N
1444	RP	CHRISTY ANN MINA RAHON	2137-0221-95	LBP-ILOCOS NORTE BR.		\N
1445	RP	CHRYSLINE MARGUS N. PINOL	1897-0453-42	LBP-LOS BANOS		\N
1446	RP	CLARINDA G. REYES	1827-2046-05	LBP-BICUTAN BRANCH		\N
1447	RP	CLARISSA G. VILLANUEVA	0087-0876-11	LBP-PAMPANGA		\N
1448	RP	CLARISSA TOMBO  BALOLOT	3237-0087-30	LBP-ZAMBOANGA CITY		\N
1450	RP	CLEODETTE LAGATA	3089-3376-57	BPI-LOYOLA BRANCH		\N
1451	RP	CLEODETTE LATAGAN LAGATA	1467-0734-90	LBP-KATIPUNAN		\N
1452	RP	CLEOFE B. AUSTRIA	1896-0173-45	LBP-LOS BANOS		\N
1453	RP	CLEOFE L. LAJARA	7755-0253-95	DBP-TACLOBAN CITY		\N
1454	RP	CLYDE VICTORIA	6013-6011-5411	METROBANK- KALAW BR.		\N
1455	RP	COLLIN G. SALES	1925-0207-84	LBP-GUIMARAS		\N
1456	RP	COLUMBAN COLLEGE BARRETTO	1572-1018-31	LBP-SUBIC BR		\N
1457	RP	CONSUELO L. ORENSE	1827-3224-11	LBP-BICUTAN		\N
1458	RP	CORAZON A. JAVIER	1565-0033-79	LBP-PARANAQUE		\N
1459	RP	CORAZON BILLEDO SALVADOR	2215-0209-78	LBP-PASAY,MASAGANA BR.		\N
1460	RP	CORAZON D. CIRIACO	1326-8104-75	RCBC- SESSION ROAD BAGUIO CITY BR.		\N
1461	RP	CORRINA FRANCES OKOL CABANILLA	3077-0192-77	LBP-UP DILIMAN		\N
1462	RP	COSMOTECH PHILIPPINES INC	1781-0515-66	LBP-PASONG TAMO BR.		\N
1463	RP	Credit to the individual accounts of SEI Regular Employees for payt. Of MC Benefits for February 2020 & Hazard Allow. For Jan. 2020	Various Reg. Employees Accts.	(LBP Bicutan-DOST Branch)		\N
1464	RP	CRESELDA O. DOBLE	6518-0114-30	BDO-MARIKINA BRANCH		\N
1465	RP	CRISANTA A. OCAMPO	1987-1276-66	LBP-ARROCEROS		\N
1466	RP	CRISANTO M. LOPEZ	0076-64003-8666	BDO-KATIPUNAN BRANCH		\N
1467	RP	CRISELDA A. GUMERA	1827-3433-11	LBP-BICUTAN		\N
1468	RP	CRIST JOHN M. PASTOR	1987-1653-98	LBP-Q.C.		\N
1469	RP	CRISTINA DANEZ VALDEPENA	0215-0788-50	LBP-LUCENA CITY		\N
1470	RP	CRISTINA N. ESTOLANO	00-5-04160-775-9	DBP-TACLOBAN CITY		\N
1471	RP	CRISTINE JOY CAUSAPIN SIGNO	2055-0399-44	LBP-TRECE MARTIRES CITY BR.		\N
1472	RP	CRISTOPHER B. AGBULIG	1827-6248-92	LBP-BICUTAN BR.		\N
1473	RP	CYRILLE ELIZ C. GREGORIO	1897-1283-45	LBP-LOS BA?OS BRANCH		\N
1474	RP	DAMASA M. MACANDOG	1897-0602-28	LBP-LOS BANOS		\N
1475	RP	DAN ELLISE D. BUNAG	4843-4842-44511	METROBANK-VALENZUELA CITY		\N
1476	RP	DANA MARTINEZ ONG	3077-0199-94	LBP-UP DILIMAN		\N
1477	RP	DANIEL JOSE L. BUHAY	0707-1435-68	LBP-PHILCOA BRANCH		\N
1478	RP	DANIEL LABONG DEL ROSARIO	0237-1879-11	LBP-WEST AVE. BR.		\N
1479	RP	DANILO C. PADILLA	3347-0159-96	LBP-PASIG CITY		\N
1480	RP	DANILO VILLARUEL BARCELON JR.	1827-3740-47	LBP-BICUTAN		\N
1481	RP	DANNAH LEE DOSADO ALCOMENDRAS	1897-1456-57	LBP-LOS BA?OS BRANCH		\N
1482	RP	DANTE DELGADO BALAO	3706-1384-03	LBP-TUGUEGARAO		\N
1483	RP	DARAHLYN MAGAS BIEL-ROMUALDO	3076-1020-22	LBP-DILIMAN		\N
1484	RP	DARIA B. MABALAY	1827-3729-58	LBP-BICUTAN		\N
1485	RP	DARRYL LAO UY	545-3-545-67173-6	METROBANK-ORTIGAS		\N
1487	RP	DAVESON OGRIMEN GARRIDO	1827-4959-36	LBP-BICUTAN		\N
1488	RP	DEBBIE GLYNN V. MANANGKIL	1377-0576-23	LBP-LA TRINIDAD, BENGUET		\N
1489	RP	DECS-NCR-RELC	0692-1002-80	LBP-MARIKINA		\N
1490	RP	DENILYN BELISTA AGRIPA	1825-0708-73	LBP-BICUTAN BRANCH		\N
1491	RP	DENIS A. TAN	0357-0266-52	LBP-BUKIDNON BRANCH		\N
1492	RP	DENISE ASHLEY PONTANARES ESCOLAR	3077-1015-42	LBP-KATIPUNAN		\N
1493	RP	DENISSE A A CABALLES	1827-3408-43	LBP-BICUTAN		\N
1494	RP	DENNIES CRUZ	333-3-33319739-2	BDO-NAVAL NAVOTAS CITY		\N
3623	\N	NYMPHA BRANZUELA				\N
1495	RP	DENNIS MURILLO	1959-2026-95	BPI-CONGRESSIONAL AVE. BR.		\N
1497	RP	DENSON MARIANO LIDAY	8679-2677-37	BPI-NUEVA VISCAYA		\N
1498	RP	DESIREE L. GESTIADA	5003-5001-82300	METROBANK-ACACIA AVE. BR.		\N
1499	RP	DESIREEH M. VILLAFRANCA	0707-1126-62	LBP-PHILCOA BRANCH		\N
1500	RP	DESTINY SANTA MARIA LUTERO	1897-0925-02	LBP-UPLB BRANCH		\N
1449	RP	SVENAERO TRADING	0271-1363-66	LBP-BACLARAN BRANCH		\N
1501	RP	DEXTER Y. DE LEON	1827-3217-92	LBP-BICUTAN		\N
1503	RP	DIANNE JANE ARRIOLA SUNICO	1897-1497-09	LBP-LOS BA?OS		\N
1504	RP	DIORELLA MARIE MARANO TRIA	1896-2281-84	LBP-LOS BANOS		\N
1505	RP	DIVINA M. BACALTOS	1827-3620-90	LBP-BICUTAN		\N
1506	RP	DOMINADOR J. VILLAFRIA	0495-0568-48	LBP-PASIG		\N
1507	RP	DOMINGA CALUYA VALTORIBIO	0437-0253-47	LBP-NUEVA VIZCAYA BR.		\N
1508	RP	DOMINGA DALAGAN MALLONGA	0367-0751-04	LBP-BUTUAN		\N
1509	RP	DOMINGO II BROJAS TUAZON 	2765-0506-61	LBP-ALBAY		\N
1510	RP	DOMINIC KARL MIRANDA BOLINAS	0596-1915-68	LBP-TAFT AVENUE		\N
1511	RP	DOMINIQUE J. MAQUIRAN	3057-0068-70	LBP-ILOILO CITY		\N
1512	RP	DON KING OCAMPO EVANGELISTA	1595-0550-71	LBP-NAVOTAS		\N
1513	RP	DOROTHY DE VERA SILVA	0566-4606-84	BPI SAVINGS BANK-HARRISON ROAD BR.		\N
1514	RP	DUNN ALFREDO A. CELESTIAL	1827-3430-44	LBP-BICUTAN		\N
1515	RP	DYLAN ANTONIO SAN JUAN TALABIS	1897-1173-60	LBP-LOS BA?OS		\N
1516	RP	EDEN S. DAVID	2967-0088-02	LBP-NUEVA ECIJA		\N
1518	RP	EDGAR JR. GONZALES BELDA	3077-1399-57	LBP-UP DILIMAN		\N
1519	RP	EDGARDO ARANJUEZ	0557-0288-20	LBP-NAVOTAS		\N
1520	RP	EDGARDO M. ESPERANCILLA	1737-0081-30	LBP-REAL TACLOBAN		\N
1521	RP	EDILBERT REYES	0031-2490-2110-1	PHIL VETERANS BANK-GENERAL SANTOS CITY		\N
1522	RP	EDISON A. ROXAS	0159-09-1414	BPI-ESPA?A		\N
1523	RP	EDISON AGUILAR ROXAS	0106-2083-60	LBP-BALIUAG BULACAN		\N
1524	RP	EDITA M. BALLESTEROS	3347-0136-24	LBP-MANILA		\N
1525	RP	EDITH CABINGAO ALMIREZ	3127-0192-65	LBP- BATASAN		\N
1526	RP	EDITHA ESTRELLA	1488-1008-0523	PNB		\N
1528	RP	EDNA B. NABUA	0327-0621-40	LBP-ILIGAN CITY		\N
1529	RP	EDNA G. CALLANTA	3077-0197-73	LBP-UP CAMPUS,DILIMAN		\N
1530	RP	EDNA PATRICIA PEREZ MENDOZA	1827-5342-73	LBP-BICUTAN		\N
1531	RP	EDRIAN DINONG SARAOS	2137-0214-66	LBP-ILOCOS BR		\N
1532	RP	EDSEL ORBINO CORONADO	2327-0480-69	LBP-ILOILO		\N
1533	RP	EDUARDO JATULAN	1897-0860-57	LBP-		\N
1534	RP	EDWARD B. MACAGNE	1987-1770-35	LBP-YMCA BRANCH		\N
1535	RP	EDWARD JAY M. QUINTO	0045-0066-3927	BDO-INTRAMUROS BRANCH		\N
1536	RP	EDWEHNA ELINORE SAPORTEZA PADERNA	3077-0334-40	LBP-QC		\N
1538	RP	EIREKA MEREGILLANO	5187-3563-58	DBP		\N
1539	RP	EISHA VIENNA M. FERNANDEZ	1987-1351-89	LBP-YMCA BRANCH		\N
1540	RP	ELABELL V FLORES	1066-1142-32	LBP-BALER		\N
1541	RP	ELAIDA RUIZ FIEGALAN	2967-0081-10	LBP-NUEVA ECIJA		\N
1542	RP	ELAIN ESTEIBAR MALONES	2055-0062-21	LBP-TRECE MARTIRES CITY BR.		\N
1543	RP	ELAINE LOREEN CASAPAO VILLANUEVA	1897-1192-30	LBP-LOS BA?OS BRANCH		\N
1544	RP	ELEANOR DRILON GREGORIO	1095-6796-7505	UNIONBANK-ILOILO CITY		\N
1545	RP	ELEANOR L. RONQUILLO	0014-2010-5041	BDO-ROCKWELL, ORTIGAS		\N
1546	RP	ELENITA D. BERNARDO	1340-6988-12	CHINABANK-BALINTAWAK BONIFACIO		\N
1547	RP	ELENITA P. SAN JUAN	1095-9534-2577	UNIONBANK- INTRAMUROS BR.		\N
1548	RP	ELISA NOLLA SANTOS	1827-5067-25	LBP-BICUTAN		\N
1549	RP	ELLA MAY MANALO RONQUILLO	0307-1547-90	LBP-BATANGAS CITY		\N
1550	RP	ELLEN GRACE B. BETITO	0033-8027-8283	BDO-SURIGAO CITY BR.		\N
1551	RP	ELLEN JOY LAGAT MARIQUIT	2407-0699-46	LBP-BANILAD CEBU CITY		\N
1552	RP	ELLEN L. JARANTILLA	0327-0191-55	LBP-ILIGAN		\N
1554	RP	ELMER F. DE LEON	164-3-164-17390-0	METROBANK		\N
1555	RP	ELMER P. DADIOS	4943-0647-63	BPI-HARRISON BR.		\N
1556	RP	ELSA CAJUCOM	2251-1017-4498	PNB		\N
1557	RP	ELSIE F. CAPARAS	1825-0491-90	LBP-TAGUIG CITY HALL BR.		\N
1558	RP	ELVIE A. CAMSON	6670-0680-41	BDO-DUMAGUETE CITY		\N
1559	RP	EMELITA P BAGSIT	1897-0503-89	LBP-UP LOS BA?OS BR.		\N
1560	RP	EMELLIE G. PALOMO	5106-9475-30	LBP-ILOILO		\N
1561	RP	EMERITO V. BANAL	1827-4600-83	LBP-BICUTAN		\N
1562	RP	EMERSON R. SERVO	565-3-75995857-9	Metrobank-Manila		\N
1563	RP	EMIL  IAN JOSHUA MARTINEZ AKOL	0037-1658-24	LBP-ILOILO		\N
1564	RP	EMIL C. ALCANTARA	0307-0099-35	LBP-BATANGAS BR.		\N
1565	RP	EMILIO PAUL M. CANDELARIA	3077-0743-24	LBP-UP DILIMAN		\N
1566	RP	EMILY VENERACION PAULINO	3777-0113-40	LBP-BULACAN		\N
1567	RP	EMMA B. TAAR	0597-0626-21	LBP-AYALA BLVD.		\N
1568	RP	EMMA L. CANCINO	0237-0929-10	LBP-WEST AVE.		\N
1569	RP	EMMALOU CASINILLO ABAR	0366-4319-18	LBP-BUTUAN CITY BR.		\N
1570	RP	EMMANUEL TRONO GALANG	1897-1521-22	LBP-UPLB		\N
1571	RP	EMMELINE G. COLES	0028-0028-9771	BDO-TACLOBAN BR.		\N
1572	RP	ENGRACIA M. PARALLA	0014-6016-6475	BDO-BAGUIO CITY		\N
1573	RP	ENRIQUE JUNIOR ABCEDE BONOCAN OR FEDELIS CABARRUBIAS BONOCAN	1471-1782-72	LBP-DAVAO CITY BR.		\N
1574	RP	ENRIQUETA DEGUIT RESTON	2406-0452-70	LBP-CEBU		\N
1575	RP	EPEFANIO F. FABONAN III	5373-5372-2781-9	METROBANK-BACOOR BOULEVARD		\N
1576	RP	ERIC PAUL D. PERALTA	1897-1194-00	LBP-LOS BA?OS BR.		\N
1579	RP	ERICKSON MAGNO MACLID	3077-1160-86	LBP-UP DILIMAN,QC		\N
1580	RP	ERL BRIAN TOLEDO BALUCAN	1827-4074-76	LBP-BICUTAN		\N
1581	RP	ERLINA RONDA	2799-0131-96	BPI-COMMONWEALTH BR.		\N
1582	RP	ERLINDA M. CAPONES	0557-0288-38	LBP-PASIG		\N
1583	RP	ERLYN JANE BIGUEJA GARCIA	3777-0078-90	LBP-NUEVA ECIJA		\N
1584	RP	ERMA DE MESA MAALIHAN	0307-0105-50	LBP-BATANGAS		\N
1585	RP	ERMIE M. BACARRA	1827-0585-28	LBP-BICUTAN		\N
1586	RP	ERNESTO S. TAMAYO	2231-1003-1861	PNB-LAOAG CITY		\N
1588	RP	ERWIN CORALES	1309-1839-98	BPI-CEBU CITY		\N
1589	RP	ERWIN NAVALLO ARLAN	0805-10132L-500	DBP-BUTUAN CITY		\N
1590	RP	ERWIN V. ARIOLA	1826-2197-90	LBP-BICUTAN		\N
1591	RP	ESAMEL M. PALUGA	0805-638867-500	DBP-CARAGA		\N
1592	RP	ESMERALDA MAYO DEMAFELIX	1827-3431-25	LBP-BICUTAN		\N
1593	RP	ESTELITA F. BIGGAYAN	2255-0066-09	LBP-LUNA, APAYAO		\N
1594	RP	ESTER C. AUNGON	1827-3428-97	LBP-BICUTAN		\N
1595	RP	ESTER T. GRAMAJE	3707-0389-17	LBP-TUGUEGARAO		\N
1596	RP	ESTRELLA RAQUINIO PACIS	2137-0223-57	LBP-ILOCOS NORTE		\N
1597	RP	EUGENIO JR GULAY AFALLA	1897-1077-20	LBP-LOS BANOS		\N
1598	RP	EULA FRANCIA M. BOSITO	1897-1281-59	LBP-LOS BA?OS		\N
1599	RP	EUNICE ARGAMINO BAUTISTA 	1827-3658-03	LBP-BICUTAN		\N
1600	RP	EUNICE LOIS DE QUIROS GIANAN	3077-1540-26	LBP-DILIMAN		\N
1601	RP	EVA BALANAY MACUGAY	2137-0216-60	LBP-ILOCOS NORTE BR.		\N
1602	RP	EVA D. BANACER	0167-2282-40	LBP-CLAVERIA DAVAO		\N
1603	RP	EVANGELINE BAUTISTA	3086-5154-61	BPI-KATIPUNAN		\N
1604	RP	EVELINA MACLANG VICENCIO	1660-1002-7894	PNB-UNIVERSITY OF THE EAST		\N
1605	RP	EVELYN B. CAJA	060-3-060726524	METROBANK-WEST TRIANGLE		\N
1607	RP	EVERLITA EBILLO CANALITA	0327-0210-28	LBP-ILIGAN		\N
1608	RP	EVEYTH P. DELIGERO	0167-2286-90	LBP- DAVAO CITY		\N
1609	RP	FAITH P. BUNED	2737-0343-32	LBP-COTABATO CITY		\N
1610	RP	FAJF ENTERPRISES	0016-8040-7749	BDO-PHILAM TOWER VALERO MAKATI		\N
1611	RP	FAUZIA SALI LATIF	1247-0325-56	LBP-TAWI-TAWI BR.		\N
1612	RP	FE CARITAN SALVA	0146-3617-49	LBP-CEBU CITY BRANCH		\N
1613	RP	FE JOSEFA G. NAVA	3077-0382-47	LBP-Q.C		\N
1614	RP	FEBIE D. GUNAYON	1057-0290-36	LBP-TABUK, KALINGA		\N
1615	RP	FEDELIA FLOR C. MERO	3056-0974-99	LBP-MIAG-AO BRANCH		\N
1616	RP	FEDERICO JR. E. DEL POZO	1827-3191-86	LBP-BICUTAN		\N
1617	RP	FELICITAS V. PILIGAN	3706-0181-22	LBP-TUGUEGARAO		\N
1619	RP	FERDINAND BONGCAYAO	1710-2863-17	CHINABANK-CEBU CITY		\N
1620	RP	FERINA G. PERALTA	0566-5544-09	BPI-BAGUIO CITY		\N
1621	RP	FERNANDO JR REBECOY SEQUETE	0326-2908-15	LBP- ILIGAN CTY BR.		\N
1622	RP	FERNANDO M. PORIO	3127-0210-73	LBP-BATASAN		\N
1623	RP	FILMA G. BRAWNER-ABAD OR SERGIO M. ABAD	125-3-12535583-9	METROBANK-SOLANO		\N
1624	RP	FILOMENA BARBARA R. GALLARDO	2137-0223-73	LBP-ILOCOS NORTE		\N
1625	RP	FLORALIE LACUESTA INAYAN	0037-2555-56	LBP-ILOILO CITY BRANCH		\N
1626	RP	FLORANTE M. FERRER	2885-0268-96	LBP-GUADALUPE MAKATI BR.		\N
1627	RP	FLORDELIZA FRANCISCO	3089-0670-64	BPI-LOYOLA BRANCH		\N
1628	RP	FLORDELYN T. UMAGAT	2695-0117-10	LBP		\N
1629	RP	FLORENCIA PULHIN	1897-0282-78	LBP-LOS BANOS		\N
1630	RP	FORTUNATO A. TACUBOY III	0237-0955-10	LBP-WEST AVE.		\N
1631	RP	FORTUNATO T. DELA PENA	1827-0297-22	LBP-BICUTAN		\N
1632	RP	FORTUNE GENERAL INSURANCE CORP	0672-1064-94	LBP-PASIG KAPITOLYO BR.		\N
1633	RP	FRANCES LIRA CALABIA	201004-00253-90	CHINABANK-P. TUAZON		\N
1634	RP	FRANCES THERESE RODRIGUEZ BARCENILLA	3077-1443-57	LBP-UP DILIMAN,QC		\N
1635	RP	FRANCIS A. GEALOGO	30895-3142-53	BPI-KATIPUNAN		\N
1636	RP	FRANCIS ANDERSEN M. LIM	1826-1698-14	LBP-BICUTAN		\N
1637	RP	FRANCIS KITZ A. AQUINO JR.	8759-1267-51	BPI-DAGUPAN		\N
1638	RP	FRANCIS UYHAM OR MARILOU UYHAM	1315-00000-500	CHINABANK-ABAD SANTOS, SAN JUAN		\N
1639	RP	FRANCISCO III R BARQUILLA	1897-0503-11	LBP-UP LOS BA?OS BR.		\N
1640	RP	FRANK DAVID D. FABROS	679-513-1211	BPI-FAMILY BANK EMERALD ORTIGAS BR		\N
1641	RP	FREDERICK TORALBALLA TALAUE	5277-0530-22	LBP-QC		\N
1642	RP	FREDMOORE LEGASPI OROSCO	3077-0883-76	LBP-DILIMAN		\N
1643	RP	GABRIEL PAOLO LONTOK PERALTA	1897-1360-97	LBP-UP LOS BA?OS BR.		\N
1644	RP	GARRY ANIBAN BENICO	2967-0969-22	LBP-NUEVA ECIJA BR		\N
1645	RP	GARRY JAY S. MONTEMAYOR	1897-0652-70	LBP-LOS BANOS		\N
1646	RP	GARRY L. ALIGMAYO	1827-3428-54	LBP-BICUTAN		\N
1647	RP	GENELITA S. GARCIA	1987-1271-60	LBP-Q.C.		\N
1648	RP	GENELYN GABRINEZ MADJOS	3237-0184-18	LBP-ZAMBOANGA CITY BR.		\N
1649	RP	GENESSE MERCULLO	1589-4488-27	BPI-MORAYTA		\N
1650	RP	GENEVA SAJULAN ARAGON	0436-2925-20	LBP-SOLANO, N.V.		\N
1651	RP	GER ANNE MARIE WALES DURAN	0707-1550-60	LBP-Q. C. CIRCLE		\N
1652	RP	GERAIZA JOY MALATE FLORANDA	1807-0229-93	LBP-PASEO BRANCH		\N
1653	RP	GERALDINE ESCABARTE FRANCIA	0167-2288-79	LBP-DAVAO BR		\N
1655	RP	GEROME HERRERA BAUTISTA	0436-2572-87	LBP-SOLANO, N.V.		\N
1657	RP	GERRY DACLES ABAD	2137-0441-13	LBP-ILOCOS NORTE		\N
1658	RP	GERWIN C. GERNALE	122-3-122-55278-1	METROBANK-TACLOBAN CITY		\N
1659	RP	GEYLEN M. ABAINZA	2765-0480-04	LBP-ALBAY		\N
1660	RP	GIANINA CASSANDRA MAY BULANHAGUI APEGO	1467-0749-85	LBP-DILIMAN		\N
1661	RP	GIL NICETAS B. VILLARINO	4665-3677-5005-5759	DBP-TACLOBAN CITY		\N
1662	RP	GILBERT BARRERA	2195-0234-44	LBP-SOUTH COTOBATO		\N
1663	RP	GILBERT C. ZAMORA	2820-1495-17	BDO-NOTRE DAME, CUBAO		\N
1664	RP	GILDA S. DE JESUS	1897-1454-52	LBP-LOS BA?OS BRANCH		\N
1665	RP	GIOVANNI M. SARDEA	3777-0215-07	LBP-PAMPANGA		\N
1668	RP	GISELLE EVE ORTEGA SILADAN	4117-0035-02	LBP-KORONADAL CITY-GAISANO BR.		\N
1669	RP	GLADYS CELIS NIVERA	1986-0122-70	LBP-ARROCEROS,MANILA		\N
1670	RP	GLAIZA ESCULLAR	0707-0744-69	LBP-PHILCOA BRANCH		\N
1671	RP	GLEMMIE GLENCE R. BANGALAN	2255-0175-89	LBP-LUNA, APAYAO		\N
1672	RP	GLEN MELVIN PURISIMA GIRONELLA	1827-1688-62	LBP-BICUTAN		\N
1673	RP	GLENN  SIA SU	5010-0541-12	DBP-NAKPIL BR.		\N
1674	RP	GLENN EUGENIO MATEO	0707-1127-19	LBP-PHILCOA BRANCH		\N
1675	RP	GLENN SUERTE FELIPE BANAGUAS	0706-1241-10	LBP-QUEZON CITY		\N
1676	RP	GLENN V. ALEA	1012-0009-2358	UCPB-VITO CRUZ BRANCH		\N
1678	RP	GLETSER CAPISPISAN MALIBIRAN	0507-0656-19	LBP-MINDORO		\N
1679	RP	GLORIA VICKY A. ANTONIO	0436-2247-61	LBP-NUEVA VIZCAYA		\N
1680	RP	GLYNESS ANNE YNIGUEZ DESTURA	0321-2270-66	LBP-ILIGAN BRANCH		\N
1681	RP	GM SON ABRASALDO	1826-2130-90	LBP-BICUTAN		\N
1682	RP	GRACE B. VINARAO	1897-1336-32	LBP-LOS BA?OS BRANCH		\N
1683	RP	GRACE PADURA LIWANAG	0327-0638-20	LBP-ILIGAN		\N
1684	RP	GRACE TAN LIM GRACE CROWN HOTEL	2752-0034-78	LBP-CABANATUAN BR.		\N
1685	RP	GRACESELDA DIZON TAGLE	0707-0074-86	LBP-QC CIRCLE BRANCH		\N
1686	RP	GRETCHEN G. CORDERO	3347-0182-51	LBP-MERALCO AVE. BRANCH		\N
1687	RP	GRETCHEN MAE C. BUGAAY	0805-085405-500	DBP-CARAGA		\N
1688	RP	GUADALUPE O. BLANCO	0355-0098-74	LBP-VALENCIA 		\N
1689	RP	GUILLERMO JR PEDROSO BAUTISTA	3077-0197-30	LBP-UP DILIMAN		\N
1690	RP	GUILLERMO M. LUZ	1446-8291-68	BPI-AYALA-SGV BR.		\N
1691	RP	HAJJI R. PALMERO	3347-0170-34	LBP-PASIG CITY		\N
1692	RP	HANNA B. PEREZ	0081-8000-3677	BDO-CAINTA JUNCTION		\N
1693	RP	HANNAH LORRAINE D. ALTAREJOS 	1827-3428-70	LBP-BICUTAN		\N
1694	RP	HANNAH THERESE M. BARAERO	1466-0525-46	LBP-MARIKINA		\N
1695	RP	HANSEL LUIS DURO	0207-1600-40	LBP-SAN FERNANDO LA UNION		\N
1697	RP	HAROLD MONZON	0063-1019-0686	BDO-STA. LUCIA EAST-FELIX AVE.		\N
1698	RP	HAYDEE M SOLOMON	0237-0944-50	LBP-WEST AVE.		\N
1699	RP	HAYLON S. DITUCALAN	1267-0508-87	LBP-MARAWI CITY BR.		\N
1700	RP	HAZEL ANN S. SORIANO	2737-0245-66	LBP-COTABATO CITY		\N
1701	RP	HAZEL JOYCE MERCADO RAMIREZ	1897-1249-43	LBP-LOS BANOS		\N
1702	RP	HEHERSON C. TOLENTINO	0435-0672-39	LBP-BANGBANG,NUEVA VIZCAYA		\N
1703	RP	HELEN ANGLO GUTIERREZ	2055-0094-33	LBP-BACOOR		\N
1704	RP	HELEN BOHOLANO	1309-1001-38	BPI-JONES CEBU CITY		\N
1705	RP	HELEN RANOCO BETONIO	0327-0864-64	LBP-ILIGAN CITY		\N
1706	RP	HENRY A. DE LEON	1827-4135-49	LBP-BICUTAN		\N
1708	RP	HENRY IMPORT & EXPORT CORPORATION	365-3-36526237-4	METROBANK-BAESA BR.		\N
1709	RP	HERMINIA ARGUELLES BANTIDING	1477-0815-72	LBP-DAVAO BR.		\N
1710	RP	HERNA AGUSTIN VALENCIA	2566-1505-25	LBP-DAVAO BRANCH		\N
1711	RP	HERRIES MARKUS QUITAIN GONZALES	3457-1324-83	LBP-MAKATI		\N
1714	RP	IAN JOHN MONEGRO GALUPAR	2325-0502-60	LBP-ILOILO CITY BR.		\N
1715	RP	IMELDA ANGELES AGDEPPA	1827-0037-40	LBP-BICUTAN		\N
1716	RP	INGRID FLOREYZ LATO PAREJA	2407-1033-89	LBP-CEBU CITY		\N
1717	RP	INGRID LACIA NATINGA	0805-0580-13	LBP-TUBOD LANAO DEL NORTE BR.		\N
1718	RP	IRENEO DELA CRUZ AGULTO	2967-0099-06	LBP-MUNOZ BRANCH		\N
1719	RP	IRIS DELOS SANTOS ORIZAR	3077-0536-53	LBP-UP DILIMAN		\N
1720	RP	IRIS JOY ALA GONZALES	3076-0951-31	LBP-DILIMAN		\N
1721	RP	IRIS SALUD F. BOLLOZOS	1827-1761-64	LBP-BICUTAN		\N
1722	RP	ISAGANI R. DURUIN	3705-0157-66	LBP-TUGUEGARAO		\N
1723	RP	IVAN BRYAN G. REVERENTE	1909-0517-18	BPI-DELA ROSA-SOLARIS ONE		\N
1724	RP	IVAN JAYSON A. MACABENTA	532-056-7401	DBP-DUMAGUETE BRANCH		\N
1725	RP	IVANE P. GERASMIO	0326-3101-40	LBP-ILIGAN BRANCH		\N
1726	RP	IVENZ MYERR FACTORAN BACATAN	0187-1653-00	LBP-LEYTE		\N
1727	RP	IVY ABRIS JARO-AMOR	0296-3967-29	LBP-DUMAGUETE CITY BR.		\N
1728	RP	IVY AMOR F. LAMBIO	1897-0654-67	LBP-LOS BANOS		\N
1729	RP	IVY CLAIRE VISCAYA MORDENO	0327-0643-20	LBP-ILIGAN CITY		\N
1730	RP	IVY P. MEJIA	3077-0503-95	LBP-QUEZON CITY		\N
1731	RP	IZZYKIEL MARQUEZ DELA CRUZ	1697-0904-08	LBP-COA BR.		\N
1732	RP	JACKELYN RUBIS JAMERLAN	0201-2452-90	LBP-LA UNION BR		\N
1734	RP	JACQUELINE F. DINGLASAN	1827-3624-21	LBP-BICUTAN		\N
1735	RP	JACQUELINE GASCON DELOS REYES	2101-0872-90	LBP-BUKIDNON		\N
1736	RP	JACQUELINE TECSON URETA	2055-0061-24	LBP-BACOOR		\N
1737	RP	JAIME JR DELGADO CAMPOS	0405-0392-30	LBP-ILOCOS BR		\N
1739	RP	JAIME R. REBLANDO	0035-1005-1038	BDO SAVINGS-NAGA CITY		\N
1740	RP	JAKELLEN S. DEL PRADO	3077-0712-79	LBP-UP DILIMAN		\N
1741	RP	JAMES CESAR A. REFRAN	3077-0790-32	LBP-DILIMAN		\N
1742	RP	JANA ALMIRA SEBASTIAN	0069-3011-8949	BDO-LIBERTAD MANDALUYONG		\N
1743	RP	JANDEL M. CABASURA	5146-6824-66	LBP-CEBU CITY		\N
1744	RP	JANELLE LAURA JUNIO GACAD	1466-0663-69	LBP-KATIPUNAN		\N
1745	RP	JANELLI LEA SORIA	3089-0928-67	BPI-LOYOLA KATIPUNAN		\N
1746	RP	JANEVE ISIDTO CABALLA	4285-0028-64	LBP-EL SALVADOR CITY		\N
1747	RP	JANICE MAGAN BALDELOVAR	2125-0051-04	LBP-GINGOOG CITY		\N
1748	RP	JANN MAR YOSURES	0209-2751-04	BPI-ORTIGAS BR		\N
1749	RP	JARVIC LOUIS DINGAL SUGUITAN	3286-1669-02	LBP-GENERAL MARIANO ALVAREZ CAVITE BR.		\N
1750	RP	JAS FERROIN BELONIO CORDERO	4025-0020-62	LBP-SILAY NEGROS OCCIDENTAL		\N
1751	RP	JASON ARSUA OROZCO	1987-2161-20	LBP-YMCA BRANCH		\N
1752	RP	JASON NARIDO BARGO	0415-0249-40	LBP-DAET BR.		\N
1753	RP	JAY AR SAMSONA LIPURA	0755-0628-55	LBP-COTABATO CITY		\N
1754	RP	JAY MORA MAIQUE	0366-4315-00	LBP-BUTUAN CITY BR.		\N
1755	RP	JAY SAN JOSE	2649-2696-69	BPI-BI?AN LAGUNA BR.		\N
1756	RP	JAYASHNAVA A. OMAC	1093-2089-4300	UNION BANK-BUTUAN		\N
1757	RP	JAYEEL S. CORNELIO	003-473238-070	HSBCSAVINGS PHIL.-MANDALUYONG CITY		\N
1758	RP	JAYMIE A. MALIWAT	0255-0876-90	LBP-MAYSAN, VALENZUELA CITY		\N
1759	RP	JAYSON A. LUCILO	0137-1268-85	LBP-LEGAZPI CITY		\N
1761	RP	JAYVEE GUSTILO	0131-2004-0252	BDO-SM BUTUAN BR.		\N
1762	RP	JAZZLYN TANGO IMPERIAL	0137-1590-31	LBP-LEGASPI		\N
1763	RP	JCOB CALLUENG MALAGUIT	1897-1508-80	LBP-LOS BA?OS		\N
1765	RP	JEANINA T. ROGADOR	1897-0997-87	LBP-LOS BA?OS BRANCH		\N
1766	RP	JEANNE GOMEZ BRIONES	1436-1703-74	LBP-ALABANG,MUNTINLUPA		\N
1767	RP	JEANNY ANNE SURIAN SOTELO	1827-3732-88	LBP-BICUTAN		\N
1713	RP	IAN JOHN L. CASTRO	1827-5254-52	LBP-BICUTAN		\N
1768	RP	JEFF DARREN G. VALDEZ	0237-1693-60	LBP-WEST AVENUE BRANCH		\N
1769	RP	JEFFREY DELANTAR TARE	1827-2323-07	LBP-BICUTAN		\N
1770	RP	JEFFREY S. PEREZ	0707-1446-61	LBP-QC. CIRCLE		\N
1772	RP	JELYN E DOCTOR	1826-1994-70	LBP-BICUTAN		\N
1773	RP	JEMILY M. SALES	1897-1352-44	LBP-LOS BA?OS BRANCH		\N
1774	RP	JENELYN C. CONCEPCION	00-5040-4442-31	BDO-PUERTO PRINCESA CITY BR		\N
1775	RP	JENICE MOTEL SANTOS	00016-07522-99	BDO-CUBAO		\N
1776	RP	JENIFFER A. GONZALES	1127-0247-11	LBP-IBA, ZAMBALES BR.		\N
1777	RP	JENNELYN JOY R. DURAN	480-3-480-39494-2	METROBANK-KATIPUNAN QC. BR.		\N
1778	RP	JENNIFER ANN CHUA	00-000-1944-6332	SECURITY BANK-GREENHILLS WEST BR.		\N
1780	RP	JENNIFER M. MAISTER	3077-0764-83	LBP-UP DILIMAN		\N
1781	RP	JENNIFER ROXANNE SALVADOR DAEZ	3077-1201-48	LBP-UP DILIMAN,QC		\N
1782	RP	JENNIFER S. RAMIREZ	1827-3443-69	LBP-BICUTAN		\N
1783	RP	JEORGE S. SARACANLAO	1826-1239-89	LBP-BICUTAN		\N
1785	RP	JERLYN-MAE I. BALACANG	2255-0146-10	LBP-LUNA, APAYAO		\N
1786	RP	JERRY ANDRADE  OQUENDO	0035-1138-35	LBP -ILOILO		\N
1787	RP	JESELLE SOLIVAS LARANAS	1897-1528-66	LBP-UP LOS BA?OS BR.		\N
1788	RP	JESSICA DELMORO BRONDA	3206-0793-46	LBP-SARA ILOILO BR.		\N
1789	RP	JESSICA LUSTADO LOVERES	0136-2591-56	LBP-DARAGA ALBAY		\N
1790	RP	JESSICA LUZ MANGARAP BRIGOLA	1565-0452-68	LBP-PARANAQUE		\N
1791	RP	JESSIE BADOLES ZAMBRANO	0157-0732-65	LBP-CAGAYAN DE ORO CITY		\N
1792	RP	JESSIE MANGYAO NAVA	2557-0454-41	LBP-SINDANGAN, ZAMBOANGA DEL NORTE		\N
1793	RP	JEWISH  MERIN	0056-0167-7359	DBP-		\N
1794	RP	JEZER CASTRO FERNANDEZ	1267-0839-80	LBP-MARAWI CITY BR.		\N
1795	RP	JHOVEN G. LITANA	1827-3433-97	LBP-BICUTAN		\N
1796	RP	JHULEZ ANTHONY BORJA DAYRIT	1826-2924-38	LBP-BICUTAN BRANCH		\N
1797	RP	JICKERSON PITOGO LADO	1897-0929-87	LBP-UPLB		\N
1798	RP	JILLIAN FRANCESCA TANCO TEH	1827-3446-95	LBP-BICUTAN		\N
1799	RP	JOAN BELEN SIONICIO	0137-2091-60	LBP-ALBAY		\N
1800	RP	JOAN C. SALCEDO	0707-1448-58	LBP-QC. CIRCLE		\N
1801	RP	JOAN CHRISTINE OPIANA ADAJAR	1897-1054-50	LBP-UPLB		\N
1802	RP	JOAN ROSE TIGBAS LUIB	0326-2776-30	LBP-ILIGAN		\N
1803	RP	JOANAH S. MAGTO	0156-1615-86	LBP-CDO CAPISTRANO BR.		\N
1804	RP	JO-ANN M. CORDOVILLA	0137-1195-36	LBP-LEGASPI CITY		\N
1805	RP	JOANNE FEL HALCON LIWAG	0665-0302-70	LBP-MANILA		\N
1806	RP	JOB JONAS CAPALARAN RUZGAL	1896-2257-54	LBP-LOS BA?OS		\N
1807	RP	JOB S. ZAPE JR. 	0495-0570-54	LBP-MARCOS HIGHWAY		\N
1808	RP	JOBELLE MAE L. ZURAEK	1897-1475-95	LBP-UP LOS BA?OS BR.		\N
1809	RP	JOBERT M. SALINGAY	0995-0120-90	LBP-CAMIGUIN BR.		\N
1810	RP	JOCELYN  R. PEDERNAL	1645-0008-93	LBP-MARIKINA CITY		\N
1811	RP	JOCELYN CANO LINSAO-NG	0717-0755-10	LBP-QUEZON AVE. BRANCH		\N
1812	RP	JOCELYN F. GOYENA	0137-1305-30	LBP-LEGASPI CITY		\N
1814	RP	JOEL TABAMO BAUTISTA	1587-0850-00	LBP-TARLAC CITY		\N
1815	RP	JOHAN EVIOTA	1975-0386-33	LBP-		\N
1816	RP	JOHARIE ABBAS SALIK	2746-3178-51	LBP-COTABATO CITY		\N
1817	RP	JOHN ANGELO B. ALMAZAR	2757-0570-37	LBP-NUEVA ECIJA		\N
1818	RP	JOHN CARLO M. RUAYA	5-16607-850-5	DBP-SURIGAO CITY		\N
1819	RP	JOHN CHRISTOPHER LAWRENCE MORILLO	3077-1356-09	LBP-UP DILIMAN		\N
1820	RP	JOHN DALE B. DIANALA	3077-0682-78	LBP-UP DILIMAN		\N
1821	RP	JOHN EDSEL A. VARIAS	2055-0322-65	LBP-TRECE MARTIRES CITY BR.		\N
1822	RP	JOHN EDWARD LAURENTINO DUPAYA	0587-0816-95	LBP-MANILA BR		\N
1823	RP	JOHN KENNETH AGCAOILI CRUZ	3077-0597-24	LBP-UP DILIMAN		\N
1824	RP	JOHN KRISTOFFER Q. ANDRES	3077-0729-68	LBP-UP DILIMAN		\N
1825	RP	JOHN MARC CHO SANTOS	2819-0556-48	BPI-UP TOWN CENTER		\N
1826	RP	JOHN MARK IGNACIO DOLENDO	0707-1299-80	LBP-QUEZON CIRCLE		\N
1827	RP	JOHN MARK MARTINEZ MAYOR	0137-2309-25	LBP-LEGAZPI CITY BR.		\N
1828	RP	JOHN MICHAEL NARVASA AGUILAR	3077-0899-25	LBP-UP DILIMAN		\N
1829	RP	JOHN NEIL TAN MASONG	0307-1680-57	LBP-BATANGAS		\N
1830	RP	JOHN PATRICK G. LAZARO	7205-1731-71	DBP-SAMAR		\N
1831	RP	JOHN PAUL AROPE MENDOZA	3077-0685-37	LBP-UPD EXT. OFFICE BR.		\N
1832	RP	JOHN PAUL BARBERO ONGCOY	2737-0669-00	LBP-COTABATO CITY		\N
1833	RP	JOHN PAUL C. VERGARA	3086-5036-92	BPI SAVINGS- KATIPUNAN Q.C		\N
1834	RP	JOHN PAUL CRUZ	5043-5048-03326	METROBANK-EASTWOOD BR.		\N
1835	RP	JOHN PAUL MATTHEW DOMINGO GUZMAN	1827-4967-38	LBP-BICUTAN BRANCH		\N
1836	RP	JOHN WARNER MAGGAY CARAG	3076-0832-49	LBP-UP DILIMAN		\N
1837	RP	JOHNNY T. SAMINO	3929-2033-47	BPI-NAGA CITY		\N
1838	RP	JOJIM BUENAVENTE CORDOVA	2765-0366-93	LBP-ALBAY		\N
1839	RP	JOMAR F. RABAJANTE	1897-0703-63	LBP-LOS BA?OS		\N
1840	RP	JON PAUL FLOR MALIGALIG	3077-1305-42	LBP-DILIMAN		\N
1841	RP	JONALYN B. VILLAROSA	5-10142-635-8	DBP-PUERTO PRINCESA		\N
1842	RP	JONATHAN ACAYLAR PABILLORE	1807-0258-10	LBP-PASEO BRANCH		\N
1843	RP	JONATHAN ADAM ABITONA RICO	1827-5581-64	LBP-BICUTAN BRANCH		\N
1844	RP	JONATHAN BALOSO	234-3-234-22986-0	METROBANK-J.P. RIZAL, MAKATI		\N
1845	RP	JONATHAN BORBON	2000-4836-9878	EASWEST-ILOILO 		\N
1846	RP	JONATHAN C. GLORIAL	5106-9461-69	LBP-ILOILO		\N
1847	RP	JONATHAN HONORATO DEL MAR LOCK	1807-0117-46	LBP-PASEO BRANCH		\N
1849	RP	JONATHAN RIVERA DUNGCA	1776-0845-70	LBP-MANILA		\N
1850	RP	JONATHAN WINSTON DE LEON SALVACION	0706-1468-06	LBP-ANTIPOLO		\N
1851	RP	JONEIL B. MEDINA	0327-0963-97	LBP-ILIGAN CITY		\N
1852	RP	JONIE CALISOGAN YEE OR RUBY UY YEE	2401-0000-81	LBP-CEBU CITY BRANCH		\N
1853	RP	JONIE YEE	1712-2243-19	CHINABANK-MAGALLANES, CEBU BRANCH		\N
1854	RP	JONNAR TOLENTINO	1620-166-885	BDO-MAKATI		\N
1855	RP	JORDAN FERDIN ALBANO HALILI	3077-0650-82	LPB- DILIMAN		\N
1856	RP	JOREM JORDAN MARIANO CAWAGAS	2966-0781-49	LBP-MUNOZ, NUEVA ECIJA		\N
1857	RP	JOSE DOMINICK SANTOS GUBALLA	3077-0852-96	LBP-DILIMAN		\N
1858	RP	JOSE HERMINIO D. SANDOVAL	1827-4137-94	LBP-BICUTAN		\N
1859	RP	JOSE JR. V. CAMACHO	1897-0664-63	LBP-LOS BANOS		\N
1860	RP	JOSE MARI LIT	1897-1129-70	LBP-UP LOS BANOS		\N
1861	RP	JOSE MARIA  P. BALMACEDA	3077-0171-93	LBP-UP CAMPUS		\N
1862	RP	JOSE SANTIAGO FERIL	504-500-8741	DBP-TUGUEGARAO CITY BR.		\N
1863	RP	JOSELITA A. SALAMERA	1827-3227-13	LBP-BICUTAN		\N
1864	RP	JOSELITO ASETRE TABARDILLO JR.	1466-0610-90	LBP-Q.C		\N
1865	RP	JOSEPH ANTHONY C. HERMOCILLA	1897-0659-80	LBP-LOS BANOS		\N
1866	RP	JOSEPH BURGOS RASALAN	1896-3559-33	LBP-LOS BA?OS		\N
1868	RP	JOSEPH LAWRENCE SCHEITER JR.	1987-1705-45	LBP-MANILA		\N
1869	RP	JOSEPH Q. BASCONCILLO	0707-1219-71	LBP-PHILCOA BRANCH		\N
1871	RP	JOSEPHINE C. PELINGON	5026-3977-51	DBP-TACLOBAN CITY		\N
1872	RP	JOSEPHINE CAMITON GEPIGON	0167-2383-35	LBP-CLAVERIA DAVAO		\N
1873	RP	JOSEPHINE JOY VALERA TOLENTINO	1587-1062-44	LBP-CLARK		\N
1874	RP	JOSEPHINE LOUISE FLORES JAMERO	0420-0229-05	BPI COMMONWEALTH		\N
1875	RP	JOSEPHINE M. CALAMLAM	1987-1267-67	LBP-ARROCEROS,MANILA		\N
1876	RP	JOSEPHINE ROQUE	7346-2361-29	BPI-BF PARA?AQUE		\N
1877	RP	JOSHUA N. ARIMADO	0050-2019-1052	BDO-EDSA RELIANCE BR.		\N
1878	RP	JOSIAH L. SICAD	0006-3053-0823	BDO- MASINAG		\N
1879	RP	JOSIAHS CATERING INC.	2722-1026-84	LBP-MARIKINA		\N
1880	RP	JOSIE TEOFILA N. QUIJANO	2077-0238-04	LBP-SARANGANI		\N
1881	RP	JOVITO JR. ADRANA YSULAT	1827-4870-62	LBP-BICUTAN		\N
1882	RP	JOVY SALVADOR MEDINA	1827-5694-09	LBP-BICUTAN		\N
1883	RP	JOY MAE COLON GABION	0327-1576-80	LBP-ILIGAN CITY BRANCH		\N
1884	RP	JUAN PAOLO MAGPANTAY PASATIEMPO	1686-1837-22	LBP-BAYANI RD.		\N
1885	RP	JUANITA KING T. TANG	0001-0023-3265	BDO-QUIAPO BRANCH		\N
1886	RP	JUANITA V. TOLENTINO	0695-0588-37	LBP-QUEZON CITY		\N
1887	RP	JUDITH N. SAAVEDRA	2697-0471-69	LBP		\N
1888	RP	JUDITH R. CASTILLANO	1055-0218-36	LBP-TABUK, KALINGA		\N
1889	RP	JULHADIE AYOB LATIP	2746-3177-03	LBP-COTABATO CITY		\N
1890	RP	JULIA R. CAPULONG	060-3-060-12570-9	METROBANK-QUEZON AVE BR.		\N
1891	RP	JULIANA KRISHNA GUEVARRA	1311-0202-0976	CHINABANK-BINANGONAN BR.		\N
1892	RP	JULIET M. AGUIRRE	1737-0577-43	LBP-SAGKAHAN TACLOBAN BRANCH		\N
1893	RP	JULIEVEN REGISTRADO ABREA	3347-0180-49	LBP-PASIG CITY BRANCH		\N
1894	RP	JULIO C. CALUMPIANO JR.	1737-0322-44	LBP-TACLOBAN CITY		\N
1895	RP	JULIUS A. FERANDO	3576-0930-03	LBP-BAYBAY CITY,LEYTE BR.		\N
1896	RP	JULIUS CAESAR  VILLACORTA SICAT	3776-0330-48	LBP-WEST AVE.		\N
1897	RP	JULIUS CINTURA CALLEJA	3466-1887-18	LBP-SAN JOSE DEL MONTE CITY, BULACAN		\N
1898	RP	JULIUS R SATPARAM	0137-1925-27	LBP-ALBAY		\N
1899	RP	JUN KARREN V. CAPAROSO	0327-0639-79	LBP-ILIGAN		\N
1900	RP	JUNE TAJAN ESMERO	1827-5390-89	LBP-BICUTAN BR.		\N
1901	RP	JUSE LYN P. HIPONIA	0167-2290-50	LBP-C.M RECTO DAVAO		\N
1902	RP	JUSHWE KENNY DECOSTO BASIGA	0516-3313-30	LBP-DIPOLOG BR.		\N
1903	RP	JUSTINA TAMPIPI LANTAJO	00-5-18056-775-4	DBP-TACLOBAN CITY		\N
1904	RP	JUVIMAR E. MONTOLO	4553-6673-5367-3253	DBP-CEBU		\N
1905	RP	JUVY DELLORO MANERA JEMPS EATERY AND CATERING	4191-0030-00	LBP-TUAO, CAGAYAN		\N
1906	RP	JUZYHT MANITO DELA VEGA	1896-3402-94	LBP-LOS BA?OS		\N
1907	RP	KAREN A ONG	1807-0137-65	LBP-PASEO BRANCH		\N
1908	RP	KAREN IBASCO	4799-0178-36	BPI-MASANGKAY		\N
1909	RP	KAREN JANE SALUTAN	1989-0373-03	BPI-ALIMALL BR.		\N
1910	RP	KAREN JOY BUENVENIDA	3069-0275-03	BPI-MALVAR TAFT BR.		\N
1911	RP	KAREN S. CRUZ	1827-3623-08	LBP-BICUTAN		\N
1912	RP	KARIZZ ANNE LALATA MORANTE	1587-0926-85	LBP-QUEZON CITY		\N
1913	RP	KARL JOHN ACEBEDO BAQUIRAN	3756-0054-63	LBP-PARANAQUE		\N
1914	RP	KARL MARLOU MACARIOLA BANTACULO	3576-0930-97	LBP-BAYBAY,LEYTE BR.		\N
1915	RP	KARL MARX ANDAYA QUIAZON	2967-0099-57	LBP-MU?OZ, NUEVA ECIJA BR.		\N
1916	RP	KARTINI RADJABULAN TAHIR	1247-0377-87	LBP-TAWI-TAWI BR.		\N
1917	RP	KARYLL DESTRITO ANTONIO	2137-0906-89	LBP-LAOAG, ILOCOS NORTE BR.		\N
1918	RP	KASFHI NICOLE PATRICIO	1826-1798-60	LBP-BICUTAN		\N
1919	RP	KATHERINE A. VILLAR	5107-3249-94	LBP-MALAYBALAY CITY BR		\N
1920	RP	KATHLEEN KEISHA RAMOS CONSTANTINO	3077-1195-30	LBP-UP DILIMAN, QUEZON CITY		\N
1922	RP	KAUTIN S. KULANO	2737-0236-67	LBP-KABACAN, COTABATO		\N
1923	RP	KAY MARK C. ORIO	329-3-32939388-8	METROBANK-BULACAN		\N
1924	RP	KEITH ROLLON SALANG	0366-4316-91	LBP-BUTUAN CITY BR.		\N
1925	RP	KEMUEL III MONTEDERAMOS QUINDALA	1897-1642-36	LBP-LOS BA?OS		\N
1926	RP	KENECHI JUMAWAN LUBOSTRO	2407-1150-26	LBP-CEBU CITY BR.		\N
1927	RP	KENNETH PETERSON LEVISTE	1094-8007-6110	UNIONBANK-VALENZUEKA CITY		\N
1928	RP	KENNETH SEVILLA	1827-3408-19	LBP-BICUTAN		\N
1929	RP	KEVIN ANTHONY S. SISON	3899-0069-59	BPI-ST. LUKE\\S,QC BR.		\N
1930	RP	KEVIN SOLINAP DAGA AS	0757-0822-84	LBP-KORONADAL BR.		\N
1931	RP	KHRISTINE L. SANDOVAL	0012-9072-8028	BDO-CALAMBA LAGUNA		\N
1932	RP	KIM ALVIN C. DE LARA	1145-0280-82	LBP-RIZAL BRANCH		\N
1933	RP	KIMBERLEE CALAGUI BUAY	1055-0335-91	LBP-TABUK, KALINGA		\N
1934	RP	KIMBERLY B. MARQUEZ	00-5-18774-635-3	DBP-PUERTO PRINCESA CITY BR		\N
1935	RP	KIMBERLY SAYSON ALMAJEDA	0065-2012-2725	BDO-TEACHERS VILL. BRANCH		\N
1936	RP	KING GEORGE D. BARRUGA	0905-0241-75	LBP-MASBATI  BR.		\N
1937	RP	KIRT DAVID B. MERCADO	8999-1009-62	BPI-GEORGETOWN CYBERMALL BR		\N
1938	RP	KNUEHLVIRN C. HAUTEA	4873-4872-2776-6	METROBANK-LA PAZ, ILOILO CITY		\N
1939	RP	KREANNE DIAZ	2119-1656-39	BPI-ZAMBOANGA MAIN BR.		\N
1940	RP	KRISSEN MARIE CUBERO AGUSTIN	3256-1093-51	LBP-BAMBANG,NUEVA VIZCAYA		\N
1941	RP	KRISTINE JOY LAPITAN TANDANG	1897-1082-55	LBP-UP LOS BA?OS BR.		\N
1942	RP	KRISTINE OFRECIO ABENIS	1897-1576-63	LBP-LOS BA?OS		\N
1943	RP	KRISTINE SERAFICO REODIQUE	1826-1830-51	LBP-BICUTAN		\N
1944	RP	KRISTOFFER REM CONSENCIO LABING-ISA	1827-4090-96	LBP-BICUTAN		\N
1945	RP	KRIZTELLE JOYCE AUNSO JAVIER	1556-1681-10	LBP-PAMPLOMA,LAS PI?AS		\N
1946	RP	KURT IRVIN M. ROJAS	042-3-04223836-9	METROBANK-LAS PI?AS ZAPOTE RD		\N
1947	RP	KYLE CARLO C. LASALA	1093-2324-3510	UNION BANK		\N
1948	RP	LADY ANGELA M. ROCENA	3077-0814-95	LBP-UP CAMPUS		\N
1949	RP	LAILANIE B. SAGALON	5117-7492-25	LBP-TABUK, KALINGA		\N
1950	RP	LALAINE ANN FUENTES MANUEL	2967-0375-94	LBP-MUNOZ, NUEVA ECIJA		\N
1951	RP	LARRY GER BERNARDO ARAGON	1466-0632-11	LBP-KATIPUNAN		\N
1952	RP	LAURICE ADRIANO PINEDA	3077-0740-65	LBP-QC		\N
1953	RP	LAURICE L. ZACARIAS	1096-5518-1593	UNIONBANK-QC		\N
1954	RP	LAURICE LATAP  ZACARIAS	1495-0270-62	LBP-CALOOCAN		\N
1955	RP	LAWRENCE JOHN PAULO L. TRINIDAD	3077-0760-41	LBP-UP DILIMAN		\N
1956	RP	LAWRENCE PATRICK LADIA LIMEN	0865-0417-48	LBP-APARRI, CAGAYAN VALLEY		\N
1957	RP	LAWRENCE YVES C. UY	3596-0143-04	LBP-CAMARINES SUR BRANCH		\N
1958	RP	LEAH AMOR SALEH CORTEZ	1987-1759-54	LBP- ARROCEROS		\N
1959	RP	LEAH FRIAS REYES	0665-0302-53	LBP-BANAWE BR.		\N
1960	RP	LEAH RAQUEL COLUMBRETIS LOPIDO	0651-1000-1007	PSBANK-LOS BA?OS BR.		\N
1961	RP	LEILA A. RAMOS	2817-0758-54	LBP-PARANAQUE		\N
1962	RP	LEILANI ARCEO SOLERA	3077-0554-86	LBP-UP DILIMAN		\N
1963	RP	LEIZEL QUINO ISAGUIRRE	1377-0575-85	LBP-LA TRINIDAD, BENGUET		\N
1964	RP	LEO CRISTOBAL CASTRO AMBOLODE II	0326-0127-77	LBP-ILIGAN CITY		\N
1965	RP	LEO TAJAPAL ARMADA	3077-1203-77	LBP-UP DILIMAN		\N
1966	RP	LEONALD CALALUAN OSERA	0307-0562-83	LBP-BATANGAS		\N
1967	RP	LEONARD P. LADIERO	1827-3441-30	LBP-BICUTAN		\N
1968	RP	LEONARDO FRANCISCO JR.	4869-0233-08	BPI-SAN BARTOLOME, MALABON		\N
1969	RP	LESTER FREDERICK G. DELGADO	3569-1318-54	BPI-BUENDIA BRANCH		\N
1970	RP	LESTER JOHN CARIAGA LIM	3077-0758-51	LBP-UP DILIMAN,QC		\N
1971	RP	LETICIA E. ANDOR	1825-0419-97	LBP		\N
1972	RP	LETICIA VENADAS CATRIS	1987-1268-05	LBP-YMCA ARROCEROS BR.		\N
1973	RP	LEVENIA B. MALLARE	2799-0505-68	BPI SAVINGS-COMMONWEALTH BR.		\N
1974	RP	LEVENIA C. BENDAL	1695-0089-50	LBP-COA BR.		\N
1975	RP	LIBRADA M. RUBIO	3775-0095-42	LBP-CLSU		\N
1976	RP	LIDEY P. SULTAN	2737-0623-52	LBP-COTABATO CITY		\N
1977	RP	LILIAN C. ANTIG	0361-2342-60	LBP-BUTUAN CITY		\N
1978	RP	LILIAN N. GUILLERMO	0137-0492-95	LBP-BICOL		\N
1979	RP	LILIAN QUIRAPAS MARTIN	3127-0221-85	LBP-BATASAN HILLS, QC		\N
1980	RP	LILIBETH GUILLERMO ABROGENA	2137-0231-83	LBP-ILOCOS NORTE BR.		\N
1981	RP	LILIBETH SAN JUAN GOZO	0255-0676-30	LBP-MAYSAN, VALENZUELA CITY		\N
1982	RP	LILLIAN JENNIFER VERZOLA RODRIGUEZ	3077-0388-75	LBP-UP DILIMAN		\N
1983	RP	LILY ANN C. PEDRO	2137-0231-67	LBP-ILOCOS NORTE		\N
1984	RP	LINDA NORA O. TALEON	1827-3920-96	LBP-BICUTAN		\N
1985	RP	LINDEN SUITES INC	3342-1014-44	LBP-DECS EO BR.		\N
1986	RP	LIVY ABENTAJADO TANILON	2000-2442-2991	EASTWEST-FAIRVIEW		\N
1987	RP	LOIDA D. JAPSON	0466-2378-09	LBP- SAN MANUEL, PUERTO PRINCESA		\N
1988	RP	LOIDA S. JAPSON	5-11380-635-5	DBP-PUERTO PRINCESA		\N
1989	RP	LOLITA S. HERNANDEZ	1827-3625-70	LBP-BICUTAN		\N
1990	RP	LORDNICO PAMILARAN MENDOZA	0707-1096-45	LBP-PHILCOA BRANCH		\N
1991	RP	LOREDY DINOPOL LAPITAN	0366-4319-93	LBP-BUTUAN CITY BR.		\N
1992	RP	LORELEI REGIME VINLUAN	3077-0358-50	LBP-UP CAMPUS		\N
1993	RP	LOREN JOY DE VERA ESTREBILLO	1827-2332-49	LBP-BICUTAN		\N
1994	RP	LORENZO ALVARADO MORON	0707-1101-71	LBP-QUEZON CITY CIRCLE		\N
1995	RP	LORENZO III CUISON ALMENDARES	0557-1499-61	LBP-EDSA GREENHILLS		\N
1996	RP	LORETA UY SEMANA	170-700-945-081-1	METROBANK - ILIGAN		\N
1997	RP	LORI SHAYNE ALAMO BUSA	0436-1415-56	LBP-NUEVA VIZCAYA BR.		\N
1998	RP	LORNA M. MINA	0137-1311-53	LBP-LEGAZPI CITY, ALBAY BR		\N
1999	RP	LORRAINE JOYCE MOULIC DEL ROSARIO	4036-0163-40	LBP-MANGALDAN, PANGASINAN		\N
2000	RP	LORVI BARRUN PAGOROGON	2087-0484-49	LBP-GOA, CAMARINES SUR		\N
2001	RP	LOTIS BAOC DAGUISONAN	0326-0432-73	LBP-ILIGAN CITY		\N
2002	RP	LOTIS E. MOPERA	1897-0367-18	LBP-LOS BA?OS		\N
2003	RP	LOUGEE ROSE BOLANTE SALVADOR	0255-1034-07	LBP-MAYSAN, VALENZUELA CITY		\N
2004	RP	LOUGEE ROSE V. BOLANTE	0255-0869-52	LBP-VALENZUELA CITY BR.		\N
2005	RP	LOUIE B DE LOS ANGELES	0137-2094-46	LBP-LEGAZPI CITY		\N
2006	RP	LOURDES CHRISTINE M. CALDEO	3346-0253-43	LBP		\N
2007	RP	LOVE JOY MOLINA PASCUA	0266-2194-31	LBP-LAOAG CITY		\N
2008	RP	LOVELY AIREIN MALAGA  DE GUZMAN	1987-2481-88	LBP-Q.C		\N
2009	RP	LOYD HARTEZ BOTOR	2705-0243-27	LBP-CAMARINES SUR BRANCH		\N
2010	RP	LUCMAN L. MANUPAC	5116-8039-86	LBP-PAGADIAN CITY		\N
2011	RP	LUZVIMINDA S. QUITOS	2967-0147-48	LBP-CLSU		\N
2012	RP	LYDIA SORIANO MANGUIAT	1895-0035-37	LBP-LOS BANOS		\N
2013	RP	LYKA BALACUIT DE LA ROSA	0976-2828-68	LBP-BUTUAN CITY		\N
2014	RP	LYNDON R. BAGUE	0597-0616-33	LBP-QUEZON CITY		\N
2015	RP	MA CHRISCHELLE F. BULLECER	7755-5113-49	DBP-TACLOBAN CITY		\N
2016	RP	MA DIVINA GRACIA LABATOS ADVINCULA	0186-6288-29	LBP-SAGKAHAN-TACLOBAN BR.		\N
2017	RP	MA LARA ANGELA SANTOS DALOOS	3076-1162-01	LBP-UP DILIMAN,QC		\N
2018	RP	MA MERLE ARIZAPA LUPO	3876-0062-77	LBP-ALBAY		\N
2019	RP	MA.  GRETA TABIN JACINTO	3077-0833-74	LBP-Q.C.		\N
2021	RP	MA. ANGELIE AZURIAS  MILLANES	1897-0926-00	LBP-LOS BANOS		\N
2022	RP	MA. ATHENA LABIO DILAN	7526-1842-75	BPI - V.LUNA KALAYAAN		\N
2023	RP	MA. BETTINA MACARAEG	1897-1346-39	LBP-LOS BA?OS		\N
2024	RP	MA. CARINA CHARILYN BUSTRIA	0255-0820-00	LBP-MAYSAN, VALENZUELA CITY		\N
2025	RP	MA. CHERYL L. FERNANDEZ	2695-0207-78	LBP		\N
2026	RP	MA. CONCEPCION Y. RAYMUNDO	1987-1314-50	LBP-YMCA BRANCH		\N
2027	RP	MA. CRISTINA LAGATIC LANORIO	1897-1522-20	LBP-LOS BA?OS BRANCH		\N
2028	RP	MA. DESIREE ALDEMITA	1897-0665-28	LBP-LOS BANOS		\N
2029	RP	MA. ELIZABETH DL LEOVERAS	1827-0886-05	LBP-BICUTAN		\N
2030	RP	MA. EMMA D. ESTOLATAN	1825-0425-60	LBP		\N
2031	RP	MA. EUGENIA ABLAN	1827-4010-60	LBP-BICUTAN		\N
2032	RP	MA. EVELYN ADVINCULA	1949-1700-19	BPI-MANILA BRANCH		\N
2033	RP	MA. GINA FRANCIA C. ESPIRITU	3777-0164-57	LBP		\N
2034	RP	MA. GRACIA A. FERNANDEZ	1706-0017-07	LBP-OWWA		\N
2035	RP	MA. ISABELLA GAITE HERMO	3077-1089-62	LBP-DILIMAN		\N
2036	RP	MA. KARLA P. BARELA	0326-3615-26	LBP-ILIGAN CITY		\N
2037	RP	MA. KATHERINE ECO LAUREANO	1827-4032-92	LBP-BICUTAN		\N
2038	RP	MA. LOURDES TABAOSARES CUMAGUN	1827-3193-13	LBP-BICUTAN		\N
2039	RP	MA. MYLENE MARTINEZ VILLEGAS	0707-1451-70	LBP-Q.C CIRCLE		\N
2040	RP	MA. NYMPHA B. JOAQUIN	3077-0336-87	LBP-UP CAMPUS		\N
2042	RP	MA. RICA TERESA BRIONES DUNGOG	3076-0870-90	LBP-UP DILIMAN		\N
2043	RP	MA. SEVERA FE S. KATALBAS	3057-0063-81	LBP-ILOILO CITY BR.		\N
2044	RP	MA. SHEILA SALVADOR PASCUA	2256-0833-80	LBP-LUNA, APAYAO		\N
2045	RP	MA. SHERYL C. VELASCO	1827-3229-26	LBP-BICUTAN		\N
2046	RP	MA. TERESA A. PAGARAGAN	0017-0344-72	LBP-Q.C		\N
2047	RP	MA. TERESA F. JAVIER	1826-1654-10	LBP-BICUTAN BRANCH		\N
2048	RP	MA. TERESA I. COCHING	0086-1150-69	LBP-SAN FERNANDO		\N
2049	RP	MA. TERESA L. ESCOBAR	3077-0489-27	LBP-UP DILIMAN		\N
2050	RP	MA. TERESA M ABAINZA	0137-1301-81	LBP-ALBAY		\N
2051	RP	MA. THERESA C. MARTIN	2396-0981-91	LBP-RIZAL BRANCH		\N
2052	RP	MA. THERESA L. DE VILLA	3077-0329-90	LBP-UP DILIMAN		\N
2053	RP	MA. VICTORIA NABOYA	5083-6077-59	DBP-TACLOBAN CITY		\N
2054	RP	MA. VIRGINIA FUNGO CABALAR	1093-2463-0034	UNION BANK-QC. BR		\N
2056	RP	MACHIAVELLI LODGE	0520-6762-7053-0	DBP-BALER		\N
2057	RP	MACRINA A. MORADOS	3076-0462-70	LBP-UP DILIMAN BR		\N
2059	RP	MADELINE TUTOP FERNANDO	2137-1033-49	LBP-ILOCOS NORTE		\N
2060	RP	MADEN S. SEGARRA	1827-3929-32	LBP-BICUTAN		\N
2061	RP	MADILYN BATALIRAN POVADORA	4326-0225-81	LBP-MASBATE CITY		\N
2062	RP	MAGNOLIA VELASQUEZ	1827-5863-97	LBP-BICUTAN		\N
2063	RP	MAGNOLIA VIDA A. CANO	0137-1195-01	LBP-LEGASPI		\N
2064	RP	MAHAR K. MANGAHAS	3051-0965-75	BPI-WEST TRIANGLE ,QC		\N
2065	RP	MAJAL RANI O. ESPIRITU	0566-5048-86	BPI-HARRISON BR.		\N
2066	RP	MAJAL RANI ORDONO ESPIRITU	1896-3926-26	LBP-BAGUIO BR.		\N
2067	RP	MANOLITO R. GEREZ	0114-2005-2827	BDO- GUMACA		\N
2068	RP	MANUEL B BARQUILLA	0327-0091-17	LBP-ILIGAN CITY		\N
2069	RP	MANUEL JUSTIN CUSTADO	0001-6096-0185	BDO-SM CUBAO		\N
2070	RP	MANUEL LUIS L. ABRERA	4056-0330-78	BPI-CIRCUMFERENTIAL ROAD ANTIPOLO CITY BR		\N
2071	RP	MARC GIL PAGAPULAAN CALANG	0366-2978-98	LBP-BUTUAN		\N
2072	RP	MARC VENER CARTAGO DEL CARMEN	2375-0530-74	LBP-CAVITE		\N
2073	RP	MARCELA CLAUDETTE VILLANUEVA SEVILLA	108-310-086-221	PNB-QUEZON CITY		\N
2074	RP	MARCIA CORAZON P RICO	0137-1309-80	LBP-ALBAY		\N
2075	RP	MARGARET ELAINE EGUIA CALVENDRA	0215-1102-14	LBP-LUCENA CITY		\N
2076	RP	MARGARETTE FAYE URBIZTONDO BITO	0367-1611-91	LBP-BUTUAN		\N
2077	RP	MARGARITA GOMEZ REYES	0057-4927-75	LBP-BUENDIA, MAKATI BR.		\N
2078	RP	MARGARITA VILLANUEVA ATIENZA	1827-5587-41	LBP-BICUTAN BRANCH		\N
2079	RP	MARI NEILA PLATINO SECO	1896-2962-10	LBP-LOS BA?OS BRANCH		\N
2080	RP	MARIA ANA GLIZA G. ESCULLAR	0707-0744-69	LBP-PHILCOA BRANCH		\N
2081	RP	MARIA ANGELA L. TAGUIANG	109-451-410-490	UNIONBANK-NAVOTAS		\N
2082	RP	MARIA C. PIMENTEL	0496-0899-79	LBP-MARIKINA CITY		\N
2083	RP	MARIA CLARA M. NASAYAO	0135-0019-96	LBP-LEGASPI CITY		\N
2084	RP	MARIA CORAZON M SAMORIN	5106-9478-82	LBP-GSIS UMID		\N
2086	RP	MARIA DIVINA G. REYES	3216-3569-64	BPI-CORINTHIAN PLAZA,MAKATI BR.		\N
2087	RP	MARIA EDEN A. ANTE	0137-1302-11	LBP-LEGAZPI CITY		\N
2088	RP	MARIA ESPERANZA E. JAWILI	1897-0502-65	LBP-LOS BANOS		\N
2089	RP	MARIA FATIMA ANGULO SOLON ACE VISUAL SOLUTIONS	2431-0128-74	LBP-LAPU LAPU CITY BR		\N
2090	RP	MARIA GEMMA B. ARANTE	3777-0176-40	LBP		\N
2091	RP	MARIA ISABEL S. SENAL	3077-0386-03	LBP-UP DILIMAN		\N
2092	RP	MARIA LETICIA GALLARDO REYNA	3125-0020-12	LBP-BATASAN HILLS, QC		\N
2093	RP	MARIA LIZA I. BERANDOY	0165-0666-18	LBP-CLAVERIA DAVAO		\N
2094	RP	MARIA LOURIE C. VICTOR	3346-0323-40	LBP-DepEd Meralco Ext.		\N
2095	RP	MARIA NINA D. FLORES OR RAYMUNDO DIONISIO	2000-2930-3737	EASTWEST-MALOLOS BULACAN		\N
2096	RP	MARIA PATRICIA V. AZANZA	1827-3405-41	LBP-BICUTAN		\N
2097	RP	MARIA PILAR O. CAPALONGAN	1725-1092-76	LBP-QUEZON CITY		\N
2098	RP	MARIA REJANE JUNIO NEPACINA	0276-1140-93	LBP-BACLARAN BRANCH		\N
2099	RP	MARIA TERESA A. MIRANDILLA	0137-1197-30	LBP-LEGAZPI CITY		\N
2100	RP	MARIA THERESA LEYBA MANICIO	1987-1471-44	LBP-YMCA		\N
2101	RP	MARIA THERESA TAT TENGCO	3077-1502-17	LBP-UP DILIMAN		\N
2102	RP	MARIA VANESSA LUSUNG OYZON	3071-0265-14	LBP-UP CAMPUS		\N
2103	RP	MARIA VIKTORIA MELGO	1229-1813-23	BPI-TUNASAN MUNTINLUPA		\N
2104	RP	MARIAN DE JESUS DOMINGO	3127-0197-88	LBP-BATASAN HILLS, QC		\N
2105	RP	MARIAN MICHELLE DE LA MERCED NAVALES	3077-1746-80	LBP-UP DILIMAN,QC		\N
2106	RP	MARIAN PULIDO DE LEON	1897-0129-75	LBP-LOS BANOS		\N
2107	RP	MARIANNA LOURDES MARIE LOPEZ GRANDE	0237-1440-74	LBP-WEST AVENUE BRANCH		\N
2108	RP	MARIANNE PERFECTO	1466-0557-58	LBP-KATIPUNAN		\N
2109	RP	MARIBEL GANGOSO NONATO	0496-1001-31	LBP-MARCOS HIGHWAY BR.		\N
2110	RP	MARICAR D. AGAO	1725-1184-61	LBP-Q.C HALL		\N
2111	RP	MARICAR D. DASMARINAS	1488-1019-2741	PNB-PUERTO PRINCESA CITY BR		\N
2112	RP	MARICEL A. GOMEZ	2407-0574-84	LBP-BANILAD CEBU CITY		\N
2113	RP	MARICRIS N. APALING	1055-0301-69	LBP-TABUK, KALINGA		\N
2115	RP	MARIE GRACE S. ARBOLEDA	1057-0255-37	LBP-TABUK, KALINGA		\N
3503	\N	CHARM ANGEL PARDILLO	\N	\N	\N	\N
2116	RP	MARIE JHOANNE F. MORILLA	1827-3998-21	LBP-BICUTAN		\N
2117	RP	MARIE JOYCE C. LOPEZ	0127-2001-2749	BDO-LAONG LAAN BR.		\N
2118	RP	MARIE THESS D. QUILALANG	0707-1447-26	LBP-QC CIRCLE		\N
2119	RP	MARIEROSE D. JASARENO	0137-1196-09	LBP-LEGAZPI CITY		\N
2120	RP	MARIETTA C. PARUNGAO	162-3-162-22507-4	METROBANK-TAFT. AVE P. OCAMPO MANILA		\N
2121	RP	MARILENE VILLANUEVA	1725-0026-76	LBP-QUEZON CITY HALL		\N
2122	RP	MARILOU A. BULSAO OR MARK ANTHONY ASPURIA	2251-0521-00	LBP-LUNA, APAYAO		\N
2123	RP	MARILOU CORTES PABINGUIT	1911-0619-92	LBP-SIQUIJOR		\N
2124	RP	MARILYN U. BALAGTAS	1982-0091-85	LBP-MANILA		\N
2125	RP	MARILYN VALDEAVILLA MEDINA	0707-0113-94	LBP-Q.C		\N
2126	RP	MARINELA M. ASERON	251-000131-9	CHINABANK-CALAMBA		\N
2127	RP	MARINO DAL	000-870-563-998	BDO-CDO		\N
2128	RP	MARINO O. DAL	4108-1023-7022	PNB-LKK BR		\N
2129	RP	MARIO ANTONIO L. JIZ II	3837-0061-38	LBP-ALABANG,MUNTINLUPA		\N
2130	RP	MARIO S. MICLAT	0707-0111-49	LBP-Q.C		\N
2131	RP	MARISSA LOURDES LOPEZ	0041-7801-9881	BDO- REPOSO MAKATI		\N
2132	RP	MARITA C. PIMENTEL	3127-0838-93	LBP-BATASAN		\N
2133	RP	MARITES CABANAYAN BATAC	3777-0111-61	LBP-BULACAN		\N
2134	RP	MARIVENT RESORT HOTEL INC.	525-0242686	BDO-BALANGA BATAAN		\N
2135	RP	MARIZEL BADILLO VILLANUEVA	0307-0750-08	LBP-BATANGAS CITY BR.		\N
2136	RP	MARJORIE ABELLA NARIZ	1555-0333-50	LBP-LAS PI?AS BR		\N
2137	RP	MARJORIE MAE M HERNANDEZ	0307-1619-23	LBP-BATANGAS		\N
2138	RP	MARK ANGELO BARTOLOME SOMOSA	3077-1290-99	LBP-DILIMAN		\N
2139	RP	MARK ANTHONY CUEVAS LEIDO	0505-0630-23	LBP- CALAPAN CITY		\N
2140	RP	MARK ANTHONY J. TORRES	0327-0234-70	LBP -ILIGAN		\N
2141	RP	MARK ARIEL GAGATE PECAJAS	1435-0770-95	LBP-TAYUMAN BRANCH		\N
2142	RP	MARK CHRISTIAN FRANCISCO	0069-6015-1138	BDO-BGC BRANCH		\N
2143	RP	MARK DONDI M. ARBOLEDA	1897-1066-60	LBP-LOS BANOS		\N
2144	RP	MARK IAN CALAPARAN TAGAMI	2137-0664-60	LBP-ILOCOS NORTE		\N
2147	RP	MARK KEVIN  A. YARA	1827-4087-74	LBP-BICUTAN		\N
2148	RP	MARK L. LOYOLA	0035-7016-6796	BDO-KATIPUNAN LOYOLA HEIGHTS		\N
2149	RP	MARK LESTER MENOR VALLE	2386-1122-50	LBP-BINAN		\N
2150	RP	MARK LEXTER TORRES DE LARA	3077-1073-54	LBP-DILIMAN		\N
2152	RP	MARK NOLAN P. CONFESOR	0327-0210-79	LBP-ILIGAN CITY		\N
2153	RP	MARK PAULO S. TOLENTINO	3089-2811-71	BPI-KATIPUNAN		\N
2154	RP	MARK PAULO SABATER TOLENTINO	3076-1296-80	LBP-UP DILIMAN		\N
2155	RP	MARK PRETZEL ZUMARAGA	1827-3229-50	LBP-BICUTAN		\N
2156	RP	MARK STEVEN RAMOS SANTIAGO	1467-0723-46	LBP-KATIPUNAN		\N
2157	RP	MARK XAVIER E. BAILON	1587-0886-88	LBP-QUEZON CITY		\N
2158	RP	MARKEL A. MADRIGAL	8706-1663-24	BPI-U.P. TECHNO HUB BR.		\N
2159	RP	MARKEL ADRIAS MADRIGAL	0707-0623-80	LBP-PHILCOA BRANCH		\N
2160	RP	MARLENE RAGUINDIN RAFANAN	1827-4613-73	LBP-BICUTAN		\N
2161	RP	MARLO G. LUCAS	244-3-244-08457-6	METROBANK-FARMERS PLAZA BR.		\N
2162	RP	MARLON CASIMIRO EBAEGUIN	3076-0939-53	LBP-Q.C		\N
2163	RP	MARLON PALBUSA	0566-4181-73	BPI-BAGUIO CITY		\N
2164	RP	MARLON PEREZ STA CATALINA	2395-0169-14	LBP-BINANGONAN BR.		\N
2165	RP	MARLYN D. BITON	0167-2282-83	LBP-C.M RECTO DAVAO		\N
2166	RP	MARNELLI SOTTO ALVIOLA	1897-1186-68	LBP-LOS BA?OS		\N
2167	RP	MART ALMER PANALIGAN MEDINA	1897-1522-97	LBP-LOS BA?OS BRANCH		\N
2168	RP	MARVIN JASTIVA ROSALES	0215-1117-33	LBP- QUEZON		\N
2169	RP	MARVIN LOPOS DIAZ	0695-0388-28	LBP-CONGRESSIONAL		\N
2170	RP	MARVIN U. HERRERA 	1897-0245-31	LBP-LOS BANOS		\N
2171	RP	MARX VERGEL MELENCIO	1005-9014-6936	UNIONBANK-QC		\N
2172	RP	MARY ANGELYNNE CRUZ FABRO	3077-0698-27	LBP-UP DILIMAN		\N
2173	RP	MARY ANN C. CALLEJA	1827-2314-08	LBP-BICUTAN		\N
2174	RP	MARY ANN GRACE B. DULAY	0115-0684-90	LBP-PANGASINAN		\N
2175	RP	MARY ANN MARAPAO GANZON	0367-2126-32	LBP-BUTUAN BR.		\N
2176	RP	MARY ANN S. NICDAO	1827-4089-44	LBP-BICUTAN		\N
2177	RP	MARY ANNE DULA MASA	1827-4015-24	LBP-BICUTAN		\N
2178	RP	MARY DESCERY JOY B. BONGCAC	3077-1025-49	LBP-UP DILIMAN		\N
2179	RP	MARY GAIL R. LANIPAO	1056-1791-90	LBP-TABUK, KALINGA		\N
2180	RP	MARY GRACE AGUILARIO LORCA	1935-0327-05	LBP-PASSI CITY ILOILO		\N
2181	RP	MARY GRACE FAROL BUMANLAG	1825-0481-77	LBP-TAGUIG		\N
2182	RP	MARY GRACE G. BONTO	1827-5531-11	LBP-BICUTAN		\N
2183	RP	MARY GRACE M. BUNOL	3237-0005-60	LBP-ZAMBOANGA CITY		\N
2185	RP	MARY JANE U. MONTANEZ	2546-0647-70	LBP-HALANG CALAMBA BR.		\N
2186	RP	MARY JEAN A. MORANTE	5210-6903-3599-9036	BDO-MANILA		\N
2187	RP	MARY JOY FRIAS LUGA	0326-2598-61	LBP-ILIGAN CITY		\N
2188	RP	MARY MEL BALACUIT BAYNOSA	0805-0876-33	LBP-TUBOD,LANAO DEL NORTE		\N
2189	RP	MARY ROCHELLE CORDERO	0016-1548-81	LBP-INTRAMUROS BR.		\N
2190	RP	MARY ROSE C. LOPEZ	3077-0644-00	LBP-UP DILIMAN		\N
2191	RP	MARY ROSE OFIALDA SUERTE	0037-1896-50	LBP-ILOILO		\N
2192	RP	MARYANN AMOTO ARTIZUELA	0466-2654-46	LBP-PUERTO PRINCESA		\N
2193	RP	MATHEMATICAL SOCIETY OF THE PHILS. 	275-830-3910	PNB-QUEZON CITY		\N
2194	RP	MATTHEW D. PORAL 	3076-0788-30	LBP-UP DILIMAN		\N
2195	RP	MAULANA A. SALATUN	3237-0113-32	LBP-ZAMBOANGA CITY		\N
2196	RP	MAXINE STEPHANIE MERA PRADO	3077-1066-50	LBP-DILIMAN		\N
2197	RP	MAYBELL MARIELLA AMADOR PALAYPAYON	1897-0985-51	LBP-LOS BA?OS		\N
2199	RP	MAYLANI L. GALICIA	5106-0229-60	LBP-LEGASPI CITY		\N
2200	RP	MAYNARD B. ALDAY	2255-0183-05	LBP-LUNA, APAYAO		\N
2201	RP	MELANDRO D. SANTOS	1435-0514-79	LBP-TAYUMAN BRANCH		\N
2203	RP	MELBERT S. BROQUEZA	3347-0174-17	LBP-PASIG CITY		\N
2204	RP	MELISSA C. BULAO	1827-2001-70	LBP-BICUTAN		\N
2205	RP	MELODEE TURING PACIO	0237-1968-21	LBP-WEST AVE.,Q.C		\N
2206	RP	MELODY JANE PEDERNAL	6355-1155-01	DBP-PUERTO PRINCESA		\N
2207	RP	MELODY MENDOZA CLERIGO	1987-2611-68	LBP-AROCEROS		\N
2208	RP	MELVIN ANGUB MANTILLA	0987-0941-50	LBP-DAVAO		\N
2209	RP	MELVIN G. CALIMAG	2506-1186-29	BPI-EDSA SHANGRILA PLAZA		\N
2210	RP	MELVIN PANGANIBAN JUSI	1896-2219-10	LBP-LOS BA?OS		\N
2211	RP	MENANDRO SERRANO BERANA	3077-0656-19	LBP-DILIMAN		\N
2212	RP	MERCURIA T. MENOR	2255-0069-35	LBP-LUNA, APAYAO		\N
2213	RP	MERIAM BANTUGAN BOUQUIA	0367-0749-14	LBP-BUTUAN		\N
2214	RP	MERLE CUSTODIO TAN/AURA JANE C. TAN	39-334-900001-1	PNB-UP CAMPUS		\N
2215	RP	MERLINA F. CORTEZ	1827-3430-79	LBP-BICUTAN		\N
2216	RP	MERRY JAINE TUAZON ORTILLO	0237-1970-97	LBP-WEST AVE.		\N
2217	RP	MERVIN B. GOROSPE	1827-4608-22	LBP-BICUTAN BRANCH		\N
2218	RP	MIA BELLA CORPORATION	033-7-03352214-9	METROBANK-ERMITA BRANCH		\N
2219	RP	MICAH GUPIT PACHECO	1725-0022-42	LBP-Q.C.		\N
2220	RP	MICAH PAULINA CRUZ LIMLENGCO	288-3068-001	BPI-DAVAO CORPORATE CENTER		\N
2221	RP	MICHAEL ANGELO A. LEGARDE	00-5-19236-635-5	DBP-PUERTO PRINCESA CITY BR		\N
2222	RP	MICHAEL ANGELO VERGARA LERPIDO	1987-2871-40	LBP-YMCA BRANCH		\N
2223	RP	MICHAEL BALICAO MALVAR	0545-11871Y-500	DBP-LAONG		\N
2224	RP	MICHAEL CHARLESTON BRIONES CHUA	3076-0746-14	LBP-UP DILIMAN BR		\N
2225	RP	MICHAEL EUSEBIO SERAFICO	1827-0429-07	LBP-BICUTAN		\N
2226	RP	MICHAEL JULIUS G. HAYAG	2055-0323-11	LBP-TRECE MARTIRES CITY BR.		\N
2227	RP	MICHAEL JUN PONCIANO	7755-2036-00	DBP-TACLOBAN CITY		\N
2228	RP	MICHAEL KENNEDY GAMBALAN CAMARAO	2457-0451-77	LBP-ISULAN,SULTAN KUDARAT		\N
2229	RP	MICHAEL LIM TAN	3077-0355-15	LBP-UP DILIMAN		\N
2230	RP	MICHELLE ALARCON	3520-1015-42	BPI		\N
2231	RP	MICHELLE GRAZA	3457-1063-00	LBP-MAKATI		\N
2232	RP	MICHELLE JOAN B. BALICAO	1057-0290-28	LBP-TABUK, KALINGA		\N
2233	RP	MICHELLE MANGLICMOT	1969-0381-17	BPI-VERTIS NORTH BR		\N
2234	RP	MICHELLE TEREZ MANGLICMOT	3077-0560-16	LBP-UP DILIMAN		\N
2235	RP	MIGUEL C. CANO	0859-0288-37	BPI-LEGAZPI ALBAY		\N
2236	RP	MIKAEL ANGELO S. FRANCISCO	003-41026220-7	BDO-SIVER CITY BR		\N
2237	RP	MIKE DARYL O. OCOL	2119-3050-58	BPI-ZAMBOANGA CITY		\N
2238	RP	MIKHAILANGELO BARBARONA PANZO	1916-0752-58	LBP-SIQUIJOR BR.		\N
2239	RP	MIKO LORENZO J. BELGADO	1896-2564-20	LBP-UP LOS BANOS		\N
2240	RP	MILAGROS R. MAGNAYE	1827-0061-10	LBP - BICUTAN		\N
2241	RP	MILLET A. MANGUNAY	1827-4014-78	LBP-BICUTAN		\N
2242	RP	MINELLA C. ALARCON	3080-0203-32	BPI-LOYOLA BRANCH		\N
2243	RP	MIRALUNA ALBINA	0034-0030-0203	BDO-DUMAGUETE CITY		\N
2244	RP	MIRASOL G DOMINGO	2567-0056-50	LBP-BAJADA, DAVAO CITY BR.		\N
2245	RP	MITCHIE BERN CORTEZ BENIGA	1587-1061-98	LBP-CLARK		\N
2246	RP	MODESTA RAMOS BASTIAN	0226-4280-03	LBP-BAGUIO		\N
2247	RP	MOHAMAD HAMID ABDULLAH	2746-3173-12	LBP-COTABATO CITY		\N
2248	RP	MOHAMAD SAUDI MACALIMPAS SILONGAN	0376-5249-14	LBP-COTABATO CITY		\N
2249	RP	MOHAMMAD FAIDZ UBPON	0079-5007-3478	BDO-WALTER MART, BICUTAN		\N
2250	RP	MOHAMMAD JASHRIE MALAWANI RONDA	2746-2996-75	LBP-MAGUINDANAO BR.		\N
2251	RP	MONALISA RAGAY ENOT	1827-0360-10	LBP-BICUTAN		\N
2252	RP	MONINA CHESKA LOTERIA CASTRO	1897-0953-15	LBP-LOS BANOS		\N
2253	RP	MONIRA BINO SAMAUPAN	0137-2167-52	LBP- ALBAY		\N
2254	RP	MS ANN\\S FOODTWON	5-27786-740-9	DBP DUMAGUETE		\N
2255	RP	MUDJEKEEWIS DALISAY  SANTOS	0236-0778-29	LBP-WEST AVE.		\N
2256	RP	MUSEO PAMBATA FOUNDATION INC.	0026-6800-3848	BDO-UN AVENUE		\N
2257	RP	MYA WIN HNIT	1827-5783-43	LBP-BICUTAN BRANCH		\N
2258	RP	MYLA ESPERANZA DETECIO	1987-1349-64	LBP-YMCA		\N
2259	RP	MYLENE GONZAGA CAYETANO	3077-0898-36	LBP-UP DILIMAN		\N
2260	RP	MYRA RUTH S. POBLETE	3077-0844-60	LBP-UP DILIMAN		\N
2261	RP	MYRNA A. SOBREVEGA	1827-3227-72	LBP-BICUTAN		\N
2263	RP	NANCY GONZALES DURAN	2255-0116-70	LBP-LUNA, APAYAO		\N
2264	RP	NANCY M. FLORES	1-326-50813-2	RCBC- SESSION ROAD BAGUIO CITY BR.		\N
2265	RP	NAOMI COSSETTE RIGOR LUIS	0037-1894-21	LBP-ILOILO		\N
2266	RP	NAOMI O. SOLIS	1827-3227-80	LBP-BICUTAN		\N
2267	RP	NATHALIA FRANCHETTE A. CANLAS	9033-4681-51	RCBC-CALBAYOG CITY BR.		\N
2268	RP	NATIONAL  ARCHIVES OF THE PHILIPPINES	0012-1130-05	LBP-INTRAMUROS BR.		\N
2269	RP	NEIL JASON R. ANDOQUE	0039-3002-2065	BDO-SCOUT ALBANO BR.		\N
2270	RP	NEIL KENNETH JAMANDRE	3076-0308-46	LBP-UP DILIMAN		\N
2271	RP	NELIA V. BENITO	3347-0090-74	LBP-BULACAN		\N
2274	RP	NENA B. ASINGJO	0707-0801-40	LBP-PHILCOA BRANCH		\N
2275	RP	NERIZA MAE R. GUETA	9909-2883-28	BPI CALOOCAN CAMARIN SUSANO		\N
2276	RP	NERRIE ESCALA MALALUAN	0307-0126-85	LBP-BATANGAS		\N
2277	RP	NESTLEY  ILANO SORE	1986-1771-80	LBP-YMCA BRANCH		\N
2278	RP	NESTOR C. HERANA	0405-0523-69	LBP-ILOCOS SUR		\N
2279	RP	NESTOR GONZALES ACALA	1267-0501-94	LBP-MARAWI CITY BR.		\N
2280	RP	NESTOR MICHAEL C. TIGLAO	3077-0127-01	LBP-Q.C.		\N
2281	RP	NESTOR P. NUESCA	3776-0169-76	LBP-OLONGAPO		\N
2282	RP	NETNET B. DESEO	1897-1127-59	LBP-LOS BANOS		\N
2283	RP	NICK CAINOY PANARES	8115-0677-97	DBP-CAPISTRANO		\N
2285	RP	NICOLAS FRANCISCO A. DE OCAMPO	3325-2059-96	BPI-DILIMAN		\N
2286	RP	NICOLE TRISHA FUENTES PANGANIBAN	1517-1794-65	LBP-MALACANANG BRANCH		\N
2287	RP	NIDA C. GUMANGAN	3586-0240-85	LBP-PALAR TAGUIG		\N
2288	RP	NIGEL GLENN NIEDO JAVIER	0146-3393-95	LBP-GOV. OSME?A, CEBU CITY		\N
2289	RP	NILO M. ARAGO	0597-0889-22	YMCA BRANCH		\N
2290	RP	NIMFA L. BRACAMONTE	0327-0059-60	LBP -ILIGAN		\N
2291	RP	NINO POLICARPIO POTE SANCHEZ	0506-1143-57	LBP-CALAPAN,MINDORO		\N
2292	RP	NIVAGINE C. NIEVARES	0707-0724-90	LBP-PHILCOA BRANCH		\N
2293	RP	NOBLE MARISSA C. DOMINGO	2255-0069-78	LBP-LUNA, APAYAO		\N
2294	RP	NOEL A. ABIVA	0436-2096-65	LBP-NUEVA VIZCAYA		\N
2295	RP	NOEL G SABINO	1897-0600-66	LBP-LOS BANOS		\N
2296	RP	NOEL TORREJA FORTUN	1426-1457-03	LBP-IMUS CAVITE		\N
2297	RP	NOLI B. ABRIGO JR	0125-1999-41	LBP-TUGUEGARAO BR		\N
2298	RP	NOREEN GALICIA PARAFINA	8109-2403-39	BPI-MANILA		\N
2299	RP	NORHANIFA PAITO GANDAROSA	1266-3073-45	LBP-MARAWI CITY BR.		\N
2300	RP	NORHAYNA D. ERYLL	1267-0555-44	LBP-MARAWI CITY BR.		\N
2301	RP	NUHMAN MAHANG ALJANI	1957-0558-73	LBP-ZAMBOANGA SOUTHWAY BR.		\N
2302	RP	ODINE MARIA M. DE GUZMAN	3077-0213-79	LBP-UP DILIMAN		\N
2303	RP	ODYSSA NATIVIDAD  MONTOYA MOLO	0327-0183-70	LBP-ILIGAN CITY		\N
2304	RP	OMAR THOMAS N. WARD	0049-5029-5139	BDO-ROBINSON GALLERIA		\N
2305	RP	ORLANDO VINCULADO JR.	9639-1572-18	BPI-TACLOBAN CITY		\N
2306	RP	OSRIC PRIMO BERN A. QUIBOT	1827-4613-57	LBP-BICUTAN		\N
2307	RP	PABLO BENAL LANES	1827-8793-86	LBP-BICUTAN BR.		\N
2308	RP	PABLO DELOS SANTOS ROMO	1826-2147-20	LBP-BICUTAN		\N
2309	RP	PAMELA LOUISE MERCADO TOLENTINO	3077-0773-23	LBP-UP DILIMAN		\N
2310	RP	PAOLO CARLO CALALANG	3077-1351-45	LBP-UP DILIMAN		\N
2311	RP	PATRICIA KIM TOLENTINO ESPINO	3077-1281-22	LBP-UP DILIMAN,QC		\N
2312	RP	PATRICK F. CAMPOS	3077-0151-15	LBP-KATIPUNAN		\N
2313	RP	PATRICK LAWRENCE PALMES CADELINA	1466-0609-21	LBP-KATIPUNAN		\N
2314	RP	PATRICK R. PATA	3077-0757-03	LBP-UP DILIMAN		\N
2315	RP	PAUL ERIC C. MAGLALANG	1827-3917-74	LBP-BICUTAN		\N
2316	RP	PAUL M. CATALAN	5035-0444-01	BPI FAMILY SAVINGS-KALENTONG BR		\N
2317	RP	PAUL MARK B. MEDINA	00-5-01570-411-0	DBP-MANILA, NAKPIL BR.		\N
2318	RP	PAULA BLANCA VALENCIA GABAN	2967-0641-68	LBP-NUEVA ECIJA		\N
2319	RP	PAULINE M. SALTARIN	3080-0077-86	BPI-LOYOLA HEIGHTS BR.		\N
2320	RP	PECIER PAUL DECIERDO	192-913784-8	BPI-BGC		\N
2322	RP	PERCIVAL D. MAGPANTAY	3077-0222-27	LBP-UP DILIMAN		\N
2323	RP	PERLA GAN GOTIL PEARLMONT HOTEL DE ORO BAYANIHAN INC	0151-1758-30	LBP-CAPISTRANO BR.		\N
2324	RP	PERRY S. ONG	0037-221653-100	PHILIPPINE VETERANS-UP DILIMAN BR.		\N
2325	RP	PETER DIZON SUSON	0326-2984-41	LBP-ILIGAN CITY BR.		\N
2326	RP	PETER ERNIE PARIS	7555-188737	DBP-ILOILO		\N
2327	RP	PETER JEFFREY V. MALOLES	1827-2558-11	LBP-BICUTAN		\N
2328	RP	PETER MARK DELA CRUZ	3089-1669-25	BPI-KATIPUNAN		\N
2329	RP	PETER MARTIN GOMEZ	0028-8803-1237	BDO		\N
2330	RP	PETER VAN C. ANG-UG	0375-0805-59	LBP-KORONADAL BR.		\N
2331	RP	PETER YUOSEF M. RUBIO	1827-4943-10	LBP-BICUTAN		\N
2332	RP	PHABE Y. TABUCALDE	5-17035-635-2	DBP-PUERTO PRINCESA		\N
3625	\N	ZIANNE CATERING				\N
2333	RP	PHILIP CHRISTIAN CORREA ZUNIGA	3076-0526-61	LBP-UP DILIMAN		\N
2335	RP	PHILIP JORDAN BLANCAS	1827-0749-14	LBP-BICUTAN		\N
2336	RP	PHILIP NOEL II OMANDAM BANAAG	0516-3668-93	LBP-DIPOLOG BR.		\N
2337	RP	PIA REGINA FATIMA C. ZAMORA	1827-1831-01	LBP-BICUTAN		\N
2338	RP	PORTIA G. LAPITAN	1897-0568-67	LBP-LOS BANOS		\N
2339	RP	PRECIOUS NOCHE VELASCO 	0255-1452-82	LBP-MAYSAN, VALENZUELA CITY		\N
2340	RP	PRISCO JR SUGALAN RIVERA	3127-0226-22	LBP-BATASAN HILLS, QUEZON CITY		\N
2341	RP	PROCUREMENT SERVICE-DBM, CLEARING ACCOUNT	1422-2220-17	LBP-UN AVE., MANILA		\N
2342	RP	QUEENDEL VANEE GARCIA	2119-2997-59	BPI-ZAMBOANGA MAIN BR.		\N
2343	RP	RACHEL P. BATISLAONG	9779-1301-31	BPI-NOVALICHES,SAN BARTOLOME QC		\N
2344	RP	RACHEL PATRICIA BAUTISTA RAMIREZ	3077-0349-34	LBP-QC		\N
2345	RP	RACHEL T. BULAQUI	1425-0311-60	LBP-CAVITE		\N
2346	RP	RACQUEL ABRETAN LUBAN	2255-0220-35	LBP-LUNA, APAYAO		\N
2347	RP	RACQUEL PUSTA ALVENDIA	1827-5894-26	LBP-BICUTAN		\N
2348	RP	RAFAEL JUNNAR PARRILLA DUMALAN	3077-0388-59	LBP-DILIMAN		\N
2349	RP	RAFFY JAY CASTIL FORNILLOS	3076-0968-71	LBP-UP CAMPUS,DILIMAN		\N
2350	RP	RAINERIO SALOMES	0032-0040-4684	BDO-PAGADIAN		\N
2351	RP	RALPH ANGELO BUERGO PLAZA	0987-0935-01	LBP-SURIGAO CITY BR.		\N
2352	RP	RALPH S. HIPOLITO	0237-1787-26	LBP-CLARK		\N
2353	RP	RALPH S. HIPOLITO	1587-0850-77	LBP-QUEZON CITY		\N
2354	RP	RAMIDA ISIRI AJUJI	1957-0593-48	LBP-ZAMBOANGA SOUTHWAY BR.		\N
2355	RP	RAMIL JIMENEZ	2850-0034-51	BPI-CAVITE		\N
2357	RP	RAMON A. RAZAL	1897-0238-70	LBP-UPLB		\N
2358	RP	RAMON L. SANCHEZ III	0299-0841-24	BPI-		\N
2359	RP	RAMON LOPEZ SANCHEZ III	3077-0830-05	LBP-UP DILIMAN		\N
2361	RP	RAMON RAYMUNDO PIO RODA	1827-3435-59	LBP-BICUTAN		\N
2362	RP	RAMON STEPHEN L. RUIZ	5036-0611-05	BPI-KALENTONG BRANCH		\N
2363	RP	RAMON VANN CLEFF BORNALES RARO	3077-0766-88	LBP-MARIKINA		\N
2364	RP	RANDY LIGSANAN CAGA ANAN	0326-1156-73	LBP-ILIGAN CITY BRANCH		\N
2365	RP	RANJEE JAVIER B. BASQUINAS	0135-1263-22	LBP-LEGAZPI		\N
2366	RP	RANZIVELLE MARIANNE I. ROXAS-VILLANUEVA	1467-0253-30	LBP-KATIPUNAN BRANCH		\N
2367	RP	RAUL C. LA ROSA	0146-1066-41	LBP-CEBU		\N
2368	RP	RAUL C. SABULARSE	1827-0349-39	LBP-BICUTAN		\N
2369	RP	RAY FERDINAND MEDALLO GAGANI	1355-0295-70	LBP-LAPU LAPU CITY BR		\N
2370	RP	RAYMOND CAPID ORDINARIO	0707-0741-40	LBP-SAN MATEO RIZAL		\N
2371	RP	RAYMOND THADDEUS C. ANCOG	0717-0155-76	LBP-Q.C.		\N
2372	RP	REBECCA JULIANA P.  MARQUEZ	2775-0063-26	BPI-MANILA		\N
2373	RP	REBECCA T. BAGUIO	00-5-19061-635-8	DBP-PUERTO PRINCESA CITY BR		\N
2374	RP	REINABELLE REYES	0081-7800-3986	BDO-JR CAMPOS BRANCH		\N
2376	RP	REMBERTO I. ESPOSA JR.	6510-1319-77	BDO-MARIKINA BRANCH		\N
2377	RP	REMEDIO IGNACIO RIKKEN	1516-0485-45	LBP-MALACANANG BRANCH		\N
2378	RP	REMINA SUBA SABADO	1827-4870-11	LBP-BICUTAN		\N
2379	RP	RENAN O. ELCULLADA	5250-2673-54	DBP-OSMENA BR.		\N
2380	RP	RENARD M. JAMORA	1897-0686-28	LBP-UPLB		\N
3504	\N	JAYSON DELOS REYES SANTOS	\N	\N	\N	\N
2381	RP	RENATO B. GUIDOTE	3209-1994-74	BPI-AYALA		\N
2382	RP	RENATO PACPAKIN	0165-0721-70	LBP-CLAVERIA DAVAO		\N
2383	RP	RENSON AGUILAR ROBLES	0307-0729-47	LBP-BATANGAS BR.		\N
2384	RP	RESA MAE REQUIRME SANGCO	0327-1570-19	LBP-ILIGAN CITY		\N
2385	RP	RESURRECCION B. SADABA	3057-0079-30	LBP-MIAG-AO BRANCH		\N
2386	RP	REX GUERREO	0707-0113-27	LBP-QUEZON CITY		\N
2387	RP	REX M. SARIO	0017-6034-7084	BDO-BUKIDNON BR.		\N
2388	RP	REX MENDEL CAPILI	2915-0248-34	LBP-CALOOCAN EXTENSION BR.		\N
2389	RP	REX S. FORTEZA	1587-0851-40	LBP-QUEZON CITY		\N
2390	RP	REX VICTOR O. CRUZ	1897-0613-05	LBP-LOS BANOS		\N
2391	RP	REY ADRIAN CELESTIAL ILARDE	1827-5344-51	LBP-BICUTAN		\N
2392	RP	REY JACOB MILLENA	0137-0896-70	LBP-LEGASPI		\N
2393	RP	REY KRISTOFFER V. SALINAS	0035-7019-8701	BDO-KATIPUNAN		\N
2395	RP	REY REYES	2126-0465-87	BPI-ZAMBOANGA MAIN BR.		\N
2396	RP	REYNALDO C. TAGALA	2077-0224-76	LBP-SARANGANI		\N
2397	RP	REYNAN LANGOMEZ TOLEDO	3237-0208-70	LBP-ZAMBOANGA CITY		\N
2398	RP	REYNANTE ENRIQUEZ AUTIDA	3237-0087-14	LBP-ZAMBOANGA CITY BR.		\N
2399	RP	RHEA ALTHEA T. GUNTALILIB	8579-2176-19	BPI-NUEVA VIZCAYA BR		\N
2400	RP	RHEA JAVINEZ YPARRAGUIRRE	2166-1166-03	LBP-BISLIG BRANCH		\N
2401	RP	RHODA ABELLERA NOCUM	1495-0525-55	LBP-NOVALICHES BR.		\N
2402	RP	RHONALYN V. MACALALAD	0707-1096-53	LBP-PHILCOA BRANCH		\N
2403	RP	RICA AMOR G. SALUDARES	1897-1463-60	LBP-LOS BA?OS BRANCH		\N
2404	RP	RICA ANNAGUE PEREZ	0205-0857-50	LBP-SAN FERNANDO		\N
2405	RP	RICA CALPO SANTOS	0707-1739-39	LBP-PHILCOA BRANCH		\N
2406	RP	RICA JANE Y. KOSCA	2817-0760-60	LBP-FTI BR.		\N
2407	RP	RICARDO GARCIA SR.	3237-0005-78	LBP-ZAMBOANGA CITY		\N
2408	RP	RICARDO TILA BAGARINAO	1896-3204-71	LBP-LAGUNA		\N
2409	RP	RICHARD DALE UMAYAN	0053-1105-4280	BDO-TAGUIG		\N
2410	RP	RICHARD P. TAGLE	2967-0105-48	LBP-CLSU		\N
2411	RP	RICHARD RAMOS JUGAR	2406-0452-96	LBP-CEBU		\N
2412	RP	RICHELLE OGAME TUVILLO	3076-1094-50	LBP-UP DILIMAN		\N
2414	RP	RICKY M. MAGNO	755-209367-560	DBP-ILOILO		\N
2415	RP	RIGOR I BIRON BUENO	2785-0377-18	LBP-TABACO CITY BR.		\N
2416	RP	RIKKAMAE ZINIA MARIE L. WALDE	1827-4050-58	LBP-BICUTAN		\N
2417	RP	RITA CADIZ DELOS SANTOS	1827-3614-92	LBP-BICUTAN		\N
2419	RP	RIZALINDA L DE LEON	3077-0221-38	LBP-QUEZON CITY		\N
2420	RP	RIZALINE LIMPIN SANTOS	3776-0187-66	LBP-SAN FERNANDO PAMPANGA		\N
2422	RP	ROBBY CARLO ADESAS TAN	1827-3228-29	LBP-BICUTAN		\N
2423	RP	ROBERT BALUYOT BADRINA	0707-1549.34	LBP-QUEZON CITY CIRCLE		\N
2424	RP	ROBERT STEPHEN BIADOMA	4860-4848-03	BDO-ESPANA		\N
2425	RP	RODELOU TENIZO SILADAN	2746-2528-57	LBP-KORONADAL BR.		\N
2426	RP	RODERICK GONZALES	3225-0532-18	BPI-STA. ANA, MANILA		\N
2427	RP	RODRIGO ABOYO HAGUPIT	0786-2566-40	LBP-SORSOGON		\N
2428	RP	RODRIGO NAROD CARANOG ECO	3076-1022-60	LBP-DILIMAN		\N
2429	RP	ROGEL MARI DIONISIO SESE	1897-0959-60	LBP-LOS BANOS		\N
2430	RP	ROGEL MARI SESE	2519-2365-94	BPI-DAVAO ATENEO BR		\N
2431	RP	ROGELIO CLAVERIA ESCORIAL	1826-2642-99	LBP-BICUTAN		\N
2432	RP	ROHIT C. TILWANI	1587-0877-38	LBP-QUEZON CITY		\N
2433	RP	ROLAND JAY A. MIGUEL	1959-0734-61	BPI-CONGRESSIONAL AVE. BR.		\N
2434	RP	ROLANDO JR GATAN ALLAM	1896-3060-45	LBP-UP LOS BANOS		\N
2435	RP	ROLANDO N. PALUGA	0805-638875-500	DBP-CARAGA		\N
2436	RP	ROLANDO R. BARCELON	0695-0214-70	LBP-CONGRESSIONAL		\N
2437	RP	ROMAR MENDOZA GARRIDO	0845-498173-500	DBP-SAN FRANCISCO, AGUSAN DEL SUR		\N
2438	RP	ROMELA N. RATILLA	3146-0581-74	LBP-CDO BR		\N
2439	RP	ROMELYN C. RAMOS	2817-0737-89	LBP-FTI		\N
2440	RP	ROMELYN TUTAAN LAGURA	2137-0334-56	LBP-BATAC BR		\N
2441	RP	ROMEO BANEZ  SANTOS	3076-0877-59	LBP-UP CAMPUS		\N
2442	RP	ROMEO JR. MISTICA COMETA	1827-4012-30	LBP-BICUTAN		\N
2443	RP	ROMHER JUDE T. QUILANTANG	0037-801-0996	BDO-BUENDIA		\N
2444	RP	ROMMEL CARL R. PERALTA	0135-1214-52	LBP-ALBAY		\N
2445	RP	ROMULO B. BASA	0225-0418-06	LBP-BENGUET		\N
2446	RP	ROMULO JOSEPH FELICIANO DE CASTRO	1496-2362-50	LBP-NOVALICHES BR.		\N
2447	RP	RONA D. CANINDO	1435-0217-40	LBP-MANILA		\N
2448	RP	RONA MAE CAPUA RODRIGUEZ	3077-1394-00	LBP-UP DILIMAN Q.C		\N
2450	RP	RONALDO A. LIVETA	0707-0809-14	LBP-QUEZON CITY		\N
2451	RP	RONALDO COMPLAMA REYES	2785-0341-31	LBP-TABACO CITY		\N
2452	RP	RONIE SUMOGAT  ALAMON	1827-4598-91	LBP-BICUTAN		\N
2454	RP	ROSABEL LAZARO ACOSTA	2137-0221-01	LBP-BATAC, ILOCOS NORTE		\N
2455	RP	ROSALIE PAGULAYAN	0707-0088-49	LBP-QUEZON CITY		\N
2456	RP	ROSANA JUMARITO FEROLIN	1710-7253-15	CHINABANK-CEBU CITY, CEBU		\N
2457	RP	ROSANELIA T. YANGCO	3077-0358-92	LBP-UP DILIMAN		\N
2458	RP	ROSARIO E. BRUCAL	1827-3439-40	LBP-BICUTAN		\N
2459	RP	ROSARIO MARGARITA A. ALIGADA	040331-00179-3	PS BANK-Q.C		\N
2460	RP	ROSARIO MARTINEZ BELMI	1987-1731-96	LBP-Q.C.		\N
2461	RP	ROSBY GOINGCO	0677-0625-17	LBP-Q.C		\N
2462	RP	ROSE ANN ENRIQUEZ	0357-0000-1484	PHILTRUST BANK		\N
2465	RP	ROSEJELYNN C. BULANTE	238-614-5724	BPI-TANDANG SORA		\N
2467	RP	ROSEMARIE ANN ALVA MARASIGAN	0707-1113-48	LBP-QUEZON CIRCLE		\N
2468	RP	ROSEMARIE GALVEZ FELIMON	2326-1915-42	LBP - ILOILO CITY		\N
2469	RP	ROSEMARIE GASANGAN GALVEZ	2327-0158-70	LBP-GUIMARAS		\N
2470	RP	ROSEMARIEVIC V. DIAZ	1987-1269-61	LBP-TAFT AVENUE		\N
3505	\N	RICHARD DEIN ALTAREZ	\N	\N	\N	\N
3506	\N	PAOLO MICHAEL LAFUENTE	\N	\N	\N	\N
2471	RP	ROSEMEL DALIMAG DACQUIL	4176-0660-38	LBP-CABAGAN, ISABELA BR.		\N
2472	RP	ROSETTE ODULIO UNTALAN	3077-1015-50	LBP-UP CAMPUS		\N
2473	RP	ROSIERRO OBEJAS DE LEON	1827-3716-84	LBP-BICUTAN		\N
2474	RP	ROSITA M. GALLARIN	2815-0231-48	LBP		\N
2475	RP	ROSS ANN GRATELA GAVINO	1827-5530-06	LBP-BICUTAN		\N
2476	RP	ROSSBEE S. RAMIREZ	0255-0620-34	LBP-MALABON		\N
2477	RP	ROVEL ROBLES SALCEDO	2326-1550-31	LBP-ILOILO		\N
2478	RP	ROWEN R. GELONGA	0036-3705-56	LBP-IZNART		\N
2479	RP	ROWENA A. RIVERA	0435-0041-72	LBP-NUEVA VIZCAYA BR.		\N
2480	RP	ROWENA ARTIFICIO GLORIOSO	1315-0110-15	LBP-SAN PABLO CITY		\N
2481	RP	ROWENA B. MARGALLO	0087-2207-96	LBP-SAN FERNANDO		\N
2482	RP	ROWENA D. MAPANOO	3286-0608-45	LBP-GMA CAVITE		\N
2483	RP	ROWENA V. BRIONES	1826-0420-24	LBP-BICUTAN		\N
2484	RP	ROWENA VELASCO VIAJAR	1827-3229-34	LBP-BICUTAN		\N
2485	RP	RUBIE SAJISE	011-4401-93337	BDO-SM EAST ORTIGAS BR		\N
2486	RP	RUBY ANAMONG	0566-5860-09	BPI-BAGUIO CITY		\N
2487	RP	RUBY ANN V. FLORIDA	0072-5026-5579	BDO-MARIKINA BRANCH		\N
2488	RP	RUBY ANNE NATIVIDAD KING	1827-1785-23	LBP-LOS BA?OS BRANCH		\N
2489	RP	RUBY B. HUGO	7020-0265-80	BDO-NAIC BR.		\N
2490	RP	RUBY H. BAUTISTA	2055-0061-32	LBP-TRECE MARTIRES CITY BR.		\N
2491	RP	RUBY RATERTA	1827-0349-55	LBP-BICUTAN		\N
2492	RP	RUBY SHAIRA F. PANELA	4689-0510-95	BPI-P. BURGOS,BALAGTAS, BULACAN		\N
2493	RP	RUBY SHAIRA FIGUEROA PANELA	3076-1152-72	LBP-DILIMAN		\N
2494	RP	RUEL CARLO LAVIN TANQUECO	1897-0991-83	LBP-UP LOS BA?OS BR.		\N
2495	RP	RUFINO T. BARCALA JR.	1827-3806-75	LBP-BICUTAN		\N
2496	RP	RUFO A. LABARRETE	5127-8502-26	LBP-GSIS UMID		\N
2497	RP	RUSSELL N. GORRE	3167-0077-90	LBP-BACOLOD		\N
2498	RP	RUTH A. ALIDO	1987-1265-11	LBP-ARROCEROS BR.		\N
2499	RP	RYAN M. NOLEAL 	4050-1217-46	BDO-SM CITY NORTH EDSA		\N
2500	RP	RYAN NOVE C. HUANG	5111-9674-02	DBP-DUMAGUETE BRANCH		\N
2501	RP	RYAN QUILAB OPERARIO	00-5-66791-735-7	DBP-CEBU CITY BR.		\N
2502	RP	RYAN RAVELAS TIU	1206-2123-29	LBP-BORONGAN CITY BR.		\N
2503	RP	SALINA O. ALFAD	3237-0036-40	LBP-ZAMBOANGA CITY		\N
2504	RP	SALLY BARICAUA GUTIEREZ	3077-0556-72	LBP- DILIMAN BR.		\N
2505	RP	SALLY S. PAKINGAN	0707-0106-57	LBP-Q.C		\N
2506	RP	SALVADOR GOMEZ QUIRIMIT	0707-1537-17	LBP-QUEZON CITY		\N
2507	RP	SALVADOR SIRONA AVISA	0405-0591-93	LBP-VIGAN CITY BR.		\N
2508	RP	SAMMY PAIDOMAMA MALAWAN	2746-2402-39	LBP-ESTOSAN, COTABATO CITY		\N
2509	RP	SAN JUAN BEACH CORPORATION	1030-1000513-3	UCPB-DUMAGUETE CITY		\N
2510	RP	SANTIAGO G BERNARDO FOUNDATION INC (SHSVP) 	1551-1404-62	LBP-LAS PI?AS		\N
2512	RP	SARLYN HINAHON ROBLEDO	1827-3419-80	LBP-BICUTAN		\N
2513	RP	SATURNINO L. MACASINAG JR	0059-4022-1085	BDO-DARAGA		\N
2514	RP	SEGUNDO JOAQUIN JR ECLAR ROMERO	2477-0279-57	LBP-DOLE INTRAMUROS BR.		\N
2515	RP	SENEN LABORTE SALUBAYBA	0215-1126-40	LBP-LUCENA CITY		\N
2516	RP	SEYMOUR BARROS SANCHEZ 	1781-1431-50	LBP-PASONG TAMO BR.		\N
2517	RP	SHALAINE SANA TATU	1827-4870-38	LBP-BICUTAN		\N
2518	RP	SHAYNE S. REANO	1896-3671-33	LBP-LOS BA?OS BRANCH		\N
2519	RP	SHEILA DE ASIS MANTARING	1827-5468-75	LBP-BICUTAN		\N
2520	RP	SHEILA MARIE SINGA CLAVER	1377-0575-00	LBP-BENGUET		\N
2521	RP	SHELMARK ANDRADE ACOSTA	0177-1017-10	LBP-UP CAMPUS		\N
2522	RP	SHERRYL MACAYA MONTALBO	0307-0559-61	LBP-BATANGAS CITY		\N
2523	RP	SHERWIN NACUA	1267-0326-33	LBP-MARAWI CITY BR.		\N
2524	RP	SHERWIN PONCE ROSALES	0077-957-56	LBP-TARLAC CITY		\N
2525	RP	SHERWYNE V. FARNICAN	3127-0535-36	LBP-MARIKINA		\N
2526	RP	SHERYL LYN C. MONTEROLA	3077-0342-76	LBP-KATIPUNAN		\N
2527	RP	SHIELA ISORENA ARROCA	0137-1302-62	LBP-LEGAZPI CITY BR.		\N
2528	RP	SHILA ROSE DELA CRUZ SIA	1987-1599-08	LBP-YMCA BRANCH		\N
2529	RP	SHIRLEY R. JUSAYAN	0031-5657-58	LBP-ILOILO CITY BR.		\N
2530	RP	SHYLEE P. PINLAC	2256-1522-93	LBP-LUNA, APAYAO		\N
2531	RP	SIGMUND FAJARDO BRETON	0687-1265-99	LBP-G. ARANETA BR		\N
2532	RP	SLYVIO SABINO	5-24134-735-5	DBP-CEBU		\N
2533	RP	SOLEDAD A. ULEP	3071-0148-18	LBP-UP DILIMAN		\N
2534	RP	SOLJIN M. ROBLES	041-00-003782-4	BANK OF COMMERCE-BUTUAN CITY		\N
2535	RP	SONIA B. LODADO	1725-0675-57	LBP-QUEZON CITY HALL		\N
2536	RP	SOPHIA LAJA BENSALI	3237-0011-83	LBP-ZAMBOANGA CITY		\N
2537	RP	STEPHANIE GAE SANTOS ABANO OR EUFRECINA DELA CRUZ SANTOS	1505-0372-58	LBP- TAGAYTAY CITY		\N
2538	RP	STEPHANIE TUMAMPOS	3739-0654-01	BPI-MAKATI		\N
2539	RP	STERLING PLATA	5277-0150-15			\N
2540	RP	SUSAN M. CARANDANG	0557-0288-46	LBP-CAVITE		\N
2541	RP	SUSANA F. ESQUIVEL- SDO	1821-2011-59	LBP-BICUTAN		\N
2542	RP	SUZANNE MARIE ROXAS	0366-3484-05	BPI-SALCEDO VILLAGE TORDESILLAS BRANCH		\N
2543	RP	SYBEL JOY LABIS	1339-172-702	BPI-ILOILO CITY		\N
2544	RP	TAGAYTAY AUTOMART INC.	1502-1061-78	LBP-E. AGUINALDO HI-WAY, TAGAYTAY CITY		\N
2545	RP	TEOFILA DC VILLAR	1897-0245-15	LBP-LOS BANOS		\N
2546	RP	TERENCIA B. ABARQUEZ	1827-3428-38	LBP-BICUTAN		\N
2547	RP	THADDEUS OWEN DC AYUSTE	1827-3403-98	LBP-BICUTAN		\N
2548	RP	THELMA D. PALAOAG	9489-1226-82	BPI-BAGUIO CITY		\N
2549	RP	THERESE JULIENNE TORRETA MEDINA	1897-0664-80	LBP-UPLB		\N
2550	RP	TIMOTHY GERARD ALCAZAR BALDEMOR	1316-3234-79	LBP-SAN PABLO CITY, LAGUNA BR.		\N
2551	RP	TIMOTHY JAMES M. DIMACALI	3216-4849-46	BPI-CORINTHIAN PLAZA,MAKATI BR.		\N
2552	RP	TRINIDAD P. TRINIDAD	1827-0032-43	LBP-BICUTAN BRANCH		\N
2553	RP	TRISTAN CASINO ORBETA	3077-1274-01	LBP- DILIMAN BR.		\N
2554	RP	TRIXIA MIE MAGSUCANG NAVARRO	1827-5461-40	LBP-BICUTAN		\N
2555	RP	VALLERIE ANN INNIS SAMSON	3077-1334-10	LBP-UP DILIMAN		\N
2556	RP	VANESSA NEILLIZZLE B. BARTOLOME	1826-1710-88	LBP BICUTAN		\N
2557	RP	VENUS M. ALBORUTO	457-3-457-03645-1	METROBANK-SURIGAO		\N
2558	RP	VENUS PATACSIL ANDAYA	0207-1522-93	LBP-SAN FERNANDO LA UNION		\N
2559	RP	VERJO ANGELIE CRUZ MARISTELA	1896-2099-70	LBP-LOS BA?OS BRANCH		\N
2560	RP	VERNALYN RENTINO ABARINTOS	1827-5072-76	LBP-MANILA		\N
2562	RP	VIA KAREN ARROYO MAGANGGO	1826-2909-40	LBP-BICUTAN BR.		\N
2564	RP	VIC MARIE I. CAMACHO	1987-1267-91	LBP-ARROCEROS		\N
2565	RP	VICTOR BATUNGBAKAL MARIANO	3777-0152-99	LBP-BENGUET		\N
2566	RP	VICTOR BINGCO ASIO	3577-0094-48	LBP-LEYTE		\N
2567	RP	VIDA VILLA ANTONIO	2137-0222-68	LBP-ILOCOS NORTE		\N
2568	RP	VINCE LOUANNE RECAMARA TABILON	3807-0431-28	LBP-DAPITAN, ZAMBOANGA DEL NORTE BR.		\N
2569	RP	VINCENT BUTCH SALDIVAR EMBOLODE	3445-0119-23	LBP-BAYUGAN CITY BR.		\N
2570	RP	VINCENT PAULO VELASQUEZ	0024-9057-1881	BDO-SM TAYTAY		\N
2572	RP	VINCENT THEODORE  BALO	0054-2770-7359	DBP-CEBU		\N
2573	RP	VIRGILIO JR PALACAY GRAGASIN	0436-0256-10	LBP-SOLANO, NUEVA VIZCAYA BR.		\N
2574	RP	VIRGILIO SENADREN ALMARIO	1517-0840-73	LBP-MALACANANG BRANCH		\N
2575	RP	VIRJO ANNE LODIA LACASANDILE	1827-5471-62	LBP-BICUTAN		\N
2576	RP	VON ANTHONY G. TORIO	470-765-232	BDO-SM MANILA		\N
2577	RP	VON CHRISTOPHER GULPRIC CHUA	0237-2222-02	LBP-QC		\N
2578	RP	WAHID ACOB LUCAS	2746-2041-35	LBP-KORONADAL BR.		\N
2579	RP	WARREN GILBERT II NUQUE CO	1827-5340-60	LBP-BICUTAN		\N
2580	RP	WARREN KIM SIAROT	3577-0404-26	LBP-BAYBAY LEYTE		\N
2581	RP	WARREN LUZARES OBEDA	3577-0343-88	LBP-BAYBAY,LEYTE BR.		\N
2582	RP	WATARIE E. MANTO	2737-0623-44	LBP-COTABATO CITY		\N
2583	RP	WAYNE A. SOCRATES	0465-0371-21	LBP-PUERTO PRINCESA		\N
2584	RP	WENDELL ADRIAN OSIO LIM	1827-5853-82	LBP-BICUTAN		\N
2585	RP	WENDELL I. FORMALEJO	3347-0174-25	LBP-DECS EXT. OFFICE PASIG		\N
2586	RP	WHIZVIR O. GUSTILO	1896-2624-80	LBP-LOS BA?OS		\N
2587	RP	WILBUR ISAAC GAWILI LAPADA	3076-1237-71	LBP-UP DILIMAN		\N
2588	RP	WILFRED B. BAMBICO	0566-1983-27	BPI SAVINGS BANK-HARRISON ROAD BR.		\N
2589	RP	WILFREDO V.  ALANGUI	000-05803-510-9	DBP-BAGUIO		\N
2590	RP	WILLIE P. ABASOLO	1897-0339-72	LBP-LOS BANOS		\N
2591	RP	WINDSOR FOODS CORP.	1741-0032-67	BPI - MANILA		\N
2592	RP	WORLEY CORPEN TORRES	1827-3437-61	LBP-BICUTAN		\N
2593	RP	YANCY AUBREY JACOME PANUGON	2326-2125-82	LBP-ILOILO CITY		\N
2594	RP	YOLANDA G. PERLAS	1827-3225-27	LBP-BICUTAN		\N
2595	RP	YOLANDA P. GARCIA	0327-0070-68	LBP-ILIGAN CITY		\N
2596	RP	YVONNE IVY LIKIT DOYONGAN	3077-1068-03	LBP-UP DILIMAN BR		\N
2597	RP	YVONNE M. KIEL	0167-2291-31	LBP-CLAVERIA DAVAO		\N
2598	RP	ZENAIDA PANGARUNGAN HADJI RAOF LAIDAN	0377-0984-63	LBP-KORONADAL BR.		\N
2599	RP	ZENNIFER LIBO ON OBERIO	0037-0286-22	LBP-ILOILO MAIN BRANCH		\N
2600	RP	ZSARINA GRACE GECAIN BRANANOLA	1355-0429-16	LBP-LAPU LAPU CITY BR		\N
2601	RP	MARLO AMBAL ALVAREZ	1645-0220-56	LBP-C. RAYMUNDO, PASIG BR.		\N
2602	RP	GENEL RAMOS YUTUC	0257-0768-57	LBP-MAYSAN, VALENZUELA CITY BR.		\N
2603	RP	ARIANNE DELLOMOS CATIBOG	0585-0134-47	LBP-AURORA, CUBAO BR.		\N
3507	\N	HAROLD BANGALISAN	\N	\N	\N	\N
3508	\N	CL SIA TRADING BY CATHERINE L SIA	\N	\N	\N	\N
2604	GIAPS	AARON F. ESGUERRA	3466-1073-94	LBP-TUNGKONG MANGGA BR		DOST-SEI, Bicutan
2605	GIAPS	AARON S. CRUZ	1827-3985-74	LBP-BICUTAN		DOST-SEI, Bicutan
2606	GIAPS	ABYGAIL S. FLORO	1827-5627-81	LBP-BICUTAN		DOST-SEI, Bicutan
2710	RegEmp	ANITA E. GORGONIO	1827-4125-42	LBP-BICUTAN		\N
2711	RegEmp	ANNA PATRICIA A. LAPUZ	1827-6350-70	LBP-BICUTAN		\N
2712	RegEmp	ANNE CHIARA S. AMPONIN	1827-3610-34	LBP-BICUTAN		\N
2713	RegEmp	APRIL D. VALDEZ	1827-4124-61	LBP-BICUTAN		\N
2714	RegEmp	CASYLYN B. NOBLE	1826-1692-29	LBP-BICUTAN		\N
2715	RegEmp	CHARILYN JOY M. LAYUS	1827-4125-69	LBP-BICUTAN		\N
2716	RegEmp	CHARLOT N. PANAL	1827-5626-33	LBP-BICUTAN		\N
2717	RegEmp	CYNTHIA T. GAYYA	1827-4125-34	LBP-BICUTAN		\N
2718	RegEmp	GAIUS KARL G. NOBLE	1827-4130-42	LBP-BICUTAN		\N
2719	RegEmp	GERALDINE P. MARFIL	1827-4956-50	LBP-BICUTAN		\N
2721	RegEmp	JASMIN COLEEN Y. INTIA	1827-5678-72	LBP-BICUTAN		\N
2723	RegEmp	JEMMALYN C. MINIAO	1827-4130-18	LBP-BICUTAN		\N
2724	RegEmp	JHAN JHAN P. DE VERA	1827-4124-37	LBP-BICUTAN		\N
2725	RegEmp	JOANA TERESA Y. MEDINA	1827-4125-77	LBP-BICUTAN		\N
2726	RegEmp	JOBELLE P. GAYAS	1827-4125-26	LBP-BICUTAN		\N
2727	RegEmp	JOHN PAUL L. RAMOS	1827-5101-88	LBP-BICUTAN		\N
2728	RegEmp	JOSEFINA A. FERNANDEZ	1827-4125-00	LBP-BICUTAN		\N
2729	RegEmp	JOSEPHINE S. FELICIANO	1827-4124-88	LBP-BICUTAN		\N
2730	RegEmp	JOSETTE T. BIYO	1827-4123-48	LBP-BICUTAN		\N
2731	RegEmp	JUAN ANTONIO R. TUAZON	1827-4127-12	LBP-BICUTAN		\N
2732	RegEmp	JULIE ANNE S. CUSI	1827-4955-45	LBP-BICUTAN		\N
2733	RegEmp	KAREN LOUISE M. VILLAS	1827-4131-82	LBP-BICUTAN		\N
2734	RegEmp	KARLA HERNANDEZ CALIBO	1827-5767-31	LBP-BICUTAN		\N
2735	RegEmp	LIBERTY LEN B. YUSORES	1827-5309-44	LBP-BICUTAN		\N
2736	RegEmp	LIEZL M. DE LARA	1827-4124-29	LBP-BICUTAN		\N
2737	RegEmp	LOVE JOY M. PASCUA	1827-5624-98	LBP-BICUTAN		\N
2738	RegEmp	LUZ S. RIMORIN	5167-5033-59	GSIS		\N
2739	RegEmp	MA. CECILIA M. SACOPLA	1827-4051-71	LBP-BICUTAN		\N
2649	GIAPS	JOHN BENNARD CADA RODOLFO	1827-5828-12	LBP-BICUTAN		DOST-SEI, Bicutan
3509	\N	JUDEE NOGODULA	\N	\N	\N	\N
3510	\N	JOAN DELOS SANTOS PLACIDO JS	\N	\N	\N	\N
2720	RegEmp	GLENNISE SHYRA BAYKING	1827-5789-80	LBP-BICUTAN		\N
2650	GIAPS	JOHN CHRISTOPHER R. VISTAN	1826-3382-09	LBP-BICUTAN		DOST-SEI, Bicutan
2651	GIAPS	JOHN JEMUEL PELIPADA	1826-3567-38	LBP-BICUTAN BR.		DOST-SEI, Bicutan
2652	GIAPS	JOSE NAXIEL V. RESOLIS	1827-4130-93	LBP-BICUTAN		DOST-SEI, Bicutan
2653	GIAPS	JOSHUA P. CABANGON	1827-5687-71	LBP-BICUTAN		DOST-SEI, Bicutan
2740	RegEmp	MA. CRISTINA MAE S. ILAW	1827-3672-37	LBP-BICUTAN		\N
2741	RegEmp	MA. DAISY A. DEMONI	1827-4124-53	LBP-BICUTAN		\N
2742	RegEmp	MA. GRACE B. SASOTA	1827-4126-58	LBP-BICUTAN		\N
2743	RegEmp	MA. NERISSA M. NICOLAS	1827-3945-36	LBP-BICUTAN		\N
2744	RegEmp	MA. TERESA R. CASTILLO	1827-4123-80	LBP-BICUTAN		\N
2745	RegEmp	MARIA CRISTINA M. BERMISO	1827-5767-23	LBP-BICUTAN		\N
2746	RegEmp	MARIA ELENA C. AGBUIS	1827-4123-13	LBP-BICUTAN		\N
2747	RegEmp	MARIA LOURDES V. FELICITAS	1827-4124-96	LBP-BICUTAN		\N
2748	RegEmp	MARJORIE V. HERNANDEZ	1827-4129-25	LBP-BICUTAN		\N
2749	RegEmp	MARK IVAN C. ROBLAS	1827-4126-31	LBP-BICUTAN		\N
2750	RegEmp	MARK JOHN PAUL RIVERA CAPISTRANO	1827-4123-72	LBP-BICUTAN		\N
2751	RegEmp	MARREN JOY BELGADO-AQUINO	1827-4123-30	LBP-BICUTAN		\N
2752	RegEmp	MARY ANGELICA D.C. PALOMO	1827-4130-85	LBP-BICUTAN		\N
2753	RegEmp	MARY ANN A. MANILA	1827-4129-76	LBP-BICUTAN		\N
2754	RegEmp	MICHAEL C. TELESFORO	3757-0355-36	LBP-PASAY		\N
2755	RegEmp	MONIRA B. SAMAUPAN	1827-5767-15	LBP-BICUTAN		\N
2756	RegEmp	PETER GERRY P. GAVINA	1827-4125-18	LBP-BICUTAN		\N
2757	RegEmp	PHILIP J. BUE	1827-4123-56	LBP-BICUTAN		\N
2758	RegEmp	PHILIP J. BUE-RATA	5126-5622-00	GSIS		\N
2759	RegEmp	RANDOLF S. SASOTA	1827-4126-66	LBP-BICUTAN		\N
2760	RegEmp	REYNULFO D. DOLOTINA	1827-6414-10	LBP-BICUTAN		\N
2761	RegEmp	ROBBY L. REYES	1827-5465-06	LBP-BICUTAN		\N
2762	RegEmp	RODELIO G. DE ASIS	1827-4124-02	LBP-BICUTAN		\N
2763	RegEmp	SHARAMAE M. TORRES	1827-4131-40	LBP-BICUTAN		\N
2764	RegEmp	SHEENA MAE K. BALA-OY	1827-4091-18	LBP-BICUTAN		\N
2765	RegEmp	SHERYLL LEE R. SALES	1827-4131-31	LBP-BICUTAN		\N
2767	RegEmp	SUSANA F. ESQUIVEL	1827-4124-70	LBP-BICUTAN		\N
2768	RegEmp	VERGEL P. REBUTA	1827-4126-15	LBP-BICUTAN		\N
2769	DealSupls	3 STAR MEDICAL CLINIC AND DIAGNOSTICS CENTER INC.	20194-000863-3	UCPB-BATASAN BR.		\N
2770	DealSupls	A & E IMAGING CO., INC. 	2000-0728-7762	EASTWEST BANK-PASONG TAMO,MAKATI		\N
2771	DealSupls	ABLAZE MARKETING	177-7177-537-108	Metrobank-Q.C. ROTONDA		\N
2772	DealSupls	ACCEL PRIME TECHNOLOGIES INC.	2922-1015-26	LBP-SAN JUAN BRANCH		\N
2773	DealSupls	ACCENT MICRO TECHNOLOGIES INC.	0671-0479-74	LBP-PASIG		\N
2774	DealSupls	ACCESSORIES AND SUPPLIES DEPOT INC.	3722-1006-29	LBP-ESPA?A BRANCH		\N
2775	DealSupls	ACEZ INSTRUMENTS PHILS CORP	177-3-177525120	METROBANK-QUEZON CITY		\N
2776	DealSupls	ACTIVE GEOANCHOR INC.	0073-6800-7935	BDO-SM HYPERMARKET MAKATI BR		\N
2777	DealSupls	ADROW CREATIVES INC	3731-0027-37	LBP-PEARL DRIVE ORTIGAS BR.		\N
2778	DealSupls	ADVANCE SOLUTIONS INC.	1441-0445-65	LBP-UN BRANCH		\N
2779	DealSupls	ADVENUE MEDIA CORPORATION	3901-0027-29	LBP-BGC BRANCH		\N
2780	DealSupls	AFFIRM CENTER FOR RESEARCH AND PROFESSIONAL LEARNING INC	0039-2801-3146	BDO-DILIMAN-CAPITOL HILLS		\N
2781	DealSupls	AGI CAPITAL VENTURES INC	0621-1292-87	LBP-COMMONWEALTH BR.		\N
2782	DealSupls	AGILE TECHFRONTIER CORPORATION 	3431-0772-20	LBP-ATRIUM BRANCH		\N
2783	DealSupls	AJIS AQUA SPORTS	7037-5125-47	METROBANK-VELEZ CDO		\N
2784	DealSupls	ALBAS FILIPINO CATERING SERVICES	0065-0001-3246	BDO-ALABANG HILLSBOROUGH BR		\N
2785	DealSupls	ALFRA VENTURES GROUP INC	0992-1070-73	LBP-CAMIGUIN BR.		\N
2786	DealSupls	ALLIANZ PLATFORM OF MEDICAL INTEGRATOR PHILIPPINES CORP.	007-7-00752011-1	METROBANK-PASIG BR		\N
2787	DealSupls	ALLSOURCE PRODUCTS CORP.	0691-1182-07	LBP-PASIG		\N
2788	DealSupls	ALMABERTA D BOGNOT E AND A INKPRESS PRINTS AND ENTERPRISE	1521-1312-21	LBP-STO ROSARIO, ANGELES CITY BR		\N
2789	DealSupls	ALMONT HOTEL INCORPORATED	0361-2024-57	LBP-BUTUAN CITY BRANCH		\N
2790	DealSupls	ALPHA DIGIZONE MARKETING	0000-6054-0222	BDO-LIBERTAD COLAYCO ST.		\N
2791	DealSupls	ALVAREZ AND BORROMEO DEV\\T. CORP.	3171-0674-80	LBP-CEBU CITY		\N
2792	DealSupls	ALVHEA TRADING	7479-0199-80	METROBANK - DASMARINAS		\N
2793	DealSupls	AMBASSADOR APPLIANCES, INC.	4480-0007-74	BDO-BINONDO MANILA		\N
2794	DealSupls	AMENN HOTEL INC.	0019-9033-9407	BDO-SAN JOSE CITY, NUEVA ECIJA		\N
2795	DealSupls	AMERICAN TECHNOLOGIES INC.	2922-1005-46	LBP-SAN JUAN		\N
2796	DealSupls	AMIEL FOOD SERVICES BY: ALLAIN DAVE ZALSOS SOLIS	1821-2014-00	LBP-BICUTAN		\N
2797	DealSupls	ANGLER MEDIA LABS, OPC	200-022-831-638	EASTWEST BANK-DON ANTONIO BRANCH		\N
2798	DealSupls	ANNA MARIE M ESCOBER POWER HOUSE PEST CONTROL SERVICES	1431-1329-54	LBP-TAYUMAN BR.		\N
2799	DealSupls	ANTONIO GALANG OCAMPO PRINTON PRESS	0231-1070-02	LBP-Q.C.		\N
2800	DealSupls	APPLIED CALIBRATION & SYSTEM INC DOING BUSINESS UNDER THE NAME AND OF ACAISI	1641-1041-39	LBP-PASIG CITY		\N
2801	DealSupls	ARCHIFOLD ARCHITECTURAL SYSTEMS, INC.	3330115714	CHINABANK-SM MASINAG		\N
2802	DealSupls	ARGIA GLOBAL LINK, INC.	0000-4080-8866	BDO-SM MAKATI BR.		\N
2803	DealSupls	ARIANN REGALA (FIRST LIGHT STUDIO FILM PRODUCTION)	001-004-244-5	BPI-MAKATI BRANCH		\N
2804	DealSupls	ARIES VINCENT C. ABELGAS EMETECH TRADING	0711-0771-54	LBP-NORTH AVE.		\N
2805	DealSupls	ARISTEO J. MADERAL III	0122-1001-3379	BDO-V. LUNA, QUEZON CITY		\N
2806	DealSupls	ARISTOPATH MEDICAL SUPPLIES TRADING	0025-2000-9853	UNIONBANK-BF HOMES PARA?AQUE		\N
2807	DealSupls	ARLENE FERRER TANUDTANUD XEFAR ENTERPRISES	1821-2138-31	LBP-BICUTAN		\N
2808	DealSupls	ARLENE GREGORIO HIGHLANDS HIGHLANDER HOTEL AND RESORT	0431-1834-71	LBP-SOLANO N.V.		\N
2809	DealSupls	ARMLINK COMPUTER CENTER INC	0391-1857-86	LBP-MUNTINLUPA CITY BR.		\N
2810	DealSupls	ARTEMISPLUS EXPRESS INC.	2811-1305-35	LBP-FTI, TAGUIG BRANCH		\N
2811	DealSupls	ASAHI DESIGN CENTRE INC.	3711-0034-78	LBP-BINONDO		\N
2812	DealSupls	ASIA PACIFIC CIRCULATION EXPONENTS, INC.	2011-4000206-5	UCPB-PIONEER BRANCH		\N
2813	DealSupls	ASIAN PSYCHOLOGICAL SERVICES & ASSESSMENT INC.	1431-0121-26	BPI-LEGASPI-GAMBOA BR. MAKATI CITY		\N
2814	DealSupls	ASSOC OF GOVT INTERNAL AUDITORS INC	3402-1031-31	LBP-CASH DEPT.		\N
2815	DealSupls	ASTER F. FORTEZA MANARA MARKETING	0491-0841-11	LBP-MARIKINA BRANCH		\N
2816	DealSupls	ATR MULTI TRADE CONCEPT INC	2721-1045-19	LBP-MARIKINA BRANCH		\N
2766	RegEmp	SUSAN A. DELA PENA	1827-4124-45	LBP-BICUTAN		\N
3511	\N	BUREAU OF TREASURY	\N	\N	\N	\N
2817	DealSupls	ATR TRAVEL AND RENT A CAR CORPORATION	2461-1100-56	LBP-ALMANZA, LAS PINAS CITY BR.		\N
2818	DealSupls	AUDIO 4 DESIGN N TECHNOLOGY CORP.	1781-0685-66	LBP-PASONG TAMO		\N
2819	DealSupls	AURORA BAGARES BERSAMIN 16/35 MM PRODUCTION SUPPLY	0051-3784-82	LBP-BUENDIA BRANCH		\N
2820	DealSupls	AUTOMATION SPECIALISTS & POWER EXPONENTS, INC.	2312-1006-25	LBP-MANDALUYONG CITY		\N
2821	DealSupls	AUTOSPEEDYGO CORPORATION	00184-8050-204	BDO SAVINGS-SM MARILAO BR.		\N
2822	DealSupls	AVESCO MARKETING CORPORATION 	0582-1017-28	LBP-CUBAO		\N
2823	DealSupls	AVID SALES CORPORATION	0592-1043-69	LBP-ERMITA MANILA		\N
2824	DealSupls	AVLS ALL VISUAL & LIGHTS SYSTEMS CORP.	1279-7000-3672	PNB-HARVARD CUBAO BR.		\N
2826	DealSupls	AWARDS CENTRAL PHILIPPINES INC	3211-0879-42	LBP-ELLIPTICAL Q.C.		\N
2827	DealSupls	AWESOME HOTEL, INC.	008581-0035-88	BPI-SAN FERNANDO, LA UNION		\N
2828	DealSupls	AZITSOROG INC.	1491-1238-57	LBP-ROBINSON NOVALICHES BR.		\N
2829	DealSupls	AZTECO CORP.	0231-1759-46	LBP-WEST AVENUE BR.		\N
2830	DealSupls	BAI GLOBAL PROPERTIES GROUP, LLC INC.	1592-0000-0187	CHINABANK-MANDAUE CITY		\N
2831	DealSupls	BALINSASAYAW CONSUMER GOODS TRADING	9041-0164-56	RCBC BF-AGUIRRE PARA?AQUE BR.		\N
2832	DealSupls	BAN BEE COMMERCIAL CO INC	0012-1185-03	LBP-INTRAMUROS		\N
2833	DealSupls	BAYAN PC TECHNOLOGIES, INC.	1461-1085-94	LBP-KATIPUNAN BRANCH		\N
2834	DealSupls	BELMONT NEWPORT LUXURY HOTELS, INC.	0069-5035-0669	BDO-NEWPORT CITY, PASAY CITY BR.		\N
2835	DealSupls	BENEDICT HUMAWID POLISON	3151-1010-61	LBP-CABADBARAN BRANCH		\N
2836	DealSupls	BETITA LIFESTYLE CORP.	3433-0323-05	BPI- MC ARTHUR ILOILO CITY		\N
2837	DealSupls	BGISIS DEVELOPMENT CORPORATION/LUXENT HOTEL	162-013-0023	BDO-TIMOG BRANCH		\N
2838	DealSupls	BIGDADDY HOTEL INC.	0361-2326-31	LBP-BUTUAN CITY BRANCH		\N
2839	DealSupls	BIHIS CRUZ INC.	0622-1037-45	LBP-COMMONWEALTH BR.		\N
2840	DealSupls	BLESSINGS COPY CENTER & BOOOKBINDING SERVICES INC.	3071-0440-91	LBP-UP CAMPUS		\N
2841	DealSupls	BOHOL BEE FARM	9479-0238-64	BPI-TAGBILARAN		\N
2842	DealSupls	BOHOL QUALITY CORP OR OG METROCENTRE HOTEL OR PANGLAO ISLAND NATURERESORTOR BQ CLASSMASTERS & ALUM SPECIALISTORBQ BREADBASKET OR BQ MEGABYTE INCORBQGAS 	0612-1032-24	LBP-TAGBILARAN CITY BRANCH		\N
2843	DealSupls	BONUM MANPOWER & GENERAL SERVICES, INC.	0043-3028-3614	BDO-WALTERMART STA, ROSA		\N
2844	DealSupls	BRAND MART SOLUTIONS CO.	658-8042514	BDO-WILSON GREENHILLS		\N
2845	DealSupls	BRIGHTBOX ENTERPRISES	2719139704	BPI-BUTING PASIG		\N
2846	DealSupls	BRIGHTVIEW TRADING VENTURES CORP.	0691-1191-81	LBP-Q.C.		\N
2847	DealSupls	BSI GROUP PHILIPPINES, INC.	3430-00981-7	BDO UNIVERSAL BANK-ORTIGAS 1 BR.		\N
2848	DealSupls	BUSINESS MACHINES CORPORATION	0052-1184-68	LBP-BUENDIA BRANCH		\N
2849	DealSupls	BUSINESS MARKER ACADEMY INC.	4013-0306-64	BPI-ORTIGAS		\N
2851	DealSupls	CALIRAYA RESORT CLUB INC.	3732-1002-87	LBP-ORTIGAS BRANCH		\N
2852	DealSupls	CAMP J PAUL INLAND RESORT BY: RICHARD EDORA ECHON	1121-1771-84	LBP-ZAMBALES		\N
2853	DealSupls	CAMSHELD AIRCONDITIONING SUPPLY AND SERVICES  	8050-0505-27	BDO-EVIA BRANCH		\N
2854	DealSupls	CANYON WOODS RESORT CLUB, INC.	0053-3009-7038	BDO- CORPORATE CENTER MAKATI		\N
2855	DealSupls	CARBONDIGITAL INC	1801-0716-82	LBP-PASEO DE ROXAS BR.		\N
2856	DealSupls	CARL JUSTIN REYES MENDOZA CCCM ENTERPRISES	0491-0860-76	LBP-MARIKINA BRANCH		\N
2857	DealSupls	CARLITO JR CABICO CASTILLO TANGERINE PRINT SHOP	2911-0728-77	LBP-CALOOCAN BRANCH		\N
2858	DealSupls	CASA LORENZO	3871-0016-09	LBP-ALBAY		\N
2859	DealSupls	CAVITECH SOLUTIONS, INCORPORATED	392-7-39253330-0	METROBANK-MOLINO BACOOR		\N
2860	DealSupls	CBII PHILIPPINES INTL INC.	1782-1033-57	LBP-PASONG TAMO BRANCH		\N
2861	DealSupls	CDC MILLENNIUM MANAGEMENT SERVICES INC.	4021-0152-83	BPI-ORTIGAS AVE. BRANCH		\N
2862	DealSupls	CDLS HOMESTYLE COOKING BY EMMA DELOS SANTOS	1891-0903-11	LBP-LAGUNA		\N
2863	DealSupls	CELLTECH APPLIED SCIENCES, INC                                                                  	0015-2046-3411	BDO-SM BICUTAN BR.		\N
2864	DealSupls	CENTER FOR EMPOWERMENT SEMINARS AND WORKSHOPS, INC.	0044-1007-0374	BDO-AYALA CEBU INSULAR		\N
2865	DealSupls	CENTER FOR LEADERSHIP AND CHANGE INC	1462-1013-30	LBP-LOYOLA, KATIPUNAN QC		\N
2866	DealSupls	CENTREX CORPORATION	0672-1052-85	LBP-MANDALUYONG		\N
2867	DealSupls	CENTRO SPECIALISTS CO. LTD.	00288-005-4342	BDO-IBM EASTWOOD CITY BR		\N
2868	DealSupls	CENTURY PARK HOTEL	1772-1018-79	LBP-MALATE BRANCH		\N
2869	DealSupls	CHARISMA SNACK HOUSE & CATERING SERVICE	0131-2676-65	LBP-ALBAY BR.		\N
2870	DealSupls	CHATEAU MANUFACTURING BY JESSE ANG SY	1871-0514-33	LBP-QUEZON CITY		\N
2871	DealSupls	CHATEAU ROYALE SPORTS AND COUNTRY CLUB, INC.	0341-0229-35002	SECURITY BANK-MENDIOLA		\N
2872	DealSupls	CHEROM GENERAL MERCHANDISING BY LELLOSO ALCANTARA OMADTO	3432-0007-01	LBP-ATRIUM BRANCH		\N
2873	DealSupls	CHERRYL B. GARABIAG	314-331468-627-7	METROBANK-CAMARIN CALOOCAN		\N
2874	DealSupls	CHINA OCEANIS PHILIPPINES, INC.	512-013-79-63	BDO-ERMITA MANILA		\N
2875	DealSupls	CHITA EDRA VICERAL LOUIE AND CHIT RESTAURANT AND EVENT CENTER	2061-0593-45	LBP-BATANGAS		\N
2876	DealSupls	CHMI HOTELS AND RESIDENCES INC.	00-473-007-4788	BDO-ALABANG		\N
2879	DealSupls	CHRISTOPHER BERNARDO CERVEZA THORITA TRANSPORT SERVICES	0441-2350-70	LBP-BALANGA, BATAAN BR.		\N
2880	DealSupls	CIGNAL TV- NCR ONCOLL	1792-2222-22	LBP-AYALA BRANCH		\N
2881	DealSupls	CIRCLE TRANSPORT CORPORATION	2921-0667-51	LBP-SAN JUAN BR.		\N
2882	DealSupls	CIRCUIT-HELP PARTNERS CO.	2441-0042-25	BPI-KATIPUNAN		\N
2883	DealSupls	CITY OF ALAMINOS PANGASINAN GEN FUND	1272-1018-64	LBP-ALAMINOS CITY		\N
2884	DealSupls	CITY TRAVEL AND TOURS CORP.	096-3-09631797-3	METROBANK-GT TOWER CENTER		\N
2885	DealSupls	CITYLIGHT PROPERTIES DEV\\T CORPORATION	790-485-168	BDO-LUNETA BAGUIO		\N
2886	DealSupls	CITYNEON PHILIPPINES, INC.	10-30-3000-6571	UNIONBANK-BICUTAN PARA?AQUE BR.		\N
2887	DealSupls	CIVIL SERVICE COMMISSION	0032-1025-49	LBP-MANDURRIA, ILOILO CITY		\N
2888	DealSupls	CIVIL SERVICE COMMISSION-NCR	0662-1002-18	LBP-QUEZON CITY		\N
2890	DealSupls	CLASSICA LITHO CORP.	1006-7000-0972	PNB-POTRERO-MALABON BR		\N
2891	DealSupls	CLEARBRIDGE MEDICAL PHILIPPINES INC.	1721-0791-94	LBP-PCA BLDG. COMMONWEALTH AVE. BR.		\N
2892	DealSupls	CLSU RET CAFETERIA	2962-1026-73	LBP-NUEVA ECIJA		\N
2893	DealSupls	COBELLIAM CORPORATION	0009-4034-0895	BDO-SESSION ROAD BR.		\N
2894	DealSupls	COBENA BUSINESS ANALYTICS & STRATEGY INC.	3403-0139-26	BPI-ALABANG HILLS BR.		\N
2895	DealSupls	COLENT MARKETING PHILS INC.	0662-1031-36	LBP-QUEZON AVE.		\N
2896	DealSupls	COMMERCE ASIA INC.	0552-1048-46	LBP-EDSA GREENHILLS		\N
2897	DealSupls	COMMERCE FIRST INC.	0078-0000-4071	BDO-MAKATI AVE.		\N
2898	DealSupls	COMPUCARE CORP (COMPUCARE CENTER)	0552-1038-82	LBP-GREENHILLS		\N
2899	DealSupls	COMVEST INVESTMENT INC.	007-28005742-7	BDO-DAPITAN MANILA		\N
2900	DealSupls	CONCEPT & INFORMATION GROUP INC.	0053-6031-4622	BDO-DIAN MAKATI CITY		\N
2901	DealSupls	CONCEPT MOTION FINE ADS	049-010001918	PHIL. BUSINESS BANK-CONCEPCION MARKINA 		\N
2902	DealSupls	CONVERGE INFORMATION AND COMMUNICATIONS TECHNOLOGY SOLUTIONS INC	1581-0316-84	LBP-BALIBAGO ANGELES CITY BR.		\N
2903	DealSupls	COOL ADS DESIGNS AND PRINT INC.	1801-0587-16	LBP-PASEO DE ROXAS		\N
2904	DealSupls	COOL COMPONENTS CORP	2481-1039-35	LBP-SAN PEDRO, LAGUNA BR.		\N
2905	DealSupls	COREVISORY ENT CO	3651-0123-59	LBP-LUCBAN, QUEZON PROVINCE		\N
2906	DealSupls	CORONET ENTERPRISE, INC.	0351-00088-8	PNB-DEL MONTE BR.		\N
2907	DealSupls	COSMOTECH PHILIPPINES INC.	1781-0515-66	LBP-PASONG TAMO BRANCH		\N
2908	DealSupls	COVER & PAGES CORPORATION	0051-4250-14	LBP-STA.ANA		\N
2909	DealSupls	CRISTANELLE INTERNATIONAL, INC.	544-000-1329	BDO-VILLAR-SALCEDO VILLAGE BR.		\N
2910	DealSupls	CRON OFFICE SYSTEMS INC	2391-0973-40	LBP-TAYTAY, RIZAL BRANCH		\N
2911	DealSupls	CROSSWORKS TRAINING AND CONSULTING CORPORATION	008-848-003-124 	BDO- ORTIGAS, GARNET BR		\N
2912	DealSupls	CROWN REGENCY HOTEL	3171-0646-50	LBP CEBU CITY		\N
2913	DealSupls	CROWN ROYALE HOTEL AND RESORT CORP.	0441-2198-22	LBP-BALANGA CITY		\N
2914	DealSupls	CSC TRAINING FUND ACCOUNT	3122-1001-37	LBP-BATASAN		\N
2915	DealSupls	C-SYSTEMS TECHNOLOGIES INCORPORATED	392-7-392-53440-3	METROBANK-MOLINO BR.		\N
2916	DealSupls	CW MARKETING AND DEVELOPMENT CORPORATION	00464-0030-749	BDO-ALABANG		\N
2917	DealSupls	D TRIUMPH CLEANERS & ALLIED SERVICES INC	1551-1171-77	LBP-LAS PI?AS BR		\N
2918	DealSupls	DAHILAYAN FOREST PARK, INC.	2043-4100-35	BPI-VELEZ, CDO BRANCH		\N
2919	DealSupls	DAKILA BATAN KING OF KINGS TRADING	1491-1690-08	LBP-NOVALICHES		\N
2920	DealSupls	DANILO S. LAUREL	6005-1095-05	BPI -PASEO BRANCH		\N
2921	DealSupls	DAVAO EXCEL VENTURES CORP.	0162-1046-75	LBP-DAVAO CITY		\N
2922	DealSupls	DAVAO METRO SHUTTLE COPORATION	272-0899-418	CHINA BANK-DAVAO CTIY MATINA BR.		\N
2923	DealSupls	D\\BACHELOR TRAVEL AND TOURS	1080-0000-7132	CHINABANK-LEGAZPI CITY BR.		\N
2924	DealSupls	DBP SERVICE CORP	0052-1331-49	LBP-BUENDIA BRANCH		\N
2925	DealSupls	DCI INT\\L. IT SOLUTIONS & SERVICES CORP.	0551-0552-30	LBP-GREENHILLS		\N
2926	DealSupls	DE LUXE HOTEL	0019-1000-2397	BDO-CDO BR.		\N
2927	DealSupls	DEGTEK INFORMATION TECHNOLOGY SOLUTIONS BY DARLITO ABACON GLORIA	1781-0986-86	LBP-PASONG TAMO		\N
2928	DealSupls	DELNIE COMPANY	0081-3800-7817	BDO-STA ROSA LAGUNA		\N
2929	DealSupls	DELNIE ENTERPRISES 	0081-3800-0170	BDO-STA.ROSA		\N
2930	DealSupls	DEPARTMENT OF EDUCATION REGION X EMPLOYEES CONSUMER COOP. 	0801-020032-080	DBP-CAGAYAN		\N
2931	DealSupls	DEPARTMENT OF INFORMATION AND COMMUNICATIONS TECHNOLOGY	0702-1053-66	LBP -QUEZON CITY		\N
2932	DealSupls	DEPED ECOTECH CENTER	3172-1000-49	LBP-CEBU CITY		\N
2933	DealSupls	DEPED NEAP-1	0032-012780-001	PHILIPPINE VETERANS BANK-LA UNION		\N
2934	DealSupls	DESIGN & FUNCTION INC.	0671-0692-42	LBP - PASIG BRANCH		\N
2935	DealSupls	DEVONNE TIRE SUPPLY 	0060-5180-73	BDO-PASAY		\N
2936	DealSupls	DEVSOFT SOLUTIONS CORP.	6381-6630-0010	PNB-Q.C CIRLE		\N
2937	DealSupls	DGL VERACITY SYSTEMS CORP	1432-1054-89	LBP-TAYUMAN BR.		\N
2938	DealSupls	DISCOVERY SUITES	2426-00000-658	STERLING BANK OF ASIA-ORTIGAS BR.		\N
2939	DealSupls	DOMINIC A. HERNANDEZ PAPERNIX ENTERPRISE	0711-0769-99	LBP-QUEZON AVE. BR.		\N
2941	DealSupls	DOST-MPCI	1822-1026-34	LBP-BICUTAN		\N
2943	DealSupls	DRAGONCUBE ENTERPRISE 	0048-8009-7791	BDO-MAKATI CITY		\N
2944	DealSupls	DREAMVENTURES PROPERTY MANAGEMENT CORPORATION	1240-1005-56	BDO-TIMOG BRANCH		\N
2945	DealSupls	DUKA BAY RESORT, INC.	2122-1017-30	LBP-GINGOOG, MISAMIS ORIENTAL		\N
2946	DealSupls	DYNASTY MANAGEMENT & DEVELOPMENT CORP.	0142-1063-88	LBP-CEBU CITY		\N
2947	DealSupls	E.D. SUAREZ STATIONERY & GENERAL MERCHANDISE BY:EVELYN D. SUAREZ	3711-0006-90	LBP BINONDO		\N
2948	DealSupls	E.F. GABRIEL CONSTRUCTION SERVICES	000-390-466-360	BDO-WEST FAIRVIEW BR.		\N
2949	DealSupls	EASTERN TELECOMMUNICATIONS PHILS INC	0051-4653-42	LBP-GIL PUYAT AVE.		\N
2950	DealSupls	ECC GRAPHICS BY EDWIN C. CASTILLO	2461-0980-72	LBP-ALMANZA, LAS PINAS		\N
2951	DealSupls	ECO-HYGIENE INSTITUTIONAL SALES CORP.	2590037909	BDO-Mandaluyong  Branch		\N
2952	DealSupls	E-COPY CORPORATION	0052-1315-88	LBP-MAKATI CITY		\N
2953	DealSupls	EDITHA G. DEMETRIA	368-3-368-150674	METROBANK-ALAMINOS		\N
2954	DealSupls	EDWIN BUENAFLOR FUCANAN HARTLY ELECTRONICS TRADING	0691-1254-59	LBP-EDSA CONGRESSIONAL BR.		\N
2955	DealSupls	EGONOMICS INCORPORATED	0003-1003-5843	UNION BANK-VITO CRUZ		\N
2956	DealSupls	ELECTROBRAIN ENTERPRISES	0069-0025-734	BDO-ABAD SANTOS BRANCH		\N
2957	DealSupls	ELECTRONIC FINANCIAL USERS\\ CIRCLE INC.	1691-1650-58	LBP-Q.C.		\N
2958	DealSupls	ELIZABETH DE VERA (VERALIZ MKTG)	3115-3877-81	BPI-GRACE PARK BR		\N
2959	DealSupls	ELLADIA GENERAL MERCHANDISE	1492-0039-60	LBP-NOVALICHES		\N
2942	DealSupls	D' PINNACLE TRAVEL & ALLIED SERVICES CORP.	1771-0786-01	LBP-HARRISON PLAZA BR.		\N
2960	DealSupls	ELLVIN WENCESLAO COLLANTES ONE HELLO PHOTOGRAPHY SERVICES	3721-0083-03	LBP-ESPA?A BRANCH		\N
2962	DealSupls	EMILIO AGUINALDO EDUCATIONAL CORP	4911-0148-45	LBP-MANILA BR.		\N
2963	DealSupls	EMILIO SABATER BALTAZAR	1426-1775-08	LBP-IMUS BRANCH		\N
2964	DealSupls	ENTRATA HOTEL SERVICES, INC.	2000-1941-8129	EWBCPHMM-ENTRATA BRANCH		\N
2965	DealSupls	EON CENTENNIAL PLAZA HOTEL	3302-1030-02	LBP-PLAZA LIBERTAD BR.-ILOILO CITY		\N
2966	DealSupls	EPARTNERS SOLUTIONS INC.	3341-0199-57	LBP-DECS EXT. PASIG CITY		\N
2967	DealSupls	EPLDT INC.	1802-1024-25	LBP-PASEO BRANCH		\N
2968	DealSupls	ERIC CASTRO FARINAS JAVA HOTEL	0261-3479-62	LBP-LAOAG CITY BR.		\N
2969	DealSupls	ERLINDA RECLUSADO NAVARRO HOTELINDA SUITES	0401-1921-15	LBP-VIGAN CITY		\N
2970	DealSupls	ERNEST PRINTING CORPORATION	0481-0950-69	LBP-KALOOKAN 		\N
2971	DealSupls	ESCO PTE. LTD	0053-3800-9916	BDO-SALCEDO, MAKATI CITY		\N
2972	DealSupls	EVA\\S HOTEL 	285-000-7277	CHINABANK, KIDAPAWAN 		\N
2973	DealSupls	EVELYN PAGARAGAN VELICARIA TWENTY 8 OFFICE SUPPLIES TRADING	1621-1372-35	LBP-MEYCAUAYAN BRANCH		\N
2974	DealSupls	EXCELLENT MARKETING	026-300-315-226-0	METROBANK-ARRANQUE BR.		\N
2975	DealSupls	EXIST CORPORATION	3732-1007-24	LBP-ORTIGAS AVE. MERALCO BR.		\N
2976	DealSupls	EXIST EXHIBIT SYSTEMS TECHNOLOGY CORP.	1510-1218-79	BDO-EASTWOOD, Q.C.		\N
2977	DealSupls	EXPOSURE PHOTO & VIDEO	2484-7000-1899	PNB-SAN PABLO		\N
2978	DealSupls	EXPRESS MDJ WORLDWIDE CORPORATION	1450-0843-79	BDO-MAKATI CITY		\N
2979	DealSupls	FASTTRACK ACCESS TRAVEL AND TOURS INC.	3091-0286-88	LBP-MALACANANG BRANCH		\N
2980	DealSupls	FAXCABLE INC.	0311-0166-01	BPI -RETIRO		\N
2981	DealSupls	FE A. OBLENIDA  ARIES TIGER ENTERPRISES	2821-0935-81	LBP-NAPOCOR BR.		\N
2982	DealSupls	FELYS LECHON AND FOOD SERVICES	1406-70009904	PNB-MAKATI DASMARI?AS BR.		\N
2983	DealSupls	FIL POWER GROUP AND MARKETING CORP.	0421-2712-08	LBP GATUSLAO-BACOLOD BRANCH		\N
2984	DealSupls	FIL-ASIA AUTOMOTIVE & INDUSTRIES CORP.	3342-1012-66	LBP-DECS EXT. PASIG CITY		\N
2985	DealSupls	FILCRAFTERS INC	2311-0995-93	LBP-MANDALUYONG CITY BR.		\N
2986	DealSupls	FILES SYSTEMS MANUFACTURING & SUPPLY CORPORATION	0581-0799-40	LBP-Q.C.		\N
2987	DealSupls	FIRST COMMONWEALTH HOTEL CORP.	2283-1077-98	BPI-UP TECHNOHUB		\N
2988	DealSupls	FIRST DATACORP	0052-1283-58	LBP-BUENDIA BR.		\N
2989	DealSupls	FIRST PACIFIC LEADERSHIP ACADEMY, INC.	004-0600-92897	BDO-TAYTAY RIZAL BR.		\N
2990	DealSupls	FIVE POWER VENTURE DEVELOPMENT CORP.	3172-1024-24	LBP-CEBU CITY		\N
2991	DealSupls	FLEETSERV INC	0552-1068-73	LBP-EDSA-GREENHILLS BR		\N
2992	DealSupls	FMR CORPORATION	0311-0148-11	BPI-RETIRO BRANCH		\N
2993	DealSupls	FOG HORN INC.	00693-002-5568	BDO-Mandaluyong  Branch		\N
2994	DealSupls	FORT ILOCANDIA LAND DEVELOPMENT CO. LTD.	1653-0097-86	BPI-LAOAG 		\N
2995	DealSupls	FORTIS STRONG RENT A CAR BY SUNDAY AISA DALID	2171-0981-50	LBP-MONTALBAN		\N
2996	DealSupls	FORTUNE GENERAL INSURANCE CORP.	0672-1064-94	LBP-PASIG CITY		\N
2997	DealSupls	FORTUNEXT MERCANTILE INC.	118-20-001351-5	BANK OF COMMERCE-DELA ROSA MAKATI		\N
2998	DealSupls	FORZA FAMILIA INC.	1591-0000-5076	CHINABANK-CLARK FREEPORT ZONE		\N
2999	DealSupls	FOUNDATION FOR THE PROMOTION OF SCIENCE & MATHEMATICS EDUCATION RESEARCH	108-67000-8947	PNB-UP DILIMAN QC.		\N
3000	DealSupls	FPG INSURANCE CO. INC.	0008-9030-5358	BDO -CALAMBA BRANCH		\N
3001	DealSupls	FPG INSURANCE CO. INC.	0042-0003-0481	BDO-LIPA ROTONDA BR.		\N
3002	DealSupls	FPSMER, INC.	39-393-260001-8	PNB-UP DILIMAN QC.		\N
3003	DealSupls	FRANCIA CRUZATA DESQUITADO HACKETT SECURITY AGENCY	1781-1283-21	LBP-PASONG TAMO BRANCH		\N
3004	DealSupls	FRANCIS PANGILINAN GARCIA MUSTACHIO CORPORATE MEDIA & TELEVISION PRODUCTIONS CMTV	0701-1526-11	LBP-QUEZON CITY CIRCLE BR.		\N
3005	DealSupls	FRESH N\\FAMOUS FOODS INC.-CHOWKING	545-3-545-28008-7	METROBANK-ORTIGAS		\N
3006	DealSupls	FRESH N\\FAMOUS FOODS INC.-GREENWICH	473-3-473-27174-6	METROBANK TRUST & BANKING CORP.		\N
3007	DealSupls	FRITZ ALDRIN FERNANDEZ CORONADO ECOELECTRIC SOLUTIONS	3572-0011-80	LBP-BAYBAY,LEYTE BRANCH		\N
3008	DealSupls	FURN APT DESIGN CORP	1401-0970-03	LBP-CAINTA BR		\N
3009	DealSupls	GABIGROUP INC. 	2453-2455-0481-1	METROBANK- NEW MANILA		\N
3010	DealSupls	GAKKEN PHILIPPINES INC.	1832-1012-37	LBP-SAN JUAN		\N
3011	DealSupls	GARDEN ORCHID HOTEL & RESORT CORP.	0031-7000-2060	BDO-MAYOR JALDON, ZAMBOANGA CITY BR.		\N
3012	DealSupls	GEMMA TEGERERO PENITON PENITON TRADING	1491-1581-11	LBP-ROBINSON NOVALICHES BR		\N
3013	DealSupls	GEMPHIL TECHNOLOGIES, INC.	8491-0012-09	BPI-PULO CABUYAO,LAGUNA		\N
3014	DealSupls	GENIO GRAPHICS INC.	0051-5093-31	LBP-MAKATI CITY		\N
3015	DealSupls	GERRY IGOT GARCIANO LOVELY CENTURY TRANSPORT SERVICE	0361-2354-95	LBP-BUTUAN CITY BRANCH		\N
3016	DealSupls	GLADY MABINI DBA TINGKAIPAM PRINTING PRESS	6916-1734-21	BPI FAMILY-PASEO		\N
3017	DealSupls	GOH MANAGEMENT INC.	028-7-028520383	METROBANK-TABO AN		\N
3018	DealSupls	GOLD LINE TOURS INC.	2471-0356-05	LBP-DOLE EXT. BR.		\N
3019	DealSupls	GOLDEN PRINCE HOTEL INC.	3800-413-315	CHINABANK -CEBU		\N
3020	DealSupls	GOMEZ ALUMINUM AND GLASS SERVICES	4849-0379-06	BPI- BACOOR BRANCH		\N
3021	DealSupls	GOPHERTECH CORPORATION	00-268-000472-9	UNIONBANK-IMUS, CAVITE BR.		\N
3022	DealSupls	GQ PLAZA BED AND BREAKFAST	128-7-12852618-4	METROBANK-KALIBO		\N
3023	DealSupls	GRACE BANGSOY AGTINA GOLDEN BERRIES HOTEL AND CONVENTION CTR	1052-0044-00	LBP-TABUK, KALINGA		\N
3024	DealSupls	GRACE PABON AMOLAR AG3 COLORS PRINTING PRESS	1691-1654-57	LBP-COA BRANCH		\N
3025	DealSupls	GRACE PALADIN CATERING SERVICE	0431-1829-55	LBP-SOLANO N.V.		\N
3026	DealSupls	GRACE TAGUM ORBON	0676-0666-08	LBP-PASIG CAPITOL BR.		\N
3027	DealSupls	GRACE V ESTELEYDES ROCEBRICK ENTERPRISES	0491-0810-31	LBP-MARIKINA		\N
3028	DealSupls	GRAND ASTORIA HOTEL	0017-9002-9749	BDO-MAYOR JALDON AVE. BR		\N
3029	DealSupls	GRAND CITY HOTELS INC. / NEWDAWN HOTEL PLUS	0031-1801-4909	BDO-OSMENA BR		\N
3030	DealSupls	GRAND OCTAGON RESORT	960-192-611	BDO-LAOAG CITY		\N
3031	DealSupls	GRAND SUCCESS INT\\L. VENTURES CORP.	1802-1011-60	LBP-PASEO BRANCH		\N
3512	\N	MARCELA GOMEZ	\N	\N	\N	\N
3032	DealSupls	GRAND XING IMPERIAL HOTEL	0311-7937-4300-2	SECURITY BANK-LEDESMA, ILOILO CITY		\N
3033	DealSupls	GRAY DL MELENDREZ GAIL SON TRADING AND GENERAL MERCHANDISE	1411-1591-63	LBP-ANTIPOLO BR.		\N
3034	DealSupls	GREAT EASTERN HOTEL, INC.	0232-1137-31	LBP-WEST AVE.		\N
3035	DealSupls	GREAT FOODS CONCEPTS, INC.	0031-5477-68	LBP-IIOILO CITY		\N
3036	DealSupls	GREAT LIFE HOTEL AND LEISURE CORPORATION	6437-6430-20951	METROBANK-PASEO DE STA. ROSA BR.		\N
3037	DealSupls	GROUP 5 AUDIO VISUAL SYSTEMS CORPORATION	0051-4469-68	LBP-BUENDIA BR.		\N
3038	DealSupls	GROUP 5 COMPUTER PRODUCTS & SUPPLIES INC	1781-1459-27	LBP-PASONG TAMO BR.		\N
3039	DealSupls	GRUPO DE CIUDAD FERNANDINA INC.	0401-1934-72	LBP-VIGAN		\N
3040	DealSupls	GSMETRIX TECHNOLOGY SOLUTIONS, INC.	3081-1159-49	BPI-PASONG TAMO		\N
3041	DealSupls	HABI EDUCATION LAB, INC.	2000-1246-5067	EASTWEST BANK-UP VILLAGE		\N
3042	DealSupls	HAIMOBILIA ENTERPRISE	043-7-043-002-14-3	METROBANK-NOVALICHES BRANCH		\N
3043	DealSupls	HAMCO STATIONERY CORPORATION	3711-0047-33	LBP-BINONDO BRANCH		\N
3044	DealSupls	HELEN S ORIO MESI TRADING	1411-1587-44	LBP-ANTIPOLO RIZAL BR.		\N
3045	DealSupls	HELLOGIGGLES MARKETING	0037-1027-0159	BDO-PLAZA CALDERON		\N
3046	DealSupls	HOLIDAY INN BAGUIO CITY CENTRE	008-328-002-626	BDO-BAGUIO CITY		\N
3047	DealSupls	HOLIDAY SUITES	0050-4022-2077	BDO-PPC-RZAL BR.		\N
3049	DealSupls	HOTEL ALEJANDRO INC.	1731-0968-95	LBP-TACLOBAN CITY,LEYTE BR.		\N
3050	DealSupls	HOTEL ARIANA	16-9052-6016	CHINABANK-LA UNION		\N
3051	DealSupls	HOTEL CASIANA OPC	1502-1091-77	LBP-TAGAYTAY CITY BR.		\N
3052	DealSupls	HOTEL DE ALEXA	2101-0919-80	LBP-BUKIDNON		\N
3053	DealSupls	HOTEL DE ESTRELLA	1732-1115-29	LBP-REAL, TACLOBAN CITY BR.		\N
3054	DealSupls	HOTEL ENTERPRISES OF THE PHILIPPINES, INC.	0023-7015-5945	BDO-SM MALL OF ASIA BR.		\N
3055	DealSupls	HOTEL JEN MANILA	039-01-000026-0	ASIA UNITED BANK-INTRAMUROS		\N
3056	DealSupls	HOTEL KIMBERLY, INC.	1803-0469-01	BPI-AYALA SERIN BR		\N
3057	DealSupls	HOTEL ST ELLIS	0132-0623-40	LBP-LEGASPI BR.		\N
3058	DealSupls	HUMAN RESOURCE INNOVATIONS AND SOULUTIONS INC. 	2311-0997-20	LBP-PASIG		\N
3059	DealSupls	HUNGRY WORK HORSE CONSULTANCY, INC.	0000-0090-3375-4723	RCBC-GREENBELT BR.		\N
3060	DealSupls	ICLICK INC.	1781-1107-67	LBP-PASONG TAMO		\N
3061	DealSupls	IEQUITY TECHNOLOGIES CORP. 	0671-0776-87	LBP-PASIG		\N
3062	DealSupls	ILOILO HOTEL & RESORTS CORP.	535-018232-4	BDO-PASAY ROAD MAKATI BR		\N
3063	DealSupls	IMAGIC PRODUCTIONS	1671-0942-43	LBP-CAMP AGUINALDO		\N
3064	DealSupls	IMAX PRODUCTIONS BY RODERICK RICERRA GONZALES	1821-2018-84	LBP-BICUTAN BRANCH		\N
3065	DealSupls	IMAX TECHNOLOGIES INC.	1771-0747-11	LBP-BSP BRANCH		\N
3066	DealSupls	IMPBRAIN ENGINEERING SERVICES	0021-1000-7420	UNIONBANK -KATIPUNAN		\N
3067	DealSupls	INCA PHILIPPINES INC.	0391-0993-83	LBP- NATL. RD. MUNTINLUPA BR.		\N
3068	DealSupls	INFOBAHN COMMUNICATIONS INC.	0582-1044-25	LBP-AURORA CUBAO BR.		\N
3069	DealSupls	INFOCENTRIC SOLUTIONS INC.	0671-0940-69	LBP-PASIG		\N
3070	DealSupls	INFOWORX INCORPORATED	1831-0511-12	LBP-JP RIZAL MAKATI 		\N
3071	DealSupls	INNOVATION PRINTSHOPPE INC.	0052-1272-54	LBP-GIL PUYAT AVE.		\N
3072	DealSupls	INTEGRATED COMPUTER SYSTEMS INC	0552-1035-05	LBP-GREENHILLS EDSA BR.		\N
3073	DealSupls	INTEGRATED WASTE MANAGEMENT, INC.	1561-0353-57	LBP-SUCAT BRANCH		\N
3074	DealSupls	INTERNATIONAL ELEVATOR & EQUIPMENT, INC.	3163-3283-12	BPI-MUNTINLUPA CITY		\N
3075	DealSupls	IN-TUNE PRO MUSIC CENTER	1620-0484-75	BDO-TIMOG BRANCH		\N
3076	DealSupls	IRMA FRANCISCO BULALAKAW DACRISDEEK ENTERPRISES	1531-1148-48	LBP-GAPAN BRANCH		\N
3077	DealSupls	ISLAND TROPIC HOTEL AND RESTAURANT	8913-1109-36	BPI-		\N
3078	DealSupls	JACKO\\S  KAN ANAN BY EFREN QUIRUBIN  JACOSALEM	0322-0073-45	LBP-ILIGAN		\N
3079	DealSupls	JAJF ENTERPRISES BRANCH	1680407749	BDO-VALERO MAKATI		\N
3080	DealSupls	JANICE FLORENCIANO LLAGAS JF LLAGAS ENT	1141-1217-89	LBP-TANAY, RIZAL BR.		\N
3081	DealSupls	JAVA PRESS	0661-0908-98	LBP-QUEZON AVE		\N
3082	DealSupls	JAVA PRESS PRINTERS INC.	1154-0000-138-5	CHINABANK-NUEVA 		\N
3083	DealSupls	JCAMP ENTERPRISES	1831-0833-75	LBP-J.P. RIZAL MAKATI		\N
3084	DealSupls	JEC MULTI TRADE OFFICE AND SCHOOL SUPPLIES	1283-1008-2980	PNB-CONCEPCION, MARIKINA		\N
3085	DealSupls	JEFFREY TOBIAS GUCOTMAYA-GUCOTMAYA SCHOOL AND OFFICE SUPPLIES	1691-1673-44	LBP-Q.C.		\N
3086	DealSupls	JENNYLYN CADELINA ONG MARCO HOTEL AND BANQUET HALL	0062-1009-40	LBP-CAUAYAN CITY, ISABELA		\N
3087	DealSupls	JERMYN T CHUA ONLINE CLOTHING ENTERPRISES	0561-0905-72	LBP-SHAW BLVD BR.		\N
3088	DealSupls	JERON DIZON TAYAG JC DIGIPRINTS AND GRAFX 	3831-0010-88	LBP-ALABANG		\N
3089	DealSupls	JERRY OBING SAVELLA REMITECHS ELECTRICAL SERVICES	3081-0293-17	LBP-PASIG CITY HALL		\N
3090	DealSupls	JESSICA MAE CRUZ DELOS REYES	3831-0028-90	LBP-ALABANG BUSINESS CENTER		\N
3091	DealSupls	JIM LEE LIMQUECO KNIT AND TRUCK MERCHANDISING	0662-0042-35	LBP-QUEZON CITY		\N
3092	DealSupls	JJE INFORMATION TECHNOLOGY COMPUTER SOLUTIONS BY JERRY JOEL ESTABILLO	3401-1217-13	LBP-MANILA		\N
3093	DealSupls	JM2 BARON INC.	2941-1274-55	LBP-CAPAS TARLAC		\N
3094	DealSupls	JOCELYN T. NGO  RED-COM ENTERPRISES	0561-0908-15	LBP-SHAW BLVD.		\N
3095	DealSupls	JOINT VENTURE SALES & MRKTG. INT. CORP.	0016-2005-9221	BDO-MAKATI CITY		\N
3096	DealSupls	JOLEE ANN A ADEFUIN SKYLAND TRAVEL & TOURS BY: JOLEE ANN A ADEFUIN	2221-0758-49	LBP-STA. CRUZ, LAGUNA BR.		\N
3097	DealSupls	JOLLIBEE FOODS CORPORATION	473-3-473-23863-3	METROBANK-EDSA CUBAO		\N
3098	DealSupls	JONATHAN LUMANOG	2219-1875-75	BPI-SOUTHWOODS, BI?AN BR.		\N
3099	DealSupls	JONILYN R. MICOSA-JONILS CATERING SERVICES	0546-1700-12	LBP-CALAMBA CITY		\N
3100	DealSupls	JOSE DY SEE SEE MANUFACTURING CONTRACTOR	2921-0511-34	LBP-SAN JUAN BRANCH		\N
3101	DealSupls	JOSE LIM TE PENG UNIROYAL INDUSTRIES	0231-1304-46	LBP-WEST AVE. BRANCH		\N
3102	DealSupls	JOSE PASION GO NEW A G STYLIST FURNITURE	0681-0749-96	LBP-G. ARANETA BR.		\N
3103	DealSupls	JOSEFINA N. BERNARDO SPLASH MOUNTAIN RESORT	1891-1212-25	LBP-LOS BANOS		\N
3513	\N	MELINDA TORRE	\N	\N	\N	\N
3514	\N	JAN NINO GABYRAN TINO	\N	\N	\N	\N
3515	\N	SHERILYN ABARRA	\N	\N	\N	\N
3516	\N	TRISHIA JADE CALZADA ACILO	\N	\N	\N	\N
3104	DealSupls	JOSEPH II DE GUZMAN LARA JDL PULSAR PROPERTY MANAGEMENT	0121-4171-03	LBP-TUGUEGARAO,CAGAYAN BRANCH		\N
3105	DealSupls	JOSEPH MYTHOR DE JESUS FRANCISCO STRATEGIC ONE BUSINESS MANAGEMENT CONSULTANCY FIRM	3831-0043-38	LBP-ALABANG BUSINESS CENTER BR.		\N
3106	DealSupls	JOSEPHINE VIRREY MIRANDA AGAVE TRADING	1421-1089-74	LBP-IMUS, CAVITE BRANCH		\N
3107	DealSupls	JOVANNI M. RAVAGO	0080-0004-2199	BDO-MAKATI CITY		\N
3108	DealSupls	JSM PRINT HOUSE INC.	1831-0856-70	LBP-MAKATI CITY		\N
3109	DealSupls	JUDILYN S. GARCENILLA  JJ SEAFOODS AND RESTAURANT	0771-1443-81	LBP-ANTIQUE		\N
3110	DealSupls	JUN GUMATAS JONSON DOIN FURNITURE TRADING	2721-1165-76	LBP-MARIKINA BR.		\N
3111	DealSupls	K&A DESIGN AND PRINTS	2929-0121-97	BPI-		\N
3112	DealSupls	K.O.B.S CUSTOMERS FIRST TRADING INC.	3401-0987-54	LBP-MALATE		\N
3113	DealSupls	KAIFASHION PHILIPPINES INC.	0581-1554-17	LBP-CUBAO		\N
3114	DealSupls	KAJCHILAN MULTIPURPOSE COOPERATIVE	00-0-05820-5559	DBP-TABUK, KALINGA BR.		\N
3115	DealSupls	KAMAHALAN PUBLISHING CORPORATION	0012-1149-31	LBP-MANILA		\N
3116	DealSupls	KAREN BRIGIT LIM ONG WORKSWELL ENTERPRISES	2911-0721-76	LBP-GRACE PARK CALOOCAN		\N
3117	DealSupls	KAREN INTERNATIONAL INC.	0681-0772-19	LBP-ARANETA AVE. QC BRANCH		\N
3118	DealSupls	KARL GELSON INDL SALES CORP	0482-1054-16	LBP-CALOOCAN BRANCH		\N
3119	DealSupls	KIM BREZ CORP. DBA SEQUOIA HOTEL	0571-1195-87	LBP-EAST AVENUE, QC		\N
3120	DealSupls	KINGSQUARE DAVIDSON HOTEL & RESTAURANT CORPORATION	1051-1291-52	LBP- TABUK, KALINGA		\N
3121	DealSupls	KLEAL ENTERTAINMENT PRODUCTION	0000-0491-1394-0	SECURITY BANK-MONTALBAN BR.		\N
3122	DealSupls	KRAV MAGA TRAINING CENTER INC.	0002-8105-2107	BDO-SM MEGAMALL BLDG. B		\N
3123	DealSupls	KRISTIAN JAYSON LAZO MATEO ISLAND TROPIC HOTEL & RESTAURANT	1271-1947-29	LBP-ALAMINOS BRANCH		\N
3124	DealSupls	KRISTINE CHOA DBA KRISTINE-MOM FOOD SERVICES	3350-0096-97	BPI-NINOY AQUINO BR.		\N
3125	DealSupls	KRYPTON ESPLANADE HOTEL CORPORATION	0023-4802-2736	BDO-ROCKWELL-P0WER PLANT MALL		\N
3126	DealSupls	KURDAN PRINTHUB TRADING, INC.	8731-0038-67	BPI-ANGELES-BALIBAGO BRANCH)		\N
3127	DealSupls	KYLLEDMED MEDICAL EQUIPMENT AND SUPPLIES TRADING 	0020-3002-2038	UNION BANK-STO. DOMINGO QC BR.		\N
3128	DealSupls	LA BREZA HOTEL INC.	2140-250-547	BDO-STA.LUCIA EAST		\N
3129	DealSupls	LA CONSOLACION UNIVERSITY PHILIPPINES	550-00-00972-5	UCPB-MALOLOS		\N
3130	DealSupls	LA VENEZIA HOTEL & SPA INC	0132-1087-49	LBP-LEGAZPI CITY BR.		\N
3131	DealSupls	LAJ MARKETING PHILIPPINES INC.	0023-4000-1244	UNIONBANK -PASAY		\N
3132	DealSupls	LEAVE A NEST PHILIPPINES INC	4831-0001-85	BPI-QC BR.		\N
3133	DealSupls	LEGEND HOTEL INTERNATIONAL CORP. -LEGEND VILLAS	0681-0011-15	BPI-BANGKAL, MAKATI CITY BR.		\N
3134	DealSupls	LEGEND HOTELS INTERNATIONAL CORPORATION	03481-005875	BPI-PUERTO PRINCESA BR.		\N
3135	DealSupls	LEGEND HOTELS INTERNATIONAL CORPORATION DBA KABAYAN HOTEL PASAY	0271-1360-99	LBP-MANDALUYONG CITY 		\N
3136	DealSupls	LG & M CORPORATION	0682-1020-98	LBP-G. ARANETA BR.		\N
3137	DealSupls	LIBCAP SUPER EXPRESS CORPORATION	0032-1495-70	LBP-ILOILO		\N
3138	DealSupls	LIBERTY INSURANCE CORPORATION	1802-1011-43	LBP-PASEO DE ROXAS BR.		\N
3139	DealSupls	LIFEGUARD ARCHANGELS SECURITY AGENCY CORP	0561-0918-38	LBP-SHAW BLVD.		\N
3140	DealSupls	LIFEGUARD GABRIEL SECURITY AGENCY CORPORATION	0561-0924-94	LBP-SHAW BLVD. BRANCH		\N
3141	DealSupls	LIGHT ENERGY ENTERPRISE BY PRECIOSO AGUILAR SUNGA	2721-1044-89	LBP-MARIKINA BR.		\N
3142	DealSupls	LINDEN SUITES INC.	3342-1014-44	LBP-ORTIGAS		\N
3143	DealSupls	LINK_NETWORK SOLUTIONS INC	1831-0761-58	LBP-MAKATI CITY		\N
3145	DealSupls	LKY RESORTS AND HOTELS, INC.	1097-0000-1670	CHINABANK-TACLOBAN		\N
3146	DealSupls	LMS INDUSTRIES	0252-0082-84	LBP-VALENZUELA		\N
3147	DealSupls	LODESTAR PRESS INC.	0005-6002-3935	UNIONBANK-GREEN BELT		\N
3148	DealSupls	LOLAY\\S FOOD STATION  BY LIZA AURELIA E. BAHILLO	0131-1717-57	LBP-LEGASPI		\N
3149	DealSupls	LORELAND REALTY AND DEVELOPMENT	1411-1487-57	LBP-ANTIPOLO BR.		\N
3150	DealSupls	LORETA PARAISO ABRAGON R4L ENTERPRISES	1491-1636-11	LBP-NOVALICHES BR.		\N
3151	DealSupls	LOS ANGELES CORPORATION	3552-1005-30	LBP-NAGUILLAN BAGUIO		\N
3152	DealSupls	LOVELY CORAZON DE GUZMAN PASCUAL COSASDEOFICINA TRADING	0561-0962-60	LBP-SHAW BLVD, MANDALUYONG BR		\N
3153	DealSupls	LRN VENTURES INC.	113-158938-9	CHINABANK - CALOOCAN		\N
3154	DealSupls	LUCIANO PUNO	0681-0352-57	LBP-ARANETA BRANCH		\N
3155	DealSupls	LUTHAR JAMES SEE COO COMACA CONST & ENGINEERING SERVICES	1551-1479-80	LBP-LAS PI?AS BR.		\N
3156	DealSupls	M2J PROPERTIES INC.	443-3-44350060-0	METROBANK-DUMAGUETE CITY		\N
3157	DealSupls	MA BETTINA ELLY CALLENGA AVECILLA AVECILLA TRADING	2921-0637-60	LBP-PINAGLABAN,SAN JUAN BRANCH		\N
3158	DealSupls	MA CRISTINA DOBLES SANTOS EC TEC COMMERCIAL	1842-1000-85	LBP-EAST AVENUE, QC		\N
3159	DealSupls	MA. ELLAINE C. GUMANGAN EAT-ERNAL TIE CATERING SERVICES  	3581-0052-36	LBP-TAGUIG CITY HALL BR.		\N
3160	DealSupls	MAGNUM EXPRESS 	570-757-0002-240	METROBANK-OSME?A		\N
3161	DealSupls	MAITILINK SYSTEMS, INC.	0591-1216-50	LBP-TAFT AVENUE BR.		\N
3162	DealSupls	MAM27 FOOD SERVICES	0122-1002-2165	BDO-V. LUNA, QUEZON CITY		\N
3163	DealSupls	MAMITA REALTY INC (ORCHID GARDEN SUITES)	1771-0233-27	LBP-MALATE		\N
3164	DealSupls	MANIBELA ANG BUHAY TRANSPORT COOP	4221-0024-37	LBP-MU?OZ BR.		\N
3165	DealSupls	MANILA BAYFRONT RESORTS, INC	534-01-0000042	ASIA UNITED BANK-EASTFIELD MACAPAGAL BR.		\N
3166	DealSupls	MANILA BULLETIN PUBLISHING CORPORATION	2472-1001-41	LBP-INTRAMUROS		\N
3167	DealSupls	MANILA ELECTRIC COMPANY (CAN#: 000-1739-976)	0052-2221-25	LBP-BUENDIA		\N
3168	DealSupls	MANILA WATER COMPANY, INC. (CAN#: 15114421)	1462-2220-56	LBP-QUEZON CITY		\N
3169	DealSupls	MANNY MARBLE WORKS, METAL CRAFTS AND GEN. MDSE., INC.	0010-5021-5719	BDO STA. CRUZ		\N
3170	DealSupls	MANVAR TOURS AND TRANSPORT SERVICES	3620-0034-75	BPI-BF HOMES		\N
3171	DealSupls	MARCIAN GARDEN HOTEL INC.	1951-1439-59	LBP-ZAMBOANGA CITY		\N
3172	DealSupls	MARIA HANNAH REGINA UMALI	0046-8021-6703	BDO-		\N
3173	DealSupls	MARIANE ASUNCION ARIZALA	4439-2273-84	BPI-SM NORTH EDSA BR		\N
3517	\N	STANDARD INSURANCE CO INC	\N	\N	\N	\N
3174	DealSupls	MARICAR MOHAMMAD YECYECAN MARDO RESTAURANT AND FOOD CATERING	1241-1673-79	LBP-TAWI-TAWI BR.		\N
3175	DealSupls	MARIO CAMILON DIMAILIG HUNO NOVELTIES GARMENTS MANUFACTURING	0231-1791-27	LBP-WEST AVE. BRANCH		\N
3176	DealSupls	MARIO REY ROA PACANA BOULDER BAY RESIDENCES	1082-1045-65	LBP- BASCO, BATANES BR		\N
3177	DealSupls	MARITES B. JUMARANG	0083-3000-7540	BDO-TAMBO, LIPA CITY BATANGAS		\N
3178	DealSupls	MARITES V DONATO HALDEN GENERAL MERCHANDISE	2311-1053-13	LBP-MANDALUYONG CITY HALL BR.		\N
3179	DealSupls	MARITES Z. DIZON ADRIANNAH ENTERPRISE	0621-1318-18	LBP-COMMONWEALTH BR.		\N
3180	DealSupls	MARTESSEM INC.	1104-0000-0344	CHINABANK-TANAY RIZAL BR.		\N
3181	DealSupls	MARY ANN SORDAN TAN TANJER ENTERPRISES	3511-0098-11	LBP-ROXAS BLVD.		\N
3182	DealSupls	MASANGKAY COMPUTER CENTER	0681-0642-65	LBP-STA CRUZ		\N
3183	DealSupls	MAXIMUM SOLUTIONS CORPORATION	1791-0409-88	LBP-AYALA BRANCH		\N
3184	DealSupls	MC SQUARE INTERNATIONAL CORPORATION	3401-2018-57	LBP-MANILA		\N
3185	DealSupls	MCSA MARKETING BY TERESA S. AGSALUD	3711-0017-26	LBP-BINONDO		\N
3186	DealSupls	MEDIASYS CORP.	2881-1633-84	LBP-GUADALUPE BRANCH		\N
3187	DealSupls	MEGAFRESH INTERNATIONAL INC.	1791-0160-92	LBP-AYALA BRANCH		\N
3188	DealSupls	MELANIE PERFECTO PANGILINAN ULY TECH TRADING	3461-0227-57	LBP-SJDM BRANCH		\N
3189	DealSupls	MELCLAIRE SY DELFIN  CLAIRE DELFIN MEDIA SERVICES	3211-0799-15	LBP-Q.C.		\N
3190	DealSupls	MELINDA ROBLES CORBILLON JEMEL\\S CATERING	1271-1929-04	LBP-ALAMINOS CITY BRANCH		\N
3191	DealSupls	MELLA HOTEL INC.	00628-0262-14	BDO-LAS PI?AS BRANCH		\N
3192	DealSupls	MELOSA D. BATITIS CATERING & GENERAL MERCHANDISE	2831-0650-47	LBP-STA.ROSA		\N
3193	DealSupls	MELVIN UY REGIO/MKS FURNITURE	2000-15677-995	EASTWEST BANK-KAYBIGA BR		\N
3194	DealSupls	METAMEDIA INFORMATION SYSTEMS CORP.	2311-1089-75	LBP-MAYSILO BR.		\N
3195	DealSupls	METOS OFFSHORE INC	0151-2980-01	LBP-CAGAYAN		\N
3197	DealSupls	MICRO PACIFIC TECHNOLOGIES AND SYSTEMS CORPORATION	0321-0221-97	BPI-LEGASPI-COLUMNS		\N
3198	DealSupls	MICROPHASE CORPORATION	0321-0229-44	BPI-LEGASPI COLUMNS		\N
3199	DealSupls	MILLENNIUM PROPERTIES AND BROKER	0671-0485-39	LBP-PASIG CAPITOL BR.		\N
3200	DealSupls	MIRIAM COLLEGE FOUNDATION, INC.	3081-1112-42	BPI-LOYOLA KATIPUNAN		\N
3201	DealSupls	MISNET EDUCATION, INC.	0075-3364-46	BPI-LEGASPI-SALCEDO BR.		\N
3202	DealSupls	MIZPA OFFICE SUPPLIES TRADING	1054-0000-7094	CHINABANK-VALENZUELA BR.		\N
3203	DealSupls	MKA LAND DEVELOPMENT INC. 	0202-0247-85	LBP-LA UNION		\N
3204	DealSupls	MMSU-MULTI PURPOSE COOPERATIVE	2137-1036-77	LBP-ILOCOS NORTE		\N
3205	DealSupls	MO2 HOTELS	000-749-992-4018	METROBANK-BEN.. AQUINO  ILOILO		\N
3207	DealSupls	MORIAH APPAREL HO, INC.	061-7-06151149-7	METROBANK-N.S. AMORANTO BR.		\N
3208	DealSupls	MQC SYSTEM TECH. CORPORATION	000-016777-870	SECURITY BANK-CONGRESSIONAL TOWER BR.		\N
3209	DealSupls	MR TRAVEL SERVICES INC.	0051-5638-16	LBP-TAFT AVENUE		\N
3210	DealSupls	MR. G METAL EMBOSSING CONTRACTOR BY JOSEFINA T. GAMAYAO	5032-2798-0001-9	PNB-MALABON		\N
3211	DealSupls	MR. RUFINO T. CRUZ	0022-3000-0713	UNION BANK -PASONG TAMO		\N
3212	DealSupls	MR7 CORPORATION	412-3-41250205-2	METROBANK-TAYUMAN BR.		\N
3213	DealSupls	MT. SABRINA PANORAMIC VIEW AND RESORT INC.	2801-1009-30	LBP- GENERAL SANTOS CITY BR.		\N
3214	DealSupls	MULTIX CORPORATION	442-7-44201456-2	METROBANK-ROCKWELL		\N
3215	DealSupls	MVRV TRADING AND ACTIVITY CENTER INC.	1561-1064-32	LBP-SUCAT BRANCH		\N
3216	DealSupls	MYBUSYBEE INC.	0010-7023-5111	BDO-VISAYAS AVE.		\N
3217	DealSupls	MZR BUILDERS (FORMERLY MZR UNICA INC)	0581-1493-79	LBP-CUBAO BICUTAN		\N
3218	DealSupls	N E A P R II	3702-1011-73	LBP-TUGUEGARAO		\N
3219	DealSupls	NATHANIEL SALES ABLAZA SKYPIXEL18 AERIAL PHOTOGRAPHY SERVICES	2371-1315-34	LBP-DASMARINAS, CAVITE CITY BR		\N
3220	DealSupls	NATIONAL OLYMPIAD IN INFORMATICS PHILIPPINES, INC.	0000-0130-3944-6	SECURITY BANK-SILVER CITY BRANCH		\N
3221	DealSupls	NATIONAL PRINTING OFFICE REV FUND	1872-1004-46	LBP-BATASAN HILLS, QC		\N
3222	DealSupls	NATIVIDAD VENTURES	6390181239	BDO		\N
3223	DealSupls	NATURE SPECIALISTS INC.	200-04-157729-7	EASTWEST-NSI (SAN MATEO)		\N
3224	DealSupls	NAUTILUS DIVE AND SPORTS CENTER CORPORATION	312-3-31205227-0	METROBANK MAKATI CITY		\N
3225	DealSupls	NERIESE GRACE P. GIANGAN	0002-5142-3239	BDO-Q.C		\N
3226	DealSupls	NEWTON INTEGRATED SOLUTIONS INC.	009-7000-211-881	METROBANK-DIVISORIA CENTER		\N
3227	DealSupls	NEWTOWN PLAZA HOTEL CORP.	790-516-438	BDO-LUNETA BAGUIO		\N
3228	DealSupls	NEXT GENERATION TECHNOLOGIES GLOBAL, INC.	0013-8065-6638	BDO-SALCEDO, MAKATI CITY		\N
3229	DealSupls	NEXUS ELECTRICAL NETWORK SOLUTIONS	0691-1259-63	LBP-EDSA		\N
3230	DealSupls	NICATTO EVENTS AND MARKETING DYNAMICS CORPORATION	0023-7000-6165	UNIONBANK-C5 Q.C		\N
3231	DealSupls	NICOL TRANSPORT SERVICE COOPERATIVE	140-3-14055770-7	METROBANK-LAOAG-RIZAL BR		\N
3232	DealSupls	NICOLE GAIL RUAZA	0593-0594-5181-3	METROBANK-KALENTONG BR. 		\N
3233	DealSupls	NICO\\S GARDEN HOTEL	00-0-00464-808-8	DBP-SURIGAO BR.		\N
3234	DealSupls	NISSAN CAR LEASE PHILS. INC.	0091-0631-66	BPI-PASONG TAMO		\N
3235	DealSupls	NOEL L. BELEN / RBNL TRADING	0251-2201-15	LBP-VALENZUELA		\N
3236	DealSupls	NOEL SANTIAGO BARCELONA  NSB ENGINEERING DESIGN AND FABRICATION	1821-2030-54	LBP-BICUTAN		\N
3237	DealSupls	NORTHBELLE PROPERTIES INC.	473-801-6345	BDO-RICHVILLE-AYALA ALABANG		\N
3238	DealSupls	NORTHERN ILOCOS CITY OF LAOAG TS COOP	4051-0060-25	LBP- SAN NICOLAS BR.		\N
3239	DealSupls	NORTHWEST BACOLOD TOURS AND TRAVEL, INC.	3040-0700-07	BDO-BACOLOD HILADO BR.		\N
3240	DealSupls	NORWIN PENAFIEL SENORON COMPUZEL ENTERPRISES	0701-1561-37	LBP-QUEZON CITY		\N
3241	DealSupls	NPVN LEARNING PROGRAMS CO.	1414-0000-0274	CHINA BANKING CORP.-1414-CENTURY CITY-KNIGHTSBRIDGE BR.		\N
3242	DealSupls	NUTRENDS CUISINE CATERING SERVICES	0031-5356-11	LBP-ILOILO		\N
3243	DealSupls	NUVOPIAZZA VENTURES INC.	501-7-50100984-5	METROBANK-KAMAGONG, SAMPALOC BR.		\N
3244	DealSupls	OCEAN AIRE HOTEL CORPORATION	00853-00081-68	BDO-MACAPAGAL PASAY		\N
3245	DealSupls	OCTAGON COMPUTER SUPERSTORE	1441-0829-71	LBP-ERMITA MANILA		\N
3246	DealSupls	OFFICE MAN INC.	00-224-002-2082	BDO-BINONDO MANILA		\N
3247	DealSupls	OFFICE REPUBLIC MULTI-VENTURES, INC. 	0231-1696-60	LBP-WEST AVE. BRANCH		\N
3248	DealSupls	OLIVIA PASARDAN MANALO LASERVIEW TRADING	3961-0071-00	LBP-PASEO STA. ROSA LAGUNA		\N
3249	DealSupls	OMNIFAB INC.	0038-1009-1124	BDO-GRACE PARK -9TH AVE.		\N
3250	DealSupls	OMNIRAY VENTURES, INC.	000-016415-684	SECURITY BANK-MOB AYALA		\N
3251	DealSupls	ONPREM2CLOUD IT SOLUTIONS CO	0391-1865-70	LBP-PUTATAN, MUNTINLUPA CITY BR		\N
3252	DealSupls	OPTIMAX SOLUTIONS SYSTEMS INC.	1782-1039-18	LBP-PASONG TAMO		\N
3253	DealSupls	OPTIONAL VALUE GENERAL MERCHANDISE	0070-9002-9260	BDO-SM CITY STA.MESA		\N
3254	DealSupls	ORACLE HOTEL AND  RESIDENCE CORP. 	1113-1432-55	RCBC SAVINGS BANK-Q.C.		\N
3256	DealSupls	ORANGE COMPONENTS AND EVENTS, INC	007-385-50416-7	METROBANK-BAYANI ROAD, TAGUIG CITY		\N
3258	DealSupls	ORYSPA SPA SOLUTIONS INC	0051-0025-1280	BDO-LOS BA?OS BR.		\N
3259	DealSupls	OSG TRUST FUND 101	1802-1016-23	LBP-PASEO DE ROXAS BR.		\N
3260	DealSupls	OTEL WALL STREET CORP	0081-3115-36	LBP-SAN FERNANDO		\N
3261	DealSupls	PABLO D. ROMO	1826-2147-20	LBP-BICUTAN BR.		\N
3262	DealSupls	PACIFIC OFFICE SOLUTIONS, INC.	0552-1066-28	LBP-CLMC EDSA BR.		\N
3263	DealSupls	PACIFIC SUMMIT CONSTRUCTION GROUP INC.	3902-1000-31	LBP-BGC BRANCH		\N
3264	DealSupls	PAMINTUAN ENTERPRISES DAVAO, INC.	0027-0026-7555	BDO-C.M. RECTO BRANCH		\N
3265	DealSupls	PAN RESORT EVENTS PLACE CORP	0441-2182-90	LBP-BALANGA, BATAAN BR.		\N
3266	DealSupls	PARADIGMA INTERNATIONAL INC.	0025-8014-9518	BDO-SAN JUAN LUNA BINONDO		\N
3267	DealSupls	PARAMOUNT HOTEL AND FACILITIES MANAGEMENT COMPANY, INC.	238-006-6120	BDO-SM MOA BR.		\N
3270	DealSupls	PATTS COLLEGE OF AERONAUTICS INC.   A	1221-0140-45	PNB-TAGAYTAY		\N
3271	DealSupls	PBT TECHNOLOGY SOLUTIONS INC	1781-0721-21	LBP-PASONG TAMO- MAKATI CITY BR.		\N
3272	DealSupls	PC PLANET CORPORATION	353-7-353-10154-0	METROBANK - TOMAS MAPUA		\N
3273	DealSupls	PCI INNOVATIONS TECH CENTER, INC.	632-7-632-02726-1	METROBANK CBCP BRANCH		\N
3274	DealSupls	PCK TRADE & REALTY CORPORATION	1862-1016-22	LBP-CAMP CRAME		\N
3275	DealSupls	PCWORX IT SOLUTIONS INCORPORATED	1831-0736-04	LBP-Q.C.		\N
3276	DealSupls	PEARLY JILL L. GALLOS	0017-7020-9873	BDO-ILOILO CITY		\N
3277	DealSupls	PENITON TRADING CORP	1491-1632-04	LBP-NOVALICHES		\N
3278	DealSupls	PERRY A TRADING CORP	0671-1043-31	LBP-PASIG CAPITOL BR.		\N
3279	DealSupls	PHIC EXMDPS	1822-2220-87	LBP-BICUTAN BR		\N
3280	DealSupls	PHIL INSTITUTE FOR DEV\\T STUDIES	1872-1037-39	LBP-EDSA NIA ROAD BRANCH		\N
3281	DealSupls	PHIL. SOCIETY OF YOUTH SCIENCE CLUBS	0702-1020-65	LBP-PHILCOA BRANCH		\N
3282	DealSupls	PHILCARE MANPOWER SERVICES BY EDMUNDO CABALLERO MONTANES	1831-0807-67	LBP-JP RIZAL MAKATI 		\N
3283	DealSupls	PHILCOPY CORPORATION	1832-1007-29	LBP-J.P RIZAL MAKATI		\N
3285	DealSupls	PHILIPPINE BUSINESS DAILY MIRROR PUBLISHING, INC.	0000-9017-3473	BDO-LEGASPI VILLAGE		\N
3286	DealSupls	PHILIPPINE CENTER FOR CREATIVE IMAGING INC.	00429-0078357	BDO-MAKATI		\N
3287	DealSupls	PHILIPPINE CONSORTIUM FOR SOCIAL WELFARE AND HUMAN DEVELOPMENT RESEARCH INC. (PCSWHDR)	188-7188707099	Metrobank-Bulacan		\N
3288	DealSupls	PHILIPPINE DAILY INQUIRER	1782-1005-36	LBP-PASONG TAMO		\N
3289	DealSupls	PHILIPPINE DUPLICATORS INC.	0052-1258-39	LBP-BUENDIA BRANCH		\N
3290	DealSupls	PHILIPPINE FOUNDATION FOR SCIENCE AND TECHNOLOGY, INC.	1007-06988-7	RCBC-MARIKINA BRANCH		\N
3291	DealSupls	PHILIPPINE INTERNATIONAL CONVENTION CENTER INC.	3752-1000-03	LBP-MALATE		\N
3292	DealSupls	PHILIPPINE METEOROLOGICAL SOCIETY	108-110-013-771	PNB-QUEZON CITY		\N
3293	DealSupls	PHILIPPINE PLAZA HOLDINGS INC.	3133-2428-63	BPI-VITO CRUZ BR		\N
3294	DealSupls	PHILIPPINE RED CROSS	0033-8005-4733	BDO-SURIGAO CITY BR.		\N
3296	DealSupls	PHILIPPINE STATISTICAL RESEARCH AND TRAINING INSTITUTE	0702-1004-96	LBP-Q.C		\N
3297	DealSupls	PHILIPPINES COMMUNICATION SOCIETY	1086-7000-8813	PNB-UP DILIMAN QC.		\N
3298	DealSupls	PHILSTAR DAILY, INC.	0011-2597-07	LBP-INTRAMUROS		\N
3299	DealSupls	PILIPINO STAR NGAYON INC. 	2588-0116-42	BDO-BINONDO MANILA		\N
3300	DealSupls	PING HONG TAN HAO DESIGN CREST FURNITURE COMPONENT	3711-0010-17	LBP-BINONDO BRANCH		\N
3301	DealSupls	PIONEER INSURANCE & SURETY CORP.	053-9000-0251	BDO-PEREA-PASEO MAKATI		\N
3302	DealSupls	PLDT-NCR CLEARING ACCOUNT	0052-2221-50	LBP-MAKATI CITY		\N
3303	DealSupls	PLEBEIAN ANDRI C. DELA CRUZ GORILLA TRADING	3211-0677-98	LBP-ELLIPTICAL Q.C.		\N
3304	DealSupls	PNOC RENEWABLES CORPORATION	0052-1340-13	LBP-BUENDIA BRANCH		\N
3305	DealSupls	PREMIER CENTRAL INC.	0062-8042-2649	BDO-ONE ECOM CENTER BR.		\N
3306	DealSupls	PREMIER VALUE PROVIDER, INC.	0024-1000-7904	UBP PEREA BRANCH		\N
3307	DealSupls	PRIME FALCON CORPORATION-AZIZA PARADIZE HOTEL	130-7-130004624	METROBANK-RIZAL AVE.,PUERTO PRINCESA CITY		\N
3308	DealSupls	PRIVE PROPERTIES DEVELOPMENT INC.	0015-3016-3739	BDO-SHAW BOULEVARD BR.		\N
3309	DealSupls	PROJECT V MEDIA CORP	0231-1745-40	LBP-WEST AVE. BRANCH		\N
3310	DealSupls	PRONET SYSTEMS INTEGRATED NETWORK SOLUTION INC	0661-0574-32	LBP-QUEZON AVENUE BRANCH		\N
3311	DealSupls	PROVANTAGE SYSTEMS INC.	1441-0723-30	LBP-UN AVENUE		\N
3312	DealSupls	PRUDENTIAL GUARANTEE AND ASSURANCE, INC.	0001-2001-4459	BDO-GANDARA BR.		\N
3313	DealSupls	PSYCHOLOGICAL RESOURCES CENTER INC.	0661-0923-51	LBP-QUEZON AVE		\N
3314	DealSupls	PUNTA DE FABIAN RESORT, INC.	241-001821-1	CHINA BANK XAVIERVILL 		\N
3315	DealSupls	PUNTA DEL SOL ARACELI BEACH RESORT & RESTAURANT	2093-1107-92	BPI-LANANG, DAVAO CITY BR.		\N
3519	\N	17 DATA SOLUTIONS INC	\N	\N	\N	\N
3520	\N	ABIGAIL EDJAN PUNO	\N	\N	\N	\N
3521	\N	LANCE CALVIN GAMBOA	\N	\N	\N	\N
3316	DealSupls	PUNTA VILLA RESORT INC.	0032-1381-44	LBP-ILOILO BRANCH		\N
3317	DealSupls	QUADSTAR SYSTEMS OPC	0552-1074-20	LBP-EDSA GREENHILLS		\N
3318	DealSupls	QUARTZ BUSINESS PRODUCTS CORPORATION	0052-1255-61	LBP-BUENDIA BRANCH		\N
3319	DealSupls	RADIUS TELECOMS INC	5431-0157-08	LBP-SMC, COMPLEX BR.		\N
3320	DealSupls	RADYO DE ORO CORPORATION	0152-1019-29	LBP-CAPISTRANO BR. CDO		\N
3321	DealSupls	RAFAEL III FRANCISCO VALEROS DIAGNOSTICA TRADING	4431-0072-70	LBP-ASINGAN PANGASINAN BR.		\N
3322	DealSupls	RAL IMPERIAL REALTY MANAGEMENT CORPORATION	0075-6001-8979	BDO-TARLAC		\N
3323	DealSupls	RAMASOLA VISUALS/ CHRISTOPHER B. RAMASOLA	1206-2291-12	BPI-TAGBILARAN		\N
3324	DealSupls	RANGATIRA TRADING CORP.	0041-5043-7435	BDO-PASIG		\N
3325	DealSupls	RANJO MERCANTILE BY FERNANDO R VILLEGAS	1781-1020-71	LBP- MAKATI		\N
3326	DealSupls	RAQUEL N. ORTEGA Q P S DIGITAL PHOTO & DESIGN STUDIO	2721-1135-85	LBP-MARIKINA BR.		\N
3327	DealSupls	RAYA REGENERATIVE AND PREVENTIVE INC.	770-777-000472-8	METROBANK-MAKATI		\N
3328	DealSupls	RCG ENGRAVING SERVICES AND TRADING BY WINNIE D. GASIS	0281-0965-24	LBP-CALOOCAN BRANCH		\N
3329	DealSupls	RED RIBBON BAKESHOP, INC.	658-3-658-75197-3	METROBANK TRUST & BANKING CORP.		\N
3330	DealSupls	RED ROOT ARTISTS AND ARTISANS MULTI PURPOSE COOPERATIVE	0701-1403-38	LBP-QC CIRCLE BR.		\N
3331	DealSupls	REGULUS SPACETECH INCORPORATED 	0051-0015-8388	BDO-LOS BANOS		\N
3332	DealSupls	RESOURCES FOR THE BLIND, INC.	427-30143-79	BPI-CUBAO FARMERS PLAZA		\N
3334	DealSupls	RHAJ EXECUTIVE INN & APPARTELLE INC.	0891-2576-35	LBP-VIRAC		\N
3335	DealSupls	RHEN JOY APLA ON NUEVAESPANA JARHENS TRADING	3841-0030-89	LBP-ARANETA CENTER BR		\N
3336	DealSupls	RICHMONDE HOTEL ORTIGAS	545-3-54511329-6	METROBANK-SAN MIGUEL AVE.		\N
3337	DealSupls	RICHWORLD HOTEL AND RESORT CORPORATION	1253-7000-2547	PNB-ANNAPOLIS SAN JUAN CITY		\N
3338	DealSupls	RJVILLEGAS ENTERPRISE	00234-00121-78	BDO-ROCKWELL		\N
3339	DealSupls	RKKJJL TIGERS CORPORATION	0132-0800-0537	BDO-QUEZON AVE.		\N
3340	DealSupls	RNR TAMBAYAN/RIDZMA S. ARIPIN	9623-73476711-6	METROBANK-BONGAO, TAWI-TAWI BR.		\N
3341	DealSupls	ROBINSONS LAND CORPORATION	3131-0268-70	LBP-DOTC BRANCH		\N
3342	DealSupls	ROBINSONS LAND CORPORATION	0049-5803-6726	BDO-ORTIGAS BR.		\N
3343	DealSupls	RODOLFO Q.  JANE  	6490-0850-10	BDO-MUNTILUPA CITY		\N
3344	DealSupls	ROEL LOMOTOS GALVEZ RAZEL ENTERPRISES	2371-1314-29	LBP-DASMARI?AS CAVITE		\N
3345	DealSupls	ROLAND DON PATRON RAMOS QUANTUM DLUX TOUR SERVICES	0291-2650-22	LBP-DUMAGUETE CITY		\N
3346	DealSupls	ROMEO G. EVANGELISTA	2376-1579-73	LBP-DASMARINAS		\N
3347	DealSupls	RONALD SALGADO BAYONA PMF PROFESSIONAL ADVANCEMENT AND CONTINUING EDUCATION	1801-0625-86	LBP-PASEO DE ROXAS		\N
3348	DealSupls	RONEENA INC.	0001-1035-6624	BDO-GRACE PARK-11TH AVE		\N
3349	DealSupls	RONELA O PUNZALAN PRP PRINTING PRESS	1691-1605-95	LBP-COA BR.		\N
3350	DealSupls	RONNEL ARVIN AGANAN YADAO KUYA-PONZ CATERING SERVICES	0221-4297-70	LBP-BAGUIO BR		\N
3351	DealSupls	ROSALIE OSTIA DE LEON HOOKED ON LINE COMPUTER CENTER	3711-0040-67	LBP-BINONDO		\N
3352	DealSupls	ROSE AIRE ENTERPRISE INC.	405-7-405-01212-6	METROBANK-SAN JOAQUIN, PASIG BR		\N
3353	DealSupls	ROSEMARIE CATIPAY HIDEA RHJV GIVEAWAYS SHOP	3081-0290-31	LBP-PASIG CITY HALL BR.		\N
3354	DealSupls	ROUMEL ARELLANO PANGANIBAN TRIPLE RG CONSUMER GOODS TRADING	2311-1115-18	LBP-MANDALUYONG CITY HALL BR.		\N
3355	DealSupls	RPJ DEVELOPMENT INC.	1591-0033-01	BPI-ALABANG TOWN CENTER BR.		\N
3357	DealSupls	S & E SOLUTIONS INC	0571-1200-70	LBP-EAST AVE. BR		\N
3358	DealSupls	S1 TECHNOLOGIES INC	0232-1146-65	LBP-WEST AVENUE BR.		\N
3359	DealSupls	SAFARI VILLAGE HOTELS AND RESORTS, INC.	00095-0570-834	BDO-QUEZON AVE.		\N
3361	DealSupls	SAMICHELLA\\S CREATIONS & EVENTS ORGANIZER	0483-0485-02033	METROBANK-CAGAYAN DE ORO CITY		\N
3362	DealSupls	SAMSON MEDRANA PANGANIBAN SMP MOVING BILLBOARDS ADVERTISING	1821-2038-10	LBP-BICUTAN		\N
3363	DealSupls	SANTIAGO V. SIERRA AND SONS DEVELOPMENT CORPORATION	0034-0801-2192	BDO-COLON, DUMAGUETE BR.		\N
3364	DealSupls	SAS MANAGEMENT, INC.	0485-0244-400	BDO-PIONEER,MANDALUYONG		\N
3365	DealSupls	SC FOODS CORPORATION	0058-3001-1000	BDO-OLONGAPO CITY		\N
3366	DealSupls	SCIENCE CENTRUM FABRICATION, INC.	1-007-07366-3	RCBC SAVINGS BANK-BARANGKA BR.		\N
3367	DealSupls	SCIENCESTAR CORPORATION	0671-0857-52	LBP-PASIG CAPITOL BR.		\N
3368	DealSupls	SDCD GLASS AND ALUMINUM	2016-7004-4415	UCPB-MUNTINLUPA		\N
3369	DealSupls	SEAMEO SEARCA	0913-2369-39	BPI-LOS BANOS		\N
3370	DealSupls	SELAH PODS HOTEL INC.	301-7-301524508	METROBANK FB HARRISON  BR.		\N
3371	DealSupls	SENTERA HOTEL VENTURES INC.	9143-0015-36	BPI- ATRIA,ILOILO CITY		\N
3372	DealSupls	SEQUOIAMANILA CORP	0571-1255-52	LBP-EAST AVE. BR.		\N
3373	DealSupls	SET AND STAGE RESOURCE MANAGEMENT INC.	0025-3000-7932	UNION BANK-WEST SERV. ROAD		\N
3374	DealSupls	SGS PHILIPPINES, INC.	1881-0441-41	BPI- LA FUERZA, MAKATI		\N
3375	DealSupls	SHEPHERD\\S VOICE PUBLICATIONS INC.	397-000070-4	BDO-GEN. ARANETA,CUBAO		\N
3376	DealSupls	SHERCON RESORT AND ECOLOGY PARK	0059-6019-3567	BDO-LIPA CITY		\N
3377	DealSupls	SILICON VALLEY COMPUTER GROUP PHILS. INC. 	0232-1145-33	LBP-WEST AVE. BRANCH		\N
3378	DealSupls	SIQUIJOR GOLD VIEW BEACH RESORT INC.	3095-7000-3223	PNB-LARENA,SIQUIJOR		\N
3379	DealSupls	SM PRIME HOLDINGS, INC.	0015-0000-9073	BDO-SM CORPORATE BRANCH		\N
3380	DealSupls	SMART COMMUNICATIONS INC	0052-1197-23	LBP-BUENDIA BRANCH		\N
3381	DealSupls	SOFT BOILED EGGS INC	0712-1042-52	LBP-NORTH AVE.		\N
3382	DealSupls	SOL Y VIENTO MOUNTAIN HOT SPRING RESORT, INC.	0012-9049-5732	BDO-CALAMBA BRANCH		\N
3383	DealSupls	SOLID BUSINESS MACHINES CENTER, INC.	0592-1008-86	LBP-TAFT AVENUE		\N
3384	DealSupls	SOPHIA GLASS CRAFTS & DESIGNS	00000-1938-3374	SECURITY BANK-VISAYAS AVE. QC		\N
3385	DealSupls	SPARKLAB	7590-4179-33	RCBC- QUEZON CITY BRANCH		\N
3386	DealSupls	SPECTRA AUDIO VIDEO CENTER INC.	0061-0554-79	BPI-QUAD BRANCH		\N
3387	DealSupls	SPLASH MOUNTAIN RESORT	000913-2980-63	BPI-LOS BANOS		\N
3356	DealSupls	RUTH L. PARDINAS	4460-0339-01	BDO-FUGOSO BR.		\N
3333	DealSupls	RESTY CARRERAS TRANSPORT	5606-0177-84	LBP-BETTERLIVING BR.		\N
3388	DealSupls	SPLENDIDO TAGAYTAY HOTEL, INC.	2140-3320-98	BDO-MENDEZ		\N
3389	DealSupls	ST. FRANCIS SQUARE DEVELOPMENT CORP	3732-1001-71	LBP-ORTIGAS CENTER		\N
3390	DealSupls	ST. FRANCIS SQUARE DEVELOPMENT CORPORATION	109-36-000-6033	ROBINSONS BANK-		\N
3391	DealSupls	ST. GILES HOTEL (MANILA), INC.	0059-5002-849	MAYBANK-BEL AIR BRANCH		\N
3392	DealSupls	STA. FE RESORT AND REALTY DEVELOPMENT, INC.	0000-0056-44442	SECURITY BANK- BACOLOD I		\N
3393	DealSupls	STALWART REALTY, INC.	0711-039263-001	SECURITY BANK-AYALA ALABANG BR.		\N
3394	DealSupls	STOTSENBERG LEISURE PARK & HOTEL CORPORATION	1582-1025-00	LBP-GIL PUYAT AVE.		\N
3395	DealSupls	STRATEGIC RESEARCH AND DEVELOPMENT CTR I	1782-1038-88	LBP-MAKATI CITY		\N
3396	DealSupls	STS FASTFOOD AND CATERING SERVICES BY MARITES T. SANTOS	2961-0739-47	LBP-CLSU		\N
3397	DealSupls	SUBIC BAY TRAVELLERS HOTEL & EVENT CENTER INC.	1572-1028-89	LBP-SUBIC BAY BRANCH		\N
3398	DealSupls	SUN ROSS ENTERPRISES	4453-445-24643-4	METROBANK-ZARATE BR.		\N
3399	DealSupls	SUNSHINE COMMODITIES BY VIRGILIO RAFAEL VALDEZ	1781-0860-68	LBP-PASONG TAMO		\N
3400	DealSupls	SUNSHINE OFFICELINK VENTURES CORP.	1782-1039-42	LBP-PASONG TAMO		\N
3401	DealSupls	SUNVERDE HOTELS & RESORTS INC.	1461-1123-46	LBP-QUEZON CITY		\N
3402	DealSupls	SUPPLY HERO VENTURES INC	0030-0062-9828	BDO-CORPORATE CENTER BRANCH		\N
3403	DealSupls	SYREX CORPORATION	3341-0087-93	LBP-MAKATI CITY		\N
3404	DealSupls	TAGAYTAY CITY RESORT HOTEL, INC.	002253-0081-67	BPI-TAGAYTAY		\N
3405	DealSupls	TAJ HOTEL AND RESTO/BAR	0121-4013-20	LBP-TUGUEGARAO		\N
3406	DealSupls	TALKSHOP LEARNING AND TRAINING	3520-0165-02	BPI-ROCKWELL, MAKATI CITY		\N
3407	DealSupls	TANZA OASIS HOTEL AND RESORT FORMERLY MARAWI LEISURE PARK INC	2712-1025-54	LBP-ROSARIO, CAVITE BR		\N
3408	DealSupls	TERABIT COMPUTER SYSTEMS CORP	1781-1406-90	LBP-GIL PUYAT AVE.		\N
3409	DealSupls	TERESA UY TIU IKF HOME FURNISHING AND OFFICE FURNITURE	3832-0006-89	LBP-ALABANG BUSINESS CENTER		\N
3410	DealSupls	TERESITA NAVALLO OTIC CALUBCUB BAY RESORT AND RECREATION	3932-0000-31	LBP-SAN JUAN, BATANGAS BR.		\N
3411	DealSupls	TGP PHARMA INC	1822-1051-37	LBP-TAGUIG CITY HALL BR.		\N
3412	DealSupls	TGS FASTFOODS AND CATERING SERVICES	461-3-46102848-0	METROBANK-PROJECT 8 BR.		\N
3413	DealSupls	THE AMAZING UNITED NINE CORP.	1314-0000-2077	CHINABANK-SOLEMARE		\N
3416	DealSupls	THE BRAIN COMPUTER CORPORATION	0551-0352-55	LBP-GREENHILLS		\N
3417	DealSupls	THE FILIPINO MALL CORPORATION  (FURNITURE MANILA)	4880-0551-42	BDO-LA FUERZA MAKATI		\N
3418	DealSupls	THE GRAND TOWER SUITES	0031-5561-04	LBP-ILOILO CITY		\N
3419	DealSupls	THE HERITAGE HOTEL MANILA	168-3-168-50209-6	METROBANK-ROXAS BOULEVARD PASAY BR.		\N
3420	DealSupls	THE LAKE HOTEL TAGAYTAY INC.	4610-1397-77	BDO-QC BR.		\N
3421	DealSupls	THE ORCHIDSGARDEN INC.	0081-3219-22	LBP-SAN FERNANDO,PAMPANGA BR.		\N
3422	DealSupls	THE ORIENTAL HOSPITALITY AND RESTAURANT MANAGEMENT SERVICES INC.	2530-7000-7536	PNB-LEGAZPI CITY		\N
3423	DealSupls	THE RICHMONDE HOTEL-PRESTIGE HOTELS	545-3-545329817	METROBANK-ORTIGAS-SAN MIGUEL BR.		\N
3424	DealSupls	THE VALUE SYSTEMS INTEGRATION INC.	0012-1185-97	LBP-INTRAMUROS		\N
3425	DealSupls	THE VALUE SYSTEMS INTEGRATION INC.	6116-0000-0372	CHINABANK SAVINGS-STA. MESA		\N
3426	DealSupls	THE VALUE SYSTEMS PHILS. INC.	1442-1040-30	LBP-UN BRANCH		\N
3427	DealSupls	THREE A HIGH-END TENT KING ENTERPRISE	249-7-24951107-9	METROBANK-SILANG CAVITE		\N
3428	DealSupls	THUNDERBIRD PILIPINAS HOTELS & RESORTS INC.	661-027-007	BDO-ORTIGAS BR.		\N
3429	DealSupls	TIERRA NETWORKS TECHNOLOGIES INC.	1030-0000-1922	CHINABANK-ORTIGAS BR.		\N
3430	DealSupls	TIGER CONSULTING AND SOFTWARE DEVT INC	1782-1045-58	LBP-PASONG TAMO BR.		\N
3431	DealSupls	TIMBERLAND SPORTS & NATURE CLUB INC.	50-02-01002-1	EASTWEST BANK-MARIKINA BRANCH		\N
3432	DealSupls	TIMES STUDIO MEDIA MKTG. CORP.	4011-0213-31	BPI-ORTIGAS TEKTITE BR.		\N
3433	DealSupls	TINY.COM COMPUTER INC.	0231-1713-63	LBP-VITO CRUZ		\N
3434	DealSupls	TJ\\S CLEAR ART	3211-0224-41	LBP-ELLIPTICAL Q.C.		\N
3435	DealSupls	TOYOTA BALINTAWAK INC	0696-1035-00	LBP-EDSA CONGRESSIONAL BR.		\N
3436	DealSupls	TOYOTA BICUTAN PARANAQUE	1786-0902-33	LBP-PASONG TAMO BR.		\N
3437	DealSupls	TRAVEL UNIVERSE SERVICES AND CAFE INC	0056-8007-7575	BDO-FORT LEGEND BR.		\N
3438	DealSupls	TRAVELESQUE TOURS	0049-6038-9179	BDO-SOLANA BR.		\N
3439	DealSupls	TRICOM DYNAMICS INC. 	0051-3799-26	LBP-MAKATI CITY		\N
3440	DealSupls	TUV RHEINLAND PHILIPPINES, INC.	0048-8004-4736	BDO-LA FUERZA BRANCH		\N
3441	DealSupls	TWIN LAKES HOTEL INC.	0075-2801-2561	BDO-TAGAYTAY MENDEZ JUNCTION BR.		\N
3442	DealSupls	UNI-FILES SAVER CORP.	0682-1026-16	LBP-QUEZON CITY		\N
3443	DealSupls	UNIVERSITY HOTEL	3072-1004-67	LBP-DILIMAN		\N
3444	DealSupls	UP COLLEGE OF MASS COMMUNICATION FOUNDATION INC	0702-1043-94	LBP-DILIMAN		\N
3445	DealSupls	UP SYSTEM IT FOUNDATION INC.	3072-1003-60	LBP-UP DILIMAN		\N
3447	DealSupls	UPRAISE, INC.	1431-0118-55	BPI-LEGASPI-GAMBOA BR. MAKATI CITY		\N
3448	DealSupls	UPSI PROPERTY HOLIDINGS INC.	128-158-0147	UPCPB-UN AVE.		\N
3449	DealSupls	URDUJA SECURITY SERVICES, INC. 	0491-0800-00	LBP-MARIKINA		\N
3450	DealSupls	USEP MULTIPURPOSE COOPERATIVE	0162-1063-68	LBP-C.M RECTO DAVAO		\N
3451	DealSupls	USM HOSTEL	2732-1026-66	LBP-KABACAN, COTABATO		\N
3452	DealSupls	VANESSA DONATO JALECO BEST CHOICE ENT	2911-0693-10	LBP-GRACE PARK BR		\N
3453	DealSupls	VANILLA ENTERPRISE BY RONALD G. ATANACIO	0251-2177-93	LBP-VALENZUELA		\N
3455	DealSupls	VENTOURS TRANSPORT SERVICES	00-8020-0172-54	BDO- BACOOR CAVITE		\N
3456	DealSupls	VIA MARE CORPORATION	1771-0563-73	LBP-ROXAS BLVD.		\N
3457	DealSupls	VIBAL GROUP, INC.	0682-1015-98	LBP-ARANETA BRANCH		\N
3458	DealSupls	VIRGINIA S. AMELING	960-3-75808756-6	METROBANK-TABUK BRANCH		\N
3459	DealSupls	VISTA HOSPITALITY MANAGEMENT CORP.	0006-2802-6958	BDO-LAS PI?AS BRANCH		\N
3460	DealSupls	VISUALCORE INC.	3051-1119-73	BPI-WEST TRIANGLE BRANCH		\N
3461	DealSupls	VJ GRAPHIC ARTS INC.	0232-1120-85	LBP-RIZAL		\N
3462	DealSupls	VYD METAL CRAFTS INCORPORATED	0022-0036-9553	BDO-SAVEMORE NOVALICHES Q.C.		\N
3463	DealSupls	WALTER PEREZ TENOSO PERSABE MERCHANDISING	2721-1151-20	LBP-MARIKINA BR.		\N
3464	DealSupls	WATERFRONT CEBU CITY CASINO HOTEL, INC.	0002-6001-7437	UNIONBANK-AYALA CEBU INSULAR  BR.		\N
3465	DealSupls	WATTSAVERS ENERGY SERVICES COMPANY	1302-1018-7054	PNB- OLIVEROS BR.		\N
3466	DealSupls	WEDINGCO ENTERPRISE	019-7-01951786-8	METROBANK-LIBERTAD, PASAY CITY		\N
3467	DealSupls	WILCON BUILDERS DEPOT, INC.	0047-3801-7007	BDO-ALABANG		\N
3468	DealSupls	WILLMAE MANUFACTURING BY JOMAE LAM HUNG	1431-1505-29	LBP-TONDO MANILA		\N
3469	DealSupls	WILLMAE MFG	0006-9001-5720	BDO-PADRE ALGUE BR.		\N
3470	DealSupls	WMSU AUXILLIARY REVOLVING FUND	3232-1000-51	LBP-ZAMBOANGA CITY		\N
3471	DealSupls	WOMAN FINE CLOTHING INC.	0109-2800-1646	BDO-GALLARO/ DE ROSA MAKATI BR.		\N
3472	DealSupls	XANJI SYNERGY MARKETING CORPORATION	0462-1114-28	LBP-PUERTO PRINCESA		\N
3473	DealSupls	XENIA HOTEL CORPORATION	1581-0354-34	LBP-CLARK  BR.		\N
3474	DealSupls	YISRAEL SOLUTIONS AND CONSULTING (YISCON) INC	1641-1047-16	LBP-PASIG CITY		\N
3475	DealSupls	YNZAL MARKETING CORPORATION	002010-1350-20	BDO-QUEZON AVE.		\N
3476	DealSupls	ZAB ENTERPRISES INC	3721-0059-75	LBP-ESPA?A BRANCH		\N
3477	DealSupls	ZHUJAR MFG INC.	0691-1236-50	LBP-EDSA CONGRESSIONAL BR.		\N
3478	DealSupls	ZILLION BUILDERS	2409-7000-3054	PNB-AYALA HIGHWAY, LIPA CITY		\N
3479	DealSupls	ZURBANO PUBLISHING & PRINTING CORPORATION	1782-1038-02	LBP-PASONG TAMO		\N
3480	DealSupls	UNIVERSITY OF PERPETUAL HELP RIZAL, INC.	0069-8038-7196	BDO-SM CENTER, LAS PI?AS BR.		\N
3481	DealSupls	JONECO TECH MARKETING CORP	0671-0934-61	LBP-PASIG CAPITOL BR.		\N
3482	DealSupls	WAI SHING PETER WONG KO MASANGKAY COMPUTER CENTER	0681-0642-65	LBP-G. ARANETA BR.		\N
1032	Univs	BTR-IATF / DOST-PCHRD	3402-2844-38	LBP-INTRAMUROS		\N
1033	Univs	BTR-IATF / DOST CAR	3402-2844-38	LBP-INTRAMUROS		\N
1034	Univs	BTR-IATF / DOST REGION 1	3402-2844-38	LBP-INTRAMUROS		\N
1035	Univs	BTR-IATF / DOST REGION 2	3402-2844-38	LBP-INTRAMUROS		\N
1036	Univs	BTR-IATF / DOST REGION 3	3402-2844-38	LBP-INTRAMUROS		\N
1037	Univs	BTR-IATF / DOST REGION 5	3402-2844-38	LBP-INTRAMUROS		\N
1038	Univs	BTR-IATF / DOST REGION 6	3402-2844-38	LBP-INTRAMUROS		\N
1039	Univs	BTR-IATF / DOST REGION 7	3402-2844-38	LBP-INTRAMUROS		\N
1040	Univs	BTR-IATF / DOST REGION 8	3402-2844-38	LBP-INTRAMUROS		\N
1041	Univs	BTR-IATF / DOST REGION 9	3402-2844-38	LBP-INTRAMUROS		\N
1042	Univs	BTR-IATF / DOST REGION 10	3402-2844-38	LBP-INTRAMUROS		\N
1043	Univs	BTR-IATF / DOST REGION 11	3402-2844-38	LBP-INTRAMUROS		\N
1044	Univs	BTR-IATF / DOST REGION 12	3402-2844-38	LBP-INTRAMUROS		\N
1045	Univs	BTR-IATF / DOST REGION 13	3402-2844-38	LBP-INTRAMUROS		\N
1046	Univs	BTR-IATF / DOST REGION 4A	3402-2844-38	LBP-INTRAMUROS		\N
1047	Univs	BTR-IATF / DOST REGION 4B	3402-2844-38	LBP-INTRAMUROS		\N
1048	Univs	BTR-OTHER THAN IATF / DOST-SEI	3402-2844-46	LBP-INTRAMUROS		\N
1049	Univs	BTR-REGULAR FUND / DOST-ITDI	3402-2844-20	LBP-INTRAMUROS		\N
1050	Univs	BTR-REGULAR FUND / DOST-SEI	3402-2844-20	LBP-INTRAMUROS		\N
2940	DealSupls	DOST CO- BTR 	3402-2492-17	LBP-BTR-DOST CO		\N
932	Sch-CIP	SEI S&T SCHOLARSHIP	1822-1004-88	LBP-BICUTAN		\N
1085	Univs	DOST SEI S&T SCHOLARSHIP FUND	0362-1033-80	LBP-BUTUAN (DOST CARAGA)		\N
1158	Univs	SEI S&T SCHOLARSHIP FUND	1822-1004-88	LBP-BICUTAN		\N
3483	Univs	SEI PASSTHROUGH ACCOUNT	 	LBP-BICUTAN	\N	\N
2709	RegEmp	ALBERT G. MARINO	1827-0350-48	LBP-BICUTAN		\N
3485	Univs	UERMMMCI	\N	\N	\N	\N
3484	Various	PHILIPPINE AIRLINES	\N	\N	\N	\N
3486	Various	PETRON CORPORATION e-FUEL CARD	\N	\N	\N	\N
3487	Sch-CIP	JEANNY NOVA PUNAY	\N	\N	\N	\N
3488	Sch-CIP	MARVIN V. ROSALES	\N	\N	\N	\N
3489	Various	SMC SKYWAY CORPORATION	\N	\N	\N	\N
3493	Univs	TECHNOLOGICAL UNIVERSITY OF THE PHILS - TAGUIG	\N	\N	\N	\N
3494	Various	GOVERNMENT SERVICE INSURANCE SYSTEM	\N	\N	\N	\N
3495	\N	AZRA MAY KABIRI	\N	\N	\N	\N
3496	\N	CHARM ANGEL BUSTILLO	\N	\N	\N	\N
3360	DealSupls	SALAD COUNTRY BY DINA S. DEL ROSARIO	1891-0965-81	LBP-LOS BANOS		\N
140	Sch-CIP	CECILIA B. LEANO	1897-0323-99	LBP-BICUTAN		\N
245	Sch-CIP	DOMINGO A. PENA JR.	3616-0004-37	LBP-ALBAY BRANCH		\N
322	Sch-CIP	FORTUNATO T. DE LA PENA	1827-0297-22	LBP-BICUTAN		\N
463	Sch-CIP	JESTER  C. VIRINA	1827-3229-42	LBP-BICUTAN		\N
533	Sch-CIP	JULIUS L. LEANO JR.	1827-0203-93	LBP-BICUTAN		\N
615	Sch-CIP	MA. BETTINA SAN JUAN ARGANOSA	1897-1346-39	LBP-LOS BANOS		\N
650	Sch-CIP	MARIA PENAFRANCIA L. NEPOMUCENO	0707-0645-36	LBP-PHILCOA BRANCH		\N
964	Sch-CIP	TOMAS BOTARDO BRINAS 	0136-1830-28	LBP-LEGASPI CITY		\N
1168	Univs	ST. JOSEPH'S ACADEMY OF LAS PINAS, INC.	0052-6004-8890	BDO-LA HUERTA		\N
1403	RP	CESAR E. YNIGUEZ	0426-1124-22	BPI-COMMONWEALTH BR.		\N
1527	RP	EDITHA LORENCE MOZO DELA PENA	3127-0240-21	LBP-BATASAN HILLS, QC		\N
1537	RP	EDWIN D. IBANEZ	2967-0105-56	LBP-NUEVA ECIJA		\N
1667	RP	GIRAME M. MASCARINAS	0067-2021-6340	BDO-VALENZUELA		\N
1779	RP	JENNIFER D. PANO	5-25587735-3	DBP-CEBU CITY BR.		\N
1848	RP	JONATHAN P. MANIGO	0805-637509-500	DBP-CARAGA		\N
2284	RP	NICK PANARES	0008-7061-0473	BDO-SM Cagayan De Oro City		\N
2394	RP	REY NINO N. BAGUIO	0237-1717-05	LBP-WEST AVE.		\N
2850	DealSupls	CAFE TEODORA	0075-6009-9294	BDO-TARLAC		\N
3048	DealSupls	HOSPITALITY INTERNATIONAL INC.-PARQUE ESPANA	660-7660000840	METROBANK-FILINVEST ALABANG		\N
3257	DealSupls	ORDONO FARM RESORT	0086-1016-8498	BDO-SAN FERNANDO MANNA MALL		\N
3414	DealSupls	THE BAYLEAF HOTEL	0045-0040-9583	BDO-INTRAMUROS		\N
3415	DealSupls	THE BAYLEAF HOTEL	4500-4095-83	BDO-INTRAMUROS		\N
3518	\N	EDCT FOOD SERVICES	\N	\N	\N	\N
685	Sch-CIP	MARK MERRILL MESA	0436-2228-23	LBP-SOLANO 		\N
2639	GIAPS	IDA E. DELA PENA	1827-5783-94	LBP-BICUTAN		DOST-SEI, Bicutan
3522	\N	HILLARY DIANE ANDALES	\N	\N	\N	\N
3523	\N	LAMBERT TRADING	\N	\N	\N	\N
3524	\N	ALBERT FRESNIDO ASTILLERO	\N	\N	\N	\N
3144	DealSupls	LKY RESORTS AND HOTELS, INC. 	1080-0000-1908	CHINABANK-LEGAZPI CITY,ALBAY		\N
3526	\N	MEDRISE INTERNATIONAL OPC				\N
3527	\N	VISAYAS STATE UNIVERSITY				\N
3528	\N	RAFFY TAGHAP				\N
3529	\N	NESTOR RABUYA				\N
3530	\N	GINO CALUMPANG				\N
3531	\N	andre martin calapatia				\N
3532	\N	SARI ROSE SOLEDAD MURCIA				\N
3533	\N	EMMELINE JIRAH FETESIO				\N
3534	\N	THE FARM AT CARPENTER HILL INC				\N
3535	\N	RUBY CRISTOBAL				\N
3536	\N	ELVIRA TRADING VENEGAS				\N
3537	\N	MELANIE PANGILINAN				\N
3615	\N	VI HUB SERVICES INC.				\N
3617	\N	CAMILLE ARYNNE SEVILLENA				\N
3619	\N	JECO JED RUALES				\N
3621	\N	LEANDER D. LIZO				\N
3622	\N	JOSEFIN D. FAJARDO III				\N
3624	\N	CIANVINMAR ENNTERPRISES				\N
3626	\N	FMD CATERING SERVICES				\N
2607	GIAPS	AIRA SHAINE JUAREZ	0536-1296-85	LBP-PASEO MALOLOS BR.		DOST-SEI, Bicutan
2608	GIAPS	AIZA D. MACARAIG	1827-3614-76	LBP-BICUTAN		DOST-SEI, Bicutan
2609	GIAPS	ALONA R. GASIS	1827-4129-17	LBP-BICUTAN		DOST-SEI, Bicutan
2610	GIAPS	ALYSSA ANGELICA L. DE LARA	1827-5789-47	LBP-BICUTAN		DOST-SEI, Bicutan
2611	GIAPS	ANGELO S. CABIGAN	1827-4127-98	LBP-BICUTAN		DOST-SEI, Bicutan
2612	GIAPS	ANNA MARGARITA B. ISIDRO	1827-3410-33	LBP-BICUTAN		DOST-SEI, Bicutan
2613	GIAPS	AREANNE JERIMAE D. HULIGANGA	1827-5788-90	LBP-BICUTAN		DOST-SEI, Bicutan
2614	GIAPS	ARMIE B. JACKSON	1827-5167-80	LBP-BICUTAN		DOST-SEI, Bicutan
2615	GIAPS	BELMOR D. VILLAMOR	1827-4131-74	LBP-BICUTAN		DOST-SEI, Bicutan
2616	GIAPS	BERN IRISH B. ARGUELLES	1827-3745-19	LBP-BICUTAN		DOST-SEI, Bicutan
2617	GIAPS	BERNA JANE R. MUNAR	1827-5099-29	LBP-BICUTAN		DOST-SEI, Bicutan
2618	GIAPS	CAMILA CHRISTIAN CRUZ	9041-2231-84	RCBC-RIZAL BR.		DOST-SEI, Bicutan
2619	GIAPS	CAMILLE JEANNE P. HULIGANGA	1827-5827-66	LBP-BICUTAN		DOST-SEI, Bicutan
2620	GIAPS	CARIZZA V. GUEVARRA	1827-5897-28	LBP-BICUTAN		DOST-SEI, Bicutan
2622	GIAPS	CATHLEEN MARY  VELASQUEZ	1827-5253-39	LBP-BICUTAN		DOST-SEI, Bicutan
2623	GIAPS	CELSA P. TULALIAN	1827-4131-58	LBP-BICUTAN		DOST-SEI, Bicutan
2624	GIAPS	CHABILLI N. BRABANTE	1827-5782-20	LBP-BICUTAN		DOST-SEI, Bicutan
2625	GIAPS	CHRISTINE JIREH A. CUREG	1827-6312-01	LBP-BICUTAN		DOST-SEI, Bicutan
2626	GIAPS	CLYDE GUERRERO	1827-3725-16	LBP-BICUTAN		DOST-SEI, Bicutan
2627	GIAPS	DANTE G. CORRAL	1827-3942-69	LBP-BICUTAN		DOST-SEI, Bicutan
2628	GIAPS	DANTE T. TULALIAN	1827-4131-66	LBP-BICUTAN		DOST-SEI, Bicutan
2629	GIAPS	DONALEE MANDAP PAEZ	1827-4079-56	LBP-BICUTAN		DOST-SEI, Bicutan
2630	GIAPS	EDWIN B. LOPEZ	1827-4129-68	LBP-BICUTAN		DOST-SEI, Bicutan
2631	GIAPS	EFREL JELLIAN C. CERNIAS	1827-5526-38	LBP-BICUTAN		DOST-SEI, Bicutan
2632	GIAPS	ELEONOR V. FERNANDEZ	1827-5890-51	LBP-BICUTAN		DOST-SEI, Bicutan
2633	GIAPS	FAITH JUNESSA A. CUREG	1827-5755-73	LBP-BICUTAN		DOST-SEI, Bicutan
2634	GIAPS	FORTUNATO C. ANDAYA	1827-5518-36	LBP-BICUTAN		DOST-SEI, Bicutan
2635	GIAPS	FRANCE CHESCA C. TURDA	2266-1819-41	LBP-SANCHEZ MIRA, CAGAYAN BR.		DOST-SEI, Bicutan
2636	GIAPS	FRANCIS DHEYLLE P. JIONGCO	1827-5894-69	LBP-BICUTAN		DOST-SEI, Bicutan
2637	GIAPS	GERALD P. DELA CRUZ	1827-4128-36	LBP-BICUTAN		DOST-SEI, Bicutan
2638	GIAPS	GILBERT S. AMBAC	1827-4127-39	LBP-BICUTAN		DOST-SEI, Bicutan
2640	GIAPS	JAMES CARLO N. CERDA	1827-4128-01	LBP-BICUTAN		DOST-SEI, Bicutan
2641	GIAPS	JANETTE C. NAMOCATCAT	1827-4130-34	LBP-BICUTAN		DOST-SEI, Bicutan
2642	GIAPS	JANINE B. FLORENDO	1827-5671-98	LBP-BICUTAN		DOST-SEI, Bicutan
2643	GIAPS	JASON  S. YANGCO	1827-5890-86	LBP-BICUTAN		DOST-SEI, Bicutan
2644	GIAPS	JAVIER ANGELO S. JAVIER	1827-5683-80	LBP-BICUTAN		DOST-SEI, Bicutan
2645	GIAPS	JENNY ROSE D. ARZAGA	1827-5670-15	LBP-BICUTAN		DOST-SEI, Bicutan
2646	GIAPS	JERICK MERVIN M. DAPUL	1827-5765-96	LBP-BICUTAN		DOST-SEI, Bicutan
2647	GIAPS	JEZA MAE B. SALGADO	1827-5890-00	LBP-BICUTAN		DOST-SEI, Bicutan
2648	GIAPS	JOEL E. LOMUGDANG	1827-4129-50	LBP-BICUTAN		DOST-SEI, Bicutan
2654	GIAPS	JOVIE S. REBUCAS	1827-5890-19	LBP-BICUTAN		DOST-SEI, Bicutan
2655	GIAPS	JOYCE PEARLY S. AGNA	1827-4958-55	LBP-BICUTAN		DOST-SEI, Bicutan
2656	GIAPS	JULIAN C. RUBIS	1827-4131-07	LBP-BICUTAN		DOST-SEI, Bicutan
2657	GIAPS	JULIE ANN GOCO CABUANG	0016-1550-20	LBP-INTRAMUROS		DOST-SEI, Bicutan
2658	GIAPS	JUSTIN S. DEL ROSARIO	1827-3733-26	LBP-BICUTAN		DOST-SEI, Bicutan
2659	GIAPS	KANE CHRISTIAN M. AQUINO	1827-4127-47	LBP-BICUTAN		DOST-SEI, Bicutan
2660	GIAPS	KENNETH F. BOSTON	1827-4127-63	LBP-BICUTAN		DOST-SEI, Bicutan
2661	GIAPS	KENNETH M. ATIENZA	1827-5083-96	LBP-BICUTAN		DOST-SEI, Bicutan
2662	GIAPS	KENNETH M. BRILLANTES	1827-5894-77	LBP-BICUTAN		DOST-SEI, Bicutan
2663	GIAPS	KIMBERLY ANN U. EGALIN	1827-5897-44	LBP-BICUTAN		DOST-SEI, Bicutan
2664	GIAPS	KRIS CHAYANNE  B. CERTEZA	1827-5084-69	LBP-BICUTAN		DOST-SEI, Bicutan
2665	GIAPS	KRISTINE LEAN V. CURA	1827-4128-10	LBP-BICUTAN		DOST-SEI, Bicutan
2666	GIAPS	KYLE MAVERICK O. BELUSO	1827-5827-90	LBP-BICUTAN		DOST-SEI, Bicutan
2668	GIAPS	LEVITA M. TARNATE	1827-4079-64	LBP-BICUTAN		DOST-SEI, Bicutan
2669	GIAPS	LOVELY BARBA AQUINO	1094-5083-8882	UNIONBANK-LAS PI?AS BR		DOST-SEI, Bicutan
2670	GIAPS	MA. ANGIELA G. PANGANIBAN	1827-5520-34	LBP-BICUTAN		DOST-SEI, Bicutan
2671	GIAPS	MA. CONNIE V. PRIANES	2766-1914-47	LBP-LIGAO, ALBAY BR.		DOST-SEI, Bicutan
2672	GIAPS	MA. KIAH L. VILLAMOR	1827-5662-72	LBP-BICUTAN		DOST-SEI, Bicutan
3616	\N	NICOLE S. DIAZ				\N
3618	\N	PRICILLA FAYE TANQUERIDO SIMON				\N
2673	GIAPS	MA. ROCHELLE P. GARCIA	1827-4129-09	LBP-BICUTAN		DOST-SEI, Bicutan
2674	GIAPS	MA. SAIRA V. ALGURA	1827-4131-90	LBP-BICUTAN		DOST-SEI, Bicutan
2675	GIAPS	MADELYN RECIO	0686-1502-40	LBP-G. ARANETA AVE. BR.		DOST-SEI, Bicutan
2676	GIAPS	MAJJADE D. STA ANA	1827-5890-94	LBP-BICUTAN		DOST-SEI, Bicutan
2677	GIAPS	MARIA ANGELICA C. VISTAN	1826-3347-69	LBP-BICUTAN		DOST-SEI, Bicutan
2678	GIAPS	MARICEL O. IDOS	1827-5084-93	LBP-BICUTAN		DOST-SEI, Bicutan
2679	GIAPS	MARIELLE JANE CURIOSO	1827-5890-43	LBP-BICUTAN		DOST-SEI, Bicutan
2680	GIAPS	MARJORIE R. ARIOLA	1827-3723-62	LBP-BICUTAN		DOST-SEI, Bicutan
2681	GIAPS	MARK GERARD A. BAILON	1827-5828-63	LBP-BICUTAN		DOST-SEI, Bicutan
2683	GIAPS	MARY JOY D. DIONEDA	1827-5890-35	LBP-BICUTAN		DOST-SEI, Bicutan
2684	GIAPS	MICHAEL C. DELOS SANTOS	1827-5157-32	LBP-BICUTAN		DOST-SEI, Bicutan
2686	GIAPS	MICHELLE ANN A. MAGSALIN	1827-5788-82	LBP-BICUTAN		DOST-SEI, Bicutan
2688	GIAPS	NONA L. DOCOR	1827-6431-96	LBP-BICUTAN		DOST-SEI, Bicutan
2689	GIAPS	PAMELA FAYE CALIVA DIMAS	1826-3347-00	LBP-BICUTAN		DOST-SEI, Bicutan
2690	GIAPS	QUINTIN S. DELA TORRE	0039-7023-7712	BDO-MAKATI BR.		DOST-SEI, Bicutan
2691	GIAPS	RACHELLE J. OJALES	1827-4130-69	LBP-BICUTAN		DOST-SEI, Bicutan
2692	GIAPS	RALFY P. BULACLAC	1827-4127-71	LBP-BICUTAN		DOST-SEI, Bicutan
2693	GIAPS	RAMON DAVID VARGAS CASTANEDA	1827-6433-90	LBP-BICUTAN BR.		DOST-SEI, Bicutan
2694	GIAPS	RAUL JR L. ROMA	1827-3733-18	LBP-BICUTAN		DOST-SEI, Bicutan
2695	GIAPS	RAYMUND L. EMBANG	1827-4128-52	LBP-BICUTAN		DOST-SEI, Bicutan
2696	GIAPS	REGINA C. BELENO	1827-3694-00	LBP-BICUTAN		DOST-SEI, Bicutan
2697	GIAPS	ROMELYN V. YAMIO	3079-2066-43	BPI-BEL-AIR POLARIS BR.		DOST-SEI, Bicutan
2698	GIAPS	ROMIL M. FLORES	1827-6288-71	LBP-BICUTAN		DOST-SEI, Bicutan
2699	GIAPS	ROMNICK JAMES S. ATIENZA	1827-5067-92	LBP-BICUTAN		DOST-SEI, Bicutan
2701	GIAPS	RUBEN P. SALAC JR.	1827-4131-15	LBP-BICUTAN		DOST-SEI, Bicutan
2702	GIAPS	SHAIRA CEL B. PADRE	1827-5085-58	LBP-BICUTAN		DOST-SEI, Bicutan
2705	GIAPS	WILCEL JAMES BERNARDO	3726-0400-43	LBP-BICUTAN		DOST-SEI, Bicutan
2706	GIAPS	WILLIAM P. ALAMAG	1827-4127-20	LBP-BICUTAN		DOST-SEI, Bicutan
2707	GIAPS	ZAMORA E. IBRAHIM	1827-4129-33	LBP-BICUTAN		DOST-SEI, Bicutan
2708	GIAPS	TIMOTHY GERARD A. BALDEMOR	1316-3234-79	LBP-SAN PABLO, LAGUNA BR.		DOST-SEI, Bicutan
2667	GIAPS	LAWRENCE B. ESPANOL	1827-4128-60	LBP-BICUTAN		DOST-SEI, Bicutan
2704	GIAPS	VINCE M. ALBUERA	1827-5081-59	LBP-BICUTAN	000816189000	DOST-SEI, Bicutan
3539	\N	PAUL JOHN PASTOR				\N
3540	\N	LANDBANK OF THE PHILIPPINES				\N
3541	\N	KYLE JOHN LUMAHOG				\N
3543	\N	AP PARAGON ENTERPRISE OPC				\N
3545	\N	SD PUBLICATIONS INC				\N
3546	\N	JOHN ALEC COSICO				\N
3547	\N	JANNELI LEA SORIA				\N
3548	\N	JC ALBERT PERALTA				\N
3549	\N	MAUREEN LOU V LEGASPI / GAMMA LINE ENTERRISES				\N
3550	\N	ROUMEL PANGILINAN				\N
3551	\N	ROLYEN VILLAMIN				\N
3552	\N	AYAMED DRUG DISTRIBUTOR				\N
3553	\N	S&A LEARNING SOLUTIONS				\N
3554	\N	ARRASDI CULABAN				\N
3555	\N	BSM HOLDINGS INC.				\N
3556	\N	LOUIE TESTA MURCIA				\N
3557	\N	SARAH ALMA BENTIR				\N
3559	\N	VITA MAX PRIME TRADING	\N	\N	\N	\N
3558	\N	KUMIHO'S FOOD CART	\N	\N	\N	\N
3560	\N	LEA ERICA M. ALCAO	\N	\N	\N	\N
3561	\N	SODEXO BENEFITS AND REWARDS SERVICES PHILS. INC.				\N
3562	\N	DARIUS SILVINO / SILVANUS NON SPECIALIZED WHOLESALE TRADING				\N
3563	\N	KIM DIANNE G. BAGASONA				\N
3564	\N	CHRISTIAN PAUL B. LOPEZ / E&C GENERAL MERCHANDISE				\N
3565	\N	AL KAIXER ANCHETA				\N
3566	\N	HERBERT DUSTIN AUMENTADO				\N
3567	\N	DAYLEE TRANZ R. DANO				\N
3568	\N	ANGELINE SIMACON				\N
3569	\N	JHUN LAURENCE RASCO				\N
3570	\N	MITSUI TRADING PHILS. LTD. CO				\N
3571	\N	SELWYN IAN PANIS				\N
3572	\N	HYDROPONICS GARDEN SUPPPLY				\N
3573	\N	MARIA FERNANDEZ / RFK GENERAL MERCHANDISE				\N
3574	\N	ARACELI BAYUBAY MERCADO				\N
3575	\N	MARIANNE KRISTINE DELGADO				\N
3576	\N	JOSEPHINE GABRIEL BANAAG				\N
3577	\N	RIZAL TECHNOLOGICAL UNIVERSITY				\N
3578	\N	PERSONNEL OFFICERS ASSOCIATION OF THE PHILIPPINES INC.				\N
3579	\N	MARK JAYSON DE JESUS				\N
3580	\N	SECUREMETRIC TECHNOLOGY INC.				\N
3581	\N	UP BAGUIO DOST TRUST FUND				\N
3582	\N	BABY LYN T. DE GUZMAN				\N
3583	\N	MA. RAMELA ANGELA CAPUNONG				\N
3584	\N	MARCO REYES LAO				\N
3585	\N	CEBU TECHNOLOGICAL UNIVERSITY				\N
3586	\N	OFFICE OF THE SOLICITOR GENERAL				\N
3587	\N	CTU MAIN CAMPUS				\N
3588	\N	SHANEDEL'S INN AND CAFE				\N
3589	\N	CHRISTIAN JOHN SALUDAR				\N
3590	\N	OMAG CHARMAINE BALISONG				\N
3591	\N	ISLAND DRAGON TRANSPORT AND TRAVEL SERVICES				\N
3592	\N	MAGNETO ENTERPRISES				\N
3593	\N	MACH UNION LABORATORIES				\N
3594	\N	JOBELLE ABAYA				\N
3595	\N	DAVID CASTOR JR.				\N
3596	\N	JASMINE FAYE MIJARES				\N
3597	\N	VIJAY TANGUB				\N
3598	\N	SALLY PAKINGAN				\N
3599	\N	ROSE JEAN MORILLO				\N
3600	\N	INDUSTRIAL TECH NOLOGY DEVELOPMENT INSTITUTE				\N
3601	\N	CAROL SOCORRO MAGUINSAY				\N
3602	\N	NATIONAL TEACHER'S COLLEGE				\N
3603	\N	THE ALPHA ENTERPRISE /  MICHELLE BAUYON				\N
3604	\N	JESSICA BAUTISTA				\N
3605	\N	NERILOU DELA CRUZ				\N
3606	\N	PLUXEE PHILIPPINES INCORPORATED				\N
3607	\N	CAMIGUIN ISLAND RESORT				\N
3608	\N	JERRY AGBALOG / JERRY AGBALOG TRANSPORT SERVICE				\N
3609	\N	JOHN CHRISTIAN L GAVIOLA				\N
3610	\N	TRUST MANAGEMENT CENTER				\N
3611	\N	DEO ABINOJA SUMER				\N
3612	\N	MICHAEL CASAS				\N
3613	\N	PCAPI REGION 4A CHAPTER INC				\N
3614	\N	PHILIPPINE S&T DEVELOPMENT FUND				\N
3627	\N	GENSAN GREENLEAF HOTEL AND DEVELOPMENT CORP.				\N
3628	\N	HAVEN'S TOURIST TRANSPORT				\N
3629	\N	MARY ANN VALENZUELA / EMERJ VISUAL DESIGN & PRINTING SERVICES				\N
3630	\N	MARIE LEA MANIRICH DEJARLO				\N
3631	\N	JOHN REY DALIT				\N
3632	\N	EMAN NOEL CANADA				\N
3633	\N	MSU TRUST FUND ACCOUNT				\N
3634	\N	UP VISAYAS TRUST FUND				\N
3635	\N	FERNDALE FRANCO				\N
3636	\N	LYCKA MAE QUIBO-QUIBO				\N
3637	\N	EVELYN G. CHAVEZ				\N
3638	\N	DOROTHY JOANN LEI RABAJANTE				\N
3639	\N	PERLA S. LEDESMA				\N
3640	\N	MARJORIE EMMANUEL				\N
3641	\N	COM PARTS COMPUTER SALES				\N
3642	\N	RENEE VIEVE KANINDOT				\N
3643	\N	MARIA ADELIZA DELES				\N
3644	\N	MELVIN LEDESMA				\N
3645	\N	SAVANNAH RESORT HOTEL				\N
3646	\N	ERIKA MARI ROMERO				\N
3647	\N	BTR REGULAR FUND				\N
3648	\N	ALBERT MORDEN /  SG CAR RENTAL				\N
3649	\N	LUCILA CUETO DANOVA /  LRJN TOURIST TRANSPORT SERVICES				\N
3650	\N	PHILIPPINE POSTAL CORPORATION				\N
3651	\N	DSL TRADING AND GENERAL SERVICES				\N
3652	\N	IGRP INFORMATION TECHNOLOGY SOLUTIONS				\N
3653	\N	MYL EVENTS MANAGEMENT SERVICES				\N
3654	\N	MV A PRINTING SERVICES				\N
3655	\N	JUDE SASING				\N
3656	\N	ANGE'LE MAE CISNERO				\N
3657	\N	CEU DOST SEI SCHOLARSHIP				\N
\.


--
-- TOC entry 4995 (class 0 OID 24667)
-- Dependencies: 229
-- Data for Name: payeetbl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payeetbl (payeeid, payeename, payeeacctnum, payeeaddr, payeetin, payeetype) FROM stdin;
1	payee one	12345-67890	address 1	123456789	\N
2	payee two	23451-67435	address 2	987456321	\N
3	payee three	97321-09753	address 3	147852369	\N
4	payee four	06543-68764	address 4	963258741	\N
5	John Doe	12345-67890	123 Main Street	123456789	\N
6	Jane Smith	23456-78901	456 Oak Avenue	234567890	\N
7	James Johnson	34567-89012	789 Elm Boulevard	345678901	\N
8	Mary Brown	45678-90123	012 Pine Drive	456789012	\N
9	Michael Lee	56789-01234	234 Cedar Lane	567890123	\N
10	Jennifer Davis	67890-12345	456 Birch Court	678901234	\N
11	David Clark	78901-23456	678 Maple Way	789012345	\N
12	Sarah Wilson	89012-34567	890 Willow Lane	890123456	\N
13	Daniel Harris	90123-45678	901 Redwood Road	901234567	\N
14	Emily Turner	01234-56789	012 Oakwood Circle	012345678	\N
15	Matthew Young	12345-67890	123 Elmwood Avenue	123456789	\N
16	Olivia Hall	23456-78901	234 Pinehurst Drive	234567890	\N
17	Ethan Martin	34567-89012	345 Cedar Ridge	345678901	\N
18	Ava Williams	45678-90123	456 Willowbrook Lane	456789012	\N
19	William Moore	56789-01234	567 Birchwood Circle	567890123	\N
20	Sophia Taylor	67890-12345	678 Maplewood Lane	678901234	\N
21	Benjamin Harris	78901-23456	789 Redwood Circle	789012345	\N
22	Mia Thompson	89012-34567	890 Oakridge Drive	890123456	\N
23	Samuel Rodriguez	90123-45678	901 Pine Valley Road	901234567	\N
24	Emma Lee	01234-56789	012 Cedarwood Lane	012345678	\N
25	Alexander Davis	12345-67890	123 Elmwood Court	123456789	\N
26	Sophia Martin	23456-78901	234 Oakwood Avenue	234567890	\N
\.


--
-- TOC entry 4997 (class 0 OID 24676)
-- Dependencies: 231
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (prj_id, prj_code, prj_title, prj_fund, prj_div) FROM stdin;
1	08-17	The Filipino Patriot Scholars Project	2A1-101	STSD
2	01-18	Improvement of Science Education Institute offices and Facilities	2A1-AC	FAD
5	08-15	Gender and Development Efforts of SEI (GAD-ES) for 2022	2A1-AC (GAD)	OD
6	45-31	Support to the Presidential Committee Implementing PD997	PD 997	OD
7	05-15	Support to Upgrading and Networking for Research and Innovations in Science Education (SUNRISE)	2A2B-109	OD
13	24-13	Science Teacher Academy for the Regions	2A2B-101	SEID
14	03-17	Establishing Linkages with Academe, Industry and Research Institutions for Capacity Building in STEM (Science, Technology Engineering and Mathematics) Education	2A2B-102	SEID
15	34-10	Disaster Risk Reduction and Management (DRRM) for Senior HS STEM Teachers	2A2B-103	SEID
16	01-22	SEI STEM Teach	2A2B-104	SEID
17	02-22	Bukas-Tuklas: Discovery Boxes in Science and Mathematics for Children Ages 4-5 and 11-months old	2A2B-105	SEID
18	02-21	Video Storytelling	2A2B-106	SEID
19	02-18	Development of Childrens Storybooks in Science and Mathematics	2A2B-107	SEID
20	09-15B	Access to Resources and Innovations in Science Education (ARISE)	2A2B-108	SEID
21	37-12	Accelerated Science and Technology Human Resource Development Program	2A1-104	STSD
22	30-07	Capacity Building Program in Science and Mathematics Education (CBPSME)	2A1-105	STSD
23	05-21	DOST Human Resource Development Program	2A1-106	STSD
24	13-09	Development, Utilization and Implementation of S&T Scholarships - RA7687	2A1-101	STSD
25	13-11	Strategic Communication Plan for the Promotion of S&T HRD, Science Education Innovation and Youth Science Programs	2A2-AC	STMERPD
26	07-21	Appreciating Science: A Project on Perception of Science Among Filipino Grades 7-10 Students in the Philippines	2A2-AC	STMERPD
27	27-10	Science Explorer	2A2-AC	STMERPD
28	13-16	Modernization of ICT Facilities and Development/ Enhancement of Information Systems in Support of SEI Programs and Projects - MITHI	1A1	STMERPD
29	01-14	Expanding the Reach of the DOST Scholarship Program to Priority Municipalities (#Push4Science: Maging DOST Scholar Ka!)	2A2-AC	STMERPD
30	13-10	Climate Science Youth Camp	2A2-AC	STMERPD
31	03-15	Development of an Information System (IS) for the Digitization and Archival of Documents	2A2-AC	STMERPD
32	08-18	Tagisang Robotics Competition 2.0	2A2-AC	STMERPD
33	06-15	6th Indie-Siyensya Filmmaking Competition	2A2-AC	STMERPD
34	19-13	Tracer and Other Policy-Related Research on the DOST-SEI Scholarship Programs	2A2A-101	STMERPD
35	12-13	Human Resource in S&T Researches	2A2A-102	STMERPD
36	04-10	YES Awards	2A2A-103	STMERPD
37	17-16	imake.wemake: Create. Innovate. Collaborate	2A2A-104	STMERPD
38	13-09	Undergraduated Scientific Manpower Devt Program (Proj. 5801) Regular Merit	2A1-102	STSD
39	24-08	Engineering Research and Development for Technology (ERDT)	2A1-103	STSD
40	06-18	DOST-SEI Bangon Marawi Program in S & T Human Resource Development	2A1-101	STSD
3	02-14	Human Resource Development Program	2A1-AC (HR)	FAD
41	99-98	c	2A1-1	FAD
42	99-99	x	2A1-2	FAD
43	99-97	z	2A2	FAD
45	\N	\N	2A2-A	\N
44	\N	\N	2A2-B	\N
46	\N	\N	2A1-AC (FAD)	\N
47	\N	\N	2A1-101 (RA10612)	\N
48	\N	\N	2A1-101 (Patriot)	\N
49	\N	\N	2A1-AC (Scholar Grad)	\N
50	\N	\N	2A1-AC (NULAB)	\N
51	\N	\N	2A1-AC (Indie Siyensya)	\N
52	\N	\N	2A1-AC (POSTER)	\N
53	\N	\N	2A2A-105A	\N
4	92-01	Strategic Planning and Coordination Activities in Science Education	2A1-AC (StratCom)	OD
8	02-20	Science and Mathematics Applications and Related Technologies (SMART)	2A1-AC (SMART)	SEID
9	04-22	Promotion of Innovative Science Education Resources (PISER)	2A1-AC (PISER)	SEID
10	03-22	\N	2A1-AC (Planning)	SEID
11	09-17	\N	2A1-AC (Tracer)	SEID
12	17-17	\N	2A1-AC (PUSH4Science)	SEID
54	\N	\N	2A1-AC (OD/ODD)	OD
55	\N	\N	2A1-AC (Dev. of Grade 3-6)	\N
\.


--
-- TOC entry 5002 (class 0 OID 24695)
-- Dependencies: 236
-- Data for Name: projectstbl2025; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectstbl2025 (prj_id, prj_title, prj_div, prj_fund) FROM stdin;
1	Human Resource Development Program (HRDP)	FAD	2A1-AC
2	Improvement of Science Education Institute Offices and Facilities	FAD	2A1-AC
3	SEI Procurement Management	FAD	2A1-AC
4	Human Resource Development Program (HRDP)	STSD	2A1-106
5	Filipino Patriot Scholars Project	STSD	2A1-101
\.


--
-- TOC entry 4999 (class 0 OID 24685)
-- Dependencies: 233
-- Data for Name: uacstbl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uacstbl (uacs_id, uacs_title, uacs_code) FROM stdin;
1	Semi-Expendable Office Equipment	10405020-00
2	Semi-Expendable Information and Communications Technology Equipment	10405030-00
3	Semi-Expendable Communications Equipment	10405070-00
4	Semi-Expendable Other Equipment	10405990-00
5	Semi-Expendable Furniture and Fixtures	10406010-00
6	Semi-Expendable Books	10406020-00
7	Other Land Improvements	10602990-00
8	Accumulated Depreciation - Other Land Improvements	10602991-00
9	Office Equipment	10605020-00
10	Accumulated Depreciation - Office Equipment	10605021-00
11	Information and Communication Technology  Equipment 	10605030-00
12	Accumulated Depreciation - Information and Communication Technology  Equipment 	10605031-00
13	Communication Equipment	10605070-00
14	Accumulated Depreciation - Communication Equipment	10605071-00
15	Medical Equipment	10605110-00
16	Accumulated Depreciation - Medical Equipment	10605111-00
17	Technical and Scientific  Equipment 	10605140-00
18	Accumulated Depreciation - Technical and Scientific  Equipment	10605141-00
19	Other Equipment	10605990-00
20	Accumulated Depreciation - Other Equipment	10605991-00
21	Motor Vehicles	10606010-00
22	Accumulated Depreciation - Motor Vehicles	10606011-00
23	Furniture and Fixtures 	10607010-00
24	Accumulated Depreciation - Furniture and Fixtures	10607011-00
25	Books 	10607020-00
26	Accumulated Depreciation - Books	10607021-00
27	Other Property, Plant and Equipment	10699990-00
28	Accumulated Depreciation - Other Property, Plant and Equipment	10699991-00
29	Accounts Payable	20101010-00
30	Due to BIR	20201010-01
31	Due to GSIS	20201020-02
49	Scholarship Grants/Expenses	50202020-00
50	Office Supplies Expenses 	50203010-02
51	Medical, Dental and Laboratory Supplies Expenses	50203080-00
52	Fuel, Oil and Lubricants Expenses	50203090-00
53	Semi-Expendable Machinery and Equipment Expenses	50203210-00
54	Other Supplies and Materials Expenses	50203990-00
55	Water Expenses	50204010-00
57	Mobile Expenses	50205020-01
58	Extraordinary and Miscellaneous Expenses	50210030-00
59	Legal Services	50211010-00
61	Janitorial Services	50212020-00
62	Security Services	50212030-00
63	Other General Services - ICT Services	50212990-01
64	Repairs and Maintenance - Transportation Equipment  	50213060-01
65	Fidelity Bond Premiums 	50215020-00
66	Representation Expenses	50299030-00
67	Subscription Expenses	50299070-00
68	Other Maintenance and Operating Expenses  	50299990-00
69	Depreciation - Land Improvements	50501020-00
70	Depreciation - Machinery  and Equipment 	50501050-00
71	Depreciation - Transportation Equipment	50501060-00
72	Depreciation - Furniture, Fixtures and Books  	50501070-00
73	Depreciation - Other Property, Plant and Equipment	50501990-00
60	Other Professional Services	50211990-00
56	Postage and Courier Services 	50205010-00
32	Due to Pag-IBIG	20201030-03
33	Due to PhilHealth	20201040-05
34	Salaries and Wages - Regular	50101010-01
35	Personal Economic Relief Allowance (PERA)	50102010-01
36	Subsistence Allowance	50102050-02
37	Laundry  Allowance	50102060-03
38	Honoraria	50102100-00
39	Hazard Pay	50102110-01
41	Other Bonuses and Allowances	50102990-00
42	Retirement and Life Insurance Premiums	50103010-00
43	Pag-IBIG Contributions	50103020-01
44	PhilHealth Contributions	50103030-01
45	Employees Compensation Insurance Premiums	50103040-01
46	Traveling Expenses - Local	50201010-00
47	Traveling Expenses - Foreign	50201020-00
74	ICT Training Expenses	50202010-01
48	Training Expenses	50202010-02
75	ICT Office Supplies	50203010-01
77	Internet Subscription Expenses	50205030-00
78	Cable, Satellite, Telegraph and Radio Expenses	50205040-00
79	ICT Consultancy Services	50211030-01
80	Consultancy Services	50211030-02
81	Other General Services	50213000-99
82	Repairs and Maintenance - Building	50213040-01
83	Repairs and Maintenance - Office Equipment	50213050-02
84	Repairs and Maintenance - Furnitures and Fixtures	50213070-00
85	Advertising Expenses	50299010-00
86	Electricity Expenses	50204020-00
87	Gas/Heating Expenses	50204030-00
88	Representation Allowance (RA)	50102020-00
89	Transportation Allowance (TA)	50102030-01
90	Clothing/Uniform Allowance	50102040-01
91	Overtime Pay	50102130-01
92	Year-End Bonus	50102140-01
93	Cash Gift	50102150-01
94	Collective Negotiation Agreement (CNA)	50102990-11
95	Productivity Enhancement Bonus	50102990-12
96	Performance Based Bonus	50102990-14
97	Mid-Year Bonus	50102990-36
98	Anniversary Bonus	50102990-38
99	Terminal Leave Benefits	50104030-01
100	 	50215030-00
103	\N	50103010 (731)
102	\N	50103020 (732)
101	\N	50103030 (733)
104	\N	50103040 (734)
40	Longevity Pay	50102120-01
105	\N	50212990-99
76	Landline Expenses	50205020-02
106	\N	00000000-00
\.


--
-- TOC entry 4984 (class 0 OID 24578)
-- Dependencies: 218
-- Data for Name: usertbl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usertbl (user_id, username, user_pass, user_role, fname, userpost, userdiv) FROM stdin;
2	999	999	user	Test User	Test Position	FAD
1	122	122	admin	Vince Albuera	Project Technical Specialist I	FAD
\.


--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 222
-- Name: allotment_allot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.allotment_allot_id_seq', 1, true);


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 224
-- Name: division_div_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.division_div_id_seq', 1, false);


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 237
-- Name: libtbl2025_lib_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libtbl2025_lib_id_seq', 1, false);


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 226
-- Name: orsnum_tbl_orsnum_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orsnum_tbl_orsnum_id_seq', 1, false);


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 220
-- Name: orstbl2023_ors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orstbl2023_ors_id_seq', 2893, true);


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 239
-- Name: orstbl_libitems_orslib_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orstbl_libitems_orslib_id_seq', 1, false);


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 228
-- Name: payeedb_payeeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payeedb_payeeid_seq', 1, true);


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 230
-- Name: payeetbl_payeeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payeetbl_payeeid_seq', 1, true);


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 232
-- Name: projects_prj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_prj_id_seq', 41, true);


--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 235
-- Name: projectstbl2025_prj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projectstbl2025_prj_id_seq', 4, true);


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 234
-- Name: uacstbl_uacs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.uacstbl_uacs_id_seq', 2, true);


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 217
-- Name: usertbl_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usertbl_user_id_seq', 2, true);


--
-- TOC entry 4821 (class 2606 OID 24638)
-- Name: allotment allotment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.allotment
    ADD CONSTRAINT allotment_pkey PRIMARY KEY (allot_id);


--
-- TOC entry 4823 (class 2606 OID 24647)
-- Name: division division_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division
    ADD CONSTRAINT division_pkey PRIMARY KEY (div_id);


--
-- TOC entry 4835 (class 2606 OID 24711)
-- Name: libtbl2025 libtbl2025_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtbl2025
    ADD CONSTRAINT libtbl2025_pkey PRIMARY KEY (lib_id);


--
-- TOC entry 4819 (class 2606 OID 24629)
-- Name: orstbl2023 orstbl2023_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orstbl2023
    ADD CONSTRAINT orstbl2023_pkey PRIMARY KEY (ors_id);


--
-- TOC entry 4837 (class 2606 OID 24718)
-- Name: orstbl_libitems orstbl_libitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orstbl_libitems
    ADD CONSTRAINT orstbl_libitems_pkey PRIMARY KEY (orslib_id);


--
-- TOC entry 4825 (class 2606 OID 24663)
-- Name: payeedb payeedb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeedb
    ADD CONSTRAINT payeedb_pkey PRIMARY KEY (payeeid);


--
-- TOC entry 4827 (class 2606 OID 24675)
-- Name: payeetbl payeetbl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payeetbl
    ADD CONSTRAINT payeetbl_pkey PRIMARY KEY (payeeid);


--
-- TOC entry 4829 (class 2606 OID 24684)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (prj_id);


--
-- TOC entry 4833 (class 2606 OID 24702)
-- Name: projectstbl2025 projectstbl2025_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectstbl2025
    ADD CONSTRAINT projectstbl2025_pkey PRIMARY KEY (prj_id);


--
-- TOC entry 4831 (class 2606 OID 24693)
-- Name: uacstbl uacstbl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uacstbl
    ADD CONSTRAINT uacstbl_pkey PRIMARY KEY (uacs_id);


--
-- TOC entry 4817 (class 2606 OID 24585)
-- Name: usertbl usertbl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertbl
    ADD CONSTRAINT usertbl_pkey PRIMARY KEY (user_id);


-- Completed on 2025-05-23 16:36:04

--
-- PostgreSQL database dump complete
--

