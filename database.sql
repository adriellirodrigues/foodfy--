--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE adriellirodrigues;
ALTER ROLE adriellirodrigues WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- PostgreSQL database dump complete
--

--
-- Database "db_easygym" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Name: db_easygym; Type: DATABASE; Schema: -; Owner: adriellirodrigues
--

CREATE DATABASE db_easygym WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE db_easygym OWNER TO adriellirodrigues;

\connect db_easygym

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
-- Name: instructors; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.instructors (
    id integer NOT NULL,
    avatar_url text,
    name text,
    birth timestamp without time zone,
    gender text,
    services text,
    created_at timestamp without time zone
);


ALTER TABLE public.instructors OWNER TO adriellirodrigues;

--
-- Name: instructors_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.instructors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructors_id_seq OWNER TO adriellirodrigues;

--
-- Name: instructors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.instructors_id_seq OWNED BY public.instructors.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.members (
    id integer NOT NULL,
    name text,
    avatar_url text,
    email text,
    gender text,
    birth timestamp without time zone,
    blood text,
    weight integer,
    height integer,
    instructor_id integer
);


ALTER TABLE public.members OWNER TO adriellirodrigues;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.members_id_seq OWNER TO adriellirodrigues;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;


--
-- Name: instructors id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.instructors ALTER COLUMN id SET DEFAULT nextval('public.instructors_id_seq'::regclass);


--
-- Name: members id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);


--
-- Data for Name: instructors; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.instructors (id, avatar_url, name, birth, gender, services, created_at) FROM stdin;
1	https://source.unsplash.com/collections/8832350/teacher	Drizete up	1994-02-14 00:00:00	female	Tech	2021-03-12 00:00:00
2	data:image/jpeg;base64,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	Drizinha Tuda	1994-02-14 00:00:00	female	Tech, TI	2021-03-13 00:00:00
3	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrYSS5xpggEVwTK9ka3btJxeExPDVo_twa2g&usqp=CAU	Drizinha Tuda	1994-02-14 00:00:00	female	Tech, TI	2021-03-13 00:00:00
5	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Drizinha do Teste	1994-03-12 00:00:00	female	TI, Crossfit, Design	2021-03-16 00:00:00
7	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues	2000-02-12 00:00:00	male	TI, Crossfit, Design	2021-03-18 00:00:00
8	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli da Silva	2000-02-12 00:00:00	female	TI, Crossfit, Design	2021-03-18 00:00:00
9	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Regina	1000-02-12 00:00:00	female	TI, Crossfit	2021-03-18 00:00:00
10	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Damares	2000-04-12 00:00:00	female	Weigth lifiting	2021-03-18 00:00:00
11	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues	2022-03-03 00:00:00	female	Crossfit	2022-03-18 00:00:00
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) FROM stdin;
4	Adrielli Rodrigues	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	adriellirodrigues@hotmail.com	female	5677-04-23 00:00:00	AB1	1223	432	1
6	Evandro Mura - Campanha 2020	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	contato@evandromura.com.br	male	1898-02-11 00:00:00	AB-	800	200	5
7	Adrielli Rodrigues da Silva	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	adriellirodrigues@hotmail.com	female	1994-04-14 00:00:00	O1	66	171	7
8	Adrielli Drizinha	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	adriellirodrigues@hotmail.com	female	1994-02-14 00:00:00	O1	66	171	8
5	Dri	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	adriellirodrigues@hotmail.com	female	1995-02-12 00:00:00	B1	66	161	7
\.


--
-- Name: instructors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.instructors_id_seq', 11, true);


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.members_id_seq', 8, true);


--
-- Name: instructors instructors_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "db_foodfy" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Name: db_foodfy; Type: DATABASE; Schema: -; Owner: adriellirodrigues
--

CREATE DATABASE db_foodfy WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE db_foodfy OWNER TO adriellirodrigues;

\connect db_foodfy

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
-- Name: chefs; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.chefs (
    id integer NOT NULL,
    name text,
    avatar_url text,
    created_at timestamp without time zone
);


ALTER TABLE public.chefs OWNER TO adriellirodrigues;

--
-- Name: chefs_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.chefs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chefs_id_seq OWNER TO adriellirodrigues;

--
-- Name: chefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.chefs_id_seq OWNED BY public.chefs.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.recipes (
    id integer NOT NULL,
    chef_id integer,
    image text,
    title text,
    ingredients text[],
    instructions text[],
    information text,
    created_at timestamp without time zone
);


