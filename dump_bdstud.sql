--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: discipline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discipline (
    id_discipline integer NOT NULL,
    name_disc text,
    "time" integer
);


ALTER TABLE public.discipline OWNER TO postgres;

--
-- Name: discipline_id_discipline_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.discipline ALTER COLUMN id_discipline ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.discipline_id_discipline_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: estimation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estimation (
    student_id integer,
    discipline_id integer,
    estimate integer
);


ALTER TABLE public.estimation OWNER TO postgres;

--
-- Name: faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty (
    id_faculty integer NOT NULL,
    name_faculty text,
    dekan text
);


ALTER TABLE public.faculty OWNER TO postgres;

--
-- Name: faculty_id_faculty_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.faculty ALTER COLUMN id_faculty ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.faculty_id_faculty_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: groupp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groupp (
    id_group integer NOT NULL,
    num_group text,
    faculty_id integer
);


ALTER TABLE public.groupp OWNER TO postgres;

--
-- Name: groupp_id_group_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.groupp ALTER COLUMN id_group ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.groupp_id_group_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id_zachet integer NOT NULL,
    fname text,
    name text,
    lname text,
    score integer,
    group_id integer,
    birthday date
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_id_zachet_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.students ALTER COLUMN id_zachet ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.students_id_zachet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: discipline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discipline (id_discipline, name_disc, "time") FROM stdin;
1	TRZBD	48
2	Filosofiya	32
3	Menedzhment	36
4	fiz-ra	32
5	POPD	48
6	English	36
7	Ychebnaya practica PM.11	72
8	Ychebnaya practica PM.04	108
9	okvks	36
10	VPKS	48
\.


--
-- Data for Name: estimation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estimation (student_id, discipline_id, estimate) FROM stdin;
1	2	60
2	2	50
35	4	100
36	6	70
37	2	60
38	7	46
35	4	35
36	6	70
37	2	80
39	9	80
\.


--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty (id_faculty, name_faculty, dekan) FROM stdin;
1	institut biologii i biotechnologii	Avilov
2	institut geografii	Avilov
3	institut gumanitarnih nayk	Ivanov
4	institut matematiki i informatiki	Murtigesheva
5	institut istorii	Nazarov
6	MIAMIS	Shvakov
7	Yridicheskyi institut	Anichkin
8	institut himii	Mikushina
9	institut cifrofih techologiy	Makarov
10	institut matematiki	Makarov
\.


--
-- Data for Name: groupp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groupp (id_group, num_group, faculty_id) FROM stdin;
1	205	1
2	206	2
3	245	3
4	246	3
5	104	4
6	105	5
7	106	6
8	107	7
9	108	8
10	100	9
11	100	10
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id_zachet, fname, name, lname, score, group_id, birthday) FROM stdin;
1	Shelepov	Anton	Valentinovich	180	2	2003-01-21
2	Ivanov	Ivan	Ivanovich	165	3	2002-06-11
35	Murtigesheva	Darya	Andreevna	200	2	2003-05-12
36	Korolev	Danil	Nilolaevich	200	3	2003-01-23
37	Konovalov	Oleg	Nilolaevich	210	5	2003-01-22
38	Gorbunov	Andrey	Andreevich	150	6	2003-08-22
39	Kislykov	Oleg	Andreevich	130	7	2003-08-22
40	Kislykov	Oleg	Andreevich	130	7	2003-08-22
41	Albegova	Alina	Anatoliyvna	166	9	2001-02-21
43	Kononova	Alina	Anatoliyvna	166	10	2003-05-24
\.


--
-- Name: discipline_id_discipline_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discipline_id_discipline_seq', 10, true);


--
-- Name: faculty_id_faculty_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faculty_id_faculty_seq', 10, true);


--
-- Name: groupp_id_group_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groupp_id_group_seq', 11, true);


--
-- Name: students_id_zachet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_zachet_seq', 43, true);


--
-- Name: discipline discipline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discipline
    ADD CONSTRAINT discipline_pkey PRIMARY KEY (id_discipline);


--
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (id_faculty);


--
-- Name: groupp groupp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groupp
    ADD CONSTRAINT groupp_pkey PRIMARY KEY (id_group);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id_zachet);


--
-- Name: estimation fk_estim_discip; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estimation
    ADD CONSTRAINT fk_estim_discip FOREIGN KEY (discipline_id) REFERENCES public.discipline(id_discipline);


--
-- Name: estimation fk_estim_stud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estimation
    ADD CONSTRAINT fk_estim_stud FOREIGN KEY (student_id) REFERENCES public.students(id_zachet);


--
-- Name: groupp fk_group_faculty; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groupp
    ADD CONSTRAINT fk_group_faculty FOREIGN KEY (faculty_id) REFERENCES public.faculty(id_faculty);


--
-- Name: students fk_stud_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_stud_group FOREIGN KEY (group_id) REFERENCES public.groupp(id_group);


--
-- PostgreSQL database dump complete
--

