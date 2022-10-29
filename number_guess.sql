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
    score integer NOT NULL,
    user_id integer NOT NULL
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
    user_name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (61, 416, 20);
INSERT INTO public.games VALUES (62, 356, 20);
INSERT INTO public.games VALUES (63, 368, 21);
INSERT INTO public.games VALUES (64, 977, 21);
INSERT INTO public.games VALUES (65, 445, 20);
INSERT INTO public.games VALUES (66, 742, 20);
INSERT INTO public.games VALUES (67, 660, 20);
INSERT INTO public.games VALUES (68, 12, 22);
INSERT INTO public.games VALUES (69, 358, 23);
INSERT INTO public.games VALUES (70, 829, 23);
INSERT INTO public.games VALUES (71, 782, 24);
INSERT INTO public.games VALUES (72, 807, 24);
INSERT INTO public.games VALUES (73, 791, 23);
INSERT INTO public.games VALUES (74, 331, 23);
INSERT INTO public.games VALUES (75, 847, 23);
INSERT INTO public.games VALUES (76, 437, 25);
INSERT INTO public.games VALUES (77, 134, 25);
INSERT INTO public.games VALUES (78, 516, 26);
INSERT INTO public.games VALUES (79, 413, 26);
INSERT INTO public.games VALUES (80, 463, 25);
INSERT INTO public.games VALUES (81, 397, 25);
INSERT INTO public.games VALUES (82, 647, 25);
INSERT INTO public.games VALUES (83, 856, 27);
INSERT INTO public.games VALUES (84, 822, 27);
INSERT INTO public.games VALUES (85, 492, 28);
INSERT INTO public.games VALUES (86, 394, 28);
INSERT INTO public.games VALUES (87, 651, 27);
INSERT INTO public.games VALUES (88, 590, 27);
INSERT INTO public.games VALUES (89, 917, 27);
INSERT INTO public.games VALUES (90, 145, 29);
INSERT INTO public.games VALUES (91, 346, 29);
INSERT INTO public.games VALUES (92, 675, 30);
INSERT INTO public.games VALUES (93, 745, 30);
INSERT INTO public.games VALUES (94, 641, 29);
INSERT INTO public.games VALUES (95, 26, 29);
INSERT INTO public.games VALUES (96, 138, 29);
INSERT INTO public.games VALUES (97, 273, 33);
INSERT INTO public.games VALUES (98, 1001, 33);
INSERT INTO public.games VALUES (99, 758, 34);
INSERT INTO public.games VALUES (100, 309, 34);
INSERT INTO public.games VALUES (101, 763, 33);
INSERT INTO public.games VALUES (102, 332, 33);
INSERT INTO public.games VALUES (103, 536, 33);
INSERT INTO public.games VALUES (104, 408, 35);
INSERT INTO public.games VALUES (105, 228, 35);
INSERT INTO public.games VALUES (106, 836, 36);
INSERT INTO public.games VALUES (107, 998, 36);
INSERT INTO public.games VALUES (108, 673, 35);
INSERT INTO public.games VALUES (109, 375, 35);
INSERT INTO public.games VALUES (110, 393, 35);
INSERT INTO public.games VALUES (111, 362, 37);
INSERT INTO public.games VALUES (112, 468, 37);
INSERT INTO public.games VALUES (113, 621, 38);
INSERT INTO public.games VALUES (114, 873, 38);
INSERT INTO public.games VALUES (115, 488, 37);
INSERT INTO public.games VALUES (116, 191, 37);
INSERT INTO public.games VALUES (117, 62, 37);
INSERT INTO public.games VALUES (118, 211, 39);
INSERT INTO public.games VALUES (119, 694, 39);
INSERT INTO public.games VALUES (120, 330, 40);
INSERT INTO public.games VALUES (121, 446, 40);
INSERT INTO public.games VALUES (122, 42, 39);
INSERT INTO public.games VALUES (123, 464, 39);
INSERT INTO public.games VALUES (124, 689, 39);
INSERT INTO public.games VALUES (125, 294, 41);
INSERT INTO public.games VALUES (126, 235, 41);
INSERT INTO public.games VALUES (127, 489, 42);
INSERT INTO public.games VALUES (128, 612, 42);
INSERT INTO public.games VALUES (129, 153, 41);
INSERT INTO public.games VALUES (130, 153, 41);
INSERT INTO public.games VALUES (131, 295, 41);
INSERT INTO public.games VALUES (132, 812, 43);
INSERT INTO public.games VALUES (133, 328, 43);
INSERT INTO public.games VALUES (134, 30, 44);
INSERT INTO public.games VALUES (135, 637, 44);
INSERT INTO public.games VALUES (136, 953, 43);
INSERT INTO public.games VALUES (137, 971, 43);
INSERT INTO public.games VALUES (138, 159, 43);
INSERT INTO public.games VALUES (139, 535, 45);
INSERT INTO public.games VALUES (140, 6, 45);
INSERT INTO public.games VALUES (141, 863, 46);
INSERT INTO public.games VALUES (142, 307, 46);
INSERT INTO public.games VALUES (143, 67, 45);
INSERT INTO public.games VALUES (144, 201, 45);
INSERT INTO public.games VALUES (145, 301, 45);
INSERT INTO public.games VALUES (146, 645, 47);
INSERT INTO public.games VALUES (147, 480, 47);
INSERT INTO public.games VALUES (148, 430, 48);
INSERT INTO public.games VALUES (149, 18, 48);
INSERT INTO public.games VALUES (150, 89, 47);
INSERT INTO public.games VALUES (151, 656, 47);
INSERT INTO public.games VALUES (152, 835, 47);
INSERT INTO public.games VALUES (153, 252, 49);
INSERT INTO public.games VALUES (154, 191, 49);
INSERT INTO public.games VALUES (155, 844, 50);
INSERT INTO public.games VALUES (156, 545, 50);
INSERT INTO public.games VALUES (157, 319, 49);
INSERT INTO public.games VALUES (158, 376, 49);
INSERT INTO public.games VALUES (159, 370, 49);
INSERT INTO public.games VALUES (160, 685, 51);
INSERT INTO public.games VALUES (161, 571, 51);
INSERT INTO public.games VALUES (162, 177, 52);
INSERT INTO public.games VALUES (163, 286, 52);
INSERT INTO public.games VALUES (164, 520, 51);
INSERT INTO public.games VALUES (165, 838, 51);
INSERT INTO public.games VALUES (166, 827, 51);
INSERT INTO public.games VALUES (167, 82, 53);
INSERT INTO public.games VALUES (168, 665, 53);
INSERT INTO public.games VALUES (169, 949, 54);
INSERT INTO public.games VALUES (170, 93, 54);
INSERT INTO public.games VALUES (171, 447, 53);
INSERT INTO public.games VALUES (172, 139, 53);
INSERT INTO public.games VALUES (173, 529, 53);
INSERT INTO public.games VALUES (174, 716, 55);
INSERT INTO public.games VALUES (175, 686, 55);
INSERT INTO public.games VALUES (176, 552, 56);
INSERT INTO public.games VALUES (177, 384, 56);
INSERT INTO public.games VALUES (178, 317, 55);
INSERT INTO public.games VALUES (179, 318, 55);
INSERT INTO public.games VALUES (180, 729, 55);
INSERT INTO public.games VALUES (181, 974, 57);
INSERT INTO public.games VALUES (182, 799, 57);
INSERT INTO public.games VALUES (183, 63, 58);
INSERT INTO public.games VALUES (184, 616, 58);
INSERT INTO public.games VALUES (185, 712, 57);
INSERT INTO public.games VALUES (186, 12, 57);
INSERT INTO public.games VALUES (187, 564, 57);
INSERT INTO public.games VALUES (188, 905, 59);
INSERT INTO public.games VALUES (189, 589, 59);
INSERT INTO public.games VALUES (190, 350, 60);
INSERT INTO public.games VALUES (191, 816, 60);
INSERT INTO public.games VALUES (192, 691, 59);
INSERT INTO public.games VALUES (193, 44, 59);
INSERT INTO public.games VALUES (194, 579, 59);
INSERT INTO public.games VALUES (195, 348, 61);
INSERT INTO public.games VALUES (196, 379, 61);
INSERT INTO public.games VALUES (197, 366, 62);
INSERT INTO public.games VALUES (198, 517, 62);
INSERT INTO public.games VALUES (199, 36, 61);
INSERT INTO public.games VALUES (200, 636, 61);
INSERT INTO public.games VALUES (201, 295, 61);
INSERT INTO public.games VALUES (202, 976, 63);
INSERT INTO public.games VALUES (203, 444, 63);
INSERT INTO public.games VALUES (204, 6, 64);
INSERT INTO public.games VALUES (205, 343, 64);
INSERT INTO public.games VALUES (206, 671, 63);
INSERT INTO public.games VALUES (207, 325, 63);
INSERT INTO public.games VALUES (208, 859, 63);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (20, 'user_1667019783682');
INSERT INTO public.users VALUES (21, 'user_1667019783681');
INSERT INTO public.users VALUES (22, 'natl');
INSERT INTO public.users VALUES (23, 'user_1667020092712');
INSERT INTO public.users VALUES (24, 'user_1667020092711');
INSERT INTO public.users VALUES (25, 'user_1667020201167');
INSERT INTO public.users VALUES (26, 'user_1667020201166');
INSERT INTO public.users VALUES (27, 'user_1667020221062');
INSERT INTO public.users VALUES (28, 'user_1667020221061');
INSERT INTO public.users VALUES (29, 'user_1667020339366');
INSERT INTO public.users VALUES (30, 'user_1667020339365');
INSERT INTO public.users VALUES (31, 'user_1667020447213');
INSERT INTO public.users VALUES (32, 'user_1667020447212');
INSERT INTO public.users VALUES (33, 'user_1667020464877');
INSERT INTO public.users VALUES (34, 'user_1667020464876');
INSERT INTO public.users VALUES (35, 'user_1667020509995');
INSERT INTO public.users VALUES (36, 'user_1667020509994');
INSERT INTO public.users VALUES (37, 'user_1667020528785');
INSERT INTO public.users VALUES (38, 'user_1667020528784');
INSERT INTO public.users VALUES (39, 'user_1667020536774');
INSERT INTO public.users VALUES (40, 'user_1667020536773');
INSERT INTO public.users VALUES (41, 'user_1667020542317');
INSERT INTO public.users VALUES (42, 'user_1667020542316');
INSERT INTO public.users VALUES (43, 'user_1667020551200');
INSERT INTO public.users VALUES (44, 'user_1667020551199');
INSERT INTO public.users VALUES (45, 'user_1667020555342');
INSERT INTO public.users VALUES (46, 'user_1667020555341');
INSERT INTO public.users VALUES (47, 'user_1667020558650');
INSERT INTO public.users VALUES (48, 'user_1667020558649');
INSERT INTO public.users VALUES (49, 'user_1667020811779');
INSERT INTO public.users VALUES (50, 'user_1667020811778');
INSERT INTO public.users VALUES (51, 'user_1667020817630');
INSERT INTO public.users VALUES (52, 'user_1667020817629');
INSERT INTO public.users VALUES (53, 'user_1667020821024');
INSERT INTO public.users VALUES (54, 'user_1667020821023');
INSERT INTO public.users VALUES (55, 'user_1667020824011');
INSERT INTO public.users VALUES (56, 'user_1667020824010');
INSERT INTO public.users VALUES (57, 'user_1667020827292');
INSERT INTO public.users VALUES (58, 'user_1667020827291');
INSERT INTO public.users VALUES (59, 'user_1667020843192');
INSERT INTO public.users VALUES (60, 'user_1667020843191');
INSERT INTO public.users VALUES (61, 'user_1667020846702');
INSERT INTO public.users VALUES (62, 'user_1667020846701');
INSERT INTO public.users VALUES (63, 'user_1667020853961');
INSERT INTO public.users VALUES (64, 'user_1667020853960');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 208, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 64, true);


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
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