ALTER TABLE public.recipes OWNER TO adriellirodrigues;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.recipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO adriellirodrigues;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: chefs id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.chefs ALTER COLUMN id SET DEFAULT nextval('public.chefs_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Data for Name: chefs; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.chefs (id, name, avatar_url, created_at) FROM stdin;
6	Thenjiwe Msutu	https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80	2022-03-22 00:00:00
7	Uzoma Buchi	https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80	2022-03-22 00:00:00
10	Marysa Labrone	https://images.unsplash.com/photo-1627644873424-28e595d68e64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80	2022-03-22 00:00:00
4	Mok Kwang	https://images.unsplash.com/photo-1612299320930-31e3506614df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80	2022-03-22 00:00:00
9	Filipa Gaspar	https://images.unsplash.com/photo-1563132337-f159f484226c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80	2022-03-22 00:00:00
5	Kendasha Wood	https://images.unsplash.com/photo-1506277886164-e25aa3f4ef7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80	2022-03-22 00:00:00
8	Júlia Kinoto	https://images.unsplash.com/photo-1521510895919-46920266ddb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80	2022-03-22 00:00:00
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.recipes (id, chef_id, image, title, ingredients, instructions, information, created_at) FROM stdin;
20	6	https://images.unsplash.com/photo-1571162437205-8889ff2fee26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80	Uzumachi	{"1kg Buffalo wings",asdadssad,SAAAAA,xablau}	{"Frite o bife","asse o bifessss",dasdsadasdasdsa,SAAA}	dsadasdassdadsa	2022-03-28 00:00:00
25	5	https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4130102.jpg	Feijoada de Domingo (Sunday Bean Stew)	{"8 quarts water, divided","2 pounds dried black beans, rinsed"}	{"Combine 6 quarts water, black beans, bay leaves, salt, and pepper in a large saucepan. Bring to boil; simmer for 50 minutes.","Bring remaining 2 quarts water to boil in a large saucepan. Stir in dried beef, pork ribs, and pig's feet; simmer until flavors combine, about 25 minutes. Add smoked sausage, spicy sausage, large bacon pieces, pork belly, pig's ear, and pig's tails; simmer until meat mixture is softened, about 25 minutes."}		2022-03-31 00:00:00
9	4	https://images.unsplash.com/photo-1571162437205-8889ff2fee26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80	Testoila	{"01 kg feijao","02 ovos","03 copos de leite","01 bife"}	{asdasdas}		2022-03-20 00:00:00
19	9	https://images.unsplash.com/photo-1571162437205-8889ff2fee26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80	Paozinho	{pao,"01 baguette"}	{"asse tudo","Combine smoked paprika, salt, pepper, onion powder, garlic, and cayenne in a small bowl."}	ssadsadad	2022-03-25 00:00:00
28	10	https://images.unsplash.com/photo-1571162437205-8889ff2fee26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80	BLABLA	{"01 kg feijão","1kg Buffalo wings",bife}	{"Frite o bife","asse o bife",blablalbal}		2022-04-05 00:00:00
21	6	https://images.unsplash.com/photo-1571162437205-8889ff2fee26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80	Uzumachi	{"1kg Buffalo wings"}	{"Frite o bife","asse o bife"}		2022-03-28 00:00:00
22	10	https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F-0001%2F11%2F30%2F1646101852Grilled20Pork20Chops20220with20Smoked20Paprika20Rub.jpeg	Grilled Pork Chops with Smoked Paprika Rub	{"6 (5 ounce) boneless pork loin chops, cut 1-inch thick","avocado cooking oil spray"}	{"Combine smoked paprika, salt, pepper, onion powder, garlic, and cayenne in a small bowl","Pat chops dry with a paper towel and evenly distribute dry ingredient mixture on front and back of each chop. With fingertips, lightly rub dry ingredient mixture into the chops on both sides."}	To avoid staining fingertips with the smoked paprika, use food service quality disposable gloves to apply the rub to the chops.	2022-03-31 00:00:00
23	6	https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F-0001%2F11%2F30%2F9443782-2000.jpg	Creamy Dill Chicken and Mushrooms	{"1 pound skinless, boneless chicken thighs, cut into 1-inch pieces","salt and freshly ground black pepper to taste"}	{"Season chicken with salt and pepper.","Heat olive oil in a large skillet over medium-high heat. Add chicken and cook for 5 minutes.  \\",         \\"Reduce heat to medium and add onion; cook until translucent and soft, about 3 minutes. Add mushrooms and cook, stirring occasionally, for 4 to 5 minutes. Stir in garlic and sauté until fragrant, about 30 seconds."}	I use Fage® Total 2% yogurt.If you don't have fresh dill, you can use dried dill, just don't use as much, since it's really concentrated. A fresh to dry ratio is usually 3:1.	2022-03-31 00:00:00
24	10	https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5679005.jpg	Classic Mac and Cheese	{"1 (16 ounce) package elbow macaroni","4 tablespoons butter"}	{"Preheat oven to 350 degrees F."}		2022-03-31 00:00:00
26	7	https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8947617.jpg&w=595&h=595&c=sc&poi=face&q=60	Irish Cream Chocolate Cheesecake	{"1 ½ cups chocolate cookie crumbs","⅓ cup confectioners' sugar","⅓ cup unsweetened cocoa powder","¼ cup butter","3 (8 ounce) packages cream cheese, softened","1 ¼ cups white sugar","¼ cup unsweetened cocoa powder","3 tablespoons all-purpose flour","3 eggs","¼ cup Irish cream liqueur","½ cup sour cream"}	{"Preheat oven to 350 degrees F (175 degrees C). In a large bowl, mix together the cookie crumbs, confectioners' sugar and 1/3 cup cocoa. Add melted butter and stir until well mixed. Pat into the bottom of a 9 inch springform pan. Bake in preheated oven for 10 minutes; set aside. Increase oven temperature to 450 degrees F (230 degrees C).","n a large bowl, combine cream cheese, white sugar, 1/4 cup cocoa and flour. Beat at medium speed until well blended and smooth. Add eggs one at a time, mixing well after each addition. Blend in the sour cream and Irish cream liqueur; mixing on low speed. Pour filling over baked crust.","Bake at 450 degrees F (230 degrees C) for 10 minutes. Reduce oven temperature to 250 degrees F (120 degrees C), and continue baking for 60 minutes.","With a knife, loosen cake from rim of pan. Let cool, then remove the rim of pan. Chill before serving. If your cake cracks, a helpful tip is to dampen a spatula and smooth the top, then sprinkle with some chocolate wafer crumbs."}		2022-03-31 00:00:00
27	6	https://images.unsplash.com/photo-1571162437205-8889ff2fee26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80	teste	{bla,"1kg Buffalo wings","1 Buffaloasd"}	{"Frite o bife"}		2022-04-04 00:00:00
\.


--
-- Name: chefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.chefs_id_seq', 10, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.recipes_id_seq', 28, true);


