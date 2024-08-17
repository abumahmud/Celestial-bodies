--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    name character varying(50) NOT NULL,
    astronaut_id integer NOT NULL,
    nationality character varying(20)
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astranaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astranaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astranaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astranaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astranaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    galaxy_types text NOT NULL,
    examples text NOT NULL,
    shape character varying(50)
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
    name character varying(40),
    diameter_in_km integer NOT NULL,
    moon_type character varying(30),
    planetary boolean,
    planet character varying(20),
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
    name character varying(20),
    description text,
    has_life boolean,
    no_of_moons integer NOT NULL,
    planet_type character varying(30) NOT NULL,
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
    name character varying(20),
    description text,
    age_in_millions_of_years numeric,
    temperature integer NOT NULL,
    luminosity numeric NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astranaut_id_seq'::regclass);


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
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES ('Yuri Gagarin', 1, 'Russia');
INSERT INTO public.astronaut VALUES ('Neil Armstrong', 2, 'USA');
INSERT INTO public.astronaut VALUES ('Luca Parmitano', 3, 'Italy');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral galaxy', 'Sa, Sb, Sc', 'Milky Way, Andromeda', 'Flat, rotating disk with spiral arms');
INSERT INTO public.galaxy VALUES (2, 'Elliptical galaxy', 'E0 (spherical) to E7 (elongated)', 'M87, NGC 1132', 'Ellipsoidal');
INSERT INTO public.galaxy VALUES (3, 'Lenticular galaxy', 'S0 (normal), SB0 (barred)', 'NGC 5866, Sombrero Galaxy (M104)', 'Disk-shaped with no visible spiral arms');
INSERT INTO public.galaxy VALUES (4, 'Irregular galaxy', 'Irr I, Irr II', 'Large Magellanic Cloud', 'No distinct shape or structure');
INSERT INTO public.galaxy VALUES (5, 'Peculiar galaxy', 'None (but can overlap with other types)', 'Centaurus A, NGC 1316', 'Unusual or distorted shape');
INSERT INTO public.galaxy VALUES (6, 'Barred spiral galaxy', 'SBa, SBb, SBc', 'Milky Way (barred spiral type), NGC 1300', 'Spiral with a central bar-shaped structure');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (20, 'Linus', 20, 'asteroid', false, 'Kalliope', 2);
INSERT INTO public.moon VALUES (18, 'Dactyl', 1, 'asteriod', false, 'Ida', 2);
INSERT INTO public.moon VALUES (16, 'Charon', 1212, 'dwarf', false, 'Pluto', 2);
INSERT INTO public.moon VALUES (17, 'Nix', 50, 'dwarf', false, 'Pluto', 2);
INSERT INTO public.moon VALUES (1, 'Luna', 3474, 'terrestial', true, 'Earth', 1);
INSERT INTO public.moon VALUES (11, 'Miranda', 471, 'giant planet', true, 'Uranus', 1);
INSERT INTO public.moon VALUES (8, 'Titan', 5151, 'giant planet', true, 'Saturn', 1);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, 'giant planet', true, 'Saturn', 1);
INSERT INTO public.moon VALUES (12, 'Phoebe', 213, 'irregular', true, 'Saturn', 1);
INSERT INTO public.moon VALUES (15, 'Hyperion', 270, 'irregular', true, 'Saturn', 1);
INSERT INTO public.moon VALUES (19, 'Pandora', 81, 'sheperd', true, 'Saturn', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 'terrestial', true, 'Mars', 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 'terrestial', true, 'Mars', 1);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5268, 'giant planet', true, 'Jupiter', 1);
INSERT INTO public.moon VALUES (5, 'Europa', 3121, 'giant planet', true, 'Jupiter', 1);
INSERT INTO public.moon VALUES (6, 'Io', 3643, 'giant planet', true, 'Jupiter', 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, 'giant planet', true, 'Jupiter', 1);
INSERT INTO public.moon VALUES (14, 'Himalia', 170, 'irregular', true, 'Jupiter', 1);
INSERT INTO public.moon VALUES (10, 'Triton', 2706, 'giant planet', true, 'Neptune', 1);
INSERT INTO public.moon VALUES (13, 'Nereid', 340, 'irregular', true, 'Neptune', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Thin, mostly oxygen, sodium', false, 0, 'terrestial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Thick, CO₂, sulfuric acid clouds', false, 0, 'terrestial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Thin, CO₂, nitrogen, argon', false, 2, 'terrestial', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Hydrogen, helium', false, 92, 'gas giant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Hydrogen, helium', false, 83, 'gas giant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Hydrogen, helium, methane', false, 27, 'ice giant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Hydrogen, helium, methane', false, 14, 'ice giant', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Thin, nitrogen, methane, CO', false, 5, 'dwarf planet', 1);
INSERT INTO public.planet VALUES (10, 'Eris', 'Possibly methane', false, 1, 'dwarf planet', 1);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, false, 2, 'dwarf planet', 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Possibly methane, nitrogen', false, 1, 'dwarf planet', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Nitrogen, oxygen, argon', true, 1, 'terestial', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'O-type', 'hottest and most massive stars, with a very short lifespan', 10, 30000, 30000, 1);
INSERT INTO public.star VALUES (2, 'B-type', 'Less massive and cooler than O-type stars', 100, 10000, 25000, 2);
INSERT INTO public.star VALUES (3, 'A-type', ' bright and often appear white; they are hotter and more massive than the Sun', 150000, 7500, 25, 3);
INSERT INTO public.star VALUES (4, 'F-type', 'Slightly hotter and more massive than the Sun, with a yellow-white color', 350000, 6000, 2.5, 4);
INSERT INTO public.star VALUES (5, 'G-type', 'includes our Sun, often referred to as yellow dwarfs', 100000, 5200, 1.5, 5);
INSERT INTO public.star VALUES (6, 'K-type', 'cooler and less massive than the Sun, with a longer lifespan', 200000, 3700, 0.08, 6);


--
-- Name: astronaut_astranaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astranaut_id_seq', 1, false);


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
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: astronaut astronaut_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_name_key UNIQUE (name);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


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

