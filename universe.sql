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
    name character varying(30),
    age_in_million_years integer,
    galaxy_id integer NOT NULL,
    description text,
    is_real boolean,
    star_id integer NOT NULL
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
    name character varying(30),
    age_in_million_years integer,
    moon_id integer NOT NULL,
    description text,
    planet_id integer NOT NULL,
    planet_name character varying(30)
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
    name character varying(30),
    age_in_million_years integer,
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    is_sperical boolean,
    distance_from_earth numeric,
    star_id integer NOT NULL,
    revolution_period numeric
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
-- Name: space_org; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_org (
    name character varying(30),
    space_org_id integer NOT NULL,
    country character varying(20) NOT NULL
);


ALTER TABLE public.space_org OWNER TO freecodecamp;

--
-- Name: space_org_space_org_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_org_space_org_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_org_space_org_id_seq OWNER TO freecodecamp;

--
-- Name: space_org_space_org_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_org_space_org_id_seq OWNED BY public.space_org.space_org_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    age_in_million_years integer,
    star_id integer NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    approx_size_in_sqkm numeric
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_org space_org_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_org ALTER COLUMN space_org_id SET DEFAULT nextval('public.space_org_space_org_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky way', NULL, 1, NULL, true, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', NULL, 2, NULL, true, 2);
INSERT INTO public.galaxy VALUES ('Cannis major dwarf', NULL, 3, NULL, true, 3);
INSERT INTO public.galaxy VALUES ('Cygnus A', NULL, 4, NULL, true, 4);
INSERT INTO public.galaxy VALUES ('Magellanic clouds', NULL, 5, NULL, true, 5);
INSERT INTO public.galaxy VALUES ('Virgo A', NULL, 6, NULL, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Earth moon', NULL, 1, NULL, 3, NULL);
INSERT INTO public.moon VALUES ('Mercury moon1', NULL, 2, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('Mercury moon2', NULL, 3, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('Mercury moon3', NULL, 4, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('Venus moon1', NULL, 5, NULL, 2, NULL);
INSERT INTO public.moon VALUES ('Venus moon2', NULL, 6, NULL, 2, NULL);
INSERT INTO public.moon VALUES ('Venus moon3', NULL, 7, NULL, 2, NULL);
INSERT INTO public.moon VALUES ('Mars moon1', NULL, 8, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('Mars moon2', NULL, 9, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('Mars moon3', NULL, 10, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('Mars moon4', NULL, 11, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('jupiter moon1', NULL, 12, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('jupiter moon2', NULL, 13, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('jupiter moon3', NULL, 14, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('jupiter moon4', NULL, 15, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Jupiter moon5', NULL, 16, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Jupiter moon6', NULL, 17, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Jupiter moon7', NULL, 18, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Jupiter moon8', NULL, 19, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Jupiter moon9', NULL, 20, NULL, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', NULL, 1, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Venus', NULL, 2, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Earth', NULL, 3, NULL, true, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Mars', NULL, 4, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Jupiter', NULL, 5, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Saturn', NULL, 6, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('uranus', NULL, 7, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Neptune', NULL, 8, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Pluto', NULL, 9, NULL, false, false, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Eris', NULL, 10, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Ceres', NULL, 11, NULL, false, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('no_planet', NULL, 12, NULL, false, false, NULL, 1, NULL);


--
-- Data for Name: space_org; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_org VALUES ('ISRO', 1, 'India');
INSERT INTO public.space_org VALUES ('NASA', 2, 'USA');
INSERT INTO public.space_org VALUES ('ROSCOSMOS', 3, 'Russia');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', NULL, 1, NULL, 1, NULL);
INSERT INTO public.star VALUES ('Andro star', NULL, 2, NULL, 2, NULL);
INSERT INTO public.star VALUES ('Cannis star', NULL, 3, NULL, 3, NULL);
INSERT INTO public.star VALUES ('Cygnus A', NULL, 4, NULL, 4, NULL);
INSERT INTO public.star VALUES ('Magellanic star', NULL, 5, NULL, 5, NULL);
INSERT INTO public.star VALUES ('virgo star', NULL, 6, NULL, 6, NULL);


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
-- Name: space_org_space_org_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_org_space_org_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: moon moon_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_key UNIQUE (planet_name);


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
-- Name: planet planet_revolution_period_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_revolution_period_key UNIQUE (revolution_period);


--
-- Name: space_org space_org_country_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_org
    ADD CONSTRAINT space_org_country_key UNIQUE (country);


--
-- Name: space_org space_org_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_org
    ADD CONSTRAINT space_org_pkey PRIMARY KEY (space_org_id);


--
-- Name: star star_approx_size_in_sqkm_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_approx_size_in_sqkm_key UNIQUE (approx_size_in_sqkm);


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