--
-- Name: chefs chefs_pkey1; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.chefs
    ADD CONSTRAINT chefs_pkey1 PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "db_launchstore" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Name: db_launchstore; Type: DATABASE; Schema: -; Owner: adriellirodrigues
--

CREATE DATABASE db_launchstore WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE db_launchstore OWNER TO adriellirodrigues;

\connect db_launchstore

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
-- Name: categories; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.categories OWNER TO adriellirodrigues;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO adriellirodrigues;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name text,
    path text NOT NULL,
    product_id integer
);


ALTER TABLE public.files OWNER TO adriellirodrigues;

--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO adriellirodrigues;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.products (
    id integer NOT NULL,
    category_id integer,
    user_id integer,
    name text NOT NULL,
    description text NOT NULL,
    old_price integer,
    price integer NOT NULL,
    quantity integer DEFAULT 0,
    status integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.products OWNER TO adriellirodrigues;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO adriellirodrigues;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.categories (id, name) FROM stdin;
1	Eletronics
2	Food
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.files (id, name, path, product_id) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.products (id, category_id, user_id, name, description, old_price, price, quantity, status, created_at, updated_at) FROM stdin;
10	2	1	fifi	sadads                 \r\n                	\N	12	1	\N	2022-04-06 21:28:18.898854	2022-04-06 21:28:18.898854
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.categories_id_seq', 2, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.products_id_seq', 13, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files files_product_id_key; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_product_id_key UNIQUE (product_id);


--
-- Name: products products_category_id_key; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_key UNIQUE (category_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products products_user_id_key; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_user_id_key UNIQUE (user_id);


--
-- Name: files files_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "db_school" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Name: db_school; Type: DATABASE; Schema: -; Owner: adriellirodrigues
--

CREATE DATABASE db_school WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE db_school OWNER TO adriellirodrigues;

\connect db_school

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
-- Name: students; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.students (
    id integer NOT NULL,
    avatar_url text,
    student text,
    email text,
    birth timestamp without time zone,
    school_year text,
    course_load integer,
    teacher_id integer
);


ALTER TABLE public.students OWNER TO adriellirodrigues;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO adriellirodrigues;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: adriellirodrigues
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    avatar_url text NOT NULL,
    teacher text NOT NULL,
    birth timestamp without time zone NOT NULL,
    education_level text NOT NULL,
    class_type text NOT NULL,
    attendance text NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.teachers OWNER TO adriellirodrigues;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: adriellirodrigues
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_id_seq OWNER TO adriellirodrigues;

--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adriellirodrigues
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.students (id, avatar_url, student, email, birth, school_year, course_load, teacher_id) FROM stdin;
15	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Testando Fulano	12@tes.com	2001-09-12 00:00:00	5	22	\N
19	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Testào Brabo	sfsd@om.br	0876-09-12 00:00:00	8EF	2222	\N
17	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Picole Alves	12Com@com.com	8799-09-12 00:00:00	9	222	\N
20	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Petty Covid	sdas@com.br	8900-07-12 00:00:00	6EF	222	\N
21	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Blázom Master	matter@com.cm	0876-09-12 00:00:00	3EM	222	\N
14	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Teste	teste@teste.com	1999-02-12 00:00:00	7	290	4
16	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva da Silva Mendes	21@coikmemc.com	9029-08-07 00:00:00	9EF	52	4
18	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Xablau Nunes	cla@com.br	0789-06-12 00:00:00	6EF	21	10
22	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Cleubis Revilton	cleubisrev@hotmail.com	2019-09-12 00:00:00	5EF	22	\N
23	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Testào Brabo	sfsd@om.br	1999-02-14 00:00:00	8EF	2222	4
24	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Testào Brabo	sfsd@om.br	1999-02-14 00:00:00	8EF	2222	12
25	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Testào Brabo	sfsd@om.br	1999-02-14 00:00:00	8EF	2222	12
26	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva da Silva Mendes	21@coikmemc.com	9029-08-07 00:00:00	9EF	52	12
27	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Testão Lopes	sos.saude.santafe@gmail.com	1999-09-19 00:00:00	9EF	22	4
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: adriellirodrigues
--

COPY public.teachers (id, avatar_url, teacher, birth, education_level, class_type, attendance, created_at) FROM stdin;
6	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	8900-07-06 00:00:00	highschool	online	Frontend Development, SQL, IS, teste	2021-03-13 00:00:00
7	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	8900-07-06 00:00:00	highschool	online	Frontend Development, SQL, IS, teste	2021-03-13 00:00:00
9	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	9874-03-12 00:00:00	bachelor	online	Frontend Development, SQL	2021-03-13 00:00:00
11	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	1994-02-14 00:00:00	master	online	Frontend Development, SQL, IS	2021-03-18 00:00:00
15	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli	2022-03-02 00:00:00	bachelor	online	Direito Constitucional	2022-03-14 00:00:00
16	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	2022-03-17 00:00:00	master	classroom	Frontend Development, SQ	2022-03-14 00:00:00
17	https://s2.glbimg.com/HmN0xOvARGaDrz-3oS3tOSoNy5c=/0x0:811x454/695x389/s.glbimg.com/po/tt2/f/original/2016/03/03/google_fotos_usar.jpg	Adrielli Rodrigues da Silva	2022-03-10 00:00:00	highschool	online	Frontend Development, SQL	2022-03-14 00:00:00
18	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	2022-03-09 00:00:00	master	classroom	Frontend Development, SQL, IS, teste	2022-03-14 00:00:00
8	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	6544-02-12 00:00:00	bachelor	online	Frontend Development, SQL, IS, teste, test2	2021-03-13 00:00:00
10	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Adrielli Rodrigues da Silva	1998-03-12 00:00:00	master	online	Frontend Development, SQL, IS	2021-03-13 00:00:00
4	https://scontent.faru6-1.fna.fbcdn.net/v/t1.0-9/90345291_2673064289482107_2441308906249519104_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=g-vUWjT3T1EAX8SHexn&_nc_ht=scontent.faru6-1.fna&oh=092ad3e86b40d35f94353f5fadd2b9e5&oe=607A1B66	Milena Cristina	2000-12-02 00:00:00	master	online	Frontend Development, SQ	2021-03-13 00:00:00
14	https://images.unsplash.com/photo-1458312732998-763933ed4896?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60	Fla fly	1997-02-04 00:00:00	doctoral	online	Frontend Development, SQL	2022-03-14 00:00:00
\.


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.students_id_seq', 27, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adriellirodrigues
--

SELECT pg_catalog.setval('public.teachers_id_seq', 18, true);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: adriellirodrigues
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

