--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    number_of_stars integer NOT NULL,
    age integer NOT NULL,
    been_explored boolean NOT NULL
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
    is_spherical boolean NOT NULL,
    moon_type character varying(30),
    has_planet boolean NOT NULL,
    age integer NOT NULL,
    name character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL,
    planet_types character varying(20),
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_km numeric(24,2),
    description text,
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
    star_type character varying(10),
    star_temperature integer,
    star_spherical boolean,
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
-- Name: stone; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stone (
    stone_id integer NOT NULL,
    name character varying(40) NOT NULL,
    stone_age integer
);


ALTER TABLE public.stone OWNER TO freecodecamp;

--
-- Name: stone_stone_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stone_stone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stone_stone_id_seq OWNER TO freecodecamp;

--
-- Name: stone_stone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stone_stone_id_seq OWNED BY public.stone.stone_id;


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
-- Name: stone stone_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stone ALTER COLUMN stone_id SET DEFAULT nextval('public.stone_stone_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 13600, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000, 10000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40, 1000, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 30, 1100, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 800, 13000, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 100, 400, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 'Rocky', true, 4500, 'Moon', 3);
INSERT INTO public.moon VALUES (2, false, 'Irregular', true, 4500, 'Phobos', 4);
INSERT INTO public.moon VALUES (3, false, 'Irregular', true, 4500, 'Deimos', 4);
INSERT INTO public.moon VALUES (4, true, 'Volcanic', true, 4500, 'Io', 5);
INSERT INTO public.moon VALUES (5, true, 'Icy', true, 4500, 'Europa', 5);
INSERT INTO public.moon VALUES (6, true, 'Icy', true, 4500, 'Ganymede', 5);
INSERT INTO public.moon VALUES (7, true, 'Icy', true, 4500, 'Callisto', 5);
INSERT INTO public.moon VALUES (8, true, 'Icy/Atmospheric', true, 4500, 'Titan', 6);
INSERT INTO public.moon VALUES (9, true, 'Icy', true, 4500, 'Enceladus', 6);
INSERT INTO public.moon VALUES (10, true, 'Icy', true, 4500, 'Mimas', 6);
INSERT INTO public.moon VALUES (11, true, 'Icy', true, 4500, 'Rhea', 6);
INSERT INTO public.moon VALUES (12, true, 'Icy', true, 4500, 'Titania', 7);
INSERT INTO public.moon VALUES (13, true, 'Icy', true, 4500, 'Oberon', 7);
INSERT INTO public.moon VALUES (14, true, 'Icy', true, 4500, 'Umbriel', 7);
INSERT INTO public.moon VALUES (15, true, 'Icy', true, 4500, 'Ariel', 7);
INSERT INTO public.moon VALUES (16, true, 'Icy/Retrograde', true, 4500, 'Triton', 8);
INSERT INTO public.moon VALUES (17, false, 'Irregular', true, 4500, 'Proteus', 8);
INSERT INTO public.moon VALUES (18, false, 'Irregular', true, 4500, 'Nereid', 8);
INSERT INTO public.moon VALUES (19, false, 'Irregular', true, 4500, 'Amalthea', 5);
INSERT INTO public.moon VALUES (20, false, 'Irregular', true, 4500, 'Hyperion', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, 4500, 77300000.00, 'Smallest planet in the solar system', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, 4500, 41400000.00, 'Hottest planet with thick toxic atmosphere', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, 4540, 0.00, 'Our home planet and cradle of life', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', false, 4500, 78300000.00, 'The red dusty desert planet', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', false, 4500, 628700000.00, 'Largest planet with the Great Red Spot', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', false, 4500, 1275000000.00, 'Famous for its massive icy ring system', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', false, 4500, 2723000000.00, 'An ice giant that spins completely on its side', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', false, 4500, 4351000000.00, 'Windiest planet with a deep blue color', 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Terrestrial', false, 4850, 40200000000000.00, 'Closest known exoplanet in the habitable zone', 4);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'Super-Earth', false, 4000, 5870000000000000.00, 'Potentially watery exoplanet candidate', 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'Hot Jupiter', false, 5000, 150000000000000.00, 'Evaporating gas giant nicknamed Osiris', 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 'Terrestrial', false, 7600, 390000000000000.00, 'Earth-sized rocky world in a tight system', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-Type', 5500, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-Type', 9940, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M-Type', 3500, true, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'M-Type', 3042, true, 1);
INSERT INTO public.star VALUES (5, 'Vega', 'A-Type', 9602, true, 1);
INSERT INTO public.star VALUES (6, 'Polaris', 'F-Type', 6015, true, 1);


--
-- Data for Name: stone; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stone VALUES (1, 'Granite', 1000);
INSERT INTO public.stone VALUES (2, 'Marble', 1200);
INSERT INTO public.stone VALUES (3, 'Basalt', 800);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: stone_stone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stone_stone_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: stone stone_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stone
    ADD CONSTRAINT stone_name_key UNIQUE (name);


--
-- Name: stone stone_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stone
    ADD CONSTRAINT stone_pkey PRIMARY KEY (stone_id);


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

