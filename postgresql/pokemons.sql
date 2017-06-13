--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-13 22:34:22 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 270 (class 1259 OID 18573)
-- Name: pokemons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pokemons (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    name character(50) COLLATE pg_catalog."C.UTF-8" NOT NULL,
    type_1 character(50) COLLATE pg_catalog."C.UTF-8" NOT NULL,
    type_2 character(50),
    total integer NOT NULL,
    attack integer NOT NULL,
    hp integer NOT NULL,
    defense integer NOT NULL,
    sp_attack integer NOT NULL,
    sp_defense integer NOT NULL,
    speed integer NOT NULL,
    generation numeric DEFAULT 1 NOT NULL,
    legendary boolean
);


ALTER TABLE pokemons OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 18571)
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
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 269
-- Name: pokemons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pokemons_id_seq OWNED BY pokemons.id;


--
-- TOC entry 3724 (class 2604 OID 18576)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemons ALTER COLUMN id SET DEFAULT nextval('pokemons_id_seq'::regclass);


--
-- TOC entry 3850 (class 0 OID 18573)
-- Dependencies: 270
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pokemons (id, pokemon_id, name, type_1, type_2, total, attack, hp, defense, sp_attack, sp_defense, speed, generation, legendary) FROM stdin;
6	1	Bulbasaur                                         	Grass                                             	Poison                                            	318	45	49	49	65	65	45	1	f
7	2	Ivysaur                                           	Grass                                             	Poison                                            	405	60	62	63	80	80	60	1	f
8	3	Venusaur                                          	Grass                                             	Poison                                            	525	80	82	83	100	100	80	1	f
9	4	VenusaurMega Venusaur                             	Grass                                             	Poison                                            	625	80	100	123	122	120	80	1	f
10	5	Charmander                                        	Fire                                              	\N	309	39	52	43	60	50	65	1	f
11	6	Charmeleon                                        	Fire                                              	\N	405	58	64	58	80	65	80	1	f
12	7	Charizard                                         	Fire                                              	Flying                                            	534	78	84	78	109	85	100	1	f
13	8	CharizardMega Charizard X                         	Fire                                              	Dragon                                            	634	78	130	111	130	85	100	1	f
14	9	CharizardMega Charizard Y                         	Fire                                              	Flying                                            	634	78	104	78	159	115	100	1	f
15	10	Squirtle                                          	Water                                             	\N	314	44	48	65	50	64	43	1	f
16	11	Wartortle                                         	Water                                             	\N	405	59	63	80	65	80	58	1	f
17	12	Blastoise                                         	Water                                             	\N	530	79	83	100	85	105	78	1	f
18	13	BlastoiseMega Blastoise                           	Water                                             	\N	630	79	103	120	135	115	78	1	f
19	14	Caterpie                                          	Bug                                               	\N	195	45	30	35	20	20	45	1	f
20	15	Metapod                                           	Bug                                               	\N	205	50	20	55	25	25	30	1	f
21	16	Butterfree                                        	Bug                                               	Flying                                            	395	60	45	50	90	80	70	1	f
22	17	Weedle                                            	Bug                                               	Poison                                            	195	40	35	30	20	20	50	1	f
23	18	Kakuna                                            	Bug                                               	Poison                                            	205	45	25	50	25	25	35	1	f
24	19	Beedrill                                          	Bug                                               	Poison                                            	395	65	90	40	45	80	75	1	f
25	20	BeedrillMega Beedrill                             	Bug                                               	Poison                                            	495	65	150	40	15	80	145	1	f
26	21	Pidgey                                            	Normal                                            	Flying                                            	251	40	45	40	35	35	56	1	f
27	22	Pidgeotto                                         	Normal                                            	Flying                                            	349	63	60	55	50	50	71	1	f
28	23	Pidgeot                                           	Normal                                            	Flying                                            	479	83	80	75	70	70	101	1	f
29	24	PidgeotMega Pidgeot                               	Normal                                            	Flying                                            	579	83	80	80	135	80	121	1	f
30	25	Rattata                                           	Normal                                            	\N	253	30	56	35	25	35	72	1	f
31	26	Raticate                                          	Normal                                            	\N	413	55	81	60	50	70	97	1	f
32	27	Spearow                                           	Normal                                            	Flying                                            	262	40	60	30	31	31	70	1	f
33	28	Fearow                                            	Normal                                            	Flying                                            	442	65	90	65	61	61	100	1	f
34	29	Ekans                                             	Poison                                            	\N	288	35	60	44	40	54	55	1	f
35	30	Arbok                                             	Poison                                            	\N	438	60	85	69	65	79	80	1	f
36	31	Pikachu                                           	Electric                                          	\N	320	35	55	40	50	50	90	1	f
37	32	Raichu                                            	Electric                                          	\N	485	60	90	55	90	80	110	1	f
38	33	Sandshrew                                         	Ground                                            	\N	300	50	75	85	20	30	40	1	f
39	34	Sandslash                                         	Ground                                            	\N	450	75	100	110	45	55	65	1	f
40	35	Nidoran♀                                          	Poison                                            	\N	275	55	47	52	40	40	41	1	f
41	36	Nidorina                                          	Poison                                            	\N	365	70	62	67	55	55	56	1	f
42	37	Nidoqueen                                         	Poison                                            	Ground                                            	505	90	92	87	75	85	76	1	f
43	38	Nidoran♂                                          	Poison                                            	\N	273	46	57	40	40	40	50	1	f
44	39	Nidorino                                          	Poison                                            	\N	365	61	72	57	55	55	65	1	f
45	40	Nidoking                                          	Poison                                            	Ground                                            	505	81	102	77	85	75	85	1	f
46	41	Clefairy                                          	Fairy                                             	\N	323	70	45	48	60	65	35	1	f
47	42	Clefable                                          	Fairy                                             	\N	483	95	70	73	95	90	60	1	f
48	43	Vulpix                                            	Fire                                              	\N	299	38	41	40	50	65	65	1	f
49	44	Ninetales                                         	Fire                                              	\N	505	73	76	75	81	100	100	1	f
50	45	Jigglypuff                                        	Normal                                            	Fairy                                             	270	115	45	20	45	25	20	1	f
51	46	Wigglytuff                                        	Normal                                            	Fairy                                             	435	140	70	45	85	50	45	1	f
52	47	Zubat                                             	Poison                                            	Flying                                            	245	40	45	35	30	40	55	1	f
53	48	Golbat                                            	Poison                                            	Flying                                            	455	75	80	70	65	75	90	1	f
54	49	Oddish                                            	Grass                                             	Poison                                            	320	45	50	55	75	65	30	1	f
55	50	Gloom                                             	Grass                                             	Poison                                            	395	60	65	70	85	75	40	1	f
56	51	Vileplume                                         	Grass                                             	Poison                                            	490	75	80	85	110	90	50	1	f
57	52	Paras                                             	Bug                                               	Grass                                             	285	35	70	55	45	55	25	1	f
58	53	Parasect                                          	Bug                                               	Grass                                             	405	60	95	80	60	80	30	1	f
59	54	Venonat                                           	Bug                                               	Poison                                            	305	60	55	50	40	55	45	1	f
60	55	Venomoth                                          	Bug                                               	Poison                                            	450	70	65	60	90	75	90	1	f
61	56	Diglett                                           	Ground                                            	\N	265	10	55	25	35	45	95	1	f
62	57	Dugtrio                                           	Ground                                            	\N	405	35	80	50	50	70	120	1	f
63	58	Meowth                                            	Normal                                            	\N	290	40	45	35	40	40	90	1	f
64	59	Persian                                           	Normal                                            	\N	440	65	70	60	65	65	115	1	f
65	60	Psyduck                                           	Water                                             	\N	320	50	52	48	65	50	55	1	f
66	61	Golduck                                           	Water                                             	\N	500	80	82	78	95	80	85	1	f
67	62	Mankey                                            	Fighting                                          	\N	305	40	80	35	35	45	70	1	f
68	63	Primeape                                          	Fighting                                          	\N	455	65	105	60	60	70	95	1	f
69	64	Growlithe                                         	Fire                                              	\N	350	55	70	45	70	50	60	1	f
70	65	Arcanine                                          	Fire                                              	\N	555	90	110	80	100	80	95	1	f
71	66	Poliwag                                           	Water                                             	\N	300	40	50	40	40	40	90	1	f
72	67	Poliwhirl                                         	Water                                             	\N	385	65	65	65	50	50	90	1	f
73	68	Poliwrath                                         	Water                                             	Fighting                                          	510	90	95	95	70	90	70	1	f
74	69	Abra                                              	Psychic                                           	\N	310	25	20	15	105	55	90	1	f
75	70	Kadabra                                           	Psychic                                           	\N	400	40	35	30	120	70	105	1	f
76	71	Alakazam                                          	Psychic                                           	\N	500	55	50	45	135	95	120	1	f
77	72	AlakazamMega Alakazam                             	Psychic                                           	\N	590	55	50	65	175	95	150	1	f
78	73	Machop                                            	Fighting                                          	\N	305	70	80	50	35	35	35	1	f
79	74	Machoke                                           	Fighting                                          	\N	405	80	100	70	50	60	45	1	f
80	75	Machamp                                           	Fighting                                          	\N	505	90	130	80	65	85	55	1	f
81	76	Bellsprout                                        	Grass                                             	Poison                                            	300	50	75	35	70	30	40	1	f
82	77	Weepinbell                                        	Grass                                             	Poison                                            	390	65	90	50	85	45	55	1	f
83	78	Victreebel                                        	Grass                                             	Poison                                            	490	80	105	65	100	70	70	1	f
122	117	Lickitung                                         	Normal                                            	\N	385	90	55	75	60	75	30	1	f
84	79	Tentacool                                         	Water                                             	Poison                                            	335	40	40	35	50	100	70	1	f
85	80	Tentacruel                                        	Water                                             	Poison                                            	515	80	70	65	80	120	100	1	f
86	81	Geodude                                           	Rock                                              	Ground                                            	300	40	80	100	30	30	20	1	f
87	82	Graveler                                          	Rock                                              	Ground                                            	390	55	95	115	45	45	35	1	f
88	83	Golem                                             	Rock                                              	Ground                                            	495	80	120	130	55	65	45	1	f
89	84	Ponyta                                            	Fire                                              	\N	410	50	85	55	65	65	90	1	f
90	85	Rapidash                                          	Fire                                              	\N	500	65	100	70	80	80	105	1	f
91	86	Slowpoke                                          	Water                                             	Psychic                                           	315	90	65	65	40	40	15	1	f
92	87	Slowbro                                           	Water                                             	Psychic                                           	490	95	75	110	100	80	30	1	f
93	88	SlowbroMega Slowbro                               	Water                                             	Psychic                                           	590	95	75	180	130	80	30	1	f
94	89	Magnemite                                         	Electric                                          	Steel                                             	325	25	35	70	95	55	45	1	f
95	90	Magneton                                          	Electric                                          	Steel                                             	465	50	60	95	120	70	70	1	f
96	91	Farfetch'd                                        	Normal                                            	Flying                                            	352	52	65	55	58	62	60	1	f
97	92	Doduo                                             	Normal                                            	Flying                                            	310	35	85	45	35	35	75	1	f
98	93	Dodrio                                            	Normal                                            	Flying                                            	460	60	110	70	60	60	100	1	f
99	94	Seel                                              	Water                                             	\N	325	65	45	55	45	70	45	1	f
100	95	Dewgong                                           	Water                                             	Ice                                               	475	90	70	80	70	95	70	1	f
101	96	Grimer                                            	Poison                                            	\N	325	80	80	50	40	50	25	1	f
102	97	Muk                                               	Poison                                            	\N	500	105	105	75	65	100	50	1	f
103	98	Shellder                                          	Water                                             	\N	305	30	65	100	45	25	40	1	f
104	99	Cloyster                                          	Water                                             	Ice                                               	525	50	95	180	85	45	70	1	f
105	100	Gastly                                            	Ghost                                             	Poison                                            	310	30	35	30	100	35	80	1	f
106	101	Haunter                                           	Ghost                                             	Poison                                            	405	45	50	45	115	55	95	1	f
107	102	Gengar                                            	Ghost                                             	Poison                                            	500	60	65	60	130	75	110	1	f
108	103	GengarMega Gengar                                 	Ghost                                             	Poison                                            	600	60	65	80	170	95	130	1	f
109	104	Onix                                              	Rock                                              	Ground                                            	385	35	45	160	30	45	70	1	f
110	105	Drowzee                                           	Psychic                                           	\N	328	60	48	45	43	90	42	1	f
111	106	Hypno                                             	Psychic                                           	\N	483	85	73	70	73	115	67	1	f
112	107	Krabby                                            	Water                                             	\N	325	30	105	90	25	25	50	1	f
113	108	Kingler                                           	Water                                             	\N	475	55	130	115	50	50	75	1	f
114	109	Voltorb                                           	Electric                                          	\N	330	40	30	50	55	55	100	1	f
115	110	Electrode                                         	Electric                                          	\N	480	60	50	70	80	80	140	1	f
116	111	Exeggcute                                         	Grass                                             	Psychic                                           	325	60	40	80	60	45	40	1	f
117	112	Exeggutor                                         	Grass                                             	Psychic                                           	520	95	95	85	125	65	55	1	f
118	113	Cubone                                            	Ground                                            	\N	320	50	50	95	40	50	35	1	f
119	114	Marowak                                           	Ground                                            	\N	425	60	80	110	50	80	45	1	f
120	115	Hitmonlee                                         	Fighting                                          	\N	455	50	120	53	35	110	87	1	f
121	116	Hitmonchan                                        	Fighting                                          	\N	455	50	105	79	35	110	76	1	f
123	118	Koffing                                           	Poison                                            	\N	340	40	65	95	60	45	35	1	f
124	119	Weezing                                           	Poison                                            	\N	490	65	90	120	85	70	60	1	f
125	120	Rhyhorn                                           	Ground                                            	Rock                                              	345	80	85	95	30	30	25	1	f
126	121	Rhydon                                            	Ground                                            	Rock                                              	485	105	130	120	45	45	40	1	f
127	122	Chansey                                           	Normal                                            	\N	450	250	5	5	35	105	50	1	f
128	123	Tangela                                           	Grass                                             	\N	435	65	55	115	100	40	60	1	f
129	124	Kangaskhan                                        	Normal                                            	\N	490	105	95	80	40	80	90	1	f
130	125	KangaskhanMega Kangaskhan                         	Normal                                            	\N	590	105	125	100	60	100	100	1	f
131	126	Horsea                                            	Water                                             	\N	295	30	40	70	70	25	60	1	f
132	127	Seadra                                            	Water                                             	\N	440	55	65	95	95	45	85	1	f
133	128	Goldeen                                           	Water                                             	\N	320	45	67	60	35	50	63	1	f
134	129	Seaking                                           	Water                                             	\N	450	80	92	65	65	80	68	1	f
135	130	Staryu                                            	Water                                             	\N	340	30	45	55	70	55	85	1	f
136	131	Starmie                                           	Water                                             	Psychic                                           	520	60	75	85	100	85	115	1	f
137	132	Mr. Mime                                          	Psychic                                           	Fairy                                             	460	40	45	65	100	120	90	1	f
138	133	Scyther                                           	Bug                                               	Flying                                            	500	70	110	80	55	80	105	1	f
139	134	Jynx                                              	Ice                                               	Psychic                                           	455	65	50	35	115	95	95	1	f
140	135	Electabuzz                                        	Electric                                          	\N	490	65	83	57	95	85	105	1	f
141	136	Magmar                                            	Fire                                              	\N	495	65	95	57	100	85	93	1	f
142	137	Pinsir                                            	Bug                                               	\N	500	65	125	100	55	70	85	1	f
143	138	PinsirMega Pinsir                                 	Bug                                               	Flying                                            	600	65	155	120	65	90	105	1	f
144	139	Tauros                                            	Normal                                            	\N	490	75	100	95	40	70	110	1	f
145	140	Magikarp                                          	Water                                             	\N	200	20	10	55	15	20	80	1	f
146	141	Gyarados                                          	Water                                             	Flying                                            	540	95	125	79	60	100	81	1	f
147	142	GyaradosMega Gyarados                             	Water                                             	Dark                                              	640	95	155	109	70	130	81	1	f
148	143	Lapras                                            	Water                                             	Ice                                               	535	130	85	80	85	95	60	1	f
149	144	Ditto                                             	Normal                                            	\N	288	48	48	48	48	48	48	1	f
150	145	Eevee                                             	Normal                                            	\N	325	55	55	50	45	65	55	1	f
151	146	Vaporeon                                          	Water                                             	\N	525	130	65	60	110	95	65	1	f
152	147	Jolteon                                           	Electric                                          	\N	525	65	65	60	110	95	130	1	f
153	148	Flareon                                           	Fire                                              	\N	525	65	130	60	95	110	65	1	f
154	149	Porygon                                           	Normal                                            	\N	395	65	60	70	85	75	40	1	f
155	150	Omanyte                                           	Rock                                              	Water                                             	355	35	40	100	90	55	35	1	f
156	151	Omastar                                           	Rock                                              	Water                                             	495	70	60	125	115	70	55	1	f
157	152	Kabuto                                            	Rock                                              	Water                                             	355	30	80	90	55	45	55	1	f
158	153	Kabutops                                          	Rock                                              	Water                                             	495	60	115	105	65	70	80	1	f
159	154	Aerodactyl                                        	Rock                                              	Flying                                            	515	80	105	65	60	75	130	1	f
160	155	AerodactylMega Aerodactyl                         	Rock                                              	Flying                                            	615	80	135	85	70	95	150	1	f
161	156	Snorlax                                           	Normal                                            	\N	540	160	110	65	65	110	30	1	f
201	196	Ampharos                                          	Electric                                          	\N	510	90	75	85	115	90	55	2	f
162	157	Articuno                                          	Ice                                               	Flying                                            	580	90	85	100	95	125	85	1	t
163	158	Zapdos                                            	Electric                                          	Flying                                            	580	90	90	85	125	90	100	1	t
164	159	Moltres                                           	Fire                                              	Flying                                            	580	90	100	90	125	85	90	1	t
165	160	Dratini                                           	Dragon                                            	\N	300	41	64	45	50	50	50	1	f
166	161	Dragonair                                         	Dragon                                            	\N	420	61	84	65	70	70	70	1	f
167	162	Dragonite                                         	Dragon                                            	Flying                                            	600	91	134	95	100	100	80	1	f
168	163	Mewtwo                                            	Psychic                                           	\N	680	106	110	90	154	90	130	1	t
169	164	MewtwoMega Mewtwo X                               	Psychic                                           	Fighting                                          	780	106	190	100	154	100	130	1	t
170	165	MewtwoMega Mewtwo Y                               	Psychic                                           	\N	780	106	150	70	194	120	140	1	t
171	166	Mew                                               	Psychic                                           	\N	600	100	100	100	100	100	100	1	f
172	167	Chikorita                                         	Grass                                             	\N	318	45	49	65	49	65	45	2	f
173	168	Bayleef                                           	Grass                                             	\N	405	60	62	80	63	80	60	2	f
174	169	Meganium                                          	Grass                                             	\N	525	80	82	100	83	100	80	2	f
175	170	Cyndaquil                                         	Fire                                              	\N	309	39	52	43	60	50	65	2	f
176	171	Quilava                                           	Fire                                              	\N	405	58	64	58	80	65	80	2	f
177	172	Typhlosion                                        	Fire                                              	\N	534	78	84	78	109	85	100	2	f
178	173	Totodile                                          	Water                                             	\N	314	50	65	64	44	48	43	2	f
179	174	Croconaw                                          	Water                                             	\N	405	65	80	80	59	63	58	2	f
180	175	Feraligatr                                        	Water                                             	\N	530	85	105	100	79	83	78	2	f
181	176	Sentret                                           	Normal                                            	\N	215	35	46	34	35	45	20	2	f
182	177	Furret                                            	Normal                                            	\N	415	85	76	64	45	55	90	2	f
183	178	Hoothoot                                          	Normal                                            	Flying                                            	262	60	30	30	36	56	50	2	f
184	179	Noctowl                                           	Normal                                            	Flying                                            	442	100	50	50	76	96	70	2	f
185	180	Ledyba                                            	Bug                                               	Flying                                            	265	40	20	30	40	80	55	2	f
186	181	Ledian                                            	Bug                                               	Flying                                            	390	55	35	50	55	110	85	2	f
187	182	Spinarak                                          	Bug                                               	Poison                                            	250	40	60	40	40	40	30	2	f
188	183	Ariados                                           	Bug                                               	Poison                                            	390	70	90	70	60	60	40	2	f
189	184	Crobat                                            	Poison                                            	Flying                                            	535	85	90	80	70	80	130	2	f
190	185	Chinchou                                          	Water                                             	Electric                                          	330	75	38	38	56	56	67	2	f
191	186	Lanturn                                           	Water                                             	Electric                                          	460	125	58	58	76	76	67	2	f
192	187	Pichu                                             	Electric                                          	\N	205	20	40	15	35	35	60	2	f
193	188	Cleffa                                            	Fairy                                             	\N	218	50	25	28	45	55	15	2	f
194	189	Igglybuff                                         	Normal                                            	Fairy                                             	210	90	30	15	40	20	15	2	f
195	190	Togepi                                            	Fairy                                             	\N	245	35	20	65	40	65	20	2	f
196	191	Togetic                                           	Fairy                                             	Flying                                            	405	55	40	85	80	105	40	2	f
197	192	Natu                                              	Psychic                                           	Flying                                            	320	40	50	45	70	45	70	2	f
198	193	Xatu                                              	Psychic                                           	Flying                                            	470	65	75	70	95	70	95	2	f
199	194	Mareep                                            	Electric                                          	\N	280	55	40	40	65	45	35	2	f
200	195	Flaaffy                                           	Electric                                          	\N	365	70	55	55	80	60	45	2	f
202	197	AmpharosMega Ampharos                             	Electric                                          	Dragon                                            	610	90	95	105	165	110	45	2	f
203	198	Bellossom                                         	Grass                                             	\N	490	75	80	95	90	100	50	2	f
204	199	Marill                                            	Water                                             	Fairy                                             	250	70	20	50	20	50	40	2	f
205	200	Azumarill                                         	Water                                             	Fairy                                             	420	100	50	80	60	80	50	2	f
206	201	Sudowoodo                                         	Rock                                              	\N	410	70	100	115	30	65	30	2	f
207	202	Politoed                                          	Water                                             	\N	500	90	75	75	90	100	70	2	f
208	203	Hoppip                                            	Grass                                             	Flying                                            	250	35	35	40	35	55	50	2	f
209	204	Skiploom                                          	Grass                                             	Flying                                            	340	55	45	50	45	65	80	2	f
210	205	Jumpluff                                          	Grass                                             	Flying                                            	460	75	55	70	55	95	110	2	f
211	206	Aipom                                             	Normal                                            	\N	360	55	70	55	40	55	85	2	f
212	207	Sunkern                                           	Grass                                             	\N	180	30	30	30	30	30	30	2	f
213	208	Sunflora                                          	Grass                                             	\N	425	75	75	55	105	85	30	2	f
214	209	Yanma                                             	Bug                                               	Flying                                            	390	65	65	45	75	45	95	2	f
215	210	Wooper                                            	Water                                             	Ground                                            	210	55	45	45	25	25	15	2	f
216	211	Quagsire                                          	Water                                             	Ground                                            	430	95	85	85	65	65	35	2	f
217	212	Espeon                                            	Psychic                                           	\N	525	65	65	60	130	95	110	2	f
218	213	Umbreon                                           	Dark                                              	\N	525	95	65	110	60	130	65	2	f
219	214	Murkrow                                           	Dark                                              	Flying                                            	405	60	85	42	85	42	91	2	f
220	215	Slowking                                          	Water                                             	Psychic                                           	490	95	75	80	100	110	30	2	f
221	216	Misdreavus                                        	Ghost                                             	\N	435	60	60	60	85	85	85	2	f
222	217	Unown                                             	Psychic                                           	\N	336	48	72	48	72	48	48	2	f
223	218	Wobbuffet                                         	Psychic                                           	\N	405	190	33	58	33	58	33	2	f
224	219	Girafarig                                         	Normal                                            	Psychic                                           	455	70	80	65	90	65	85	2	f
225	220	Pineco                                            	Bug                                               	\N	290	50	65	90	35	35	15	2	f
226	221	Forretress                                        	Bug                                               	Steel                                             	465	75	90	140	60	60	40	2	f
227	222	Dunsparce                                         	Normal                                            	\N	415	100	70	70	65	65	45	2	f
228	223	Gligar                                            	Ground                                            	Flying                                            	430	65	75	105	35	65	85	2	f
229	224	Steelix                                           	Steel                                             	Ground                                            	510	75	85	200	55	65	30	2	f
230	225	SteelixMega Steelix                               	Steel                                             	Ground                                            	610	75	125	230	55	95	30	2	f
231	226	Snubbull                                          	Fairy                                             	\N	300	60	80	50	40	40	30	2	f
232	227	Granbull                                          	Fairy                                             	\N	450	90	120	75	60	60	45	2	f
233	228	Qwilfish                                          	Water                                             	Poison                                            	430	65	95	75	55	55	85	2	f
234	229	Scizor                                            	Bug                                               	Steel                                             	500	70	130	100	55	80	65	2	f
235	230	ScizorMega Scizor                                 	Bug                                               	Steel                                             	600	70	150	140	65	100	75	2	f
236	231	Shuckle                                           	Bug                                               	Rock                                              	505	20	10	230	10	230	5	2	f
237	232	Heracross                                         	Bug                                               	Fighting                                          	500	80	125	75	40	95	85	2	f
238	233	HeracrossMega Heracross                           	Bug                                               	Fighting                                          	600	80	185	115	40	105	75	2	f
239	234	Sneasel                                           	Dark                                              	Ice                                               	430	55	95	55	35	75	115	2	f
240	235	Teddiursa                                         	Normal                                            	\N	330	60	80	50	50	50	40	2	f
241	236	Ursaring                                          	Normal                                            	\N	500	90	130	75	75	75	55	2	f
242	237	Slugma                                            	Fire                                              	\N	250	40	40	40	70	40	20	2	f
243	238	Magcargo                                          	Fire                                              	Rock                                              	410	50	50	120	80	80	30	2	f
244	239	Swinub                                            	Ice                                               	Ground                                            	250	50	50	40	30	30	50	2	f
245	240	Piloswine                                         	Ice                                               	Ground                                            	450	100	100	80	60	60	50	2	f
246	241	Corsola                                           	Water                                             	Rock                                              	380	55	55	85	65	85	35	2	f
247	242	Remoraid                                          	Water                                             	\N	300	35	65	35	65	35	65	2	f
248	243	Octillery                                         	Water                                             	\N	480	75	105	75	105	75	45	2	f
249	244	Delibird                                          	Ice                                               	Flying                                            	330	45	55	45	65	45	75	2	f
250	245	Mantine                                           	Water                                             	Flying                                            	465	65	40	70	80	140	70	2	f
251	246	Skarmory                                          	Steel                                             	Flying                                            	465	65	80	140	40	70	70	2	f
252	247	Houndour                                          	Dark                                              	Fire                                              	330	45	60	30	80	50	65	2	f
253	248	Houndoom                                          	Dark                                              	Fire                                              	500	75	90	50	110	80	95	2	f
254	249	HoundoomMega Houndoom                             	Dark                                              	Fire                                              	600	75	90	90	140	90	115	2	f
255	250	Kingdra                                           	Water                                             	Dragon                                            	540	75	95	95	95	95	85	2	f
256	251	Phanpy                                            	Ground                                            	\N	330	90	60	60	40	40	40	2	f
257	252	Donphan                                           	Ground                                            	\N	500	90	120	120	60	60	50	2	f
258	253	Porygon2                                          	Normal                                            	\N	515	85	80	90	105	95	60	2	f
259	254	Stantler                                          	Normal                                            	\N	465	73	95	62	85	65	85	2	f
260	255	Smeargle                                          	Normal                                            	\N	250	55	20	35	20	45	75	2	f
261	256	Tyrogue                                           	Fighting                                          	\N	210	35	35	35	35	35	35	2	f
262	257	Hitmontop                                         	Fighting                                          	\N	455	50	95	95	35	110	70	2	f
263	258	Smoochum                                          	Ice                                               	Psychic                                           	305	45	30	15	85	65	65	2	f
264	259	Elekid                                            	Electric                                          	\N	360	45	63	37	65	55	95	2	f
265	260	Magby                                             	Fire                                              	\N	365	45	75	37	70	55	83	2	f
266	261	Miltank                                           	Normal                                            	\N	490	95	80	105	40	70	100	2	f
267	262	Blissey                                           	Normal                                            	\N	540	255	10	10	75	135	55	2	f
268	263	Raikou                                            	Electric                                          	\N	580	90	85	75	115	100	115	2	t
269	264	Entei                                             	Fire                                              	\N	580	115	115	85	90	75	100	2	t
270	265	Suicune                                           	Water                                             	\N	580	100	75	115	90	115	85	2	t
271	266	Larvitar                                          	Rock                                              	Ground                                            	300	50	64	50	45	50	41	2	f
272	267	Pupitar                                           	Rock                                              	Ground                                            	410	70	84	70	65	70	51	2	f
273	268	Tyranitar                                         	Rock                                              	Dark                                              	600	100	134	110	95	100	61	2	f
274	269	TyranitarMega Tyranitar                           	Rock                                              	Dark                                              	700	100	164	150	95	120	71	2	f
275	270	Lugia                                             	Psychic                                           	Flying                                            	680	106	90	130	90	154	110	2	t
276	271	Ho-oh                                             	Fire                                              	Flying                                            	680	106	130	90	110	154	90	2	t
277	272	Celebi                                            	Psychic                                           	Grass                                             	600	100	100	100	100	100	100	2	f
278	273	Treecko                                           	Grass                                             	\N	310	40	45	35	65	55	70	3	f
279	274	Grovyle                                           	Grass                                             	\N	405	50	65	45	85	65	95	3	f
280	275	Sceptile                                          	Grass                                             	\N	530	70	85	65	105	85	120	3	f
281	276	SceptileMega Sceptile                             	Grass                                             	Dragon                                            	630	70	110	75	145	85	145	3	f
282	277	Torchic                                           	Fire                                              	\N	310	45	60	40	70	50	45	3	f
283	278	Combusken                                         	Fire                                              	Fighting                                          	405	60	85	60	85	60	55	3	f
284	279	Blaziken                                          	Fire                                              	Fighting                                          	530	80	120	70	110	70	80	3	f
285	280	BlazikenMega Blaziken                             	Fire                                              	Fighting                                          	630	80	160	80	130	80	100	3	f
286	281	Mudkip                                            	Water                                             	\N	310	50	70	50	50	50	40	3	f
287	282	Marshtomp                                         	Water                                             	Ground                                            	405	70	85	70	60	70	50	3	f
288	283	Swampert                                          	Water                                             	Ground                                            	535	100	110	90	85	90	60	3	f
289	284	SwampertMega Swampert                             	Water                                             	Ground                                            	635	100	150	110	95	110	70	3	f
290	285	Poochyena                                         	Dark                                              	\N	220	35	55	35	30	30	35	3	f
291	286	Mightyena                                         	Dark                                              	\N	420	70	90	70	60	60	70	3	f
292	287	Zigzagoon                                         	Normal                                            	\N	240	38	30	41	30	41	60	3	f
293	288	Linoone                                           	Normal                                            	\N	420	78	70	61	50	61	100	3	f
294	289	Wurmple                                           	Bug                                               	\N	195	45	45	35	20	30	20	3	f
295	290	Silcoon                                           	Bug                                               	\N	205	50	35	55	25	25	15	3	f
296	291	Beautifly                                         	Bug                                               	Flying                                            	395	60	70	50	100	50	65	3	f
297	292	Cascoon                                           	Bug                                               	\N	205	50	35	55	25	25	15	3	f
298	293	Dustox                                            	Bug                                               	Poison                                            	385	60	50	70	50	90	65	3	f
299	294	Lotad                                             	Water                                             	Grass                                             	220	40	30	30	40	50	30	3	f
300	295	Lombre                                            	Water                                             	Grass                                             	340	60	50	50	60	70	50	3	f
301	296	Ludicolo                                          	Water                                             	Grass                                             	480	80	70	70	90	100	70	3	f
302	297	Seedot                                            	Grass                                             	\N	220	40	40	50	30	30	30	3	f
303	298	Nuzleaf                                           	Grass                                             	Dark                                              	340	70	70	40	60	40	60	3	f
304	299	Shiftry                                           	Grass                                             	Dark                                              	480	90	100	60	90	60	80	3	f
305	300	Taillow                                           	Normal                                            	Flying                                            	270	40	55	30	30	30	85	3	f
306	301	Swellow                                           	Normal                                            	Flying                                            	430	60	85	60	50	50	125	3	f
307	302	Wingull                                           	Water                                             	Flying                                            	270	40	30	30	55	30	85	3	f
308	303	Pelipper                                          	Water                                             	Flying                                            	430	60	50	100	85	70	65	3	f
309	304	Ralts                                             	Psychic                                           	Fairy                                             	198	28	25	25	45	35	40	3	f
310	305	Kirlia                                            	Psychic                                           	Fairy                                             	278	38	35	35	65	55	50	3	f
311	306	Gardevoir                                         	Psychic                                           	Fairy                                             	518	68	65	65	125	115	80	3	f
312	307	GardevoirMega Gardevoir                           	Psychic                                           	Fairy                                             	618	68	85	65	165	135	100	3	f
313	308	Surskit                                           	Bug                                               	Water                                             	269	40	30	32	50	52	65	3	f
314	309	Masquerain                                        	Bug                                               	Flying                                            	414	70	60	62	80	82	60	3	f
315	310	Shroomish                                         	Grass                                             	\N	295	60	40	60	40	60	35	3	f
316	311	Breloom                                           	Grass                                             	Fighting                                          	460	60	130	80	60	60	70	3	f
317	312	Slakoth                                           	Normal                                            	\N	280	60	60	60	35	35	30	3	f
318	313	Vigoroth                                          	Normal                                            	\N	440	80	80	80	55	55	90	3	f
319	314	Slaking                                           	Normal                                            	\N	670	150	160	100	95	65	100	3	f
320	315	Nincada                                           	Bug                                               	Ground                                            	266	31	45	90	30	30	40	3	f
321	316	Ninjask                                           	Bug                                               	Flying                                            	456	61	90	45	50	50	160	3	f
322	317	Shedinja                                          	Bug                                               	Ghost                                             	236	1	90	45	30	30	40	3	f
323	318	Whismur                                           	Normal                                            	\N	240	64	51	23	51	23	28	3	f
324	319	Loudred                                           	Normal                                            	\N	360	84	71	43	71	43	48	3	f
325	320	Exploud                                           	Normal                                            	\N	490	104	91	63	91	73	68	3	f
326	321	Makuhita                                          	Fighting                                          	\N	237	72	60	30	20	30	25	3	f
327	322	Hariyama                                          	Fighting                                          	\N	474	144	120	60	40	60	50	3	f
328	323	Azurill                                           	Normal                                            	Fairy                                             	190	50	20	40	20	40	20	3	f
329	324	Nosepass                                          	Rock                                              	\N	375	30	45	135	45	90	30	3	f
330	325	Skitty                                            	Normal                                            	\N	260	50	45	45	35	35	50	3	f
331	326	Delcatty                                          	Normal                                            	\N	380	70	65	65	55	55	70	3	f
332	327	Sableye                                           	Dark                                              	Ghost                                             	380	50	75	75	65	65	50	3	f
333	328	SableyeMega Sableye                               	Dark                                              	Ghost                                             	480	50	85	125	85	115	20	3	f
334	329	Mawile                                            	Steel                                             	Fairy                                             	380	50	85	85	55	55	50	3	f
335	330	MawileMega Mawile                                 	Steel                                             	Fairy                                             	480	50	105	125	55	95	50	3	f
336	331	Aron                                              	Steel                                             	Rock                                              	330	50	70	100	40	40	30	3	f
337	332	Lairon                                            	Steel                                             	Rock                                              	430	60	90	140	50	50	40	3	f
338	333	Aggron                                            	Steel                                             	Rock                                              	530	70	110	180	60	60	50	3	f
339	334	AggronMega Aggron                                 	Steel                                             	\N	630	70	140	230	60	80	50	3	f
340	335	Meditite                                          	Fighting                                          	Psychic                                           	280	30	40	55	40	55	60	3	f
341	336	Medicham                                          	Fighting                                          	Psychic                                           	410	60	60	75	60	75	80	3	f
342	337	MedichamMega Medicham                             	Fighting                                          	Psychic                                           	510	60	100	85	80	85	100	3	f
343	338	Electrike                                         	Electric                                          	\N	295	40	45	40	65	40	65	3	f
344	339	Manectric                                         	Electric                                          	\N	475	70	75	60	105	60	105	3	f
345	340	ManectricMega Manectric                           	Electric                                          	\N	575	70	75	80	135	80	135	3	f
346	341	Plusle                                            	Electric                                          	\N	405	60	50	40	85	75	95	3	f
347	342	Minun                                             	Electric                                          	\N	405	60	40	50	75	85	95	3	f
348	343	Volbeat                                           	Bug                                               	\N	400	65	73	55	47	75	85	3	f
349	344	Illumise                                          	Bug                                               	\N	400	65	47	55	73	75	85	3	f
350	345	Roselia                                           	Grass                                             	Poison                                            	400	50	60	45	100	80	65	3	f
351	346	Gulpin                                            	Poison                                            	\N	302	70	43	53	43	53	40	3	f
352	347	Swalot                                            	Poison                                            	\N	467	100	73	83	73	83	55	3	f
353	348	Carvanha                                          	Water                                             	Dark                                              	305	45	90	20	65	20	65	3	f
354	349	Sharpedo                                          	Water                                             	Dark                                              	460	70	120	40	95	40	95	3	f
355	350	SharpedoMega Sharpedo                             	Water                                             	Dark                                              	560	70	140	70	110	65	105	3	f
356	351	Wailmer                                           	Water                                             	\N	400	130	70	35	70	35	60	3	f
357	352	Wailord                                           	Water                                             	\N	500	170	90	45	90	45	60	3	f
358	353	Numel                                             	Fire                                              	Ground                                            	305	60	60	40	65	45	35	3	f
359	354	Camerupt                                          	Fire                                              	Ground                                            	460	70	100	70	105	75	40	3	f
360	355	CameruptMega Camerupt                             	Fire                                              	Ground                                            	560	70	120	100	145	105	20	3	f
361	356	Torkoal                                           	Fire                                              	\N	470	70	85	140	85	70	20	3	f
362	357	Spoink                                            	Psychic                                           	\N	330	60	25	35	70	80	60	3	f
363	358	Grumpig                                           	Psychic                                           	\N	470	80	45	65	90	110	80	3	f
364	359	Spinda                                            	Normal                                            	\N	360	60	60	60	60	60	60	3	f
365	360	Trapinch                                          	Ground                                            	\N	290	45	100	45	45	45	10	3	f
366	361	Vibrava                                           	Ground                                            	Dragon                                            	340	50	70	50	50	50	70	3	f
367	362	Flygon                                            	Ground                                            	Dragon                                            	520	80	100	80	80	80	100	3	f
368	363	Cacnea                                            	Grass                                             	\N	335	50	85	40	85	40	35	3	f
369	364	Cacturne                                          	Grass                                             	Dark                                              	475	70	115	60	115	60	55	3	f
370	365	Swablu                                            	Normal                                            	Flying                                            	310	45	40	60	40	75	50	3	f
371	366	Altaria                                           	Dragon                                            	Flying                                            	490	75	70	90	70	105	80	3	f
372	367	AltariaMega Altaria                               	Dragon                                            	Fairy                                             	590	75	110	110	110	105	80	3	f
373	368	Zangoose                                          	Normal                                            	\N	458	73	115	60	60	60	90	3	f
374	369	Seviper                                           	Poison                                            	\N	458	73	100	60	100	60	65	3	f
375	370	Lunatone                                          	Rock                                              	Psychic                                           	440	70	55	65	95	85	70	3	f
376	371	Solrock                                           	Rock                                              	Psychic                                           	440	70	95	85	55	65	70	3	f
377	372	Barboach                                          	Water                                             	Ground                                            	288	50	48	43	46	41	60	3	f
378	373	Whiscash                                          	Water                                             	Ground                                            	468	110	78	73	76	71	60	3	f
379	374	Corphish                                          	Water                                             	\N	308	43	80	65	50	35	35	3	f
380	375	Crawdaunt                                         	Water                                             	Dark                                              	468	63	120	85	90	55	55	3	f
381	376	Baltoy                                            	Ground                                            	Psychic                                           	300	40	40	55	40	70	55	3	f
382	377	Claydol                                           	Ground                                            	Psychic                                           	500	60	70	105	70	120	75	3	f
383	378	Lileep                                            	Rock                                              	Grass                                             	355	66	41	77	61	87	23	3	f
384	379	Cradily                                           	Rock                                              	Grass                                             	495	86	81	97	81	107	43	3	f
385	380	Anorith                                           	Rock                                              	Bug                                               	355	45	95	50	40	50	75	3	f
386	381	Armaldo                                           	Rock                                              	Bug                                               	495	75	125	100	70	80	45	3	f
387	382	Feebas                                            	Water                                             	\N	200	20	15	20	10	55	80	3	f
388	383	Milotic                                           	Water                                             	\N	540	95	60	79	100	125	81	3	f
389	384	Castform                                          	Normal                                            	\N	420	70	70	70	70	70	70	3	f
390	385	Kecleon                                           	Normal                                            	\N	440	60	90	70	60	120	40	3	f
391	386	Shuppet                                           	Ghost                                             	\N	295	44	75	35	63	33	45	3	f
392	387	Banette                                           	Ghost                                             	\N	455	64	115	65	83	63	65	3	f
393	388	BanetteMega Banette                               	Ghost                                             	\N	555	64	165	75	93	83	75	3	f
394	389	Duskull                                           	Ghost                                             	\N	295	20	40	90	30	90	25	3	f
395	390	Dusclops                                          	Ghost                                             	\N	455	40	70	130	60	130	25	3	f
396	391	Tropius                                           	Grass                                             	Flying                                            	460	99	68	83	72	87	51	3	f
397	392	Chimecho                                          	Psychic                                           	\N	425	65	50	70	95	80	65	3	f
398	393	Absol                                             	Dark                                              	\N	465	65	130	60	75	60	75	3	f
399	394	AbsolMega Absol                                   	Dark                                              	\N	565	65	150	60	115	60	115	3	f
400	395	Wynaut                                            	Psychic                                           	\N	260	95	23	48	23	48	23	3	f
401	396	Snorunt                                           	Ice                                               	\N	300	50	50	50	50	50	50	3	f
402	397	Glalie                                            	Ice                                               	\N	480	80	80	80	80	80	80	3	f
403	398	GlalieMega Glalie                                 	Ice                                               	\N	580	80	120	80	120	80	100	3	f
404	399	Spheal                                            	Ice                                               	Water                                             	290	70	40	50	55	50	25	3	f
405	400	Sealeo                                            	Ice                                               	Water                                             	410	90	60	70	75	70	45	3	f
406	401	Walrein                                           	Ice                                               	Water                                             	530	110	80	90	95	90	65	3	f
407	402	Clamperl                                          	Water                                             	\N	345	35	64	85	74	55	32	3	f
408	403	Huntail                                           	Water                                             	\N	485	55	104	105	94	75	52	3	f
409	404	Gorebyss                                          	Water                                             	\N	485	55	84	105	114	75	52	3	f
410	405	Relicanth                                         	Water                                             	Rock                                              	485	100	90	130	45	65	55	3	f
411	406	Luvdisc                                           	Water                                             	\N	330	43	30	55	40	65	97	3	f
412	407	Bagon                                             	Dragon                                            	\N	300	45	75	60	40	30	50	3	f
413	408	Shelgon                                           	Dragon                                            	\N	420	65	95	100	60	50	50	3	f
414	409	Salamence                                         	Dragon                                            	Flying                                            	600	95	135	80	110	80	100	3	f
415	410	SalamenceMega Salamence                           	Dragon                                            	Flying                                            	700	95	145	130	120	90	120	3	f
416	411	Beldum                                            	Steel                                             	Psychic                                           	300	40	55	80	35	60	30	3	f
417	412	Metang                                            	Steel                                             	Psychic                                           	420	60	75	100	55	80	50	3	f
418	413	Metagross                                         	Steel                                             	Psychic                                           	600	80	135	130	95	90	70	3	f
419	414	MetagrossMega Metagross                           	Steel                                             	Psychic                                           	700	80	145	150	105	110	110	3	f
420	415	Regirock                                          	Rock                                              	\N	580	80	100	200	50	100	50	3	t
421	416	Regice                                            	Ice                                               	\N	580	80	50	100	100	200	50	3	t
422	417	Registeel                                         	Steel                                             	\N	580	80	75	150	75	150	50	3	t
423	418	Latias                                            	Dragon                                            	Psychic                                           	600	80	80	90	110	130	110	3	t
424	419	LatiasMega Latias                                 	Dragon                                            	Psychic                                           	700	80	100	120	140	150	110	3	t
425	420	Latios                                            	Dragon                                            	Psychic                                           	600	80	90	80	130	110	110	3	t
426	421	LatiosMega Latios                                 	Dragon                                            	Psychic                                           	700	80	130	100	160	120	110	3	t
427	422	Kyogre                                            	Water                                             	\N	670	100	100	90	150	140	90	3	t
428	423	KyogrePrimal Kyogre                               	Water                                             	\N	770	100	150	90	180	160	90	3	t
429	424	Groudon                                           	Ground                                            	\N	670	100	150	140	100	90	90	3	t
430	425	GroudonPrimal Groudon                             	Ground                                            	Fire                                              	770	100	180	160	150	90	90	3	t
431	426	Rayquaza                                          	Dragon                                            	Flying                                            	680	105	150	90	150	90	95	3	t
432	427	RayquazaMega Rayquaza                             	Dragon                                            	Flying                                            	780	105	180	100	180	100	115	3	t
433	428	Jirachi                                           	Steel                                             	Psychic                                           	600	100	100	100	100	100	100	3	t
434	429	DeoxysNormal Forme                                	Psychic                                           	\N	600	50	150	50	150	50	150	3	t
435	430	DeoxysAttack Forme                                	Psychic                                           	\N	600	50	180	20	180	20	150	3	t
436	431	DeoxysDefense Forme                               	Psychic                                           	\N	600	50	70	160	70	160	90	3	t
437	432	DeoxysSpeed Forme                                 	Psychic                                           	\N	600	50	95	90	95	90	180	3	t
438	433	Turtwig                                           	Grass                                             	\N	318	55	68	64	45	55	31	4	f
439	434	Grotle                                            	Grass                                             	\N	405	75	89	85	55	65	36	4	f
440	435	Torterra                                          	Grass                                             	Ground                                            	525	95	109	105	75	85	56	4	f
441	436	Chimchar                                          	Fire                                              	\N	309	44	58	44	58	44	61	4	f
442	437	Monferno                                          	Fire                                              	Fighting                                          	405	64	78	52	78	52	81	4	f
443	438	Infernape                                         	Fire                                              	Fighting                                          	534	76	104	71	104	71	108	4	f
444	439	Piplup                                            	Water                                             	\N	314	53	51	53	61	56	40	4	f
445	440	Prinplup                                          	Water                                             	\N	405	64	66	68	81	76	50	4	f
446	441	Empoleon                                          	Water                                             	Steel                                             	530	84	86	88	111	101	60	4	f
447	442	Starly                                            	Normal                                            	Flying                                            	245	40	55	30	30	30	60	4	f
448	443	Staravia                                          	Normal                                            	Flying                                            	340	55	75	50	40	40	80	4	f
449	444	Staraptor                                         	Normal                                            	Flying                                            	485	85	120	70	50	60	100	4	f
450	445	Bidoof                                            	Normal                                            	\N	250	59	45	40	35	40	31	4	f
451	446	Bibarel                                           	Normal                                            	Water                                             	410	79	85	60	55	60	71	4	f
452	447	Kricketot                                         	Bug                                               	\N	194	37	25	41	25	41	25	4	f
453	448	Kricketune                                        	Bug                                               	\N	384	77	85	51	55	51	65	4	f
454	449	Shinx                                             	Electric                                          	\N	263	45	65	34	40	34	45	4	f
455	450	Luxio                                             	Electric                                          	\N	363	60	85	49	60	49	60	4	f
456	451	Luxray                                            	Electric                                          	\N	523	80	120	79	95	79	70	4	f
457	452	Budew                                             	Grass                                             	Poison                                            	280	40	30	35	50	70	55	4	f
458	453	Roserade                                          	Grass                                             	Poison                                            	515	60	70	65	125	105	90	4	f
459	454	Cranidos                                          	Rock                                              	\N	350	67	125	40	30	30	58	4	f
460	455	Rampardos                                         	Rock                                              	\N	495	97	165	60	65	50	58	4	f
461	456	Shieldon                                          	Rock                                              	Steel                                             	350	30	42	118	42	88	30	4	f
462	457	Bastiodon                                         	Rock                                              	Steel                                             	495	60	52	168	47	138	30	4	f
463	458	Burmy                                             	Bug                                               	\N	224	40	29	45	29	45	36	4	f
464	459	WormadamPlant Cloak                               	Bug                                               	Grass                                             	424	60	59	85	79	105	36	4	f
465	460	WormadamSandy Cloak                               	Bug                                               	Ground                                            	424	60	79	105	59	85	36	4	f
466	461	WormadamTrash Cloak                               	Bug                                               	Steel                                             	424	60	69	95	69	95	36	4	f
467	462	Mothim                                            	Bug                                               	Flying                                            	424	70	94	50	94	50	66	4	f
468	463	Combee                                            	Bug                                               	Flying                                            	244	30	30	42	30	42	70	4	f
469	464	Vespiquen                                         	Bug                                               	Flying                                            	474	70	80	102	80	102	40	4	f
470	465	Pachirisu                                         	Electric                                          	\N	405	60	45	70	45	90	95	4	f
471	466	Buizel                                            	Water                                             	\N	330	55	65	35	60	30	85	4	f
472	467	Floatzel                                          	Water                                             	\N	495	85	105	55	85	50	115	4	f
473	468	Cherubi                                           	Grass                                             	\N	275	45	35	45	62	53	35	4	f
474	469	Cherrim                                           	Grass                                             	\N	450	70	60	70	87	78	85	4	f
475	470	Shellos                                           	Water                                             	\N	325	76	48	48	57	62	34	4	f
476	471	Gastrodon                                         	Water                                             	Ground                                            	475	111	83	68	92	82	39	4	f
477	472	Ambipom                                           	Normal                                            	\N	482	75	100	66	60	66	115	4	f
478	473	Drifloon                                          	Ghost                                             	Flying                                            	348	90	50	34	60	44	70	4	f
479	474	Drifblim                                          	Ghost                                             	Flying                                            	498	150	80	44	90	54	80	4	f
480	475	Buneary                                           	Normal                                            	\N	350	55	66	44	44	56	85	4	f
481	476	Lopunny                                           	Normal                                            	\N	480	65	76	84	54	96	105	4	f
482	477	LopunnyMega Lopunny                               	Normal                                            	Fighting                                          	580	65	136	94	54	96	135	4	f
483	478	Mismagius                                         	Ghost                                             	\N	495	60	60	60	105	105	105	4	f
484	479	Honchkrow                                         	Dark                                              	Flying                                            	505	100	125	52	105	52	71	4	f
485	480	Glameow                                           	Normal                                            	\N	310	49	55	42	42	37	85	4	f
486	481	Purugly                                           	Normal                                            	\N	452	71	82	64	64	59	112	4	f
487	482	Chingling                                         	Psychic                                           	\N	285	45	30	50	65	50	45	4	f
488	483	Stunky                                            	Poison                                            	Dark                                              	329	63	63	47	41	41	74	4	f
489	484	Skuntank                                          	Poison                                            	Dark                                              	479	103	93	67	71	61	84	4	f
490	485	Bronzor                                           	Steel                                             	Psychic                                           	300	57	24	86	24	86	23	4	f
491	486	Bronzong                                          	Steel                                             	Psychic                                           	500	67	89	116	79	116	33	4	f
492	487	Bonsly                                            	Rock                                              	\N	290	50	80	95	10	45	10	4	f
493	488	Mime Jr.                                          	Psychic                                           	Fairy                                             	310	20	25	45	70	90	60	4	f
494	489	Happiny                                           	Normal                                            	\N	220	100	5	5	15	65	30	4	f
495	490	Chatot                                            	Normal                                            	Flying                                            	411	76	65	45	92	42	91	4	f
496	491	Spiritomb                                         	Ghost                                             	Dark                                              	485	50	92	108	92	108	35	4	f
497	492	Gible                                             	Dragon                                            	Ground                                            	300	58	70	45	40	45	42	4	f
498	493	Gabite                                            	Dragon                                            	Ground                                            	410	68	90	65	50	55	82	4	f
499	494	Garchomp                                          	Dragon                                            	Ground                                            	600	108	130	95	80	85	102	4	f
500	495	GarchompMega Garchomp                             	Dragon                                            	Ground                                            	700	108	170	115	120	95	92	4	f
501	496	Munchlax                                          	Normal                                            	\N	390	135	85	40	40	85	5	4	f
502	497	Riolu                                             	Fighting                                          	\N	285	40	70	40	35	40	60	4	f
503	498	Lucario                                           	Fighting                                          	Steel                                             	525	70	110	70	115	70	90	4	f
504	499	LucarioMega Lucario                               	Fighting                                          	Steel                                             	625	70	145	88	140	70	112	4	f
505	500	Hippopotas                                        	Ground                                            	\N	330	68	72	78	38	42	32	4	f
506	501	Hippowdon                                         	Ground                                            	\N	525	108	112	118	68	72	47	4	f
507	502	Skorupi                                           	Poison                                            	Bug                                               	330	40	50	90	30	55	65	4	f
508	503	Drapion                                           	Poison                                            	Dark                                              	500	70	90	110	60	75	95	4	f
509	504	Croagunk                                          	Poison                                            	Fighting                                          	300	48	61	40	61	40	50	4	f
510	505	Toxicroak                                         	Poison                                            	Fighting                                          	490	83	106	65	86	65	85	4	f
511	506	Carnivine                                         	Grass                                             	\N	454	74	100	72	90	72	46	4	f
512	507	Finneon                                           	Water                                             	\N	330	49	49	56	49	61	66	4	f
513	508	Lumineon                                          	Water                                             	\N	460	69	69	76	69	86	91	4	f
514	509	Mantyke                                           	Water                                             	Flying                                            	345	45	20	50	60	120	50	4	f
515	510	Snover                                            	Grass                                             	Ice                                               	334	60	62	50	62	60	40	4	f
516	511	Abomasnow                                         	Grass                                             	Ice                                               	494	90	92	75	92	85	60	4	f
517	512	AbomasnowMega Abomasnow                           	Grass                                             	Ice                                               	594	90	132	105	132	105	30	4	f
518	513	Weavile                                           	Dark                                              	Ice                                               	510	70	120	65	45	85	125	4	f
519	514	Magnezone                                         	Electric                                          	Steel                                             	535	70	70	115	130	90	60	4	f
520	515	Lickilicky                                        	Normal                                            	\N	515	110	85	95	80	95	50	4	f
521	516	Rhyperior                                         	Ground                                            	Rock                                              	535	115	140	130	55	55	40	4	f
522	517	Tangrowth                                         	Grass                                             	\N	535	100	100	125	110	50	50	4	f
523	518	Electivire                                        	Electric                                          	\N	540	75	123	67	95	85	95	4	f
524	519	Magmortar                                         	Fire                                              	\N	540	75	95	67	125	95	83	4	f
525	520	Togekiss                                          	Fairy                                             	Flying                                            	545	85	50	95	120	115	80	4	f
526	521	Yanmega                                           	Bug                                               	Flying                                            	515	86	76	86	116	56	95	4	f
527	522	Leafeon                                           	Grass                                             	\N	525	65	110	130	60	65	95	4	f
528	523	Glaceon                                           	Ice                                               	\N	525	65	60	110	130	95	65	4	f
529	524	Gliscor                                           	Ground                                            	Flying                                            	510	75	95	125	45	75	95	4	f
530	525	Mamoswine                                         	Ice                                               	Ground                                            	530	110	130	80	70	60	80	4	f
531	526	Porygon-Z                                         	Normal                                            	\N	535	85	80	70	135	75	90	4	f
532	527	Gallade                                           	Psychic                                           	Fighting                                          	518	68	125	65	65	115	80	4	f
533	528	GalladeMega Gallade                               	Psychic                                           	Fighting                                          	618	68	165	95	65	115	110	4	f
534	529	Probopass                                         	Rock                                              	Steel                                             	525	60	55	145	75	150	40	4	f
535	530	Dusknoir                                          	Ghost                                             	\N	525	45	100	135	65	135	45	4	f
536	531	Froslass                                          	Ice                                               	Ghost                                             	480	70	80	70	80	70	110	4	f
537	532	Rotom                                             	Electric                                          	Ghost                                             	440	50	50	77	95	77	91	4	f
538	533	RotomHeat Rotom                                   	Electric                                          	Fire                                              	520	50	65	107	105	107	86	4	f
539	534	RotomWash Rotom                                   	Electric                                          	Water                                             	520	50	65	107	105	107	86	4	f
540	535	RotomFrost Rotom                                  	Electric                                          	Ice                                               	520	50	65	107	105	107	86	4	f
541	536	RotomFan Rotom                                    	Electric                                          	Flying                                            	520	50	65	107	105	107	86	4	f
542	537	RotomMow Rotom                                    	Electric                                          	Grass                                             	520	50	65	107	105	107	86	4	f
543	538	Uxie                                              	Psychic                                           	\N	580	75	75	130	75	130	95	4	t
544	539	Mesprit                                           	Psychic                                           	\N	580	80	105	105	105	105	80	4	t
545	540	Azelf                                             	Psychic                                           	\N	580	75	125	70	125	70	115	4	t
546	541	Dialga                                            	Steel                                             	Dragon                                            	680	100	120	120	150	100	90	4	t
547	542	Palkia                                            	Water                                             	Dragon                                            	680	90	120	100	150	120	100	4	t
548	543	Heatran                                           	Fire                                              	Steel                                             	600	91	90	106	130	106	77	4	t
549	544	Regigigas                                         	Normal                                            	\N	670	110	160	110	80	110	100	4	t
550	545	GiratinaAltered Forme                             	Ghost                                             	Dragon                                            	680	150	100	120	100	120	90	4	t
551	546	GiratinaOrigin Forme                              	Ghost                                             	Dragon                                            	680	150	120	100	120	100	90	4	t
552	547	Cresselia                                         	Psychic                                           	\N	600	120	70	120	75	130	85	4	f
553	548	Phione                                            	Water                                             	\N	480	80	80	80	80	80	80	4	f
554	549	Manaphy                                           	Water                                             	\N	600	100	100	100	100	100	100	4	f
555	550	Darkrai                                           	Dark                                              	\N	600	70	90	90	135	90	125	4	t
556	551	ShayminLand Forme                                 	Grass                                             	\N	600	100	100	100	100	100	100	4	t
557	552	ShayminSky Forme                                  	Grass                                             	Flying                                            	600	100	103	75	120	75	127	4	t
558	553	Arceus                                            	Normal                                            	\N	720	120	120	120	120	120	120	4	t
559	554	Victini                                           	Psychic                                           	Fire                                              	600	100	100	100	100	100	100	5	t
560	555	Snivy                                             	Grass                                             	\N	308	45	45	55	45	55	63	5	f
561	556	Servine                                           	Grass                                             	\N	413	60	60	75	60	75	83	5	f
562	557	Serperior                                         	Grass                                             	\N	528	75	75	95	75	95	113	5	f
563	558	Tepig                                             	Fire                                              	\N	308	65	63	45	45	45	45	5	f
564	559	Pignite                                           	Fire                                              	Fighting                                          	418	90	93	55	70	55	55	5	f
565	560	Emboar                                            	Fire                                              	Fighting                                          	528	110	123	65	100	65	65	5	f
566	561	Oshawott                                          	Water                                             	\N	308	55	55	45	63	45	45	5	f
567	562	Dewott                                            	Water                                             	\N	413	75	75	60	83	60	60	5	f
568	563	Samurott                                          	Water                                             	\N	528	95	100	85	108	70	70	5	f
569	564	Patrat                                            	Normal                                            	\N	255	45	55	39	35	39	42	5	f
570	565	Watchog                                           	Normal                                            	\N	420	60	85	69	60	69	77	5	f
571	566	Lillipup                                          	Normal                                            	\N	275	45	60	45	25	45	55	5	f
572	567	Herdier                                           	Normal                                            	\N	370	65	80	65	35	65	60	5	f
573	568	Stoutland                                         	Normal                                            	\N	500	85	110	90	45	90	80	5	f
574	569	Purrloin                                          	Dark                                              	\N	281	41	50	37	50	37	66	5	f
575	570	Liepard                                           	Dark                                              	\N	446	64	88	50	88	50	106	5	f
576	571	Pansage                                           	Grass                                             	\N	316	50	53	48	53	48	64	5	f
577	572	Simisage                                          	Grass                                             	\N	498	75	98	63	98	63	101	5	f
578	573	Pansear                                           	Fire                                              	\N	316	50	53	48	53	48	64	5	f
579	574	Simisear                                          	Fire                                              	\N	498	75	98	63	98	63	101	5	f
580	575	Panpour                                           	Water                                             	\N	316	50	53	48	53	48	64	5	f
581	576	Simipour                                          	Water                                             	\N	498	75	98	63	98	63	101	5	f
582	577	Munna                                             	Psychic                                           	\N	292	76	25	45	67	55	24	5	f
583	578	Musharna                                          	Psychic                                           	\N	487	116	55	85	107	95	29	5	f
584	579	Pidove                                            	Normal                                            	Flying                                            	264	50	55	50	36	30	43	5	f
585	580	Tranquill                                         	Normal                                            	Flying                                            	358	62	77	62	50	42	65	5	f
586	581	Unfezant                                          	Normal                                            	Flying                                            	488	80	115	80	65	55	93	5	f
587	582	Blitzle                                           	Electric                                          	\N	295	45	60	32	50	32	76	5	f
588	583	Zebstrika                                         	Electric                                          	\N	497	75	100	63	80	63	116	5	f
589	584	Roggenrola                                        	Rock                                              	\N	280	55	75	85	25	25	15	5	f
590	585	Boldore                                           	Rock                                              	\N	390	70	105	105	50	40	20	5	f
591	586	Gigalith                                          	Rock                                              	\N	515	85	135	130	60	80	25	5	f
592	587	Woobat                                            	Psychic                                           	Flying                                            	313	55	45	43	55	43	72	5	f
593	588	Swoobat                                           	Psychic                                           	Flying                                            	425	67	57	55	77	55	114	5	f
594	589	Drilbur                                           	Ground                                            	\N	328	60	85	40	30	45	68	5	f
595	590	Excadrill                                         	Ground                                            	Steel                                             	508	110	135	60	50	65	88	5	f
596	591	Audino                                            	Normal                                            	\N	445	103	60	86	60	86	50	5	f
597	592	AudinoMega Audino                                 	Normal                                            	Fairy                                             	545	103	60	126	80	126	50	5	f
598	593	Timburr                                           	Fighting                                          	\N	305	75	80	55	25	35	35	5	f
599	594	Gurdurr                                           	Fighting                                          	\N	405	85	105	85	40	50	40	5	f
600	595	Conkeldurr                                        	Fighting                                          	\N	505	105	140	95	55	65	45	5	f
601	596	Tympole                                           	Water                                             	\N	294	50	50	40	50	40	64	5	f
602	597	Palpitoad                                         	Water                                             	Ground                                            	384	75	65	55	65	55	69	5	f
603	598	Seismitoad                                        	Water                                             	Ground                                            	509	105	95	75	85	75	74	5	f
604	599	Throh                                             	Fighting                                          	\N	465	120	100	85	30	85	45	5	f
605	600	Sawk                                              	Fighting                                          	\N	465	75	125	75	30	75	85	5	f
606	601	Sewaddle                                          	Bug                                               	Grass                                             	310	45	53	70	40	60	42	5	f
607	602	Swadloon                                          	Bug                                               	Grass                                             	380	55	63	90	50	80	42	5	f
608	603	Leavanny                                          	Bug                                               	Grass                                             	500	75	103	80	70	80	92	5	f
609	604	Venipede                                          	Bug                                               	Poison                                            	260	30	45	59	30	39	57	5	f
610	605	Whirlipede                                        	Bug                                               	Poison                                            	360	40	55	99	40	79	47	5	f
611	606	Scolipede                                         	Bug                                               	Poison                                            	485	60	100	89	55	69	112	5	f
612	607	Cottonee                                          	Grass                                             	Fairy                                             	280	40	27	60	37	50	66	5	f
613	608	Whimsicott                                        	Grass                                             	Fairy                                             	480	60	67	85	77	75	116	5	f
614	609	Petilil                                           	Grass                                             	\N	280	45	35	50	70	50	30	5	f
615	610	Lilligant                                         	Grass                                             	\N	480	70	60	75	110	75	90	5	f
616	611	Basculin                                          	Water                                             	\N	460	70	92	65	80	55	98	5	f
617	612	Sandile                                           	Ground                                            	Dark                                              	292	50	72	35	35	35	65	5	f
618	613	Krokorok                                          	Ground                                            	Dark                                              	351	60	82	45	45	45	74	5	f
619	614	Krookodile                                        	Ground                                            	Dark                                              	519	95	117	80	65	70	92	5	f
620	615	Darumaka                                          	Fire                                              	\N	315	70	90	45	15	45	50	5	f
621	616	DarmanitanStandard Mode                           	Fire                                              	\N	480	105	140	55	30	55	95	5	f
622	617	DarmanitanZen Mode                                	Fire                                              	Psychic                                           	540	105	30	105	140	105	55	5	f
623	618	Maractus                                          	Grass                                             	\N	461	75	86	67	106	67	60	5	f
624	619	Dwebble                                           	Bug                                               	Rock                                              	325	50	65	85	35	35	55	5	f
625	620	Crustle                                           	Bug                                               	Rock                                              	475	70	95	125	65	75	45	5	f
626	621	Scraggy                                           	Dark                                              	Fighting                                          	348	50	75	70	35	70	48	5	f
627	622	Scrafty                                           	Dark                                              	Fighting                                          	488	65	90	115	45	115	58	5	f
628	623	Sigilyph                                          	Psychic                                           	Flying                                            	490	72	58	80	103	80	97	5	f
629	624	Yamask                                            	Ghost                                             	\N	303	38	30	85	55	65	30	5	f
630	625	Cofagrigus                                        	Ghost                                             	\N	483	58	50	145	95	105	30	5	f
631	626	Tirtouga                                          	Water                                             	Rock                                              	355	54	78	103	53	45	22	5	f
632	627	Carracosta                                        	Water                                             	Rock                                              	495	74	108	133	83	65	32	5	f
633	628	Archen                                            	Rock                                              	Flying                                            	401	55	112	45	74	45	70	5	f
634	629	Archeops                                          	Rock                                              	Flying                                            	567	75	140	65	112	65	110	5	f
635	630	Trubbish                                          	Poison                                            	\N	329	50	50	62	40	62	65	5	f
636	631	Garbodor                                          	Poison                                            	\N	474	80	95	82	60	82	75	5	f
637	632	Zorua                                             	Dark                                              	\N	330	40	65	40	80	40	65	5	f
638	633	Zoroark                                           	Dark                                              	\N	510	60	105	60	120	60	105	5	f
639	634	Minccino                                          	Normal                                            	\N	300	55	50	40	40	40	75	5	f
640	635	Cinccino                                          	Normal                                            	\N	470	75	95	60	65	60	115	5	f
641	636	Gothita                                           	Psychic                                           	\N	290	45	30	50	55	65	45	5	f
642	637	Gothorita                                         	Psychic                                           	\N	390	60	45	70	75	85	55	5	f
643	638	Gothitelle                                        	Psychic                                           	\N	490	70	55	95	95	110	65	5	f
644	639	Solosis                                           	Psychic                                           	\N	290	45	30	40	105	50	20	5	f
645	640	Duosion                                           	Psychic                                           	\N	370	65	40	50	125	60	30	5	f
646	641	Reuniclus                                         	Psychic                                           	\N	490	110	65	75	125	85	30	5	f
647	642	Ducklett                                          	Water                                             	Flying                                            	305	62	44	50	44	50	55	5	f
648	643	Swanna                                            	Water                                             	Flying                                            	473	75	87	63	87	63	98	5	f
649	644	Vanillite                                         	Ice                                               	\N	305	36	50	50	65	60	44	5	f
650	645	Vanillish                                         	Ice                                               	\N	395	51	65	65	80	75	59	5	f
651	646	Vanilluxe                                         	Ice                                               	\N	535	71	95	85	110	95	79	5	f
652	647	Deerling                                          	Normal                                            	Grass                                             	335	60	60	50	40	50	75	5	f
653	648	Sawsbuck                                          	Normal                                            	Grass                                             	475	80	100	70	60	70	95	5	f
654	649	Emolga                                            	Electric                                          	Flying                                            	428	55	75	60	75	60	103	5	f
655	650	Karrablast                                        	Bug                                               	\N	315	50	75	45	40	45	60	5	f
656	651	Escavalier                                        	Bug                                               	Steel                                             	495	70	135	105	60	105	20	5	f
657	652	Foongus                                           	Grass                                             	Poison                                            	294	69	55	45	55	55	15	5	f
658	653	Amoonguss                                         	Grass                                             	Poison                                            	464	114	85	70	85	80	30	5	f
659	654	Frillish                                          	Water                                             	Ghost                                             	335	55	40	50	65	85	40	5	f
660	655	Jellicent                                         	Water                                             	Ghost                                             	480	100	60	70	85	105	60	5	f
661	656	Alomomola                                         	Water                                             	\N	470	165	75	80	40	45	65	5	f
662	657	Joltik                                            	Bug                                               	Electric                                          	319	50	47	50	57	50	65	5	f
663	658	Galvantula                                        	Bug                                               	Electric                                          	472	70	77	60	97	60	108	5	f
664	659	Ferroseed                                         	Grass                                             	Steel                                             	305	44	50	91	24	86	10	5	f
665	660	Ferrothorn                                        	Grass                                             	Steel                                             	489	74	94	131	54	116	20	5	f
666	661	Klink                                             	Steel                                             	\N	300	40	55	70	45	60	30	5	f
667	662	Klang                                             	Steel                                             	\N	440	60	80	95	70	85	50	5	f
668	663	Klinklang                                         	Steel                                             	\N	520	60	100	115	70	85	90	5	f
669	664	Tynamo                                            	Electric                                          	\N	275	35	55	40	45	40	60	5	f
670	665	Eelektrik                                         	Electric                                          	\N	405	65	85	70	75	70	40	5	f
671	666	Eelektross                                        	Electric                                          	\N	515	85	115	80	105	80	50	5	f
672	667	Elgyem                                            	Psychic                                           	\N	335	55	55	55	85	55	30	5	f
673	668	Beheeyem                                          	Psychic                                           	\N	485	75	75	75	125	95	40	5	f
674	669	Litwick                                           	Ghost                                             	Fire                                              	275	50	30	55	65	55	20	5	f
675	670	Lampent                                           	Ghost                                             	Fire                                              	370	60	40	60	95	60	55	5	f
676	671	Chandelure                                        	Ghost                                             	Fire                                              	520	60	55	90	145	90	80	5	f
677	672	Axew                                              	Dragon                                            	\N	320	46	87	60	30	40	57	5	f
678	673	Fraxure                                           	Dragon                                            	\N	410	66	117	70	40	50	67	5	f
679	674	Haxorus                                           	Dragon                                            	\N	540	76	147	90	60	70	97	5	f
680	675	Cubchoo                                           	Ice                                               	\N	305	55	70	40	60	40	40	5	f
681	676	Beartic                                           	Ice                                               	\N	485	95	110	80	70	80	50	5	f
682	677	Cryogonal                                         	Ice                                               	\N	485	70	50	30	95	135	105	5	f
683	678	Shelmet                                           	Bug                                               	\N	305	50	40	85	40	65	25	5	f
684	679	Accelgor                                          	Bug                                               	\N	495	80	70	40	100	60	145	5	f
685	680	Stunfisk                                          	Ground                                            	Electric                                          	471	109	66	84	81	99	32	5	f
686	681	Mienfoo                                           	Fighting                                          	\N	350	45	85	50	55	50	65	5	f
687	682	Mienshao                                          	Fighting                                          	\N	510	65	125	60	95	60	105	5	f
688	683	Druddigon                                         	Dragon                                            	\N	485	77	120	90	60	90	48	5	f
689	684	Golett                                            	Ground                                            	Ghost                                             	303	59	74	50	35	50	35	5	f
690	685	Golurk                                            	Ground                                            	Ghost                                             	483	89	124	80	55	80	55	5	f
691	686	Pawniard                                          	Dark                                              	Steel                                             	340	45	85	70	40	40	60	5	f
692	687	Bisharp                                           	Dark                                              	Steel                                             	490	65	125	100	60	70	70	5	f
693	688	Bouffalant                                        	Normal                                            	\N	490	95	110	95	40	95	55	5	f
694	689	Rufflet                                           	Normal                                            	Flying                                            	350	70	83	50	37	50	60	5	f
695	690	Braviary                                          	Normal                                            	Flying                                            	510	100	123	75	57	75	80	5	f
696	691	Vullaby                                           	Dark                                              	Flying                                            	370	70	55	75	45	65	60	5	f
697	692	Mandibuzz                                         	Dark                                              	Flying                                            	510	110	65	105	55	95	80	5	f
698	693	Heatmor                                           	Fire                                              	\N	484	85	97	66	105	66	65	5	f
699	694	Durant                                            	Bug                                               	Steel                                             	484	58	109	112	48	48	109	5	f
700	695	Deino                                             	Dark                                              	Dragon                                            	300	52	65	50	45	50	38	5	f
701	696	Zweilous                                          	Dark                                              	Dragon                                            	420	72	85	70	65	70	58	5	f
702	697	Hydreigon                                         	Dark                                              	Dragon                                            	600	92	105	90	125	90	98	5	f
703	698	Larvesta                                          	Bug                                               	Fire                                              	360	55	85	55	50	55	60	5	f
704	699	Volcarona                                         	Bug                                               	Fire                                              	550	85	60	65	135	105	100	5	f
705	700	Cobalion                                          	Steel                                             	Fighting                                          	580	91	90	129	90	72	108	5	t
706	701	Terrakion                                         	Rock                                              	Fighting                                          	580	91	129	90	72	90	108	5	t
707	702	Virizion                                          	Grass                                             	Fighting                                          	580	91	90	72	90	129	108	5	t
708	703	TornadusIncarnate Forme                           	Flying                                            	\N	580	79	115	70	125	80	111	5	t
709	704	TornadusTherian Forme                             	Flying                                            	\N	580	79	100	80	110	90	121	5	t
710	705	ThundurusIncarnate Forme                          	Electric                                          	Flying                                            	580	79	115	70	125	80	111	5	t
711	706	ThundurusTherian Forme                            	Electric                                          	Flying                                            	580	79	105	70	145	80	101	5	t
712	707	Reshiram                                          	Dragon                                            	Fire                                              	680	100	120	100	150	120	90	5	t
713	708	Zekrom                                            	Dragon                                            	Electric                                          	680	100	150	120	120	100	90	5	t
714	709	LandorusIncarnate Forme                           	Ground                                            	Flying                                            	600	89	125	90	115	80	101	5	t
715	710	LandorusTherian Forme                             	Ground                                            	Flying                                            	600	89	145	90	105	80	91	5	t
716	711	Kyurem                                            	Dragon                                            	Ice                                               	660	125	130	90	130	90	95	5	t
717	712	KyuremBlack Kyurem                                	Dragon                                            	Ice                                               	700	125	170	100	120	90	95	5	t
718	713	KyuremWhite Kyurem                                	Dragon                                            	Ice                                               	700	125	120	90	170	100	95	5	t
719	714	KeldeoOrdinary Forme                              	Water                                             	Fighting                                          	580	91	72	90	129	90	108	5	f
720	715	KeldeoResolute Forme                              	Water                                             	Fighting                                          	580	91	72	90	129	90	108	5	f
721	716	MeloettaAria Forme                                	Normal                                            	Psychic                                           	600	100	77	77	128	128	90	5	f
722	717	MeloettaPirouette Forme                           	Normal                                            	Fighting                                          	600	100	128	90	77	77	128	5	f
723	718	Genesect                                          	Bug                                               	Steel                                             	600	71	120	95	120	95	99	5	f
724	719	Chespin                                           	Grass                                             	\N	313	56	61	65	48	45	38	6	f
725	720	Quilladin                                         	Grass                                             	\N	405	61	78	95	56	58	57	6	f
726	721	Chesnaught                                        	Grass                                             	Fighting                                          	530	88	107	122	74	75	64	6	f
727	722	Fennekin                                          	Fire                                              	\N	307	40	45	40	62	60	60	6	f
728	723	Braixen                                           	Fire                                              	\N	409	59	59	58	90	70	73	6	f
729	724	Delphox                                           	Fire                                              	Psychic                                           	534	75	69	72	114	100	104	6	f
730	725	Froakie                                           	Water                                             	\N	314	41	56	40	62	44	71	6	f
731	726	Frogadier                                         	Water                                             	\N	405	54	63	52	83	56	97	6	f
732	727	Greninja                                          	Water                                             	Dark                                              	530	72	95	67	103	71	122	6	f
733	728	Bunnelby                                          	Normal                                            	\N	237	38	36	38	32	36	57	6	f
734	729	Diggersby                                         	Normal                                            	Ground                                            	423	85	56	77	50	77	78	6	f
735	730	Fletchling                                        	Normal                                            	Flying                                            	278	45	50	43	40	38	62	6	f
736	731	Fletchinder                                       	Fire                                              	Flying                                            	382	62	73	55	56	52	84	6	f
737	732	Talonflame                                        	Fire                                              	Flying                                            	499	78	81	71	74	69	126	6	f
738	733	Scatterbug                                        	Bug                                               	\N	200	38	35	40	27	25	35	6	f
739	734	Spewpa                                            	Bug                                               	\N	213	45	22	60	27	30	29	6	f
740	735	Vivillon                                          	Bug                                               	Flying                                            	411	80	52	50	90	50	89	6	f
741	736	Litleo                                            	Fire                                              	Normal                                            	369	62	50	58	73	54	72	6	f
742	737	Pyroar                                            	Fire                                              	Normal                                            	507	86	68	72	109	66	106	6	f
743	738	Flabébé                                           	Fairy                                             	\N	303	44	38	39	61	79	42	6	f
744	739	Floette                                           	Fairy                                             	\N	371	54	45	47	75	98	52	6	f
745	740	Florges                                           	Fairy                                             	\N	552	78	65	68	112	154	75	6	f
746	741	Skiddo                                            	Grass                                             	\N	350	66	65	48	62	57	52	6	f
747	742	Gogoat                                            	Grass                                             	\N	531	123	100	62	97	81	68	6	f
748	743	Pancham                                           	Fighting                                          	\N	348	67	82	62	46	48	43	6	f
749	744	Pangoro                                           	Fighting                                          	Dark                                              	495	95	124	78	69	71	58	6	f
750	745	Furfrou                                           	Normal                                            	\N	472	75	80	60	65	90	102	6	f
751	746	Espurr                                            	Psychic                                           	\N	355	62	48	54	63	60	68	6	f
752	747	MeowsticMale                                      	Psychic                                           	\N	466	74	48	76	83	81	104	6	f
753	748	MeowsticFemale                                    	Psychic                                           	\N	466	74	48	76	83	81	104	6	f
754	749	Honedge                                           	Steel                                             	Ghost                                             	325	45	80	100	35	37	28	6	f
755	750	Doublade                                          	Steel                                             	Ghost                                             	448	59	110	150	45	49	35	6	f
756	751	AegislashBlade Forme                              	Steel                                             	Ghost                                             	520	60	150	50	150	50	60	6	f
757	752	AegislashShield Forme                             	Steel                                             	Ghost                                             	520	60	50	150	50	150	60	6	f
758	753	Spritzee                                          	Fairy                                             	\N	341	78	52	60	63	65	23	6	f
759	754	Aromatisse                                        	Fairy                                             	\N	462	101	72	72	99	89	29	6	f
760	755	Swirlix                                           	Fairy                                             	\N	341	62	48	66	59	57	49	6	f
761	756	Slurpuff                                          	Fairy                                             	\N	480	82	80	86	85	75	72	6	f
762	757	Inkay                                             	Dark                                              	Psychic                                           	288	53	54	53	37	46	45	6	f
763	758	Malamar                                           	Dark                                              	Psychic                                           	482	86	92	88	68	75	73	6	f
764	759	Binacle                                           	Rock                                              	Water                                             	306	42	52	67	39	56	50	6	f
765	760	Barbaracle                                        	Rock                                              	Water                                             	500	72	105	115	54	86	68	6	f
766	761	Skrelp                                            	Poison                                            	Water                                             	320	50	60	60	60	60	30	6	f
767	762	Dragalge                                          	Poison                                            	Dragon                                            	494	65	75	90	97	123	44	6	f
768	763	Clauncher                                         	Water                                             	\N	330	50	53	62	58	63	44	6	f
769	764	Clawitzer                                         	Water                                             	\N	500	71	73	88	120	89	59	6	f
770	765	Helioptile                                        	Electric                                          	Normal                                            	289	44	38	33	61	43	70	6	f
771	766	Heliolisk                                         	Electric                                          	Normal                                            	481	62	55	52	109	94	109	6	f
772	767	Tyrunt                                            	Rock                                              	Dragon                                            	362	58	89	77	45	45	48	6	f
773	768	Tyrantrum                                         	Rock                                              	Dragon                                            	521	82	121	119	69	59	71	6	f
774	769	Amaura                                            	Rock                                              	Ice                                               	362	77	59	50	67	63	46	6	f
775	770	Aurorus                                           	Rock                                              	Ice                                               	521	123	77	72	99	92	58	6	f
776	771	Sylveon                                           	Fairy                                             	\N	525	95	65	65	110	130	60	6	f
777	772	Hawlucha                                          	Fighting                                          	Flying                                            	500	78	92	75	74	63	118	6	f
778	773	Dedenne                                           	Electric                                          	Fairy                                             	431	67	58	57	81	67	101	6	f
779	774	Carbink                                           	Rock                                              	Fairy                                             	500	50	50	150	50	150	50	6	f
780	775	Goomy                                             	Dragon                                            	\N	300	45	50	35	55	75	40	6	f
781	776	Sliggoo                                           	Dragon                                            	\N	452	68	75	53	83	113	60	6	f
782	777	Goodra                                            	Dragon                                            	\N	600	90	100	70	110	150	80	6	f
783	778	Klefki                                            	Steel                                             	Fairy                                             	470	57	80	91	80	87	75	6	f
784	779	Phantump                                          	Ghost                                             	Grass                                             	309	43	70	48	50	60	38	6	f
785	780	Trevenant                                         	Ghost                                             	Grass                                             	474	85	110	76	65	82	56	6	f
786	781	PumpkabooAverage Size                             	Ghost                                             	Grass                                             	335	49	66	70	44	55	51	6	f
787	782	PumpkabooSmall Size                               	Ghost                                             	Grass                                             	335	44	66	70	44	55	56	6	f
788	783	PumpkabooLarge Size                               	Ghost                                             	Grass                                             	335	54	66	70	44	55	46	6	f
789	784	PumpkabooSuper Size                               	Ghost                                             	Grass                                             	335	59	66	70	44	55	41	6	f
790	785	GourgeistAverage Size                             	Ghost                                             	Grass                                             	494	65	90	122	58	75	84	6	f
791	786	GourgeistSmall Size                               	Ghost                                             	Grass                                             	494	55	85	122	58	75	99	6	f
792	787	GourgeistLarge Size                               	Ghost                                             	Grass                                             	494	75	95	122	58	75	69	6	f
793	788	GourgeistSuper Size                               	Ghost                                             	Grass                                             	494	85	100	122	58	75	54	6	f
794	789	Bergmite                                          	Ice                                               	\N	304	55	69	85	32	35	28	6	f
795	790	Avalugg                                           	Ice                                               	\N	514	95	117	184	44	46	28	6	f
796	791	Noibat                                            	Flying                                            	Dragon                                            	245	40	30	35	45	40	55	6	f
797	792	Noivern                                           	Flying                                            	Dragon                                            	535	85	70	80	97	80	123	6	f
798	793	Xerneas                                           	Fairy                                             	\N	680	126	131	95	131	98	99	6	t
799	794	Yveltal                                           	Dark                                              	Flying                                            	680	126	131	95	131	98	99	6	t
800	795	Zygarde50% Forme                                  	Dragon                                            	Ground                                            	600	108	100	121	81	95	95	6	t
801	796	Diancie                                           	Rock                                              	Fairy                                             	600	50	100	150	100	150	50	6	t
802	797	DiancieMega Diancie                               	Rock                                              	Fairy                                             	700	50	160	110	160	110	110	6	t
803	798	HoopaHoopa Confined                               	Psychic                                           	Ghost                                             	600	80	110	60	150	130	70	6	t
804	799	HoopaHoopa Unbound                                	Psychic                                           	Dark                                              	680	80	160	60	170	130	80	6	t
805	800	Volcanion                                         	Fire                                              	Water                                             	600	80	110	120	130	90	70	6	t
\.


--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 269
-- Name: pokemons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pokemons_id_seq', 805, true);


--
-- TOC entry 3727 (class 2606 OID 18582)
-- Name: pokemon_primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemons
    ADD CONSTRAINT pokemon_primary_key PRIMARY KEY (id);


-- Completed on 2017-06-13 22:34:22 CEST

--
-- PostgreSQL database dump complete
--

