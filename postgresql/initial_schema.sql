--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: tiger; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tiger;


ALTER SCHEMA tiger OWNER TO postgres;

--
-- Name: tiger_data; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tiger_data;


ALTER SCHEMA tiger_data OWNER TO postgres;

--
-- Name: topology; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA topology;


ALTER SCHEMA topology OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: address_standardizer; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS address_standardizer WITH SCHEMA public;


--
-- Name: EXTENSION address_standardizer; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION address_standardizer IS 'Used to parse an address into constituent elements. Generally used to support geocoding address normalization step.';


--
-- Name: address_standardizer_data_us; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS address_standardizer_data_us WITH SCHEMA public;


--
-- Name: EXTENSION address_standardizer_data_us; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION address_standardizer_data_us IS 'Address Standardizer US dataset example';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


--
-- Name: postgis_sfcgal; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis_sfcgal WITH SCHEMA public;


--
-- Name: EXTENSION postgis_sfcgal; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_sfcgal IS 'PostGIS SFCGAL functions';


--
-- Name: postgis_tiger_geocoder; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;


--
-- Name: EXTENSION postgis_tiger_geocoder; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;


--
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: gyms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE gyms (
    id integer NOT NULL,
    gym_id character(50) NOT NULL,
    team_id integer NOT NULL,
    guard_pokemon_id integer NOT NULL,
    gym_points integer NOT NULL,
    enabled integer NOT NULL,
    latitude geometry(Point,26910),
    longitude geometry(Point,26910),
    last_modified time without time zone
);


ALTER TABLE gyms OWNER TO postgres;

--
-- Name: gyms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gyms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gyms_id_seq OWNER TO postgres;

--
-- Name: gyms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gyms_id_seq OWNED BY gyms.id;


--
-- Name: pokemons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pokemons (
    id integer NOT NULL,
    name character varying(50),
    type_1 character varying(50),
    type_2 character varying(50),
    total bigint,
    hp bigint,
    attack bigint,
    defense bigint,
    sp_attack bigint,
    sp_defense bigint,
    speed bigint,
    generation numeric(1,0),
    legendary boolean,
    pokemon_id integer
);


ALTER TABLE pokemons OWNER TO postgres;

--
-- Name: pokemons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pokemons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pokemons_id_seq OWNER TO postgres;

--
-- Name: pokemons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pokemons_id_seq OWNED BY pokemons.id;


--
-- Name: pokestops; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pokestops (
    id integer NOT NULL,
    pokestop_id character(50) NOT NULL,
    enabled integer NOT NULL,
    latitude geometry(Point,26910),
    longitude geometry(Point,26910),
    last_modified time without time zone
);


ALTER TABLE pokestops OWNER TO postgres;

--
-- Name: pokestops_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pokestops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pokestops_id_seq OWNER TO postgres;

--
-- Name: pokestops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pokestops_id_seq OWNED BY pokestops.id;


--
-- Name: gyms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gyms ALTER COLUMN id SET DEFAULT nextval('gyms_id_seq'::regclass);


--
-- Name: pokemons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemons ALTER COLUMN id SET DEFAULT nextval('pokemons_id_seq'::regclass);


--
-- Name: pokestops id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokestops ALTER COLUMN id SET DEFAULT nextval('pokestops_id_seq'::regclass);


--
-- Data for Name: gyms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gyms (id, gym_id, team_id, guard_pokemon_id, gym_points, enabled, latitude, longitude, last_modified) FROM stdin;
\.


