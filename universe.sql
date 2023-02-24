--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    suns_amount integer NOT NULL,
    year_discovered integer,
    type text,
    age numeric,
    has_life boolean,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_1_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_1_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_1_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_1_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_1_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovered integer,
    diameter integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_1_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_1_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_1_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_1_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_1_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    who_discovered text,
    traslation_in_days integer,
    rotation_in_days integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_1_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_1_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_1_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_1_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_1_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovered integer,
    temperature_kelvin integer,
    type text,
    part_of_constellation boolean,
    visible_on_earth boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_1_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_1_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_1_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_1_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_1_star_id_seq OWNED BY public.star.star_id;


--
-- Name: stars_from_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stars_from_planet (
    star_id integer NOT NULL,
    distance_km integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    stars_from_planet_id integer NOT NULL
);


ALTER TABLE public.stars_from_planet OWNER TO freecodecamp;

--
-- Name: stars_from_planet_stars_from_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_from_planet_stars_from_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_from_planet_stars_from_planet_id_seq OWNER TO freecodecamp;

--
-- Name: stars_from_planet_stars_from_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_from_planet_stars_from_planet_id_seq OWNED BY public.stars_from_planet.stars_from_planet_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_1_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_1_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_1_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_1_star_id_seq'::regclass);


--
-- Name: stars_from_planet stars_from_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars_from_planet ALTER COLUMN stars_from_planet_id SET DEFAULT nextval('public.stars_from_planet_stars_from_planet_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, suns_amount, year_discovered, type, age, has_life, has_black_hole) FROM stdin;
1	Vía lactea	1	1610	espiral	13000000	t	t
2	Alcioneo	3	2022	irregular	14560000	t	f
3	Del ojo negro	3	2022	espiral	11560000	f	f
4	Andromeda	1	961	espiral	13654000	t	t
5	Gran nube de magallanes	1	1960	irregular	11654000	f	t
6	Enana de formax	1	1990	eliptica	10054000	t	f
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, year_discovered, diameter, planet_id) FROM stdin;
1	Luna	0	3474	3
2	Gabimede	2003	5282	5
3	Titan	2005	5150	6
4	Callisto	2008	4821	5
5	Io	2009	3643	5
6	Triton	2010	2706	6
7	Titania	2011	1578	7
8	Rhea	2011	1528	6
9	Oberon	2012	1523	7
10	Iapeton	2013	1423	6
11	Umbriel	2015	1169	7
12	Dione	2017	1118	6
13	Thetys	2017	1068	6
14	Ariel	2018	1134	9
15	Whatever	2018	1587	15
16	Tredsa	2019	2354	14
17	Ghisra	2021	1222	13
18	Khilter	2022	3211	10
19	Vhulki	2022	1999	9
20	Jhilvaq	2023	2412	8
21	Fresdil	2023	3111	12
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, who_discovered, traslation_in_days, rotation_in_days, star_id) FROM stdin;
1	Merscurio	Alberto Piñera	88	58	1
2	Venus	José Piñeiro	224	243	1
3	Tierra	José Aldo	365	1	1
4	Marte	José Manuel Astorga	687	24	1
5	Jupiter	José Patricio	3942	1	1
6	Neptuno	Patricio Fuentes	10747	1	1
7	Urano	Luciano Aued	30660	1	1
8	Santer	Diego SANTOS	92	18	2
9	Walket	Diego Buonanotte	184	23	3
10	Tyjab	Cristopher Toselli	219	16	4
11	Gyoqaz	Andrés Aranda	237	24	6
12	Termiweh	Critobal Plaza	342	4	2
13	Yilte	Dave Sykes	107	31	5
14	Uyiwo	Santino Colón	460	41	6
15	Pugarf	Dave Batista	356	7	5
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, year_discovered, temperature_kelvin, type, part_of_constellation, visible_on_earth, galaxy_id) FROM stdin;
2	Sol	0	5776	GV-2	f	t	1
3	Rigel	1500	11000	B8-lab	t	t	1
4	Alpha	2024	11000	B8-lab	t	f	3
5	Betha	2021	10500	A-0	f	f	4
6	Procyon	2002	8500	AG-2	t	t	1
7	Achernar	2006	8500	AB-4	t	t	1
\.


--
-- Data for Name: stars_from_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.stars_from_planet (star_id, distance_km, planet_id, name, stars_from_planet_id) FROM stdin;
1	44353641	2	 keweno	1
1	1122343	1	florianopolis	2
1	357889875	3	asqr	3
7	45676543	4	fhrtare	4
\.


--
-- Name: galaxy_1_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_1_galaxy_id_seq', 6, true);


--
-- Name: moon_1_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_1_moon_id_seq', 21, true);


--
-- Name: planet_1_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_1_planet_id_seq', 15, true);


--
-- Name: star_1_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_1_star_id_seq', 7, true);


--
-- Name: stars_from_planet_stars_from_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_from_planet_stars_from_planet_id_seq', 4, true);


--
-- Name: galaxy galaxy_1_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_1_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_1_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_1_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_1_name_key UNIQUE (name);


--
-- Name: moon moon_1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_1_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_1_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_1_name_key UNIQUE (name);


--
-- Name: planet planet_1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_1_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_1_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_1_name_key UNIQUE (name);


--
-- Name: star star_1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_1_pkey PRIMARY KEY (star_id);


--
-- Name: stars_from_planet stars_from_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars_from_planet
    ADD CONSTRAINT stars_from_planet_name_key UNIQUE (name);


--
-- Name: stars_from_planet stars_from_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars_from_planet
    ADD CONSTRAINT stars_from_planet_pkey PRIMARY KEY (stars_from_planet_id);


--
-- Name: moon moon_1_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_1_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

