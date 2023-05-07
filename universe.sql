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
    age_in_millions_of_years numeric,
    has_sun boolean,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planets integer,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moons integer,
    atmosphere_description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    size_in_million_miles numeric,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_bases; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_bases (
    star_bases_id integer NOT NULL,
    name character varying(30) NOT NULL,
    captain_name character varying(30),
    planet_id integer
);


ALTER TABLE public.star_bases OWNER TO freecodecamp;

--
-- Name: star_bases_star_base_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_bases_star_base_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_bases_star_base_id_seq OWNER TO freecodecamp;

--
-- Name: star_bases_star_base_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_bases_star_base_id_seq OWNED BY public.star_bases.star_bases_id;


--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star_bases star_bases_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_bases ALTER COLUMN star_bases_id SET DEFAULT nextval('public.star_bases_star_base_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy One', 10.5, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy Two', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy Three', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy Four', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy Five', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy Six', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon One', 1, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon Two', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon Three', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon Four', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon Five', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon Six', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon Seven', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon Eight', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon Nine', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon Ten', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon Eleven', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon Twelve', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon Thirteen', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon Fourteen', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon fifteen', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon Sixteen', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon Seventeen', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon Eighteen', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon Nineteen', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon Twenty', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet One', 1, NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'Planet Two', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Planet Three', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet Four', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet Five', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Plet Six', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet Seven', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet Eight', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet Nine', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet Ten', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet Eleven', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet Twelve', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star One', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Star Two', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star Three', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star Four', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star Five', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star Six', NULL, NULL, NULL);


--
-- Data for Name: star_bases; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_bases VALUES (1, 'Star Base One', NULL, 1);
INSERT INTO public.star_bases VALUES (2, 'Star Base Two', NULL, 1);
INSERT INTO public.star_bases VALUES (3, 'Star Base Three', NULL, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_bases_star_base_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_bases_star_base_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_id UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id UNIQUE (planet_id);


--
-- Name: star_bases star_bases_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_bases
    ADD CONSTRAINT star_bases_pkey PRIMARY KEY (star_bases_id);


--
-- Name: star_bases star_bases_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_bases
    ADD CONSTRAINT star_bases_unique_id UNIQUE (star_bases_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id UNIQUE (star_id);


--
-- Name: moon moon_closest_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_closest_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_closest_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_closest_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star_bases star_bases_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_bases
    ADD CONSTRAINT star_bases_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

