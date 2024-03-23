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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq1 OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq1 OWNED BY public.games.opponent_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (867, 2018, 'Final', 4, 2, 433, 434);
INSERT INTO public.games VALUES (868, 2018, 'Third Place', 2, 0, 435, 436);
INSERT INTO public.games VALUES (869, 2018, 'Semi-Final', 2, 1, 434, 436);
INSERT INTO public.games VALUES (870, 2018, 'Semi-Final', 1, 0, 433, 435);
INSERT INTO public.games VALUES (871, 2018, 'Quarter-Final', 3, 2, 434, 437);
INSERT INTO public.games VALUES (872, 2018, 'Quarter-Final', 2, 0, 436, 438);
INSERT INTO public.games VALUES (873, 2018, 'Quarter-Final', 2, 1, 435, 439);
INSERT INTO public.games VALUES (874, 2018, 'Quarter-Final', 2, 0, 433, 440);
INSERT INTO public.games VALUES (875, 2018, 'Eighth-Final', 2, 1, 436, 441);
INSERT INTO public.games VALUES (876, 2018, 'Eighth-Final', 1, 0, 438, 442);
INSERT INTO public.games VALUES (877, 2018, 'Eighth-Final', 3, 2, 435, 443);
INSERT INTO public.games VALUES (878, 2018, 'Eighth-Final', 2, 0, 439, 444);
INSERT INTO public.games VALUES (879, 2018, 'Eighth-Final', 2, 1, 434, 445);
INSERT INTO public.games VALUES (880, 2018, 'Eighth-Final', 2, 1, 437, 446);
INSERT INTO public.games VALUES (881, 2018, 'Eighth-Final', 2, 1, 440, 447);
INSERT INTO public.games VALUES (882, 2018, 'Eighth-Final', 4, 3, 433, 448);
INSERT INTO public.games VALUES (883, 2014, 'Final', 1, 0, 449, 448);
INSERT INTO public.games VALUES (884, 2014, 'Third Place', 3, 0, 450, 439);
INSERT INTO public.games VALUES (885, 2014, 'Semi-Final', 1, 0, 448, 450);
INSERT INTO public.games VALUES (886, 2014, 'Semi-Final', 7, 1, 449, 439);
INSERT INTO public.games VALUES (887, 2014, 'Quarter-Final', 1, 0, 450, 451);
INSERT INTO public.games VALUES (888, 2014, 'Quarter-Final', 1, 0, 448, 435);
INSERT INTO public.games VALUES (889, 2014, 'Quarter-Final', 2, 1, 439, 441);
INSERT INTO public.games VALUES (890, 2014, 'Quarter-Final', 1, 0, 449, 433);
INSERT INTO public.games VALUES (891, 2014, 'Eighth-Final', 2, 1, 439, 452);
INSERT INTO public.games VALUES (892, 2014, 'Eighth-Final', 2, 0, 441, 440);
INSERT INTO public.games VALUES (893, 2014, 'Eighth-Final', 2, 0, 433, 453);
INSERT INTO public.games VALUES (894, 2014, 'Eighth-Final', 2, 1, 449, 454);
INSERT INTO public.games VALUES (895, 2014, 'Eighth-Final', 2, 1, 450, 444);
INSERT INTO public.games VALUES (896, 2014, 'Eighth-Final', 2, 1, 451, 455);
INSERT INTO public.games VALUES (897, 2014, 'Eighth-Final', 1, 0, 448, 442);
INSERT INTO public.games VALUES (898, 2014, 'Eighth-Final', 2, 1, 435, 456);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (433, 'France');
INSERT INTO public.teams VALUES (434, 'Croatia');
INSERT INTO public.teams VALUES (435, 'Belgium');
INSERT INTO public.teams VALUES (436, 'England');
INSERT INTO public.teams VALUES (437, 'Russia');
INSERT INTO public.teams VALUES (438, 'Sweden');
INSERT INTO public.teams VALUES (439, 'Brazil');
INSERT INTO public.teams VALUES (440, 'Uruguay');
INSERT INTO public.teams VALUES (441, 'Colombia');
INSERT INTO public.teams VALUES (442, 'Switzerland');
INSERT INTO public.teams VALUES (443, 'Japan');
INSERT INTO public.teams VALUES (444, 'Mexico');
INSERT INTO public.teams VALUES (445, 'Denmark');
INSERT INTO public.teams VALUES (446, 'Spain');
INSERT INTO public.teams VALUES (447, 'Portugal');
INSERT INTO public.teams VALUES (448, 'Argentina');
INSERT INTO public.teams VALUES (449, 'Germany');
INSERT INTO public.teams VALUES (450, 'Netherlands');
INSERT INTO public.teams VALUES (451, 'Costa Rica');
INSERT INTO public.teams VALUES (452, 'Chile');
INSERT INTO public.teams VALUES (453, 'Nigeria');
INSERT INTO public.teams VALUES (454, 'Algeria');
INSERT INTO public.teams VALUES (455, 'Greece');
INSERT INTO public.teams VALUES (456, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 898, true);


--
-- Name: games_opponent_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq1', 97, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 456, true);


--
-- Name: games pk_game_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT pk_game_id PRIMARY KEY (game_id);


--
-- Name: teams pk_team_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT pk_team_id PRIMARY KEY (team_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: games fk_opp_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opp_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_win_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_win_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

