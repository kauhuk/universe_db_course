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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    description text,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_ly integer,
    galaxy_type character varying(30),
    age_in_billions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    size_in_km integer,
    tidally_locked boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    size_in_km integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    distance_from_earth_in_ly numeric,
    has_planets boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxys appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', 1, NULL, NULL, NULL, 'Abou Milky Way');
INSERT INTO public.description VALUES (2, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 2, NULL, NULL, NULL, 'Abou Andromeda');
INSERT INTO public.description VALUES (3, 'The Large Magellanic Cloud (LMC) is a dwarf galaxy and satellite galaxy of the Milky Way.', 3, NULL, NULL, NULL, 'Abou LMC');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 87400, 'spiral', 12);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 152000, 'spiral', 12);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 32200, 'magellanic spiral', 12);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf Galaxy', 0, 'elliptical', 12);
INSERT INTO public.galaxy VALUES (5, 'The Small Magellanic Cloud', 18900, 'elliptical', 12);
INSERT INTO public.galaxy VALUES (6, 'The Ursa Minor Dwarf ', 0, 'elliptical', 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1737, true);
INSERT INTO public.moon VALUES (2, 'Europa', 2, 1560, true);
INSERT INTO public.moon VALUES (3, 'Ganymede', 2, 2634, true);
INSERT INTO public.moon VALUES (4, 'Deimos', 6, 12, true);
INSERT INTO public.moon VALUES (5, 'Phobos', 6, 22, true);
INSERT INTO public.moon VALUES (6, 'Callisto', 2, 4800, true);
INSERT INTO public.moon VALUES (7, 'Io', 2, 3629, true);
INSERT INTO public.moon VALUES (8, 'Amalthea', 2, 262, true);
INSERT INTO public.moon VALUES (9, 'Himalia', 2, 170, true);
INSERT INTO public.moon VALUES (10, 'Thebe', 2, 100, true);
INSERT INTO public.moon VALUES (11, 'Enceladus', 7, 498, true);
INSERT INTO public.moon VALUES (12, 'Dione', 7, 1120, true);
INSERT INTO public.moon VALUES (13, 'Epimetheus', 7, 138, true);
INSERT INTO public.moon VALUES (14, 'Iapetus', 7, 1436, true);
INSERT INTO public.moon VALUES (15, 'Ariel', 8, 1160, true);
INSERT INTO public.moon VALUES (16, 'Oberon', 8, 1526, true);
INSERT INTO public.moon VALUES (17, 'Proteus', 9, 420, true);
INSERT INTO public.moon VALUES (18, 'Triton', 9, 2705, true);
INSERT INTO public.moon VALUES (19, 'Charon', 10, 1207, true);
INSERT INTO public.moon VALUES (20, 'Nix', 10, 100, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 6371);
INSERT INTO public.planet VALUES (2, 'Jupiter', 1, false, 69911);
INSERT INTO public.planet VALUES (3, 'Proxima Centauri b', 2, false, 0);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, false, 2439);
INSERT INTO public.planet VALUES (5, 'Venus', 1, false, 6051);
INSERT INTO public.planet VALUES (6, 'Mars', 1, false, 3389);
INSERT INTO public.planet VALUES (7, 'Saturn', 1, false, 58232);
INSERT INTO public.planet VALUES (8, 'Uranus', 1, false, 25362);
INSERT INTO public.planet VALUES (9, 'Neptune', 1, false, 24622);
INSERT INTO public.planet VALUES (10, 'Pluto', 1, false, 2376);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', 2, false, 0);
INSERT INTO public.planet VALUES (12, 'Wolf 359 b', 5, false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 4, true);
INSERT INTO public.star VALUES (3, 'Barnards Star', 1, 6, false);
INSERT INTO public.star VALUES (4, 'Luhman 16', 1, 7, false);
INSERT INTO public.star VALUES (5, 'Wolf 359', 1, 8, true);
INSERT INTO public.star VALUES (6, 'Sirius', 1, 8, true);


--
-- Name: description description_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


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
-- Name: description description_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: description description_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: description description_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: description description_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

