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
    name character varying(20) NOT NULL,
    short_desc text,
    shape character(25) NOT NULL,
    is_live boolean
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
    name character varying(20) NOT NULL,
    distance_from_planet numeric NOT NULL,
    iscrater boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_live boolean,
    color character varying(15) NOT NULL,
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
    name character varying(20) NOT NULL,
    diameter numeric NOT NULL,
    galaxy_id integer,
    star_state_id integer
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
-- Name: star_state; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_state (
    star_state_id integer NOT NULL,
    name character varying(20),
    state_before integer NOT NULL,
    state_left integer NOT NULL,
    is_live boolean
);


ALTER TABLE public.star_state OWNER TO freecodecamp;

--
-- Name: star_state_star_state_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_state_star_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_state_star_state_id_seq OWNER TO freecodecamp;

--
-- Name: star_state_star_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_state_star_state_id_seq OWNED BY public.star_state.star_state_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_state star_state_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_state ALTER COLUMN star_state_id SET DEFAULT nextval('public.star_state_star_state_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Galaxy', 'Oval                     ', true);
INSERT INTO public.galaxy VALUES (2, 'Spinwheel', 'Not seen in hubble', 'Spiral                   ', false);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', 'Light and dark spots seen', 'Elongated                ', false);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'our neighbor', 'Spiral                   ', false);
INSERT INTO public.galaxy VALUES (5, 'Hoags', 'Farther apart', 'circular                 ', false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'imaginary', 'any shape                ', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 36, true, 3);
INSERT INTO public.moon VALUES (2, 'Europa', 78787, true, 5);
INSERT INTO public.moon VALUES (3, 'Celestia', 89898, true, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', 787568, true, 5);
INSERT INTO public.moon VALUES (5, 'Rhea', 676767, false, 6);
INSERT INTO public.moon VALUES (6, 'Callisto', 676767, true, 5);
INSERT INTO public.moon VALUES (7, 'Titan', 787878, false, 7);
INSERT INTO public.moon VALUES (8, 'lo', 898989, false, 7);
INSERT INTO public.moon VALUES (9, 'Mimas', 7878787, false, 8);
INSERT INTO public.moon VALUES (10, 'Methone', 78787454, false, 6);
INSERT INTO public.moon VALUES (11, 'Anthe', 56565656, true, 6);
INSERT INTO public.moon VALUES (22, 'siMoon', 36, true, 12);
INSERT INTO public.moon VALUES (12, 'Eunuropa', 78787, true, 5);
INSERT INTO public.moon VALUES (13, 'veCelestia', 89898, true, 5);
INSERT INTO public.moon VALUES (14, 'mede', 787568, true, 6);
INSERT INTO public.moon VALUES (15, 'LiRhea', 676767, false, 9);
INSERT INTO public.moon VALUES (16, 'Cawellisto', 676767, true, 10);
INSERT INTO public.moon VALUES (17, 'Tritan', 787878, false, 12);
INSERT INTO public.moon VALUES (18, 'melo', 898989, false, 11);
INSERT INTO public.moon VALUES (19, 'Mias', 7878787, false, 8);
INSERT INTO public.moon VALUES (20, 'tethone', 78787454, false, 9);
INSERT INTO public.moon VALUES (21, 'sAnthe', 56565656, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'white', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'white', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'blue', 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, 'red', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'red', 1);
INSERT INTO public.planet VALUES (6, 'Uranus', false, 'brown', 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 'blue', 1);
INSERT INTO public.planet VALUES (8, 'Saturn', false, 'Orange', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 'white', 1);
INSERT INTO public.planet VALUES (10, 'Alphacenturi', false, 'white', 2);
INSERT INTO public.planet VALUES (11, 'Sirius', false, 'Grey', 3);
INSERT INTO public.planet VALUES (12, 'T110', false, 'Dark grey', 4);
INSERT INTO public.planet VALUES (13, 'Mercur12y', false, 'white', 3);
INSERT INTO public.planet VALUES (14, 'V23enus', false, 'white', 4);
INSERT INTO public.planet VALUES (15, 'erereEarth', true, 'blue', 5);
INSERT INTO public.planet VALUES (16, 'rtrMars', true, 'red', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 300, 1, 2);
INSERT INTO public.star VALUES (2, 'Antra', 800, 6, 3);
INSERT INTO public.star VALUES (3, 'T110', 9000, 4, 4);
INSERT INTO public.star VALUES (5, 'Virgo', 7878, 3, 4);
INSERT INTO public.star VALUES (6, 'Ursa Major', 89899, 5, 5);
INSERT INTO public.star VALUES (4, 'Serpens', 300, 4, 2);


--
-- Data for Name: star_state; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_state VALUES (1, 'Nebula', 0, 4, true);
INSERT INTO public.star_state VALUES (2, 'Red Giant', 1, 3, true);
INSERT INTO public.star_state VALUES (3, 'White Dwarf', 2, 2, true);
INSERT INTO public.star_state VALUES (4, 'Black Hole', 4, 0, false);
INSERT INTO public.star_state VALUES (5, 'Medium Star', 0, 3, true);
INSERT INTO public.star_state VALUES (6, 'Red Super Giant', 2, 2, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: star_state_star_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_state_star_state_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star_state star_state_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_state
    ADD CONSTRAINT star_state_name_key UNIQUE (name);


--
-- Name: star_state star_state_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_state
    ADD CONSTRAINT star_state_name_key1 UNIQUE (name);


--
-- Name: star_state star_state_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_state
    ADD CONSTRAINT star_state_pkey PRIMARY KEY (star_state_id);


--
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_state_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_state_id_fk FOREIGN KEY (star_state_id) REFERENCES public.star_state(star_state_id);


--
-- PostgreSQL database dump complete
--

