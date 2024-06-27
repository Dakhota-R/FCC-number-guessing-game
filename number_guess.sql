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
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES ('user_1719511295829', 5, 11);
INSERT INTO public.user_info VALUES ('user_1719511323117', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511308199', 5, 5);
INSERT INTO public.user_info VALUES ('user_1719511279580', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511279581', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511297626', 2, 6);
INSERT INTO public.user_info VALUES ('user_1719511323118', 5, 3);
INSERT INTO public.user_info VALUES ('user_1719511297627', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511281585', 2, 4);
INSERT INTO public.user_info VALUES ('user_1719511334243', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511281586', 5, 11);
INSERT INTO public.user_info VALUES ('user_1719511309930', 2, 10);
INSERT INTO public.user_info VALUES ('user_1719511503717', 5, 230);
INSERT INTO public.user_info VALUES ('user_1719511299403', 2, 2);
INSERT INTO public.user_info VALUES ('user_1719511334244', 5, 11);
INSERT INTO public.user_info VALUES ('user_1719511309931', 5, 13);
INSERT INTO public.user_info VALUES ('user_1719511283375', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511299404', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511283376', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511380352', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511301128', 2, 7);
INSERT INTO public.user_info VALUES ('user_1719511285241', 2, 4);
INSERT INTO public.user_info VALUES ('user_1719511325004', 2, 7);
INSERT INTO public.user_info VALUES ('user_1719511285242', 5, 2);
INSERT INTO public.user_info VALUES ('user_1719511372314', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511301129', 5, 2);
INSERT INTO public.user_info VALUES ('user_1719511312726', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511325005', 5, 1);
INSERT INTO public.user_info VALUES ('user_1719511287004', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511312727', 5, 2);
INSERT INTO public.user_info VALUES ('user_1719511287005', 5, 6);
INSERT INTO public.user_info VALUES ('user_1719511302915', 2, 10);
INSERT INTO public.user_info VALUES ('user_1719511380353', 5, 5);
INSERT INTO public.user_info VALUES ('user_1719511302916', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511288786', 2, 5);
INSERT INTO public.user_info VALUES ('user_1719511336165', 2, 2);
INSERT INTO public.user_info VALUES ('user_1719511314638', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511288787', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511372315', 5, 11);
INSERT INTO public.user_info VALUES ('user_1719511314639', 5, 11);
INSERT INTO public.user_info VALUES ('user_1719511304666', 2, 7);
INSERT INTO public.user_info VALUES ('user_1719511290569', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511326850', 2, 7);
INSERT INTO public.user_info VALUES ('user_1719511304667', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511290570', 5, 4);
INSERT INTO public.user_info VALUES ('user_1719511336166', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511292350', 2, 8);
INSERT INTO public.user_info VALUES ('user_1719511326851', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511292351', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511306453', 2, 10);
INSERT INTO public.user_info VALUES ('user_1719511317082', 2, 10);
INSERT INTO public.user_info VALUES ('user_1719511294067', 2, 8);
INSERT INTO public.user_info VALUES ('user_1719511306454', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511317083', 5, 1);
INSERT INTO public.user_info VALUES ('user_1719511294068', 5, 4);
INSERT INTO public.user_info VALUES ('user_1719511308198', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511295828', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511328655', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511374153', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511366651', 2, 11);
INSERT INTO public.user_info VALUES ('user_1719511318885', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511506122', 2, 318);
INSERT INTO public.user_info VALUES ('user_1719511328656', 5, 12);
INSERT INTO public.user_info VALUES ('user_1719511318886', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511374154', 5, 11);
INSERT INTO public.user_info VALUES ('user_1719511366652', 5, 1);
INSERT INTO public.user_info VALUES ('user_1719511330588', 2, 3);
INSERT INTO public.user_info VALUES ('user_1719511320814', 2, 4);
INSERT INTO public.user_info VALUES ('user_1719511390748', 2, 257);
INSERT INTO public.user_info VALUES ('user_1719511320815', 5, 2);
INSERT INTO public.user_info VALUES ('user_1719511330589', 5, 12);
INSERT INTO public.user_info VALUES ('user_1719511368697', 2, 10);
INSERT INTO public.user_info VALUES ('user_1719511390749', 5, 307);
INSERT INTO public.user_info VALUES ('user_1719511376491', 2, 4);
INSERT INTO public.user_info VALUES ('user_1719511368698', 5, 3);
INSERT INTO public.user_info VALUES ('user_1719511332392', 2, 6);
INSERT INTO public.user_info VALUES ('user_1719511506123', 5, 123);
INSERT INTO public.user_info VALUES ('user_1719511376492', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511332393', 5, 5);
INSERT INTO public.user_info VALUES ('user_1719511370502', 2, 4);
INSERT INTO public.user_info VALUES ('user_1719511392876', 2, 306);
INSERT INTO public.user_info VALUES ('user_1719511370503', 5, 10);
INSERT INTO public.user_info VALUES ('user_1719511378408', 2, 10);
INSERT INTO public.user_info VALUES ('user_1719511392877', 5, 120);
INSERT INTO public.user_info VALUES ('user_1719511378409', 5, 1);
INSERT INTO public.user_info VALUES ('user_1719511503716', 2, 215);


--
-- PostgreSQL database dump complete
--

