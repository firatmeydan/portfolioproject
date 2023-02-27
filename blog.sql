--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO postgres;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: exercises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exercises (
    id integer NOT NULL,
    name text NOT NULL,
    course_id smallint
);


ALTER TABLE public.exercises OWNER TO postgres;

--
-- Name: exercises_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exercises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exercises_id_seq OWNER TO postgres;

--
-- Name: exercises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exercises_id_seq OWNED BY public.exercises.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    account_id integer
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students_courses (
    student_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.students_courses OWNER TO postgres;

--
-- Name: students_exercises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students_exercises (
    student_id integer,
    exercise_id integer
);


ALTER TABLE public.students_exercises OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: user_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts (
    id integer NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    student_id integer
);


ALTER TABLE public.user_accounts OWNER TO postgres;

--
-- Name: user_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_accounts_id_seq OWNER TO postgres;

--
-- Name: user_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_accounts_id_seq OWNED BY public.user_accounts.id;


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: exercises id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercises ALTER COLUMN id SET DEFAULT nextval('public.exercises_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: user_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts ALTER COLUMN id SET DEFAULT nextval('public.user_accounts_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (id, name) FROM stdin;
1	qui
2	quia
3	quibusdam
4	rerum
5	temporibus
6	nulla
7	excepturi
8	dolor
9	modi
10	inventore
11	perferendis
12	consequatur
13	unde
14	quos
15	dolorum
16	facere
17	dolores
18	ut
19	distinctio
20	et
21	possimus
22	velit
23	nihil
24	saepe
25	fuga
26	omnis
27	voluptas
28	alias
29	sint
30	incidunt
31	consequuntur
32	quo
33	repudiandae
34	deserunt
35	sit
36	eligendi
37	aut
38	iste
39	cumque
40	illo
41	vel
42	optio
43	nesciunt
44	voluptate
45	facilis
46	porro
47	ex
48	aperiam
49	molestias
50	molestiae
\.


--
-- Data for Name: exercises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exercises (id, name, course_id) FROM stdin;
1	illo	1
2	nihil	2
3	impedit	3
4	sed	4
5	nam	5
6	molestiae	6
7	molestias	7
8	libero	8
9	dolor	9
10	commodi	10
11	consectetur	11
12	repellendus	12
13	atque	13
14	officiis	14
15	accusantium	15
16	aspernatur	16
17	at	17
18	blanditiis	18
19	id	19
20	architecto	20
21	quasi	21
22	quia	22
23	placeat	23
24	non	24
25	dolores	25
26	vero	26
27	sequi	27
28	saepe	28
29	dolorem	29
30	et	30
31	eum	31
32	tempora	32
33	nulla	33
34	vitae	34
35	voluptatum	35
36	ea	36
37	tempore	37
38	labore	38
39	qui	39
40	nobis	40
41	quisquam	41
42	cumque	42
43	quaerat	43
44	corporis	44
45	odio	45
46	mollitia	46
47	esse	47
48	voluptates	48
49	necessitatibus	49
50	laudantium	50
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, first_name, last_name, account_id) FROM stdin;
1	Chaya	Simonis	\N
2	Lorine	Bailey	\N
3	Gilberto	Schroeder	\N
4	Hanna	Batz	\N
5	Joey	Glover	\N
6	Alexander	Medhurst	\N
7	Jeffery	Baumbach	\N
8	Torrance	Ziemann	\N
9	Missouri	White	\N
10	Arnold	Waters	\N
11	Zachariah	Keeling	\N
12	Katrina	Koelpin	\N
13	Kiara	Wolf	\N
14	Justice	Jakubowski	\N
15	Darrin	Ruecker	\N
16	Kyleigh	Jones	\N
17	Erika	Turcotte	\N
18	Ransom	Russel	\N
19	Benton	Marks	\N
20	Kenna	Flatley	\N
21	Dawson	Frami	\N
22	Emely	Ondricka	\N
23	Rudolph	Kreiger	\N
24	Darian	Gerhold	\N
25	Deon	Fay	\N
26	Stephany	Jacobs	\N
27	Antonia	Swift	\N
28	Leanna	Cole	\N
29	Laila	Lindgren	\N
30	Werner	Osinski	\N
31	Sylvia	Fritsch	\N
32	Cora	Bruen	\N
33	Lester	Von	\N
34	Antwan	Kassulke	\N
35	Amalia	Veum	\N
36	Addie	Schimmel	\N
37	Shanny	Bayer	\N
38	Phoebe	Bogisich	\N
39	Laisha	Lakin	\N
40	Federico	Schowalter	\N
41	Fabian	Green	\N
42	Tristian	Jerde	\N
43	Kennedy	Rice	\N
44	Javier	Kilback	\N
45	Trent	Bartell	\N
46	Aglae	Schulist	\N
47	Boyd	Larson	\N
48	Ora	Prohaska	\N
49	Gordon	Erdman	\N
50	Alivia	Champlin	\N
\.


--
-- Data for Name: students_courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_courses (student_id, course_id) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
33	33
34	34
35	35
36	36
37	37
38	38
39	39
40	40
41	41
42	42
43	43
44	44
45	45
46	46
47	47
48	48
49	49
50	50
\.


--
-- Data for Name: students_exercises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_exercises (student_id, exercise_id) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
33	33
34	34
35	35
36	36
37	37
38	38
39	39
40	40
41	41
42	42
43	43
44	44
45	45
46	46
47	47
48	48
49	49
50	50
\.


--
-- Data for Name: user_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts (id, username, password, student_id) FROM stdin;
1	keven.corwin        	4ccbe959b4719148b5a6	1
2	vlarkin             	befb4f3dfd698c53d808	2
3	lwyman              	6163eb06fb469e077cfa	3
4	mccullough.henderson	d304c107d507ee60177e	4
5	lesley.hansen       	fc7ae38e7fe95b02d49c	5
6	marvin.katelin      	69d10afecffcb6ede05a	6
7	aarmstrong          	5c600f906d1ca1ad8c51	7
8	owen90              	eb857423de3c646381a2	8
9	clemmie10           	1bdb909fa900bcef7b17	9
10	oroob               	81102415f62d554ef7b1	10
11	forn                	e9f075f1d192ae37c6dc	11
12	minerva06           	e9c8d0e8c7d4f22f1bbf	12
13	raymond77           	830d5c30bde232c3986e	13
14	korbin55            	59b78e7bbf22bc7b52bc	14
15	heaney.marcelino    	248010f187424a265f5b	15
16	destiny98           	36ebfe22ac8994fb3f27	16
17	fred.aufderhar      	cfd638fb921947ff04dd	17
18	steve21             	3a80f2d0d7ca5990dad6	18
19	sconroy             	42a6598cdfa71cc5411e	19
20	johnathon46         	22aa9d46e959a6b85f6f	20
21	jenkins.krista      	b1f3444b7fba8ca380a1	21
22	henri36             	2258a0a8e013408a73a2	22
23	mosciski.lennie     	d21bdd3a9c09d7c9f658	23
24	collin.yost         	f37e3f460e5e2c531ef1	24
25	bins.leanna         	2b0756699f65a8aba8e5	25
26	freida.renner       	152f15668e820810ac24	26
27	skshlerin           	ed4c15ecbba5cd3657ec	27
28	terry.maybell       	a7f9b11dc6e1645cd738	28
29	grimes.maverick     	5e8f8bd659633a5e3daf	29
30	ebert.ross          	f12347118419ddf811b7	30
31	aeichmann           	5b830ed83f95611cd05b	31
32	letha22             	cd16ecd3e262bf964921	32
33	marcelina22         	1ebd3d5ff203e0fab904	33
34	lexie30             	c1a83e546552cbebd848	34
35	corine83            	dc4e505e20c560b09c2e	35
36	strosin.mozelle     	d53900f35249e5431b5e	36
37	lyla99              	cd04e6de08a8d4b389d5	37
38	zcummings           	002bb37687aad5c33687	38
39	gstark              	429cd3a8aa165e961a37	39
40	ferne97             	030d5fd669abc9bb6e63	40
41	agnes.fisher        	0287081ce553f36171c1	41
42	oreilly.evangeline  	2a4b735c1233be6eb204	42
43	dorothy.leffler     	a05fc41bf9b91f6f3f03	43
44	miles.powlowski     	3ae3f72ebf5a81709a51	44
45	egoldner            	e6f743b72f89d1db9fdd	45
46	hudson.kolby        	e68cf4aadb46938f0753	46
47	klein.kenyon        	6e1fcdffae166e1d2087	47
48	vivien18            	ef04f057fa9d3a90d631	48
49	brayan.metz         	052640891d719e26e6e0	49
50	senger.kari         	c2d5f6bf62f9b5b71a78	50
\.


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_id_seq', 1, false);


--
-- Name: exercises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exercises_id_seq', 1, false);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 1, false);


--
-- Name: user_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_accounts_id_seq', 1, false);


--
-- Name: courses courses_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_name_key UNIQUE (name);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: exercises exercises_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercises
    ADD CONSTRAINT exercises_name_key UNIQUE (name);


--
-- Name: exercises exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


--
-- Name: students_courses students_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_courses
    ADD CONSTRAINT students_courses_pkey PRIMARY KEY (student_id, course_id);


--
-- Name: students students_first_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_first_name_key UNIQUE (first_name);


--
-- Name: students students_last_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_last_name_key UNIQUE (last_name);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: user_accounts user_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_accounts_pkey PRIMARY KEY (id);


--
-- Name: user_accounts user_accounts_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_accounts_username_key UNIQUE (username);


--
-- Name: exercises exercises_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercises
    ADD CONSTRAINT exercises_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);


--
-- Name: students students_account_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_account_id_fk FOREIGN KEY (account_id) REFERENCES public.user_accounts(id);


--
-- Name: students_courses students_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_courses
    ADD CONSTRAINT students_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);


--
-- Name: students_courses students_courses_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_courses
    ADD CONSTRAINT students_courses_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: students_exercises students_exercises_exercise_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_exercises
    ADD CONSTRAINT students_exercises_exercise_id_fkey FOREIGN KEY (exercise_id) REFERENCES public.exercises(id);


--
-- Name: students_exercises students_exercises_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_exercises
    ADD CONSTRAINT students_exercises_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: user_accounts user_accounts_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_accounts_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- PostgreSQL database dump complete
--