--
-- Name: gyms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gyms_id_seq', 1, false);


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pokemons (id, name, type_1, type_2, total, hp, attack, defense, sp_attack, sp_defense, speed, generation, legendary, pokemon_id) FROM stdin;
1	Bulbasaur	Grass	Poison	318	45	49	49	65	65	45	1	f	1
2	Ivysaur	Grass	Poison	405	60	62	63	80	80	60	1	f	2
3	Venusaur	Grass	Poison	525	80	82	83	100	100	80	1	f	3
4	VenusaurMega Venusaur	Grass	Poison	625	80	100	123	122	120	80	1	f	3
5	Charmander	Fire		309	39	52	43	60	50	65	1	f	4
6	Charmeleon	Fire		405	58	64	58	80	65	80	1	f	5
7	Charizard	Fire	Flying	534	78	84	78	109	85	100	1	f	6
8	CharizardMega Charizard X	Fire	Dragon	634	78	130	111	130	85	100	1	f	6
9	CharizardMega Charizard Y	Fire	Flying	634	78	104	78	159	115	100	1	f	6
10	Squirtle	Water		314	44	48	65	50	64	43	1	f	7
11	Wartortle	Water		405	59	63	80	65	80	58	1	f	8
12	Blastoise	Water		530	79	83	100	85	105	78	1	f	9
13	BlastoiseMega Blastoise	Water		630	79	103	120	135	115	78	1	f	9
14	Caterpie	Bug		195	45	30	35	20	20	45	1	f	10
15	Metapod	Bug		205	50	20	55	25	25	30	1	f	11
16	Butterfree	Bug	Flying	395	60	45	50	90	80	70	1	f	12
17	Weedle	Bug	Poison	195	40	35	30	20	20	50	1	f	13
18	Kakuna	Bug	Poison	205	45	25	50	25	25	35	1	f	14
19	Beedrill	Bug	Poison	395	65	90	40	45	80	75	1	f	15
20	BeedrillMega Beedrill	Bug	Poison	495	65	150	40	15	80	145	1	f	15
21	Pidgey	Normal	Flying	251	40	45	40	35	35	56	1	f	16
22	Pidgeotto	Normal	Flying	349	63	60	55	50	50	71	1	f	17
23	Pidgeot	Normal	Flying	479	83	80	75	70	70	101	1	f	18
24	PidgeotMega Pidgeot	Normal	Flying	579	83	80	80	135	80	121	1	f	18
25	Rattata	Normal		253	30	56	35	25	35	72	1	f	19
26	Raticate	Normal		413	55	81	60	50	70	97	1	f	20
27	Spearow	Normal	Flying	262	40	60	30	31	31	70	1	f	21
28	Fearow	Normal	Flying	442	65	90	65	61	61	100	1	f	22
29	Ekans	Poison		288	35	60	44	40	54	55	1	f	23
30	Arbok	Poison		438	60	85	69	65	79	80	1	f	24
31	Pikachu	Electric		320	35	55	40	50	50	90	1	f	25
32	Raichu	Electric		485	60	90	55	90	80	110	1	f	26
33	Sandshrew	Ground		300	50	75	85	20	30	40	1	f	27
34	Sandslash	Ground		450	75	100	110	45	55	65	1	f	28
35	Nidoran♀	Poison		275	55	47	52	40	40	41	1	f	29
36	Nidorina	Poison		365	70	62	67	55	55	56	1	f	30
37	Nidoqueen	Poison	Ground	505	90	92	87	75	85	76	1	f	31
38	Nidoran♂	Poison		273	46	57	40	40	40	50	1	f	32
39	Nidorino	Poison		365	61	72	57	55	55	65	1	f	33
40	Nidoking	Poison	Ground	505	81	102	77	85	75	85	1	f	34
41	Clefairy	Fairy		323	70	45	48	60	65	35	1	f	35
42	Clefable	Fairy		483	95	70	73	95	90	60	1	f	36
43	Vulpix	Fire		299	38	41	40	50	65	65	1	f	37
44	Ninetales	Fire		505	73	76	75	81	100	100	1	f	38
45	Jigglypuff	Normal	Fairy	270	115	45	20	45	25	20	1	f	39
46	Wigglytuff	Normal	Fairy	435	140	70	45	85	50	45	1	f	40
47	Zubat	Poison	Flying	245	40	45	35	30	40	55	1	f	41
48	Golbat	Poison	Flying	455	75	80	70	65	75	90	1	f	42
49	Oddish	Grass	Poison	320	45	50	55	75	65	30	1	f	43
50	Gloom	Grass	Poison	395	60	65	70	85	75	40	1	f	44
51	Vileplume	Grass	Poison	490	75	80	85	110	90	50	1	f	45
52	Paras	Bug	Grass	285	35	70	55	45	55	25	1	f	46
53	Parasect	Bug	Grass	405	60	95	80	60	80	30	1	f	47
54	Venonat	Bug	Poison	305	60	55	50	40	55	45	1	f	48
55	Venomoth	Bug	Poison	450	70	65	60	90	75	90	1	f	49
56	Diglett	Ground		265	10	55	25	35	45	95	1	f	50
57	Dugtrio	Ground		405	35	80	50	50	70	120	1	f	51
58	Meowth	Normal		290	40	45	35	40	40	90	1	f	52
59	Persian	Normal		440	65	70	60	65	65	115	1	f	53
60	Psyduck	Water		320	50	52	48	65	50	55	1	f	54
61	Golduck	Water		500	80	82	78	95	80	85	1	f	55
62	Mankey	Fighting		305	40	80	35	35	45	70	1	f	56
63	Primeape	Fighting		455	65	105	60	60	70	95	1	f	57
64	Growlithe	Fire		350	55	70	45	70	50	60	1	f	58
65	Arcanine	Fire		555	90	110	80	100	80	95	1	f	59
66	Poliwag	Water		300	40	50	40	40	40	90	1	f	60
67	Poliwhirl	Water		385	65	65	65	50	50	90	1	f	61
68	Poliwrath	Water	Fighting	510	90	95	95	70	90	70	1	f	62
69	Abra	Psychic		310	25	20	15	105	55	90	1	f	63
70	Kadabra	Psychic		400	40	35	30	120	70	105	1	f	64
71	Alakazam	Psychic		500	55	50	45	135	95	120	1	f	65
72	AlakazamMega Alakazam	Psychic		590	55	50	65	175	95	150	1	f	65
73	Machop	Fighting		305	70	80	50	35	35	35	1	f	66
74	Machoke	Fighting		405	80	100	70	50	60	45	1	f	67
75	Machamp	Fighting		505	90	130	80	65	85	55	1	f	68
76	Bellsprout	Grass	Poison	300	50	75	35	70	30	40	1	f	69
77	Weepinbell	Grass	Poison	390	65	90	50	85	45	55	1	f	70
78	Victreebel	Grass	Poison	490	80	105	65	100	70	70	1	f	71
79	Tentacool	Water	Poison	335	40	40	35	50	100	70	1	f	72
80	Tentacruel	Water	Poison	515	80	70	65	80	120	100	1	f	73
81	Geodude	Rock	Ground	300	40	80	100	30	30	20	1	f	74
82	Graveler	Rock	Ground	390	55	95	115	45	45	35	1	f	75
83	Golem	Rock	Ground	495	80	120	130	55	65	45	1	f	76
84	Ponyta	Fire		410	50	85	55	65	65	90	1	f	77
85	Rapidash	Fire		500	65	100	70	80	80	105	1	f	78
86	Slowpoke	Water	Psychic	315	90	65	65	40	40	15	1	f	79
87	Slowbro	Water	Psychic	490	95	75	110	100	80	30	1	f	80
88	SlowbroMega Slowbro	Water	Psychic	590	95	75	180	130	80	30	1	f	80
89	Magnemite	Electric	Steel	325	25	35	70	95	55	45	1	f	81
90	Magneton	Electric	Steel	465	50	60	95	120	70	70	1	f	82
91	Farfetch'd	Normal	Flying	352	52	65	55	58	62	60	1	f	83
92	Doduo	Normal	Flying	310	35	85	45	35	35	75	1	f	84
93	Dodrio	Normal	Flying	460	60	110	70	60	60	100	1	f	85
94	Seel	Water		325	65	45	55	45	70	45	1	f	86
95	Dewgong	Water	Ice	475	90	70	80	70	95	70	1	f	87
96	Grimer	Poison		325	80	80	50	40	50	25	1	f	88
97	Muk	Poison		500	105	105	75	65	100	50	1	f	89
98	Shellder	Water		305	30	65	100	45	25	40	1	f	90
99	Cloyster	Water	Ice	525	50	95	180	85	45	70	1	f	91
100	Gastly	Ghost	Poison	310	30	35	30	100	35	80	1	f	92
101	Haunter	Ghost	Poison	405	45	50	45	115	55	95	1	f	93
102	Gengar	Ghost	Poison	500	60	65	60	130	75	110	1	f	94
103	GengarMega Gengar	Ghost	Poison	600	60	65	80	170	95	130	1	f	94
104	Onix	Rock	Ground	385	35	45	160	30	45	70	1	f	95
105	Drowzee	Psychic		328	60	48	45	43	90	42	1	f	96
106	Hypno	Psychic		483	85	73	70	73	115	67	1	f	97
107	Krabby	Water		325	30	105	90	25	25	50	1	f	98
108	Kingler	Water		475	55	130	115	50	50	75	1	f	99
109	Voltorb	Electric		330	40	30	50	55	55	100	1	f	100
110	Electrode	Electric		480	60	50	70	80	80	140	1	f	101
111	Exeggcute	Grass	Psychic	325	60	40	80	60	45	40	1	f	102
112	Exeggutor	Grass	Psychic	520	95	95	85	125	65	55	1	f	103
113	Cubone	Ground		320	50	50	95	40	50	35	1	f	104
114	Marowak	Ground		425	60	80	110	50	80	45	1	f	105
115	Hitmonlee	Fighting		455	50	120	53	35	110	87	1	f	106
116	Hitmonchan	Fighting		455	50	105	79	35	110	76	1	f	107
117	Lickitung	Normal		385	90	55	75	60	75	30	1	f	108
118	Koffing	Poison		340	40	65	95	60	45	35	1	f	109
119	Weezing	Poison		490	65	90	120	85	70	60	1	f	110
120	Rhyhorn	Ground	Rock	345	80	85	95	30	30	25	1	f	111
121	Rhydon	Ground	Rock	485	105	130	120	45	45	40	1	f	112
122	Chansey	Normal		450	250	5	5	35	105	50	1	f	113
123	Tangela	Grass		435	65	55	115	100	40	60	1	f	114
124	Kangaskhan	Normal		490	105	95	80	40	80	90	1	f	115
125	KangaskhanMega Kangaskhan	Normal		590	105	125	100	60	100	100	1	f	115
126	Horsea	Water		295	30	40	70	70	25	60	1	f	116
127	Seadra	Water		440	55	65	95	95	45	85	1	f	117
128	Goldeen	Water		320	45	67	60	35	50	63	1	f	118
129	Seaking	Water		450	80	92	65	65	80	68	1	f	119
130	Staryu	Water		340	30	45	55	70	55	85	1	f	120
131	Starmie	Water	Psychic	520	60	75	85	100	85	115	1	f	121
132	Mr. Mime	Psychic	Fairy	460	40	45	65	100	120	90	1	f	122
133	Scyther	Bug	Flying	500	70	110	80	55	80	105	1	f	123
134	Jynx	Ice	Psychic	455	65	50	35	115	95	95	1	f	124
135	Electabuzz	Electric		490	65	83	57	95	85	105	1	f	125
136	Magmar	Fire		495	65	95	57	100	85	93	1	f	126
137	Pinsir	Bug		500	65	125	100	55	70	85	1	f	127
138	PinsirMega Pinsir	Bug	Flying	600	65	155	120	65	90	105	1	f	127
139	Tauros	Normal		490	75	100	95	40	70	110	1	f	128
140	Magikarp	Water		200	20	10	55	15	20	80	1	f	129
141	Gyarados	Water	Flying	540	95	125	79	60	100	81	1	f	130
142	GyaradosMega Gyarados	Water	Dark	640	95	155	109	70	130	81	1	f	130
143	Lapras	Water	Ice	535	130	85	80	85	95	60	1	f	131
144	Ditto	Normal		288	48	48	48	48	48	48	1	f	132
145	Eevee	Normal		325	55	55	50	45	65	55	1	f	133
146	Vaporeon	Water		525	130	65	60	110	95	65	1	f	134
147	Jolteon	Electric		525	65	65	60	110	95	130	1	f	135
148	Flareon	Fire		525	65	130	60	95	110	65	1	f	136
149	Porygon	Normal		395	65	60	70	85	75	40	1	f	137
150	Omanyte	Rock	Water	355	35	40	100	90	55	35	1	f	138
151	Omastar	Rock	Water	495	70	60	125	115	70	55	1	f	139
152	Kabuto	Rock	Water	355	30	80	90	55	45	55	1	f	140
153	Kabutops	Rock	Water	495	60	115	105	65	70	80	1	f	141
154	Aerodactyl	Rock	Flying	515	80	105	65	60	75	130	1	f	142
155	AerodactylMega Aerodactyl	Rock	Flying	615	80	135	85	70	95	150	1	f	142
156	Snorlax	Normal		540	160	110	65	65	110	30	1	f	143
157	Articuno	Ice	Flying	580	90	85	100	95	125	85	1	t	144
158	Zapdos	Electric	Flying	580	90	90	85	125	90	100	1	t	145
159	Moltres	Fire	Flying	580	90	100	90	125	85	90	1	t	146
160	Dratini	Dragon		300	41	64	45	50	50	50	1	f	147
161	Dragonair	Dragon		420	61	84	65	70	70	70	1	f	148
162	Dragonite	Dragon	Flying	600	91	134	95	100	100	80	1	f	149
163	Mewtwo	Psychic		680	106	110	90	154	90	130	1	t	150
164	MewtwoMega Mewtwo X	Psychic	Fighting	780	106	190	100	154	100	130	1	t	150
165	MewtwoMega Mewtwo Y	Psychic		780	106	150	70	194	120	140	1	t	150
166	Mew	Psychic		600	100	100	100	100	100	100	1	f	151
167	Chikorita	Grass		318	45	49	65	49	65	45	2	f	152
168	Bayleef	Grass		405	60	62	80	63	80	60	2	f	153
169	Meganium	Grass		525	80	82	100	83	100	80	2	f	154
170	Cyndaquil	Fire		309	39	52	43	60	50	65	2	f	155
171	Quilava	Fire		405	58	64	58	80	65	80	2	f	156
172	Typhlosion	Fire		534	78	84	78	109	85	100	2	f	157
173	Totodile	Water		314	50	65	64	44	48	43	2	f	158
174	Croconaw	Water		405	65	80	80	59	63	58	2	f	159
175	Feraligatr	Water		530	85	105	100	79	83	78	2	f	160
176	Sentret	Normal		215	35	46	34	35	45	20	2	f	161
177	Furret	Normal		415	85	76	64	45	55	90	2	f	162
178	Hoothoot	Normal	Flying	262	60	30	30	36	56	50	2	f	163
179	Noctowl	Normal	Flying	442	100	50	50	76	96	70	2	f	164
180	Ledyba	Bug	Flying	265	40	20	30	40	80	55	2	f	165
181	Ledian	Bug	Flying	390	55	35	50	55	110	85	2	f	166
182	Spinarak	Bug	Poison	250	40	60	40	40	40	30	2	f	167
183	Ariados	Bug	Poison	390	70	90	70	60	60	40	2	f	168
184	Crobat	Poison	Flying	535	85	90	80	70	80	130	2	f	169
185	Chinchou	Water	Electric	330	75	38	38	56	56	67	2	f	170
186	Lanturn	Water	Electric	460	125	58	58	76	76	67	2	f	171
187	Pichu	Electric		205	20	40	15	35	35	60	2	f	172
188	Cleffa	Fairy		218	50	25	28	45	55	15	2	f	173
189	Igglybuff	Normal	Fairy	210	90	30	15	40	20	15	2	f	174
190	Togepi	Fairy		245	35	20	65	40	65	20	2	f	175
191	Togetic	Fairy	Flying	405	55	40	85	80	105	40	2	f	176
192	Natu	Psychic	Flying	320	40	50	45	70	45	70	2	f	177
193	Xatu	Psychic	Flying	470	65	75	70	95	70	95	2	f	178
194	Mareep	Electric		280	55	40	40	65	45	35	2	f	179
195	Flaaffy	Electric		365	70	55	55	80	60	45	2	f	180
196	Ampharos	Electric		510	90	75	85	115	90	55	2	f	181
197	AmpharosMega Ampharos	Electric	Dragon	610	90	95	105	165	110	45	2	f	181
198	Bellossom	Grass		490	75	80	95	90	100	50	2	f	182
199	Marill	Water	Fairy	250	70	20	50	20	50	40	2	f	183
200	Azumarill	Water	Fairy	420	100	50	80	60	80	50	2	f	184
201	Sudowoodo	Rock		410	70	100	115	30	65	30	2	f	185
202	Politoed	Water		500	90	75	75	90	100	70	2	f	186
203	Hoppip	Grass	Flying	250	35	35	40	35	55	50	2	f	187
204	Skiploom	Grass	Flying	340	55	45	50	45	65	80	2	f	188
205	Jumpluff	Grass	Flying	460	75	55	70	55	95	110	2	f	189
206	Aipom	Normal		360	55	70	55	40	55	85	2	f	190
207	Sunkern	Grass		180	30	30	30	30	30	30	2	f	191
208	Sunflora	Grass		425	75	75	55	105	85	30	2	f	192
209	Yanma	Bug	Flying	390	65	65	45	75	45	95	2	f	193
210	Wooper	Water	Ground	210	55	45	45	25	25	15	2	f	194
211	Quagsire	Water	Ground	430	95	85	85	65	65	35	2	f	195
212	Espeon	Psychic		525	65	65	60	130	95	110	2	f	196
213	Umbreon	Dark		525	95	65	110	60	130	65	2	f	197
214	Murkrow	Dark	Flying	405	60	85	42	85	42	91	2	f	198
215	Slowking	Water	Psychic	490	95	75	80	100	110	30	2	f	199
216	Misdreavus	Ghost		435	60	60	60	85	85	85	2	f	200
217	Unown	Psychic		336	48	72	48	72	48	48	2	f	201
218	Wobbuffet	Psychic		405	190	33	58	33	58	33	2	f	202
219	Girafarig	Normal	Psychic	455	70	80	65	90	65	85	2	f	203
220	Pineco	Bug		290	50	65	90	35	35	15	2	f	204
221	Forretress	Bug	Steel	465	75	90	140	60	60	40	2	f	205
222	Dunsparce	Normal		415	100	70	70	65	65	45	2	f	206
223	Gligar	Ground	Flying	430	65	75	105	35	65	85	2	f	207
224	Steelix	Steel	Ground	510	75	85	200	55	65	30	2	f	208
225	SteelixMega Steelix	Steel	Ground	610	75	125	230	55	95	30	2	f	208
226	Snubbull	Fairy		300	60	80	50	40	40	30	2	f	209
227	Granbull	Fairy		450	90	120	75	60	60	45	2	f	210
228	Qwilfish	Water	Poison	430	65	95	75	55	55	85	2	f	211
229	Scizor	Bug	Steel	500	70	130	100	55	80	65	2	f	212
230	ScizorMega Scizor	Bug	Steel	600	70	150	140	65	100	75	2	f	212
231	Shuckle	Bug	Rock	505	20	10	230	10	230	5	2	f	213
232	Heracross	Bug	Fighting	500	80	125	75	40	95	85	2	f	214
233	HeracrossMega Heracross	Bug	Fighting	600	80	185	115	40	105	75	2	f	214
234	Sneasel	Dark	Ice	430	55	95	55	35	75	115	2	f	215
235	Teddiursa	Normal		330	60	80	50	50	50	40	2	f	216
236	Ursaring	Normal		500	90	130	75	75	75	55	2	f	217
237	Slugma	Fire		250	40	40	40	70	40	20	2	f	218
238	Magcargo	Fire	Rock	410	50	50	120	80	80	30	2	f	219
239	Swinub	Ice	Ground	250	50	50	40	30	30	50	2	f	220
240	Piloswine	Ice	Ground	450	100	100	80	60	60	50	2	f	221
241	Corsola	Water	Rock	380	55	55	85	65	85	35	2	f	222
242	Remoraid	Water		300	35	65	35	65	35	65	2	f	223
243	Octillery	Water		480	75	105	75	105	75	45	2	f	224
244	Delibird	Ice	Flying	330	45	55	45	65	45	75	2	f	225
245	Mantine	Water	Flying	465	65	40	70	80	140	70	2	f	226
246	Skarmory	Steel	Flying	465	65	80	140	40	70	70	2	f	227
247	Houndour	Dark	Fire	330	45	60	30	80	50	65	2	f	228
248	Houndoom	Dark	Fire	500	75	90	50	110	80	95	2	f	229
249	HoundoomMega Houndoom	Dark	Fire	600	75	90	90	140	90	115	2	f	229
250	Kingdra	Water	Dragon	540	75	95	95	95	95	85	2	f	230
251	Phanpy	Ground		330	90	60	60	40	40	40	2	f	231
252	Donphan	Ground		500	90	120	120	60	60	50	2	f	232
253	Porygon2	Normal		515	85	80	90	105	95	60	2	f	233
254	Stantler	Normal		465	73	95	62	85	65	85	2	f	234
255	Smeargle	Normal		250	55	20	35	20	45	75	2	f	235
256	Tyrogue	Fighting		210	35	35	35	35	35	35	2	f	236
257	Hitmontop	Fighting		455	50	95	95	35	110	70	2	f	237
258	Smoochum	Ice	Psychic	305	45	30	15	85	65	65	2	f	238
259	Elekid	Electric		360	45	63	37	65	55	95	2	f	239
260	Magby	Fire		365	45	75	37	70	55	83	2	f	240
261	Miltank	Normal		490	95	80	105	40	70	100	2	f	241
262	Blissey	Normal		540	255	10	10	75	135	55	2	f	242
263	Raikou	Electric		580	90	85	75	115	100	115	2	t	243
264	Entei	Fire		580	115	115	85	90	75	100	2	t	244
265	Suicune	Water		580	100	75	115	90	115	85	2	t	245
266	Larvitar	Rock	Ground	300	50	64	50	45	50	41	2	f	246
267	Pupitar	Rock	Ground	410	70	84	70	65	70	51	2	f	247
268	Tyranitar	Rock	Dark	600	100	134	110	95	100	61	2	f	248
269	TyranitarMega Tyranitar	Rock	Dark	700	100	164	150	95	120	71	2	f	248
270	Lugia	Psychic	Flying	680	106	90	130	90	154	110	2	t	249
271	Ho-oh	Fire	Flying	680	106	130	90	110	154	90	2	t	250
272	Celebi	Psychic	Grass	600	100	100	100	100	100	100	2	f	251
273	Treecko	Grass		310	40	45	35	65	55	70	3	f	252
274	Grovyle	Grass		405	50	65	45	85	65	95	3	f	253
275	Sceptile	Grass		530	70	85	65	105	85	120	3	f	254
276	SceptileMega Sceptile	Grass	Dragon	630	70	110	75	145	85	145	3	f	254
277	Torchic	Fire		310	45	60	40	70	50	45	3	f	255
278	Combusken	Fire	Fighting	405	60	85	60	85	60	55	3	f	256
279	Blaziken	Fire	Fighting	530	80	120	70	110	70	80	3	f	257
280	BlazikenMega Blaziken	Fire	Fighting	630	80	160	80	130	80	100	3	f	257
281	Mudkip	Water		310	50	70	50	50	50	40	3	f	258
282	Marshtomp	Water	Ground	405	70	85	70	60	70	50	3	f	259
283	Swampert	Water	Ground	535	100	110	90	85	90	60	3	f	260
284	SwampertMega Swampert	Water	Ground	635	100	150	110	95	110	70	3	f	260
285	Poochyena	Dark		220	35	55	35	30	30	35	3	f	261
286	Mightyena	Dark		420	70	90	70	60	60	70	3	f	262
287	Zigzagoon	Normal		240	38	30	41	30	41	60	3	f	263
288	Linoone	Normal		420	78	70	61	50	61	100	3	f	264
289	Wurmple	Bug		195	45	45	35	20	30	20	3	f	265
290	Silcoon	Bug		205	50	35	55	25	25	15	3	f	266
291	Beautifly	Bug	Flying	395	60	70	50	100	50	65	3	f	267
292	Cascoon	Bug		205	50	35	55	25	25	15	3	f	268
293	Dustox	Bug	Poison	385	60	50	70	50	90	65	3	f	269
294	Lotad	Water	Grass	220	40	30	30	40	50	30	3	f	270
295	Lombre	Water	Grass	340	60	50	50	60	70	50	3	f	271
296	Ludicolo	Water	Grass	480	80	70	70	90	100	70	3	f	272
297	Seedot	Grass		220	40	40	50	30	30	30	3	f	273
298	Nuzleaf	Grass	Dark	340	70	70	40	60	40	60	3	f	274
299	Shiftry	Grass	Dark	480	90	100	60	90	60	80	3	f	275
300	Taillow	Normal	Flying	270	40	55	30	30	30	85	3	f	276
301	Swellow	Normal	Flying	430	60	85	60	50	50	125	3	f	277
302	Wingull	Water	Flying	270	40	30	30	55	30	85	3	f	278
303	Pelipper	Water	Flying	430	60	50	100	85	70	65	3	f	279
304	Ralts	Psychic	Fairy	198	28	25	25	45	35	40	3	f	280
305	Kirlia	Psychic	Fairy	278	38	35	35	65	55	50	3	f	281
306	Gardevoir	Psychic	Fairy	518	68	65	65	125	115	80	3	f	282
307	GardevoirMega Gardevoir	Psychic	Fairy	618	68	85	65	165	135	100	3	f	282
308	Surskit	Bug	Water	269	40	30	32	50	52	65	3	f	283
309	Masquerain	Bug	Flying	414	70	60	62	80	82	60	3	f	284
310	Shroomish	Grass		295	60	40	60	40	60	35	3	f	285
311	Breloom	Grass	Fighting	460	60	130	80	60	60	70	3	f	286
312	Slakoth	Normal		280	60	60	60	35	35	30	3	f	287
313	Vigoroth	Normal		440	80	80	80	55	55	90	3	f	288
314	Slaking	Normal		670	150	160	100	95	65	100	3	f	289
315	Nincada	Bug	Ground	266	31	45	90	30	30	40	3	f	290
316	Ninjask	Bug	Flying	456	61	90	45	50	50	160	3	f	291
317	Shedinja	Bug	Ghost	236	1	90	45	30	30	40	3	f	292
318	Whismur	Normal		240	64	51	23	51	23	28	3	f	293
319	Loudred	Normal		360	84	71	43	71	43	48	3	f	294
320	Exploud	Normal		490	104	91	63	91	73	68	3	f	295
321	Makuhita	Fighting		237	72	60	30	20	30	25	3	f	296
322	Hariyama	Fighting		474	144	120	60	40	60	50	3	f	297
323	Azurill	Normal	Fairy	190	50	20	40	20	40	20	3	f	298
324	Nosepass	Rock		375	30	45	135	45	90	30	3	f	299
325	Skitty	Normal		260	50	45	45	35	35	50	3	f	300
326	Delcatty	Normal		380	70	65	65	55	55	70	3	f	301
327	Sableye	Dark	Ghost	380	50	75	75	65	65	50	3	f	302
328	SableyeMega Sableye	Dark	Ghost	480	50	85	125	85	115	20	3	f	302
329	Mawile	Steel	Fairy	380	50	85	85	55	55	50	3	f	303
330	MawileMega Mawile	Steel	Fairy	480	50	105	125	55	95	50	3	f	303
331	Aron	Steel	Rock	330	50	70	100	40	40	30	3	f	304
332	Lairon	Steel	Rock	430	60	90	140	50	50	40	3	f	305
333	Aggron	Steel	Rock	530	70	110	180	60	60	50	3	f	306
334	AggronMega Aggron	Steel		630	70	140	230	60	80	50	3	f	306
335	Meditite	Fighting	Psychic	280	30	40	55	40	55	60	3	f	307
336	Medicham	Fighting	Psychic	410	60	60	75	60	75	80	3	f	308
337	MedichamMega Medicham	Fighting	Psychic	510	60	100	85	80	85	100	3	f	308
338	Electrike	Electric		295	40	45	40	65	40	65	3	f	309
339	Manectric	Electric		475	70	75	60	105	60	105	3	f	310
340	ManectricMega Manectric	Electric		575	70	75	80	135	80	135	3	f	310
341	Plusle	Electric		405	60	50	40	85	75	95	3	f	311
342	Minun	Electric		405	60	40	50	75	85	95	3	f	312
343	Volbeat	Bug		400	65	73	55	47	75	85	3	f	313
344	Illumise	Bug		400	65	47	55	73	75	85	3	f	314
345	Roselia	Grass	Poison	400	50	60	45	100	80	65	3	f	315
346	Gulpin	Poison		302	70	43	53	43	53	40	3	f	316
347	Swalot	Poison		467	100	73	83	73	83	55	3	f	317
348	Carvanha	Water	Dark	305	45	90	20	65	20	65	3	f	318
349	Sharpedo	Water	Dark	460	70	120	40	95	40	95	3	f	319
350	SharpedoMega Sharpedo	Water	Dark	560	70	140	70	110	65	105	3	f	319
351	Wailmer	Water		400	130	70	35	70	35	60	3	f	320
352	Wailord	Water		500	170	90	45	90	45	60	3	f	321
353	Numel	Fire	Ground	305	60	60	40	65	45	35	3	f	322
354	Camerupt	Fire	Ground	460	70	100	70	105	75	40	3	f	323
355	CameruptMega Camerupt	Fire	Ground	560	70	120	100	145	105	20	3	f	323
356	Torkoal	Fire		470	70	85	140	85	70	20	3	f	324
357	Spoink	Psychic		330	60	25	35	70	80	60	3	f	325
358	Grumpig	Psychic		470	80	45	65	90	110	80	3	f	326
359	Spinda	Normal		360	60	60	60	60	60	60	3	f	327
360	Trapinch	Ground		290	45	100	45	45	45	10	3	f	328
361	Vibrava	Ground	Dragon	340	50	70	50	50	50	70	3	f	329
362	Flygon	Ground	Dragon	520	80	100	80	80	80	100	3	f	330
363	Cacnea	Grass		335	50	85	40	85	40	35	3	f	331
364	Cacturne	Grass	Dark	475	70	115	60	115	60	55	3	f	332
365	Swablu	Normal	Flying	310	45	40	60	40	75	50	3	f	333
366	Altaria	Dragon	Flying	490	75	70	90	70	105	80	3	f	334
367	AltariaMega Altaria	Dragon	Fairy	590	75	110	110	110	105	80	3	f	334
368	Zangoose	Normal		458	73	115	60	60	60	90	3	f	335
369	Seviper	Poison		458	73	100	60	100	60	65	3	f	336
370	Lunatone	Rock	Psychic	440	70	55	65	95	85	70	3	f	337
371	Solrock	Rock	Psychic	440	70	95	85	55	65	70	3	f	338
372	Barboach	Water	Ground	288	50	48	43	46	41	60	3	f	339
373	Whiscash	Water	Ground	468	110	78	73	76	71	60	3	f	340
374	Corphish	Water		308	43	80	65	50	35	35	3	f	341
375	Crawdaunt	Water	Dark	468	63	120	85	90	55	55	3	f	342
376	Baltoy	Ground	Psychic	300	40	40	55	40	70	55	3	f	343
377	Claydol	Ground	Psychic	500	60	70	105	70	120	75	3	f	344
378	Lileep	Rock	Grass	355	66	41	77	61	87	23	3	f	345
379	Cradily	Rock	Grass	495	86	81	97	81	107	43	3	f	346
380	Anorith	Rock	Bug	355	45	95	50	40	50	75	3	f	347
381	Armaldo	Rock	Bug	495	75	125	100	70	80	45	3	f	348
382	Feebas	Water		200	20	15	20	10	55	80	3	f	349
383	Milotic	Water		540	95	60	79	100	125	81	3	f	350
384	Castform	Normal		420	70	70	70	70	70	70	3	f	351
385	Kecleon	Normal		440	60	90	70	60	120	40	3	f	352
386	Shuppet	Ghost		295	44	75	35	63	33	45	3	f	353
387	Banette	Ghost		455	64	115	65	83	63	65	3	f	354
388	BanetteMega Banette	Ghost		555	64	165	75	93	83	75	3	f	354
389	Duskull	Ghost		295	20	40	90	30	90	25	3	f	355
390	Dusclops	Ghost		455	40	70	130	60	130	25	3	f	356
391	Tropius	Grass	Flying	460	99	68	83	72	87	51	3	f	357
392	Chimecho	Psychic		425	65	50	70	95	80	65	3	f	358
393	Absol	Dark		465	65	130	60	75	60	75	3	f	359
394	AbsolMega Absol	Dark		565	65	150	60	115	60	115	3	f	359
395	Wynaut	Psychic		260	95	23	48	23	48	23	3	f	360
396	Snorunt	Ice		300	50	50	50	50	50	50	3	f	361
397	Glalie	Ice		480	80	80	80	80	80	80	3	f	362
398	GlalieMega Glalie	Ice		580	80	120	80	120	80	100	3	f	362
399	Spheal	Ice	Water	290	70	40	50	55	50	25	3	f	363
400	Sealeo	Ice	Water	410	90	60	70	75	70	45	3	f	364
401	Walrein	Ice	Water	530	110	80	90	95	90	65	3	f	365
402	Clamperl	Water		345	35	64	85	74	55	32	3	f	366
403	Huntail	Water		485	55	104	105	94	75	52	3	f	367
404	Gorebyss	Water		485	55	84	105	114	75	52	3	f	368
405	Relicanth	Water	Rock	485	100	90	130	45	65	55	3	f	369
406	Luvdisc	Water		330	43	30	55	40	65	97	3	f	370
407	Bagon	Dragon		300	45	75	60	40	30	50	3	f	371
408	Shelgon	Dragon		420	65	95	100	60	50	50	3	f	372
409	Salamence	Dragon	Flying	600	95	135	80	110	80	100	3	f	373
410	SalamenceMega Salamence	Dragon	Flying	700	95	145	130	120	90	120	3	f	373
411	Beldum	Steel	Psychic	300	40	55	80	35	60	30	3	f	374
412	Metang	Steel	Psychic	420	60	75	100	55	80	50	3	f	375
413	Metagross	Steel	Psychic	600	80	135	130	95	90	70	3	f	376
414	MetagrossMega Metagross	Steel	Psychic	700	80	145	150	105	110	110	3	f	376
415	Regirock	Rock		580	80	100	200	50	100	50	3	t	377
416	Regice	Ice		580	80	50	100	100	200	50	3	t	378
417	Registeel	Steel		580	80	75	150	75	150	50	3	t	379
418	Latias	Dragon	Psychic	600	80	80	90	110	130	110	3	t	380
419	LatiasMega Latias	Dragon	Psychic	700	80	100	120	140	150	110	3	t	380
420	Latios	Dragon	Psychic	600	80	90	80	130	110	110	3	t	381
421	LatiosMega Latios	Dragon	Psychic	700	80	130	100	160	120	110	3	t	381
422	Kyogre	Water		670	100	100	90	150	140	90	3	t	382
423	KyogrePrimal Kyogre	Water		770	100	150	90	180	160	90	3	t	382
424	Groudon	Ground		670	100	150	140	100	90	90	3	t	383
425	GroudonPrimal Groudon	Ground	Fire	770	100	180	160	150	90	90	3	t	383
426	Rayquaza	Dragon	Flying	680	105	150	90	150	90	95	3	t	384
427	RayquazaMega Rayquaza	Dragon	Flying	780	105	180	100	180	100	115	3	t	384
428	Jirachi	Steel	Psychic	600	100	100	100	100	100	100	3	t	385
429	DeoxysNormal Forme	Psychic		600	50	150	50	150	50	150	3	t	386
430	DeoxysAttack Forme	Psychic		600	50	180	20	180	20	150	3	t	386
431	DeoxysDefense Forme	Psychic		600	50	70	160	70	160	90	3	t	386
432	DeoxysSpeed Forme	Psychic		600	50	95	90	95	90	180	3	t	386
433	Turtwig	Grass		318	55	68	64	45	55	31	4	f	387
434	Grotle	Grass		405	75	89	85	55	65	36	4	f	388
435	Torterra	Grass	Ground	525	95	109	105	75	85	56	4	f	389
436	Chimchar	Fire		309	44	58	44	58	44	61	4	f	390
437	Monferno	Fire	Fighting	405	64	78	52	78	52	81	4	f	391
438	Infernape	Fire	Fighting	534	76	104	71	104	71	108	4	f	392
439	Piplup	Water		314	53	51	53	61	56	40	4	f	393
440	Prinplup	Water		405	64	66	68	81	76	50	4	f	394
441	Empoleon	Water	Steel	530	84	86	88	111	101	60	4	f	395
442	Starly	Normal	Flying	245	40	55	30	30	30	60	4	f	396
443	Staravia	Normal	Flying	340	55	75	50	40	40	80	4	f	397
444	Staraptor	Normal	Flying	485	85	120	70	50	60	100	4	f	398
445	Bidoof	Normal		250	59	45	40	35	40	31	4	f	399
446	Bibarel	Normal	Water	410	79	85	60	55	60	71	4	f	400
447	Kricketot	Bug		194	37	25	41	25	41	25	4	f	401
448	Kricketune	Bug		384	77	85	51	55	51	65	4	f	402
449	Shinx	Electric		263	45	65	34	40	34	45	4	f	403
450	Luxio	Electric		363	60	85	49	60	49	60	4	f	404
451	Luxray	Electric		523	80	120	79	95	79	70	4	f	405
452	Budew	Grass	Poison	280	40	30	35	50	70	55	4	f	406
453	Roserade	Grass	Poison	515	60	70	65	125	105	90	4	f	407
454	Cranidos	Rock		350	67	125	40	30	30	58	4	f	408
455	Rampardos	Rock		495	97	165	60	65	50	58	4	f	409
456	Shieldon	Rock	Steel	350	30	42	118	42	88	30	4	f	410
457	Bastiodon	Rock	Steel	495	60	52	168	47	138	30	4	f	411
458	Burmy	Bug		224	40	29	45	29	45	36	4	f	412
459	WormadamPlant Cloak	Bug	Grass	424	60	59	85	79	105	36	4	f	413
460	WormadamSandy Cloak	Bug	Ground	424	60	79	105	59	85	36	4	f	413
461	WormadamTrash Cloak	Bug	Steel	424	60	69	95	69	95	36	4	f	413
462	Mothim	Bug	Flying	424	70	94	50	94	50	66	4	f	414
463	Combee	Bug	Flying	244	30	30	42	30	42	70	4	f	415
464	Vespiquen	Bug	Flying	474	70	80	102	80	102	40	4	f	416
465	Pachirisu	Electric		405	60	45	70	45	90	95	4	f	417
466	Buizel	Water		330	55	65	35	60	30	85	4	f	418
467	Floatzel	Water		495	85	105	55	85	50	115	4	f	419
468	Cherubi	Grass		275	45	35	45	62	53	35	4	f	420
469	Cherrim	Grass		450	70	60	70	87	78	85	4	f	421
470	Shellos	Water		325	76	48	48	57	62	34	4	f	422
471	Gastrodon	Water	Ground	475	111	83	68	92	82	39	4	f	423
472	Ambipom	Normal		482	75	100	66	60	66	115	4	f	424
473	Drifloon	Ghost	Flying	348	90	50	34	60	44	70	4	f	425
474	Drifblim	Ghost	Flying	498	150	80	44	90	54	80	4	f	426
475	Buneary	Normal		350	55	66	44	44	56	85	4	f	427
476	Lopunny	Normal		480	65	76	84	54	96	105	4	f	428
477	LopunnyMega Lopunny	Normal	Fighting	580	65	136	94	54	96	135	4	f	428
478	Mismagius	Ghost		495	60	60	60	105	105	105	4	f	429
479	Honchkrow	Dark	Flying	505	100	125	52	105	52	71	4	f	430
480	Glameow	Normal		310	49	55	42	42	37	85	4	f	431
481	Purugly	Normal		452	71	82	64	64	59	112	4	f	432
482	Chingling	Psychic		285	45	30	50	65	50	45	4	f	433
483	Stunky	Poison	Dark	329	63	63	47	41	41	74	4	f	434
484	Skuntank	Poison	Dark	479	103	93	67	71	61	84	4	f	435
485	Bronzor	Steel	Psychic	300	57	24	86	24	86	23	4	f	436
486	Bronzong	Steel	Psychic	500	67	89	116	79	116	33	4	f	437
487	Bonsly	Rock		290	50	80	95	10	45	10	4	f	438
488	Mime Jr.	Psychic	Fairy	310	20	25	45	70	90	60	4	f	439
489	Happiny	Normal		220	100	5	5	15	65	30	4	f	440
490	Chatot	Normal	Flying	411	76	65	45	92	42	91	4	f	441
491	Spiritomb	Ghost	Dark	485	50	92	108	92	108	35	4	f	442
492	Gible	Dragon	Ground	300	58	70	45	40	45	42	4	f	443
493	Gabite	Dragon	Ground	410	68	90	65	50	55	82	4	f	444
494	Garchomp	Dragon	Ground	600	108	130	95	80	85	102	4	f	445
495	GarchompMega Garchomp	Dragon	Ground	700	108	170	115	120	95	92	4	f	445
496	Munchlax	Normal		390	135	85	40	40	85	5	4	f	446
497	Riolu	Fighting		285	40	70	40	35	40	60	4	f	447
498	Lucario	Fighting	Steel	525	70	110	70	115	70	90	4	f	448
499	LucarioMega Lucario	Fighting	Steel	625	70	145	88	140	70	112	4	f	448
500	Hippopotas	Ground		330	68	72	78	38	42	32	4	f	449
501	Hippowdon	Ground		525	108	112	118	68	72	47	4	f	450
502	Skorupi	Poison	Bug	330	40	50	90	30	55	65	4	f	451
503	Drapion	Poison	Dark	500	70	90	110	60	75	95	4	f	452
504	Croagunk	Poison	Fighting	300	48	61	40	61	40	50	4	f	453
505	Toxicroak	Poison	Fighting	490	83	106	65	86	65	85	4	f	454
506	Carnivine	Grass		454	74	100	72	90	72	46	4	f	455
507	Finneon	Water		330	49	49	56	49	61	66	4	f	456
508	Lumineon	Water		460	69	69	76	69	86	91	4	f	457
509	Mantyke	Water	Flying	345	45	20	50	60	120	50	4	f	458
510	Snover	Grass	Ice	334	60	62	50	62	60	40	4	f	459
511	Abomasnow	Grass	Ice	494	90	92	75	92	85	60	4	f	460
512	AbomasnowMega Abomasnow	Grass	Ice	594	90	132	105	132	105	30	4	f	460
513	Weavile	Dark	Ice	510	70	120	65	45	85	125	4	f	461
514	Magnezone	Electric	Steel	535	70	70	115	130	90	60	4	f	462
515	Lickilicky	Normal		515	110	85	95	80	95	50	4	f	463
516	Rhyperior	Ground	Rock	535	115	140	130	55	55	40	4	f	464
517	Tangrowth	Grass		535	100	100	125	110	50	50	4	f	465
518	Electivire	Electric		540	75	123	67	95	85	95	4	f	466
519	Magmortar	Fire		540	75	95	67	125	95	83	4	f	467
520	Togekiss	Fairy	Flying	545	85	50	95	120	115	80	4	f	468
521	Yanmega	Bug	Flying	515	86	76	86	116	56	95	4	f	469
522	Leafeon	Grass		525	65	110	130	60	65	95	4	f	470
523	Glaceon	Ice		525	65	60	110	130	95	65	4	f	471
524	Gliscor	Ground	Flying	510	75	95	125	45	75	95	4	f	472
525	Mamoswine	Ice	Ground	530	110	130	80	70	60	80	4	f	473
526	Porygon-Z	Normal		535	85	80	70	135	75	90	4	f	474
527	Gallade	Psychic	Fighting	518	68	125	65	65	115	80	4	f	475
528	GalladeMega Gallade	Psychic	Fighting	618	68	165	95	65	115	110	4	f	475
529	Probopass	Rock	Steel	525	60	55	145	75	150	40	4	f	476
530	Dusknoir	Ghost		525	45	100	135	65	135	45	4	f	477
531	Froslass	Ice	Ghost	480	70	80	70	80	70	110	4	f	478
532	Rotom	Electric	Ghost	440	50	50	77	95	77	91	4	f	479
533	RotomHeat Rotom	Electric	Fire	520	50	65	107	105	107	86	4	f	479
534	RotomWash Rotom	Electric	Water	520	50	65	107	105	107	86	4	f	479
535	RotomFrost Rotom	Electric	Ice	520	50	65	107	105	107	86	4	f	479
536	RotomFan Rotom	Electric	Flying	520	50	65	107	105	107	86	4	f	479
537	RotomMow Rotom	Electric	Grass	520	50	65	107	105	107	86	4	f	479
538	Uxie	Psychic		580	75	75	130	75	130	95	4	t	480
539	Mesprit	Psychic		580	80	105	105	105	105	80	4	t	481
540	Azelf	Psychic		580	75	125	70	125	70	115	4	t	482
541	Dialga	Steel	Dragon	680	100	120	120	150	100	90	4	t	483
542	Palkia	Water	Dragon	680	90	120	100	150	120	100	4	t	484
543	Heatran	Fire	Steel	600	91	90	106	130	106	77	4	t	485
544	Regigigas	Normal		670	110	160	110	80	110	100	4	t	486
545	GiratinaAltered Forme	Ghost	Dragon	680	150	100	120	100	120	90	4	t	487
546	GiratinaOrigin Forme	Ghost	Dragon	680	150	120	100	120	100	90	4	t	487
547	Cresselia	Psychic		600	120	70	120	75	130	85	4	f	488
548	Phione	Water		480	80	80	80	80	80	80	4	f	489
549	Manaphy	Water		600	100	100	100	100	100	100	4	f	490
550	Darkrai	Dark		600	70	90	90	135	90	125	4	t	491
551	ShayminLand Forme	Grass		600	100	100	100	100	100	100	4	t	492
552	ShayminSky Forme	Grass	Flying	600	100	103	75	120	75	127	4	t	492
553	Arceus	Normal		720	120	120	120	120	120	120	4	t	493
554	Victini	Psychic	Fire	600	100	100	100	100	100	100	5	t	494
555	Snivy	Grass		308	45	45	55	45	55	63	5	f	495
556	Servine	Grass		413	60	60	75	60	75	83	5	f	496
557	Serperior	Grass		528	75	75	95	75	95	113	5	f	497
558	Tepig	Fire		308	65	63	45	45	45	45	5	f	498
559	Pignite	Fire	Fighting	418	90	93	55	70	55	55	5	f	499
560	Emboar	Fire	Fighting	528	110	123	65	100	65	65	5	f	500
561	Oshawott	Water		308	55	55	45	63	45	45	5	f	501
562	Dewott	Water		413	75	75	60	83	60	60	5	f	502
563	Samurott	Water		528	95	100	85	108	70	70	5	f	503
564	Patrat	Normal		255	45	55	39	35	39	42	5	f	504
565	Watchog	Normal		420	60	85	69	60	69	77	5	f	505
566	Lillipup	Normal		275	45	60	45	25	45	55	5	f	506
567	Herdier	Normal		370	65	80	65	35	65	60	5	f	507
568	Stoutland	Normal		500	85	110	90	45	90	80	5	f	508
569	Purrloin	Dark		281	41	50	37	50	37	66	5	f	509
570	Liepard	Dark		446	64	88	50	88	50	106	5	f	510
571	Pansage	Grass		316	50	53	48	53	48	64	5	f	511
572	Simisage	Grass		498	75	98	63	98	63	101	5	f	512
573	Pansear	Fire		316	50	53	48	53	48	64	5	f	513
574	Simisear	Fire		498	75	98	63	98	63	101	5	f	514
575	Panpour	Water		316	50	53	48	53	48	64	5	f	515
576	Simipour	Water		498	75	98	63	98	63	101	5	f	516
577	Munna	Psychic		292	76	25	45	67	55	24	5	f	517
578	Musharna	Psychic		487	116	55	85	107	95	29	5	f	518
579	Pidove	Normal	Flying	264	50	55	50	36	30	43	5	f	519
580	Tranquill	Normal	Flying	358	62	77	62	50	42	65	5	f	520
581	Unfezant	Normal	Flying	488	80	115	80	65	55	93	5	f	521
582	Blitzle	Electric		295	45	60	32	50	32	76	5	f	522
583	Zebstrika	Electric		497	75	100	63	80	63	116	5	f	523
584	Roggenrola	Rock		280	55	75	85	25	25	15	5	f	524
585	Boldore	Rock		390	70	105	105	50	40	20	5	f	525
586	Gigalith	Rock		515	85	135	130	60	80	25	5	f	526
587	Woobat	Psychic	Flying	313	55	45	43	55	43	72	5	f	527
588	Swoobat	Psychic	Flying	425	67	57	55	77	55	114	5	f	528
589	Drilbur	Ground		328	60	85	40	30	45	68	5	f	529
590	Excadrill	Ground	Steel	508	110	135	60	50	65	88	5	f	530
591	Audino	Normal		445	103	60	86	60	86	50	5	f	531
592	AudinoMega Audino	Normal	Fairy	545	103	60	126	80	126	50	5	f	531
593	Timburr	Fighting		305	75	80	55	25	35	35	5	f	532
594	Gurdurr	Fighting		405	85	105	85	40	50	40	5	f	533
595	Conkeldurr	Fighting		505	105	140	95	55	65	45	5	f	534
596	Tympole	Water		294	50	50	40	50	40	64	5	f	535
597	Palpitoad	Water	Ground	384	75	65	55	65	55	69	5	f	536
598	Seismitoad	Water	Ground	509	105	95	75	85	75	74	5	f	537
599	Throh	Fighting		465	120	100	85	30	85	45	5	f	538
600	Sawk	Fighting		465	75	125	75	30	75	85	5	f	539
601	Sewaddle	Bug	Grass	310	45	53	70	40	60	42	5	f	540
602	Swadloon	Bug	Grass	380	55	63	90	50	80	42	5	f	541
603	Leavanny	Bug	Grass	500	75	103	80	70	80	92	5	f	542
604	Venipede	Bug	Poison	260	30	45	59	30	39	57	5	f	543
605	Whirlipede	Bug	Poison	360	40	55	99	40	79	47	5	f	544
606	Scolipede	Bug	Poison	485	60	100	89	55	69	112	5	f	545
607	Cottonee	Grass	Fairy	280	40	27	60	37	50	66	5	f	546
608	Whimsicott	Grass	Fairy	480	60	67	85	77	75	116	5	f	547
609	Petilil	Grass		280	45	35	50	70	50	30	5	f	548
610	Lilligant	Grass		480	70	60	75	110	75	90	5	f	549
611	Basculin	Water		460	70	92	65	80	55	98	5	f	550
612	Sandile	Ground	Dark	292	50	72	35	35	35	65	5	f	551
613	Krokorok	Ground	Dark	351	60	82	45	45	45	74	5	f	552
614	Krookodile	Ground	Dark	519	95	117	80	65	70	92	5	f	553
615	Darumaka	Fire		315	70	90	45	15	45	50	5	f	554
616	DarmanitanStandard Mode	Fire		480	105	140	55	30	55	95	5	f	555
617	DarmanitanZen Mode	Fire	Psychic	540	105	30	105	140	105	55	5	f	555
618	Maractus	Grass		461	75	86	67	106	67	60	5	f	556
619	Dwebble	Bug	Rock	325	50	65	85	35	35	55	5	f	557
620	Crustle	Bug	Rock	475	70	95	125	65	75	45	5	f	558
621	Scraggy	Dark	Fighting	348	50	75	70	35	70	48	5	f	559
622	Scrafty	Dark	Fighting	488	65	90	115	45	115	58	5	f	560
623	Sigilyph	Psychic	Flying	490	72	58	80	103	80	97	5	f	561
624	Yamask	Ghost		303	38	30	85	55	65	30	5	f	562
625	Cofagrigus	Ghost		483	58	50	145	95	105	30	5	f	563
626	Tirtouga	Water	Rock	355	54	78	103	53	45	22	5	f	564
627	Carracosta	Water	Rock	495	74	108	133	83	65	32	5	f	565
628	Archen	Rock	Flying	401	55	112	45	74	45	70	5	f	566
629	Archeops	Rock	Flying	567	75	140	65	112	65	110	5	f	567
630	Trubbish	Poison		329	50	50	62	40	62	65	5	f	568
631	Garbodor	Poison		474	80	95	82	60	82	75	5	f	569
632	Zorua	Dark		330	40	65	40	80	40	65	5	f	570
633	Zoroark	Dark		510	60	105	60	120	60	105	5	f	571
634	Minccino	Normal		300	55	50	40	40	40	75	5	f	572
635	Cinccino	Normal		470	75	95	60	65	60	115	5	f	573
636	Gothita	Psychic		290	45	30	50	55	65	45	5	f	574
637	Gothorita	Psychic		390	60	45	70	75	85	55	5	f	575
638	Gothitelle	Psychic		490	70	55	95	95	110	65	5	f	576
639	Solosis	Psychic		290	45	30	40	105	50	20	5	f	577
640	Duosion	Psychic		370	65	40	50	125	60	30	5	f	578
641	Reuniclus	Psychic		490	110	65	75	125	85	30	5	f	579
642	Ducklett	Water	Flying	305	62	44	50	44	50	55	5	f	580
643	Swanna	Water	Flying	473	75	87	63	87	63	98	5	f	581
644	Vanillite	Ice		305	36	50	50	65	60	44	5	f	582
645	Vanillish	Ice		395	51	65	65	80	75	59	5	f	583
646	Vanilluxe	Ice		535	71	95	85	110	95	79	5	f	584
647	Deerling	Normal	Grass	335	60	60	50	40	50	75	5	f	585
648	Sawsbuck	Normal	Grass	475	80	100	70	60	70	95	5	f	586
649	Emolga	Electric	Flying	428	55	75	60	75	60	103	5	f	587
650	Karrablast	Bug		315	50	75	45	40	45	60	5	f	588
651	Escavalier	Bug	Steel	495	70	135	105	60	105	20	5	f	589
652	Foongus	Grass	Poison	294	69	55	45	55	55	15	5	f	590
653	Amoonguss	Grass	Poison	464	114	85	70	85	80	30	5	f	591
654	Frillish	Water	Ghost	335	55	40	50	65	85	40	5	f	592
655	Jellicent	Water	Ghost	480	100	60	70	85	105	60	5	f	593
656	Alomomola	Water		470	165	75	80	40	45	65	5	f	594
657	Joltik	Bug	Electric	319	50	47	50	57	50	65	5	f	595
658	Galvantula	Bug	Electric	472	70	77	60	97	60	108	5	f	596
659	Ferroseed	Grass	Steel	305	44	50	91	24	86	10	5	f	597
660	Ferrothorn	Grass	Steel	489	74	94	131	54	116	20	5	f	598
661	Klink	Steel		300	40	55	70	45	60	30	5	f	599
662	Klang	Steel		440	60	80	95	70	85	50	5	f	600
663	Klinklang	Steel		520	60	100	115	70	85	90	5	f	601
664	Tynamo	Electric		275	35	55	40	45	40	60	5	f	602
665	Eelektrik	Electric		405	65	85	70	75	70	40	5	f	603
666	Eelektross	Electric		515	85	115	80	105	80	50	5	f	604
667	Elgyem	Psychic		335	55	55	55	85	55	30	5	f	605
668	Beheeyem	Psychic		485	75	75	75	125	95	40	5	f	606
669	Litwick	Ghost	Fire	275	50	30	55	65	55	20	5	f	607
670	Lampent	Ghost	Fire	370	60	40	60	95	60	55	5	f	608
671	Chandelure	Ghost	Fire	520	60	55	90	145	90	80	5	f	609
672	Axew	Dragon		320	46	87	60	30	40	57	5	f	610
673	Fraxure	Dragon		410	66	117	70	40	50	67	5	f	611
674	Haxorus	Dragon		540	76	147	90	60	70	97	5	f	612
675	Cubchoo	Ice		305	55	70	40	60	40	40	5	f	613
676	Beartic	Ice		485	95	110	80	70	80	50	5	f	614
677	Cryogonal	Ice		485	70	50	30	95	135	105	5	f	615
678	Shelmet	Bug		305	50	40	85	40	65	25	5	f	616
679	Accelgor	Bug		495	80	70	40	100	60	145	5	f	617
680	Stunfisk	Ground	Electric	471	109	66	84	81	99	32	5	f	618
681	Mienfoo	Fighting		350	45	85	50	55	50	65	5	f	619
682	Mienshao	Fighting		510	65	125	60	95	60	105	5	f	620
683	Druddigon	Dragon		485	77	120	90	60	90	48	5	f	621
684	Golett	Ground	Ghost	303	59	74	50	35	50	35	5	f	622
685	Golurk	Ground	Ghost	483	89	124	80	55	80	55	5	f	623
686	Pawniard	Dark	Steel	340	45	85	70	40	40	60	5	f	624
687	Bisharp	Dark	Steel	490	65	125	100	60	70	70	5	f	625
688	Bouffalant	Normal		490	95	110	95	40	95	55	5	f	626
689	Rufflet	Normal	Flying	350	70	83	50	37	50	60	5	f	627
690	Braviary	Normal	Flying	510	100	123	75	57	75	80	5	f	628
691	Vullaby	Dark	Flying	370	70	55	75	45	65	60	5	f	629
692	Mandibuzz	Dark	Flying	510	110	65	105	55	95	80	5	f	630
693	Heatmor	Fire		484	85	97	66	105	66	65	5	f	631
694	Durant	Bug	Steel	484	58	109	112	48	48	109	5	f	632
695	Deino	Dark	Dragon	300	52	65	50	45	50	38	5	f	633
696	Zweilous	Dark	Dragon	420	72	85	70	65	70	58	5	f	634
697	Hydreigon	Dark	Dragon	600	92	105	90	125	90	98	5	f	635
698	Larvesta	Bug	Fire	360	55	85	55	50	55	60	5	f	636
699	Volcarona	Bug	Fire	550	85	60	65	135	105	100	5	f	637
700	Cobalion	Steel	Fighting	580	91	90	129	90	72	108	5	t	638
701	Terrakion	Rock	Fighting	580	91	129	90	72	90	108	5	t	639
702	Virizion	Grass	Fighting	580	91	90	72	90	129	108	5	t	640
703	TornadusIncarnate Forme	Flying		580	79	115	70	125	80	111	5	t	641
704	TornadusTherian Forme	Flying		580	79	100	80	110	90	121	5	t	641
705	ThundurusIncarnate Forme	Electric	Flying	580	79	115	70	125	80	111	5	t	642
706	ThundurusTherian Forme	Electric	Flying	580	79	105	70	145	80	101	5	t	642
707	Reshiram	Dragon	Fire	680	100	120	100	150	120	90	5	t	643
708	Zekrom	Dragon	Electric	680	100	150	120	120	100	90	5	t	644
709	LandorusIncarnate Forme	Ground	Flying	600	89	125	90	115	80	101	5	t	645
710	LandorusTherian Forme	Ground	Flying	600	89	145	90	105	80	91	5	t	645
711	Kyurem	Dragon	Ice	660	125	130	90	130	90	95	5	t	646
712	KyuremBlack Kyurem	Dragon	Ice	700	125	170	100	120	90	95	5	t	646
713	KyuremWhite Kyurem	Dragon	Ice	700	125	120	90	170	100	95	5	t	646
714	KeldeoOrdinary Forme	Water	Fighting	580	91	72	90	129	90	108	5	f	647
715	KeldeoResolute Forme	Water	Fighting	580	91	72	90	129	90	108	5	f	647
716	MeloettaAria Forme	Normal	Psychic	600	100	77	77	128	128	90	5	f	648
717	MeloettaPirouette Forme	Normal	Fighting	600	100	128	90	77	77	128	5	f	648
718	Genesect	Bug	Steel	600	71	120	95	120	95	99	5	f	649
719	Chespin	Grass		313	56	61	65	48	45	38	6	f	650
720	Quilladin	Grass		405	61	78	95	56	58	57	6	f	651
721	Chesnaught	Grass	Fighting	530	88	107	122	74	75	64	6	f	652
722	Fennekin	Fire		307	40	45	40	62	60	60	6	f	653
723	Braixen	Fire		409	59	59	58	90	70	73	6	f	654
724	Delphox	Fire	Psychic	534	75	69	72	114	100	104	6	f	655
725	Froakie	Water		314	41	56	40	62	44	71	6	f	656
726	Frogadier	Water		405	54	63	52	83	56	97	6	f	657
727	Greninja	Water	Dark	530	72	95	67	103	71	122	6	f	658
728	Bunnelby	Normal		237	38	36	38	32	36	57	6	f	659
729	Diggersby	Normal	Ground	423	85	56	77	50	77	78	6	f	660
730	Fletchling	Normal	Flying	278	45	50	43	40	38	62	6	f	661
731	Fletchinder	Fire	Flying	382	62	73	55	56	52	84	6	f	662
732	Talonflame	Fire	Flying	499	78	81	71	74	69	126	6	f	663
733	Scatterbug	Bug		200	38	35	40	27	25	35	6	f	664
734	Spewpa	Bug		213	45	22	60	27	30	29	6	f	665
735	Vivillon	Bug	Flying	411	80	52	50	90	50	89	6	f	666
736	Litleo	Fire	Normal	369	62	50	58	73	54	72	6	f	667
737	Pyroar	Fire	Normal	507	86	68	72	109	66	106	6	f	668
738	Flabébé	Fairy		303	44	38	39	61	79	42	6	f	669
739	Floette	Fairy		371	54	45	47	75	98	52	6	f	670
740	Florges	Fairy		552	78	65	68	112	154	75	6	f	671
741	Skiddo	Grass		350	66	65	48	62	57	52	6	f	672
742	Gogoat	Grass		531	123	100	62	97	81	68	6	f	673
743	Pancham	Fighting		348	67	82	62	46	48	43	6	f	674
744	Pangoro	Fighting	Dark	495	95	124	78	69	71	58	6	f	675
745	Furfrou	Normal		472	75	80	60	65	90	102	6	f	676
746	Espurr	Psychic		355	62	48	54	63	60	68	6	f	677
747	MeowsticMale	Psychic		466	74	48	76	83	81	104	6	f	678
748	MeowsticFemale	Psychic		466	74	48	76	83	81	104	6	f	678
749	Honedge	Steel	Ghost	325	45	80	100	35	37	28	6	f	679
750	Doublade	Steel	Ghost	448	59	110	150	45	49	35	6	f	680
751	AegislashBlade Forme	Steel	Ghost	520	60	150	50	150	50	60	6	f	681
752	AegislashShield Forme	Steel	Ghost	520	60	50	150	50	150	60	6	f	681
753	Spritzee	Fairy		341	78	52	60	63	65	23	6	f	682
754	Aromatisse	Fairy		462	101	72	72	99	89	29	6	f	683
755	Swirlix	Fairy		341	62	48	66	59	57	49	6	f	684
756	Slurpuff	Fairy		480	82	80	86	85	75	72	6	f	685
757	Inkay	Dark	Psychic	288	53	54	53	37	46	45	6	f	686
758	Malamar	Dark	Psychic	482	86	92	88	68	75	73	6	f	687
759	Binacle	Rock	Water	306	42	52	67	39	56	50	6	f	688
760	Barbaracle	Rock	Water	500	72	105	115	54	86	68	6	f	689
761	Skrelp	Poison	Water	320	50	60	60	60	60	30	6	f	690
762	Dragalge	Poison	Dragon	494	65	75	90	97	123	44	6	f	691
763	Clauncher	Water		330	50	53	62	58	63	44	6	f	692
764	Clawitzer	Water		500	71	73	88	120	89	59	6	f	693
765	Helioptile	Electric	Normal	289	44	38	33	61	43	70	6	f	694
766	Heliolisk	Electric	Normal	481	62	55	52	109	94	109	6	f	695
767	Tyrunt	Rock	Dragon	362	58	89	77	45	45	48	6	f	696
768	Tyrantrum	Rock	Dragon	521	82	121	119	69	59	71	6	f	697
769	Amaura	Rock	Ice	362	77	59	50	67	63	46	6	f	698
770	Aurorus	Rock	Ice	521	123	77	72	99	92	58	6	f	699
771	Sylveon	Fairy		525	95	65	65	110	130	60	6	f	700
772	Hawlucha	Fighting	Flying	500	78	92	75	74	63	118	6	f	701
773	Dedenne	Electric	Fairy	431	67	58	57	81	67	101	6	f	702
774	Carbink	Rock	Fairy	500	50	50	150	50	150	50	6	f	703
775	Goomy	Dragon		300	45	50	35	55	75	40	6	f	704
776	Sliggoo	Dragon		452	68	75	53	83	113	60	6	f	705
777	Goodra	Dragon		600	90	100	70	110	150	80	6	f	706
778	Klefki	Steel	Fairy	470	57	80	91	80	87	75	6	f	707
779	Phantump	Ghost	Grass	309	43	70	48	50	60	38	6	f	708
780	Trevenant	Ghost	Grass	474	85	110	76	65	82	56	6	f	709
781	PumpkabooAverage Size	Ghost	Grass	335	49	66	70	44	55	51	6	f	710
782	PumpkabooSmall Size	Ghost	Grass	335	44	66	70	44	55	56	6	f	710
783	PumpkabooLarge Size	Ghost	Grass	335	54	66	70	44	55	46	6	f	710
784	PumpkabooSuper Size	Ghost	Grass	335	59	66	70	44	55	41	6	f	710
785	GourgeistAverage Size	Ghost	Grass	494	65	90	122	58	75	84	6	f	711
786	GourgeistSmall Size	Ghost	Grass	494	55	85	122	58	75	99	6	f	711
787	GourgeistLarge Size	Ghost	Grass	494	75	95	122	58	75	69	6	f	711
788	GourgeistSuper Size	Ghost	Grass	494	85	100	122	58	75	54	6	f	711
789	Bergmite	Ice		304	55	69	85	32	35	28	6	f	712
790	Avalugg	Ice		514	95	117	184	44	46	28	6	f	713
791	Noibat	Flying	Dragon	245	40	30	35	45	40	55	6	f	714
792	Noivern	Flying	Dragon	535	85	70	80	97	80	123	6	f	715
793	Xerneas	Fairy		680	126	131	95	131	98	99	6	t	716
794	Yveltal	Dark	Flying	680	126	131	95	131	98	99	6	t	717
795	Zygarde50% Forme	Dragon	Ground	600	108	100	121	81	95	95	6	t	718
796	Diancie	Rock	Fairy	600	50	100	150	100	150	50	6	t	719
797	DiancieMega Diancie	Rock	Fairy	700	50	160	110	160	110	110	6	t	719
798	HoopaHoopa Confined	Psychic	Ghost	600	80	110	60	150	130	70	6	t	720
799	HoopaHoopa Unbound	Psychic	Dark	680	80	160	60	170	130	80	6	t	720
800	Volcanion	Fire	Water	600	80	110	120	130	90	70	6	t	721
\.


