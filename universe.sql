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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(50),
    charged boolean NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance numeric(3,1),
    type text,
    size character varying(10) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    distance numeric(3,1),
    planet_id integer NOT NULL,
    description character varying(100)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    distance numeric(3,1),
    has_life boolean,
    star_id integer NOT NULL,
    no_of_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    distance numeric(3,1),
    galaxy_id integer NOT NULL,
    luminosity character varying(30),
    no_of_planets integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'SAGITTARIUS A', false);
INSERT INTO public.black_hole VALUES (2, 'CYGNUS X-1', false);
INSERT INTO public.black_hole VALUES (3, 'MESSIER-87', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', 0.0, 'spiral', 'giant');
INSERT INTO public.galaxy VALUES (2, 'ANDROMEDA GALAXY', 2.5, 'spiral', 'giant');
INSERT INTO public.galaxy VALUES (3, 'TRIANGULUM GALAXY', 3.0, 'spiral', 'giant');
INSERT INTO public.galaxy VALUES (4, 'LARGE MAGELLANIC CLOUD', 1.6, 'irregular', 'dwarf');
INSERT INTO public.galaxy VALUES (5, 'URSA MINOR DWARF GALAXY', 2.2, 'elliptical', 'dwarf');
INSERT INTO public.galaxy VALUES (6, 'DRACO DWARF GALAXY', 3.1, 'elliptical', 'dwarf');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MOON', 0.1, 1, NULL);
INSERT INTO public.moon VALUES (2, 'PHOBAS', 0.1, 2, 'Larger Martian Moon');
INSERT INTO public.moon VALUES (3, 'DEIMOS', 0.2, 2, 'Smaller Martian Moon');
INSERT INTO public.moon VALUES (4, 'Hypo1', 8.6, 3, 'Proxima B Moon');
INSERT INTO public.moon VALUES (5, 'Hypo2', 8.7, 3, 'Proxima B Moon-2');
INSERT INTO public.moon VALUES (6, 'Hypo3', 8.8, 4, 'Proxima C Moon-3');
INSERT INTO public.moon VALUES (7, 'Hypo4', 8.9, 4, 'Proxima C Moon-4');
INSERT INTO public.moon VALUES (8, 'Hypo5', 10.4, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Hypo6', 11.3, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Hypo7', 12.5, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Hypo8', 11.8, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Hypo9', 12.9, 7, NULL);
INSERT INTO public.moon VALUES (13, 'Hypo10', 13.2, 8, NULL);
INSERT INTO public.moon VALUES (14, 'Hypo11', 14.8, 9, NULL);
INSERT INTO public.moon VALUES (15, 'Hypo12', 22.9, 10, NULL);
INSERT INTO public.moon VALUES (16, 'Hypo13', 23.2, 12, NULL);
INSERT INTO public.moon VALUES (17, 'Hypo14', 27.1, 8, NULL);
INSERT INTO public.moon VALUES (18, 'Hypo15', 32.4, 5, NULL);
INSERT INTO public.moon VALUES (19, 'Hypo16', 61.3, 10, NULL);
INSERT INTO public.moon VALUES (20, 'Hypo17', 79.2, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'EARTH', 0.0, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'MARS', 0.1, false, 1, 2);
INSERT INTO public.planet VALUES (3, 'PROXIMA B', 8.6, NULL, 2, NULL);
INSERT INTO public.planet VALUES (4, 'PROXIMA C', 8.7, NULL, 2, NULL);
INSERT INTO public.planet VALUES (5, 'MERCURY', 0.2, false, 1, 0);
INSERT INTO public.planet VALUES (6, 'VENUS', 0.3, false, 1, 0);
INSERT INTO public.planet VALUES (7, 'JUPITER', 0.4, false, 1, 95);
INSERT INTO public.planet VALUES (8, 'SATURN', 0.5, false, 1, 146);
INSERT INTO public.planet VALUES (9, '87 GYU', 34.1, false, 5, 83);
INSERT INTO public.planet VALUES (10, '319 OLY', 92.1, false, 4, 32);
INSERT INTO public.planet VALUES (11, '391 IQY', 99.7, false, 4, 283);
INSERT INTO public.planet VALUES (12, '825 PXY', 13.2, false, 6, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 8.3, 1, 'dwarfs(class 5)', NULL);
INSERT INTO public.star VALUES (2, 'SIRIUS', 8.6, 1, 'MAIN SEQUENCE(class 5)', 1);
INSERT INTO public.star VALUES (3, 'MIRACH', 19.7, 2, 'GIANT(class 3)', 0);
INSERT INTO public.star VALUES (4, '3C 48', 1.5, 3, 'QUASAR(Not a standard class)', NULL);
INSERT INTO public.star VALUES (5, 'Draco II', 76.0, 6, 'MAIN SEQUENCE(class 5)', 0);
INSERT INTO public.star VALUES (6, 'UV SETI', 8.7, 5, 'MAIN SEQUENCE(class 5)', 1);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_key UNIQUE (distance);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_key UNIQUE (distance);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_key UNIQUE (distance);


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

