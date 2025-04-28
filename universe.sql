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
-- Name: black_white_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_white_holes (
    black_white_holes_id integer NOT NULL,
    age integer,
    distance_from_earth numeric,
    description text,
    name character varying(50) NOT NULL,
    black_hole boolean NOT NULL,
    white_hole boolean NOT NULL
);


ALTER TABLE public.black_white_holes OWNER TO freecodecamp;

--
-- Name: black_white_holes_black_white_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_white_holes_black_white_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_white_holes_black_white_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_white_holes_black_white_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_white_holes_black_white_holes_id_seq OWNED BY public.black_white_holes.black_white_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    age integer,
    distance_from_earth numeric,
    description text,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL
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
    age integer,
    distance_from_earth numeric,
    description text,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    age integer,
    distance_from_earth numeric,
    description text,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    age integer,
    distance_from_earth numeric,
    description text,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: black_white_holes black_white_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_white_holes ALTER COLUMN black_white_holes_id SET DEFAULT nextval('public.black_white_holes_black_white_holes_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_white_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_white_holes VALUES (1, NULL, NULL, NULL, 'Ton 618', true, false);
INSERT INTO public.black_white_holes VALUES (2, NULL, NULL, NULL, 'Messier 88', true, false);
INSERT INTO public.black_white_holes VALUES (3, NULL, NULL, NULL, 'GRB 060614', false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Milky Way', 1);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Andromeda', 2);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Large Magellanic Cloud', 3);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Cigar Galaxy', 4);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Whirlpool Galaxy', 5);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Cartwheel Galaxy', 6);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Hoags Object', 7);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Sculptor Galaxy', 8);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Triangulum Galaxy', 9);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Bodes Galaxy', 10);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Canis Major Dwarf Galaxy', 11);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Comet Galaxy', 12);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Pinwheel Galaxy', 13);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Sunflower Galaxy', 14);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' NGC 6872', 15);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Black Eye Galaxy', 16);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Cocoon Galaxy', 17);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Coma Pinwheel Galaxy', 18);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Cygnus A', 19);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, ' Maffei I ', 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, 'Luna (Earths Moon)', 1);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, 'Phobos (Mars)', 2);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 'Deimos (Mars)', 3);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 'Ganymede (Jupiter)', 4);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 'Callisto (Jupiter)', 5);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 'Io (Jupiter)', 6);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 'Europa (Jupiter)', 7);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 'Titan (Saturn)', 8);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 'Rhea (Saturn)', 9);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 'Iapetus (Saturn)', 10);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 'Dione (Saturn)', 11);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 'Titania (Uranus)', 12);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 'Oberon (Uranus)', 13);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 'Umbriel (Uranus)', 14);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 'Ariel (Uranus)', 15);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 'Triton (Neptune)', 16);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 'Proteus (Neptune)', 17);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 'Nereid (Neptune)', 18);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 'Larissa (Neptune)', 19);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 'Charon (Pluto)', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Mercury', 1, 1);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Venus', 2, 2);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Earth', 3, 3);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Mars', 4, 4);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Jupiter', 5, 5);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Saturn', 6, 6);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Uranus', 7, 7);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Neptune', 8, 8);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Ceres', 9, 9);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Pluto', 10, 10);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Haumea', 11, 11);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Makemake', 12, 12);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Eris', 13, 13);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Orcus', 14, 14);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Sedna', 15, 15);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Gonggong', 16, 16);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Quaoar', 17, 17);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Salacia', 18, 18);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Ixion', 19, 19);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 'Varuna', 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Sirius: (Canis Major)', 1, 1);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Canopus: (Carina)', 2, 2);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Alpha Centauri: (Centaurus)', 3, 3);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Arcturus: (Boötes)', 4, 4);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Vega: (Lyra)', 5, 5);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Capella: (Auriga)', 6, 6);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Rigel: (Orion)', 7, 7);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Procyon: (Canis Minor)', 8, 8);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Achernar: (Eridanus)', 9, 9);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Hadar: (Centaurus)', 10, 10);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Spica: (Virgo)', 11, 11);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Deneb: (Cygnus)', 12, 12);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Beta Crucis: (Crux)', 13, 13);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Regulus: (Leo)', 14, 14);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Antares: (Scorpius)', 15, 15);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Fomalhaut: (Piscis Austrinus)', 16, 16);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Pollux: (Gemini)', 17, 17);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Vega: (Lyraa)', 18, 18);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Proxima Centauri: (Centaurus)', 19, 19);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 'Altiar: (Aquila', 20, 20);


--
-- Name: black_white_holes_black_white_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_white_holes_black_white_holes_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 57, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 4, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: black_white_holes black_white_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_white_holes
    ADD CONSTRAINT black_white_holes_name_key UNIQUE (name);


--
-- Name: black_white_holes black_white_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_white_holes
    ADD CONSTRAINT black_white_holes_pkey PRIMARY KEY (black_white_holes_id);


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

