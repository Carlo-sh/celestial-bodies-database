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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
    constellation character varying(40),
    distance_in_parsec integer,
    size_in_light_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    dimensions numeric(5,4),
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: mountain; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mountain (
    mountain_id integer NOT NULL,
    name character varying(30) NOT NULL,
    explored boolean,
    height numeric(7,2),
    description text
);


ALTER TABLE public.mountain OWNER TO freecodecamp;

--
-- Name: mountains_mountain_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mountains_mountain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mountains_mountain_id_seq OWNER TO freecodecamp;

--
-- Name: mountains_mountain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mountains_mountain_id_seq OWNED BY public.mountain.mountain_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    class character varying(30),
    moon integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation character varying(40),
    distance_from_sun integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: mountain mountain_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mountain ALTER COLUMN mountain_id SET DEFAULT nextval('public.mountains_mountain_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 7935, 87400);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Andromeda', 765, 152000);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 'Canis Major', 7700, NULL);
INSERT INTO public.galaxy VALUES (4, 'Segue 1', 'Leo', 7500, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum II', 'Triangulum', 9780, NULL);
INSERT INTO public.galaxy VALUES (6, 'Reticulum II', 'Reticulum', 31600, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1.2412, true, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', 1.5483, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1.4762, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3.5233, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4.8922, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganimede', 3.7869, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 5.6734, true, 5);
INSERT INTO public.moon VALUES (8, 'Ersa', 1.5433, false, 5);
INSERT INTO public.moon VALUES (9, 'Imalia', 0.8992, true, 5);
INSERT INTO public.moon VALUES (10, 'Leda', 2.5829, true, 5);
INSERT INTO public.moon VALUES (11, 'Temisto', 0.7734, false, 5);
INSERT INTO public.moon VALUES (12, 'Titanus', 1.0023, true, 6);
INSERT INTO public.moon VALUES (13, 'Febe', 1.8933, true, 6);
INSERT INTO public.moon VALUES (14, 'Teti', 0.5424, false, 6);
INSERT INTO public.moon VALUES (15, 'Mimas', 0.2254, false, 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 3.9993, true, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 1.0003, true, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 1.3465, false, 7);
INSERT INTO public.moon VALUES (19, 'Ariel', 2.3253, false, 7);
INSERT INTO public.moon VALUES (20, 'Proteus', 5.0984, false, 8);


--
-- Data for Name: mountain; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mountain VALUES (1, 'Everest', true, 88498.55, 'Highest mountain on planet earth.');
INSERT INTO public.mountain VALUES (3, 'K2', true, 86755.99, 'Second highest mountain on planet earth.');
INSERT INTO public.mountain VALUES (2, 'Olympus', false, 20456.45, 'Highest known mountain in the Solar System');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'terrestrial', NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestrial', NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'terrestrial', 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial', 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'gas giant', 95, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'gas giant', 146, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'ice giant', 27, 1);
INSERT INTO public.planet VALUES (8, 'Neptunus', 'ice giant', 14, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'terrestrial', NULL, 6);
INSERT INTO public.planet VALUES (10, 'Kepler-16(AB)b', 'terrestrial/gas', NULL, 6);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 'terrestrial', NULL, 4);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri B', 'terrestrial', 2, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Orion', 630, 1);
INSERT INTO public.star VALUES (3, 'Enif', 'Pegasus', 670, 1);
INSERT INTO public.star VALUES (4, 'Alpheratz', 'Andromeda', 97, 1);
INSERT INTO public.star VALUES (5, 'Gamma Cassiopeiae', 'Cassiopeia', 549, 1);
INSERT INTO public.star VALUES (6, 'Sirius', 'Canis Major', 9, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: mountains_mountain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mountains_mountain_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: mountain mountains_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mountain
    ADD CONSTRAINT mountains_name_key UNIQUE (name);


--
-- Name: mountain mountains_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mountain
    ADD CONSTRAINT mountains_pkey PRIMARY KEY (mountain_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

