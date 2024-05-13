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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 1, 6);
INSERT INTO public.games VALUES (3, 1, 6);
INSERT INTO public.games VALUES (4, 1, 3);
INSERT INTO public.games VALUES (5, 5, 1);
INSERT INTO public.games VALUES (6, 5, 1);
INSERT INTO public.games VALUES (7, 6, 1);
INSERT INTO public.games VALUES (8, 6, 1);
INSERT INTO public.games VALUES (9, 5, 1);
INSERT INTO public.games VALUES (10, 5, 1);
INSERT INTO public.games VALUES (11, 5, 1);
INSERT INTO public.games VALUES (12, 1, 1);
INSERT INTO public.games VALUES (13, 7, 1);
INSERT INTO public.games VALUES (14, 7, 1);
INSERT INTO public.games VALUES (15, 8, 1);
INSERT INTO public.games VALUES (16, 8, 1);
INSERT INTO public.games VALUES (17, 7, 1);
INSERT INTO public.games VALUES (18, 7, 1);
INSERT INTO public.games VALUES (19, 7, 1);
INSERT INTO public.games VALUES (20, 1, 5);
INSERT INTO public.games VALUES (21, 10, 334);
INSERT INTO public.games VALUES (22, 10, 65);
INSERT INTO public.games VALUES (23, 11, 389);
INSERT INTO public.games VALUES (24, 11, 996);
INSERT INTO public.games VALUES (25, 10, 16);
INSERT INTO public.games VALUES (26, 10, 952);
INSERT INTO public.games VALUES (27, 10, 331);
INSERT INTO public.games VALUES (28, 12, 53);
INSERT INTO public.games VALUES (29, 12, 997);
INSERT INTO public.games VALUES (30, 13, 251);
INSERT INTO public.games VALUES (31, 13, 193);
INSERT INTO public.games VALUES (32, 12, 109);
INSERT INTO public.games VALUES (33, 12, 99);
INSERT INTO public.games VALUES (34, 12, 108);
INSERT INTO public.games VALUES (35, 14, 50);
INSERT INTO public.games VALUES (36, 14, 278);
INSERT INTO public.games VALUES (37, 15, 224);
INSERT INTO public.games VALUES (38, 15, 469);
INSERT INTO public.games VALUES (39, 14, 451);
INSERT INTO public.games VALUES (40, 14, 509);
INSERT INTO public.games VALUES (41, 14, 659);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'e');
INSERT INTO public.users VALUES (2, 'r');
INSERT INTO public.users VALUES (3, 'user_1715616535065');
INSERT INTO public.users VALUES (4, 'user_1715616535064');
INSERT INTO public.users VALUES (5, 'user_1715616725908');
INSERT INTO public.users VALUES (6, 'user_1715616725907');
INSERT INTO public.users VALUES (7, 'user_1715616784329');
INSERT INTO public.users VALUES (8, 'user_1715616784328');
INSERT INTO public.users VALUES (9, '500');
INSERT INTO public.users VALUES (10, 'user_1715616869563');
INSERT INTO public.users VALUES (11, 'user_1715616869562');
INSERT INTO public.users VALUES (12, 'user_1715616920098');
INSERT INTO public.users VALUES (13, 'user_1715616920097');
INSERT INTO public.users VALUES (14, 'user_1715616950265');
INSERT INTO public.users VALUES (15, 'user_1715616950264');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 41, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