--
-- Name: pokemons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pokemons_id_seq', 800, true);


--
-- Data for Name: pokestops; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pokestops (id, pokestop_id, enabled, latitude, longitude, last_modified) FROM stdin;
\.


--
-- Name: pokestops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pokestops_id_seq', 1, false);


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: us_gaz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY us_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: us_lex; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY us_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: us_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY us_rules (id, rule, is_custom) FROM stdin;
\.


SET search_path = tiger, pg_catalog;

--
-- Data for Name: geocode_settings; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY geocode_settings (name, setting, unit, category, short_desc) FROM stdin;
\.


--
-- Data for Name: pagc_gaz; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY pagc_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_lex; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY pagc_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_rules; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY pagc_rules (id, rule, is_custom) FROM stdin;
\.


SET search_path = topology, pg_catalog;

--
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology (id, name, srid, "precision", hasz) FROM stdin;
\.


--
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.


SET search_path = public, pg_catalog;

--
-- Name: gyms gyms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gyms
    ADD CONSTRAINT gyms_pkey PRIMARY KEY (id);


--
-- Name: pokemons pokemons_primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemons
    ADD CONSTRAINT pokemons_primary_key PRIMARY KEY (id);


--
-- Name: pokestops pokestops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokestops
    ADD CONSTRAINT pokestops_pkey PRIMARY KEY (id);


--
-- Name: pokestops_latitude_gix; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pokestops_latitude_gix ON gyms USING gist (latitude);


--
-- Name: pokestops_longitude_gix; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pokestops_longitude_gix ON gyms USING gist (longitude);


--
-- PostgreSQL database dump complete
--

