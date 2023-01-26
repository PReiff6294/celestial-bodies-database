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
-- Name: burnertable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.burnertable (
    burnertable_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    has_craters boolean NOT NULL,
    age numeric,
    description text,
    moon_id integer NOT NULL
);


ALTER TABLE public.burnertable OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_stars boolean NOT NULL,
    age integer NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    has_craters boolean NOT NULL,
    age numeric,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    has_moons boolean NOT NULL,
    age numeric,
    description text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    has_planets boolean NOT NULL,
    age numeric,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: burnertable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.burnertable VALUES (1, 'waste', 31, true, 31, 'bigwaste', 2);
INSERT INTO public.burnertable VALUES (2, 'morewaste', 32, true, 32, 'morewaste', 2);
INSERT INTO public.burnertable VALUES (3, 'evenmorewaste', 33, true, 34, 'morewaste', 4);
INSERT INTO public.burnertable VALUES (5, 'themostwaste', 34, true, 35, 'superwaste', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 13, 'our home');
INSERT INTO public.galaxy VALUES (2, 'Billshouse', true, 44, 'wherethepcat');
INSERT INTO public.galaxy VALUES (3, 'Superbig', true, 75, 'Massive');
INSERT INTO public.galaxy VALUES (4, 'Supersmall', true, 2, 'Tiny');
INSERT INTO public.galaxy VALUES (5, 'Landfill', true, 25, 'superbig');
INSERT INTO public.galaxy VALUES (6, 'Mistake', false, 666, 'devilnumber');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 100, true, 4, 'needforoceans', 1);
INSERT INTO public.moon VALUES (2, 'roundboy', 99, false, 7, 'something', 1);
INSERT INTO public.moon VALUES (3, 'rounderboy', 959, false, 7, 'somethingelse', 3);
INSERT INTO public.moon VALUES (4, 'roundestboy', 999, false, 9, 'roundestofround', 3);
INSERT INTO public.moon VALUES (5, 'backne', 956, true, 3, 'craterfacemoon', 6);
INSERT INTO public.moon VALUES (7, 'heavylifter', 777, true, 8, 'craterfacemoon', 6);
INSERT INTO public.moon VALUES (8, 'lightlifter', 111, true, 3, 'myarms', 6);
INSERT INTO public.moon VALUES (9, 'almostthere', 67, true, 65, 'myarms', 4);
INSERT INTO public.moon VALUES (10, '10fingers', 10, true, 10, 'justten', 5);
INSERT INTO public.moon VALUES (11, 'eleventysix', 113, true, 55, 'tommypicklesreal', 5);
INSERT INTO public.moon VALUES (12, 'forgotneed20', 12, true, 12, 'trickedbutclose', 3);
INSERT INTO public.moon VALUES (13, 'pleasemoon', 156, true, 116, 'andthankyou', 2);
INSERT INTO public.moon VALUES (14, 'titan', 1234, true, 765, 'attackon', 4);
INSERT INTO public.moon VALUES (15, 'Raftel', 12, true, 5, 'whereonepiece', 1);
INSERT INTO public.moon VALUES (16, 'Hambone', 456, true, 9, 'whereonepiece', 3);
INSERT INTO public.moon VALUES (17, 'Closer', 4, true, 59, '3togo', 3);
INSERT INTO public.moon VALUES (18, 'Closest', 74, true, 59, '2togo', 3);
INSERT INTO public.moon VALUES (19, 'UnMas', 78, true, 68, 'tacocheese', 5);
INSERT INTO public.moon VALUES (20, 'Moonbase', 1, true, 4, 'deathstar', 1);
INSERT INTO public.moon VALUES (21, 'Extraone', 3, true, 3, 'only20tho', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 7500, true, 4, 'homeplanet', 1);
INSERT INTO public.planet VALUES (2, 'Strawberry', 70, false, 7, 'therestomachacid', 2);
INSERT INTO public.planet VALUES (3, 'Eggson', 89, false, 567, 'justegg', 3);
INSERT INTO public.planet VALUES (4, 'Hahafunny', 42069, true, 6969, 'meme', 4);
INSERT INTO public.planet VALUES (5, '5planet', 253, true, 345, 'lame', 5);
INSERT INTO public.planet VALUES (6, 'ammoplanet', 555, true, 365, 'bullet', 6);
INSERT INTO public.planet VALUES (7, 'Mars', 2000, true, 4, 'techplanet', 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 1516, true, 4, 'sunfriend', 1);
INSERT INTO public.planet VALUES (9, 'venus', 3760, true, 4, 'anothersunfriend', 1);
INSERT INTO public.planet VALUES (10, 'Jupiter', 43000, true, 4, 'gassyandsassy', 1);
INSERT INTO public.planet VALUES (11, 'Saturn', 36000, true, 4, 'gassierandsassier', 1);
INSERT INTO public.planet VALUES (12, 'Neptune', 15000, true, 4, 'bluebabidibabidie', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 432, true, 4, 'ourstar', 1);
INSERT INTO public.star VALUES (2, 'Smiggles', 300, true, 4, 'notmilkyonebit', 2);
INSERT INTO public.star VALUES (3, 'Eggboy', 420, false, 2, 'eggy', 3);
INSERT INTO public.star VALUES (4, '4chan', 582, true, 69, 'hurhurhur', 5);
INSERT INTO public.star VALUES (5, '5sama', 55555, true, 79, 'teacherstar', 4);
INSERT INTO public.star VALUES (6, 'sixshooter', 66, true, 6666, 'endstar', 6);


--
-- Name: burnertable burnertable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.burnertable
    ADD CONSTRAINT burnertable_name_key UNIQUE (name);


--
-- Name: burnertable burnertable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.burnertable
    ADD CONSTRAINT burnertable_pkey PRIMARY KEY (burnertable_id);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: burnertable burnertable_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.burnertable
    ADD CONSTRAINT burnertable_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
-- PostgreSQL database dump complete
--

