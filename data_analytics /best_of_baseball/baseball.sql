
-- PostgreSQL database dump


-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.4

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


-- Name: allstarfull; Type: TABLE IF NOT EXIST ; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.allstarfull (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    gamenum smallint,
    gameid text,
    teamid text,
    team_id bigint,
    lgid text,
    gp smallint,
    startingpos smallint
);



-- Name: appearances; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.appearances (
    id bigint NOT NULL,
    yearid smallint,
    teamid text,
    team_id bigint,
    lgid text,
    playerid text,
    g_all smallint,
    gs smallint,
    g_batting smallint,
    g_defense smallint,
    g_p smallint,
    g_c smallint,
    g_1b smallint,
    g_2b smallint,
    g_3b smallint,
    g_ss smallint,
    g_lf smallint,
    g_cf smallint,
    g_rf smallint,
    g_of smallint,
    g_dh smallint,
    g_ph smallint,
    g_pr smallint
);



-- Name: awardsmanagers; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.awardsmanagers (
    id bigint NOT NULL,
    playerid text,
    awardid text,
    yearid smallint,
    lgid text,
    tie text,
    notes text
);



-- Name: awardsplayers; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.awardsplayers (
    id bigint NOT NULL,
    playerid text,
    awardid text,
    yearid smallint,
    lgid text,
    tie text,
    notes text
);



-- Name: awardssharemanagers; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.awardssharemanagers (
    id bigint NOT NULL,
    awardid text,
    yearid smallint,
    lgid text,
    playerid text,
    pointswon smallint,
    pointsmax smallint,
    votesfirst smallint
);



-- Name: awardsshareplayers; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.awardsshareplayers (
    id bigint NOT NULL,
    awardid text,
    yearid smallint,
    lgid text,
    playerid text,
    pointswon double precision,
    pointsmax smallint,
    votesfirst double precision
);



-- Name: batting; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.batting (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    stint smallint,
    teamid text,
    team_id bigint,
    lgid text,
    g smallint,
    g_batting smallint,
    ab smallint,
    r smallint,
    h smallint,
    "2B" smallint,
    "3B" smallint,
    hr smallint,
    rbi smallint,
    sb smallint,
    cs smallint,
    bb smallint,
    so smallint,
    ibb smallint,
    hbp smallint,
    sh smallint,
    sf smallint,
    gidp smallint
);



-- Name: battingpost; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.battingpost (
    id bigint NOT NULL,
    yearid smallint,
    round text,
    playerid text,
    teamid text,
    team_id bigint,
    lgid text,
    g smallint,
    ab smallint,
    r smallint,
    h smallint,
    "2B" smallint,
    "3B" smallint,
    hr smallint,
    rbi smallint,
    sb smallint,
    cs smallint,
    bb smallint,
    so smallint,
    ibb smallint,
    hbp smallint,
    sh smallint,
    sf smallint,
    gidp smallint
);



-- Name: collegeplaying; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.collegeplaying (
    id bigint NOT NULL,
    playerid text,
    schoolid text,
    yearid smallint
);


--
-- Name: divisions; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -
--

CREATE TABLE IF NOT EXISTS baseball.divisions (
    id bigint NOT NULL,
    divid text,
    lgid text,
    division text,
    active text
);



-- Name: fielding; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.fielding (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    stint smallint,
    teamid text,
    team_id bigint,
    lgid text,
    pos text,
    g smallint,
    gs smallint,
    innouts smallint,
    po smallint,
    a smallint,
    e smallint,
    dp smallint,
    pb smallint,
    wp smallint,
    sb smallint,
    cs smallint,
    zr double precision
);



-- Name: fieldingof; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.fieldingof (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    stint smallint,
    glf smallint,
    gcf smallint,
    grf smallint
);



-- Name: fieldingofsplit; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.fieldingofsplit (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    stint smallint,
    teamid text,
    team_id bigint,
    lgid text,
    pos text,
    g smallint,
    gs smallint,
    innouts smallint,
    po smallint,
    a smallint,
    e smallint,
    dp smallint,
    pb smallint,
    wp smallint,
    sb smallint,
    cs smallint,
    zr double precision
);



-- Name: fieldingpost; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.fieldingpost (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    teamid text,
    team_id bigint,
    lgid text,
    round text,
    pos text,
    g smallint,
    gs smallint,
    innouts smallint,
    po smallint,
    a smallint,
    e smallint,
    dp smallint,
    tp smallint,
    pb smallint,
    sb smallint,
    cs smallint
);



-- Name: halloffame; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.halloffame (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    votedby text,
    ballots smallint,
    needed smallint,
    votes smallint,
    inducted text,
    category text,
    needed_note text
);



-- Name: homegames; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.homegames (
    id bigint NOT NULL,
    yearkey bigint,
    leaguekey text,
    teamkey text,
    team_id bigint,
    parkkey text,
    park_id bigint,
    spanfirst text,
    spanlast text,
    games bigint,
    openings bigint,
    attendance bigint,
    spanfirst_date date,
    spanlast_date date
);



-- Name: leagues; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.leagues (
    lgid text,
    league text,
    active text
);



-- Name: managers; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.managers (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    teamid text,
    team_id bigint,
    lgid text,
    inseason smallint,
    g smallint,
    w smallint,
    l smallint,
    teamrank smallint,
    plyrmgr text
);



-- Name: managershalf; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.managershalf (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    teamid text,
    team_id bigint,
    lgid text,
    inseason smallint,
    half smallint,
    g smallint,
    w smallint,
    l smallint,
    teamrank smallint
);



-- Name: parks; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.parks (
    id bigint NOT NULL,
    parkalias text,
    parkkey text,
    parkname text,
    city text,
    state text,
    country text
);



-- Name: people; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.people (
    playerid text,
    birthyear bigint,
    birthmonth bigint,
    birthday bigint,
    birthcountry text,
    birthstate text,
    birthcity text,
    deathyear bigint,
    deathmonth bigint,
    deathday bigint,
    deathcountry text,
    deathstate text,
    deathcity text,
    namefirst text,
    namelast text,
    namegiven text,
    weight bigint,
    height bigint,
    bats text,
    throws text,
    debut text,
    finalgame text,
    retroid text,
    bbrefid text,
    birth_date date,
    debut_date date,
    finalgame_date date,
    death_date date
);



-- Name: pitching; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.pitching (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    stint smallint,
    teamid text,
    team_id bigint,
    lgid text,
    w smallint,
    l smallint,
    g smallint,
    gs smallint,
    cg smallint,
    sho smallint,
    sv smallint,
    ipouts bigint,
    h smallint,
    er smallint,
    hr smallint,
    bb smallint,
    so smallint,
    baopp double precision,
    era double precision,
    ibb smallint,
    wp smallint,
    hbp smallint,
    bk smallint,
    bfp smallint,
    gf smallint,
    r smallint,
    sh smallint,
    sf smallint,
    gidp smallint
);



-- Name: pitchingpost; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.pitchingpost (
    id bigint NOT NULL,
    playerid text,
    yearid smallint,
    round text,
    teamid text,
    team_id bigint,
    lgid text,
    w smallint,
    l smallint,
    g smallint,
    gs smallint,
    cg smallint,
    sho smallint,
    sv smallint,
    ipouts bigint,
    h smallint,
    er smallint,
    hr smallint,
    bb smallint,
    so smallint,
    baopp double precision,
    era double precision,
    ibb smallint,
    wp smallint,
    hbp smallint,
    bk smallint,
    bfp smallint,
    gf smallint,
    r smallint,
    sh smallint,
    sf smallint,
    gidp smallint
);


--
-- Name: salaries; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -
--

CREATE TABLE IF NOT EXISTS baseball.salaries (
    id bigint NOT NULL,
    yearid smallint,
    teamid text,
    team_id bigint,
    lgid text,
    playerid text,
    salary double precision
);



-- Name: schools; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.schools (
    schoolid text,
    name_full text,
    city text,
    state text,
    country text
);



-- Name: seriespost; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.seriespost (
    id bigint NOT NULL,
    yearid smallint,
    round text,
    teamidwinner text,
    lgidwinner text,
    team_idwinner bigint,
    teamidloser text,
    team_idloser bigint,
    lgidloser text,
    wins smallint,
    losses smallint,
    ties smallint
);



-- Name: teams; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.teams (
    id bigint NOT NULL,
    yearid smallint,
    lgid text,
    teamid text,
    franchid text,
    divid text,
    div_id bigint,
    teamrank smallint,
    g smallint,
    ghome smallint,
    w smallint,
    l smallint,
    divwin text,
    wcwin text,
    lgwin text,
    wswin text,
    r smallint,
    ab smallint,
    h smallint,
    "2B" smallint,
    "3B" smallint,
    hr smallint,
    bb smallint,
    so smallint,
    sb smallint,
    cs smallint,
    hbp smallint,
    sf smallint,
    ra smallint,
    er smallint,
    era double precision,
    cg smallint,
    sho smallint,
    sv smallint,
    ipouts bigint,
    ha smallint,
    hra smallint,
    bba smallint,
    soa smallint,
    e bigint,
    dp bigint,
    fp double precision,
    name text,
    park text,
    attendance bigint,
    bpf bigint,
    ppf bigint,
    teamidbr text,
    teamidlahman45 text,
    teamidretro text
);



-- Name: teamsfranchises; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.teamsfranchises (
    franchid text,
    franchname text,
    active text,
    naassoc text
);



-- Name: teamshalf; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST; Schema: baseball; Owner: -


CREATE TABLE IF NOT EXISTS baseball.teamshalf (
    id bigint NOT NULL,
    yearid smallint,
    lgid text,
    teamid text,
    team_id bigint,
    half text,
    divid text,
    div_id bigint,
    divwin text,
    teamrank smallint,
    g smallint,
    w smallint,
    l smallint
);



-- Data for Name: allstarfull; Type: TABLE IF NOT EXIST IF NOT EXIST IF NOT EXIST DATA; Schema: baseball; Owner: -


COPY baseball.allstarfull (id, playerid, yearid, gamenum, gameid, teamid, team_id, lgid, gp, startingpos) FROM stdin;
1	gomezle01	1933	0	ALS193307060	NYA	921	AL	1	1
2	ferreri01	1933	0	ALS193307060	BOS	912	AL	1	2
3	gehrilo01	1933	0	ALS193307060	NYA	921	AL	1	3
4	gehrich01	1933	0	ALS193307060	DET	919	AL	1	4
5	dykesji01	1933	0	ALS193307060	CHA	915	AL	1	5
6	cronijo01	1933	0	ALS193307060	WS1	927	AL	1	6
7	chapmbe01	1933	0	ALS193307060	WS1	927	AL	1	7
8	simmoal01	1933	0	ALS193307060	CHA	915	AL	1	8
9	ruthba01	1933	0	ALS193307060	NYA	921	AL	1	9
10	averiea01	1933	0	ALS193307060	CLE	918	AL	1	\N
11	crowdal01	1933	0	ALS193307060	WS1	927	AL	1	\N
12	dickebi01	1933	0	ALS193307060	NYA	921	AL	0	\N
13	ferrewe01	1933	0	ALS193307060	CLE	918	AL	0	\N
14	foxxji01	1933	0	ALS193307060	PHA	922	AL	0	\N
15	grovele01	1933	0	ALS193307060	PHA	922	AL	1	\N
16	hildeor01	1933	0	ALS193307060	CLE	918	AL	0	\N
17	lazzeto01	1933	0	ALS193307060	NYA	921	AL	0	\N
18	westsa01	1933	0	ALS193307060	SLA	925	AL	1	\N
19	hallabi01	1933	0	ALS193307060	SLN	926	NL	1	1
20	wilsoji01	1933	0	ALS193307060	SLN	926	NL	1	2
21	terrybi01	1933	0	ALS193307060	NY1	920	NL	1	3
22	friscfr01	1933	0	ALS193307060	SLN	926	NL	1	4
23	martipe01	1933	0	ALS193307060	SLN	926	NL	1	5
24	bartedi01	1933	0	ALS193307060	PHI	923	NL	1	6
25	hafeych01	1933	0	ALS193307060	CIN	917	NL	1	7
26	bergewa01	1933	0	ALS193307060	BSN	914	NL	1	8
27	kleinch01	1933	0	ALS193307060	PHI	923	NL	1	9
28	cuccito01	1933	0	ALS193307060	BRO	913	NL	1	\N
29	engliwo01	1933	0	ALS193307060	CHN	916	NL	1	\N
30	hartnga01	1933	0	ALS193307060	CHN	916	NL	1	\N
31	hubbeca01	1933	0	ALS193307060	NY1	920	NL	1	\N
32	odoulle01	1933	0	ALS193307060	NY1	920	NL	1	\N
33	schumha02	1933	0	ALS193307060	NY1	920	NL	0	\N
34	traynpi01	1933	0	ALS193307060	PIT	924	NL	1	\N
35	wanerpa01	1933	0	ALS193307060	PIT	924	NL	1	\N
36	warnelo01	1933	0	ALS193307060	CHN	916	NL	1	\N
37	gomezle01	1934	0	NLS193407100	NYA	937	AL	1	1
38	dickebi01	1934	0	NLS193407100	NYA	937	AL	1	2
39	gehrilo01	1934	0	NLS193407100	NYA	937	AL	1	3
40	gehrich01	1934	0	NLS193407100	DET	935	AL	1	4
41	foxxji01	1934	0	NLS193407100	PHA	938	AL	1	5
42	cronijo01	1934	0	NLS193407100	WS1	943	AL	1	6
43	manushe01	1934	0	NLS193407100	WS1	943	AL	1	7
44	simmoal01	1934	0	NLS193407100	CHA	931	AL	1	8
45	ruthba01	1934	0	NLS193407100	NYA	937	AL	1	9
46	averiea01	1934	0	NLS193407100	CLE	934	AL	1	\N
47	bridgto01	1934	0	NLS193407100	DET	935	AL	0	\N
48	chapmbe01	1934	0	NLS193407100	NYA	937	AL	1	\N
49	cochrmi01	1934	0	NLS193407100	DET	935	AL	1	\N
50	dykesji01	1934	0	NLS193407100	CHA	931	AL	0	\N
51	ferreri01	1934	0	NLS193407100	BOS	928	AL	0	\N
52	hardeme01	1934	0	NLS193407100	CLE	934	AL	1	\N
53	higgipi01	1934	0	NLS193407100	PHA	938	AL	0	\N
54	ruffire01	1934	0	NLS193407100	NYA	937	AL	1	\N
55	russeja01	1934	0	NLS193407100	WS1	943	AL	0	\N
56	westsa01	1934	0	NLS193407100	SLA	941	AL	1	\N
57	hubbeca01	1934	0	NLS193407100	NY1	936	NL	1	1
58	hartnga01	1934	0	NLS193407100	CHN	932	NL	1	2
59	terrybi01	1934	0	NLS193407100	NY1	936	NL	1	3
60	friscfr01	1934	0	NLS193407100	SLN	942	NL	1	4
61	traynpi01	1934	0	NLS193407100	PIT	940	NL	1	5
62	jackstr01	1934	0	NLS193407100	NY1	936	NL	1	6
63	medwijo01	1934	0	NLS193407100	SLN	942	NL	1	7
64	bergewa01	1934	0	NLS193407100	BSN	930	NL	1	8
65	cuyleki01	1934	0	NLS193407100	CHN	932	NL	1	9
66	deandi01	1934	0	NLS193407100	SLN	942	NL	1	\N
67	frankfr02	1934	0	NLS193407100	BSN	930	NL	1	\N
68	hermabi01	1934	0	NLS193407100	CHN	932	NL	1	\N
70	kleinch01	1934	0	NLS193407100	CHN	932	NL	1	\N
71	lopezal01	1934	0	NLS193407100	BRO	929	NL	1	\N
72	martipe01	1934	0	NLS193407100	SLN	942	NL	1	\N
73	moorejo02	1934	0	NLS193407100	NY1	936	NL	0	\N
74	mungova01	1934	0	NLS193407100	BRO	929	NL	1	\N
75	ottme01	1934	0	NLS193407100	NY1	936	NL	1	\N
76	vaughar01	1934	0	NLS193407100	PIT	940	NL	1	\N
77	wanerpa01	1934	0	NLS193407100	PIT	940	NL	1	\N
78	warnelo01	1934	0	NLS193407100	CHN	932	NL	1	\N
79	gomezle01	1935	0	ALS193507080	NYA	953	AL	1	1
80	hemslro01	1935	0	ALS193507080	SLA	957	AL	1	2
81	gehrilo01	1935	0	ALS193507080	NYA	953	AL	1	3
82	gehrich01	1935	0	ALS193507080	DET	951	AL	1	4
83	foxxji01	1935	0	ALS193507080	PHA	954	AL	1	5
84	cronijo01	1935	0	ALS193507080	BOS	944	AL	1	6
85	johnsbo01	1935	0	ALS193507080	PHA	954	AL	1	7
86	simmoal01	1935	0	ALS193507080	CHA	947	AL	1	8
87	vosmijo01	1935	0	ALS193507080	CLE	950	AL	1	9
88	averiea01	1935	0	ALS193507080	CLE	950	AL	0	\N
89	bluegos01	1935	0	ALS193507080	WS1	959	AL	1	\N
90	bridgto01	1935	0	ALS193507080	DET	951	AL	0	\N
91	chapmbe01	1935	0	ALS193507080	NYA	953	AL	1	\N
92	cochrmi01	1935	0	ALS193507080	DET	951	AL	0	\N
93	cramedo01	1935	0	ALS193507080	PHA	954	AL	1	\N
94	ferreri01	1935	0	ALS193507080	BOS	944	AL	0	\N
95	grovele01	1935	0	ALS193507080	BOS	944	AL	0	\N
96	hardeme01	1935	0	ALS193507080	CLE	950	AL	1	\N
97	myerbu01	1935	0	ALS193507080	WS1	959	AL	0	\N
98	rowesc01	1935	0	ALS193507080	DET	951	AL	0	\N
99	westsa01	1935	0	ALS193507080	SLA	957	AL	0	\N
100	walkebi01	1935	0	ALS193507080	SLN	958	NL	1	1
101	wilsoji01	1935	0	ALS193507080	PHI	955	NL	1	2
102	terrybi01	1935	0	ALS193507080	NY1	952	NL	1	3
103	hermabi01	1935	0	ALS193507080	CHN	948	NL	1	4
104	martipe01	1935	0	ALS193507080	SLN	958	NL	1	5
105	vaughar01	1935	0	ALS193507080	PIT	956	NL	1	6
106	medwijo01	1935	0	ALS193507080	SLN	958	NL	1	7
107	bergewa01	1935	0	ALS193507080	BSN	946	NL	1	8
108	ottme01	1935	0	ALS193507080	NY1	952	NL	1	9
109	colliri02	1935	0	ALS193507080	SLN	958	NL	1	\N
110	deandi01	1935	0	ALS193507080	SLN	958	NL	1	\N
111	derripa01	1935	0	ALS193507080	CIN	949	NL	1	\N
112	friscfr01	1935	0	ALS193507080	SLN	958	NL	0	\N
113	hartnga01	1935	0	ALS193507080	CHN	948	NL	1	\N
114	hubbeca01	1935	0	ALS193507080	NY1	952	NL	0	\N
115	mancugu01	1935	0	ALS193507080	NY1	952	NL	1	\N
116	moorejo02	1935	0	ALS193507080	NY1	952	NL	1	\N
117	mungova01	1935	0	ALS193507080	BRO	945	NL	0	\N
118	schumha02	1935	0	ALS193507080	NY1	952	NL	1	\N
119	wanerpa01	1935	0	ALS193507080	PIT	956	NL	1	\N
120	whitebu01	1935	0	ALS193507080	SLN	958	NL	1	\N
121	grovele01	1936	0	NLS193607070	BOS	960	AL	1	1
122	ferreri01	1936	0	NLS193607070	BOS	960	AL	1	2
123	gehrilo01	1936	0	NLS193607070	NYA	969	AL	1	3
124	gehrich01	1936	0	NLS193607070	DET	967	AL	1	4
125	higgipi01	1936	0	NLS193607070	PHA	970	AL	1	5
126	applilu01	1936	0	NLS193607070	CHA	963	AL	1	6
127	radclri01	1936	0	NLS193607070	CHA	963	AL	1	7
128	averiea01	1936	0	NLS193607070	CLE	966	AL	1	8
129	dimagjo01	1936	0	NLS193607070	NYA	969	AL	1	9
130	bridgto01	1936	0	NLS193607070	DET	967	AL	0	\N
131	chapmbe01	1936	0	NLS193607070	WS1	975	AL	1	\N
132	crosefr01	1936	0	NLS193607070	NYA	969	AL	1	\N
133	dickebi01	1936	0	NLS193607070	NYA	969	AL	1	\N
134	foxxji01	1936	0	NLS193607070	BOS	960	AL	1	\N
135	gomezle01	1936	0	NLS193607070	NYA	969	AL	0	\N
136	gosligo01	1936	0	NLS193607070	DET	967	AL	1	\N
137	hardeme01	1936	0	NLS193607070	CLE	966	AL	1	\N
138	hemslro01	1936	0	NLS193607070	SLA	973	AL	0	\N
139	kenneve01	1936	0	NLS193607070	CHA	963	AL	0	\N
140	pearsmo01	1936	0	NLS193607070	NYA	969	AL	0	\N
141	rowesc01	1936	0	NLS193607070	DET	967	AL	1	\N
142	selkige01	1936	0	NLS193607070	NYA	969	AL	1	\N
143	deandi01	1936	0	NLS193607070	SLN	974	NL	1	1
144	hartnga01	1936	0	NLS193607070	CHN	964	NL	1	2
145	colliri02	1936	0	NLS193607070	SLN	974	NL	1	3
146	hermabi01	1936	0	NLS193607070	CHN	964	NL	1	4
147	whitnpi01	1936	0	NLS193607070	PHI	971	NL	1	5
148	durocle01	1936	0	NLS193607070	SLN	974	NL	1	6
149	medwijo01	1936	0	NLS193607070	SLN	974	NL	1	7
150	galanau01	1936	0	NLS193607070	CHN	964	NL	1	8
151	demarfr02	1936	0	NLS193607070	CHN	964	NL	1	9
152	bergewa01	1936	0	NLS193607070	BSN	962	NL	0	\N
153	daviscu01	1936	0	NLS193607070	CHN	964	NL	1	\N
154	hubbeca01	1936	0	NLS193607070	NY1	968	NL	1	\N
155	lombaer01	1936	0	NLS193607070	CIN	965	NL	0	\N
156	martist01	1936	0	NLS193607070	SLN	974	NL	0	\N
157	moorejo02	1936	0	NLS193607070	NY1	968	NL	0	\N
158	mungova01	1936	0	NLS193607070	BRO	961	NL	0	\N
159	ottme01	1936	0	NLS193607070	NY1	968	NL	1	\N
160	riggsle01	1936	0	NLS193607070	CIN	965	NL	1	\N
161	suhrgu01	1936	0	NLS193607070	PIT	972	NL	0	\N
162	vaughar01	1936	0	NLS193607070	PIT	972	NL	0	\N
163	warnelo01	1936	0	NLS193607070	CHN	964	NL	1	\N
164	gomezle01	1937	0	ALS193707070	NYA	985	AL	1	1
165	dickebi01	1937	0	ALS193707070	NYA	985	AL	1	2
166	gehrilo01	1937	0	ALS193707070	NYA	985	AL	1	3
167	gehrich01	1937	0	ALS193707070	DET	983	AL	1	4
168	rolfere01	1937	0	ALS193707070	NYA	985	AL	1	5
169	cronijo01	1937	0	ALS193707070	BOS	976	AL	1	6
170	westsa01	1937	0	ALS193707070	SLA	989	AL	1	7
171	averiea01	1937	0	ALS193707070	CLE	982	AL	1	8
172	dimagjo01	1937	0	ALS193707070	NYA	985	AL	1	9
173	bellbe01	1937	0	ALS193707070	SLA	989	AL	0	\N
174	bridgto01	1937	0	ALS193707070	DET	983	AL	1	\N
175	cliftha01	1937	0	ALS193707070	SLA	989	AL	0	\N
176	cramedo01	1937	0	ALS193707070	BOS	976	AL	0	\N
177	ferreri01	1937	0	ALS193707070	WS1	991	AL	0	\N
178	ferrewe01	1937	0	ALS193707070	WS1	991	AL	0	\N
179	foxxji01	1937	0	ALS193707070	BOS	976	AL	1	\N
180	greenha01	1937	0	ALS193707070	DET	983	AL	0	\N
181	grovele01	1937	0	ALS193707070	BOS	976	AL	0	\N
182	hardeme01	1937	0	ALS193707070	CLE	982	AL	1	\N
183	moseswa01	1937	0	ALS193707070	PHA	986	AL	0	\N
184	murphjo04	1937	0	ALS193707070	NYA	985	AL	0	\N
185	myerbu01	1937	0	ALS193707070	WS1	991	AL	0	\N
186	sewellu01	1937	0	ALS193707070	CHA	979	AL	0	\N
187	stratmo01	1937	0	ALS193707070	CHA	979	AL	0	\N
188	walkege02	1937	0	ALS193707070	DET	983	AL	0	\N
189	deandi01	1937	0	ALS193707070	SLN	990	NL	1	1
190	hartnga01	1937	0	ALS193707070	CHN	980	NL	1	2
191	mizejo01	1937	0	ALS193707070	SLN	990	NL	1	3
192	hermabi01	1937	0	ALS193707070	CHN	980	NL	1	4
193	vaughar01	1937	0	ALS193707070	PIT	988	NL	1	5
194	bartedi01	1937	0	ALS193707070	NY1	984	NL	1	6
195	medwijo01	1937	0	ALS193707070	SLN	990	NL	1	7
196	demarfr02	1937	0	ALS193707070	CHN	980	NL	1	8
197	wanerpa01	1937	0	ALS193707070	PIT	988	NL	1	9
198	blantcy01	1937	0	ALS193707070	PIT	988	NL	1	\N
199	colliri02	1937	0	ALS193707070	CHN	980	NL	1	\N
200	grissle01	1937	0	ALS193707070	CIN	981	NL	1	\N
201	hubbeca01	1937	0	ALS193707070	NY1	984	NL	1	\N
202	jurgebi01	1937	0	ALS193707070	CHN	980	NL	0	\N
203	lombaer01	1937	0	ALS193707070	CIN	981	NL	0	\N
204	mancugu01	1937	0	ALS193707070	NY1	984	NL	1	\N
205	martipe01	1937	0	ALS193707070	SLN	990	NL	0	\N
206	moorege03	1937	0	ALS193707070	BSN	978	NL	0	\N
207	moorejo02	1937	0	ALS193707070	NY1	984	NL	1	\N
208	mungova01	1937	0	ALS193707070	BRO	977	NL	1	\N
209	ottme01	1937	0	ALS193707070	NY1	984	NL	1	\N
210	waltebu01	1937	0	ALS193707070	PHI	987	NL	1	\N
211	whitebu01	1937	0	ALS193707070	NY1	984	NL	1	\N
212	gomezle01	1938	0	NLS193807060	NYA	1001	AL	1	1
213	dickebi01	1938	0	NLS193807060	NYA	1001	AL	1	2
214	foxxji01	1938	0	NLS193807060	BOS	992	AL	1	3
215	gehrich01	1938	0	NLS193807060	DET	999	AL	1	4
216	lewisbu01	1938	0	NLS193807060	WS1	1007	AL	1	5
217	cronijo01	1938	0	NLS193807060	BOS	992	AL	1	6
218	kreevmi01	1938	0	NLS193807060	CHA	995	AL	1	7
219	averiea01	1938	0	NLS193807060	CLE	998	AL	1	8
220	dimagjo01	1938	0	NLS193807060	NYA	1001	AL	1	9
221	allenjo02	1938	0	NLS193807060	CLE	998	AL	1	\N
222	cramedo01	1938	0	NLS193807060	BOS	992	AL	1	\N
223	fellebo01	1938	0	NLS193807060	CLE	998	AL	0	\N
224	ferreri01	1938	0	NLS193807060	WS1	1007	AL	0	\N
225	gehrilo01	1938	0	NLS193807060	NYA	1001	AL	1	\N
226	greenha01	1938	0	NLS193807060	DET	999	AL	0	\N
227	grovele01	1938	0	NLS193807060	BOS	992	AL	1	\N
228	johnsbo01	1938	0	NLS193807060	PHA	1002	AL	1	\N
229	kenneve01	1938	0	NLS193807060	DET	999	AL	0	\N
230	murphjo04	1938	0	NLS193807060	NYA	1001	AL	0	\N
231	newsobo01	1938	0	NLS193807060	SLA	1005	AL	0	\N
232	rolfere01	1938	0	NLS193807060	NYA	1001	AL	0	\N
233	ruffire01	1938	0	NLS193807060	NYA	1001	AL	0	\N
234	travice01	1938	0	NLS193807060	WS1	1007	AL	0	\N
235	yorkru01	1938	0	NLS193807060	DET	999	AL	1	\N
236	vandejo01	1938	0	NLS193807060	CIN	997	NL	1	1
237	lombaer01	1938	0	NLS193807060	CIN	997	NL	1	2
238	mccorfr01	1938	0	NLS193807060	CIN	997	NL	1	3
239	hermabi01	1938	0	NLS193807060	CHN	996	NL	1	4
240	hackst01	1938	0	NLS193807060	CHN	996	NL	1	5
241	durocle01	1938	0	NLS193807060	BRO	993	NL	1	6
242	medwijo01	1938	0	NLS193807060	SLN	1006	NL	1	7
243	ottme01	1938	0	NLS193807060	NY1	1000	NL	1	8
244	goodmiv01	1938	0	NLS193807060	CIN	997	NL	1	9
245	brownma01	1938	0	NLS193807060	PIT	1004	NL	1	\N
246	cuccito01	1938	0	NLS193807060	BSN	994	NL	0	\N
247	danniha01	1938	0	NLS193807060	NY1	1000	NL	0	\N
248	derripa01	1938	0	NLS193807060	CIN	997	NL	0	\N
249	hartnga01	1938	0	NLS193807060	CHN	996	NL	0	\N
250	hubbeca01	1938	0	NLS193807060	NY1	1000	NL	0	\N
251	lavagco01	1938	0	NLS193807060	BRO	993	NL	0	\N
252	leebi02	1938	0	NLS193807060	CHN	996	NL	1	\N
253	leibeha01	1938	0	NLS193807060	NY1	1000	NL	1	\N
254	martihe01	1938	0	NLS193807060	PHI	1003	NL	0	\N
255	moorejo02	1938	0	NLS193807060	NY1	1000	NL	0	\N
256	phelpba01	1938	0	NLS193807060	BRO	993	NL	0	\N
257	turneji01	1938	0	NLS193807060	BSN	994	NL	0	\N
258	vaughar01	1938	0	NLS193807060	PIT	1004	NL	0	\N
259	wanerll01	1938	0	NLS193807060	PIT	1004	NL	0	\N
260	ruffire01	1939	0	ALS193907110	NYA	1017	AL	1	1
261	dickebi01	1939	0	ALS193907110	NYA	1017	AL	1	2
262	greenha01	1939	0	ALS193907110	DET	1015	AL	1	3
263	gordojo01	1939	0	ALS193907110	NYA	1017	AL	1	4
264	rolfere01	1939	0	ALS193907110	NYA	1017	AL	1	5
265	cronijo01	1939	0	ALS193907110	BOS	1008	AL	1	6
266	selkige01	1939	0	ALS193907110	NYA	1017	AL	1	7
267	dimagjo01	1939	0	ALS193907110	NYA	1017	AL	1	8
268	cramedo01	1939	0	ALS193907110	BOS	1008	AL	1	9
269	applilu01	1939	0	ALS193907110	CHA	1011	AL	0	\N
270	bridgto01	1939	0	ALS193907110	DET	1015	AL	1	\N
271	casege01	1939	0	ALS193907110	WS1	1023	AL	0	\N
272	crosefr01	1939	0	ALS193907110	NYA	1017	AL	0	\N
273	fellebo01	1939	0	ALS193907110	CLE	1014	AL	1	\N
274	foxxji01	1939	0	ALS193907110	BOS	1008	AL	0	\N
275	gehrilo01	1939	0	ALS193907110	NYA	1017	AL	0	\N
276	gomezle01	1939	0	ALS193907110	NYA	1017	AL	0	\N
277	grovele01	1939	0	ALS193907110	BOS	1008	AL	0	\N
278	hayesfr01	1939	0	ALS193907110	PHA	1018	AL	0	\N
279	hemslro01	1939	0	ALS193907110	CLE	1014	AL	0	\N
280	hoagmy01	1939	0	ALS193907110	SLA	1021	AL	1	\N
281	johnsbo01	1939	0	ALS193907110	PHA	1018	AL	0	\N
282	lyonste01	1939	0	ALS193907110	CHA	1011	AL	0	\N
283	mcquige02	1939	0	ALS193907110	SLA	1021	AL	0	\N
284	murphjo04	1939	0	ALS193907110	NYA	1017	AL	0	\N
285	newsobo01	1939	0	ALS193907110	DET	1015	AL	0	\N
286	derripa01	1939	0	ALS193907110	CIN	1013	NL	1	1
287	lombaer01	1939	0	ALS193907110	CIN	1013	NL	1	2
288	mccorfr01	1939	0	ALS193907110	CIN	1013	NL	1	3
289	freylo01	1939	0	ALS193907110	CIN	1013	NL	1	4
290	hackst01	1939	0	ALS193907110	CHN	1012	NL	1	5
291	vaughar01	1939	0	ALS193907110	PIT	1020	NL	1	6
292	medwijo01	1939	0	ALS193907110	SLN	1022	NL	1	7
293	ottme01	1939	0	ALS193907110	NY1	1016	NL	1	8
294	goodmiv01	1939	0	ALS193907110	CIN	1013	NL	1	9
295	arnovmo01	1939	0	ALS193907110	PHI	1019	NL	0	\N
296	camildo01	1939	0	ALS193907110	BRO	1009	NL	1	\N
297	danniha01	1939	0	ALS193907110	NY1	1016	NL	0	\N
298	daviscu01	1939	0	ALS193907110	SLN	1022	NL	0	\N
299	fettelo01	1939	0	ALS193907110	BSN	1010	NL	1	\N
300	hermabi01	1939	0	ALS193907110	CHN	1012	NL	1	\N
301	jurgebi01	1939	0	ALS193907110	NY1	1016	NL	0	\N
302	lavagco01	1939	0	ALS193907110	BRO	1009	NL	0	\N
303	leebi02	1939	0	ALS193907110	CHN	1012	NL	1	\N
304	milleed03	1939	0	ALS193907110	BSN	1010	NL	0	\N
305	mizejo01	1939	0	ALS193907110	SLN	1022	NL	1	\N
306	moorete01	1939	0	ALS193907110	SLN	1022	NL	1	\N
307	phelpba01	1939	0	ALS193907110	BRO	1009	NL	1	\N
308	vandejo01	1939	0	ALS193907110	CIN	1013	NL	0	\N
309	waltebu01	1939	0	ALS193907110	CIN	1013	NL	0	\N
310	warnelo01	1939	0	ALS193907110	SLN	1022	NL	0	\N
311	wyattwh01	1939	0	ALS193907110	BRO	1009	NL	0	\N
312	ruffire01	1940	0	NLS194007090	NYA	1033	AL	1	1
313	dickebi01	1940	0	NLS194007090	NYA	1033	AL	1	2
314	foxxji01	1940	0	NLS194007090	BOS	1024	AL	1	3
315	gordojo01	1940	0	NLS194007090	NYA	1033	AL	1	4
316	travice01	1940	0	NLS194007090	WS1	1039	AL	1	5
317	applilu01	1940	0	NLS194007090	CHA	1027	AL	1	6
318	willite01	1940	0	NLS194007090	BOS	1024	AL	1	7
319	dimagjo01	1940	0	NLS194007090	NYA	1033	AL	1	8
320	kellech01	1940	0	NLS194007090	NYA	1033	AL	1	9
321	boudrlo01	1940	0	NLS194007090	CLE	1030	AL	1	\N
322	bridgto01	1940	0	NLS194007090	DET	1031	AL	0	\N
323	cramedo01	1940	0	NLS194007090	BOS	1024	AL	0	\N
324	fellebo01	1940	0	NLS194007090	CLE	1030	AL	1	\N
325	finnelo01	1940	0	NLS194007090	BOS	1024	AL	1	\N
326	greenha01	1940	0	NLS194007090	DET	1031	AL	1	\N
327	hayesfr01	1940	0	NLS194007090	PHA	1034	AL	1	\N
328	hemslro01	1940	0	NLS194007090	CLE	1030	AL	1	\N
329	johnsbo01	1940	0	NLS194007090	PHA	1034	AL	0	\N
330	keltnke01	1940	0	NLS194007090	CLE	1030	AL	1	\N
331	leonadu02	1940	0	NLS194007090	WS1	1039	AL	0	\N
332	mackra01	1940	0	NLS194007090	CLE	1030	AL	1	\N
333	mcquige02	1940	0	NLS194007090	SLA	1037	AL	0	\N
334	milnaal01	1940	0	NLS194007090	CLE	1030	AL	0	\N
335	newsobo01	1940	0	NLS194007090	DET	1031	AL	1	\N
336	pearsmo01	1940	0	NLS194007090	NYA	1033	AL	0	\N
337	rolfere01	1940	0	NLS194007090	NYA	1033	AL	0	\N
338	derripa01	1940	0	NLS194007090	CIN	1029	NL	1	1
339	lombaer01	1940	0	NLS194007090	CIN	1029	NL	1	2
340	mizejo01	1940	0	NLS194007090	SLN	1038	NL	1	3
341	hermabi01	1940	0	NLS194007090	CHN	1028	NL	1	4
342	lavagco01	1940	0	NLS194007090	BRO	1025	NL	1	5
343	vaughar01	1940	0	NLS194007090	PIT	1036	NL	1	6
344	medwijo01	1940	0	NLS194007090	BRO	1025	NL	1	7
345	moorete01	1940	0	NLS194007090	SLN	1038	NL	1	8
346	westma02	1940	0	NLS194007090	BSN	1026	NL	1	9
347	coscape01	1940	0	NLS194007090	BRO	1025	NL	1	\N
348	danniha01	1940	0	NLS194007090	NY1	1032	NL	1	\N
349	durocle01	1940	0	NLS194007090	BRO	1025	NL	0	\N
350	frencla01	1940	0	NLS194007090	CHN	1028	NL	1	\N
351	higbeki01	1940	0	NLS194007090	PHI	1035	NL	0	\N
352	hubbeca01	1940	0	NLS194007090	NY1	1032	NL	1	\N
353	jurgebi01	1940	0	NLS194007090	NY1	1032	NL	0	\N
354	leibeha01	1940	0	NLS194007090	CHN	1028	NL	0	\N
355	maypi01	1940	0	NLS194007090	PHI	1035	NL	1	\N
356	mccorfr01	1940	0	NLS194007090	CIN	1029	NL	1	\N
357	milleed03	1940	0	NLS194007090	BSN	1026	NL	1	\N
358	moorejo02	1940	0	NLS194007090	NY1	1032	NL	1	\N
359	mulcahu01	1940	0	NLS194007090	PHI	1035	NL	0	\N
360	nichobi01	1940	0	NLS194007090	CHN	1028	NL	1	\N
361	ottme01	1940	0	NLS194007090	NY1	1032	NL	1	\N
362	phelpba01	1940	0	NLS194007090	BRO	1025	NL	1	\N
363	waltebu01	1940	0	NLS194007090	CIN	1029	NL	1	\N
364	wyattwh01	1940	0	NLS194007090	BRO	1025	NL	1	\N
365	fellebo01	1941	0	ALS194107080	CLE	1046	AL	1	1
366	dickebi01	1941	0	ALS194107080	NYA	1049	AL	1	2
367	yorkru01	1941	0	ALS194107080	DET	1047	AL	1	3
368	doerrbo01	1941	0	ALS194107080	BOS	1040	AL	1	4
369	travice01	1941	0	ALS194107080	WS1	1055	AL	1	5
370	cronijo01	1941	0	ALS194107080	BOS	1040	AL	1	6
371	willite01	1941	0	ALS194107080	BOS	1040	AL	1	7
372	dimagjo01	1941	0	ALS194107080	NYA	1049	AL	1	8
373	heathje01	1941	0	ALS194107080	CLE	1046	AL	1	9
374	applilu01	1941	0	ALS194107080	CHA	1043	AL	0	\N
375	bentoal01	1941	0	ALS194107080	DET	1047	AL	0	\N
376	boudrlo01	1941	0	ALS194107080	CLE	1046	AL	1	\N
377	cullero01	1941	0	ALS194107080	SLA	1053	AL	1	\N
378	dimagdo01	1941	0	ALS194107080	BOS	1040	AL	1	\N
379	foxxji01	1941	0	ALS194107080	BOS	1040	AL	1	\N
380	gordojo01	1941	0	ALS194107080	NYA	1049	AL	1	\N
381	hayesfr01	1941	0	ALS194107080	PHA	1050	AL	1	\N
382	hudsosi01	1941	0	ALS194107080	WS1	1055	AL	1	\N
383	kellech01	1941	0	ALS194107080	NYA	1049	AL	1	\N
384	keltnke01	1941	0	ALS194107080	CLE	1046	AL	1	\N
385	leeth01	1941	0	ALS194107080	CHA	1043	AL	1	\N
386	ruffire01	1941	0	ALS194107080	NYA	1049	AL	0	\N
387	russoma01	1941	0	ALS194107080	NYA	1049	AL	0	\N
388	smithed04	1941	0	ALS194107080	CHA	1043	AL	1	\N
389	tebbebi01	1941	0	ALS194107080	DET	1047	AL	0	\N
390	wyattwh01	1941	0	ALS194107080	BRO	1041	NL	1	1
391	owenmi01	1941	0	ALS194107080	BRO	1041	NL	1	2
392	mizejo01	1941	0	ALS194107080	SLN	1054	NL	1	3
393	freylo01	1941	0	ALS194107080	CIN	1045	NL	1	4
394	hackst01	1941	0	ALS194107080	CHN	1044	NL	1	5
395	vaughar01	1941	0	ALS194107080	PIT	1052	NL	1	6
396	moorete01	1941	0	ALS194107080	SLN	1054	NL	1	7
397	reisepe01	1941	0	ALS194107080	BRO	1041	NL	1	8
398	nichobi01	1941	0	ALS194107080	CHN	1044	NL	1	9
399	blantcy01	1941	0	ALS194107080	PHI	1051	NL	0	\N
400	camildo01	1941	0	ALS194107080	BRO	1041	NL	0	\N
401	danniha01	1941	0	ALS194107080	NY1	1048	NL	1	\N
402	derripa01	1941	0	ALS194107080	CIN	1045	NL	1	\N
403	elliobo01	1941	0	ALS194107080	PIT	1052	NL	1	\N
404	hermabi01	1941	0	ALS194107080	BRO	1041	NL	1	\N
405	hubbeca01	1941	0	ALS194107080	NY1	1048	NL	0	\N
406	lavagco01	1941	0	ALS194107080	BRO	1041	NL	1	\N
407	leibeha01	1941	0	ALS194107080	CHN	1044	NL	0	\N
408	lopezal01	1941	0	ALS194107080	PIT	1052	NL	1	\N
409	mccorfr01	1941	0	ALS194107080	CIN	1045	NL	1	\N
410	medwijo01	1941	0	ALS194107080	BRO	1041	NL	1	\N
411	milleed03	1941	0	ALS194107080	BSN	1042	NL	1	\N
412	ottme01	1941	0	ALS194107080	NY1	1048	NL	1	\N
413	passecl01	1941	0	ALS194107080	CHN	1044	NL	1	\N
414	slaugen01	1941	0	ALS194107080	SLN	1054	NL	1	\N
415	waltebu01	1941	0	ALS194107080	CIN	1045	NL	1	\N
416	warnelo01	1941	0	ALS194107080	SLN	1054	NL	0	\N
417	chandsp01	1942	0	NLS194207060	NYA	1065	AL	1	1
418	tebbebi01	1942	0	NLS194207060	DET	1063	AL	1	2
419	yorkru01	1942	0	NLS194207060	DET	1063	AL	1	3
420	gordojo01	1942	0	NLS194207060	NYA	1065	AL	1	4
421	keltnke01	1942	0	NLS194207060	CLE	1062	AL	1	5
422	boudrlo01	1942	0	NLS194207060	CLE	1062	AL	1	6
423	willite01	1942	0	NLS194207060	BOS	1056	AL	1	7
424	dimagjo01	1942	0	NLS194207060	NYA	1065	AL	1	8
425	henrito01	1942	0	NLS194207060	NYA	1065	AL	1	9
426	bagbyji02	1942	0	NLS194207060	CLE	1062	AL	0	\N
427	bentoal01	1942	0	NLS194207060	DET	1063	AL	1	\N
428	bonhati01	1942	0	NLS194207060	NYA	1065	AL	0	\N
429	dickebi01	1942	0	NLS194207060	NYA	1065	AL	0	\N
430	dimagdo01	1942	0	NLS194207060	BOS	1056	AL	0	\N
431	doerrbo01	1942	0	NLS194207060	BOS	1056	AL	0	\N
432	hudsosi01	1942	0	NLS194207060	WS1	1071	AL	0	\N
433	hughste01	1942	0	NLS194207060	BOS	1056	AL	0	\N
434	johnsbo01	1942	0	NLS194207060	PHA	1066	AL	1	\N
435	mcquige02	1942	0	NLS194207060	SLA	1069	AL	0	\N
436	newhoha01	1942	0	NLS194207060	DET	1063	AL	0	\N
437	rizzuph01	1942	0	NLS194207060	NYA	1065	AL	0	\N
438	rosarbu01	1942	0	NLS194207060	NYA	1065	AL	0	\N
439	ruffire01	1942	0	NLS194207060	NYA	1065	AL	0	\N
440	smithed04	1942	0	NLS194207060	CHA	1059	AL	0	\N
441	spencst01	1942	0	NLS194207060	WS1	1071	AL	0	\N
442	wagneha01	1942	0	NLS194207060	PHA	1066	AL	0	\N
443	coopemo01	1942	0	NLS194207060	SLN	1070	NL	1	1
444	coopewa01	1942	0	NLS194207060	SLN	1070	NL	1	2
445	mizejo01	1942	0	NLS194207060	NY1	1064	NL	1	3
446	brownji03	1942	0	NLS194207060	SLN	1070	NL	1	4
447	vaughar01	1942	0	NLS194207060	BRO	1057	NL	1	5
448	milleed03	1942	0	NLS194207060	BSN	1058	NL	1	6
449	medwijo01	1942	0	NLS194207060	BRO	1057	NL	1	7
450	reisepe01	1942	0	NLS194207060	BRO	1057	NL	1	8
451	ottme01	1942	0	NLS194207060	NY1	1064	NL	1	9
452	derripa01	1942	0	NLS194207060	CIN	1061	NL	0	\N
453	elliobo01	1942	0	NLS194207060	PIT	1068	NL	1	\N
454	hermabi01	1942	0	NLS194207060	BRO	1057	NL	1	\N
455	hubbeca01	1942	0	NLS194207060	NY1	1064	NL	0	\N
456	litwhda01	1942	0	NLS194207060	PHI	1067	NL	1	\N
457	lombaer01	1942	0	NLS194207060	BSN	1058	NL	1	\N
458	marshwi01	1942	0	NLS194207060	NY1	1064	NL	1	\N
459	mccorfr01	1942	0	NLS194207060	CIN	1061	NL	1	\N
460	meltocl01	1942	0	NLS194207060	NY1	1064	NL	0	\N
461	moorete01	1942	0	NLS194207060	SLN	1070	NL	1	\N
462	owenmi01	1942	0	NLS194207060	BRO	1057	NL	1	\N
463	passecl01	1942	0	NLS194207060	CHN	1060	NL	1	\N
464	reesepe01	1942	0	NLS194207060	BRO	1057	NL	1	\N
465	slaugen01	1942	0	NLS194207060	SLN	1070	NL	1	\N
466	starrra01	1942	0	NLS194207060	CIN	1061	NL	0	\N
467	vandejo01	1942	0	NLS194207060	CIN	1061	NL	1	\N
468	waltebu01	1942	0	NLS194207060	CIN	1061	NL	1	\N
469	wyattwh01	1942	0	NLS194207060	BRO	1057	NL	0	\N
470	leonadu02	1943	0	ALS194307130	WS1	1087	AL	1	1
471	earlyja01	1943	0	ALS194307130	WS1	1087	AL	1	2
472	siebedi01	1943	0	ALS194307130	PHA	1082	AL	1	3
473	doerrbo01	1943	0	ALS194307130	BOS	1072	AL	1	4
474	keltnke01	1943	0	ALS194307130	CLE	1078	AL	1	5
475	stephve01	1943	0	ALS194307130	SLA	1085	AL	1	6
476	wakefdi01	1943	0	ALS194307130	DET	1079	AL	1	7
477	laabsch01	1943	0	ALS194307130	SLA	1085	AL	1	8
478	casege01	1943	0	ALS194307130	WS1	1087	AL	1	9
479	applilu01	1943	0	ALS194307130	CHA	1075	AL	0	\N
480	bagbyji02	1943	0	ALS194307130	CLE	1078	AL	0	\N
481	bonhati01	1943	0	ALS194307130	NYA	1081	AL	0	\N
482	boudrlo01	1943	0	ALS194307130	CLE	1078	AL	0	\N
483	chandsp01	1943	0	ALS194307130	NYA	1081	AL	0	\N
484	dickebi01	1943	0	ALS194307130	NYA	1081	AL	0	\N
485	gordojo01	1943	0	ALS194307130	NYA	1081	AL	0	\N
486	heathje01	1943	0	ALS194307130	CLE	1078	AL	1	\N
487	hughste01	1943	0	ALS194307130	BOS	1072	AL	1	\N
488	johnsbo01	1943	0	ALS194307130	WS1	1087	AL	1	\N
489	juddos01	1943	0	ALS194307130	BOS	1072	AL	0	\N
490	kellech01	1943	0	ALS194307130	NYA	1081	AL	0	\N
491	lindejo01	1943	0	ALS194307130	NYA	1081	AL	0	\N
492	newhoha01	1943	0	ALS194307130	DET	1079	AL	1	\N
493	rosarbu01	1943	0	ALS194307130	CLE	1078	AL	0	\N
494	smithal03	1943	0	ALS194307130	CLE	1078	AL	0	\N
495	yorkru01	1943	0	ALS194307130	DET	1079	AL	1	\N
496	coopemo01	1943	0	ALS194307130	SLN	1086	NL	1	1
497	coopewa01	1943	0	ALS194307130	SLN	1086	NL	1	2
498	fletcel01	1943	0	ALS194307130	PIT	1084	NL	1	3
499	hermabi01	1943	0	ALS194307130	BRO	1073	NL	1	4
500	hackst01	1943	0	ALS194307130	CHN	1076	NL	1	5
501	marioma01	1943	0	ALS194307130	SLN	1086	NL	1	6
502	musiast01	1943	0	ALS194307130	SLN	1086	NL	1	7
503	walkeha01	1943	0	ALS194307130	SLN	1086	NL	1	8
504	nichobi01	1943	0	ALS194307130	CHN	1076	NL	1	9
505	adamsac01	1943	0	ALS194307130	NY1	1080	NL	0	\N
506	dahlgba01	1943	0	ALS194307130	PHI	1083	NL	1	\N
507	dimagvi01	1943	0	ALS194307130	PIT	1084	NL	1	\N
508	freylo01	1943	0	ALS194307130	CIN	1077	NL	1	\N
509	galanau01	1943	0	ALS194307130	BRO	1073	NL	1	\N
510	javeral01	1943	0	ALS194307130	BSN	1074	NL	1	\N
511	kurowwh01	1943	0	ALS194307130	SLN	1086	NL	0	\N
512	laniema01	1943	0	ALS194307130	SLN	1086	NL	0	\N
513	lombaer01	1943	0	ALS194307130	NY1	1080	NL	1	\N
514	mccorfr01	1943	0	ALS194307130	CIN	1077	NL	0	\N
515	milleed03	1943	0	ALS194307130	CIN	1077	NL	1	\N
516	ottme01	1943	0	ALS194307130	NY1	1080	NL	1	\N
517	owenmi01	1943	0	ALS194307130	BRO	1073	NL	0	\N
518	passecl01	1943	0	ALS194307130	CHN	1076	NL	0	\N
519	polleho01	1943	0	ALS194307130	SLN	1086	NL	0	\N
520	sewelri01	1943	0	ALS194307130	PIT	1084	NL	1	\N
521	vandejo01	1943	0	ALS194307130	CIN	1077	NL	1	\N
522	walkedi02	1943	0	ALS194307130	BRO	1073	NL	1	\N
523	borowha01	1944	0	NLS194407110	NYA	1097	AL	1	1
524	hemslro01	1944	0	NLS194407110	NYA	1097	AL	1	2
525	mcquige02	1944	0	NLS194407110	SLA	1101	AL	1	3
526	doerrbo01	1944	0	NLS194407110	BOS	1088	AL	1	4
527	keltnke01	1944	0	NLS194407110	CLE	1094	AL	1	5
528	stephve01	1944	0	NLS194407110	SLA	1101	AL	1	6
529	johnsbo01	1944	0	NLS194407110	BOS	1088	AL	1	7
530	tucketh01	1944	0	NLS194407110	CHA	1091	AL	1	8
531	spencst01	1944	0	NLS194407110	WS1	1103	AL	1	9
532	boudrlo01	1944	0	NLS194407110	CLE	1094	AL	0	\N
533	casege01	1944	0	NLS194407110	WS1	1103	AL	0	\N
534	cullero01	1944	0	NLS194407110	CLE	1094	AL	0	\N
535	ferreri01	1944	0	NLS194407110	WS1	1103	AL	0	\N
536	foxpe01	1944	0	NLS194407110	BOS	1088	AL	0	\N
537	groveor01	1944	0	NLS194407110	CHA	1091	AL	0	\N
538	hayesfr01	1944	0	NLS194407110	PHA	1098	AL	1	\N
539	higgipi01	1944	0	NLS194407110	DET	1095	AL	1	\N
540	hockeor01	1944	0	NLS194407110	CLE	1094	AL	0	\N
541	hughste01	1944	0	NLS194407110	BOS	1088	AL	1	\N
542	leonadu02	1944	0	NLS194407110	WS1	1103	AL	0	\N
543	muncrbo01	1944	0	NLS194407110	SLA	1101	AL	1	\N
544	newhoha01	1944	0	NLS194407110	DET	1095	AL	1	\N
545	newsobo01	1944	0	NLS194407110	PHA	1098	AL	1	\N
546	pagejo01	1944	0	NLS194407110	NYA	1097	AL	0	\N
547	troutdi01	1944	0	NLS194407110	DET	1095	AL	0	\N
548	yorkru01	1944	0	NLS194407110	DET	1095	AL	0	\N
549	waltebu01	1944	0	NLS194407110	CIN	1093	NL	1	1
550	coopewa01	1944	0	NLS194407110	SLN	1102	NL	1	2
551	cavarph01	1944	0	NLS194407110	CHN	1092	NL	1	3
552	ryanco01	1944	0	NLS194407110	BSN	1090	NL	1	4
553	elliobo01	1944	0	NLS194407110	PIT	1100	NL	1	5
554	marioma01	1944	0	NLS194407110	SLN	1102	NL	1	6
555	galanau01	1944	0	NLS194407110	BRO	1089	NL	1	7
556	musiast01	1944	0	NLS194407110	SLN	1102	NL	1	8
557	walkedi02	1944	0	NLS194407110	BRO	1089	NL	1	9
558	andrena01	1944	0	NLS194407110	BSN	1090	NL	0	\N
559	dimagvi01	1944	0	NLS194407110	PIT	1100	NL	1	\N
560	javeral01	1944	0	NLS194407110	BSN	1090	NL	0	\N
561	johnsdo02	1944	0	NLS194407110	CHN	1092	NL	0	\N
562	kurowwh01	1944	0	NLS194407110	SLN	1102	NL	1	\N
563	laniema01	1944	0	NLS194407110	SLN	1102	NL	0	\N
564	mccorfr01	1944	0	NLS194407110	CIN	1093	NL	0	\N
565	medwijo01	1944	0	NLS194407110	NY1	1096	NL	1	\N
566	milleed03	1944	0	NLS194407110	CIN	1093	NL	0	\N
567	muellra01	1944	0	NLS194407110	CIN	1093	NL	1	\N
568	mungere01	1944	0	NLS194407110	SLN	1102	NL	0	\N
569	nichobi01	1944	0	NLS194407110	CHN	1092	NL	1	\N
570	ottme01	1944	0	NLS194407110	NY1	1096	NL	1	\N
571	owenmi01	1944	0	NLS194407110	BRO	1089	NL	0	\N
572	raffeke01	1944	0	NLS194407110	PHI	1099	NL	1	\N
573	sewelri01	1944	0	NLS194407110	PIT	1100	NL	1	\N
574	tobinji01	1944	0	NLS194407110	BSN	1090	NL	1	\N
575	voisebi01	1944	0	NLS194407110	NY1	1096	NL	0	\N
576	zakfr01	1944	0	NLS194407110	PIT	1100	NL	0	\N
577	borowha01	1945	0	\N	NYA	1113	AL	0	\N
578	boudrlo01	1945	0	\N	CLE	1110	AL	0	\N
579	casege01	1945	0	\N	WS1	1119	AL	0	\N
580	chrisru01	1945	0	\N	PHA	1114	AL	0	\N
581	cuccito01	1945	0	\N	CHA	1107	AL	0	\N
582	ettenni01	1945	0	\N	NYA	1113	AL	0	\N
583	ferreri01	1945	0	\N	WS1	1119	AL	0	\N
584	ferrida01	1945	0	\N	BOS	1104	AL	0	\N
585	greenha01	1945	0	\N	DET	1111	AL	0	\N
586	grimeos01	1945	0	\N	NYA	1113	AL	0	\N
587	gromest01	1945	0	\N	CLE	1110	AL	0	\N
588	hayesfr01	1945	0	\N	CLE	1110	AL	0	\N
589	johnsbo01	1945	0	\N	BOS	1104	AL	0	\N
590	krameja01	1945	0	\N	SLA	1117	AL	0	\N
591	leeth01	1945	0	\N	CHA	1107	AL	0	\N
592	leonadu02	1945	0	\N	WS1	1119	AL	0	\N
593	mayoed01	1945	0	\N	DET	1111	AL	0	\N
594	mcquige02	1945	0	\N	SLA	1117	AL	0	\N
595	moseswa01	1945	0	\N	CHA	1107	AL	0	\N
596	newhoha01	1945	0	\N	DET	1111	AL	0	\N
597	reynoal01	1945	0	\N	CLE	1110	AL	0	\N
598	stephve01	1945	0	\N	SLA	1117	AL	0	\N
599	stirnsn01	1945	0	\N	NYA	1113	AL	0	\N
600	treshmi01	1945	0	\N	CHA	1107	AL	0	\N
601	barrere01	1945	0	\N	SLN	1118	NL	0	\N
602	cavarph01	1945	0	\N	CHN	1108	NL	0	\N
603	coopemo01	1945	0	\N	BSN	1106	NL	0	\N
604	elliobo01	1945	0	\N	PIT	1116	NL	0	\N
605	greggha01	1945	0	\N	BRO	1105	NL	0	\N
606	hackst01	1945	0	\N	CHN	1108	NL	0	\N
607	holmeto01	1945	0	\N	BSN	1106	NL	0	\N
608	johnsdo02	1945	0	\N	CHN	1108	NL	0	\N
609	kurowwh01	1945	0	\N	SLN	1118	NL	0	\N
610	lombaer01	1945	0	\N	NY1	1112	NL	0	\N
611	marioma01	1945	0	\N	SLN	1118	NL	0	\N
612	masiph01	1945	0	\N	BSN	1106	NL	0	\N
613	mccorfr01	1945	0	\N	CIN	1109	NL	0	\N
614	mungova01	1945	0	\N	NY1	1112	NL	0	\N
615	nichobi01	1945	0	\N	CHN	1108	NL	0	\N
616	odeake01	1945	0	\N	SLN	1118	NL	0	\N
617	ottme01	1945	0	\N	NY1	1112	NL	0	\N
618	pafkoan01	1945	0	\N	CHN	1108	NL	0	\N
619	passecl01	1945	0	\N	CHN	1108	NL	0	\N
620	roepr01	1945	0	\N	PIT	1116	NL	0	\N
621	rosengo01	1945	0	\N	BRO	1105	NL	0	\N
622	sewelri01	1945	0	\N	PIT	1116	NL	0	\N
623	verbaem01	1945	0	\N	SLN	1118	NL	0	\N
624	walkedi02	1945	0	\N	BRO	1105	NL	0	\N
625	wyseha01	1945	0	\N	CHN	1108	NL	0	\N
626	fellebo01	1946	0	ALS194607090	CLE	1126	AL	1	1
627	hayesfr01	1946	0	ALS194607090	CLE	1126	AL	1	2
628	vernomi01	1946	0	ALS194607090	WS1	1135	AL	1	3
629	doerrbo01	1946	0	ALS194607090	BOS	1120	AL	1	4
630	keltnke01	1946	0	ALS194607090	CLE	1126	AL	1	5
631	peskyjo01	1946	0	ALS194607090	BOS	1120	AL	1	6
632	willite01	1946	0	ALS194607090	BOS	1120	AL	1	7
633	dimagdo01	1946	0	ALS194607090	BOS	1120	AL	1	8
634	kellech01	1946	0	ALS194607090	NYA	1129	AL	1	9
635	applilu01	1946	0	ALS194607090	CHA	1123	AL	1	\N
636	chandsp01	1946	0	ALS194607090	NYA	1129	AL	0	\N
637	chapmsa01	1946	0	ALS194607090	PHA	1130	AL	1	\N
638	dickebi01	1946	0	ALS194607090	NYA	1129	AL	1	\N
639	dimagjo01	1946	0	ALS194607090	NYA	1129	AL	0	\N
640	ferrida01	1946	0	ALS194607090	BOS	1120	AL	0	\N
641	gordojo01	1946	0	ALS194607090	NYA	1129	AL	1	\N
642	harrimi01	1946	0	ALS194607090	BOS	1120	AL	0	\N
643	krameja01	1946	0	ALS194607090	SLA	1133	AL	1	\N
644	newhoha01	1946	0	ALS194607090	DET	1127	AL	1	\N
645	rosarbu01	1946	0	ALS194607090	PHA	1130	AL	1	\N
646	spencst01	1946	0	ALS194607090	WS1	1135	AL	1	\N
647	stephve01	1946	0	ALS194607090	SLA	1133	AL	1	\N
648	stirnsn01	1946	0	ALS194607090	NYA	1129	AL	1	\N
649	wagneha01	1946	0	ALS194607090	BOS	1120	AL	1	\N
650	yorkru01	1946	0	ALS194607090	BOS	1120	AL	1	\N
651	passecl01	1946	0	ALS194607090	CHN	1124	NL	1	1
652	coopewa01	1946	0	ALS194607090	NY1	1128	NL	1	2
653	mizejo01	1946	0	ALS194607090	NY1	1128	NL	1	3
654	schoere01	1946	0	ALS194607090	SLN	1134	NL	1	4
655	kurowwh01	1946	0	ALS194607090	SLN	1134	NL	1	5
656	marioma01	1946	0	ALS194607090	SLN	1134	NL	1	6
657	musiast01	1946	0	ALS194607090	SLN	1134	NL	1	7
658	hoppjo01	1946	0	ALS194607090	BSN	1122	NL	1	8
659	walkedi02	1946	0	ALS194607090	BRO	1121	NL	1	9
660	blackew01	1946	0	ALS194607090	CIN	1125	NL	1	\N
661	cavarph01	1946	0	ALS194607090	CHN	1124	NL	1	\N
662	coopemo01	1946	0	ALS194607090	BSN	1122	NL	0	\N
663	ennisde01	1946	0	ALS194607090	PHI	1131	NL	1	\N
664	gustifr01	1946	0	ALS194607090	PIT	1132	NL	1	\N
665	higbeki01	1946	0	ALS194607090	BRO	1121	NL	1	\N
666	lamanra01	1946	0	ALS194607090	CIN	1125	NL	1	\N
667	lowrepe01	1946	0	ALS194607090	CHN	1124	NL	1	\N
668	masiph01	1946	0	ALS194607090	BSN	1122	NL	1	\N
669	mccorfr01	1946	0	ALS194607090	PHI	1131	NL	1	\N
670	milleed03	1946	0	ALS194607090	CIN	1125	NL	0	\N
671	polleho01	1946	0	ALS194607090	SLN	1134	NL	0	\N
672	reesepe01	1946	0	ALS194607090	BRO	1121	NL	0	\N
673	reisepe01	1946	0	ALS194607090	BRO	1121	NL	0	\N
674	schmijo01	1946	0	ALS194607090	CHN	1124	NL	0	\N
675	sewelri01	1946	0	ALS194607090	PIT	1132	NL	1	\N
676	slaugen01	1946	0	ALS194607090	SLN	1134	NL	1	\N
677	verbaem01	1946	0	ALS194607090	PHI	1131	NL	1	\N
678	newhoha01	1947	0	NLS194707080	DET	1143	AL	1	1
679	rosarbu01	1947	0	NLS194707080	PHA	1146	AL	1	2
680	mcquige02	1947	0	NLS194707080	NYA	1145	AL	1	3
681	gordojo01	1947	0	NLS194707080	CLE	1142	AL	1	4
682	kellge01	1947	0	NLS194707080	DET	1143	AL	1	5
683	boudrlo01	1947	0	NLS194707080	CLE	1142	AL	1	6
684	willite01	1947	0	NLS194707080	BOS	1136	AL	1	7
685	dimagjo01	1947	0	NLS194707080	NYA	1145	AL	1	8
686	lewisbu01	1947	0	NLS194707080	WS1	1151	AL	1	9
687	applilu01	1947	0	NLS194707080	CHA	1139	AL	1	\N
688	chandsp01	1947	0	NLS194707080	NYA	1145	AL	0	\N
689	doerrbo01	1947	0	NLS194707080	BOS	1136	AL	1	\N
690	fellebo01	1947	0	NLS194707080	CLE	1142	AL	0	\N
691	heganji01	1947	0	NLS194707080	CLE	1142	AL	0	\N
692	henrito01	1947	0	NLS194707080	NYA	1145	AL	1	\N
693	johnsbi03	1947	0	NLS194707080	NYA	1145	AL	1	\N
694	kellech01	1947	0	NLS194707080	NYA	1145	AL	0	\N
695	krameja01	1947	0	NLS194707080	SLA	1149	AL	0	\N
696	mastewa02	1947	0	NLS194707080	WS1	1151	AL	1	\N
697	mullipa01	1947	0	NLS194707080	DET	1143	AL	0	\N
698	pagejo01	1947	0	NLS194707080	NYA	1145	AL	1	\N
699	robinaa01	1947	0	NLS194707080	NYA	1145	AL	0	\N
700	sheasp01	1947	0	NLS194707080	NYA	1145	AL	1	\N
701	spencst01	1947	0	NLS194707080	WS1	1151	AL	1	\N
702	troutdi01	1947	0	NLS194707080	DET	1143	AL	0	\N
703	wynnea01	1947	0	NLS194707080	WS1	1151	AL	0	\N
704	yorkru01	1947	0	NLS194707080	CHA	1139	AL	0	\N
705	blackew01	1947	0	NLS194707080	CIN	1141	NL	1	1
706	coopewa01	1947	0	NLS194707080	NY1	1144	NL	1	2
707	mizejo01	1947	0	NLS194707080	NY1	1144	NL	1	3
708	verbaem01	1947	0	NLS194707080	PHI	1147	NL	1	4
709	gustifr01	1947	0	NLS194707080	PIT	1148	NL	1	5
710	marioma01	1947	0	NLS194707080	SLN	1150	NL	1	6
711	slaugen01	1947	0	NLS194707080	SLN	1150	NL	1	7
712	walkeha01	1947	0	NLS194707080	SLN	1150	NL	1	8
713	walkedi02	1947	0	NLS194707080	BRO	1137	NL	1	9
714	brancra01	1947	0	NLS194707080	BRO	1137	NL	0	\N
715	brechha01	1947	0	NLS194707080	SLN	1150	NL	1	\N
716	cavarph01	1947	0	NLS194707080	CHN	1140	NL	1	\N
717	edwarbr01	1947	0	NLS194707080	BRO	1137	NL	1	\N
718	elliobo01	1947	0	NLS194707080	BSN	1138	NL	0	\N
719	haasbe01	1947	0	NLS194707080	CIN	1141	NL	1	\N
720	kurowwh01	1947	0	NLS194707080	SLN	1150	NL	1	\N
721	marshwi01	1947	0	NLS194707080	NY1	1144	NL	1	\N
722	masiph01	1947	0	NLS194707080	BSN	1138	NL	1	\N
723	milleed03	1947	0	NLS194707080	CIN	1141	NL	0	\N
724	mungere01	1947	0	NLS194707080	SLN	1150	NL	0	\N
725	musiast01	1947	0	NLS194707080	SLN	1150	NL	1	\N
726	pafkoan01	1947	0	NLS194707080	CHN	1140	NL	1	\N
727	reesepe01	1947	0	NLS194707080	BRO	1137	NL	1	\N
728	rowesc01	1947	0	NLS194707080	PHI	1147	NL	1	\N
729	sainjo01	1947	0	NLS194707080	BSN	1138	NL	1	\N
730	spahnwa01	1947	0	NLS194707080	BSN	1138	NL	1	\N
731	stanked01	1947	0	NLS194707080	BRO	1137	NL	1	\N
732	mastewa02	1948	0	ALS194807130	WS1	1167	AL	1	1
733	rosarbu01	1948	0	ALS194807130	PHA	1162	AL	1	2
734	mcquige02	1948	0	ALS194807130	NYA	1161	AL	1	3
735	gordojo01	1948	0	ALS194807130	CLE	1158	AL	1	4
736	keltnke01	1948	0	ALS194807130	CLE	1158	AL	1	5
737	boudrlo01	1948	0	ALS194807130	CLE	1158	AL	1	6
738	henrito01	1948	0	ALS194807130	NYA	1161	AL	1	7
739	eversho01	1948	0	ALS194807130	DET	1159	AL	1	8
740	mullipa01	1948	0	ALS194807130	DET	1159	AL	1	9
741	berrayo01	1948	0	ALS194807130	NYA	1161	AL	0	\N
742	colemjo04	1948	0	ALS194807130	PHA	1162	AL	1	\N
743	dimagjo01	1948	0	ALS194807130	NYA	1161	AL	1	\N
744	dobsojo01	1948	0	ALS194807130	BOS	1152	AL	0	\N
745	doerrbo01	1948	0	ALS194807130	BOS	1152	AL	1	\N
746	fellebo01	1948	0	ALS194807130	CLE	1158	AL	0	\N
747	haynejo01	1948	0	ALS194807130	CHA	1155	AL	0	\N
748	kellge01	1948	0	ALS194807130	DET	1159	AL	0	\N
749	lemonbo01	1948	0	ALS194807130	CLE	1158	AL	0	\N
750	newhoha01	1948	0	ALS194807130	DET	1159	AL	1	\N
751	pagejo01	1948	0	ALS194807130	NYA	1161	AL	0	\N
752	raschvi01	1948	0	ALS194807130	NYA	1161	AL	1	\N
753	stephve01	1948	0	ALS194807130	BOS	1152	AL	1	\N
754	tebbebi01	1948	0	ALS194807130	BOS	1152	AL	1	\N
755	vernomi01	1948	0	ALS194807130	WS1	1167	AL	1	\N
756	willite01	1948	0	ALS194807130	BOS	1152	AL	1	\N
757	zarilal01	1948	0	ALS194807130	SLA	1165	AL	1	\N
758	brancra01	1948	0	ALS194807130	BRO	1153	NL	1	1
759	coopewa01	1948	0	ALS194807130	NY1	1160	NL	1	2
760	mizejo01	1948	0	ALS194807130	NY1	1160	NL	1	3
761	schoere01	1948	0	ALS194807130	SLN	1166	NL	1	4
762	pafkoan01	1948	0	ALS194807130	CHN	1156	NL	1	5
763	reesepe01	1948	0	ALS194807130	BRO	1153	NL	1	6
764	musiast01	1948	0	ALS194807130	SLN	1166	NL	1	7
765	ashburi01	1948	0	ALS194807130	PHI	1163	NL	1	8
766	slaugen01	1948	0	ALS194807130	SLN	1166	NL	1	9
767	blackew01	1948	0	ALS194807130	CIN	1157	NL	1	\N
768	brechha01	1948	0	ALS194807130	SLN	1166	NL	0	\N
769	elliobo01	1948	0	ALS194807130	BSN	1154	NL	1	\N
770	gordosi01	1948	0	ALS194807130	NY1	1160	NL	0	\N
771	gustifr01	1948	0	ALS194807130	PIT	1164	NL	1	\N
772	holmeto01	1948	0	ALS194807130	BSN	1154	NL	1	\N
773	kerrbu01	1948	0	ALS194807130	NY1	1160	NL	1	\N
774	kinerra01	1948	0	ALS194807130	PIT	1164	NL	1	\N
775	marioma01	1948	0	ALS194807130	SLN	1166	NL	0	\N
776	masiph01	1948	0	ALS194807130	BSN	1154	NL	1	\N
777	mcculcl01	1948	0	ALS194807130	CHN	1156	NL	0	\N
778	riddlel01	1948	0	ALS194807130	PIT	1164	NL	0	\N
779	rignebi01	1948	0	ALS194807130	NY1	1160	NL	1	\N
780	sainjo01	1948	0	ALS194807130	BSN	1154	NL	1	\N
781	schmijo01	1948	0	ALS194807130	CHN	1156	NL	1	\N
782	stanked01	1948	0	ALS194807130	BSN	1154	NL	0	\N
783	thomsbo01	1948	0	ALS194807130	NY1	1160	NL	1	\N
784	waitked01	1948	0	ALS194807130	CHN	1156	NL	1	\N
785	parneme01	1949	0	NLS194907120	BOS	1168	AL	1	1
786	tebbebi01	1949	0	NLS194907120	BOS	1168	AL	1	2
787	robined01	1949	0	NLS194907120	WS1	1183	AL	1	3
788	michaca01	1949	0	NLS194907120	CHA	1171	AL	1	4
789	kellge01	1949	0	NLS194907120	DET	1175	AL	1	5
790	joosted01	1949	0	NLS194907120	PHA	1178	AL	1	6
791	willite01	1949	0	NLS194907120	BOS	1168	AL	1	7
792	dimagjo01	1949	0	NLS194907120	NYA	1177	AL	1	8
793	dimagdo01	1949	0	NLS194907120	BOS	1168	AL	1	9
794	berrayo01	1949	0	NLS194907120	NYA	1177	AL	1	\N
795	brisslo01	1949	0	NLS194907120	PHA	1178	AL	1	\N
796	dillibo01	1949	0	NLS194907120	SLA	1181	AL	1	\N
797	dobyla01	1949	0	NLS194907120	CLE	1174	AL	1	\N
798	goodmbi01	1949	0	NLS194907120	BOS	1168	AL	1	\N
799	gordojo01	1949	0	NLS194907120	CLE	1174	AL	1	\N
800	heganji01	1949	0	NLS194907120	CLE	1174	AL	0	\N
801	henrito01	1949	0	NLS194907120	NYA	1177	AL	0	\N
802	kellnal01	1949	0	NLS194907120	PHA	1178	AL	0	\N
803	lemonbo01	1949	0	NLS194907120	CLE	1174	AL	0	\N
804	mitchda01	1949	0	NLS194907120	CLE	1174	AL	1	\N
805	raschvi01	1949	0	NLS194907120	NYA	1177	AL	1	\N
806	reynoal01	1949	0	NLS194907120	NYA	1177	AL	0	\N
807	stephve01	1949	0	NLS194907120	BOS	1168	AL	1	\N
808	truckvi01	1949	0	NLS194907120	DET	1175	AL	1	\N
809	wertzvi01	1949	0	NLS194907120	DET	1175	AL	1	\N
810	spahnwa01	1949	0	NLS194907120	BSN	1170	NL	1	1
811	seminan01	1949	0	NLS194907120	PHI	1179	NL	1	2
812	mizejo01	1949	0	NLS194907120	NY1	1176	NL	1	3
813	robinja02	1949	0	NLS194907120	BRO	1169	NL	1	4
814	kazaked01	1949	0	NLS194907120	SLN	1182	NL	1	5
815	reesepe01	1949	0	NLS194907120	BRO	1169	NL	1	6
816	kinerra01	1949	0	NLS194907120	PIT	1180	NL	1	7
817	musiast01	1949	0	NLS194907120	SLN	1182	NL	1	8
818	marshwi01	1949	0	NLS194907120	NY1	1176	NL	1	9
819	bickfve01	1949	0	NLS194907120	BSN	1170	NL	1	\N
820	blackew01	1949	0	NLS194907120	CIN	1173	NL	1	\N
821	brancra01	1949	0	NLS194907120	BRO	1169	NL	0	\N
822	camparo01	1949	0	NLS194907120	BRO	1169	NL	1	\N
823	coopewa01	1949	0	NLS194907120	CIN	1173	NL	0	\N
824	gordosi01	1949	0	NLS194907120	NY1	1176	NL	1	\N
825	hodgegi01	1949	0	NLS194907120	BRO	1169	NL	1	\N
826	marioma01	1949	0	NLS194907120	SLN	1182	NL	0	\N
827	mungere01	1949	0	NLS194907120	SLN	1182	NL	1	\N
828	newcodo01	1949	0	NLS194907120	BRO	1169	NL	1	\N
829	pafkoan01	1949	0	NLS194907120	CHN	1172	NL	1	\N
830	polleho01	1949	0	NLS194907120	SLN	1182	NL	1	\N
831	roepr01	1949	0	NLS194907120	BRO	1169	NL	1	\N
832	schoere01	1949	0	NLS194907120	SLN	1182	NL	1	\N
833	slaugen01	1949	0	NLS194907120	SLN	1182	NL	1	\N
834	thomsbo01	1949	0	NLS194907120	NY1	1176	NL	1	\N
835	raschvi01	1950	0	ALS195007110	NYA	1193	AL	1	1
836	berrayo01	1950	0	ALS195007110	NYA	1193	AL	1	2
837	dropowa01	1950	0	ALS195007110	BOS	1184	AL	1	3
838	doerrbo01	1950	0	ALS195007110	BOS	1184	AL	1	4
839	kellge01	1950	0	ALS195007110	DET	1191	AL	1	5
840	rizzuph01	1950	0	ALS195007110	NYA	1193	AL	1	6
841	willite01	1950	0	ALS195007110	BOS	1184	AL	1	7
842	dobyla01	1950	0	ALS195007110	CLE	1190	AL	1	8
843	eversho01	1950	0	ALS195007110	DET	1191	AL	1	9
844	byrneto01	1950	0	ALS195007110	NYA	1193	AL	0	\N
845	colemje01	1950	0	ALS195007110	NYA	1193	AL	1	\N
846	dimagdo01	1950	0	ALS195007110	BOS	1184	AL	1	\N
847	dimagjo01	1950	0	ALS195007110	NYA	1193	AL	1	\N
848	fainfe01	1950	0	ALS195007110	PHA	1194	AL	1	\N
849	fellebo01	1950	0	ALS195007110	CLE	1190	AL	1	\N
850	grayte01	1950	0	ALS195007110	DET	1191	AL	1	\N
851	heganji01	1950	0	ALS195007110	CLE	1190	AL	1	\N
852	henrito01	1950	0	ALS195007110	NYA	1193	AL	1	\N
853	houttar01	1950	0	ALS195007110	DET	1191	AL	1	\N
854	lemonbo01	1950	0	ALS195007110	CLE	1190	AL	1	\N
855	lollash01	1950	0	ALS195007110	SLA	1197	AL	0	\N
856	michaca01	1950	0	ALS195007110	WS1	1199	AL	1	\N
857	reynoal01	1950	0	ALS195007110	NYA	1193	AL	1	\N
858	scarbra01	1950	0	ALS195007110	CHA	1187	AL	0	\N
859	stephve01	1950	0	ALS195007110	BOS	1184	AL	0	\N
860	roberro01	1950	0	ALS195007110	PHI	1195	NL	1	1
861	camparo01	1950	0	ALS195007110	BRO	1185	NL	1	2
862	musiast01	1950	0	ALS195007110	SLN	1198	NL	1	3
863	robinja02	1950	0	ALS195007110	BRO	1185	NL	1	4
864	joneswi01	1950	0	ALS195007110	PHI	1195	NL	1	5
865	marioma01	1950	0	ALS195007110	SLN	1198	NL	1	6
866	kinerra01	1950	0	ALS195007110	PIT	1196	NL	1	7
867	slaugen01	1950	0	ALS195007110	SLN	1198	NL	1	8
868	sauerha01	1950	0	ALS195007110	CHN	1188	NL	1	9
869	blackew01	1950	0	ALS195007110	CIN	1189	NL	1	\N
870	coopewa01	1950	0	ALS195007110	BSN	1186	NL	0	\N
871	hodgegi01	1950	0	ALS195007110	BRO	1185	NL	0	\N
872	jansela01	1950	0	ALS195007110	NY1	1192	NL	1	\N
873	konstji01	1950	0	ALS195007110	PHI	1195	NL	1	\N
874	newcodo01	1950	0	ALS195007110	BRO	1185	NL	1	\N
875	pafkoan01	1950	0	ALS195007110	CHN	1188	NL	1	\N
876	reesepe01	1950	0	ALS195007110	BRO	1185	NL	1	\N
877	roepr01	1950	0	ALS195007110	BRO	1185	NL	0	\N
878	rushbo01	1950	0	ALS195007110	CHN	1188	NL	0	\N
879	schoere01	1950	0	ALS195007110	SLN	1198	NL	1	\N
880	sisledi01	1950	0	ALS195007110	PHI	1195	NL	1	\N
881	snidedu01	1950	0	ALS195007110	BRO	1185	NL	1	\N
882	spahnwa01	1950	0	ALS195007110	BSN	1186	NL	0	\N
883	stanked01	1950	0	ALS195007110	NY1	1192	NL	0	\N
884	wyrosjo01	1950	0	ALS195007110	CIN	1189	NL	1	\N
885	garvene01	1951	0	ALS195107100	SLA	1213	AL	1	1
886	berrayo01	1951	0	ALS195107100	NYA	1209	AL	1	2
887	fainfe01	1951	0	ALS195107100	PHA	1210	AL	1	3
888	foxne01	1951	0	ALS195107100	CHA	1203	AL	1	4
889	kellge01	1951	0	ALS195107100	DET	1207	AL	1	5
890	carrach01	1951	0	ALS195107100	CHA	1203	AL	1	6
891	willite01	1951	0	ALS195107100	BOS	1200	AL	1	7
892	dimagdo01	1951	0	ALS195107100	BOS	1200	AL	1	8
893	wertzvi01	1951	0	ALS195107100	DET	1207	AL	1	9
894	busbyji01	1951	0	ALS195107100	CHA	1203	AL	1	\N
895	dimagjo01	1951	0	ALS195107100	NYA	1209	AL	0	\N
896	dobyla01	1951	0	ALS195107100	CLE	1206	AL	1	\N
897	doerrbo01	1951	0	ALS195107100	BOS	1200	AL	1	\N
898	gumpera01	1951	0	ALS195107100	CHA	1203	AL	0	\N
899	heganji01	1951	0	ALS195107100	CLE	1206	AL	1	\N
900	hutchfr01	1951	0	ALS195107100	DET	1207	AL	1	\N
901	lemonbo01	1951	0	ALS195107100	CLE	1206	AL	1	\N
902	lopated01	1951	0	ALS195107100	NYA	1209	AL	1	\N
903	marreco01	1951	0	ALS195107100	WS1	1215	AL	0	\N
904	minosmi01	1951	0	ALS195107100	CHA	1203	AL	1	\N
905	parneme01	1951	0	ALS195107100	BOS	1200	AL	1	\N
906	rizzuph01	1951	0	ALS195107100	NYA	1209	AL	1	\N
907	robined01	1951	0	ALS195107100	CHA	1203	AL	1	\N
908	shantbo01	1951	0	ALS195107100	PHA	1210	AL	0	\N
909	stephve01	1951	0	ALS195107100	BOS	1200	AL	1	\N
910	roberro01	1951	0	ALS195107100	PHI	1211	NL	1	1
911	camparo01	1951	0	ALS195107100	BRO	1201	NL	1	2
912	hodgegi01	1951	0	ALS195107100	BRO	1201	NL	1	3
913	robinja02	1951	0	ALS195107100	BRO	1201	NL	1	4
914	elliobo01	1951	0	ALS195107100	BSN	1202	NL	1	5
915	darkal01	1951	0	ALS195107100	NY1	1208	NL	1	6
916	musiast01	1951	0	ALS195107100	SLN	1214	NL	1	7
917	ashburi01	1951	0	ALS195107100	PHI	1211	NL	1	8
918	ennisde01	1951	0	ALS195107100	PHI	1211	NL	1	9
919	blackew01	1951	0	ALS195107100	CIN	1205	NL	1	\N
920	edwarbr01	1951	0	ALS195107100	CHN	1204	NL	0	\N
921	jansela01	1951	0	ALS195107100	NY1	1208	NL	0	\N
922	joneswi01	1951	0	ALS195107100	PHI	1211	NL	1	\N
923	kinerra01	1951	0	ALS195107100	PIT	1212	NL	1	\N
924	leonadu02	1951	0	ALS195107100	CHN	1204	NL	0	\N
925	maglisa01	1951	0	ALS195107100	NY1	1208	NL	1	\N
926	newcodo01	1951	0	ALS195107100	BRO	1201	NL	1	\N
927	reesepe01	1951	0	ALS195107100	BRO	1201	NL	1	\N
928	roepr01	1951	0	ALS195107100	BRO	1201	NL	0	\N
929	schoere01	1951	0	ALS195107100	SLN	1214	NL	1	\N
930	slaugen01	1951	0	ALS195107100	SLN	1214	NL	1	\N
931	snidedu01	1951	0	ALS195107100	BRO	1201	NL	1	\N
932	spahnwa01	1951	0	ALS195107100	BSN	1202	NL	0	\N
933	westlwa01	1951	0	ALS195107100	SLN	1214	NL	1	\N
934	wyrosjo01	1951	0	ALS195107100	CIN	1205	NL	1	\N
935	raschvi01	1952	0	NLS195207080	NYA	1225	AL	1	1
936	berrayo01	1952	0	NLS195207080	NYA	1225	AL	1	2
937	robined01	1952	0	NLS195207080	CHA	1219	AL	1	3
938	avilabo01	1952	0	NLS195207080	CLE	1222	AL	1	4
939	rosenal01	1952	0	NLS195207080	CLE	1222	AL	1	5
940	rizzuph01	1952	0	NLS195207080	NYA	1225	AL	1	6
941	mitchda01	1952	0	NLS195207080	CLE	1222	AL	1	7
942	dimagdo01	1952	0	NLS195207080	BOS	1216	AL	1	8
943	bauerha01	1952	0	NLS195207080	NYA	1225	AL	1	9
944	dobyla01	1952	0	NLS195207080	CLE	1222	AL	1	\N
945	fainfe01	1952	0	NLS195207080	PHA	1226	AL	0	\N
946	foxne01	1952	0	NLS195207080	CHA	1219	AL	0	\N
947	garcimi01	1952	0	NLS195207080	CLE	1222	AL	0	\N
948	heganji01	1952	0	NLS195207080	CLE	1222	AL	0	\N
949	jenseja01	1952	0	NLS195207080	WS1	1231	AL	1	\N
950	joosted01	1952	0	NLS195207080	PHA	1226	AL	0	\N
951	kellge01	1952	0	NLS195207080	BOS	1216	AL	0	\N
952	lemonbo01	1952	0	NLS195207080	CLE	1222	AL	1	\N
953	mantlmi01	1952	0	NLS195207080	NYA	1225	AL	0	\N
954	mcdougi01	1952	0	NLS195207080	NYA	1225	AL	1	\N
955	minosmi01	1952	0	NLS195207080	CHA	1219	AL	1	\N
956	paigesa01	1952	0	NLS195207080	SLA	1229	AL	0	\N
957	reynoal01	1952	0	NLS195207080	NYA	1225	AL	0	\N
958	shantbo01	1952	0	NLS195207080	PHA	1226	AL	1	\N
959	wertzvi01	1952	0	NLS195207080	DET	1223	AL	0	\N
960	yosted01	1952	0	NLS195207080	WS1	1231	AL	0	\N
961	simmocu01	1952	0	NLS195207080	PHI	1227	NL	1	1
962	camparo01	1952	0	NLS195207080	BRO	1217	NL	1	2
963	lockmwh01	1952	0	NLS195207080	NY1	1224	NL	1	3
964	robinja02	1952	0	NLS195207080	BRO	1217	NL	1	4
965	thomsbo01	1952	0	NLS195207080	NY1	1224	NL	1	5
966	hamnegr01	1952	0	NLS195207080	PHI	1227	NL	1	6
967	sauerha01	1952	0	NLS195207080	CHN	1220	NL	1	7
968	musiast01	1952	0	NLS195207080	SLN	1230	NL	1	8
969	slaugen01	1952	0	NLS195207080	SLN	1230	NL	1	9
970	atwelto01	1952	0	NLS195207080	CHN	1220	NL	0	\N
971	darkal01	1952	0	NLS195207080	NY1	1224	NL	0	\N
972	furilca01	1952	0	NLS195207080	BRO	1217	NL	0	\N
973	hattogr01	1952	0	NLS195207080	CIN	1221	NL	0	\N
974	hearnji01	1952	0	NLS195207080	NY1	1224	NL	0	\N
975	hodgegi01	1952	0	NLS195207080	BRO	1217	NL	0	\N
976	irvinmo01	1952	0	NLS195207080	NY1	1224	NL	0	\N
977	kinerra01	1952	0	NLS195207080	PIT	1228	NL	0	\N
978	maglisa01	1952	0	NLS195207080	NY1	1224	NL	0	\N
979	reesepe01	1952	0	NLS195207080	BRO	1217	NL	1	\N
980	roberro01	1952	0	NLS195207080	PHI	1227	NL	0	\N
981	roepr01	1952	0	NLS195207080	BRO	1217	NL	0	\N
982	rushbo01	1952	0	NLS195207080	CHN	1220	NL	1	\N
983	schoere01	1952	0	NLS195207080	SLN	1230	NL	0	\N
984	snidedu01	1952	0	NLS195207080	BRO	1217	NL	0	\N
985	spahnwa01	1952	0	NLS195207080	BSN	1218	NL	0	\N
986	stalege01	1952	0	NLS195207080	SLN	1230	NL	0	\N
987	westrwe01	1952	0	NLS195207080	NY1	1224	NL	0	\N
988	piercbi02	1953	0	NLS195307140	CHA	1234	AL	1	1
989	berrayo01	1953	0	NLS195307140	NYA	1241	AL	1	2
990	vernomi01	1953	0	NLS195307140	WS1	1247	AL	1	3
991	goodmbi01	1953	0	NLS195307140	BOS	1232	AL	1	4
992	rosenal01	1953	0	NLS195307140	CLE	1237	AL	1	5
993	carrach01	1953	0	NLS195307140	CHA	1234	AL	1	6
994	zernigu01	1953	0	NLS195307140	PHA	1242	AL	1	7
995	mantlmi01	1953	0	NLS195307140	NYA	1241	AL	1	8
996	bauerha01	1953	0	NLS195307140	NYA	1241	AL	1	9
997	dobyla01	1953	0	NLS195307140	CLE	1237	AL	1	\N
998	fainfe01	1953	0	NLS195307140	CHA	1234	AL	1	\N
999	foxne01	1953	0	NLS195307140	CHA	1234	AL	1	\N
1000	garcimi01	1953	0	NLS195307140	CLE	1237	AL	1	\N
1001	huntebi03	1953	0	NLS195307140	SLA	1245	AL	1	\N
1002	kellge01	1953	0	NLS195307140	BOS	1232	AL	1	\N
1003	kuennha01	1953	0	NLS195307140	DET	1238	AL	1	\N
1004	lemonbo01	1953	0	NLS195307140	CLE	1237	AL	0	\N
1005	minosmi01	1953	0	NLS195307140	CHA	1234	AL	1	\N
1006	mizejo01	1953	0	NLS195307140	NYA	1241	AL	1	\N
1007	paigesa01	1953	0	NLS195307140	SLA	1245	AL	1	\N
1008	reynoal01	1953	0	NLS195307140	NYA	1241	AL	1	\N
1009	rizzuph01	1953	0	NLS195307140	NYA	1241	AL	1	\N
1010	robined01	1953	0	NLS195307140	PHA	1242	AL	1	\N
1011	sainjo01	1953	0	NLS195307140	NYA	1241	AL	0	\N
1012	whitesa02	1953	0	NLS195307140	BOS	1232	AL	0	\N
1013	willite01	1953	0	NLS195307140	BOS	1232	AL	0	\N
1014	roberro01	1953	0	NLS195307140	PHI	1243	NL	1	1
1015	camparo01	1953	0	NLS195307140	BRO	1233	NL	1	2
1016	kluszte01	1953	0	NLS195307140	CIN	1236	NL	1	3
1017	schoere01	1953	0	NLS195307140	SLN	1246	NL	1	4
1018	matheed01	1953	0	NLS195307140	ML1	1239	NL	1	5
1019	reesepe01	1953	0	NLS195307140	BRO	1233	NL	1	6
1020	musiast01	1953	0	NLS195307140	SLN	1246	NL	1	7
1021	bellgu01	1953	0	NLS195307140	CIN	1236	NL	1	8
1022	slaugen01	1953	0	NLS195307140	SLN	1246	NL	1	9
1023	ashburi01	1953	0	NLS195307140	PHI	1243	NL	1	\N
1024	crandde01	1953	0	NLS195307140	ML1	1239	NL	0	\N
1025	dicksmu01	1953	0	NLS195307140	PIT	1244	NL	1	\N
1026	furilca01	1953	0	NLS195307140	BRO	1233	NL	0	\N
1027	haddiha01	1953	0	NLS195307140	SLN	1246	NL	0	\N
1028	hamnegr01	1953	0	NLS195307140	PHI	1243	NL	1	\N
1029	hodgegi01	1953	0	NLS195307140	BRO	1233	NL	1	\N
1030	kinerra01	1953	0	NLS195307140	CHN	1235	NL	1	\N
1031	mcculcl01	1953	0	NLS195307140	CHN	1235	NL	0	\N
1032	ricede01	1953	0	NLS195307140	SLN	1246	NL	0	\N
1033	robinja02	1953	0	NLS195307140	BRO	1233	NL	1	\N
1034	simmocu01	1953	0	NLS195307140	PHI	1243	NL	1	\N
1035	snidedu01	1953	0	NLS195307140	BRO	1233	NL	1	\N
1036	spahnwa01	1953	0	NLS195307140	ML1	1239	NL	1	\N
1037	stalege01	1953	0	NLS195307140	SLN	1246	NL	0	\N
1038	westrwe01	1953	0	NLS195307140	NY1	1240	NL	0	\N
1039	wilheho01	1953	0	NLS195307140	NY1	1240	NL	0	\N
1040	willida03	1953	0	NLS195307140	NY1	1240	NL	1	\N
1041	fordwh01	1954	0	ALS195407130	NYA	1258	AL	1	1
1042	berrayo01	1954	0	ALS195407130	NYA	1258	AL	1	2
1043	rosenal01	1954	0	ALS195407130	CLE	1254	AL	1	3
1044	avilabo01	1954	0	ALS195407130	CLE	1254	AL	1	4
1045	boonera01	1954	0	ALS195407130	DET	1255	AL	1	5
1046	carrach01	1954	0	ALS195407130	CHA	1251	AL	1	6
1047	minosmi01	1954	0	ALS195407130	CHA	1251	AL	1	7
1048	mantlmi01	1954	0	ALS195407130	NYA	1258	AL	1	8
1049	bauerha01	1954	0	ALS195407130	NYA	1258	AL	1	9
1050	consusa01	1954	0	ALS195407130	CHA	1251	AL	1	\N
1051	dobyla01	1954	0	ALS195407130	CLE	1254	AL	1	\N
1052	fainfe01	1954	0	ALS195407130	CHA	1251	AL	0	\N
1053	finigji01	1954	0	ALS195407130	PHA	1259	AL	0	\N
1054	foxne01	1954	0	ALS195407130	CHA	1251	AL	1	\N
1055	garcimi01	1954	0	ALS195407130	CLE	1254	AL	0	\N
1056	keegabo01	1954	0	ALS195407130	CHA	1251	AL	1	\N
1057	kellge01	1954	0	ALS195407130	CHA	1251	AL	0	\N
1058	kuennha01	1954	0	ALS195407130	DET	1255	AL	0	\N
1059	lemonbo01	1954	0	ALS195407130	CLE	1254	AL	1	\N
1060	lollash01	1954	0	ALS195407130	CHA	1251	AL	0	\N
1061	norenir01	1954	0	ALS195407130	NYA	1258	AL	1	\N
1062	piersji01	1954	0	ALS195407130	BOS	1249	AL	1	\N
1063	portebo01	1954	0	ALS195407130	WS1	1263	AL	1	\N
1064	reynoal01	1954	0	ALS195407130	NYA	1258	AL	0	\N
1065	stonede01	1954	0	ALS195407130	WS1	1263	AL	1	\N
1066	truckvi01	1954	0	ALS195407130	CHA	1251	AL	1	\N
1067	turlebo01	1954	0	ALS195407130	BAL	1248	AL	0	\N
1068	vernomi01	1954	0	ALS195407130	WS1	1263	AL	1	\N
1069	willite01	1954	0	ALS195407130	BOS	1249	AL	1	\N
1070	roberro01	1954	0	ALS195407130	PHI	1260	NL	1	1
1071	camparo01	1954	0	ALS195407130	BRO	1250	NL	1	2
1072	kluszte01	1954	0	ALS195407130	CIN	1253	NL	1	3
1073	hamnegr01	1954	0	ALS195407130	PHI	1260	NL	1	4
1074	jablora01	1954	0	ALS195407130	SLN	1262	NL	1	5
1075	darkal01	1954	0	ALS195407130	NY1	1257	NL	1	6
1076	robinja02	1954	0	ALS195407130	BRO	1250	NL	1	7
1077	snidedu01	1954	0	ALS195407130	BRO	1250	NL	1	8
1078	musiast01	1954	0	ALS195407130	SLN	1262	NL	1	9
1079	antonjo02	1954	0	ALS195407130	NY1	1257	NL	1	\N
1080	bellgu01	1954	0	ALS195407130	CIN	1253	NL	1	\N
1081	burgesm01	1954	0	ALS195407130	PHI	1260	NL	1	\N
1082	conlege01	1954	0	ALS195407130	ML1	1256	NL	1	\N
1083	crandde01	1954	0	ALS195407130	ML1	1256	NL	0	\N
1084	erskica01	1954	0	ALS195407130	BRO	1250	NL	1	\N
1085	grissma01	1954	0	ALS195407130	NY1	1257	NL	1	\N
1086	haddiha01	1954	0	ALS195407130	SLN	1262	NL	0	\N
1087	hodgegi01	1954	0	ALS195407130	BRO	1250	NL	1	\N
1088	jacksra01	1954	0	ALS195407130	CHN	1252	NL	1	\N
1089	mayswi01	1954	0	ALS195407130	NY1	1257	NL	1	\N
1090	muelldo01	1954	0	ALS195407130	NY1	1257	NL	1	\N
1091	reesepe01	1954	0	ALS195407130	BRO	1250	NL	0	\N
1092	schoere01	1954	0	ALS195407130	SLN	1262	NL	1	\N
1093	spahnwa01	1954	0	ALS195407130	ML1	1256	NL	1	\N
1094	thomafr03	1954	0	ALS195407130	PIT	1261	NL	1	\N
1095	wilsoji02	1954	0	ALS195407130	ML1	1256	NL	0	\N
1096	piercbi02	1955	0	NLS195507120	CHA	1267	AL	1	1
1097	berrayo01	1955	0	NLS195507120	NYA	1275	AL	1	2
1098	vernomi01	1955	0	NLS195507120	WS1	1279	AL	1	3
1099	foxne01	1955	0	NLS195507120	CHA	1267	AL	1	4
1100	finigji01	1955	0	NLS195507120	KC1	1272	AL	1	5
1101	kuennha01	1955	0	NLS195507120	DET	1271	AL	1	6
1102	willite01	1955	0	NLS195507120	BOS	1265	AL	1	7
1103	mantlmi01	1955	0	NLS195507120	NYA	1275	AL	1	8
1104	kalinal01	1955	0	NLS195507120	DET	1271	AL	1	9
1105	avilabo01	1955	0	NLS195507120	CLE	1270	AL	1	\N
1106	carrach01	1955	0	NLS195507120	CHA	1267	AL	1	\N
1107	dobyla01	1955	0	NLS195507120	CLE	1270	AL	0	\N
1108	donovdi01	1955	0	NLS195507120	CHA	1267	AL	0	\N
1109	fordwh01	1955	0	NLS195507120	NYA	1275	AL	1	\N
1110	hoeftbi01	1955	0	NLS195507120	DET	1271	AL	0	\N
1111	jenseja01	1955	0	NLS195507120	BOS	1265	AL	1	\N
1112	lollash01	1955	0	NLS195507120	CHA	1267	AL	0	\N
1113	powervi01	1955	0	NLS195507120	KC1	1272	AL	1	\N
1114	rosenal01	1955	0	NLS195507120	CLE	1270	AL	1	\N
1115	scorehe01	1955	0	NLS195507120	CLE	1270	AL	0	\N
1116	smithal04	1955	0	NLS195507120	CLE	1270	AL	1	\N
1117	sullifr01	1955	0	NLS195507120	BOS	1265	AL	1	\N
1118	turlebo01	1955	0	NLS195507120	NYA	1275	AL	0	\N
1119	wilsoji02	1955	0	NLS195507120	BAL	1264	AL	0	\N
1120	wynnea01	1955	0	NLS195507120	CLE	1270	AL	1	\N
1121	roberro01	1955	0	NLS195507120	PHI	1276	NL	1	1
1122	crandde01	1955	0	NLS195507120	ML1	1273	NL	1	2
1123	kluszte01	1955	0	NLS195507120	CIN	1269	NL	1	3
1124	schoere01	1955	0	NLS195507120	SLN	1278	NL	1	4
1125	matheed01	1955	0	NLS195507120	ML1	1273	NL	1	5
1126	bankser01	1955	0	NLS195507120	CHN	1268	NL	1	6
1127	ennisde01	1955	0	NLS195507120	PHI	1276	NL	1	7
1128	snidedu01	1955	0	NLS195507120	BRO	1266	NL	1	8
1129	muelldo01	1955	0	NLS195507120	NY1	1274	NL	1	9
1130	aaronha01	1955	0	NLS195507120	ML1	1273	NL	1	\N
1131	arroylu01	1955	0	NLS195507120	SLN	1278	NL	0	\N
1132	bakerge02	1955	0	NLS195507120	CHN	1268	NL	1	\N
1133	burgesm01	1955	0	NLS195507120	CIN	1269	NL	1	\N
1134	camparo01	1955	0	NLS195507120	BRO	1266	NL	0	\N
1135	conlege01	1955	0	NLS195507120	ML1	1273	NL	1	\N
1136	haddiha01	1955	0	NLS195507120	SLN	1278	NL	1	\N
1137	hodgegi01	1955	0	NLS195507120	BRO	1266	NL	1	\N
1138	jacksra01	1955	0	NLS195507120	CHN	1268	NL	1	\N
1139	jonessa02	1955	0	NLS195507120	CHN	1268	NL	1	\N
1140	loganjo01	1955	0	NLS195507120	ML1	1273	NL	1	\N
1141	lopatst01	1955	0	NLS195507120	PHI	1276	NL	1	\N
1142	mayswi01	1955	0	NLS195507120	NY1	1274	NL	1	\N
1143	musiast01	1955	0	NLS195507120	SLN	1278	NL	1	\N
1144	newcodo01	1955	0	NLS195507120	BRO	1266	NL	1	\N
1145	nuxhajo01	1955	0	NLS195507120	CIN	1269	NL	1	\N
1146	thomafr03	1955	0	NLS195507120	PIT	1277	NL	1	\N
1147	piercbi02	1956	0	ALS195607100	CHA	1283	AL	1	1
1148	berrayo01	1956	0	ALS195607100	NYA	1291	AL	1	2
1149	vernomi01	1956	0	ALS195607100	BOS	1281	AL	1	3
1150	foxne01	1956	0	ALS195607100	CHA	1283	AL	1	4
1151	kellge01	1956	0	ALS195607100	BAL	1280	AL	1	5
1152	kuennha01	1956	0	ALS195607100	DET	1287	AL	1	6
1153	willite01	1956	0	ALS195607100	BOS	1281	AL	1	7
1154	mantlmi01	1956	0	ALS195607100	NYA	1291	AL	1	8
1155	kalinal01	1956	0	ALS195607100	DET	1287	AL	1	9
1156	boonera01	1956	0	ALS195607100	DET	1287	AL	1	\N
1157	breweto01	1956	0	ALS195607100	BOS	1281	AL	1	\N
1158	fordwh01	1956	0	ALS195607100	NYA	1291	AL	1	\N
1159	kucksjo01	1956	0	ALS195607100	NYA	1291	AL	0	\N
1160	lollash01	1956	0	ALS195607100	CHA	1283	AL	1	\N
1161	martibi02	1956	0	ALS195607100	NYA	1291	AL	1	\N
1162	maxwech01	1956	0	ALS195607100	DET	1287	AL	0	\N
1163	mcdougi01	1956	0	ALS195607100	NYA	1291	AL	0	\N
1164	narlera01	1956	0	ALS195607100	CLE	1286	AL	0	\N
1165	piersji01	1956	0	ALS195607100	BOS	1281	AL	1	\N
1166	powervi01	1956	0	ALS195607100	KC1	1288	AL	1	\N
1167	scorehe01	1956	0	ALS195607100	CLE	1286	AL	1	\N
1168	sievero01	1956	0	ALS195607100	WS1	1295	AL	1	\N
1169	simpsha01	1956	0	ALS195607100	KC1	1288	AL	1	\N
1170	sullifr01	1956	0	ALS195607100	BOS	1281	AL	0	\N
1171	wilsoji02	1956	0	ALS195607100	CHA	1283	AL	1	\N
1172	wynnea01	1956	0	ALS195607100	CLE	1286	AL	1	\N
1173	frienbo01	1956	0	ALS195607100	PIT	1293	NL	1	1
1174	baileed01	1956	0	ALS195607100	CIN	1285	NL	1	2
1175	longda02	1956	0	ALS195607100	PIT	1293	NL	1	3
1176	templjo01	1956	0	ALS195607100	CIN	1285	NL	1	4
1177	boyerke01	1956	0	ALS195607100	SLN	1294	NL	1	5
1178	mcmilro01	1956	0	ALS195607100	CIN	1285	NL	1	6
1179	robinfr02	1956	0	ALS195607100	CIN	1285	NL	1	7
1180	bellgu01	1956	0	ALS195607100	CIN	1285	NL	1	8
1181	musiast01	1956	0	ALS195607100	SLN	1294	NL	1	9
1182	aaronha01	1956	0	ALS195607100	ML1	1289	NL	1	\N
1183	antonjo02	1956	0	ALS195607100	NY1	1290	NL	1	\N
1184	bankser01	1956	0	ALS195607100	CHN	1284	NL	0	\N
1185	camparo01	1956	0	ALS195607100	BRO	1282	NL	1	\N
1186	crandde01	1956	0	ALS195607100	ML1	1289	NL	0	\N
1187	gilliji01	1956	0	ALS195607100	BRO	1282	NL	0	\N
1188	kluszte01	1956	0	ALS195607100	CIN	1285	NL	1	\N
1189	labincl01	1956	0	ALS195607100	BRO	1282	NL	0	\N
1190	lawrebr01	1956	0	ALS195607100	CIN	1285	NL	0	\N
1191	lopatst01	1956	0	ALS195607100	PHI	1292	NL	0	\N
1192	matheed01	1956	0	ALS195607100	ML1	1289	NL	0	\N
1193	mayswi01	1956	0	ALS195607100	NY1	1290	NL	1	\N
1194	nuxhajo01	1956	0	ALS195607100	CIN	1285	NL	0	\N
1195	repulri01	1956	0	ALS195607100	SLN	1294	NL	1	\N
1196	roberro01	1956	0	ALS195607100	PHI	1292	NL	0	\N
1197	snidedu01	1956	0	ALS195607100	BRO	1282	NL	1	\N
1198	spahnwa01	1956	0	ALS195607100	ML1	1289	NL	1	\N
1199	bunniji01	1957	0	NLS195707090	DET	1303	AL	1	1
1200	berrayo01	1957	0	NLS195707090	NYA	1307	AL	1	2
1201	wertzvi01	1957	0	NLS195707090	CLE	1302	AL	1	3
1202	foxne01	1957	0	NLS195707090	CHA	1299	AL	1	4
1203	kellge01	1957	0	NLS195707090	BAL	1296	AL	1	5
1204	kuennha01	1957	0	NLS195707090	DET	1303	AL	1	6
1205	willite01	1957	0	NLS195707090	BOS	1297	AL	1	7
1206	mantlmi01	1957	0	NLS195707090	NYA	1307	AL	1	8
1207	kalinal01	1957	0	NLS195707090	DET	1303	AL	1	9
1208	demaejo01	1957	0	NLS195707090	KC1	1304	AL	0	\N
1209	grimbo01	1957	0	NLS195707090	NYA	1307	AL	1	\N
1210	howarel01	1957	0	NLS195707090	NYA	1307	AL	0	\N
1211	loesbi01	1957	0	NLS195707090	BAL	1296	AL	1	\N
1212	malzofr01	1957	0	NLS195707090	BOS	1297	AL	1	\N
1213	maxwech01	1957	0	NLS195707090	DET	1303	AL	1	\N
1214	mcdougi01	1957	0	NLS195707090	NYA	1307	AL	1	\N
1215	minosmi01	1957	0	NLS195707090	CHA	1299	AL	1	\N
1216	mossido01	1957	0	NLS195707090	CLE	1302	AL	1	\N
1217	piercbi02	1957	0	NLS195707090	CHA	1299	AL	1	\N
1218	richabo01	1957	0	NLS195707090	NYA	1307	AL	0	\N
1219	shantbo01	1957	0	NLS195707090	NYA	1307	AL	0	\N
1220	sievero01	1957	0	NLS195707090	WS1	1311	AL	0	\N
1221	skowrbi01	1957	0	NLS195707090	NYA	1307	AL	1	\N
1222	triangu01	1957	0	NLS195707090	BAL	1296	AL	0	\N
1223	wynnea01	1957	0	NLS195707090	CLE	1302	AL	1	\N
1224	simmocu01	1957	0	NLS195707090	PHI	1308	NL	1	1
1225	baileed01	1957	0	NLS195707090	CIN	1301	NL	1	2
1226	musiast01	1957	0	NLS195707090	SLN	1310	NL	1	3
1227	templjo01	1957	0	NLS195707090	CIN	1301	NL	1	4
1228	hoakdo01	1957	0	NLS195707090	CIN	1301	NL	1	5
1229	mcmilro01	1957	0	NLS195707090	CIN	1301	NL	1	6
1230	robinfr02	1957	0	NLS195707090	CIN	1301	NL	1	7
1231	mayswi01	1957	0	NLS195707090	NY1	1306	NL	1	8
1232	aaronha01	1957	0	NLS195707090	ML1	1305	NL	1	9
1233	antonjo02	1957	0	NLS195707090	NY1	1306	NL	0	\N
1234	bankser01	1957	0	NLS195707090	CHN	1300	NL	1	\N
1235	bellgu01	1957	0	NLS195707090	CIN	1301	NL	1	\N
1236	burdele01	1957	0	NLS195707090	ML1	1305	NL	1	\N
1237	cimolgi01	1957	0	NLS195707090	BRO	1298	NL	1	\N
1238	foileha01	1957	0	NLS195707090	PIT	1309	NL	1	\N
1239	hodgegi01	1957	0	NLS195707090	BRO	1298	NL	1	\N
1240	jacksla01	1957	0	NLS195707090	SLN	1310	NL	1	\N
1241	labincl01	1957	0	NLS195707090	BRO	1298	NL	1	\N
1242	loganjo01	1957	0	NLS195707090	ML1	1305	NL	0	\N
1243	matheed01	1957	0	NLS195707090	ML1	1305	NL	1	\N
1244	moonwa01	1957	0	NLS195707090	SLN	1310	NL	1	\N
1245	sanfoja02	1957	0	NLS195707090	PHI	1308	NL	1	\N
1246	schoere01	1957	0	NLS195707090	ML1	1305	NL	1	\N
1247	smithha09	1957	0	NLS195707090	SLN	1310	NL	0	\N
1248	spahnwa01	1957	0	NLS195707090	ML1	1305	NL	0	\N
1249	turlebo01	1958	0	ALS195807080	NYA	1322	AL	1	1
1250	triangu01	1958	0	ALS195807080	BAL	1312	AL	1	2
1251	skowrbi01	1958	0	ALS195807080	NYA	1322	AL	1	3
1252	foxne01	1958	0	ALS195807080	CHA	1314	AL	1	4
1253	malzofr01	1958	0	ALS195807080	BOS	1313	AL	1	5
1254	aparilu01	1958	0	ALS195807080	CHA	1314	AL	1	6
1255	cervbo01	1958	0	ALS195807080	KC1	1319	AL	1	7
1256	mantlmi01	1958	0	ALS195807080	NYA	1322	AL	1	8
1257	jenseja01	1958	0	ALS195807080	BOS	1313	AL	1	9
1258	berrayo01	1958	0	ALS195807080	NYA	1322	AL	1	\N
1259	bridgro01	1958	0	ALS195807080	WS1	1327	AL	0	\N
1260	durenry01	1958	0	ALS195807080	NYA	1322	AL	0	\N
1261	fordwh01	1958	0	ALS195807080	NYA	1322	AL	0	\N
1262	howarel01	1958	0	ALS195807080	NYA	1322	AL	0	\N
1263	kalinal01	1958	0	ALS195807080	DET	1318	AL	1	\N
1264	kubekto01	1958	0	ALS195807080	NYA	1322	AL	0	\N
1265	kuennha01	1958	0	ALS195807080	DET	1318	AL	0	\N
1266	lollash01	1958	0	ALS195807080	CHA	1314	AL	0	\N
1267	mcdougi01	1958	0	ALS195807080	NYA	1322	AL	1	\N
1268	narlera01	1958	0	ALS195807080	CLE	1317	AL	1	\N
1269	odellbi01	1958	0	ALS195807080	BAL	1312	AL	1	\N
1270	piercbi02	1958	0	ALS195807080	CHA	1314	AL	0	\N
1271	vernomi01	1958	0	ALS195807080	CLE	1317	AL	1	\N
1272	willite01	1958	0	ALS195807080	BOS	1313	AL	1	\N
1273	wynnea01	1958	0	ALS195807080	CHA	1314	AL	1	\N
1274	spahnwa01	1958	0	ALS195807080	ML1	1321	NL	1	1
1275	crandde01	1958	0	ALS195807080	ML1	1321	NL	1	2
1276	musiast01	1958	0	ALS195807080	SLN	1326	NL	1	3
1277	mazerbi01	1958	0	ALS195807080	PIT	1324	NL	1	4
1278	thomafr03	1958	0	ALS195807080	PIT	1324	NL	1	5
1279	bankser01	1958	0	ALS195807080	CHN	1315	NL	1	6
1280	skinnbo01	1958	0	ALS195807080	PIT	1324	NL	1	7
1281	mayswi01	1958	0	ALS195807080	SFN	1325	NL	1	8
1282	aaronha01	1958	0	ALS195807080	ML1	1321	NL	1	9
1283	antonjo02	1958	0	ALS195807080	SFN	1325	NL	0	\N
1284	ashburi01	1958	0	ALS195807080	PHI	1323	NL	0	\N
1285	blasido01	1958	0	ALS195807080	SLN	1326	NL	1	\N
1286	crowege01	1958	0	ALS195807080	CIN	1316	NL	0	\N
1287	farretu01	1958	0	ALS195807080	PHI	1323	NL	1	\N
1288	frienbo01	1958	0	ALS195807080	PIT	1324	NL	1	\N
1289	jacksla01	1958	0	ALS195807080	SLN	1326	NL	1	\N
1290	loganjo01	1958	0	ALS195807080	ML1	1321	NL	1	\N
1291	matheed01	1958	0	ALS195807080	ML1	1321	NL	0	\N
1292	mcmahdo02	1958	0	ALS195807080	ML1	1321	NL	0	\N
1293	morynwa01	1958	0	ALS195807080	CHN	1315	NL	0	\N
1294	podrejo01	1958	0	ALS195807080	LAN	1320	NL	0	\N
1295	purkebo01	1958	0	ALS195807080	CIN	1316	NL	0	\N
1296	rosebjo01	1958	0	ALS195807080	LAN	1320	NL	0	\N
1297	schmibo02	1958	0	ALS195807080	SFN	1325	NL	0	\N
1298	wallsle01	1958	0	ALS195807080	CHN	1315	NL	1	\N
1299	walkeje01	1959	2	NLS195908030	BAL	1328	AL	1	1
1300	wynnea01	1959	1	NLS195907070	CHA	1330	AL	1	1
1301	berrayo01	1959	2	NLS195908030	NYA	1338	AL	1	2
1302	triangu01	1959	1	NLS195907070	BAL	1328	AL	1	2
1303	runnepe01	1959	2	NLS195908030	BOS	1329	AL	1	3
1304	skowrbi01	1959	1	NLS195907070	NYA	1338	AL	1	3
1305	foxne01	1959	1	NLS195907070	CHA	1330	AL	1	4
1306	foxne01	1959	2	NLS195908030	CHA	1330	AL	1	4
1307	killeha01	1959	1	NLS195907070	WS1	1343	AL	1	5
1308	malzofr01	1959	2	NLS195908030	BOS	1329	AL	1	5
1309	aparilu01	1959	1	NLS195907070	CHA	1330	AL	1	6
1310	aparilu01	1959	2	NLS195908030	CHA	1330	AL	1	6
1311	minosmi01	1959	1	NLS195907070	CLE	1333	AL	1	7
1312	willite01	1959	2	NLS195908030	BOS	1329	AL	1	7
1313	kalinal01	1959	1	NLS195907070	DET	1334	AL	1	8
1314	mantlmi01	1959	2	NLS195908030	NYA	1338	AL	1	8
1315	colavro01	1959	1	NLS195907070	CLE	1333	AL	1	9
1316	marisro01	1959	2	NLS195908030	KC1	1335	AL	1	9
1317	allisbo01	1959	2	NLS195908030	WS1	1343	AL	0	\N
1318	berrayo01	1959	1	NLS195907070	NYA	1338	AL	0	\N
1319	bunniji01	1959	1	NLS195907070	DET	1334	AL	1	\N
1320	colavro01	1959	2	NLS195908030	CLE	1333	AL	1	\N
1321	daleybu01	1959	2	NLS195908030	KC1	1335	AL	0	\N
1322	daleybu01	1959	1	NLS195907070	KC1	1335	AL	1	\N
1323	durenry01	1959	2	NLS195908030	NYA	1338	AL	0	\N
1324	durenry01	1959	1	NLS195907070	NYA	1338	AL	1	\N
1325	fordwh01	1959	1	NLS195907070	NYA	1338	AL	1	\N
1326	howarel01	1959	2	NLS195908030	NYA	1338	AL	0	\N
1327	kalinal01	1959	2	NLS195908030	DET	1334	AL	1	\N
1328	killeha01	1959	2	NLS195908030	WS1	1343	AL	0	\N
1329	kubekto01	1959	2	NLS195908030	NYA	1338	AL	1	\N
1330	kuennha01	1959	2	NLS195908030	DET	1334	AL	0	\N
1331	kuennha01	1959	1	NLS195907070	DET	1334	AL	1	\N
1332	lollash01	1959	1	NLS195907070	CHA	1330	AL	1	\N
1333	lollash01	1959	2	NLS195908030	CHA	1330	AL	1	\N
1334	malzofr01	1959	1	NLS195907070	BOS	1329	AL	1	\N
1335	mantlmi01	1959	1	NLS195907070	NYA	1338	AL	1	\N
1336	mcdougi01	1959	2	NLS195908030	NYA	1338	AL	0	\N
1337	mcdougi01	1959	1	NLS195907070	NYA	1338	AL	1	\N
1338	mclisca01	1959	2	NLS195908030	CLE	1333	AL	1	\N
1339	minosmi01	1959	2	NLS195908030	CLE	1333	AL	0	\N
1340	odellbi01	1959	2	NLS195908030	BAL	1328	AL	1	\N
1341	pascuca02	1959	2	NLS195908030	WS1	1343	AL	0	\N
1342	piercbi02	1959	1	NLS195907070	CHA	1330	AL	0	\N
1343	powervi01	1959	1	NLS195907070	CLE	1333	AL	1	\N
1344	powervi01	1959	2	NLS195908030	CLE	1333	AL	1	\N
1345	ramospe01	1959	2	NLS195908030	WS1	1343	AL	0	\N
1346	richabo01	1959	2	NLS195908030	NYA	1338	AL	0	\N
1347	runnepe01	1959	1	NLS195907070	BOS	1329	AL	1	\N
1348	sievero01	1959	2	NLS195908030	WS1	1343	AL	0	\N
1349	sievero01	1959	1	NLS195907070	WS1	1343	AL	1	\N
1350	skowrbi01	1959	2	NLS195908030	NYA	1338	AL	0	\N
1351	triangu01	1959	2	NLS195908030	BAL	1328	AL	0	\N
1352	wilheho01	1959	1	NLS195907070	BAL	1328	AL	0	\N
1353	wilheho01	1959	2	NLS195908030	BAL	1328	AL	1	\N
1354	willite01	1959	1	NLS195907070	BOS	1329	AL	1	\N
1355	woodlge01	1959	2	NLS195908030	BAL	1328	AL	1	\N
1356	wynnea01	1959	2	NLS195908030	CHA	1330	AL	1	\N
1357	drysddo01	1959	1	NLS195907070	LAN	1336	NL	1	1
1358	drysddo01	1959	2	NLS195908030	LAN	1336	NL	1	1
1359	crandde01	1959	1	NLS195907070	ML1	1337	NL	1	2
1360	crandde01	1959	2	NLS195908030	ML1	1337	NL	1	2
1361	cepedor01	1959	1	NLS195907070	SFN	1341	NL	1	3
1362	musiast01	1959	2	NLS195908030	SLN	1342	NL	1	3
1363	templjo01	1959	1	NLS195907070	CIN	1332	NL	1	4
1364	templjo01	1959	2	NLS195908030	CIN	1332	NL	1	4
1365	boyerke01	1959	2	NLS195908030	SLN	1342	NL	1	5
1366	matheed01	1959	1	NLS195907070	ML1	1337	NL	1	5
1367	bankser01	1959	1	NLS195907070	CHN	1331	NL	1	6
1368	bankser01	1959	2	NLS195908030	CHN	1331	NL	1	6
1369	moonwa01	1959	1	NLS195907070	LAN	1336	NL	1	7
1370	moonwa01	1959	2	NLS195908030	LAN	1336	NL	1	7
1371	mayswi01	1959	1	NLS195907070	SFN	1341	NL	1	8
1372	mayswi01	1959	2	NLS195908030	SFN	1341	NL	1	8
1373	aaronha01	1959	1	NLS195907070	ML1	1337	NL	1	9
1374	aaronha01	1959	2	NLS195908030	ML1	1337	NL	1	9
1375	antonjo02	1959	2	NLS195908030	SFN	1341	NL	0	\N
1376	antonjo02	1959	1	NLS195907070	SFN	1341	NL	1	\N
1377	boyerke01	1959	1	NLS195907070	SLN	1342	NL	1	\N
1378	burdele01	1959	2	NLS195908030	ML1	1337	NL	0	\N
1379	burdele01	1959	1	NLS195907070	ML1	1337	NL	1	\N
1380	burgesm01	1959	1	NLS195907070	PIT	1340	NL	0	\N
1381	burgesm01	1959	2	NLS195908030	PIT	1340	NL	1	\N
1382	cepedor01	1959	2	NLS195908030	SFN	1341	NL	0	\N
1383	conlege01	1959	1	NLS195907070	PHI	1339	NL	0	\N
1384	conlege01	1959	2	NLS195908030	PHI	1339	NL	1	\N
1385	cunnijo01	1959	1	NLS195907070	SLN	1342	NL	0	\N
1386	cunnijo01	1959	2	NLS195908030	SLN	1342	NL	1	\N
1387	elstodo01	1959	2	NLS195908030	CHN	1331	NL	0	\N
1388	elstodo01	1959	1	NLS195907070	CHN	1331	NL	1	\N
1389	facero01	1959	1	NLS195907070	PIT	1340	NL	1	\N
1390	facero01	1959	2	NLS195908030	PIT	1340	NL	1	\N
1391	gilliji01	1959	2	NLS195908030	LAN	1336	NL	1	\N
1392	groatdi01	1959	1	NLS195907070	PIT	1340	NL	1	\N
1393	groatdi01	1959	2	NLS195908030	PIT	1340	NL	1	\N
1394	jonessa02	1959	2	NLS195908030	SFN	1341	NL	1	\N
1395	loganjo01	1959	2	NLS195908030	ML1	1337	NL	0	\N
1396	matheed01	1959	2	NLS195908030	ML1	1337	NL	1	\N
1397	mazerbi01	1959	2	NLS195908030	PIT	1340	NL	0	\N
1398	mazerbi01	1959	1	NLS195907070	PIT	1340	NL	1	\N
1399	mizelvi01	1959	1	NLS195907070	SLN	1342	NL	0	\N
1400	mizelvi01	1959	2	NLS195908030	SLN	1342	NL	0	\N
1401	musiast01	1959	1	NLS195907070	SLN	1342	NL	1	\N
1402	nealch01	1959	2	NLS195908030	LAN	1336	NL	1	\N
1403	pinsova01	1959	1	NLS195907070	CIN	1332	NL	0	\N
1404	pinsova01	1959	2	NLS195908030	CIN	1332	NL	1	\N
1405	robinfr02	1959	1	NLS195907070	CIN	1332	NL	0	\N
1406	robinfr02	1959	2	NLS195908030	CIN	1332	NL	1	\N
1407	smithha09	1959	1	NLS195907070	SLN	1342	NL	0	\N
1408	smithha09	1959	2	NLS195908030	SLN	1342	NL	1	\N
1409	spahnwa01	1959	1	NLS195907070	ML1	1337	NL	0	\N
1410	spahnwa01	1959	2	NLS195908030	ML1	1337	NL	0	\N
1411	whitebi03	1959	1	NLS195907070	SLN	1342	NL	0	\N
1412	whitebi03	1959	2	NLS195908030	SLN	1342	NL	0	\N
1413	fordwh01	1960	2	ALS196007130	NYA	1354	AL	1	1
1414	monbobi01	1960	1	ALS196007110	BOS	1345	AL	1	1
1415	berrayo01	1960	1	ALS196007110	NYA	1354	AL	1	2
1416	berrayo01	1960	2	ALS196007130	NYA	1354	AL	1	2
1417	skowrbi01	1960	1	ALS196007110	NYA	1354	AL	1	3
1418	skowrbi01	1960	2	ALS196007130	NYA	1354	AL	1	3
1419	runnepe01	1960	1	ALS196007110	BOS	1345	AL	1	4
1420	runnepe01	1960	2	ALS196007130	BOS	1345	AL	1	4
1421	malzofr01	1960	1	ALS196007110	BOS	1345	AL	1	5
1422	malzofr01	1960	2	ALS196007130	BOS	1345	AL	1	5
1423	hansero02	1960	1	ALS196007110	BAL	1344	AL	1	6
1424	hansero02	1960	2	ALS196007130	BAL	1344	AL	1	6
1425	minosmi01	1960	1	ALS196007110	CHA	1346	AL	1	7
1426	minosmi01	1960	2	ALS196007130	CHA	1346	AL	1	7
1427	mantlmi01	1960	1	ALS196007110	NYA	1354	AL	1	8
1428	mantlmi01	1960	2	ALS196007130	NYA	1354	AL	1	8
1429	marisro01	1960	1	ALS196007110	NYA	1354	AL	1	9
1430	marisro01	1960	2	ALS196007130	NYA	1354	AL	1	9
1431	aparilu01	1960	2	ALS196007130	CHA	1346	AL	0	\N
1432	aparilu01	1960	1	ALS196007110	CHA	1346	AL	1	\N
1433	bellga01	1960	1	ALS196007110	CLE	1349	AL	1	\N
1434	bellga01	1960	2	ALS196007130	CLE	1349	AL	1	\N
1435	coateji01	1960	2	ALS196007130	NYA	1354	AL	0	\N
1436	coateji01	1960	1	ALS196007110	NYA	1354	AL	1	\N
1437	daleybu01	1960	2	ALS196007130	KC1	1351	AL	0	\N
1438	daleybu01	1960	1	ALS196007110	KC1	1351	AL	1	\N
1439	estrach01	1960	2	ALS196007130	BAL	1344	AL	0	\N
1440	estrach01	1960	1	ALS196007110	BAL	1344	AL	1	\N
1441	fordwh01	1960	1	ALS196007110	NYA	1354	AL	0	\N
1442	foxne01	1960	1	ALS196007110	CHA	1346	AL	1	\N
1443	foxne01	1960	2	ALS196007130	CHA	1346	AL	1	\N
1444	gentiji01	1960	2	ALS196007130	BAL	1344	AL	0	\N
1445	gentiji01	1960	1	ALS196007110	BAL	1344	AL	1	\N
1446	howarel01	1960	2	ALS196007130	NYA	1354	AL	0	\N
1447	howarel01	1960	1	ALS196007110	NYA	1354	AL	1	\N
1448	kalinal01	1960	1	ALS196007110	DET	1350	AL	1	\N
1449	kalinal01	1960	2	ALS196007130	DET	1350	AL	1	\N
1450	kuennha01	1960	1	ALS196007110	CLE	1349	AL	1	\N
1451	kuennha01	1960	2	ALS196007130	CLE	1349	AL	1	\N
1452	laryfr01	1960	1	ALS196007110	DET	1350	AL	1	\N
1453	laryfr01	1960	2	ALS196007130	DET	1350	AL	1	\N
1454	lemonji01	1960	2	ALS196007130	WS1	1359	AL	0	\N
1455	lemonji01	1960	1	ALS196007110	WS1	1359	AL	1	\N
1456	lollash01	1960	1	ALS196007110	CHA	1346	AL	1	\N
1457	lollash01	1960	2	ALS196007130	CHA	1346	AL	1	\N
1458	monbobi01	1960	2	ALS196007130	BOS	1345	AL	0	\N
1459	pascuca02	1960	1	ALS196007110	WS1	1359	AL	0	\N
1460	pascuca02	1960	2	ALS196007130	WS1	1359	AL	0	\N
1461	powervi01	1960	1	ALS196007110	CLE	1349	AL	0	\N
1462	powervi01	1960	2	ALS196007130	CLE	1349	AL	1	\N
1463	robinbr01	1960	1	ALS196007110	BAL	1344	AL	1	\N
1464	robinbr01	1960	2	ALS196007130	BAL	1344	AL	1	\N
1465	smithal04	1960	1	ALS196007110	CHA	1346	AL	1	\N
1466	smithal04	1960	2	ALS196007130	CHA	1346	AL	1	\N
1467	stalege01	1960	1	ALS196007110	CHA	1346	AL	0	\N
1468	stalege01	1960	2	ALS196007130	CHA	1346	AL	1	\N
1469	stigmdi01	1960	1	ALS196007110	CLE	1349	AL	0	\N
1470	stigmdi01	1960	2	ALS196007130	CLE	1349	AL	0	\N
1471	willite01	1960	1	ALS196007110	BOS	1345	AL	1	\N
1472	willite01	1960	2	ALS196007130	BOS	1345	AL	1	\N
1473	wynnea01	1960	1	ALS196007110	CHA	1346	AL	0	\N
1474	wynnea01	1960	2	ALS196007130	CHA	1346	AL	1	\N
1475	frienbo01	1960	1	ALS196007110	PIT	1356	NL	1	1
1476	lawve01	1960	2	ALS196007130	PIT	1356	NL	1	1
1477	crandde01	1960	1	ALS196007110	ML1	1353	NL	1	2
1478	crandde01	1960	2	ALS196007130	ML1	1353	NL	1	2
1479	adcocjo01	1960	1	ALS196007110	ML1	1353	NL	1	3
1480	adcocjo01	1960	2	ALS196007130	ML1	1353	NL	1	3
1481	mazerbi01	1960	1	ALS196007110	PIT	1356	NL	1	4
1482	mazerbi01	1960	2	ALS196007130	PIT	1356	NL	1	4
1483	matheed01	1960	1	ALS196007110	ML1	1353	NL	1	5
1484	matheed01	1960	2	ALS196007130	ML1	1353	NL	1	5
1485	bankser01	1960	1	ALS196007110	CHN	1347	NL	1	6
1486	bankser01	1960	2	ALS196007130	CHN	1347	NL	1	6
1487	skinnbo01	1960	1	ALS196007110	PIT	1356	NL	1	7
1488	skinnbo01	1960	2	ALS196007130	PIT	1356	NL	1	7
1489	mayswi01	1960	1	ALS196007110	SFN	1357	NL	1	8
1490	mayswi01	1960	2	ALS196007130	SFN	1357	NL	1	8
1491	aaronha01	1960	1	ALS196007110	ML1	1353	NL	1	9
1492	aaronha01	1960	2	ALS196007130	ML1	1353	NL	1	9
1493	baileed01	1960	1	ALS196007110	CIN	1348	NL	0	\N
1494	baileed01	1960	2	ALS196007130	CIN	1348	NL	1	\N
1495	boyerke01	1960	1	ALS196007110	SLN	1358	NL	1	\N
1496	boyerke01	1960	2	ALS196007130	SLN	1358	NL	1	\N
1497	buhlbo01	1960	2	ALS196007130	ML1	1353	NL	0	\N
1498	buhlbo01	1960	1	ALS196007110	ML1	1353	NL	1	\N
1499	burgesm01	1960	1	ALS196007110	PIT	1356	NL	1	\N
1500	burgesm01	1960	2	ALS196007130	PIT	1356	NL	1	\N
1501	cepedor01	1960	1	ALS196007110	SFN	1357	NL	1	\N
1502	cepedor01	1960	2	ALS196007130	SFN	1357	NL	1	\N
1503	clemero01	1960	1	ALS196007110	PIT	1356	NL	1	\N
1504	clemero01	1960	2	ALS196007130	PIT	1356	NL	1	\N
1505	facero01	1960	2	ALS196007130	PIT	1356	NL	0	\N
1506	facero01	1960	1	ALS196007110	PIT	1356	NL	1	\N
1507	frienbo01	1960	2	ALS196007130	PIT	1356	NL	0	\N
1508	groatdi01	1960	1	ALS196007110	PIT	1356	NL	1	\N
1509	groatdi01	1960	2	ALS196007130	PIT	1356	NL	1	\N
1510	henrybi01	1960	1	ALS196007110	CIN	1348	NL	0	\N
1511	henrybi01	1960	2	ALS196007130	CIN	1348	NL	1	\N
1512	jacksla01	1960	1	ALS196007110	SLN	1358	NL	0	\N
1513	jacksla01	1960	2	ALS196007130	SLN	1358	NL	1	\N
1514	larkeno01	1960	1	ALS196007110	LAN	1352	NL	1	\N
1515	larkeno01	1960	2	ALS196007130	LAN	1352	NL	1	\N
1516	lawve01	1960	1	ALS196007110	PIT	1356	NL	1	\N
1517	mccormi03	1960	2	ALS196007130	SFN	1357	NL	0	\N
1518	mccormi03	1960	1	ALS196007110	SFN	1357	NL	1	\N
1519	mcdanli01	1960	1	ALS196007110	SLN	1358	NL	0	\N
1520	mcdanli01	1960	2	ALS196007130	SLN	1358	NL	1	\N
1521	musiast01	1960	1	ALS196007110	SLN	1358	NL	1	\N
1522	musiast01	1960	2	ALS196007130	SLN	1358	NL	1	\N
1523	nealch01	1960	1	ALS196007110	LAN	1352	NL	1	\N
1524	nealch01	1960	2	ALS196007130	LAN	1352	NL	1	\N
1525	pinsova01	1960	1	ALS196007110	CIN	1348	NL	1	\N
1526	pinsova01	1960	2	ALS196007130	CIN	1348	NL	1	\N
1527	podrejo01	1960	1	ALS196007110	LAN	1352	NL	0	\N
1528	podrejo01	1960	2	ALS196007130	LAN	1352	NL	1	\N
1529	tayloto02	1960	1	ALS196007110	PHI	1355	NL	1	\N
1530	tayloto02	1960	2	ALS196007130	PHI	1355	NL	1	\N
1531	whitebi03	1960	1	ALS196007110	SLN	1358	NL	1	\N
1532	whitebi03	1960	2	ALS196007130	SLN	1358	NL	1	\N
1533	willist02	1960	1	ALS196007110	LAN	1352	NL	0	\N
1534	willist02	1960	2	ALS196007130	LAN	1352	NL	1	\N
1535	bunniji01	1961	2	ALS196107310	DET	1366	AL	1	1
1536	fordwh01	1961	1	NLS196107110	NYA	1372	AL	1	1
1537	romanjo01	1961	1	NLS196107110	CLE	1365	AL	1	2
1538	romanjo01	1961	2	ALS196107310	CLE	1365	AL	1	2
1539	cashno01	1961	1	NLS196107110	DET	1366	AL	1	3
1540	cashno01	1961	2	ALS196107310	DET	1366	AL	1	3
1541	templjo01	1961	1	NLS196107110	CLE	1365	AL	1	4
1542	templjo01	1961	2	ALS196107310	CLE	1365	AL	1	4
1543	robinbr01	1961	1	NLS196107110	BAL	1360	AL	1	5
1544	robinbr01	1961	2	ALS196107310	BAL	1360	AL	1	5
1545	aparilu01	1961	2	ALS196107310	CHA	1362	AL	1	6
1546	kubekto01	1961	1	NLS196107110	NYA	1372	AL	1	6
1547	colavro01	1961	1	NLS196107110	DET	1366	AL	1	7
1548	colavro01	1961	2	ALS196107310	DET	1366	AL	1	7
1549	mantlmi01	1961	1	NLS196107110	NYA	1372	AL	1	8
1550	mantlmi01	1961	2	ALS196107310	NYA	1372	AL	1	8
1551	kalinal01	1961	2	ALS196107310	DET	1366	AL	1	9
1552	marisro01	1961	1	NLS196107110	NYA	1372	AL	1	9
1553	arroylu01	1961	2	ALS196107310	NYA	1372	AL	0	\N
1554	berrayo01	1961	2	ALS196107310	NYA	1372	AL	0	\N
1555	berrayo01	1961	1	NLS196107110	NYA	1372	AL	1	\N
1556	brandja01	1961	2	ALS196107310	BAL	1360	AL	0	\N
1557	brandja01	1961	1	NLS196107110	BAL	1360	AL	1	\N
1558	bunniji01	1961	1	NLS196107110	DET	1366	AL	1	\N
1559	donovdi01	1961	2	ALS196107310	WS2	1377	AL	0	\N
1560	donovdi01	1961	1	NLS196107110	WS2	1377	AL	1	\N
1561	durenry01	1961	1	NLS196107110	LAA	1368	AL	0	\N
1562	fordwh01	1961	2	ALS196107310	NYA	1372	AL	0	\N
1563	fornimi01	1961	1	NLS196107110	BOS	1361	AL	1	\N
1564	foxne01	1961	2	ALS196107310	CHA	1362	AL	0	\N
1565	foxne01	1961	1	NLS196107110	CHA	1362	AL	1	\N
1566	francti01	1961	2	ALS196107310	CLE	1365	AL	0	\N
1567	gentiji01	1961	2	ALS196107310	BAL	1360	AL	0	\N
1568	gentiji01	1961	1	NLS196107110	BAL	1360	AL	1	\N
1569	howarel01	1961	1	NLS196107110	NYA	1372	AL	1	\N
1570	howarel01	1961	2	ALS196107310	NYA	1372	AL	1	\N
1571	howsedi01	1961	2	ALS196107310	KC1	1367	AL	0	\N
1572	howsedi01	1961	1	NLS196107110	KC1	1367	AL	1	\N
1573	kalinal01	1961	1	NLS196107110	DET	1366	AL	1	\N
1574	killeha01	1961	2	ALS196107310	MIN	1370	AL	0	\N
1575	killeha01	1961	1	NLS196107110	MIN	1370	AL	1	\N
1576	kubekto01	1961	2	ALS196107310	NYA	1372	AL	0	\N
1577	laryfr01	1961	1	NLS196107110	DET	1366	AL	1	\N
1578	latmaba01	1961	2	ALS196107310	CLE	1365	AL	0	\N
1579	marisro01	1961	2	ALS196107310	NYA	1372	AL	1	\N
1580	mcbrike01	1961	2	ALS196107310	LAA	1368	AL	0	\N
1581	pascuca02	1961	2	ALS196107310	MIN	1370	AL	1	\N
1582	perryji01	1961	1	NLS196107110	CLE	1365	AL	0	\N
1583	piercbi02	1961	1	NLS196107110	CHA	1362	AL	0	\N
1584	schwado01	1961	2	ALS196107310	BOS	1361	AL	1	\N
1585	sievero01	1961	2	ALS196107310	CHA	1362	AL	1	\N
1586	skowrbi01	1961	2	ALS196107310	NYA	1372	AL	0	\N
1587	wilheho01	1961	2	ALS196107310	BAL	1360	AL	0	\N
1588	wilheho01	1961	1	NLS196107110	BAL	1360	AL	1	\N
1589	purkebo01	1961	2	ALS196107310	CIN	1364	NL	1	1
1590	spahnwa01	1961	1	NLS196107110	ML1	1371	NL	1	1
1591	burgesm01	1961	1	NLS196107110	PIT	1374	NL	1	2
1592	burgesm01	1961	2	ALS196107310	PIT	1374	NL	1	2
1593	whitebi03	1961	1	NLS196107110	SLN	1376	NL	1	3
1594	whitebi03	1961	2	ALS196107310	SLN	1376	NL	1	3
1595	bollifr01	1961	1	NLS196107110	ML1	1371	NL	1	4
1596	bollifr01	1961	2	ALS196107310	ML1	1371	NL	1	4
1597	matheed01	1961	1	NLS196107110	ML1	1371	NL	1	5
1598	matheed01	1961	2	ALS196107310	ML1	1371	NL	1	5
1599	willsma01	1961	1	NLS196107110	LAN	1369	NL	1	6
1600	willsma01	1961	2	ALS196107310	LAN	1369	NL	1	6
1601	cepedor01	1961	1	NLS196107110	SFN	1375	NL	1	7
1602	cepedor01	1961	2	ALS196107310	SFN	1375	NL	1	7
1603	mayswi01	1961	1	NLS196107110	SFN	1375	NL	1	8
1604	mayswi01	1961	2	ALS196107310	SFN	1375	NL	1	8
1605	clemero01	1961	1	NLS196107110	PIT	1374	NL	1	9
1606	clemero01	1961	2	ALS196107310	PIT	1374	NL	1	9
1607	aaronha01	1961	1	NLS196107110	ML1	1371	NL	1	\N
1608	aaronha01	1961	2	ALS196107310	ML1	1371	NL	1	\N
1609	altmage01	1961	1	NLS196107110	CHN	1363	NL	1	\N
1610	altmage01	1961	2	ALS196107310	CHN	1363	NL	1	\N
1611	baileed01	1961	2	ALS196107310	SFN	1375	NL	0	\N
1612	bankser01	1961	2	ALS196107310	CHN	1363	NL	1	\N
1613	boyerke01	1961	2	ALS196107310	SLN	1376	NL	0	\N
1614	boyerke01	1961	1	NLS196107110	SLN	1376	NL	1	\N
1615	drysddo01	1961	2	ALS196107310	LAN	1369	NL	0	\N
1616	facero01	1961	2	ALS196107310	PIT	1374	NL	0	\N
1617	facero01	1961	1	NLS196107110	PIT	1374	NL	1	\N
1618	jayjo01	1961	1	NLS196107110	CIN	1364	NL	0	\N
1619	jayjo01	1961	2	ALS196107310	CIN	1364	NL	0	\N
1620	kaskoed01	1961	1	NLS196107110	CIN	1364	NL	0	\N
1621	kaskoed01	1961	2	ALS196107310	CIN	1364	NL	1	\N
1622	koufasa01	1961	1	NLS196107110	LAN	1369	NL	1	\N
1623	koufasa01	1961	2	ALS196107310	LAN	1369	NL	1	\N
1624	mahafar01	1961	1	NLS196107110	PHI	1373	NL	0	\N
1625	mahafar01	1961	2	ALS196107310	PHI	1373	NL	1	\N
1626	mccormi03	1961	2	ALS196107310	SFN	1375	NL	0	\N
1627	mccormi03	1961	1	NLS196107110	SFN	1375	NL	1	\N
1628	millest01	1961	1	NLS196107110	SFN	1375	NL	1	\N
1629	millest01	1961	2	ALS196107310	SFN	1375	NL	1	\N
1630	musiast01	1961	1	NLS196107110	SLN	1376	NL	1	\N
1631	musiast01	1961	2	ALS196107310	SLN	1376	NL	1	\N
1632	purkebo01	1961	1	NLS196107110	CIN	1364	NL	1	\N
1633	robinfr02	1961	2	ALS196107310	CIN	1364	NL	0	\N
1634	robinfr02	1961	1	NLS196107110	CIN	1364	NL	1	\N
1635	rosebjo01	1961	1	NLS196107110	LAN	1369	NL	0	\N
1636	rosebjo01	1961	2	ALS196107310	LAN	1369	NL	1	\N
1637	spahnwa01	1961	2	ALS196107310	ML1	1371	NL	0	\N
1638	stuardi01	1961	1	NLS196107110	PIT	1374	NL	1	\N
1639	stuardi01	1961	2	ALS196107310	PIT	1374	NL	1	\N
1640	zimmedo01	1961	2	ALS196107310	CHN	1363	NL	0	\N
1641	zimmedo01	1961	1	NLS196107110	CHN	1363	NL	1	\N
1642	bunniji01	1962	0	ALS196207100	DET	1384	AL	1	1
1643	stenhda01	1962	0	NLS196207300	WS2	1397	AL	1	1
1644	batteea01	1962	0	ALS196207100	MIN	1389	AL	1	2
1646	batteea01	1962	0	NLS196207300	MIN	1389	AL	1	2
1648	gentiji01	1962	0	ALS196207100	BAL	1378	AL	1	3
1650	gentiji01	1962	0	NLS196207300	BAL	1378	AL	1	3
1652	moranbi02	1962	0	ALS196207100	LAA	1387	AL	1	4
1654	moranbi02	1962	0	NLS196207300	LAA	1387	AL	1	4
1656	rolliri01	1962	0	ALS196207100	MIN	1389	AL	1	5
1658	rolliri01	1962	0	NLS196207300	MIN	1389	AL	1	5
1660	aparilu01	1962	0	ALS196207100	CHA	1380	AL	1	6
1662	aparilu01	1962	0	NLS196207300	CHA	1380	AL	1	6
1664	wagnele01	1962	0	ALS196207100	LAA	1387	AL	1	7
1666	wagnele01	1962	0	NLS196207300	LAA	1387	AL	1	7
1668	marisro01	1962	0	ALS196207100	NYA	1391	AL	1	8
1670	marisro01	1962	0	NLS196207300	NYA	1391	AL	1	8
1672	colavro01	1962	0	ALS196207100	DET	1384	AL	1	9
1673	colavro01	1962	0	NLS196207300	DET	1384	AL	1	9
1674	mantlmi01	1962	0	ALS196207100	NYA	1391	AL	1	9
1675	aguirha01	1962	0	NLS196207300	DET	1384	AL	1	\N
1676	berrayo01	1962	0	NLS196207300	NYA	1391	AL	1	\N
1677	donovdi01	1962	0	ALS196207100	CLE	1383	AL	1	\N
1678	herbera01	1962	0	NLS196207300	CHA	1380	AL	1	\N
1679	howarel01	1962	0	NLS196207300	NYA	1391	AL	1	\N
1680	kaatji01	1962	0	NLS196207300	MIN	1389	AL	0	\N
1681	kalinal01	1962	0	NLS196207300	DET	1384	AL	1	\N
1682	landiji01	1962	0	ALS196207100	CHA	1380	AL	1	\N
1683	mcbrike01	1962	0	NLS196207300	LAA	1387	AL	0	\N
1684	monbobi01	1962	0	NLS196207300	BOS	1379	AL	0	\N
1685	pappami01	1962	0	ALS196207100	BAL	1378	AL	1	\N
1686	pappami01	1962	0	NLS196207300	BAL	1378	AL	1	\N
1687	pascuca02	1962	0	ALS196207100	MIN	1389	AL	1	\N
1688	richabo01	1962	0	ALS196207100	NYA	1391	AL	1	\N
1689	richabo01	1962	0	NLS196207300	NYA	1391	AL	1	\N
1690	robinbr01	1962	0	ALS196207100	BAL	1378	AL	1	\N
1691	robinbr01	1962	0	NLS196207300	BAL	1378	AL	1	\N
1692	romanjo01	1962	0	ALS196207100	CLE	1383	AL	1	\N
1693	runnepe01	1962	0	NLS196207300	BOS	1379	AL	1	\N
1694	siebeno01	1962	0	ALS196207100	KC1	1386	AL	1	\N
1695	terryra01	1962	0	NLS196207300	NYA	1391	AL	0	\N
1696	thomale03	1962	0	ALS196207100	LAA	1387	AL	1	\N
1697	thomale03	1962	0	NLS196207300	LAA	1387	AL	1	\N
1698	treshto01	1962	0	NLS196207300	NYA	1391	AL	1	\N
1699	wilheho01	1962	0	NLS196207300	BAL	1378	AL	0	\N
1700	drysddo01	1962	0	ALS196207100	LAN	1388	NL	1	1
1701	podrejo01	1962	0	NLS196207300	LAN	1388	NL	1	1
1702	crandde01	1962	0	ALS196207100	ML1	1390	NL	1	2
1704	crandde01	1962	0	NLS196207300	ML1	1390	NL	1	2
1706	cepedor01	1962	0	ALS196207100	SFN	1395	NL	1	3
1708	cepedor01	1962	0	NLS196207300	SFN	1395	NL	1	3
1710	mazerbi01	1962	0	ALS196207100	PIT	1394	NL	1	4
1712	mazerbi01	1962	0	NLS196207300	PIT	1394	NL	1	4
1714	boyerke01	1962	0	ALS196207100	SLN	1396	NL	1	5
1716	boyerke01	1962	0	NLS196207300	SLN	1396	NL	1	5
1718	groatdi01	1962	0	ALS196207100	PIT	1394	NL	1	6
1720	groatdi01	1962	0	NLS196207300	PIT	1394	NL	1	6
1722	davisto02	1962	0	ALS196207100	LAN	1388	NL	1	7
1724	davisto02	1962	0	NLS196207300	LAN	1388	NL	1	7
1726	mayswi01	1962	0	ALS196207100	SFN	1395	NL	1	8
1728	mayswi01	1962	0	NLS196207300	SFN	1395	NL	1	8
1730	clemero01	1962	0	ALS196207100	PIT	1394	NL	1	9
1732	clemero01	1962	0	NLS196207300	PIT	1394	NL	1	9
1734	aaronha01	1962	0	NLS196207300	ML1	1390	NL	1	\N
1735	aloufe01	1962	0	ALS196207100	SFN	1395	NL	1	\N
1736	altmage01	1962	0	NLS196207300	CHN	1381	NL	1	\N
1737	ashburi01	1962	0	NLS196207300	NYN	1392	NL	1	\N
1738	bankser01	1962	0	ALS196207100	CHN	1381	NL	1	\N
1739	bankser01	1962	0	NLS196207300	CHN	1381	NL	1	\N
1740	bollifr01	1962	0	ALS196207100	ML1	1390	NL	1	\N
1741	bollifr01	1962	0	NLS196207300	ML1	1390	NL	1	\N
1742	callijo01	1962	0	ALS196207100	PHI	1393	NL	1	\N
1743	callijo01	1962	0	NLS196207300	PHI	1393	NL	1	\N
1744	davenji01	1962	0	ALS196207100	SFN	1395	NL	1	\N
1745	farretu01	1962	0	NLS196207300	HOU	1385	NL	1	\N
1746	gibsobo01	1962	0	NLS196207300	SLN	1396	NL	1	\N
1747	koufasa01	1962	0	NLS196207300	LAN	1388	NL	0	\N
1748	mahafar01	1962	0	NLS196207300	PHI	1393	NL	1	\N
1749	maricju01	1962	0	ALS196207100	SFN	1395	NL	1	\N
1750	maricju01	1962	0	NLS196207300	SFN	1395	NL	1	\N
1751	matheed01	1962	0	NLS196207300	ML1	1390	NL	1	\N
1752	musiast01	1962	0	ALS196207100	SLN	1396	NL	1	\N
1753	musiast01	1962	0	NLS196207300	SLN	1396	NL	1	\N
1754	purkebo01	1962	0	ALS196207100	CIN	1382	NL	1	\N
1755	robinfr02	1962	0	NLS196207300	CIN	1382	NL	1	\N
1756	rosebjo01	1962	0	NLS196207300	LAN	1388	NL	1	\N
1757	shawbo01	1962	0	ALS196207100	ML1	1390	NL	1	\N
1758	spahnwa01	1962	0	ALS196207100	ML1	1390	NL	0	\N
1759	willibi01	1962	0	NLS196207300	CHN	1381	NL	1	\N
1760	willsma01	1962	0	ALS196207100	LAN	1388	NL	1	\N
1761	willsma01	1962	0	NLS196207300	LAN	1388	NL	1	\N
1762	mcbrike01	1963	0	ALS196307090	LAA	1407	AL	1	1
1763	batteea01	1963	0	ALS196307090	MIN	1409	AL	1	2
1764	pepitjo01	1963	0	ALS196307090	NYA	1411	AL	1	3
1765	foxne01	1963	0	ALS196307090	CHA	1400	AL	1	4
1766	malzofr01	1963	0	ALS196307090	BOS	1399	AL	1	5
1767	versazo01	1963	0	ALS196307090	MIN	1409	AL	1	6
1768	wagnele01	1963	0	ALS196307090	LAA	1407	AL	1	7
1769	pearsal02	1963	0	ALS196307090	LAA	1407	AL	1	8
1770	kalinal01	1963	0	ALS196307090	DET	1404	AL	1	9
1771	allisbo01	1963	0	ALS196307090	MIN	1409	AL	1	\N
1772	aparilu01	1963	0	ALS196307090	BAL	1398	AL	1	\N
1773	barbest01	1963	0	ALS196307090	BAL	1398	AL	0	\N
1774	boutoji01	1963	0	ALS196307090	NYA	1411	AL	1	\N
1775	bunniji01	1963	0	ALS196307090	DET	1404	AL	1	\N
1776	grantmu01	1963	0	ALS196307090	CLE	1403	AL	0	\N
1777	howarel01	1963	0	ALS196307090	NYA	1411	AL	1	\N
1778	killeha01	1963	0	ALS196307090	MIN	1409	AL	1	\N
1779	leppedo02	1963	0	ALS196307090	WS2	1417	AL	0	\N
1780	mantlmi01	1963	0	ALS196307090	NYA	1411	AL	0	\N
1781	monbobi01	1963	0	ALS196307090	BOS	1399	AL	0	\N
1782	pizarju01	1963	0	ALS196307090	CHA	1400	AL	1	\N
1783	radatdi01	1963	0	ALS196307090	BOS	1399	AL	1	\N
1784	richabo01	1963	0	ALS196307090	NYA	1411	AL	1	\N
1785	robinbr01	1963	0	ALS196307090	BAL	1398	AL	1	\N
1786	siebeno01	1963	0	ALS196307090	KC1	1406	AL	0	\N
1787	treshto01	1963	0	ALS196307090	NYA	1411	AL	1	\N
1788	yastrca01	1963	0	ALS196307090	BOS	1399	AL	1	\N
1789	otoolji01	1963	0	ALS196307090	CIN	1402	NL	1	1
1790	baileed01	1963	0	ALS196307090	SFN	1415	NL	1	2
1791	whitebi03	1963	0	ALS196307090	SLN	1416	NL	1	3
1792	javieju01	1963	0	ALS196307090	SLN	1416	NL	1	4
1793	boyerke01	1963	0	ALS196307090	SLN	1416	NL	1	5
1794	groatdi01	1963	0	ALS196307090	SLN	1416	NL	1	6
1795	davisto02	1963	0	ALS196307090	LAN	1408	NL	1	7
1796	mayswi01	1963	0	ALS196307090	SFN	1415	NL	1	8
1797	aaronha01	1963	0	ALS196307090	ML1	1410	NL	1	9
1798	cepedor01	1963	0	ALS196307090	SFN	1415	NL	0	\N
1799	clemero01	1963	0	ALS196307090	PIT	1414	NL	1	\N
1800	culpra01	1963	0	ALS196307090	PHI	1413	NL	1	\N
1801	drysddo01	1963	0	ALS196307090	LAN	1408	NL	1	\N
1802	edwarjo01	1963	0	ALS196307090	CIN	1402	NL	1	\N
1803	jacksla01	1963	0	ALS196307090	CHN	1401	NL	1	\N
1804	koufasa01	1963	0	ALS196307090	LAN	1408	NL	0	\N
1805	maricju01	1963	0	ALS196307090	SFN	1415	NL	0	\N
1806	mazerbi01	1963	0	ALS196307090	PIT	1414	NL	0	\N
1807	mccovwi01	1963	0	ALS196307090	SFN	1415	NL	1	\N
1808	musiast01	1963	0	ALS196307090	SLN	1416	NL	1	\N
1809	santoro01	1963	0	ALS196307090	CHN	1401	NL	1	\N
1810	snidedu01	1963	0	ALS196307090	NYN	1412	NL	1	\N
1811	spahnwa01	1963	0	ALS196307090	ML1	1410	NL	0	\N
1812	torrejo01	1963	0	ALS196307090	ML1	1410	NL	0	\N
1813	willsma01	1963	0	ALS196307090	LAN	1408	NL	0	\N
1814	woodeha01	1963	0	ALS196307090	HOU	1405	NL	1	\N
1815	chancde01	1964	0	NLS196407070	LAA	1427	AL	1	1
1816	howarel01	1964	0	NLS196407070	NYA	1431	AL	1	2
1817	allisbo01	1964	0	NLS196407070	MIN	1429	AL	1	3
1818	richabo01	1964	0	NLS196407070	NYA	1431	AL	1	4
1819	robinbr01	1964	0	NLS196407070	BAL	1418	AL	1	5
1820	fregoji01	1964	0	NLS196407070	LAA	1427	AL	1	6
1821	killeha01	1964	0	NLS196407070	MIN	1429	AL	1	7
1822	mantlmi01	1964	0	NLS196407070	NYA	1431	AL	1	8
1823	olivato01	1964	0	NLS196407070	MIN	1429	AL	1	9
1824	aparilu01	1964	0	NLS196407070	BAL	1418	AL	0	\N
1825	bressed01	1964	0	NLS196407070	BOS	1419	AL	0	\N
1826	colavro01	1964	0	NLS196407070	KC1	1426	AL	1	\N
1827	fordwh01	1964	0	NLS196407070	NYA	1431	AL	0	\N
1828	freehbi01	1964	0	NLS196407070	DET	1424	AL	0	\N
1829	hallji02	1964	0	NLS196407070	MIN	1429	AL	1	\N
1830	hintoch01	1964	0	NLS196407070	WS2	1437	AL	1	\N
1831	kalinal01	1964	0	NLS196407070	DET	1424	AL	0	\N
1832	kralija01	1964	0	NLS196407070	CLE	1423	AL	0	\N
1833	lumpeje01	1964	0	NLS196407070	DET	1424	AL	0	\N
1834	malzofr01	1964	0	NLS196407070	BOS	1419	AL	0	\N
1835	pascuca02	1964	0	NLS196407070	MIN	1429	AL	1	\N
1836	pepitjo01	1964	0	NLS196407070	NYA	1431	AL	1	\N
1837	peterga01	1964	0	NLS196407070	CHA	1420	AL	0	\N
1838	pizarju01	1964	0	NLS196407070	CHA	1420	AL	0	\N
1839	radatdi01	1964	0	NLS196407070	BOS	1419	AL	1	\N
1840	siebeno01	1964	0	NLS196407070	BAL	1418	AL	1	\N
1841	wyattjo02	1964	0	NLS196407070	KC1	1426	AL	1	\N
1842	drysddo01	1964	0	NLS196407070	LAN	1428	NL	1	1
1843	torrejo01	1964	0	NLS196407070	ML1	1430	NL	1	2
1844	cepedor01	1964	0	NLS196407070	SFN	1435	NL	1	3
1845	huntro01	1964	0	NLS196407070	NYN	1432	NL	1	4
1846	boyerke01	1964	0	NLS196407070	SLN	1436	NL	1	5
1847	groatdi01	1964	0	NLS196407070	SLN	1436	NL	1	6
1848	willibi01	1964	0	NLS196407070	CHN	1421	NL	1	7
1849	mayswi01	1964	0	NLS196407070	SFN	1435	NL	1	8
1850	clemero01	1964	0	NLS196407070	PIT	1434	NL	1	9
1851	aaronha01	1964	0	NLS196407070	ML1	1430	NL	1	\N
1852	bunniji01	1964	0	NLS196407070	PHI	1433	NL	1	\N
1853	burgesm01	1964	0	NLS196407070	PIT	1434	NL	0	\N
1854	callijo01	1964	0	NLS196407070	PHI	1433	NL	1	\N
1855	cardele01	1964	0	NLS196407070	CIN	1422	NL	1	\N
1856	edwarjo01	1964	0	NLS196407070	CIN	1422	NL	1	\N
1857	ellswdi01	1964	0	NLS196407070	CHN	1421	NL	0	\N
1858	farretu01	1964	0	NLS196407070	HOU	1425	NL	1	\N
1859	floodcu01	1964	0	NLS196407070	SLN	1436	NL	1	\N
1860	koufasa01	1964	0	NLS196407070	LAN	1428	NL	0	\N
1861	maricju01	1964	0	NLS196407070	SFN	1435	NL	1	\N
1862	mazerbi01	1964	0	NLS196407070	PIT	1434	NL	0	\N
1863	santoro01	1964	0	NLS196407070	CHN	1421	NL	0	\N
1864	shortch02	1964	0	NLS196407070	PHI	1433	NL	1	\N
1865	stargwi01	1964	0	NLS196407070	PIT	1434	NL	1	\N
1866	whitebi03	1964	0	NLS196407070	SLN	1436	NL	1	\N
1867	pappami01	1965	0	ALS196507130	BAL	1438	AL	1	1
1868	batteea01	1965	0	ALS196507130	MIN	1449	AL	1	2
1869	killeha01	1965	0	ALS196507130	MIN	1449	AL	1	3
1870	mantife01	1965	0	ALS196507130	BOS	1439	AL	1	4
1871	robinbr01	1965	0	ALS196507130	BAL	1438	AL	1	5
1872	mcauldi01	1965	0	ALS196507130	DET	1445	AL	1	6
1873	hortowi01	1965	0	ALS196507130	DET	1445	AL	1	7
1874	davalvi01	1965	0	ALS196507130	CLE	1444	AL	1	8
1875	colavro01	1965	0	ALS196507130	CLE	1444	AL	1	9
1876	alvisma01	1965	0	ALS196507130	CLE	1444	AL	1	\N
1877	fisheed02	1965	0	ALS196507130	CHA	1441	AL	1	\N
1878	freehbi01	1965	0	ALS196507130	DET	1445	AL	1	\N
1879	grantmu01	1965	0	ALS196507130	MIN	1449	AL	1	\N
1880	hallji02	1965	0	ALS196507130	MIN	1449	AL	1	\N
1881	howarel01	1965	0	ALS196507130	NYA	1451	AL	0	\N
1882	kalinal01	1965	0	ALS196507130	DET	1445	AL	1	\N
1883	leebo01	1965	0	ALS196507130	CAL	1440	AL	0	\N
1884	mantlmi01	1965	0	ALS196507130	NYA	1451	AL	0	\N
1885	mcdowsa01	1965	0	ALS196507130	CLE	1444	AL	1	\N
1886	odonojo01	1965	0	ALS196507130	KC1	1447	AL	0	\N
1887	olivato01	1965	0	ALS196507130	MIN	1449	AL	1	\N
1888	pepitjo01	1965	0	ALS196507130	NYA	1451	AL	1	\N
1889	richabo01	1965	0	ALS196507130	NYA	1451	AL	1	\N
1890	richepe01	1965	0	ALS196507130	WS2	1457	AL	1	\N
1891	skowrbi01	1965	0	ALS196507130	CHA	1441	AL	0	\N
1892	stottme01	1965	0	ALS196507130	NYA	1451	AL	0	\N
1893	versazo01	1965	0	ALS196507130	MIN	1449	AL	1	\N
1894	yastrca01	1965	0	ALS196507130	BOS	1439	AL	0	\N
1895	maricju01	1965	0	ALS196507130	SFN	1455	NL	1	1
1896	torrejo01	1965	0	ALS196507130	ML1	1450	NL	1	2
1897	bankser01	1965	0	ALS196507130	CHN	1442	NL	1	3
1898	rosepe01	1965	0	ALS196507130	CIN	1443	NL	1	4
1899	allendi01	1965	0	ALS196507130	PHI	1453	NL	1	5
1900	willsma01	1965	0	ALS196507130	LAN	1448	NL	1	6
1901	stargwi01	1965	0	ALS196507130	PIT	1454	NL	1	7
1902	mayswi01	1965	0	ALS196507130	SFN	1455	NL	1	8
1903	aaronha01	1965	0	ALS196507130	ML1	1450	NL	1	9
1904	callijo01	1965	0	ALS196507130	PHI	1453	NL	0	\N
1905	cardele01	1965	0	ALS196507130	CIN	1443	NL	1	\N
1906	clemero01	1965	0	ALS196507130	PIT	1454	NL	1	\N
1907	drysddo01	1965	0	ALS196507130	LAN	1448	NL	1	\N
1908	edwarjo01	1965	0	ALS196507130	CIN	1443	NL	0	\N
1909	ellissa01	1965	0	ALS196507130	CIN	1443	NL	0	\N
1910	farretu01	1965	0	ALS196507130	HOU	1446	NL	1	\N
1911	gibsobo01	1965	0	ALS196507130	SLN	1456	NL	1	\N
1912	koufasa01	1965	0	ALS196507130	LAN	1448	NL	1	\N
1913	kraneed01	1965	0	ALS196507130	NYN	1452	NL	0	\N
1914	malonji01	1965	0	ALS196507130	CIN	1443	NL	1	\N
1915	robinfr02	1965	0	ALS196507130	CIN	1443	NL	1	\N
1916	rojasco01	1965	0	ALS196507130	PHI	1453	NL	1	\N
1917	santoro01	1965	0	ALS196507130	CHN	1442	NL	1	\N
1918	vealebo01	1965	0	ALS196507130	PIT	1454	NL	0	\N
1919	willibi01	1965	0	ALS196507130	CHN	1442	NL	1	\N
1920	mclaide01	1966	0	NLS196607120	DET	1466	AL	1	1
1921	freehbi01	1966	0	NLS196607120	DET	1466	AL	1	2
1922	scottge02	1966	0	NLS196607120	BOS	1460	AL	1	3
1923	knoopbo01	1966	0	NLS196607120	CAL	1461	AL	1	4
1924	robinbr01	1966	0	NLS196607120	BAL	1459	AL	1	5
1925	mcauldi01	1966	0	NLS196607120	DET	1466	AL	1	6
1926	robinfr02	1966	0	NLS196607120	BAL	1459	AL	1	7
1927	kalinal01	1966	0	NLS196607120	DET	1466	AL	1	8
1928	olivato01	1966	0	NLS196607120	MIN	1470	AL	1	9
1929	ageeto01	1966	0	NLS196607120	CHA	1462	AL	1	\N
1930	barbest01	1966	0	NLS196607120	BAL	1459	AL	0	\N
1931	batteea01	1966	0	NLS196607120	MIN	1470	AL	1	\N
1932	bellga01	1966	0	NLS196607120	CLE	1465	AL	0	\N
1933	cashno01	1966	0	NLS196607120	DET	1466	AL	1	\N
1934	colavro01	1966	0	NLS196607120	CLE	1465	AL	1	\N
1935	etchean01	1966	0	NLS196607120	BAL	1459	AL	0	\N
1936	fregoji01	1966	0	NLS196607120	CAL	1461	AL	1	\N
1937	hunteca01	1966	0	NLS196607120	KC1	1468	AL	0	\N
1938	kaatji01	1966	0	NLS196607120	MIN	1470	AL	1	\N
1939	killeha01	1966	0	NLS196607120	MIN	1470	AL	1	\N
1940	mcdowsa01	1966	0	NLS196607120	CLE	1465	AL	0	\N
1941	richabo01	1966	0	NLS196607120	NYA	1471	AL	1	\N
1942	richepe01	1966	0	NLS196607120	WS2	1477	AL	1	\N
1943	siebeso01	1966	0	NLS196607120	CLE	1465	AL	1	\N
1944	stottme01	1966	0	NLS196607120	NYA	1471	AL	1	\N
1945	yastrca01	1966	0	NLS196607120	BOS	1460	AL	0	\N
1946	koufasa01	1966	0	NLS196607120	LAN	1469	NL	1	1
1947	torrejo01	1966	0	NLS196607120	ATL	1458	NL	1	2
1948	mccovwi01	1966	0	NLS196607120	SFN	1475	NL	1	3
1949	lefebji01	1966	0	NLS196607120	LAN	1469	NL	1	4
1950	santoro01	1966	0	NLS196607120	CHN	1463	NL	1	5
1951	cardele01	1966	0	NLS196607120	CIN	1464	NL	1	6
1952	aaronha01	1966	0	NLS196607120	ATL	1458	NL	1	7
1953	mayswi01	1966	0	NLS196607120	SFN	1475	NL	1	8
1954	clemero01	1966	0	NLS196607120	PIT	1474	NL	1	9
1955	allendi01	1966	0	NLS196607120	PHI	1473	NL	1	\N
1956	aloufe01	1966	0	NLS196607120	ATL	1458	NL	0	\N
1957	bunniji01	1966	0	NLS196607120	PHI	1473	NL	1	\N
1958	floodcu01	1966	0	NLS196607120	SLN	1476	NL	1	\N
1959	gibsobo01	1966	0	NLS196607120	SLN	1476	NL	0	\N
1960	halleto01	1966	0	NLS196607120	SFN	1475	NL	0	\N
1961	hartji01	1966	0	NLS196607120	SFN	1475	NL	1	\N
1962	huntro01	1966	0	NLS196607120	NYN	1472	NL	1	\N
1963	maricju01	1966	0	NLS196607120	SFN	1475	NL	1	\N
1964	mccarti01	1966	0	NLS196607120	SLN	1476	NL	1	\N
1965	mccoobi01	1966	0	NLS196607120	CIN	1464	NL	0	\N
1966	morgajo02	1966	0	NLS196607120	HOU	1467	NL	0	\N
1967	perryga01	1966	0	NLS196607120	SFN	1475	NL	1	\N
1968	raymocl01	1966	0	NLS196607120	HOU	1467	NL	0	\N
1969	reganph01	1966	0	NLS196607120	LAN	1469	NL	0	\N
1970	stargwi01	1966	0	NLS196607120	PIT	1474	NL	1	\N
1971	vealebo01	1966	0	NLS196607120	PIT	1474	NL	0	\N
1972	willsma01	1966	0	NLS196607120	LAN	1469	NL	1	\N
1973	chancde01	1967	0	ALS196707110	MIN	1490	AL	1	1
1974	freehbi01	1967	0	ALS196707110	DET	1486	AL	1	2
1975	killeha01	1967	0	ALS196707110	MIN	1490	AL	1	3
1976	carewro01	1967	0	ALS196707110	MIN	1490	AL	1	4
1977	robinbr01	1967	0	ALS196707110	BAL	1479	AL	1	5
1978	petrori01	1967	0	ALS196707110	BOS	1480	AL	1	6
1979	yastrca01	1967	0	ALS196707110	BOS	1480	AL	1	7
1980	olivato01	1967	0	ALS196707110	MIN	1490	AL	1	8
1981	conigto01	1967	0	ALS196707110	BOS	1480	AL	1	9
1982	ageeto01	1967	0	ALS196707110	CHA	1482	AL	1	\N
1983	alvisma01	1967	0	ALS196707110	CLE	1485	AL	1	\N
1984	berryke01	1967	0	ALS196707110	CHA	1482	AL	1	\N
1985	casanpa01	1967	0	ALS196707110	WS2	1497	AL	0	\N
1986	downial01	1967	0	ALS196707110	NYA	1491	AL	1	\N
1987	etchean01	1967	0	ALS196707110	BAL	1479	AL	0	\N
1988	fregoji01	1967	0	ALS196707110	CAL	1481	AL	1	\N
1989	hargast01	1967	0	ALS196707110	CLE	1485	AL	0	\N
1990	horlejo01	1967	0	ALS196707110	CHA	1482	AL	0	\N
1991	hunteca01	1967	0	ALS196707110	KC1	1488	AL	1	\N
1992	kalinal01	1967	0	ALS196707110	DET	1486	AL	0	\N
1993	lonboji01	1967	0	ALS196707110	BOS	1480	AL	0	\N
1994	mantlmi01	1967	0	ALS196707110	NYA	1491	AL	1	\N
1995	mcauldi01	1967	0	ALS196707110	DET	1486	AL	1	\N
1996	mcgloji01	1967	0	ALS196707110	CAL	1481	AL	1	\N
1997	minchdo01	1967	0	ALS196707110	CAL	1481	AL	1	\N
1998	peterga01	1967	0	ALS196707110	CHA	1482	AL	1	\N
1999	robinfr02	1967	0	ALS196707110	BAL	1479	AL	0	\N
2000	maricju01	1967	0	ALS196707110	SFN	1495	NL	1	1
2001	torrejo01	1967	0	ALS196707110	ATL	1478	NL	1	2
2002	cepedor01	1967	0	ALS196707110	SLN	1496	NL	1	3
2003	mazerbi01	1967	0	ALS196707110	PIT	1494	NL	1	4
2004	allendi01	1967	0	ALS196707110	PHI	1493	NL	1	5
2005	alleyge01	1967	0	ALS196707110	PIT	1494	NL	1	6
2006	brocklo01	1967	0	ALS196707110	SLN	1496	NL	1	7
2007	aaronha01	1967	0	ALS196707110	ATL	1478	NL	1	8
2008	clemero01	1967	0	ALS196707110	PIT	1494	NL	1	9
2009	bankser01	1967	0	ALS196707110	CHN	1483	NL	1	\N
2010	cuellmi01	1967	0	ALS196707110	HOU	1487	NL	1	\N
2011	drysddo01	1967	0	ALS196707110	LAN	1489	NL	1	\N
2012	gibsobo01	1967	0	ALS196707110	SLN	1496	NL	1	\N
2013	halleto01	1967	0	ALS196707110	SFN	1495	NL	1	\N
2014	helmsto01	1967	0	ALS196707110	CIN	1484	NL	1	\N
2015	jenkife01	1967	0	ALS196707110	CHN	1483	NL	1	\N
2016	lemasde01	1967	0	ALS196707110	ATL	1478	NL	0	\N
2017	mayswi01	1967	0	ALS196707110	SFN	1495	NL	1	\N
2018	mccarti01	1967	0	ALS196707110	SLN	1496	NL	1	\N
2019	osteecl01	1967	0	ALS196707110	LAN	1489	NL	0	\N
2020	perezto01	1967	0	ALS196707110	CIN	1484	NL	1	\N
2021	rosepe01	1967	0	ALS196707110	CIN	1484	NL	1	\N
2022	seaveto01	1967	0	ALS196707110	NYN	1492	NL	1	\N
2023	shortch02	1967	0	ALS196707110	PHI	1493	NL	1	\N
2024	staubru01	1967	0	ALS196707110	HOU	1487	NL	1	\N
2025	wynnji01	1967	0	ALS196707110	HOU	1487	NL	1	\N
2026	tiantlu01	1968	0	NLS196807090	CLE	1505	AL	1	1
2027	freehbi01	1968	0	NLS196807090	DET	1506	AL	1	2
2028	killeha01	1968	0	NLS196807090	MIN	1509	AL	1	3
2029	carewro01	1968	0	NLS196807090	MIN	1509	AL	1	4
2030	robinbr01	1968	0	NLS196807090	BAL	1499	AL	1	5
2031	fregoji01	1968	0	NLS196807090	CAL	1501	AL	1	6
2032	hortowi01	1968	0	NLS196807090	DET	1506	AL	1	7
2033	yastrca01	1968	0	NLS196807090	BOS	1500	AL	1	8
2034	howarfr01	1968	0	NLS196807090	WS2	1517	AL	1	9
2035	azcuejo01	1968	0	NLS196807090	CLE	1505	AL	1	\N
2036	bellga01	1968	0	NLS196807090	BOS	1500	AL	0	\N
2037	campabe01	1968	0	NLS196807090	OAK	1512	AL	1	\N
2038	harreke01	1968	0	NLS196807090	BOS	1500	AL	1	\N
2039	johnsda02	1968	0	NLS196807090	BAL	1499	AL	1	\N
2040	johnto01	1968	0	NLS196807090	CHA	1502	AL	1	\N
2041	josepdu01	1968	0	NLS196807090	CHA	1502	AL	1	\N
2042	mantlmi01	1968	0	NLS196807090	NYA	1510	AL	1	\N
2043	mcdowsa01	1968	0	NLS196807090	CLE	1505	AL	1	\N
2044	mclaide01	1968	0	NLS196807090	DET	1506	AL	1	\N
2045	mondari01	1968	0	NLS196807090	OAK	1512	AL	1	\N
2046	odombl01	1968	0	NLS196807090	OAK	1512	AL	1	\N
2047	olivato01	1968	0	NLS196807090	MIN	1509	AL	1	\N
2048	powelbo01	1968	0	NLS196807090	BAL	1499	AL	1	\N
2049	santijo02	1968	0	NLS196807090	BOS	1500	AL	0	\N
2050	stottme01	1968	0	NLS196807090	NYA	1510	AL	1	\N
2051	wertdo01	1968	0	NLS196807090	DET	1506	AL	1	\N
2052	drysddo01	1968	0	NLS196807090	LAN	1508	NL	1	1
2053	groteje01	1968	0	NLS196807090	NYN	1511	NL	1	2
2054	mccovwi01	1968	0	NLS196807090	SFN	1515	NL	1	3
2055	helmsto01	1968	0	NLS196807090	CIN	1504	NL	1	4
2056	santoro01	1968	0	NLS196807090	CHN	1503	NL	1	5
2057	kessido01	1968	0	NLS196807090	CHN	1503	NL	1	6
2058	floodcu01	1968	0	NLS196807090	SLN	1516	NL	1	7
2059	mayswi01	1968	0	NLS196807090	SFN	1515	NL	1	8
2060	aaronha01	1968	0	NLS196807090	ATL	1498	NL	1	9
2061	alleyge01	1968	0	NLS196807090	PIT	1514	NL	0	\N
2062	aloufe01	1968	0	NLS196807090	ATL	1498	NL	1	\N
2063	alouma01	1968	0	NLS196807090	PIT	1514	NL	1	\N
2064	benchjo01	1968	0	NLS196807090	CIN	1504	NL	1	\N
2065	cardele01	1968	0	NLS196807090	CIN	1504	NL	1	\N
2066	carltst01	1968	0	NLS196807090	SLN	1516	NL	1	\N
2067	frymawo01	1968	0	NLS196807090	PHI	1513	NL	0	\N
2068	gibsobo01	1968	0	NLS196807090	SLN	1516	NL	0	\N
2069	halleto01	1968	0	NLS196807090	LAN	1508	NL	1	\N
2070	javieju01	1968	0	NLS196807090	SLN	1516	NL	1	\N
2071	koosmje01	1968	0	NLS196807090	NYN	1511	NL	1	\N
2072	maricju01	1968	0	NLS196807090	SFN	1515	NL	1	\N
2073	perezto01	1968	0	NLS196807090	CIN	1504	NL	1	\N
2074	reedro01	1968	0	NLS196807090	ATL	1498	NL	1	\N
2075	rosepe01	1968	0	NLS196807090	CIN	1504	NL	0	\N
2076	seaveto01	1968	0	NLS196807090	NYN	1511	NL	1	\N
2077	staubru01	1968	0	NLS196807090	HOU	1507	NL	1	\N
2078	willibi01	1968	0	NLS196807090	CHN	1503	NL	1	\N
2079	stottme01	1969	0	ALS196907230	NYA	1532	AL	1	1
2080	freehbi01	1969	0	ALS196907230	DET	1526	AL	1	2
2081	powelbo01	1969	0	ALS196907230	BAL	1519	AL	1	3
2082	carewro01	1969	0	ALS196907230	MIN	1530	AL	1	4
2083	bandosa01	1969	0	ALS196907230	OAK	1534	AL	1	5
2084	petrori01	1969	0	ALS196907230	BOS	1520	AL	1	6
2085	howarfr01	1969	0	ALS196907230	WS2	1541	AL	1	7
2086	jacksre01	1969	0	ALS196907230	OAK	1534	AL	1	8
2087	robinfr02	1969	0	ALS196907230	BAL	1519	AL	1	9
2088	andremi01	1969	0	ALS196907230	BOS	1520	AL	1	\N
2089	blairpa01	1969	0	ALS196907230	BAL	1519	AL	1	\N
2090	culpra01	1969	0	ALS196907230	BOS	1520	AL	1	\N
2091	fregoji01	1969	0	ALS196907230	CAL	1521	AL	1	\N
2092	heganmi01	1969	0	ALS196907230	SE1	1538	AL	0	\N
2093	johnsda02	1969	0	ALS196907230	BAL	1519	AL	0	\N
2094	killeha01	1969	0	ALS196907230	MIN	1530	AL	1	\N
2095	knowlda01	1969	0	ALS196907230	WS2	1541	AL	1	\N
2096	lolicmi01	1969	0	ALS196907230	DET	1526	AL	0	\N
2097	mayca01	1969	0	ALS196907230	CHA	1522	AL	1	\N
2098	mcdowsa01	1969	0	ALS196907230	CLE	1525	AL	1	\N
2099	mclaide01	1969	0	ALS196907230	DET	1526	AL	1	\N
2100	mcnalda01	1969	0	ALS196907230	BAL	1519	AL	1	\N
2101	minchdo01	1969	0	ALS196907230	SE1	1538	AL	1	\N
2102	odombl01	1969	0	ALS196907230	OAK	1534	AL	1	\N
2103	olivato01	1969	0	ALS196907230	MIN	1530	AL	0	\N
2104	robinbr01	1969	0	ALS196907230	BAL	1519	AL	1	\N
2105	rodriel01	1969	0	ALS196907230	KCA	1528	AL	0	\N
2106	rosebjo01	1969	0	ALS196907230	MIN	1530	AL	1	\N
2107	smithre06	1969	0	ALS196907230	BOS	1520	AL	1	\N
2108	whitero01	1969	0	ALS196907230	NYA	1532	AL	1	\N
2109	yastrca01	1969	0	ALS196907230	BOS	1520	AL	1	\N
2110	carltst01	1969	0	ALS196907230	SLN	1540	NL	1	1
2111	benchjo01	1969	0	ALS196907230	CIN	1524	NL	1	2
2112	mccovwi01	1969	0	ALS196907230	SFN	1539	NL	1	3
2113	millafe01	1969	0	ALS196907230	ATL	1518	NL	1	4
2114	santoro01	1969	0	ALS196907230	CHN	1523	NL	1	5
2115	kessido01	1969	0	ALS196907230	CHN	1523	NL	1	6
2116	jonescl01	1969	0	ALS196907230	NYN	1533	NL	1	7
2117	alouma01	1969	0	ALS196907230	PIT	1536	NL	1	8
2118	aaronha01	1969	0	ALS196907230	ATL	1518	NL	1	9
2119	bankser01	1969	0	ALS196907230	CHN	1523	NL	1	\N
2120	beckegl01	1969	0	ALS196907230	CHN	1523	NL	1	\N
2121	cannich01	1969	0	ALS196907230	SDN	1537	NL	0	\N
2122	clemero01	1969	0	ALS196907230	PIT	1536	NL	1	\N
2123	dierkla01	1969	0	ALS196907230	HOU	1527	NL	1	\N
2124	gibsobo01	1969	0	ALS196907230	SLN	1540	NL	1	\N
2125	hundlra01	1969	0	ALS196907230	CHN	1523	NL	1	\N
2126	jacksgr01	1969	0	ALS196907230	PHI	1535	NL	0	\N
2127	koosmje01	1969	0	ALS196907230	NYN	1533	NL	1	\N
2128	maricju01	1969	0	ALS196907230	SFN	1539	NL	0	\N
2129	mayle01	1969	0	ALS196907230	CIN	1524	NL	1	\N
2130	mayswi01	1969	0	ALS196907230	SFN	1539	NL	1	\N
2131	menkede01	1969	0	ALS196907230	HOU	1527	NL	1	\N
2132	niekrph01	1969	0	ALS196907230	ATL	1518	NL	1	\N
2133	perezto01	1969	0	ALS196907230	CIN	1524	NL	1	\N
2134	rosepe01	1969	0	ALS196907230	CIN	1524	NL	1	\N
2135	seaveto01	1969	0	ALS196907230	NYN	1533	NL	0	\N
2136	singebi01	1969	0	ALS196907230	LAN	1529	NL	1	\N
2137	staubru01	1969	0	ALS196907230	MON	1531	NL	0	\N
2138	palmeji01	1970	0	NLS197007140	BAL	1543	AL	1	1
2139	freehbi01	1970	0	NLS197007140	DET	1550	AL	1	2
2140	powelbo01	1970	0	NLS197007140	BAL	1543	AL	1	3
2141	johnsda02	1970	0	NLS197007140	BAL	1543	AL	1	4
2142	killeha01	1970	0	NLS197007140	MIN	1554	AL	1	5
2143	aparilu01	1970	0	NLS197007140	CHA	1546	AL	1	6
2144	howarfr01	1970	0	NLS197007140	WS2	1565	AL	1	7
2145	yastrca01	1970	0	NLS197007140	BOS	1544	AL	1	8
2146	robinfr02	1970	0	NLS197007140	BAL	1543	AL	1	9
2147	alomasa01	1970	0	NLS197007140	CAL	1545	AL	1	\N
2148	carewro01	1970	0	NLS197007140	MIN	1554	AL	0	\N
2149	cuellmi01	1970	0	NLS197007140	BAL	1543	AL	0	\N
2150	fossera01	1970	0	NLS197007140	CLE	1549	AL	1	\N
2151	fregoji01	1970	0	NLS197007140	CAL	1545	AL	1	\N
2152	harpeto01	1970	0	NLS197007140	ML4	1555	AL	1	\N
2153	hortowi01	1970	0	NLS197007140	DET	1550	AL	1	\N
2154	hunteca01	1970	0	NLS197007140	OAK	1559	AL	1	\N
2155	johnsal01	1970	0	NLS197007140	CAL	1545	AL	1	\N
2156	mcdowsa01	1970	0	NLS197007140	CLE	1549	AL	1	\N
2157	mcnalda01	1970	0	NLS197007140	BAL	1543	AL	0	\N
2158	mosesje01	1970	0	NLS197007140	BOS	1544	AL	0	\N
2159	olivato01	1970	0	NLS197007140	MIN	1554	AL	1	\N
2160	otisam01	1970	0	NLS197007140	KCA	1552	AL	1	\N
2161	perryji01	1970	0	NLS197007140	MIN	1554	AL	1	\N
2162	peterfr01	1970	0	NLS197007140	NYA	1557	AL	1	\N
2163	robinbr01	1970	0	NLS197007140	BAL	1543	AL	1	\N
2164	stottme01	1970	0	NLS197007140	NYA	1557	AL	1	\N
2165	whitero01	1970	0	NLS197007140	NYA	1557	AL	0	\N
2166	wrighcl01	1970	0	NLS197007140	CAL	1545	AL	1	\N
2167	seaveto01	1970	0	NLS197007140	NYN	1558	NL	1	1
2168	benchjo01	1970	0	NLS197007140	CIN	1548	NL	1	2
2169	allendi01	1970	0	NLS197007140	SLN	1564	NL	1	3
2170	beckegl01	1970	0	NLS197007140	CHN	1547	NL	1	4
2171	perezto01	1970	0	NLS197007140	CIN	1548	NL	1	5
2172	kessido01	1970	0	NLS197007140	CHN	1547	NL	1	6
2173	cartyri01	1970	0	NLS197007140	ATL	1542	NL	1	7
2174	mayswi01	1970	0	NLS197007140	SFN	1563	NL	1	8
2175	aaronha01	1970	0	NLS197007140	ATL	1542	NL	1	9
2176	clemero01	1970	0	NLS197007140	PIT	1561	NL	1	\N
2177	dietzdi01	1970	0	NLS197007140	SFN	1563	NL	1	\N
2178	gastoci01	1970	0	NLS197007140	SDN	1562	NL	1	\N
2179	gibsobo01	1970	0	NLS197007140	SLN	1564	NL	1	\N
2180	grababi01	1970	0	NLS197007140	LAN	1553	NL	1	\N
2181	harrebu01	1970	0	NLS197007140	NYN	1558	NL	1	\N
2182	hickmji02	1970	0	NLS197007140	CHN	1547	NL	1	\N
2183	hoernjo01	1970	0	NLS197007140	PHI	1560	NL	0	\N
2184	mccovwi01	1970	0	NLS197007140	SFN	1563	NL	1	\N
2185	menkede01	1970	0	NLS197007140	HOU	1551	NL	1	\N
2186	merriji01	1970	0	NLS197007140	CIN	1548	NL	1	\N
2187	millafe01	1970	0	NLS197007140	ATL	1542	NL	0	\N
2188	morgajo02	1970	0	NLS197007140	HOU	1551	NL	1	\N
2189	osteecl01	1970	0	NLS197007140	LAN	1553	NL	1	\N
2190	perryga01	1970	0	NLS197007140	SFN	1563	NL	1	\N
2191	rosepe01	1970	0	NLS197007140	CIN	1548	NL	1	\N
2192	simpswa01	1970	0	NLS197007140	CIN	1548	NL	0	\N
2193	staubru01	1970	0	NLS197007140	MON	1556	NL	1	\N
2194	torrejo01	1970	0	NLS197007140	SLN	1564	NL	1	\N
2195	wilheho01	1970	0	NLS197007140	ATL	1542	NL	0	\N
2196	bluevi01	1971	0	ALS197107130	OAK	1583	AL	1	1
2197	freehbi01	1971	0	ALS197107130	DET	1574	AL	1	2
2198	cashno01	1971	0	ALS197107130	DET	1574	AL	1	3
2199	carewro01	1971	0	ALS197107130	MIN	1578	AL	1	4
2200	robinbr01	1971	0	ALS197107130	BAL	1567	AL	1	5
2201	aparilu01	1971	0	ALS197107130	BOS	1568	AL	1	6
2202	yastrca01	1971	0	ALS197107130	BOS	1568	AL	1	7
2203	murcebo01	1971	0	ALS197107130	NYA	1581	AL	1	8
2204	robinfr02	1971	0	ALS197107130	BAL	1567	AL	1	9
2205	bufordo01	1971	0	ALS197107130	BAL	1567	AL	1	\N
2206	cardele01	1971	0	ALS197107130	MIN	1578	AL	0	\N
2207	cuellmi01	1971	0	ALS197107130	BAL	1567	AL	1	\N
2208	duncada01	1971	0	ALS197107130	OAK	1583	AL	0	\N
2209	fossera01	1971	0	ALS197107130	CLE	1573	AL	0	\N
2210	howarfr01	1971	0	ALS197107130	WS2	1589	AL	1	\N
2211	jacksre01	1971	0	ALS197107130	OAK	1583	AL	1	\N
2212	kalinal01	1971	0	ALS197107130	DET	1574	AL	1	\N
2213	killeha01	1971	0	ALS197107130	MIN	1578	AL	1	\N
2214	lolicmi01	1971	0	ALS197107130	DET	1574	AL	1	\N
2215	mcdowsa01	1971	0	ALS197107130	CLE	1573	AL	0	\N
2216	meltobi01	1971	0	ALS197107130	CHA	1570	AL	0	\N
2217	messean01	1971	0	ALS197107130	CAL	1569	AL	0	\N
2218	munsoth01	1971	0	ALS197107130	NYA	1581	AL	1	\N
2219	olivato01	1971	0	ALS197107130	MIN	1578	AL	0	\N
2220	otisam01	1971	0	ALS197107130	KCA	1576	AL	1	\N
2221	palmeji01	1971	0	ALS197107130	BAL	1567	AL	1	\N
2222	pattima01	1971	0	ALS197107130	ML4	1579	AL	0	\N
2223	perryji01	1971	0	ALS197107130	MIN	1578	AL	0	\N
2224	powelbo01	1971	0	ALS197107130	BAL	1567	AL	0	\N
2225	rojasco01	1971	0	ALS197107130	KCA	1576	AL	1	\N
2226	siebeso01	1971	0	ALS197107130	BOS	1568	AL	0	\N
2227	woodwi01	1971	0	ALS197107130	CHA	1570	AL	0	\N
2228	ellisdo01	1971	0	ALS197107130	PIT	1585	NL	1	1
2229	benchjo01	1971	0	ALS197107130	CIN	1572	NL	1	2
2230	mccovwi01	1971	0	ALS197107130	SFN	1587	NL	1	3
2231	beckegl01	1971	0	ALS197107130	CHN	1571	NL	1	4
2232	torrejo01	1971	0	ALS197107130	SLN	1588	NL	1	5
2233	harrebu01	1971	0	ALS197107130	NYN	1582	NL	1	6
2234	stargwi01	1971	0	ALS197107130	PIT	1585	NL	1	7
2235	mayswi01	1971	0	ALS197107130	SFN	1587	NL	1	8
2236	aaronha01	1971	0	ALS197107130	ATL	1566	NL	1	9
2237	bondsbo01	1971	0	ALS197107130	SFN	1587	NL	1	\N
2238	brocklo01	1971	0	ALS197107130	SLN	1588	NL	1	\N
2239	carltst01	1971	0	ALS197107130	SLN	1588	NL	0	\N
2240	carrocl02	1971	0	ALS197107130	CIN	1572	NL	0	\N
2241	clemero01	1971	0	ALS197107130	PIT	1585	NL	1	\N
2242	colbena01	1971	0	ALS197107130	SDN	1586	NL	1	\N
2243	daviswi02	1971	0	ALS197107130	LAN	1577	NL	1	\N
2244	dierkla01	1971	0	ALS197107130	HOU	1575	NL	0	\N
2245	jenkife01	1971	0	ALS197107130	CHN	1571	NL	1	\N
2246	kessido01	1971	0	ALS197107130	CHN	1571	NL	1	\N
2247	maricju01	1971	0	ALS197107130	SFN	1587	NL	1	\N
2248	mayle01	1971	0	ALS197107130	CIN	1572	NL	1	\N
2249	millafe01	1971	0	ALS197107130	ATL	1566	NL	1	\N
2250	rosepe01	1971	0	ALS197107130	CIN	1572	NL	1	\N
2251	sanguma01	1971	0	ALS197107130	PIT	1585	NL	0	\N
2252	santoro01	1971	0	ALS197107130	CHN	1571	NL	1	\N
2253	seaveto01	1971	0	ALS197107130	NYN	1582	NL	0	\N
2254	staubru01	1971	0	ALS197107130	MON	1580	NL	0	\N
2255	wilsodo01	1971	0	ALS197107130	HOU	1575	NL	1	\N
2256	wiseri01	1971	0	ALS197107130	PHI	1584	NL	0	\N
2257	palmeji01	1972	0	NLS197207250	BAL	1591	AL	1	1
2258	freehbi01	1972	0	NLS197207250	DET	1598	AL	1	2
2259	allendi01	1972	0	NLS197207250	CHA	1594	AL	1	3
2260	carewro01	1972	0	NLS197207250	MIN	1602	AL	1	4
2261	robinbr01	1972	0	NLS197207250	BAL	1591	AL	1	5
2262	grichbo01	1972	0	NLS197207250	BAL	1591	AL	1	6
2263	yastrca01	1972	0	NLS197207250	BOS	1592	AL	1	7
2264	murcebo01	1972	0	NLS197207250	NYA	1605	AL	1	8
2265	jacksre01	1972	0	NLS197207250	OAK	1607	AL	1	9
2266	aparilu01	1972	0	NLS197207250	BOS	1592	AL	0	\N
2267	bandosa01	1972	0	NLS197207250	OAK	1607	AL	1	\N
2268	campabe01	1972	0	NLS197207250	OAK	1607	AL	0	\N
2269	cashno01	1972	0	NLS197207250	DET	1598	AL	1	\N
2270	colemjo05	1972	0	NLS197207250	DET	1598	AL	0	\N
2271	dobsopa01	1972	0	NLS197207250	BAL	1591	AL	0	\N
2272	fiskca01	1972	0	NLS197207250	BOS	1592	AL	1	\N
2273	harrato01	1972	0	NLS197207250	TEX	1613	AL	0	\N
2274	holtzke01	1972	0	NLS197207250	OAK	1607	AL	0	\N
2275	hunteca01	1972	0	NLS197207250	OAK	1607	AL	0	\N
2276	lolicmi01	1972	0	NLS197207250	DET	1598	AL	1	\N
2277	mayca01	1972	0	NLS197207250	CHA	1594	AL	0	\N
2278	mcnalda01	1972	0	NLS197207250	BAL	1591	AL	1	\N
2279	otisam01	1972	0	NLS197207250	KCA	1600	AL	0	\N
2280	patekfr01	1972	0	NLS197207250	KCA	1600	AL	0	\N
2281	perryga01	1972	0	NLS197207250	CLE	1597	AL	1	\N
2282	pinielo01	1972	0	NLS197207250	KCA	1600	AL	1	\N
2283	rodriel01	1972	0	NLS197207250	ML4	1603	AL	0	\N
2284	rojasco01	1972	0	NLS197207250	KCA	1600	AL	1	\N
2285	rudijo01	1972	0	NLS197207250	OAK	1607	AL	1	\N
2286	ryanno01	1972	0	NLS197207250	CAL	1593	AL	0	\N
2287	scheiri01	1972	0	NLS197207250	KCA	1600	AL	1	\N
2288	smithre06	1972	0	NLS197207250	BOS	1592	AL	1	\N
2289	woodwi01	1972	0	NLS197207250	CHA	1594	AL	1	\N
2290	gibsobo01	1972	0	NLS197207250	SLN	1612	NL	1	1
2291	benchjo01	1972	0	NLS197207250	CIN	1596	NL	1	2
2292	mayle01	1972	0	NLS197207250	HOU	1599	NL	1	3
2293	morgajo02	1972	0	NLS197207250	CIN	1596	NL	1	4
2294	torrejo01	1972	0	NLS197207250	SLN	1612	NL	1	5
2295	kessido01	1972	0	NLS197207250	CHN	1595	NL	1	6
2296	stargwi01	1972	0	NLS197207250	PIT	1609	NL	1	7
2297	mayswi01	1972	0	NLS197207250	NYN	1606	NL	1	8
2298	aaronha01	1972	0	NLS197207250	ATL	1590	NL	1	9
2299	beckegl01	1972	0	NLS197207250	CHN	1595	NL	1	\N
2300	blassst01	1972	0	NLS197207250	PIT	1609	NL	1	\N
2301	brocklo01	1972	0	NLS197207250	SLN	1612	NL	0	\N
2302	carltst01	1972	0	NLS197207250	PHI	1608	NL	1	\N
2303	carrocl02	1972	0	NLS197207250	CIN	1596	NL	0	\N
2304	cedence01	1972	0	NLS197207250	HOU	1599	NL	1	\N
2305	clemero01	1972	0	NLS197207250	PIT	1609	NL	0	\N
2306	colbena01	1972	0	NLS197207250	SDN	1610	NL	1	\N
2307	jenkife01	1972	0	NLS197207250	CHN	1595	NL	0	\N
2308	mcgratu01	1972	0	NLS197207250	NYN	1606	NL	1	\N
2309	nolanga01	1972	0	NLS197207250	CIN	1596	NL	0	\N
2310	oliveal01	1972	0	NLS197207250	PIT	1609	NL	1	\N
2311	sanguma01	1972	0	NLS197207250	PIT	1609	NL	1	\N
2312	santoro01	1972	0	NLS197207250	CHN	1595	NL	1	\N
2313	seaveto01	1972	0	NLS197207250	NYN	1606	NL	0	\N
2314	simmote01	1972	0	NLS197207250	SLN	1612	NL	0	\N
2315	speiech01	1972	0	NLS197207250	SFN	1611	NL	1	\N
2316	stonebi01	1972	0	NLS197207250	MON	1604	NL	1	\N
2317	suttodo01	1972	0	NLS197207250	LAN	1601	NL	1	\N
2318	willibi01	1972	0	NLS197207250	CHN	1595	NL	1	\N
2319	hunteca01	1973	0	ALS197307240	OAK	1631	AL	1	1
2320	fiskca01	1973	0	ALS197307240	BOS	1616	AL	1	2
2321	maybejo01	1973	0	ALS197307240	KCA	1624	AL	1	3
2322	carewro01	1973	0	ALS197307240	MIN	1626	AL	1	4
2323	robinbr01	1973	0	ALS197307240	BAL	1615	AL	1	5
2324	campabe01	1973	0	ALS197307240	OAK	1631	AL	1	6
2325	murcebo01	1973	0	ALS197307240	NYA	1629	AL	1	7
2326	otisam01	1973	0	ALS197307240	KCA	1624	AL	1	8
2327	jacksre01	1973	0	ALS197307240	OAK	1631	AL	1	9
2328	allendi01	1973	0	ALS197307240	CHA	1618	AL	0	\N
2329	bandosa01	1973	0	ALS197307240	OAK	1631	AL	1	\N
2330	bellbu01	1973	0	ALS197307240	CLE	1621	AL	1	\N
2331	blairpa01	1973	0	ALS197307240	BAL	1615	AL	1	\N
2332	blylebe01	1973	0	ALS197307240	MIN	1626	AL	1	\N
2333	brinked01	1973	0	ALS197307240	DET	1622	AL	1	\N
2334	colboji01	1973	0	ALS197307240	ML4	1627	AL	0	\N
2335	fingero01	1973	0	ALS197307240	OAK	1631	AL	1	\N
2336	freehbi01	1973	0	ALS197307240	DET	1622	AL	0	\N
2337	holtzke01	1973	0	ALS197307240	OAK	1631	AL	1	\N
2338	hortowi01	1973	0	ALS197307240	DET	1622	AL	1	\N
2339	kellypa01	1973	0	ALS197307240	CHA	1618	AL	1	\N
2340	leebi03	1973	0	ALS197307240	BOS	1616	AL	0	\N
2341	lylesp01	1973	0	ALS197307240	NYA	1629	AL	1	\N
2342	mayda01	1973	0	ALS197307240	ML4	1627	AL	1	\N
2343	munsoth01	1973	0	ALS197307240	NYA	1629	AL	1	\N
2344	nelsoda01	1973	0	ALS197307240	TEX	1637	AL	1	\N
2345	rojasco01	1973	0	ALS197307240	KCA	1624	AL	1	\N
2346	ryanno01	1973	0	ALS197307240	CAL	1617	AL	1	\N
2347	singebi01	1973	0	ALS197307240	CAL	1617	AL	1	\N
2348	spencji01	1973	0	ALS197307240	TEX	1637	AL	1	\N
2349	yastrca01	1973	0	ALS197307240	BOS	1616	AL	0	\N
2350	wiseri01	1973	0	ALS197307240	SLN	1636	NL	1	1
2351	benchjo01	1973	0	ALS197307240	CIN	1620	NL	1	2
2352	aaronha01	1973	0	ALS197307240	ATL	1614	NL	1	3
2353	morgajo02	1973	0	ALS197307240	CIN	1620	NL	1	4
2354	santoro01	1973	0	ALS197307240	CHN	1619	NL	1	5
2355	speiech01	1973	0	ALS197307240	SFN	1635	NL	1	6
2356	rosepe01	1973	0	ALS197307240	CIN	1620	NL	1	7
2357	cedence01	1973	0	ALS197307240	HOU	1623	NL	1	8
2358	willibi01	1973	0	ALS197307240	CHN	1619	NL	1	9
2359	billija01	1973	0	ALS197307240	CIN	1620	NL	0	\N
2360	bondsbo01	1973	0	ALS197307240	SFN	1635	NL	1	\N
2361	breweji01	1973	0	ALS197307240	LAN	1625	NL	1	\N
2362	colbena01	1973	0	ALS197307240	SDN	1634	NL	1	\N
2363	conceda01	1973	0	ALS197307240	CIN	1620	NL	0	\N
2364	daviswi02	1973	0	ALS197307240	LAN	1625	NL	1	\N
2365	evansda01	1973	0	ALS197307240	ATL	1614	NL	1	\N
2366	fairlro01	1973	0	ALS197307240	MON	1628	NL	1	\N
2367	giustda01	1973	0	ALS197307240	PIT	1633	NL	1	\N
2368	johnsda02	1973	0	ALS197307240	ATL	1614	NL	1	\N
2369	mayswi01	1973	0	ALS197307240	NYN	1630	NL	1	\N
2370	motama01	1973	0	ALS197307240	LAN	1625	NL	1	\N
2371	osteecl01	1973	0	ALS197307240	LAN	1625	NL	1	\N
2372	russebi01	1973	0	ALS197307240	LAN	1625	NL	1	\N
2373	seaveto01	1973	0	ALS197307240	NYN	1630	NL	1	\N
2374	simmote01	1973	0	ALS197307240	SLN	1636	NL	1	\N
2375	stargwi01	1973	0	ALS197307240	PIT	1633	NL	1	\N
2376	suttodo01	1973	0	ALS197307240	LAN	1625	NL	1	\N
2377	torrejo01	1973	0	ALS197307240	SLN	1636	NL	1	\N
2378	twitcwa01	1973	0	ALS197307240	PHI	1632	NL	1	\N
2379	watsobo01	1973	0	ALS197307240	HOU	1623	NL	1	\N
2380	perryga01	1974	0	NLS197407230	CLE	1645	AL	1	1
2381	munsoth01	1974	0	NLS197407230	NYA	1653	AL	1	2
2382	allendi01	1974	0	NLS197407230	CHA	1642	AL	1	3
2383	carewro01	1974	0	NLS197407230	MIN	1650	AL	1	4
2384	robinbr01	1974	0	NLS197407230	BAL	1639	AL	1	5
2385	campabe01	1974	0	NLS197407230	OAK	1655	AL	1	6
2386	burroje01	1974	0	NLS197407230	TEX	1661	AL	1	7
2387	murcebo01	1974	0	NLS197407230	NYA	1653	AL	1	8
2388	jacksre01	1974	0	NLS197407230	OAK	1655	AL	1	9
2389	bandosa01	1974	0	NLS197407230	OAK	1655	AL	0	\N
2390	busbyst01	1974	0	NLS197407230	KCA	1648	AL	0	\N
2391	chalkda01	1974	0	NLS197407230	CAL	1641	AL	1	\N
2392	cuellmi01	1974	0	NLS197407230	BAL	1639	AL	0	\N
2393	fingero01	1974	0	NLS197407230	OAK	1655	AL	1	\N
2394	fiskca01	1974	0	NLS197407230	BOS	1640	AL	0	\N
2395	grichbo01	1974	0	NLS197407230	BAL	1639	AL	1	\N
2396	hendrge01	1974	0	NLS197407230	CLE	1645	AL	1	\N
2397	herrmed01	1974	0	NLS197407230	CHA	1642	AL	0	\N
2398	hillejo01	1974	0	NLS197407230	DET	1646	AL	0	\N
2399	hunteca01	1974	0	NLS197407230	OAK	1655	AL	1	\N
2400	kalinal01	1974	0	NLS197407230	DET	1646	AL	1	\N
2401	maybejo01	1974	0	NLS197407230	KCA	1648	AL	1	\N
2402	moneydo01	1974	0	NLS197407230	ML4	1651	AL	0	\N
2403	porteda02	1974	0	NLS197407230	ML4	1651	AL	0	\N
2404	robinfr02	1974	0	NLS197407230	CAL	1641	AL	1	\N
2405	rojasco01	1974	0	NLS197407230	KCA	1648	AL	0	\N
2406	rudijo01	1974	0	NLS197407230	OAK	1655	AL	1	\N
2407	sundbji01	1974	0	NLS197407230	TEX	1661	AL	0	\N
2408	tiantlu01	1974	0	NLS197407230	BOS	1640	AL	1	\N
2409	woodwi01	1974	0	NLS197407230	CHA	1642	AL	0	\N
2410	yastrca01	1974	0	NLS197407230	BOS	1640	AL	1	\N
2411	messean01	1974	0	NLS197407230	LAN	1649	NL	1	1
2412	benchjo01	1974	0	NLS197407230	CIN	1644	NL	1	2
2413	garvest01	1974	0	NLS197407230	LAN	1649	NL	1	3
2414	morgajo02	1974	0	NLS197407230	CIN	1644	NL	1	4
2415	ceyro01	1974	0	NLS197407230	LAN	1649	NL	1	5
2416	bowala01	1974	0	NLS197407230	PHI	1656	NL	1	6
2417	rosepe01	1974	0	NLS197407230	CIN	1644	NL	1	7
2418	wynnji01	1974	0	NLS197407230	LAN	1649	NL	1	8
2419	aaronha01	1974	0	NLS197407230	ATL	1638	NL	1	9
2420	brettke01	1974	0	NLS197407230	PIT	1657	NL	1	\N
2421	brocklo01	1974	0	NLS197407230	SLN	1660	NL	1	\N
2422	caprabu01	1974	0	NLS197407230	ATL	1638	NL	0	\N
2423	carltst01	1974	0	NLS197407230	PHI	1656	NL	0	\N
2424	cashda01	1974	0	NLS197407230	PHI	1656	NL	1	\N
2425	cedence01	1974	0	NLS197407230	HOU	1647	NL	1	\N
2426	garrra01	1974	0	NLS197407230	ATL	1638	NL	1	\N
2427	groteje01	1974	0	NLS197407230	NYN	1654	NL	1	\N
2428	grubbjo01	1974	0	NLS197407230	SDN	1658	NL	1	\N
2429	kessido01	1974	0	NLS197407230	CHN	1643	NL	1	\N
2430	marshmi01	1974	0	NLS197407230	LAN	1649	NL	1	\N
2431	matlajo01	1974	0	NLS197407230	NYN	1654	NL	1	\N
2432	mcgloly01	1974	0	NLS197407230	SLN	1660	NL	1	\N
2433	perezto01	1974	0	NLS197407230	CIN	1644	NL	1	\N
2434	rogerst01	1974	0	NLS197407230	MON	1652	NL	0	\N
2435	schmimi01	1974	0	NLS197407230	PHI	1656	NL	1	\N
2436	simmote01	1974	0	NLS197407230	SLN	1660	NL	0	\N
2437	smithre06	1974	0	NLS197407230	SLN	1660	NL	1	\N
2438	speiech01	1974	0	NLS197407230	SFN	1659	NL	0	\N
2439	bluevi01	1975	0	ALS197507150	OAK	1679	AL	1	1
2440	munsoth01	1975	0	ALS197507150	NYA	1677	AL	1	2
2441	tenacge01	1975	0	ALS197507150	OAK	1679	AL	1	3
2442	carewro01	1975	0	ALS197507150	MIN	1674	AL	1	4
2443	nettlgr01	1975	0	ALS197507150	NYA	1677	AL	1	5
2444	campabe01	1975	0	ALS197507150	OAK	1679	AL	1	6
2445	rudijo01	1975	0	ALS197507150	OAK	1679	AL	1	7
2446	bondsbo01	1975	0	ALS197507150	NYA	1677	AL	1	8
2447	jacksre01	1975	0	ALS197507150	OAK	1679	AL	1	9
2448	aaronha01	1975	0	ALS197507150	ML4	1675	AL	1	\N
2449	busbyst01	1975	0	ALS197507150	KCA	1672	AL	1	\N
2450	chalkda01	1975	0	ALS197507150	CAL	1665	AL	0	\N
2451	dentbu01	1975	0	ALS197507150	CHA	1666	AL	1	\N
2452	fingero01	1975	0	ALS197507150	OAK	1679	AL	0	\N
2453	freehbi01	1975	0	ALS197507150	DET	1670	AL	0	\N
2454	gossari01	1975	0	ALS197507150	CHA	1666	AL	1	\N
2455	hargrmi01	1975	0	ALS197507150	TEX	1685	AL	1	\N
2456	harrato01	1975	0	ALS197507150	TEX	1685	AL	0	\N
2457	hendrge01	1975	0	ALS197507150	CLE	1669	AL	1	\N
2458	hunteca01	1975	0	ALS197507150	NYA	1677	AL	1	\N
2459	kaatji01	1975	0	ALS197507150	CHA	1666	AL	1	\N
2460	lynnfr01	1975	0	ALS197507150	BOS	1664	AL	1	\N
2461	mcraeha01	1975	0	ALS197507150	KCA	1672	AL	1	\N
2462	ortajo01	1975	0	ALS197507150	CHA	1666	AL	0	\N
2463	palmeji01	1975	0	ALS197507150	BAL	1663	AL	0	\N
2464	ryanno01	1975	0	ALS197507150	CAL	1665	AL	0	\N
2465	scottge02	1975	0	ALS197507150	ML4	1675	AL	1	\N
2466	washicl01	1975	0	ALS197507150	OAK	1679	AL	1	\N
2467	yastrca01	1975	0	ALS197507150	BOS	1664	AL	1	\N
2468	reussje01	1975	0	ALS197507150	PIT	1681	NL	1	1
2469	benchjo01	1975	0	ALS197507150	CIN	1668	NL	1	2
2470	garvest01	1975	0	ALS197507150	LAN	1673	NL	1	3
2471	morgajo02	1975	0	ALS197507150	CIN	1668	NL	1	4
2472	ceyro01	1975	0	ALS197507150	LAN	1673	NL	1	5
2473	conceda01	1975	0	ALS197507150	CIN	1668	NL	1	6
2474	brocklo01	1975	0	ALS197507150	SLN	1684	NL	1	7
2475	wynnji01	1975	0	ALS197507150	LAN	1673	NL	1	8
2476	rosepe01	1975	0	ALS197507150	CIN	1668	NL	1	9
2477	bowala01	1975	0	ALS197507150	PHI	1680	NL	1	\N
2478	cartega01	1975	0	ALS197507150	MON	1676	NL	1	\N
2479	cashda01	1975	0	ALS197507150	PHI	1680	NL	1	\N
2480	jonesra01	1975	0	ALS197507150	SDN	1682	NL	1	\N
2481	luzingr01	1975	0	ALS197507150	PHI	1680	NL	1	\N
2482	madlobi01	1975	0	ALS197507150	CHN	1667	NL	1	\N
2483	marshmi01	1975	0	ALS197507150	LAN	1673	NL	0	\N
2484	matlajo01	1975	0	ALS197507150	NYN	1678	NL	1	\N
2485	mcgratu01	1975	0	ALS197507150	PHI	1680	NL	0	\N
2486	messean01	1975	0	ALS197507150	LAN	1673	NL	0	\N
2487	murcebo01	1975	0	ALS197507150	SFN	1683	NL	1	\N
2488	niekrph01	1975	0	ALS197507150	ATL	1662	NL	0	\N
2489	oliveal01	1975	0	ALS197507150	PIT	1681	NL	1	\N
2490	perezto01	1975	0	ALS197507150	CIN	1668	NL	1	\N
2491	sanguma01	1975	0	ALS197507150	PIT	1681	NL	0	\N
2492	seaveto01	1975	0	ALS197507150	NYN	1678	NL	1	\N
2493	smithre06	1975	0	ALS197507150	SLN	1684	NL	1	\N
2494	suttodo01	1975	0	ALS197507150	LAN	1673	NL	1	\N
2495	watsobo01	1975	0	ALS197507150	HOU	1671	NL	1	\N
2496	fidryma01	1976	0	NLS197607130	DET	1694	AL	1	1
2497	munsoth01	1976	0	NLS197607130	NYA	1701	AL	1	2
2498	carewro01	1976	0	NLS197607130	MIN	1698	AL	1	3
2499	grichbo01	1976	0	NLS197607130	BAL	1687	AL	1	4
2500	brettge01	1976	0	NLS197607130	KCA	1696	AL	1	5
2501	harrato01	1976	0	NLS197607130	TEX	1709	AL	1	6
2502	lefloro01	1976	0	NLS197607130	DET	1694	AL	1	7
2503	lynnfr01	1976	0	NLS197607130	BOS	1688	AL	1	8
2504	staubru01	1976	0	NLS197607130	DET	1694	AL	1	9
2505	belanma01	1976	0	NLS197607130	BAL	1687	AL	1	\N
2506	chambch01	1976	0	NLS197607130	NYA	1701	AL	1	\N
2507	fingero01	1976	0	NLS197607130	OAK	1703	AL	0	\N
2508	fiskca01	1976	0	NLS197607130	BOS	1688	AL	1	\N
2509	garneph01	1976	0	NLS197607130	OAK	1703	AL	1	\N
2510	gossari01	1976	0	NLS197607130	CHA	1690	AL	0	\N
2511	hunteca01	1976	0	NLS197607130	NYA	1701	AL	1	\N
2512	larocda01	1976	0	NLS197607130	CLE	1693	AL	0	\N
2513	lylesp01	1976	0	NLS197607130	NYA	1701	AL	0	\N
2514	mcraeha01	1976	0	NLS197607130	KCA	1696	AL	1	\N
2515	moneydo01	1976	0	NLS197607130	ML4	1699	AL	1	\N
2516	otisam01	1976	0	NLS197607130	KCA	1696	AL	1	\N
2517	patekfr01	1976	0	NLS197607130	KCA	1696	AL	1	\N
2518	randowi01	1976	0	NLS197607130	NYA	1701	AL	0	\N
2519	rivermi01	1976	0	NLS197607130	NYA	1701	AL	1	\N
2520	tananfr01	1976	0	NLS197607130	CAL	1689	AL	1	\N
2521	tiantlu01	1976	0	NLS197607130	BOS	1688	AL	1	\N
2522	travebi01	1976	0	NLS197607130	ML4	1699	AL	0	\N
2523	wynegbu01	1976	0	NLS197607130	MIN	1698	AL	1	\N
2524	yastrca01	1976	0	NLS197607130	BOS	1688	AL	1	\N
2525	jonesra01	1976	0	NLS197607130	SDN	1706	NL	1	1
2526	benchjo01	1976	0	NLS197607130	CIN	1692	NL	1	2
2527	garvest01	1976	0	NLS197607130	LAN	1697	NL	1	3
2528	morgajo02	1976	0	NLS197607130	CIN	1692	NL	1	4
2529	rosepe01	1976	0	NLS197607130	CIN	1692	NL	1	5
2530	conceda01	1976	0	NLS197607130	CIN	1692	NL	1	6
2531	luzingr01	1976	0	NLS197607130	PHI	1704	NL	1	7
2532	fostege01	1976	0	NLS197607130	CIN	1692	NL	1	8
2533	kingmda01	1976	0	NLS197607130	NYN	1702	NL	1	9
2534	boonebo01	1976	0	NLS197607130	PHI	1704	NL	1	\N
2535	bowala01	1976	0	NLS197607130	PHI	1704	NL	1	\N
2536	cashda01	1976	0	NLS197607130	PHI	1704	NL	1	\N
2537	cedence01	1976	0	NLS197607130	HOU	1695	NL	1	\N
2538	ceyro01	1976	0	NLS197607130	LAN	1697	NL	1	\N
2539	forscke01	1976	0	NLS197607130	HOU	1695	NL	1	\N
2540	frymawo01	1976	0	NLS197607130	MON	1700	NL	0	\N
2541	griffke01	1976	0	NLS197607130	CIN	1692	NL	1	\N
2542	matlajo01	1976	0	NLS197607130	NYN	1702	NL	0	\N
2543	mcbriba01	1976	0	NLS197607130	SLN	1708	NL	0	\N
2544	messean01	1976	0	NLS197607130	ATL	1686	NL	0	\N
2545	montejo01	1976	0	NLS197607130	SFN	1707	NL	1	\N
2546	oliveal01	1976	0	NLS197607130	PIT	1705	NL	1	\N
2547	perezto01	1976	0	NLS197607130	CIN	1692	NL	1	\N
2548	rhoderi01	1976	0	NLS197607130	LAN	1697	NL	1	\N
2549	russebi01	1976	0	NLS197607130	LAN	1697	NL	1	\N
2550	ruthvdi01	1976	0	NLS197607130	ATL	1686	NL	0	\N
2551	schmimi01	1976	0	NLS197607130	PHI	1704	NL	1	\N
2552	seaveto01	1976	0	NLS197607130	NYN	1702	NL	1	\N
2553	swishst01	1976	0	NLS197607130	CHN	1691	NL	0	\N
2554	palmeji01	1977	0	ALS197707190	BAL	1711	AL	1	1
2555	fiskca01	1977	0	ALS197707190	BOS	1712	AL	1	2
2556	carewro01	1977	0	ALS197707190	MIN	1722	AL	1	3
2557	randowi01	1977	0	ALS197707190	NYA	1725	AL	1	4
2558	brettge01	1977	0	ALS197707190	KCA	1720	AL	1	5
2559	burleri01	1977	0	ALS197707190	BOS	1712	AL	1	6
2560	ziskri01	1977	0	ALS197707190	CHA	1714	AL	1	7
2561	yastrca01	1977	0	ALS197707190	BOS	1712	AL	1	8
2562	jacksre01	1977	0	ALS197707190	NYA	1725	AL	1	9
2563	bluevi01	1977	0	ALS197707190	OAK	1727	AL	0	\N
2564	campabe01	1977	0	ALS197707190	TEX	1734	AL	1	\N
2565	campbbi02	1977	0	ALS197707190	BOS	1712	AL	1	\N
2566	eckerde01	1977	0	ALS197707190	CLE	1717	AL	1	\N
2567	fairlro01	1977	0	ALS197707190	TOR	1735	AL	1	\N
2568	fidryma01	1977	0	ALS197707190	DET	1718	AL	0	\N
2569	grosswa01	1977	0	ALS197707190	OAK	1727	AL	0	\N
2570	hislela01	1977	0	ALS197707190	MIN	1722	AL	1	\N
2571	jonesru01	1977	0	ALS197707190	SEA	1731	AL	1	\N
2572	kernji01	1977	0	ALS197707190	CLE	1717	AL	1	\N
2573	larocda01	1977	0	ALS197707190	CAL	1713	AL	1	\N
2574	lylesp01	1977	0	ALS197707190	NYA	1725	AL	1	\N
2575	lynnfr01	1977	0	ALS197707190	BOS	1712	AL	1	\N
2576	moneydo01	1977	0	ALS197707190	ML4	1723	AL	0	\N
2577	munsoth01	1977	0	ALS197707190	NYA	1725	AL	1	\N
2578	nettlgr01	1977	0	ALS197707190	NYA	1725	AL	1	\N
2579	riceji01	1977	0	ALS197707190	BOS	1712	AL	1	\N
2580	ryanno01	1977	0	ALS197707190	CAL	1713	AL	0	\N
2581	scottge02	1977	0	ALS197707190	BOS	1712	AL	1	\N
2582	singlke01	1977	0	ALS197707190	BAL	1711	AL	1	\N
2583	slatoji01	1977	0	ALS197707190	ML4	1723	AL	0	\N
2584	tananfr01	1977	0	ALS197707190	CAL	1713	AL	0	\N
2585	thompja01	1977	0	ALS197707190	DET	1718	AL	0	\N
2586	wynegbu01	1977	0	ALS197707190	MIN	1722	AL	1	\N
2587	suttodo01	1977	0	ALS197707190	LAN	1721	NL	1	1
2588	benchjo01	1977	0	ALS197707190	CIN	1716	NL	1	2
2589	garvest01	1977	0	ALS197707190	LAN	1721	NL	1	3
2590	morgajo02	1977	0	ALS197707190	CIN	1716	NL	1	4
2591	ceyro01	1977	0	ALS197707190	LAN	1721	NL	1	5
2592	conceda01	1977	0	ALS197707190	CIN	1716	NL	1	6
2593	luzingr01	1977	0	ALS197707190	PHI	1728	NL	1	7
2594	fostege01	1977	0	ALS197707190	CIN	1716	NL	1	8
2595	parkeda01	1977	0	ALS197707190	PIT	1729	NL	1	9
2596	andujjo01	1977	0	ALS197707190	HOU	1719	NL	0	\N
2597	candejo01	1977	0	ALS197707190	PIT	1729	NL	0	\N
2598	carltst01	1977	0	ALS197707190	PHI	1728	NL	0	\N
2599	gossari01	1977	0	ALS197707190	PIT	1729	NL	1	\N
2600	griffke01	1977	0	ALS197707190	CIN	1716	NL	0	\N
2601	lavelga01	1977	0	ALS197707190	SFN	1732	NL	1	\N
2602	montawi01	1977	0	ALS197707190	ATL	1710	NL	1	\N
2603	moralje01	1977	0	ALS197707190	CHN	1715	NL	1	\N
2604	reuscri01	1977	0	ALS197707190	CHN	1715	NL	1	\N
2605	rosepe01	1977	0	ALS197707190	CIN	1716	NL	1	\N
2606	schmimi01	1977	0	ALS197707190	PHI	1728	NL	1	\N
2607	seaveto01	1977	0	ALS197707190	NYN	1726	NL	1	\N
2608	simmote01	1977	0	ALS197707190	SLN	1733	NL	1	\N
2609	smithre06	1977	0	ALS197707190	LAN	1721	NL	1	\N
2610	stearjo01	1977	0	ALS197707190	NYN	1726	NL	1	\N
2611	suttebr01	1977	0	ALS197707190	CHN	1715	NL	0	\N
2612	templga01	1977	0	ALS197707190	SLN	1733	NL	1	\N
2613	trillma01	1977	0	ALS197707190	CHN	1715	NL	1	\N
2614	valenel01	1977	0	ALS197707190	MON	1724	NL	1	\N
2615	winfida01	1977	0	ALS197707190	SDN	1730	NL	1	\N
2616	palmeji01	1978	0	NLS197807110	BAL	1737	AL	1	1
2617	fiskca01	1978	0	NLS197807110	BOS	1738	AL	1	2
2618	carewro01	1978	0	NLS197807110	MIN	1748	AL	1	3
2619	moneydo01	1978	0	NLS197807110	ML4	1749	AL	1	4
2620	brettge01	1978	0	NLS197807110	KCA	1746	AL	1	5
2621	patekfr01	1978	0	NLS197807110	KCA	1746	AL	1	6
2622	riceji01	1978	0	NLS197807110	BOS	1738	AL	1	7
2623	lynnfr01	1978	0	NLS197807110	BOS	1738	AL	1	8
2624	ziskri01	1978	0	NLS197807110	TEX	1760	AL	1	9
2625	burleri01	1978	0	NLS197807110	BOS	1738	AL	0	\N
2626	evansdw01	1978	0	NLS197807110	BOS	1738	AL	1	\N
2627	flanami01	1978	0	NLS197807110	BAL	1737	AL	0	\N
2628	gossari01	1978	0	NLS197807110	NYA	1751	AL	1	\N
2629	guidrro01	1978	0	NLS197807110	NYA	1751	AL	1	\N
2630	hislela01	1978	0	NLS197807110	ML4	1749	AL	1	\N
2631	howelro02	1978	0	NLS197807110	TOR	1761	AL	1	\N
2632	jacksre01	1978	0	NLS197807110	NYA	1751	AL	0	\N
2633	keougma02	1978	0	NLS197807110	OAK	1753	AL	1	\N
2634	kernji01	1978	0	NLS197807110	CLE	1743	AL	1	\N
2635	lemonch01	1978	0	NLS197807110	CHA	1740	AL	1	\N
2636	munsoth01	1978	0	NLS197807110	NYA	1751	AL	0	\N
2637	murraed02	1978	0	NLS197807110	BAL	1737	AL	0	\N
2638	nettlgr01	1978	0	NLS197807110	NYA	1751	AL	1	\N
2639	porteda02	1978	0	NLS197807110	KCA	1746	AL	1	\N
2640	remyje01	1978	0	NLS197807110	BOS	1738	AL	0	\N
2641	reynocr01	1978	0	NLS197807110	SEA	1757	AL	0	\N
2642	sorenla01	1978	0	NLS197807110	ML4	1749	AL	1	\N
2643	sundbji01	1978	0	NLS197807110	TEX	1760	AL	1	\N
2644	tananfr01	1978	0	NLS197807110	CAL	1739	AL	0	\N
2645	thompja01	1978	0	NLS197807110	DET	1744	AL	1	\N
2646	whitefr01	1978	0	NLS197807110	KCA	1746	AL	1	\N
2647	yastrca01	1978	0	NLS197807110	BOS	1738	AL	0	\N
2648	bluevi01	1978	0	NLS197807110	SFN	1758	NL	1	1
2649	simmote01	1978	0	NLS197807110	SLN	1759	NL	1	2
2650	garvest01	1978	0	NLS197807110	LAN	1747	NL	1	3
2651	morgajo02	1978	0	NLS197807110	CIN	1742	NL	1	4
2652	rosepe01	1978	0	NLS197807110	CIN	1742	NL	1	5
2653	bowala01	1978	0	NLS197807110	PHI	1754	NL	1	6
2654	luzingr01	1978	0	NLS197807110	PHI	1754	NL	1	7
2655	fostege01	1978	0	NLS197807110	CIN	1742	NL	1	8
2656	mondari01	1978	0	NLS197807110	LAN	1747	NL	1	9
2657	benchjo01	1978	0	NLS197807110	CIN	1742	NL	0	\N
2658	boonebo01	1978	0	NLS197807110	PHI	1754	NL	1	\N
2659	burroje01	1978	0	NLS197807110	ATL	1736	NL	0	\N
2660	ceyro01	1978	0	NLS197807110	LAN	1747	NL	1	\N
2661	clarkja01	1978	0	NLS197807110	SFN	1758	NL	1	\N
2662	conceda01	1978	0	NLS197807110	CIN	1742	NL	1	\N
2663	fingero01	1978	0	NLS197807110	SDN	1756	NL	1	\N
2664	grimsro02	1978	0	NLS197807110	MON	1750	NL	0	\N
2665	johnto01	1978	0	NLS197807110	LAN	1747	NL	0	\N
2666	lopesda01	1978	0	NLS197807110	LAN	1747	NL	1	\N
2667	niekrph01	1978	0	NLS197807110	ATL	1736	NL	1	\N
2668	pocorbi01	1978	0	NLS197807110	ATL	1736	NL	1	\N
2669	puhlte01	1978	0	NLS197807110	HOU	1745	NL	0	\N
2670	rogerst01	1978	0	NLS197807110	MON	1750	NL	1	\N
2671	seaveto01	1978	0	NLS197807110	CIN	1742	NL	0	\N
2672	smithre06	1978	0	NLS197807110	LAN	1747	NL	1	\N
2673	stargwi01	1978	0	NLS197807110	PIT	1755	NL	1	\N
2674	suttebr01	1978	0	NLS197807110	CHN	1741	NL	1	\N
2675	winfida01	1978	0	NLS197807110	SDN	1756	NL	1	\N
2676	zachrpa01	1978	0	NLS197807110	NYN	1752	NL	0	\N
2677	ryanno01	1979	0	ALS197907170	CAL	1765	AL	1	1
2678	porteda02	1979	0	ALS197907170	KCA	1772	AL	1	2
2679	yastrca01	1979	0	ALS197907170	BOS	1764	AL	1	3
2680	whitefr01	1979	0	ALS197907170	KCA	1772	AL	1	4
2681	brettge01	1979	0	ALS197907170	KCA	1772	AL	1	5
2682	smallro02	1979	0	ALS197907170	MIN	1774	AL	1	6
2683	baylodo01	1979	0	ALS197907170	CAL	1765	AL	1	7
2684	lynnfr01	1979	0	ALS197907170	BOS	1764	AL	1	8
2685	riceji01	1979	0	ALS197907170	BOS	1764	AL	1	9
2686	bochtbr01	1979	0	ALS197907170	SEA	1783	AL	1	\N
2687	burleri01	1979	0	ALS197907170	BOS	1764	AL	1	\N
2688	carewro01	1979	0	ALS197907170	CAL	1765	AL	0	\N
2689	clearma01	1979	0	ALS197907170	CAL	1765	AL	1	\N
2690	coopece01	1979	0	ALS197907170	ML4	1775	AL	1	\N
2691	downibr01	1979	0	ALS197907170	CAL	1765	AL	1	\N
2692	grichbo01	1979	0	ALS197907170	CAL	1765	AL	1	\N
2693	guidrro01	1979	0	ALS197907170	NYA	1777	AL	1	\N
2694	jacksre01	1979	0	ALS197907170	NYA	1777	AL	1	\N
2695	johnto01	1979	0	ALS197907170	NYA	1777	AL	0	\N
2696	kempst01	1979	0	ALS197907170	DET	1770	AL	1	\N
2697	kernji01	1979	0	ALS197907170	TEX	1786	AL	1	\N
2698	lemanda01	1979	0	ALS197907170	TOR	1787	AL	0	\N
2699	lemonch01	1979	0	ALS197907170	CHA	1766	AL	1	\N
2700	mongesi01	1979	0	ALS197907170	CLE	1769	AL	0	\N
2701	nettlgr01	1979	0	ALS197907170	NYA	1777	AL	1	\N
2702	newmaje01	1979	0	ALS197907170	OAK	1779	AL	0	\N
2703	singlke01	1979	0	ALS197907170	BAL	1763	AL	1	\N
2704	stanhdo01	1979	0	ALS197907170	BAL	1763	AL	0	\N
2705	stanlbo01	1979	0	ALS197907170	BOS	1764	AL	1	\N
2706	carltst01	1979	0	ALS197907170	PHI	1780	NL	1	1
2707	boonebo01	1979	0	ALS197907170	PHI	1780	NL	1	2
2708	garvest01	1979	0	ALS197907170	LAN	1773	NL	1	3
2709	lopesda01	1979	0	ALS197907170	LAN	1773	NL	1	4
2710	schmimi01	1979	0	ALS197907170	PHI	1780	NL	1	5
2711	bowala01	1979	0	ALS197907170	PHI	1780	NL	1	6
2712	fostege01	1979	0	ALS197907170	CIN	1768	NL	1	7
2713	winfida01	1979	0	ALS197907170	SDN	1782	NL	1	8
2714	parkeda01	1979	0	ALS197907170	PIT	1781	NL	1	9
2715	andujjo01	1979	0	ALS197907170	HOU	1771	NL	1	\N
2716	benchjo01	1979	0	ALS197907170	CIN	1768	NL	0	\N
2717	brocklo01	1979	0	ALS197907170	SLN	1785	NL	1	\N
2718	cartega01	1979	0	ALS197907170	MON	1776	NL	1	\N
2719	ceyro01	1979	0	ALS197907170	LAN	1773	NL	1	\N
2720	clarkja01	1979	0	ALS197907170	SFN	1784	NL	1	\N
2721	conceda01	1979	0	ALS197907170	CIN	1768	NL	0	\N
2722	hernake01	1979	0	ALS197907170	SLN	1785	NL	1	\N
2723	kingmda01	1979	0	ALS197907170	CHN	1767	NL	0	\N
2724	lacosmi01	1979	0	ALS197907170	CIN	1768	NL	1	\N
2725	matthga01	1979	0	ALS197907170	ATL	1762	NL	1	\N
2726	mazzile01	1979	0	ALS197907170	NYN	1778	NL	1	\N
2727	morgajo02	1979	0	ALS197907170	CIN	1768	NL	1	\N
2728	niekrjo01	1979	0	ALS197907170	HOU	1771	NL	0	\N
2729	parrila01	1979	0	ALS197907170	MON	1776	NL	1	\N
2730	perryga01	1979	0	ALS197907170	SDN	1782	NL	1	\N
2731	reynocr01	1979	0	ALS197907170	HOU	1771	NL	1	\N
2732	rogerst01	1979	0	ALS197907170	MON	1776	NL	1	\N
2733	rosepe01	1979	0	ALS197907170	PHI	1780	NL	1	\N
2734	sambijo01	1979	0	ALS197907170	HOU	1771	NL	1	\N
2735	simmote01	1979	0	ALS197907170	SLN	1785	NL	0	\N
2736	stearjo01	1979	0	ALS197907170	NYN	1778	NL	0	\N
2737	suttebr01	1979	0	ALS197907170	CHN	1767	NL	1	\N
2738	templga01	1979	0	ALS197907170	SLN	1785	NL	0	\N
2739	stonest01	1980	0	NLS198007080	BAL	1789	AL	1	1
2740	fiskca01	1980	0	NLS198007080	BOS	1790	AL	1	2
2741	carewro01	1980	0	NLS198007080	CAL	1791	AL	1	3
2742	randowi01	1980	0	NLS198007080	NYA	1803	AL	1	4
2743	nettlgr01	1980	0	NLS198007080	NYA	1803	AL	1	5
2744	dentbu01	1980	0	NLS198007080	NYA	1803	AL	1	6
2745	oglivbe01	1980	0	NLS198007080	ML4	1801	AL	1	7
2746	lynnfr01	1980	0	NLS198007080	BOS	1790	AL	1	8
2747	jacksre01	1980	0	NLS198007080	NYA	1803	AL	1	9
2748	bellbu01	1980	0	NLS198007080	TEX	1812	AL	1	\N
2749	brettge01	1980	0	NLS198007080	KCA	1798	AL	0	\N
2750	bumbral01	1980	0	NLS198007080	BAL	1789	AL	1	\N
2751	burgmto01	1980	0	NLS198007080	BOS	1790	AL	0	\N
2752	coopece01	1980	0	NLS198007080	ML4	1801	AL	1	\N
2753	farmeed01	1980	0	NLS198007080	CHA	1792	AL	1	\N
2754	gossari01	1980	0	NLS198007080	NYA	1803	AL	1	\N
2755	grichbo01	1980	0	NLS198007080	CAL	1791	AL	1	\N
2756	gurala01	1980	0	NLS198007080	KCA	1798	AL	0	\N
2757	henderi01	1980	0	NLS198007080	OAK	1805	AL	1	\N
2758	honeyri01	1980	0	NLS198007080	SEA	1809	AL	0	\N
2759	johnto01	1980	0	NLS198007080	NYA	1803	AL	1	\N
2760	landrke01	1980	0	NLS198007080	MIN	1800	AL	1	\N
2761	molitpa01	1980	0	NLS198007080	ML4	1801	AL	0	\N
2762	oliveal01	1980	0	NLS198007080	TEX	1812	AL	1	\N
2763	ortajo01	1980	0	NLS198007080	CLE	1795	AL	0	\N
2764	parrila02	1980	0	NLS198007080	DET	1796	AL	1	\N
2765	porteda02	1980	0	NLS198007080	KCA	1798	AL	1	\N
2766	riceji01	1980	0	NLS198007080	BOS	1790	AL	0	\N
2767	stiebda01	1980	0	NLS198007080	TOR	1813	AL	1	\N
2768	trammal01	1980	0	NLS198007080	DET	1796	AL	1	\N
2769	yountro01	1980	0	NLS198007080	ML4	1801	AL	1	\N
2770	richajr01	1980	0	NLS198007080	HOU	1797	NL	1	1
2771	benchjo01	1980	0	NLS198007080	CIN	1794	NL	1	2
2772	garvest01	1980	0	NLS198007080	LAN	1799	NL	1	3
2773	lopesda01	1980	0	NLS198007080	LAN	1799	NL	1	4
2774	reitzke01	1980	0	NLS198007080	SLN	1811	NL	1	5
2775	russebi01	1980	0	NLS198007080	LAN	1799	NL	1	6
2776	kingmda01	1980	0	NLS198007080	CHN	1793	NL	1	7
2777	smithre06	1980	0	NLS198007080	LAN	1799	NL	1	8
2778	parkeda01	1980	0	NLS198007080	PIT	1807	NL	1	9
2779	bibbyji01	1980	0	NLS198007080	PIT	1807	NL	1	\N
2780	bluevi01	1980	0	NLS198007080	SFN	1810	NL	0	\N
2781	carltst01	1980	0	NLS198007080	PHI	1806	NL	0	\N
2782	cartega01	1980	0	NLS198007080	MON	1802	NL	1	\N
2783	conceda01	1980	0	NLS198007080	CIN	1794	NL	1	\N
2784	cruzjo01	1980	0	NLS198007080	HOU	1797	NL	0	\N
2785	garneph01	1980	0	NLS198007080	PIT	1807	NL	1	\N
2786	griffke01	1980	0	NLS198007080	CIN	1794	NL	1	\N
2787	hendrge01	1980	0	NLS198007080	SLN	1811	NL	1	\N
2788	hernake01	1980	0	NLS198007080	SLN	1811	NL	1	\N
2789	knighra01	1980	0	NLS198007080	CIN	1794	NL	1	\N
2790	murphda05	1980	0	NLS198007080	ATL	1788	NL	1	\N
2791	reussje01	1980	0	NLS198007080	LAN	1799	NL	1	\N
2792	rosepe01	1980	0	NLS198007080	PHI	1806	NL	1	\N
2793	schmimi01	1980	0	NLS198007080	PHI	1806	NL	0	\N
2794	stearjo01	1980	0	NLS198007080	NYN	1804	NL	1	\N
2795	suttebr01	1980	0	NLS198007080	CHN	1793	NL	1	\N
2796	tekulke01	1980	0	NLS198007080	PIT	1807	NL	0	\N
2797	welchbo01	1980	0	NLS198007080	LAN	1799	NL	1	\N
2798	whitsed01	1980	0	NLS198007080	SFN	1810	NL	0	\N
2799	winfida01	1980	0	NLS198007080	SDN	1808	NL	1	\N
2800	morrija02	1981	0	ALS198108090	DET	1822	AL	1	1
2801	fiskca01	1981	0	ALS198108090	CHA	1818	AL	1	2
2802	carewro01	1981	0	ALS198108090	CAL	1817	AL	1	3
2803	randowi01	1981	0	ALS198108090	NYA	1829	AL	1	4
2804	brettge01	1981	0	ALS198108090	KCA	1824	AL	1	5
2805	dentbu01	1981	0	ALS198108090	NYA	1829	AL	1	6
2806	singlke01	1981	0	ALS198108090	BAL	1815	AL	1	7
2807	winfida01	1981	0	ALS198108090	NYA	1829	AL	1	8
2808	jacksre01	1981	0	ALS198108090	NYA	1829	AL	1	9
2809	armasto01	1981	0	ALS198108090	OAK	1831	AL	1	\N
2810	barkele01	1981	0	ALS198108090	CLE	1821	AL	1	\N
2811	bellbu01	1981	0	ALS198108090	TEX	1838	AL	1	\N
2812	burleri01	1981	0	ALS198108090	CAL	1817	AL	1	\N
2813	burnsbr01	1981	0	ALS198108090	CHA	1818	AL	0	\N
2814	corbedo01	1981	0	ALS198108090	MIN	1826	AL	0	\N
2815	davisro02	1981	0	ALS198108090	NYA	1829	AL	1	\N
2816	diazbo01	1981	0	ALS198108090	CLE	1821	AL	1	\N
2817	evansdw01	1981	0	ALS198108090	BOS	1816	AL	1	\N
2818	fingero01	1981	0	ALS198108090	ML4	1827	AL	1	\N
2819	forscke01	1981	0	ALS198108090	CAL	1817	AL	1	\N
2820	gossari01	1981	0	ALS198108090	NYA	1829	AL	0	\N
2821	lynnfr01	1981	0	ALS198108090	CAL	1817	AL	1	\N
2822	mcgresc01	1981	0	ALS198108090	BAL	1815	AL	0	\N
2823	murraed02	1981	0	ALS198108090	BAL	1815	AL	1	\N
2824	norrimi01	1981	0	ALS198108090	OAK	1831	AL	1	\N
2825	oliveal01	1981	0	ALS198108090	TEX	1838	AL	1	\N
2826	pacioto01	1981	0	ALS198108090	SEA	1835	AL	1	\N
2827	simmote01	1981	0	ALS198108090	ML4	1827	AL	1	\N
2828	stiebda01	1981	0	ALS198108090	TOR	1839	AL	1	\N
2829	thomago01	1981	0	ALS198108090	ML4	1827	AL	1	\N
2830	whitefr01	1981	0	ALS198108090	KCA	1824	AL	1	\N
2831	valenfe01	1981	0	ALS198108090	LAN	1825	NL	1	1
2832	cartega01	1981	0	ALS198108090	MON	1828	NL	1	2
2833	rosepe01	1981	0	ALS198108090	PHI	1832	NL	1	3
2834	lopesda01	1981	0	ALS198108090	LAN	1825	NL	1	4
2835	schmimi01	1981	0	ALS198108090	PHI	1832	NL	1	5
2836	conceda01	1981	0	ALS198108090	CIN	1820	NL	1	6
2837	fostege01	1981	0	ALS198108090	CIN	1820	NL	1	7
2838	dawsoan01	1981	0	ALS198108090	MON	1828	NL	1	8
2839	parkeda01	1981	0	ALS198108090	PIT	1833	NL	1	9
2840	bakerdu01	1981	0	ALS198108090	LAN	1825	NL	1	\N
2841	benedbr01	1981	0	ALS198108090	ATL	1814	NL	1	\N
2842	bluevi01	1981	0	ALS198108090	SFN	1836	NL	1	\N
2843	bucknbi01	1981	0	ALS198108090	CHN	1819	NL	1	\N
2844	carltst01	1981	0	ALS198108090	PHI	1832	NL	0	\N
2845	easlemi01	1981	0	ALS198108090	PIT	1833	NL	1	\N
2846	garneph01	1981	0	ALS198108090	PIT	1833	NL	1	\N
2847	garvest01	1981	0	ALS198108090	LAN	1825	NL	1	\N
2848	guerrpe01	1981	0	ALS198108090	LAN	1825	NL	1	\N
2849	hootobu01	1981	0	ALS198108090	LAN	1825	NL	1	\N
2850	kennete02	1981	0	ALS198108090	SDN	1834	NL	1	\N
2851	kneppbo01	1981	0	ALS198108090	HOU	1823	NL	1	\N
2852	madlobi01	1981	0	ALS198108090	PIT	1833	NL	1	\N
2853	raineti01	1981	0	ALS198108090	MON	1828	NL	1	\N
2854	ruthvdi01	1981	0	ALS198108090	PHI	1832	NL	1	\N
2855	ryanno01	1981	0	ALS198108090	HOU	1823	NL	1	\N
2856	seaveto01	1981	0	ALS198108090	CIN	1820	NL	1	\N
2857	smithoz01	1981	0	ALS198108090	SDN	1834	NL	1	\N
2858	suttebr01	1981	0	ALS198108090	SLN	1837	NL	1	\N
2859	trillma01	1981	0	ALS198108090	PHI	1832	NL	1	\N
2860	youngjo02	1981	0	ALS198108090	NYN	1830	NL	1	\N
2861	eckerde01	1982	0	NLS198207130	BOS	1842	AL	1	1
2862	fiskca01	1982	0	NLS198207130	CHA	1844	AL	1	2
2863	coopece01	1982	0	NLS198207130	ML4	1853	AL	1	3
2864	grichbo01	1982	0	NLS198207130	CAL	1843	AL	1	4
2865	brettge01	1982	0	NLS198207130	KCA	1850	AL	1	5
2866	yountro01	1982	0	NLS198207130	ML4	1853	AL	1	6
2867	henderi01	1982	0	NLS198207130	OAK	1857	AL	1	7
2868	lynnfr01	1982	0	NLS198207130	CAL	1843	AL	1	8
2869	jacksre01	1982	0	NLS198207130	CAL	1843	AL	1	9
2870	bannifl01	1982	0	NLS198207130	SEA	1861	AL	1	\N
2871	bellbu01	1982	0	NLS198207130	TEX	1864	AL	1	\N
2872	carewro01	1982	0	NLS198207130	CAL	1843	AL	0	\N
2873	clancji01	1982	0	NLS198207130	TOR	1865	AL	1	\N
2874	clearma01	1982	0	NLS198207130	BOS	1842	AL	0	\N
2875	fingero01	1982	0	NLS198207130	ML4	1853	AL	1	\N
2876	gossari01	1982	0	NLS198207130	NYA	1855	AL	0	\N
2877	guidrro01	1982	0	NLS198207130	NYA	1855	AL	0	\N
2878	harrato01	1982	0	NLS198207130	CLE	1847	AL	0	\N
2879	hrbekke01	1982	0	NLS198207130	MIN	1852	AL	1	\N
2880	mcraeha01	1982	0	NLS198207130	KCA	1850	AL	1	\N
2881	murraed02	1982	0	NLS198207130	BAL	1841	AL	1	\N
2882	oglivbe01	1982	0	NLS198207130	ML4	1853	AL	1	\N
2883	parrila02	1982	0	NLS198207130	DET	1848	AL	1	\N
2884	quiseda01	1982	0	NLS198207130	KCA	1850	AL	1	\N
2885	thornan01	1982	0	NLS198207130	CLE	1847	AL	1	\N
2886	whitefr01	1982	0	NLS198207130	KCA	1850	AL	1	\N
2887	wilsowi02	1982	0	NLS198207130	KCA	1850	AL	1	\N
2888	winfida01	1982	0	NLS198207130	NYA	1855	AL	1	\N
2889	yastrca01	1982	0	NLS198207130	BOS	1842	AL	1	\N
2890	rogerst01	1982	0	NLS198207130	MON	1854	NL	1	1
2891	cartega01	1982	0	NLS198207130	MON	1854	NL	1	2
2892	rosepe01	1982	0	NLS198207130	PHI	1858	NL	1	3
2893	trillma01	1982	0	NLS198207130	PHI	1858	NL	1	4
2894	schmimi01	1982	0	NLS198207130	PHI	1858	NL	1	5
2895	conceda01	1982	0	NLS198207130	CIN	1846	NL	1	6
2896	raineti01	1982	0	NLS198207130	MON	1854	NL	1	7
2897	dawsoan01	1982	0	NLS198207130	MON	1854	NL	1	8
2898	murphda05	1982	0	NLS198207130	ATL	1840	NL	1	9
2899	bakerdu01	1982	0	NLS198207130	LAN	1851	NL	1	\N
2900	carltst01	1982	0	NLS198207130	PHI	1858	NL	1	\N
2901	durhale01	1982	0	NLS198207130	CHN	1845	NL	0	\N
2902	hornebo01	1982	0	NLS198207130	ATL	1840	NL	1	\N
2903	howest01	1982	0	NLS198207130	LAN	1851	NL	1	\N
2904	humeto01	1982	0	NLS198207130	CIN	1846	NL	1	\N
2905	jonesru01	1982	0	NLS198207130	SDN	1860	NL	1	\N
2906	knighra01	1982	0	NLS198207130	HOU	1849	NL	1	\N
2907	mintogr01	1982	0	NLS198207130	SFN	1862	NL	1	\N
2908	niekrph01	1982	0	NLS198207130	ATL	1840	NL	0	\N
2909	oliveal01	1982	0	NLS198207130	MON	1854	NL	1	\N
2910	penato01	1982	0	NLS198207130	PIT	1859	NL	1	\N
2911	saxst01	1982	0	NLS198207130	LAN	1851	NL	1	\N
2912	smithlo01	1982	0	NLS198207130	SLN	1863	NL	1	\N
2913	smithoz01	1982	0	NLS198207130	SLN	1863	NL	1	\N
2914	sotoma01	1982	0	NLS198207130	CIN	1846	NL	1	\N
2915	stearjo01	1982	0	NLS198207130	NYN	1856	NL	1	\N
2916	thompja01	1982	0	NLS198207130	PIT	1859	NL	1	\N
2917	valenfe01	1982	0	NLS198207130	LAN	1851	NL	1	\N
2918	stiebda01	1983	0	ALS198307060	TOR	1891	AL	1	1
2919	simmote01	1983	0	ALS198307060	ML4	1879	AL	1	2
2920	carewro01	1983	0	ALS198307060	CAL	1869	AL	1	3
2921	trillma01	1983	0	ALS198307060	CLE	1873	AL	1	4
2922	brettge01	1983	0	ALS198307060	KCA	1876	AL	1	5
2923	yountro01	1983	0	ALS198307060	ML4	1879	AL	1	6
2924	riceji01	1983	0	ALS198307060	BOS	1868	AL	1	7
2925	lynnfr01	1983	0	ALS198307060	CAL	1869	AL	1	8
2926	winfida01	1983	0	ALS198307060	NYA	1881	AL	1	9
2927	boonebo01	1983	0	ALS198307060	CAL	1869	AL	1	\N
2928	coopece01	1983	0	ALS198307060	ML4	1879	AL	1	\N
2929	decindo01	1983	0	ALS198307060	CAL	1869	AL	1	\N
2930	guidrro01	1983	0	ALS198307060	NYA	1881	AL	0	\N
2931	henderi01	1983	0	ALS198307060	OAK	1883	AL	1	\N
2932	honeyri01	1983	0	ALS198307060	TEX	1890	AL	1	\N
2933	jacksre01	1983	0	ALS198307060	CAL	1869	AL	0	\N
2934	kittlro01	1983	0	ALS198307060	CHA	1870	AL	1	\N
2935	lopezau01	1983	0	ALS198307060	DET	1874	AL	0	\N
2936	martiti01	1983	0	ALS198307060	BAL	1867	AL	0	\N
2937	murraed02	1983	0	ALS198307060	BAL	1867	AL	1	\N
2938	oglivbe01	1983	0	ALS198307060	ML4	1879	AL	1	\N
2939	parrila02	1983	0	ALS198307060	DET	1874	AL	1	\N
2940	quiseda01	1983	0	ALS198307060	KCA	1876	AL	1	\N
2941	ripkeca01	1983	0	ALS198307060	BAL	1867	AL	1	\N
2942	stanlbo01	1983	0	ALS198307060	BOS	1868	AL	1	\N
2943	sutclri01	1983	0	ALS198307060	CLE	1873	AL	0	\N
2944	wardga01	1983	0	ALS198307060	MIN	1878	AL	1	\N
2945	whitalo01	1983	0	ALS198307060	DET	1874	AL	1	\N
2946	wilsowi02	1983	0	ALS198307060	KCA	1876	AL	1	\N
2947	yastrca01	1983	0	ALS198307060	BOS	1868	AL	1	\N
2948	youngma01	1983	0	ALS198307060	SEA	1887	AL	1	\N
2949	sotoma01	1983	0	ALS198307060	CIN	1872	NL	1	1
2950	cartega01	1983	0	ALS198307060	MON	1880	NL	1	2
2951	oliveal01	1983	0	ALS198307060	MON	1880	NL	1	3
2952	saxst01	1983	0	ALS198307060	LAN	1877	NL	1	4
2953	schmimi01	1983	0	ALS198307060	PHI	1884	NL	1	5
2954	smithoz01	1983	0	ALS198307060	SLN	1889	NL	1	6
2955	raineti01	1983	0	ALS198307060	MON	1880	NL	1	7
2956	dawsoan01	1983	0	ALS198307060	MON	1880	NL	1	8
2957	murphda05	1983	0	ALS198307060	ATL	1866	NL	1	9
2958	benchjo01	1983	0	ALS198307060	CIN	1872	NL	1	\N
2959	benedbr01	1983	0	ALS198307060	ATL	1866	NL	1	\N
2960	dawlebi01	1983	0	ALS198307060	HOU	1875	NL	1	\N
2961	draveda01	1983	0	ALS198307060	SDN	1886	NL	1	\N
2962	durhale01	1983	0	ALS198307060	CHN	1871	NL	1	\N
2963	evansda01	1983	0	ALS198307060	SFN	1888	NL	1	\N
2964	guerrpe01	1983	0	ALS198307060	LAN	1877	NL	1	\N
2965	hammaat01	1983	0	ALS198307060	SFN	1888	NL	1	\N
2966	hendrge01	1983	0	ALS198307060	SLN	1889	NL	0	\N
2967	hubbagl01	1983	0	ALS198307060	ATL	1866	NL	1	\N
2968	kennete02	1983	0	ALS198307060	SDN	1886	NL	0	\N
2969	lavelga01	1983	0	ALS198307060	SFN	1888	NL	0	\N
2970	madlobi01	1983	0	ALS198307060	PIT	1885	NL	1	\N
2971	mcgeewi01	1983	0	ALS198307060	SLN	1889	NL	1	\N
2972	oroscje01	1983	0	ALS198307060	NYN	1882	NL	1	\N
2973	perezpa01	1983	0	ALS198307060	ATL	1866	NL	1	\N
2974	rogerst01	1983	0	ALS198307060	MON	1880	NL	0	\N
2975	smithle02	1983	0	ALS198307060	CHN	1871	NL	1	\N
2976	thondi01	1983	0	ALS198307060	HOU	1875	NL	1	\N
2977	valenfe01	1983	0	ALS198307060	LAN	1877	NL	0	\N
2978	stiebda01	1984	0	NLS198407100	TOR	1917	AL	1	1
2979	parrila02	1984	0	NLS198407100	DET	1900	AL	1	2
2980	carewro01	1984	0	NLS198407100	CAL	1895	AL	1	3
2981	whitalo01	1984	0	NLS198407100	DET	1900	AL	1	4
2982	brettge01	1984	0	NLS198407100	KCA	1902	AL	1	5
2983	ripkeca01	1984	0	NLS198407100	BAL	1893	AL	1	6
2984	winfida01	1984	0	NLS198407100	NYA	1907	AL	1	7
2985	lemonch01	1984	0	NLS198407100	DET	1900	AL	1	8
2986	jacksre01	1984	0	NLS198407100	CAL	1895	AL	1	9
2987	armasto01	1984	0	NLS198407100	BOS	1894	AL	0	\N
2988	bellbu01	1984	0	NLS198407100	TEX	1916	AL	1	\N
2989	boddimi01	1984	0	NLS198407100	BAL	1893	AL	0	\N
2990	caudibi01	1984	0	NLS198407100	OAK	1909	AL	1	\N
2991	davisal01	1984	0	NLS198407100	SEA	1913	AL	1	\N
2992	dotsori01	1984	0	NLS198407100	CHA	1896	AL	1	\N
2993	engleda01	1984	0	NLS198407100	MIN	1904	AL	0	\N
2994	garcida01	1984	0	NLS198407100	TOR	1917	AL	1	\N
2995	griffal01	1984	0	NLS198407100	TOR	1917	AL	1	\N
2996	henderi01	1984	0	NLS198407100	OAK	1909	AL	1	\N
2997	hernawi01	1984	0	NLS198407100	DET	1900	AL	1	\N
2998	mattido01	1984	0	NLS198407100	NYA	1907	AL	1	\N
2999	morrija02	1984	0	NLS198407100	DET	1900	AL	1	\N
3000	murraed02	1984	0	NLS198407100	BAL	1893	AL	1	\N
3001	niekrph01	1984	0	NLS198407100	NYA	1907	AL	0	\N
3002	quiseda01	1984	0	NLS198407100	KCA	1902	AL	0	\N
3003	riceji01	1984	0	NLS198407100	BOS	1894	AL	1	\N
3004	sundbji01	1984	0	NLS198407100	ML4	1905	AL	1	\N
3005	thornan01	1984	0	NLS198407100	CLE	1899	AL	1	\N
3006	trammal01	1984	0	NLS198407100	DET	1900	AL	0	\N
3007	leach01	1984	0	NLS198407100	MON	1906	NL	1	1
3008	cartega01	1984	0	NLS198407100	MON	1906	NL	1	2
3009	garvest01	1984	0	NLS198407100	SDN	1912	NL	1	3
3010	sandbry01	1984	0	NLS198407100	CHN	1897	NL	1	4
3011	schmimi01	1984	0	NLS198407100	PHI	1910	NL	1	5
3012	smithoz01	1984	0	NLS198407100	SLN	1915	NL	1	6
3013	gwynnto01	1984	0	NLS198407100	SDN	1912	NL	1	7
3014	murphda05	1984	0	NLS198407100	ATL	1892	NL	1	8
3015	strawda01	1984	0	NLS198407100	NYN	1908	NL	1	9
3016	andujjo01	1984	0	NLS198407100	SLN	1915	NL	0	\N
3017	brenlbo01	1984	0	NLS198407100	SFN	1914	NL	1	\N
3018	davisch01	1984	0	NLS198407100	SFN	1914	NL	1	\N
3019	davisjo02	1984	0	NLS198407100	CHN	1897	NL	1	\N
3020	goodedw01	1984	0	NLS198407100	NYN	1908	NL	1	\N
3021	gossari01	1984	0	NLS198407100	SDN	1912	NL	1	\N
3022	hernake01	1984	0	NLS198407100	NYN	1908	NL	1	\N
3023	hollaal01	1984	0	NLS198407100	PHI	1910	NL	0	\N
3024	marshmi02	1984	0	NLS198407100	LAN	1903	NL	0	\N
3025	mumphje01	1984	0	NLS198407100	HOU	1901	NL	1	\N
3026	oroscje01	1984	0	NLS198407100	NYN	1908	NL	0	\N
3027	penato01	1984	0	NLS198407100	PIT	1911	NL	1	\N
3028	raineti01	1984	0	NLS198407100	MON	1906	NL	1	\N
3029	ramirra01	1984	0	NLS198407100	ATL	1892	NL	0	\N
3030	samueju01	1984	0	NLS198407100	PHI	1910	NL	0	\N
3031	sotoma01	1984	0	NLS198407100	CIN	1898	NL	1	\N
3032	suttebr01	1984	0	NLS198407100	SLN	1915	NL	0	\N
3033	valenfe01	1984	0	NLS198407100	LAN	1903	NL	1	\N
3034	wallati01	1984	0	NLS198407100	MON	1906	NL	1	\N
3035	washicl01	1984	0	NLS198407100	ATL	1892	NL	1	\N
3036	morrija02	1985	0	ALS198507160	DET	1926	AL	1	1
3037	fiskca01	1985	0	ALS198507160	CHA	1922	AL	1	2
3038	murraed02	1985	0	ALS198507160	BAL	1919	AL	1	3
3039	whitalo01	1985	0	ALS198507160	DET	1926	AL	1	4
3040	brettge01	1985	0	ALS198507160	KCA	1928	AL	1	5
3041	ripkeca01	1985	0	ALS198507160	BAL	1919	AL	1	6
3042	riceji01	1985	0	ALS198507160	BOS	1920	AL	1	7
3043	henderi01	1985	0	ALS198507160	NYA	1933	AL	1	8
3044	winfida01	1985	0	ALS198507160	NYA	1933	AL	1	9
3045	baineha01	1985	0	ALS198507160	CHA	1922	AL	1	\N
3046	blylebe01	1985	0	ALS198507160	CLE	1925	AL	1	\N
3047	boggswa01	1985	0	ALS198507160	BOS	1920	AL	1	\N
3048	bradlph01	1985	0	ALS198507160	SEA	1939	AL	1	\N
3049	brunato01	1985	0	ALS198507160	MIN	1930	AL	1	\N
3050	coopece01	1985	0	ALS198507160	ML4	1931	AL	1	\N
3051	garcida01	1985	0	ALS198507160	TOR	1943	AL	1	\N
3052	gedmari01	1985	0	ALS198507160	BOS	1920	AL	1	\N
3053	hernawi01	1985	0	ALS198507160	DET	1926	AL	1	\N
3054	howelja01	1985	0	ALS198507160	OAK	1935	AL	0	\N
3055	keyji01	1985	0	ALS198507160	TOR	1943	AL	1	\N
3056	mattido01	1985	0	ALS198507160	NYA	1933	AL	1	\N
3057	molitpa01	1985	0	ALS198507160	ML4	1931	AL	1	\N
3058	mooredo01	1985	0	ALS198507160	CAL	1921	AL	1	\N
3059	parrila02	1985	0	ALS198507160	DET	1926	AL	0	\N
3060	petryda01	1985	0	ALS198507160	DET	1926	AL	1	\N
3061	stiebda01	1985	0	ALS198507160	TOR	1943	AL	1	\N
3062	trammal01	1985	0	ALS198507160	DET	1926	AL	1	\N
3063	wardga01	1985	0	ALS198507160	TEX	1942	AL	1	\N
3064	whitter01	1985	0	ALS198507160	TOR	1943	AL	1	\N
3065	hoytla01	1985	0	ALS198507160	SDN	1938	NL	1	1
3066	kennete02	1985	0	ALS198507160	SDN	1938	NL	1	2
3067	garvest01	1985	0	ALS198507160	SDN	1938	NL	1	3
3068	herrto01	1985	0	ALS198507160	SLN	1941	NL	1	4
3069	nettlgr01	1985	0	ALS198507160	SDN	1938	NL	1	5
3070	smithoz01	1985	0	ALS198507160	SLN	1941	NL	1	6
3071	gwynnto01	1985	0	ALS198507160	SDN	1938	NL	1	7
3072	murphda05	1985	0	ALS198507160	ATL	1918	NL	1	8
3073	strawda01	1985	0	ALS198507160	NYN	1934	NL	1	9
3074	andujjo01	1985	0	ALS198507160	SLN	1941	NL	0	\N
3075	cartega01	1985	0	ALS198507160	NYN	1934	NL	0	\N
3076	clarkja01	1985	0	ALS198507160	SLN	1941	NL	1	\N
3077	cruzjo01	1985	0	ALS198507160	HOU	1927	NL	1	\N
3078	darliro01	1985	0	ALS198507160	NYN	1934	NL	0	\N
3079	garresc01	1985	0	ALS198507160	SFN	1940	NL	0	\N
3080	goodedw01	1985	0	ALS198507160	NYN	1934	NL	0	\N
3081	gossari01	1985	0	ALS198507160	SDN	1938	NL	1	\N
3082	guerrpe01	1985	0	ALS198507160	LAN	1929	NL	0	\N
3083	mcgeewi01	1985	0	ALS198507160	SLN	1941	NL	1	\N
3084	parkeda01	1985	0	ALS198507160	CIN	1924	NL	1	\N
3085	penato01	1985	0	ALS198507160	PIT	1937	NL	1	\N
3086	raineti01	1985	0	ALS198507160	MON	1932	NL	1	\N
3087	reardje01	1985	0	ALS198507160	MON	1932	NL	1	\N
3088	rosepe01	1985	0	ALS198507160	CIN	1924	NL	1	\N
3089	ryanno01	1985	0	ALS198507160	HOU	1927	NL	1	\N
3090	sandbry01	1985	0	ALS198507160	CHN	1923	NL	1	\N
3091	templga01	1985	0	ALS198507160	SDN	1938	NL	1	\N
3092	valenfe01	1985	0	ALS198507160	LAN	1929	NL	1	\N
3093	virgioz02	1985	0	ALS198507160	PHI	1936	NL	1	\N
3094	wallati01	1985	0	ALS198507160	MON	1932	NL	1	\N
3095	wilsogl01	1985	0	ALS198507160	PHI	1936	NL	1	\N
3096	clemero02	1986	0	NLS198607150	BOS	1946	AL	1	1
3097	parrila02	1986	0	NLS198607150	DET	1952	AL	1	2
3098	joynewa01	1986	0	NLS198607150	CAL	1947	AL	1	3
3099	whitalo01	1986	0	NLS198607150	DET	1952	AL	1	4
3100	boggswa01	1986	0	NLS198607150	BOS	1946	AL	1	5
3101	ripkeca01	1986	0	NLS198607150	BAL	1945	AL	1	6
3102	henderi01	1986	0	NLS198607150	NYA	1959	AL	1	7
3103	puckeki01	1986	0	NLS198607150	MIN	1956	AL	1	8
3104	winfida01	1986	0	NLS198607150	NYA	1959	AL	1	9
3105	aasedo01	1986	0	NLS198607150	BAL	1945	AL	1	\N
3106	baineha01	1986	0	NLS198607150	CHA	1948	AL	1	\N
3107	barfije01	1986	0	NLS198607150	TOR	1969	AL	1	\N
3108	brettge01	1986	0	NLS198607150	KCA	1954	AL	0	\N
3109	cansejo01	1986	0	NLS198607150	OAK	1961	AL	0	\N
3110	fernato01	1986	0	NLS198607150	TOR	1969	AL	1	\N
3111	gedmari01	1986	0	NLS198607150	BOS	1946	AL	1	\N
3112	hernawi01	1986	0	NLS198607150	DET	1952	AL	0	\N
3113	higuete01	1986	0	NLS198607150	ML4	1957	AL	1	\N
3114	houghch01	1986	0	NLS198607150	TEX	1968	AL	1	\N
3115	jacobbr01	1986	0	NLS198607150	CLE	1951	AL	1	\N
3116	mattido01	1986	0	NLS198607150	NYA	1959	AL	1	\N
3117	mosebll01	1986	0	NLS198607150	TOR	1969	AL	1	\N
3118	murraed02	1986	0	NLS198607150	BAL	1945	AL	0	\N
3119	preslji01	1986	0	NLS198607150	SEA	1965	AL	0	\N
3120	riceji01	1986	0	NLS198607150	BOS	1946	AL	1	\N
3121	righeda01	1986	0	NLS198607150	NYA	1959	AL	1	\N
3122	schroke01	1986	0	NLS198607150	CLE	1951	AL	0	\N
3123	whitefr01	1986	0	NLS198607150	KCA	1954	AL	1	\N
3124	wittmi01	1986	0	NLS198607150	CAL	1947	AL	0	\N
3125	goodedw01	1986	0	NLS198607150	NYN	1960	NL	1	1
3126	cartega01	1986	0	NLS198607150	NYN	1960	NL	1	2
3127	hernake01	1986	0	NLS198607150	NYN	1960	NL	1	3
3128	sandbry01	1986	0	NLS198607150	CHN	1949	NL	1	4
3129	schmimi01	1986	0	NLS198607150	PHI	1962	NL	1	5
3130	smithoz01	1986	0	NLS198607150	SLN	1967	NL	1	6
3131	gwynnto01	1986	0	NLS198607150	SDN	1964	NL	1	7
3132	murphda05	1986	0	NLS198607150	ATL	1944	NL	1	8
3133	strawda01	1986	0	NLS198607150	NYN	1960	NL	1	9
3134	basske01	1986	0	NLS198607150	HOU	1953	NL	1	\N
3135	brookhu01	1986	0	NLS198607150	MON	1958	NL	1	\N
3136	brownch02	1986	0	NLS198607150	SFN	1966	NL	1	\N
3137	davisch01	1986	0	NLS198607150	SFN	1966	NL	1	\N
3138	davisgl01	1986	0	NLS198607150	HOU	1953	NL	1	\N
3139	davisjo02	1986	0	NLS198607150	CHN	1949	NL	1	\N
3140	fernasi01	1986	0	NLS198607150	NYN	1960	NL	1	\N
3141	francjo01	1986	0	NLS198607150	CIN	1950	NL	0	\N
3142	krukomi01	1986	0	NLS198607150	SFN	1966	NL	1	\N
3143	parkeda01	1986	0	NLS198607150	CIN	1950	NL	1	\N
3144	penato01	1986	0	NLS198607150	PIT	1963	NL	1	\N
3145	raineti01	1986	0	NLS198607150	MON	1958	NL	1	\N
3146	rawlesh01	1986	0	NLS198607150	PHI	1962	NL	0	\N
3147	reardje01	1986	0	NLS198607150	MON	1958	NL	0	\N
3148	rhoderi01	1986	0	NLS198607150	PIT	1963	NL	0	\N
3149	saxst01	1986	0	NLS198607150	LAN	1955	NL	1	\N
3150	scottmi03	1986	0	NLS198607150	HOU	1953	NL	1	\N
3151	smithda02	1986	0	NLS198607150	HOU	1953	NL	0	\N
3152	valenfe01	1986	0	NLS198607150	LAN	1955	NL	1	\N
3153	saberbr01	1987	0	ALS198707140	KCA	1980	AL	1	1
3154	kennete02	1987	0	ALS198707140	BAL	1971	AL	1	2
3155	mattido01	1987	0	ALS198707140	NYA	1985	AL	1	3
3156	randowi01	1987	0	ALS198707140	NYA	1985	AL	1	4
3157	boggswa01	1987	0	ALS198707140	BOS	1972	AL	1	5
3158	ripkeca01	1987	0	ALS198707140	BAL	1971	AL	1	6
3159	bellge02	1987	0	ALS198707140	TOR	1995	AL	1	7
3160	henderi01	1987	0	ALS198707140	NYA	1985	AL	1	8
3161	winfida01	1987	0	ALS198707140	NYA	1985	AL	1	9
3162	baineha01	1987	0	ALS198707140	CHA	1974	AL	1	\N
3163	brettge01	1987	0	ALS198707140	KCA	1980	AL	0	\N
3164	evansdw01	1987	0	ALS198707140	BOS	1972	AL	1	\N
3165	fernato01	1987	0	ALS198707140	TOR	1995	AL	1	\N
3166	henketo01	1987	0	ALS198707140	TOR	1995	AL	1	\N
3167	howelja01	1987	0	ALS198707140	OAK	1987	AL	1	\N
3168	hurstbr01	1987	0	ALS198707140	BOS	1972	AL	0	\N
3169	langsma01	1987	0	ALS198707140	SEA	1991	AL	1	\N
3170	mcgwima01	1987	0	ALS198707140	OAK	1987	AL	1	\N
3171	morrija02	1987	0	ALS198707140	DET	1978	AL	1	\N
3172	nokesma01	1987	0	ALS198707140	DET	1978	AL	1	\N
3173	parrila01	1987	0	ALS198707140	TEX	1994	AL	1	\N
3174	plesada01	1987	0	ALS198707140	ML4	1983	AL	1	\N
3175	puckeki01	1987	0	ALS198707140	MIN	1982	AL	1	\N
3176	reynoha01	1987	0	ALS198707140	SEA	1991	AL	1	\N
3177	righeda01	1987	0	ALS198707140	NYA	1985	AL	1	\N
3178	seitzke01	1987	0	ALS198707140	KCA	1980	AL	1	\N
3179	tablepa01	1987	0	ALS198707140	CLE	1977	AL	1	\N
3180	trammal01	1987	0	ALS198707140	DET	1978	AL	1	\N
3181	whitalo01	1987	0	ALS198707140	DET	1978	AL	0	\N
3182	wittmi01	1987	0	ALS198707140	CAL	1973	AL	0	\N
3183	scottmi03	1987	0	ALS198707140	HOU	1979	NL	1	1
3184	cartega01	1987	0	ALS198707140	NYN	1986	NL	1	2
3185	clarkja01	1987	0	ALS198707140	SLN	1993	NL	1	3
3186	sandbry01	1987	0	ALS198707140	CHN	1975	NL	1	4
3187	schmimi01	1987	0	ALS198707140	PHI	1988	NL	1	5
3188	smithoz01	1987	0	ALS198707140	SLN	1993	NL	1	6
3189	daviser01	1987	0	ALS198707140	CIN	1976	NL	1	7
3190	dawsoan01	1987	0	ALS198707140	CHN	1975	NL	1	8
3191	strawda01	1987	0	ALS198707140	NYN	1986	NL	1	9
3192	bedrost01	1987	0	ALS198707140	PHI	1988	NL	1	\N
3193	brookhu01	1987	0	ALS198707140	MON	1984	NL	1	\N
3194	diazbo01	1987	0	ALS198707140	CIN	1976	NL	1	\N
3195	fernasi01	1987	0	ALS198707140	NYN	1986	NL	1	\N
3196	francjo01	1987	0	ALS198707140	CIN	1976	NL	1	\N
3197	guerrpe01	1987	0	ALS198707140	LAN	1981	NL	1	\N
3198	gwynnto01	1987	0	ALS198707140	SDN	1990	NL	1	\N
3199	hernake01	1987	0	ALS198707140	NYN	1986	NL	1	\N
3200	hershor01	1987	0	ALS198707140	LAN	1981	NL	1	\N
3201	leonaje01	1987	0	ALS198707140	SFN	1992	NL	1	\N
3202	mcgeewi01	1987	0	ALS198707140	SLN	1993	NL	1	\N
3203	murphda05	1987	0	ALS198707140	ATL	1970	NL	1	\N
3204	raineti01	1987	0	ALS198707140	MON	1984	NL	1	\N
3205	reuscri01	1987	0	ALS198707140	PIT	1989	NL	1	\N
3206	samueju01	1987	0	ALS198707140	PHI	1988	NL	1	\N
3207	smithle02	1987	0	ALS198707140	CHN	1975	NL	1	\N
3208	sutclri01	1987	0	ALS198707140	CHN	1975	NL	1	\N
3209	virgioz02	1987	0	ALS198707140	ATL	1970	NL	1	\N
3210	wallati01	1987	0	ALS198707140	MON	1984	NL	1	\N
3211	violafr01	1988	0	NLS198807120	MIN	2008	AL	1	1
3212	steinte01	1988	0	NLS198807120	OAK	2013	AL	1	2
3213	mcgwima01	1988	0	NLS198807120	OAK	2013	AL	1	3
3214	molitpa01	1988	0	NLS198807120	ML4	2009	AL	1	4
3215	boggswa01	1988	0	NLS198807120	BOS	1998	AL	1	5
3216	ripkeca01	1988	0	NLS198807120	BAL	1997	AL	1	6
3217	cansejo01	1988	0	NLS198807120	OAK	2013	AL	1	7
3218	henderi01	1988	0	NLS198807120	NYA	2011	AL	1	8
3219	winfida01	1988	0	NLS198807120	NYA	2011	AL	1	9
3220	alexado01	1988	0	NLS198807120	DET	2004	AL	0	\N
3221	brettge01	1988	0	NLS198807120	KCA	2006	AL	1	\N
3222	clemero02	1988	0	NLS198807120	BOS	1998	AL	1	\N
3223	eckerde01	1988	0	NLS198807120	OAK	2013	AL	1	\N
3224	gaettga01	1988	0	NLS198807120	MIN	2008	AL	1	\N
3225	greenmi01	1988	0	NLS198807120	BOS	1998	AL	1	\N
3226	gubicma01	1988	0	NLS198807120	KCA	2006	AL	1	\N
3227	guilloz01	1988	0	NLS198807120	CHA	2000	AL	0	\N
3228	jonesdo01	1988	0	NLS198807120	CLE	2003	AL	1	\N
3229	lansfca01	1988	0	NLS198807120	OAK	2013	AL	1	\N
3230	laudnti01	1988	0	NLS198807120	MIN	2008	AL	1	\N
3231	mattido01	1988	0	NLS198807120	NYA	2011	AL	1	\N
3232	plesada01	1988	0	NLS198807120	ML4	2009	AL	1	\N
3233	puckeki01	1988	0	NLS198807120	MIN	2008	AL	1	\N
3234	rayjo01	1988	0	NLS198807120	CAL	1999	AL	1	\N
3235	reardje01	1988	0	NLS198807120	MIN	2008	AL	0	\N
3236	reynoha01	1988	0	NLS198807120	SEA	2017	AL	1	\N
3237	russeje01	1988	0	NLS198807120	TEX	2020	AL	1	\N
3238	stiebda01	1988	0	NLS198807120	TOR	2021	AL	1	\N
3239	stillku01	1988	0	NLS198807120	KCA	2006	AL	1	\N
3240	trammal01	1988	0	NLS198807120	DET	2004	AL	0	\N
3241	goodedw01	1988	0	NLS198807120	NYN	2012	NL	1	1
3242	cartega01	1988	0	NLS198807120	NYN	2012	NL	1	2
3243	clarkwi02	1988	0	NLS198807120	SFN	2018	NL	1	3
3244	sandbry01	1988	0	NLS198807120	CHN	2001	NL	1	4
3245	bonilbo01	1988	0	NLS198807120	PIT	2015	NL	1	5
3246	smithoz01	1988	0	NLS198807120	SLN	2019	NL	1	6
3247	colemvi01	1988	0	NLS198807120	SLN	2019	NL	1	7
3248	dawsoan01	1988	0	NLS198807120	CHN	2001	NL	1	8
3249	strawda01	1988	0	NLS198807120	NYN	2012	NL	1	9
3250	coneda01	1988	0	NLS198807120	NYN	2012	NL	1	\N
3251	davisma01	1988	0	NLS198807120	SDN	2016	NL	1	\N
3252	dunstsh01	1988	0	NLS198807120	CHN	2001	NL	0	\N
3253	galaran01	1988	0	NLS198807120	MON	2010	NL	1	\N
3254	grosske01	1988	0	NLS198807120	PHI	2014	NL	1	\N
3255	hershor01	1988	0	NLS198807120	LAN	2007	NL	1	\N
3256	jacksda02	1988	0	NLS198807120	CIN	2002	NL	0	\N
3257	kneppbo01	1988	0	NLS198807120	HOU	2005	NL	1	\N
3258	larkiba01	1988	0	NLS198807120	CIN	2002	NL	1	\N
3259	lawva01	1988	0	NLS198807120	CHN	2001	NL	1	\N
3260	maddugr01	1988	0	NLS198807120	CHN	2001	NL	0	\N
3261	mcgeewi01	1988	0	NLS198807120	SLN	2019	NL	1	\N
3262	palmera01	1988	0	NLS198807120	CHN	2001	NL	1	\N
3263	parrila02	1988	0	NLS198807120	PHI	2014	NL	1	\N
3264	perryge01	1988	0	NLS198807120	ATL	1996	NL	1	\N
3265	saboch01	1988	0	NLS198807120	CIN	2002	NL	1	\N
3266	thompro01	1988	0	NLS198807120	SFN	2018	NL	0	\N
3267	vanslan01	1988	0	NLS198807120	PIT	2015	NL	1	\N
3268	walkbo01	1988	0	NLS198807120	PIT	2015	NL	1	\N
3269	worreto01	1988	0	NLS198807120	SLN	2019	NL	1	\N
3270	stewada01	1989	0	ALS198907110	OAK	2039	AL	1	1
3271	steinte01	1989	0	ALS198907110	OAK	2039	AL	1	2
3272	mcgwima01	1989	0	ALS198907110	OAK	2039	AL	1	3
3273	francju01	1989	0	ALS198907110	TEX	2046	AL	1	4
3274	boggswa01	1989	0	ALS198907110	BOS	2024	AL	1	5
3275	ripkeca01	1989	0	ALS198907110	BAL	2023	AL	1	6
3276	jacksbo01	1989	0	ALS198907110	KCA	2032	AL	1	7
3277	puckeki01	1989	0	ALS198907110	MIN	2034	AL	1	8
3278	sierrru01	1989	0	ALS198907110	TEX	2046	AL	1	9
3279	baineha01	1989	0	ALS198907110	CHA	2026	AL	1	10
3280	cansejo01	1989	0	ALS198907110	OAK	2039	AL	0	\N
3281	fernato01	1989	0	ALS198907110	TOR	2047	AL	1	\N
3282	finlech01	1989	0	ALS198907110	CAL	2025	AL	0	\N
3283	gaettga01	1989	0	ALS198907110	MIN	2034	AL	1	\N
3284	greenmi01	1989	0	ALS198907110	BOS	2024	AL	1	\N
3285	grubeke01	1989	0	ALS198907110	TOR	2047	AL	0	\N
3286	gubicma01	1989	0	ALS198907110	KCA	2032	AL	1	\N
3287	hennemi01	1989	0	ALS198907110	DET	2030	AL	0	\N
3288	jonesdo01	1989	0	ALS198907110	CLE	2029	AL	1	\N
3289	leonaje01	1989	0	ALS198907110	SEA	2043	AL	1	\N
3290	mattido01	1989	0	ALS198907110	NYA	2037	AL	1	\N
3291	mooremi01	1989	0	ALS198907110	OAK	2039	AL	1	\N
3292	plesada01	1989	0	ALS198907110	ML4	2035	AL	1	\N
3293	russeje01	1989	0	ALS198907110	TEX	2046	AL	1	\N
3294	ryanno01	1989	0	ALS198907110	TEX	2046	AL	1	\N
3295	saxst01	1989	0	ALS198907110	NYA	2037	AL	1	\N
3296	swindgr01	1989	0	ALS198907110	CLE	2029	AL	1	\N
3297	tettlmi01	1989	0	ALS198907110	BAL	2023	AL	1	\N
3298	whitede03	1989	0	ALS198907110	CAL	2025	AL	1	\N
3299	reuscri01	1989	0	ALS198907110	SFN	2044	NL	1	1
3300	santibe01	1989	0	ALS198907110	SDN	2042	NL	1	2
3301	clarkwi02	1989	0	ALS198907110	SFN	2044	NL	1	3
3302	sandbry01	1989	0	ALS198907110	CHN	2027	NL	1	4
3303	johnsho01	1989	0	ALS198907110	NYN	2038	NL	1	5
3304	smithoz01	1989	0	ALS198907110	SLN	2045	NL	1	6
3305	mitchke01	1989	0	ALS198907110	SFN	2044	NL	1	7
3306	daviser01	1989	0	ALS198907110	CIN	2028	NL	1	8
3307	gwynnto01	1989	0	ALS198907110	SDN	2042	NL	1	9
3308	guerrpe01	1989	0	ALS198907110	SLN	2045	NL	1	10
3309	bonilbo01	1989	0	ALS198907110	PIT	2041	NL	1	\N
3310	burketi01	1989	0	ALS198907110	MON	2036	NL	1	\N
3311	colemvi01	1989	0	ALS198907110	SLN	2045	NL	1	\N
3312	davisgl01	1989	0	ALS198907110	HOU	2031	NL	1	\N
3313	davisma01	1989	0	ALS198907110	SDN	2042	NL	1	\N
3314	dawsoan01	1989	0	ALS198907110	CHN	2027	NL	1	\N
3315	francjo01	1989	0	ALS198907110	CIN	2028	NL	0	\N
3316	hayesvo01	1989	0	ALS198907110	PHI	2040	NL	1	\N
3317	hershor01	1989	0	ALS198907110	LAN	2033	NL	0	\N
3318	howelja01	1989	0	ALS198907110	LAN	2033	NL	1	\N
3319	larkiba01	1989	0	ALS198907110	CIN	2028	NL	0	\N
3320	penato01	1989	0	ALS198907110	SLN	2045	NL	1	\N
3321	randowi01	1989	0	ALS198907110	LAN	2033	NL	1	\N
3322	schmimi01	1989	0	ALS198907110	PHI	2040	NL	0	\N
3323	sciosmi01	1989	0	ALS198907110	LAN	2033	NL	1	\N
3324	scottmi03	1989	0	ALS198907110	HOU	2031	NL	0	\N
3325	smoltjo01	1989	0	ALS198907110	ATL	2022	NL	1	\N
3326	strawda01	1989	0	ALS198907110	NYN	2038	NL	0	\N
3327	sutclri01	1989	0	ALS198907110	CHN	2027	NL	1	\N
3328	wallati01	1989	0	ALS198907110	MON	2036	NL	1	\N
3329	willimi02	1989	0	ALS198907110	CHN	2027	NL	1	\N
3330	welchbo01	1990	0	NLS199007100	OAK	2065	AL	1	1
3331	alomasa02	1990	0	NLS199007100	CLE	2055	AL	1	2
3332	mcgwima01	1990	0	NLS199007100	OAK	2065	AL	1	3
3333	saxst01	1990	0	NLS199007100	NYA	2063	AL	1	4
3334	boggswa01	1990	0	NLS199007100	BOS	2050	AL	1	5
3335	ripkeca01	1990	0	NLS199007100	BAL	2049	AL	1	6
3336	henderi01	1990	0	NLS199007100	OAK	2065	AL	1	7
3337	griffke02	1990	0	NLS199007100	SEA	2069	AL	1	8
3338	cansejo01	1990	0	NLS199007100	OAK	2065	AL	1	9
3339	bellge02	1990	0	NLS199007100	TOR	2073	AL	1	\N
3340	burksel01	1990	0	NLS199007100	BOS	2050	AL	0	\N
3341	clemero02	1990	0	NLS199007100	BOS	2050	AL	0	\N
3342	eckerde01	1990	0	NLS199007100	OAK	2065	AL	1	\N
3343	fieldce01	1990	0	NLS199007100	DET	2056	AL	1	\N
3344	finlech01	1990	0	NLS199007100	CAL	2051	AL	1	\N
3345	francju01	1990	0	NLS199007100	TEX	2072	AL	1	\N
3346	grubeke01	1990	0	NLS199007100	TOR	2073	AL	1	\N
3347	guilloz01	1990	0	NLS199007100	CHA	2052	AL	1	\N
3348	jacobbr01	1990	0	NLS199007100	CLE	2055	AL	1	\N
3349	johnsra05	1990	0	NLS199007100	SEA	2069	AL	0	\N
3350	jonesdo01	1990	0	NLS199007100	CLE	2055	AL	0	\N
3351	olsongr01	1990	0	NLS199007100	BAL	2049	AL	0	\N
3352	parkeda01	1990	0	NLS199007100	ML4	2061	AL	0	\N
3353	parrila02	1990	0	NLS199007100	CAL	2051	AL	1	\N
3354	puckeki01	1990	0	NLS199007100	MIN	2060	AL	1	\N
3355	saberbr01	1990	0	NLS199007100	KCA	2058	AL	1	\N
3356	stiebda01	1990	0	NLS199007100	TOR	2073	AL	1	\N
3357	thigpbo01	1990	0	NLS199007100	CHA	2052	AL	1	\N
3358	trammal01	1990	0	NLS199007100	DET	2056	AL	1	\N
3359	armstja01	1990	0	NLS199007100	CIN	2054	NL	1	1
3360	sciosmi01	1990	0	NLS199007100	LAN	2059	NL	1	2
3361	clarkwi02	1990	0	NLS199007100	SFN	2070	NL	1	3
3362	sandbry01	1990	0	NLS199007100	CHN	2053	NL	1	4
3363	saboch01	1990	0	NLS199007100	CIN	2054	NL	1	5
3364	smithoz01	1990	0	NLS199007100	SLN	2071	NL	1	6
3365	mitchke01	1990	0	NLS199007100	SFN	2070	NL	1	7
3366	dykstle01	1990	0	NLS199007100	PHI	2066	NL	1	8
3367	dawsoan01	1990	0	NLS199007100	CHN	2053	NL	1	9
3368	alomaro01	1990	0	NLS199007100	SDN	2068	NL	1	\N
3369	bondsba01	1990	0	NLS199007100	PIT	2067	NL	1	\N
3370	bonilbo01	1990	0	NLS199007100	PIT	2067	NL	1	\N
3371	brantje01	1990	0	NLS199007100	SFN	2070	NL	1	\N
3372	dibblro01	1990	0	NLS199007100	CIN	2054	NL	1	\N
3373	dunstsh01	1990	0	NLS199007100	CHN	2053	NL	1	\N
3374	francjo01	1990	0	NLS199007100	NYN	2064	NL	1	\N
3375	gwynnto01	1990	0	NLS199007100	SDN	2068	NL	1	\N
3376	heatone01	1990	0	NLS199007100	PIT	2067	NL	0	\N
3377	larkiba01	1990	0	NLS199007100	CIN	2054	NL	1	\N
3378	martide01	1990	0	NLS199007100	MON	2062	NL	1	\N
3379	martira02	1990	0	NLS199007100	LAN	2059	NL	1	\N
3380	myersra01	1990	0	NLS199007100	CIN	2054	NL	1	\N
3381	olsongr02	1990	0	NLS199007100	ATL	2048	NL	1	\N
3382	santibe01	1990	0	NLS199007100	SDN	2068	NL	0	\N
3383	smithda02	1990	0	NLS199007100	HOU	2057	NL	1	\N
3384	strawda01	1990	0	NLS199007100	NYN	2064	NL	1	\N
3385	violafr01	1990	0	NLS199007100	NYN	2064	NL	1	\N
3386	wallati01	1990	0	NLS199007100	MON	2062	NL	1	\N
3387	willima04	1990	0	NLS199007100	SFN	2070	NL	1	\N
3388	morrija02	1991	0	ALS199107090	MIN	2086	AL	1	1
3389	alomasa02	1991	0	ALS199107090	CLE	2081	AL	1	2
3390	fieldce01	1991	0	ALS199107090	DET	2082	AL	1	3
3391	alomaro01	1991	0	ALS199107090	TOR	2099	AL	1	4
3392	boggswa01	1991	0	ALS199107090	BOS	2076	AL	1	5
3393	ripkeca01	1991	0	ALS199107090	BAL	2075	AL	1	6
3394	henderi01	1991	0	ALS199107090	OAK	2091	AL	1	7
3395	griffke02	1991	0	ALS199107090	SEA	2095	AL	1	8
3396	hendeda01	1991	0	ALS199107090	OAK	2091	AL	1	9
3397	tartada01	1991	0	ALS199107090	KCA	2084	AL	1	10
3398	aguilri01	1991	0	ALS199107090	MIN	2086	AL	1	\N
3399	baineha01	1991	0	ALS199107090	OAK	2091	AL	1	\N
3400	cartejo01	1991	0	ALS199107090	TOR	2099	AL	1	\N
3401	clemero02	1991	0	ALS199107090	BOS	2076	AL	1	\N
3402	eckerde01	1991	0	ALS199107090	OAK	2091	AL	1	\N
3403	fiskca01	1991	0	ALS199107090	CHA	2078	AL	1	\N
3404	francju01	1991	0	ALS199107090	TEX	2098	AL	0	\N
3405	guilloz01	1991	0	ALS199107090	CHA	2078	AL	1	\N
3406	harvebr01	1991	0	ALS199107090	CAL	2077	AL	0	\N
3407	keyji01	1991	0	ALS199107090	TOR	2099	AL	1	\N
3408	langsma01	1991	0	ALS199107090	CAL	2077	AL	0	\N
3409	mcdowja01	1991	0	ALS199107090	CHA	2078	AL	1	\N
3410	mcgwima01	1991	0	ALS199107090	OAK	2091	AL	0	\N
3411	molitpa01	1991	0	ALS199107090	ML4	2087	AL	1	\N
3412	palmera01	1991	0	ALS199107090	TEX	2098	AL	1	\N
3413	puckeki01	1991	0	ALS199107090	MIN	2086	AL	1	\N
3414	reardje01	1991	0	ALS199107090	BOS	2076	AL	1	\N
3415	sandesc01	1991	0	ALS199107090	NYA	2089	AL	0	\N
3416	sierrru01	1991	0	ALS199107090	TEX	2098	AL	1	\N
3417	glavito02	1991	0	ALS199107090	ATL	2074	NL	1	1
3418	santibe01	1991	0	ALS199107090	SDN	2094	NL	1	2
3419	clarkwi02	1991	0	ALS199107090	SFN	2096	NL	1	3
3420	sandbry01	1991	0	ALS199107090	CHN	2079	NL	1	4
3421	saboch01	1991	0	ALS199107090	CIN	2080	NL	1	5
3422	smithoz01	1991	0	ALS199107090	SLN	2097	NL	1	6
3423	caldeiv01	1991	0	ALS199107090	MON	2088	NL	1	7
3424	gwynnto01	1991	0	ALS199107090	SDN	2094	NL	1	8
3425	dawsoan01	1991	0	ALS199107090	CHN	2079	NL	1	9
3426	bonilbo01	1991	0	ALS199107090	PIT	2093	NL	1	10
3427	bellge02	1991	0	ALS199107090	CHN	2079	NL	1	\N
3428	biggicr01	1991	0	ALS199107090	HOU	2083	NL	1	\N
3429	brownto05	1991	0	ALS199107090	CIN	2080	NL	0	\N
3430	butlebr01	1991	0	ALS199107090	LAN	2085	NL	1	\N
3431	dibblro01	1991	0	ALS199107090	CIN	2080	NL	1	\N
3432	harnipe01	1991	0	ALS199107090	HOU	2083	NL	1	\N
3433	johnsho01	1991	0	ALS199107090	NYN	2090	NL	1	\N
3434	josefe01	1991	0	ALS199107090	SLN	2097	NL	1	\N
3435	krukjo01	1991	0	ALS199107090	PHI	2092	NL	0	\N
3436	larkiba01	1991	0	ALS199107090	CIN	2080	NL	1	\N
3437	martide01	1991	0	ALS199107090	MON	2088	NL	1	\N
3438	martira02	1991	0	ALS199107090	LAN	2085	NL	0	\N
3439	morgami01	1991	0	ALS199107090	LAN	2085	NL	1	\N
3440	murraed02	1991	0	ALS199107090	LAN	2085	NL	1	\N
3441	oneilpa01	1991	0	ALS199107090	CIN	2080	NL	1	\N
3442	samueju01	1991	0	ALS199107090	LAN	2085	NL	1	\N
3443	smilejo01	1991	0	ALS199107090	PIT	2093	NL	1	\N
3444	smithle02	1991	0	ALS199107090	SLN	2097	NL	0	\N
3445	strawda01	1991	0	ALS199107090	LAN	2085	NL	0	\N
3446	violafr01	1991	0	ALS199107090	NYN	2090	NL	1	\N
3447	brownke01	1992	0	NLS199207140	TEX	2124	AL	1	1
3448	alomasa02	1992	0	NLS199207140	CLE	2107	AL	1	2
3449	mcgwima01	1992	0	NLS199207140	OAK	2117	AL	1	3
3450	alomaro01	1992	0	NLS199207140	TOR	2125	AL	1	4
3451	boggswa01	1992	0	NLS199207140	BOS	2102	AL	1	5
3452	ripkeca01	1992	0	NLS199207140	BAL	2101	AL	1	6
3453	puckeki01	1992	0	NLS199207140	MIN	2112	AL	1	7
3454	griffke02	1992	0	NLS199207140	SEA	2121	AL	1	8
3455	cartejo01	1992	0	NLS199207140	TOR	2125	AL	1	9
3456	aguilri01	1992	0	NLS199207140	MIN	2112	AL	1	\N
3457	anderbr01	1992	0	NLS199207140	BAL	2101	AL	1	\N
3458	baergca01	1992	0	NLS199207140	CLE	2107	AL	1	\N
3459	cansejo01	1992	0	NLS199207140	OAK	2117	AL	0	\N
3460	clemero02	1992	0	NLS199207140	BOS	2102	AL	1	\N
3461	eckerde01	1992	0	NLS199207140	OAK	2117	AL	1	\N
3462	frymatr01	1992	0	NLS199207140	DET	2108	AL	1	\N
3463	guzmaju01	1992	0	NLS199207140	TOR	2125	AL	1	\N
3464	kellyro01	1992	0	NLS199207140	NYA	2115	AL	1	\N
3465	knoblch01	1992	0	NLS199207140	MIN	2112	AL	1	\N
3466	langsma01	1992	0	NLS199207140	CAL	2103	AL	1	\N
3467	martied01	1992	0	NLS199207140	SEA	2121	AL	1	\N
3468	mcdowja01	1992	0	NLS199207140	CHA	2104	AL	1	\N
3469	molitpa01	1992	0	NLS199207140	ML4	2113	AL	1	\N
3470	montgje01	1992	0	NLS199207140	KCA	2110	AL	1	\N
3471	mussimi01	1992	0	NLS199207140	BAL	2101	AL	1	\N
3472	nagych01	1992	0	NLS199207140	CLE	2107	AL	1	\N
3473	rodriiv01	1992	0	NLS199207140	TEX	2124	AL	1	\N
3474	sierrru01	1992	0	NLS199207140	TEX	2124	AL	1	\N
3475	venturo01	1992	0	NLS199207140	CHA	2104	AL	1	\N
3476	glavito02	1992	0	NLS199207140	ATL	2100	NL	1	1
3477	santibe01	1992	0	NLS199207140	SDN	2120	NL	1	2
3478	mcgrifr01	1992	0	NLS199207140	SDN	2120	NL	1	3
3479	sandbry01	1992	0	NLS199207140	CHN	2105	NL	1	4
3480	pendlte01	1992	0	NLS199207140	ATL	2100	NL	1	5
3481	smithoz01	1992	0	NLS199207140	SLN	2123	NL	1	6
3482	bondsba01	1992	0	NLS199207140	PIT	2119	NL	1	7
3483	vanslan01	1992	0	NLS199207140	PIT	2119	NL	1	8
3484	gwynnto01	1992	0	NLS199207140	SDN	2120	NL	1	9
3485	biggicr01	1992	0	NLS199207140	HOU	2109	NL	1	\N
3486	charlno01	1992	0	NLS199207140	CIN	2106	NL	1	\N
3487	clarkwi02	1992	0	NLS199207140	SFN	2122	NL	1	\N
3488	coneda01	1992	0	NLS199207140	NYN	2116	NL	1	\N
3489	daultda01	1992	0	NLS199207140	PHI	2118	NL	1	\N
3490	fernato01	1992	0	NLS199207140	SDN	2120	NL	1	\N
3491	gantro01	1992	0	NLS199207140	ATL	2100	NL	1	\N
3492	jonesdo01	1992	0	NLS199207140	HOU	2109	NL	1	\N
3493	krukjo01	1992	0	NLS199207140	PHI	2118	NL	1	\N
3494	maddugr01	1992	0	NLS199207140	CHN	2105	NL	1	\N
3495	martide01	1992	0	NLS199207140	MON	2114	NL	1	\N
3496	pagnoto01	1992	0	NLS199207140	SLN	2123	NL	1	\N
3497	roberbi01	1992	0	NLS199207140	CIN	2106	NL	1	\N
3498	sharpmi01	1992	0	NLS199207140	LAN	2111	NL	1	\N
3499	sheffga01	1992	0	NLS199207140	SDN	2120	NL	1	\N
3500	smithle02	1992	0	NLS199207140	SLN	2123	NL	0	\N
3501	smoltjo01	1992	0	NLS199207140	ATL	2100	NL	1	\N
3502	tewksbo01	1992	0	NLS199207140	SLN	2123	NL	1	\N
3503	walkela01	1992	0	NLS199207140	MON	2114	NL	1	\N
3504	langsma01	1993	0	ALS199307130	CAL	2129	AL	1	1
3505	rodriiv01	1993	0	ALS199307130	TEX	2152	AL	1	2
3506	olerujo01	1993	0	ALS199307130	TOR	2153	AL	1	3
3507	alomaro01	1993	0	ALS199307130	TOR	2153	AL	1	4
3508	boggswa01	1993	0	ALS199307130	NYA	2143	AL	1	5
3509	ripkeca01	1993	0	ALS199307130	BAL	2127	AL	1	6
3510	puckeki01	1993	0	ALS199307130	MIN	2140	AL	1	7
3511	griffke02	1993	0	ALS199307130	SEA	2149	AL	1	8
3512	cartejo01	1993	0	ALS199307130	TOR	2153	AL	1	9
3513	molitpa01	1993	0	ALS199307130	TOR	2153	AL	1	10
3514	aguilri01	1993	0	ALS199307130	MIN	2140	AL	1	\N
3515	baergca01	1993	0	ALS199307130	CLE	2133	AL	1	\N
3516	belleal01	1993	0	ALS199307130	CLE	2133	AL	1	\N
3517	coopesc01	1993	0	ALS199307130	BOS	2128	AL	1	\N
3518	fieldce01	1993	0	ALS199307130	DET	2135	AL	1	\N
3519	frymatr01	1993	0	ALS199307130	DET	2135	AL	1	\N
3520	gonzaju03	1993	0	ALS199307130	TEX	2152	AL	1	\N
3521	hentgpa01	1993	0	ALS199307130	TOR	2153	AL	0	\N
3522	johnsra05	1993	0	ALS199307130	SEA	2149	AL	1	\N
3523	keyji01	1993	0	ALS199307130	NYA	2143	AL	1	\N
3524	mcdowja01	1993	0	ALS199307130	CHA	2130	AL	1	\N
3525	montgje01	1993	0	ALS199307130	KCA	2138	AL	1	\N
3526	mussimi01	1993	0	ALS199307130	BAL	2127	AL	0	\N
3527	steinte01	1993	0	ALS199307130	OAK	2145	AL	1	\N
3528	thomafr04	1993	0	ALS199307130	CHA	2130	AL	1	\N
3529	vaughgr01	1993	0	ALS199307130	ML4	2141	AL	1	\N
3530	warddu01	1993	0	ALS199307130	TOR	2153	AL	1	\N
3531	whitede03	1993	0	ALS199307130	TOR	2153	AL	1	\N
3532	mulhote01	1993	0	ALS199307130	PHI	2146	NL	1	1
3533	daultda01	1993	0	ALS199307130	PHI	2146	NL	1	2
3534	krukjo01	1993	0	ALS199307130	PHI	2146	NL	1	3
3535	sandbry01	1993	0	ALS199307130	CHN	2131	NL	1	4
3536	sheffga01	1993	0	ALS199307130	FLO	2136	NL	1	5
3537	larkiba01	1993	0	ALS199307130	CIN	2132	NL	1	6
3538	bondsba01	1993	0	ALS199307130	SFN	2150	NL	1	7
3539	grissma02	1993	0	ALS199307130	MON	2142	NL	1	8
3540	justida01	1993	0	ALS199307130	ATL	2126	NL	1	9
3541	gracema01	1993	0	ALS199307130	CHN	2131	NL	1	10
3542	averyst01	1993	0	ALS199307130	ATL	2126	NL	1	\N
3543	beckro01	1993	0	ALS199307130	SFN	2150	NL	1	\N
3544	bellja01	1993	0	ALS199307130	PIT	2147	NL	1	\N
3545	benesan01	1993	0	ALS199307130	SDN	2148	NL	1	\N
3546	blausje01	1993	0	ALS199307130	ATL	2126	NL	1	\N
3547	bonilbo01	1993	0	ALS199307130	NYN	2144	NL	1	\N
3548	burkejo03	1993	0	ALS199307130	SFN	2150	NL	1	\N
3549	galaran01	1993	0	ALS199307130	COL	2134	NL	1	\N
3550	glavito02	1993	0	ALS199307130	ATL	2126	NL	0	\N
3551	gwynnto01	1993	0	ALS199307130	SDN	2148	NL	1	\N
3552	harvebr01	1993	0	ALS199307130	FLO	2136	NL	1	\N
3553	hollida01	1993	0	ALS199307130	PHI	2146	NL	1	\N
3554	jeffegr01	1993	0	ALS199307130	SLN	2151	NL	1	\N
3555	kellyro01	1993	0	ALS199307130	CIN	2132	NL	1	\N
3556	kileda01	1993	0	ALS199307130	HOU	2137	NL	0	\N
3557	piazzmi01	1993	0	ALS199307130	LAN	2139	NL	1	\N
3558	smithle02	1993	0	ALS199307130	SLN	2151	NL	0	\N
3559	smoltjo01	1993	0	ALS199307130	ATL	2126	NL	1	\N
3560	thompro01	1993	0	ALS199307130	SFN	2150	NL	0	\N
3561	vanslan01	1993	0	ALS199307130	PIT	2147	NL	0	\N
3562	keyji01	1994	0	NLS199407120	NYA	2171	AL	1	1
3563	rodriiv01	1994	0	NLS199407120	TEX	2180	AL	1	2
3564	thomafr04	1994	0	NLS199407120	CHA	2158	AL	1	3
3565	alomaro01	1994	0	NLS199407120	TOR	2181	AL	1	4
3566	boggswa01	1994	0	NLS199407120	NYA	2171	AL	1	5
3567	ripkeca01	1994	0	NLS199407120	BAL	2155	AL	1	6
3568	cartejo01	1994	0	NLS199407120	TOR	2181	AL	1	7
3569	griffke02	1994	0	NLS199407120	SEA	2177	AL	1	8
3570	puckeki01	1994	0	NLS199407120	MIN	2168	AL	1	9
3571	alvarwi01	1994	0	NLS199407120	CHA	2158	AL	1	\N
3572	belleal01	1994	0	NLS199407120	CLE	2161	AL	1	\N
3573	bereja01	1994	0	NLS199407120	CHA	2158	AL	1	\N
3574	bonesri01	1994	0	NLS199407120	ML4	2169	AL	0	\N
3575	clarkwi02	1994	0	NLS199407120	TEX	2180	AL	1	\N
3576	coneda01	1994	0	NLS199407120	KCA	2166	AL	1	\N
3577	coopesc01	1994	0	NLS199407120	BOS	2156	AL	1	\N
3578	davisch01	1994	0	NLS199407120	CAL	2157	AL	1	\N
3579	frymatr01	1994	0	NLS199407120	DET	2163	AL	1	\N
3580	hentgpa01	1994	0	NLS199407120	TOR	2181	AL	1	\N
3581	johnsra05	1994	0	NLS199407120	SEA	2177	AL	1	\N
3582	knoblch01	1994	0	NLS199407120	MIN	2168	AL	1	\N
3583	loftoke01	1994	0	NLS199407120	CLE	2161	AL	1	\N
3584	molitpa01	1994	0	NLS199407120	TOR	2181	AL	1	\N
3585	mussimi01	1994	0	NLS199407120	BAL	2155	AL	1	\N
3586	oneilpa01	1994	0	NLS199407120	NYA	2171	AL	1	\N
3587	sierrru01	1994	0	NLS199407120	OAK	2173	AL	1	\N
3588	smithle02	1994	0	NLS199407120	BAL	2155	AL	1	\N
3589	tettlmi01	1994	0	NLS199407120	DET	2163	AL	1	\N
3590	maddugr01	1994	0	NLS199407120	ATL	2154	NL	1	1
3591	piazzmi01	1994	0	NLS199407120	LAN	2167	NL	1	2
3592	jeffegr01	1994	0	NLS199407120	SLN	2179	NL	1	3
3593	duncama01	1994	0	NLS199407120	PHI	2174	NL	1	4
3594	willima04	1994	0	NLS199407120	SFN	2178	NL	1	5
3595	smithoz01	1994	0	NLS199407120	SLN	2179	NL	1	6
3596	bondsba01	1994	0	NLS199407120	SFN	2178	NL	1	7
3597	gwynnto01	1994	0	NLS199407120	SDN	2176	NL	1	8
3598	justida01	1994	0	NLS199407120	ATL	2154	NL	1	9
3599	aloumo01	1994	0	NLS199407120	MON	2170	NL	1	\N
3600	bagweje01	1994	0	NLS199407120	HOU	2165	NL	1	\N
3601	beckro01	1994	0	NLS199407120	SFN	2178	NL	1	\N
3602	bicheda01	1994	0	NLS199407120	COL	2162	NL	1	\N
3603	biggicr01	1994	0	NLS199407120	HOU	2165	NL	1	\N
3604	caminke01	1994	0	NLS199407120	HOU	2165	NL	1	\N
3605	coninje01	1994	0	NLS199407120	FLO	2164	NL	0	\N
3606	cordewi01	1994	0	NLS199407120	MON	2170	NL	1	\N
3607	drabedo01	1994	0	NLS199407120	HOU	2165	NL	1	\N
3608	dykstle01	1994	0	NLS199407120	PHI	2174	NL	0	\N
3609	fletcda01	1994	0	NLS199407120	MON	2170	NL	1	\N
3610	garcica01	1994	0	NLS199407120	PIT	2175	NL	1	\N
3611	grissma02	1994	0	NLS199407120	MON	2170	NL	1	\N
3612	hillke01	1994	0	NLS199407120	MON	2170	NL	1	\N
3613	hudekjo01	1994	0	NLS199407120	HOU	2165	NL	1	\N
3614	jacksda02	1994	0	NLS199407120	PHI	2174	NL	1	\N
3615	jonesdo01	1994	0	NLS199407120	PHI	2174	NL	1	\N
3616	larkiba01	1994	0	NLS199407120	CIN	2160	NL	0	\N
3617	mcgrifr01	1994	0	NLS199407120	ATL	2154	NL	1	\N
3618	myersra01	1994	0	NLS199407120	CHN	2159	NL	1	\N
3619	rijojo01	1994	0	NLS199407120	CIN	2160	NL	0	\N
3620	saberbr01	1994	0	NLS199407120	NYN	2172	NL	0	\N
3621	johnsra05	1995	0	ALS199507110	SEA	2205	AL	1	1
3622	rodriiv01	1995	0	ALS199507110	TEX	2208	AL	1	2
3623	thomafr04	1995	0	ALS199507110	CHA	2186	AL	1	3
3624	baergca01	1995	0	ALS199507110	CLE	2189	AL	1	4
3625	boggswa01	1995	0	ALS199507110	NYA	2199	AL	1	5
3626	ripkeca01	1995	0	ALS199507110	BAL	2183	AL	1	6
3627	belleal01	1995	0	ALS199507110	CLE	2189	AL	1	7
3628	loftoke01	1995	0	ALS199507110	CLE	2189	AL	1	8
3629	puckeki01	1995	0	ALS199507110	MIN	2196	AL	1	9
3630	martied01	1995	0	ALS199507110	SEA	2205	AL	1	10
3631	alomaro01	1995	0	ALS199507110	TOR	2209	AL	1	\N
3632	appieke01	1995	0	ALS199507110	KCA	2194	AL	1	\N
3633	disarga01	1995	0	ALS199507110	CAL	2185	AL	1	\N
3634	edmonji01	1995	0	ALS199507110	CAL	2185	AL	1	\N
3635	finlech01	1995	0	ALS199507110	CAL	2185	AL	0	\N
3636	griffke02	1995	0	ALS199507110	SEA	2205	AL	0	\N
3637	hansoer01	1995	0	ALS199507110	BOS	2184	AL	0	\N
3638	martide01	1995	0	ALS199507110	CLE	2189	AL	1	\N
3639	martiti02	1995	0	ALS199507110	SEA	2205	AL	1	\N
3640	mcgwima01	1995	0	ALS199507110	OAK	2201	AL	0	\N
3641	mesajo01	1995	0	ALS199507110	CLE	2189	AL	1	\N
3642	oneilpa01	1995	0	ALS199507110	NYA	2199	AL	1	\N
3643	ontivst02	1995	0	ALS199507110	OAK	2201	AL	1	\N
3644	ramirma02	1995	0	ALS199507110	CLE	2189	AL	1	\N
3645	rogerke01	1995	0	ALS199507110	TEX	2208	AL	1	\N
3646	seitzke01	1995	0	ALS199507110	ML4	2197	AL	1	\N
3647	smithle02	1995	0	ALS199507110	CAL	2185	AL	0	\N
3648	stanlmi02	1995	0	ALS199507110	NYA	2199	AL	1	\N
3649	vaughmo01	1995	0	ALS199507110	BOS	2184	AL	1	\N
3650	wellsda01	1995	0	ALS199507110	DET	2191	AL	1	\N
3651	nomohi01	1995	0	ALS199507110	LAN	2195	NL	1	1
3652	piazzmi01	1995	0	ALS199507110	LAN	2195	NL	1	2
3653	mcgrifr01	1995	0	ALS199507110	ATL	2182	NL	1	3
3654	biggicr01	1995	0	ALS199507110	HOU	2193	NL	1	4
3655	castivi02	1995	0	ALS199507110	COL	2190	NL	1	5
3656	larkiba01	1995	0	ALS199507110	CIN	2188	NL	1	6
3657	bondsba01	1995	0	ALS199507110	SFN	2206	NL	1	7
3658	dykstle01	1995	0	ALS199507110	PHI	2202	NL	1	8
3659	gwynnto01	1995	0	ALS199507110	SDN	2204	NL	1	9
3660	gantro01	1995	0	ALS199507110	CIN	2188	NL	1	10
3661	bicheda01	1995	0	ALS199507110	COL	2190	NL	1	\N
3662	bonilbo01	1995	0	ALS199507110	NYN	2200	NL	1	\N
3663	coninje01	1995	0	ALS199507110	FLO	2192	NL	1	\N
3664	daultda01	1995	0	ALS199507110	PHI	2202	NL	1	\N
3665	gracema01	1995	0	ALS199507110	CHN	2187	NL	1	\N
3666	greenty01	1995	0	ALS199507110	PHI	2202	NL	1	\N
3667	henketo01	1995	0	ALS199507110	SLN	2207	NL	1	\N
3668	maddugr01	1995	0	ALS199507110	ATL	2182	NL	0	\N
3669	mondera01	1995	0	ALS199507110	LAN	2195	NL	1	\N
3670	moranmi01	1995	0	ALS199507110	PHI	2202	NL	1	\N
3671	myersra01	1995	0	ALS199507110	CHN	2187	NL	1	\N
3672	neaglde01	1995	0	ALS199507110	PIT	2203	NL	1	\N
3673	offerjo01	1995	0	ALS199507110	LAN	2195	NL	1	\N
3674	perezca01	1995	0	ALS199507110	MON	2198	NL	1	\N
3675	sandere02	1995	0	ALS199507110	CIN	2188	NL	1	\N
3676	slocuhe01	1995	0	ALS199507110	PHI	2202	NL	1	\N
3677	smilejo01	1995	0	ALS199507110	CIN	2188	NL	1	\N
3678	smithoz01	1995	0	ALS199507110	SLN	2207	NL	0	\N
3679	sosasa01	1995	0	ALS199507110	CHN	2187	NL	1	\N
3680	willima04	1995	0	ALS199507110	SFN	2206	NL	0	\N
3681	worreto01	1995	0	ALS199507110	LAN	2195	NL	0	\N
3682	nagych01	1996	0	NLS199607090	CLE	2217	AL	1	1
3683	rodriiv01	1996	0	NLS199607090	TEX	2236	AL	1	2
3684	vaughmo01	1996	0	NLS199607090	BOS	2212	AL	1	3
3685	alomaro01	1996	0	NLS199607090	BAL	2211	AL	1	4
3686	boggswa01	1996	0	NLS199607090	NYA	2227	AL	1	5
3687	ripkeca01	1996	0	NLS199607090	BAL	2211	AL	1	6
3688	belleal01	1996	0	NLS199607090	CLE	2217	AL	1	7
3689	loftoke01	1996	0	NLS199607090	CLE	2217	AL	1	8
3690	anderbr01	1996	0	NLS199607090	BAL	2211	AL	1	9
3691	alomasa02	1996	0	NLS199607090	CLE	2217	AL	1	\N
3692	buhneja01	1996	0	NLS199607090	SEA	2233	AL	1	\N
3693	cartejo01	1996	0	NLS199607090	TOR	2237	AL	1	\N
3694	finlech01	1996	0	NLS199607090	CAL	2213	AL	1	\N
3695	frymatr01	1996	0	NLS199607090	DET	2219	AL	1	\N
3696	griffke02	1996	0	NLS199607090	SEA	2233	AL	0	\N
3697	hernaro01	1996	0	NLS199607090	CHA	2214	AL	1	\N
3698	knoblch01	1996	0	NLS199607090	MIN	2224	AL	1	\N
3699	martied01	1996	0	NLS199607090	SEA	2233	AL	1	\N
3700	mcgwima01	1996	0	NLS199607090	OAK	2229	AL	1	\N
3701	mesajo01	1996	0	NLS199607090	CLE	2217	AL	0	\N
3702	montgje01	1996	0	NLS199607090	KCA	2222	AL	0	\N
3703	pavliro01	1996	0	NLS199607090	TEX	2236	AL	1	\N
3704	percitr01	1996	0	NLS199607090	CAL	2213	AL	1	\N
3705	pettian01	1996	0	NLS199607090	NYA	2227	AL	0	\N
3706	rodrial01	1996	0	NLS199607090	SEA	2233	AL	1	\N
3707	thomafr04	1996	0	NLS199607090	CHA	2214	AL	0	\N
3708	vaughgr01	1996	0	NLS199607090	ML4	2225	AL	0	\N
3709	wettejo01	1996	0	NLS199607090	NYA	2227	AL	0	\N
3710	wilsoda01	1996	0	NLS199607090	SEA	2233	AL	1	\N
3711	smoltjo01	1996	0	NLS199607090	ATL	2210	NL	1	1
3712	piazzmi01	1996	0	NLS199607090	LAN	2223	NL	1	2
3713	mcgrifr01	1996	0	NLS199607090	ATL	2210	NL	1	3
3714	biggicr01	1996	0	NLS199607090	HOU	2221	NL	1	4
3715	jonesch06	1996	0	NLS199607090	ATL	2210	NL	1	5
3716	larkiba01	1996	0	NLS199607090	CIN	2216	NL	1	6
3717	bondsba01	1996	0	NLS199607090	SFN	2234	NL	1	7
3718	johnsla03	1996	0	NLS199607090	NYN	2228	NL	1	8
3719	bicheda01	1996	0	NLS199607090	COL	2218	NL	1	9
3720	bagweje01	1996	0	NLS199607090	HOU	2221	NL	1	\N
3721	bottari01	1996	0	NLS199607090	PHI	2230	NL	1	\N
3722	brownke01	1996	0	NLS199607090	FLO	2220	NL	1	\N
3723	burksel01	1996	0	NLS199607090	COL	2218	NL	1	\N
3724	caminke01	1996	0	NLS199607090	SDN	2232	NL	1	\N
3725	glavito02	1996	0	NLS199607090	ATL	2210	NL	1	\N
3726	grudzma01	1996	0	NLS199607090	MON	2226	NL	1	\N
3727	gwynnto01	1996	0	NLS199607090	SDN	2232	NL	0	\N
3728	hundlto01	1996	0	NLS199607090	NYN	2228	NL	1	\N
3729	kendaja01	1996	0	NLS199607090	PIT	2231	NL	1	\N
3730	leiteal01	1996	0	NLS199607090	FLO	2220	NL	1	\N
3731	maddugr01	1996	0	NLS199607090	ATL	2210	NL	0	\N
3732	martipe02	1996	0	NLS199607090	MON	2226	NL	1	\N
3733	rodrihe02	1996	0	NLS199607090	MON	2226	NL	1	\N
3734	sheffga01	1996	0	NLS199607090	FLO	2220	NL	1	\N
3735	smithoz01	1996	0	NLS199607090	SLN	2235	NL	1	\N
3736	trachst01	1996	0	NLS199607090	CHN	2215	NL	1	\N
3737	willima04	1996	0	NLS199607090	SFN	2234	NL	0	\N
3738	wohlema01	1996	0	NLS199607090	ATL	2210	NL	1	\N
3739	worreto01	1996	0	NLS199607090	LAN	2223	NL	1	\N
3740	younger01	1996	0	NLS199607090	COL	2218	NL	1	\N
3741	johnsra05	1997	0	ALS199707080	SEA	2261	AL	1	1
3742	rodriiv01	1997	0	ALS199707080	TEX	2264	AL	1	2
3743	martiti02	1997	0	ALS199707080	NYA	2255	AL	1	3
3744	alomaro01	1997	0	ALS199707080	BAL	2240	AL	1	4
3745	ripkeca01	1997	0	ALS199707080	BAL	2240	AL	1	5
3746	rodrial01	1997	0	ALS199707080	SEA	2261	AL	1	6
3747	anderbr01	1997	0	ALS199707080	BAL	2240	AL	1	7
3748	griffke02	1997	0	ALS199707080	SEA	2261	AL	1	8
3749	oneilpa01	1997	0	ALS199707080	NYA	2255	AL	1	9
3750	martied01	1997	0	ALS199707080	SEA	2261	AL	1	10
3751	alomasa02	1997	0	ALS199707080	CLE	2245	AL	1	\N
3752	belleal01	1997	0	ALS199707080	CHA	2242	AL	0	\N
3753	cirilje01	1997	0	ALS199707080	ML4	2253	AL	1	\N
3754	clemero02	1997	0	ALS199707080	TOR	2265	AL	1	\N
3755	coneda01	1997	0	ALS199707080	NYA	2255	AL	1	\N
3756	corajo01	1997	0	ALS199707080	SEA	2261	AL	1	\N
3757	dicksja01	1997	0	ALS199707080	ANA	2238	AL	0	\N
3758	garcino01	1997	0	ALS199707080	BOS	2241	AL	1	\N
3759	hentgpa01	1997	0	ALS199707080	TOR	2265	AL	1	\N
3760	justida01	1997	0	ALS199707080	CLE	2245	AL	0	\N
3761	knoblch01	1997	0	ALS199707080	MIN	2252	AL	1	\N
3762	mcgwima01	1997	0	ALS199707080	OAK	2257	AL	1	\N
3763	mussimi01	1997	0	ALS199707080	BAL	2240	AL	0	\N
3764	myersra01	1997	0	ALS199707080	BAL	2240	AL	1	\N
3765	riverma01	1997	0	ALS199707080	NYA	2255	AL	1	\N
3766	rosadjo01	1997	0	ALS199707080	KCA	2250	AL	1	\N
3767	thomafr04	1997	0	ALS199707080	CHA	2242	AL	0	\N
3768	thomeji01	1997	0	ALS199707080	CLE	2245	AL	1	\N
3769	thompju02	1997	0	ALS199707080	DET	2247	AL	1	\N
3770	willibe02	1997	0	ALS199707080	NYA	2255	AL	1	\N
3771	maddugr01	1997	0	ALS199707080	ATL	2239	NL	1	1
3772	piazzmi01	1997	0	ALS199707080	LAN	2251	NL	1	2
3773	bagweje01	1997	0	ALS199707080	HOU	2249	NL	1	3
3774	biggicr01	1997	0	ALS199707080	HOU	2249	NL	1	4
3775	caminke01	1997	0	ALS199707080	SDN	2260	NL	1	5
3776	blausje01	1997	0	ALS199707080	ATL	2239	NL	1	6
3777	bondsba01	1997	0	ALS199707080	SFN	2262	NL	1	7
3778	lankfra01	1997	0	ALS199707080	SLN	2263	NL	1	8
3779	walkela01	1997	0	ALS199707080	COL	2246	NL	1	9
3780	gwynnto01	1997	0	ALS199707080	SDN	2260	NL	1	10
3781	aloumo01	1997	0	ALS199707080	FLO	2248	NL	1	\N
3782	beckro01	1997	0	ALS199707080	SFN	2262	NL	0	\N
3783	brownke01	1997	0	ALS199707080	FLO	2248	NL	1	\N
3784	claytro01	1997	0	ALS199707080	SLN	2263	NL	1	\N
3785	estessh01	1997	0	ALS199707080	SFN	2262	NL	1	\N
3786	finlest01	1997	0	ALS199707080	SDN	2260	NL	1	\N
3787	galaran01	1997	0	ALS199707080	COL	2246	NL	1	\N
3788	glavito02	1997	0	ALS199707080	ATL	2239	NL	0	\N
3789	gracema01	1997	0	ALS199707080	CHN	2243	NL	1	\N
3790	hundlto01	1997	0	ALS199707080	NYN	2256	NL	0	\N
3791	johnsch04	1997	0	ALS199707080	FLO	2248	NL	1	\N
3792	jonesbo03	1997	0	ALS199707080	NYN	2256	NL	1	\N
3793	jonesch06	1997	0	ALS199707080	ATL	2239	NL	1	\N
3794	kileda01	1997	0	ALS199707080	HOU	2249	NL	0	\N
3795	larkiba01	1997	0	ALS199707080	CIN	2244	NL	0	\N
3796	loftoke01	1997	0	ALS199707080	ATL	2239	NL	0	\N
3797	lopezja01	1997	0	ALS199707080	ATL	2239	NL	1	\N
3798	martipe02	1997	0	ALS199707080	MON	2254	NL	1	\N
3799	neaglde01	1997	0	ALS199707080	ATL	2239	NL	0	\N
3800	schilcu01	1997	0	ALS199707080	PHI	2258	NL	1	\N
3801	womacto01	1997	0	ALS199707080	PIT	2259	NL	1	\N
3802	wellsda01	1998	0	NLS199807070	NYA	2284	AL	1	1
3803	rodriiv01	1998	0	NLS199807070	TEX	2294	AL	1	2
3804	thomeji01	1998	0	NLS199807070	CLE	2274	AL	1	3
3805	alomaro01	1998	0	NLS199807070	BAL	2269	AL	1	4
3806	ripkeca01	1998	0	NLS199807070	BAL	2269	AL	1	5
3807	rodrial01	1998	0	NLS199807070	SEA	2290	AL	1	6
3808	loftoke01	1998	0	NLS199807070	CLE	2274	AL	1	7
3809	griffke02	1998	0	NLS199807070	SEA	2290	AL	1	8
3810	gonzaju03	1998	0	NLS199807070	TEX	2294	AL	1	9
3811	alomasa02	1998	0	NLS199807070	CLE	2274	AL	1	\N
3812	arrojro01	1998	0	NLS199807070	TBA	2293	AL	1	\N
3813	brosisc01	1998	0	NLS199807070	NYA	2284	AL	1	\N
3814	clemero02	1998	0	NLS199807070	TOR	2295	AL	1	\N
3815	colonba01	1998	0	NLS199807070	CLE	2274	AL	1	\N
3816	durhara01	1998	0	NLS199807070	CHA	2271	AL	1	\N
3817	easleda01	1998	0	NLS199807070	DET	2276	AL	1	\N
3818	erstada01	1998	0	NLS199807070	ANA	2266	AL	1	\N
3819	gordoto01	1998	0	NLS199807070	BOS	2270	AL	1	\N
3820	grievbe01	1998	0	NLS199807070	OAK	2286	AL	1	\N
3821	jeterde01	1998	0	NLS199807070	NYA	2284	AL	1	\N
3822	martipe02	1998	0	NLS199807070	BOS	2270	AL	0	\N
3823	oneilpa01	1998	0	NLS199807070	NYA	2284	AL	1	\N
3824	palmede01	1998	0	NLS199807070	KCA	2279	AL	1	\N
3825	palmera01	1998	0	NLS199807070	BAL	2269	AL	1	\N
3826	percitr01	1998	0	NLS199807070	ANA	2266	AL	1	\N
3827	radkebr01	1998	0	NLS199807070	MIN	2282	AL	1	\N
3828	ramirma02	1998	0	NLS199807070	CLE	2274	AL	1	\N
3829	seleaa01	1998	0	NLS199807070	TEX	2294	AL	0	\N
3830	vaughmo01	1998	0	NLS199807070	BOS	2270	AL	0	\N
3831	vizquom01	1998	0	NLS199807070	CLE	2274	AL	1	\N
3832	wettejo01	1998	0	NLS199807070	TEX	2294	AL	1	\N
3833	willibe02	1998	0	NLS199807070	NYA	2284	AL	0	\N
3834	maddugr01	1998	0	NLS199807070	ATL	2268	NL	1	1
3835	piazzmi01	1998	0	NLS199807070	NYN	2285	NL	1	2
3836	mcgwima01	1998	0	NLS199807070	SLN	2292	NL	1	3
3837	biggicr01	1998	0	NLS199807070	HOU	2278	NL	1	4
3838	jonesch06	1998	0	NLS199807070	ATL	2268	NL	1	5
3839	weisswa01	1998	0	NLS199807070	ATL	2268	NL	1	6
3840	bondsba01	1998	0	NLS199807070	SFN	2291	NL	1	7
3841	walkela01	1998	0	NLS199807070	COL	2275	NL	1	8
3842	gwynnto01	1998	0	NLS199807070	SDN	2289	NL	1	9
3843	aloumo01	1998	0	NLS199807070	HOU	2278	NL	1	\N
3844	ashbyan01	1998	0	NLS199807070	SDN	2289	NL	1	\N
3845	bicheda01	1998	0	NLS199807070	COL	2275	NL	1	\N
3846	boonebr01	1998	0	NLS199807070	CIN	2273	NL	0	\N
3847	brownke01	1998	0	NLS199807070	SDN	2289	NL	1	\N
3848	castivi02	1998	0	NLS199807070	COL	2275	NL	1	\N
3849	galaran01	1998	0	NLS199807070	ATL	2268	NL	1	\N
3850	glavito02	1998	0	NLS199807070	ATL	2268	NL	1	\N
3851	hoffmtr01	1998	0	NLS199807070	SDN	2289	NL	1	\N
3852	kendaja01	1998	0	NLS199807070	PIT	2288	NL	1	\N
3853	lopezja01	1998	0	NLS199807070	ATL	2268	NL	1	\N
3854	nenro01	1998	0	NLS199807070	SFN	2291	NL	1	\N
3855	reedri01	1998	0	NLS199807070	NYN	2285	NL	0	\N
3856	renteed01	1998	0	NLS199807070	FLO	2277	NL	1	\N
3857	schilcu01	1998	0	NLS199807070	PHI	2287	NL	0	\N
3858	shawje01	1998	0	NLS199807070	LAN	2280	NL	1	\N
3859	sheffga01	1998	0	NLS199807070	LAN	2280	NL	1	\N
3860	sosasa01	1998	0	NLS199807070	CHN	2272	NL	0	\N
3861	urbinug01	1998	0	NLS199807070	MON	2283	NL	1	\N
3862	vaughgr01	1998	0	NLS199807070	SDN	2289	NL	1	\N
3863	vinafe01	1998	0	NLS199807070	MIL	2281	NL	1	\N
3864	whitede03	1998	0	NLS199807070	ARI	2267	NL	1	\N
3865	martipe02	1999	0	ALS199907130	BOS	2300	AL	1	1
3866	rodriiv01	1999	0	ALS199907130	TEX	2324	AL	1	2
3867	thomeji01	1999	0	ALS199907130	CLE	2304	AL	1	3
3868	alomaro01	1999	0	ALS199907130	CLE	2304	AL	1	4
3869	ripkeca01	1999	0	ALS199907130	BAL	2299	AL	1	5
3870	garcino01	1999	0	ALS199907130	BOS	2300	AL	1	6
3871	loftoke01	1999	0	ALS199907130	CLE	2304	AL	1	7
3872	griffke02	1999	0	ALS199907130	SEA	2320	AL	1	8
3873	ramirma02	1999	0	ALS199907130	CLE	2304	AL	1	9
3874	palmera01	1999	0	ALS199907130	TEX	2324	AL	1	10
3875	ausmubr01	1999	0	ALS199907130	DET	2306	AL	1	\N
3876	baineha01	1999	0	ALS199907130	BAL	2299	AL	1	\N
3877	cansejo01	1999	0	ALS199907130	TBA	2323	AL	0	\N
3878	coneda01	1999	0	ALS199907130	NYA	2314	AL	1	\N
3879	coomero01	1999	0	ALS199907130	MIN	2312	AL	1	\N
3880	fernato01	1999	0	ALS199907130	TOR	2325	AL	1	\N
3881	greensh01	1999	0	ALS199907130	TOR	2325	AL	1	\N
3882	hernaro01	1999	0	ALS199907130	TBA	2323	AL	1	\N
3883	jahajo01	1999	0	ALS199907130	OAK	2316	AL	1	\N
3884	jeterde01	1999	0	ALS199907130	NYA	2314	AL	1	\N
3885	mussimi01	1999	0	ALS199907130	BAL	2299	AL	1	\N
3886	nagych01	1999	0	ALS199907130	CLE	2304	AL	0	\N
3887	offerjo01	1999	0	ALS199907130	BOS	2300	AL	1	\N
3888	ordonma01	1999	0	ALS199907130	CHA	2301	AL	1	\N
3889	percitr01	1999	0	ALS199907130	ANA	2296	AL	0	\N
3890	riverma01	1999	0	ALS199907130	NYA	2314	AL	0	\N
3891	rosadjo01	1999	0	ALS199907130	KCA	2309	AL	1	\N
3892	surhobj01	1999	0	ALS199907130	BAL	2299	AL	1	\N
3893	vizquom01	1999	0	ALS199907130	CLE	2304	AL	1	\N
3894	wettejo01	1999	0	ALS199907130	TEX	2324	AL	1	\N
3895	willibe02	1999	0	ALS199907130	NYA	2314	AL	1	\N
3896	zimmeje02	1999	0	ALS199907130	TEX	2324	AL	1	\N
3897	schilcu01	1999	0	ALS199907130	PHI	2317	NL	1	1
3898	piazzmi01	1999	0	ALS199907130	NYN	2315	NL	1	2
3899	mcgwima01	1999	0	ALS199907130	SLN	2322	NL	1	3
3900	bellja01	1999	0	ALS199907130	ARI	2297	NL	1	4
3901	willima04	1999	0	ALS199907130	ARI	2297	NL	1	5
3902	larkiba01	1999	0	ALS199907130	CIN	2303	NL	1	6
3903	burnije01	1999	0	ALS199907130	MIL	2311	NL	1	7
3904	sosasa01	1999	0	ALS199907130	CHN	2302	NL	1	8
3905	walkela01	1999	0	ALS199907130	COL	2305	NL	1	9
3906	bagweje01	1999	0	ALS199907130	HOU	2308	NL	1	10
3907	ashbyan01	1999	0	ALS199907130	SDN	2319	NL	1	\N
3908	botteke01	1999	0	ALS199907130	SLN	2322	NL	1	\N
3909	byrdpa01	1999	0	ALS199907130	PHI	2317	NL	0	\N
3910	caseyse01	1999	0	ALS199907130	CIN	2303	NL	1	\N
3911	gonzaal02	1999	0	ALS199907130	FLO	2307	NL	1	\N
3912	gonzalu01	1999	0	ALS199907130	ARI	2297	NL	1	\N
3913	guerrvl01	1999	0	ALS199907130	MON	2313	NL	1	\N
3914	gwynnto01	1999	0	ALS199907130	SDN	2319	NL	0	\N
3915	hamptmi01	1999	0	ALS199907130	HOU	2308	NL	1	\N
3916	hoffmtr01	1999	0	ALS199907130	SDN	2319	NL	1	\N
3917	johnsra05	1999	0	ALS199907130	ARI	2297	NL	1	\N
3918	jordabr01	1999	0	ALS199907130	ATL	2298	NL	1	\N
3919	kentje01	1999	0	ALS199907130	SFN	2321	NL	1	\N
3920	liebemi01	1999	0	ALS199907130	PHI	2317	NL	1	\N
3921	limajo01	1999	0	ALS199907130	HOU	2308	NL	1	\N
3922	millwke01	1999	0	ALS199907130	ATL	2298	NL	1	\N
3923	nenro01	1999	0	ALS199907130	SFN	2321	NL	0	\N
3924	nilssda01	1999	0	ALS199907130	MIL	2311	NL	1	\N
3925	sheffga01	1999	0	ALS199907130	LAN	2310	NL	1	\N
3926	spraged02	1999	0	ALS199907130	PIT	2318	NL	1	\N
3927	wagnebi02	1999	0	ALS199907130	HOU	2308	NL	1	\N
3928	willisc01	1999	0	ALS199907130	CIN	2303	NL	0	\N
3929	wellsda01	2000	0	NLS200007110	TOR	2355	AL	1	1
3930	rodriiv01	2000	0	NLS200007110	TEX	2354	AL	1	2
3931	giambja01	2000	0	NLS200007110	OAK	2346	AL	1	3
3932	alomaro01	2000	0	NLS200007110	CLE	2334	AL	1	4
3933	frymatr01	2000	0	NLS200007110	CLE	2334	AL	1	5
3934	jeterde01	2000	0	NLS200007110	NYA	2344	AL	1	6
3935	evereca01	2000	0	NLS200007110	BOS	2330	AL	1	7
3936	willibe02	2000	0	NLS200007110	NYA	2344	AL	1	8
3937	dyeje01	2000	0	NLS200007110	KCA	2339	AL	1	9
3938	baldwja01	2000	0	NLS200007110	CHA	2331	AL	1	\N
3939	batisto01	2000	0	NLS200007110	TOR	2355	AL	1	\N
3940	bordimi01	2000	0	NLS200007110	BAL	2329	AL	1	\N
3941	delgaca01	2000	0	NLS200007110	TOR	2355	AL	1	\N
3942	durhara01	2000	0	NLS200007110	CHA	2331	AL	1	\N
3943	erstada01	2000	0	NLS200007110	ANA	2326	AL	1	\N
3944	finlech01	2000	0	NLS200007110	CLE	2334	AL	0	\N
3945	garcino01	2000	0	NLS200007110	BOS	2330	AL	1	\N
3946	glaustr01	2000	0	NLS200007110	ANA	2326	AL	1	\N
3947	hudsoti01	2000	0	NLS200007110	OAK	2346	AL	1	\N
3948	isrinja01	2000	0	NLS200007110	OAK	2346	AL	1	\N
3949	jonesto02	2000	0	NLS200007110	DET	2336	AL	1	\N
3950	lawtoma02	2000	0	NLS200007110	MIN	2342	AL	1	\N
3951	lowede01	2000	0	NLS200007110	BOS	2330	AL	1	\N
3952	martied01	2000	0	NLS200007110	SEA	2350	AL	1	\N
3953	martipe02	2000	0	NLS200007110	BOS	2330	AL	0	\N
3954	mcgrifr01	2000	0	NLS200007110	TBA	2353	AL	1	\N
3955	ordonma01	2000	0	NLS200007110	CHA	2331	AL	1	\N
3956	posadjo01	2000	0	NLS200007110	NYA	2344	AL	1	\N
3957	ramirma02	2000	0	NLS200007110	CLE	2334	AL	0	\N
3958	ripkeca01	2000	0	NLS200007110	BAL	2329	AL	0	\N
3959	riverma01	2000	0	NLS200007110	NYA	2344	AL	1	\N
3960	rodrial01	2000	0	NLS200007110	SEA	2350	AL	0	\N
3961	seleaa01	2000	0	NLS200007110	SEA	2350	AL	1	\N
3962	sweenmi01	2000	0	NLS200007110	KCA	2339	AL	1	\N
3963	johnsra05	2000	0	NLS200007110	ARI	2327	NL	1	1
3964	kendaja01	2000	0	NLS200007110	PIT	2348	NL	1	2
3965	galaran01	2000	0	NLS200007110	ATL	2328	NL	1	3
3966	kentje01	2000	0	NLS200007110	SFN	2351	NL	1	4
3967	jonesch06	2000	0	NLS200007110	ATL	2328	NL	1	5
3968	larkiba01	2000	0	NLS200007110	CIN	2333	NL	1	6
3969	guerrvl01	2000	0	NLS200007110	MON	2343	NL	1	7
3970	edmonji01	2000	0	NLS200007110	SLN	2352	NL	1	8
3971	sosasa01	2000	0	NLS200007110	CHN	2332	NL	1	9
3972	alfoned01	2000	0	NLS200007110	NYN	2345	NL	1	\N
3973	bondsba01	2000	0	NLS200007110	SFN	2351	NL	0	\N
3974	brownke01	2000	0	NLS200007110	LAN	2340	NL	1	\N
3975	cirilje01	2000	0	NLS200007110	COL	2335	NL	1	\N
3976	dempsry01	2000	0	NLS200007110	FLO	2337	NL	0	\N
3977	finlest01	2000	0	NLS200007110	ARI	2327	NL	1	\N
3978	gilesbr02	2000	0	NLS200007110	PIT	2348	NL	1	\N
3979	girarjo01	2000	0	NLS200007110	CHN	2332	NL	0	\N
3980	glavito02	2000	0	NLS200007110	ATL	2328	NL	1	\N
3981	graveda01	2000	0	NLS200007110	CIN	2333	NL	1	\N
3982	griffke02	2000	0	NLS200007110	CIN	2333	NL	0	\N
3983	hammoje01	2000	0	NLS200007110	COL	2335	NL	1	\N
3984	heltoto01	2000	0	NLS200007110	COL	2335	NL	1	\N
3985	hoffmtr01	2000	0	NLS200007110	SDN	2349	NL	1	\N
3986	jonesan01	2000	0	NLS200007110	ATL	2328	NL	1	\N
3987	kileda01	2000	0	NLS200007110	SLN	2352	NL	1	\N
3988	leiteal01	2000	0	NLS200007110	NYN	2345	NL	1	\N
3989	liebemi01	2000	0	NLS200007110	PHI	2347	NL	1	\N
3990	maddugr01	2000	0	NLS200007110	ATL	2328	NL	0	\N
3991	mcgwima01	2000	0	NLS200007110	SLN	2352	NL	0	\N
3992	piazzmi01	2000	0	NLS200007110	NYN	2345	NL	0	\N
3993	renteed01	2000	0	NLS200007110	SLN	2352	NL	1	\N
3994	reynosh01	2000	0	NLS200007110	HOU	2338	NL	0	\N
3995	sheffga01	2000	0	NLS200007110	LAN	2340	NL	1	\N
3996	vidrojo01	2000	0	NLS200007110	MON	2343	NL	1	\N
3997	wickmbo01	2000	0	NLS200007110	MIL	2341	NL	1	\N
3998	clemero02	2001	0	ALS200107100	NYA	2374	AL	1	1
3999	rodriiv01	2001	0	ALS200107100	TEX	2384	AL	1	2
4000	olerujo01	2001	0	ALS200107100	SEA	2380	AL	1	3
4001	boonebr01	2001	0	ALS200107100	SEA	2380	AL	1	4
4002	rodrial01	2001	0	ALS200107100	TEX	2384	AL	1	5
4003	ripkeca01	2001	0	ALS200107100	BAL	2359	AL	1	6
4004	ramirma02	2001	0	ALS200107100	BOS	2360	AL	1	7
4005	suzukic01	2001	0	ALS200107100	SEA	2380	AL	1	8
4006	gonzaju03	2001	0	ALS200107100	CLE	2364	AL	1	9
4007	martied01	2001	0	ALS200107100	SEA	2380	AL	1	10
4008	alomaro01	2001	0	ALS200107100	CLE	2364	AL	1	\N
4009	camermi01	2001	0	ALS200107100	SEA	2380	AL	1	\N
4010	clarkto02	2001	0	ALS200107100	DET	2366	AL	1	\N
4011	garcifr02	2001	0	ALS200107100	SEA	2380	AL	1	\N
4012	giambja01	2001	0	ALS200107100	OAK	2376	AL	1	\N
4013	glaustr01	2001	0	ALS200107100	ANA	2356	AL	1	\N
4014	guzmacr01	2001	0	ALS200107100	MIN	2372	AL	1	\N
4015	jeterde01	2001	0	ALS200107100	NYA	2374	AL	1	\N
4016	maysjo01	2001	0	ALS200107100	MIN	2372	AL	1	\N
4017	miltoer01	2001	0	ALS200107100	MIN	2372	AL	0	\N
4018	nelsoje01	2001	0	ALS200107100	SEA	2380	AL	1	\N
4019	ordonma01	2001	0	ALS200107100	CHA	2361	AL	1	\N
4020	percitr01	2001	0	ALS200107100	ANA	2356	AL	1	\N
4021	pettian01	2001	0	ALS200107100	NYA	2374	AL	1	\N
4022	posadjo01	2001	0	ALS200107100	NYA	2374	AL	1	\N
4023	quantpa01	2001	0	ALS200107100	TOR	2385	AL	1	\N
4024	riverma01	2001	0	ALS200107100	NYA	2374	AL	0	\N
4025	sasakka01	2001	0	ALS200107100	SEA	2380	AL	1	\N
4026	stantmi02	2001	0	ALS200107100	NYA	2374	AL	1	\N
4027	sweenmi01	2001	0	ALS200107100	KCA	2369	AL	1	\N
4028	vaughgr01	2001	0	ALS200107100	TBA	2383	AL	0	\N
4029	willibe02	2001	0	ALS200107100	NYA	2374	AL	1	\N
4030	johnsra05	2001	0	ALS200107100	ARI	2357	NL	1	1
4031	piazzmi01	2001	0	ALS200107100	NYN	2375	NL	1	2
4032	heltoto01	2001	0	ALS200107100	COL	2365	NL	1	3
4033	kentje01	2001	0	ALS200107100	SFN	2381	NL	1	4
4034	jonesch06	2001	0	ALS200107100	ATL	2358	NL	1	5
4035	aurilri01	2001	0	ALS200107100	SFN	2381	NL	1	6
4036	bondsba01	2001	0	ALS200107100	SFN	2381	NL	1	7
4037	gonzalu01	2001	0	ALS200107100	ARI	2357	NL	1	8
4038	sosasa01	2001	0	ALS200107100	CHN	2362	NL	1	9
4039	walkela01	2001	0	ALS200107100	COL	2365	NL	1	10
4040	aloumo01	2001	0	ALS200107100	HOU	2368	NL	1	\N
4041	berkmla01	2001	0	ALS200107100	HOU	2368	NL	1	\N
4042	burkejo03	2001	0	ALS200107100	ATL	2358	NL	1	\N
4043	caseyse01	2001	0	ALS200107100	CIN	2363	NL	1	\N
4044	floydcl01	2001	0	ALS200107100	FLO	2367	NL	1	\N
4045	gilesbr02	2001	0	ALS200107100	PIT	2378	NL	1	\N
4046	guerrvl01	2001	0	ALS200107100	MON	2373	NL	1	\N
4047	hamptmi01	2001	0	ALS200107100	COL	2365	NL	1	\N
4048	johnsch04	2001	0	ALS200107100	FLO	2367	NL	1	\N
4049	kleskry01	2001	0	ALS200107100	SDN	2379	NL	1	\N
4050	liebejo01	2001	0	ALS200107100	CHN	2362	NL	1	\N
4051	morrima01	2001	0	ALS200107100	SLN	2382	NL	1	\N
4052	nevinph01	2001	0	ALS200107100	SDN	2379	NL	1	\N
4053	parkch01	2001	0	ALS200107100	LAN	2370	NL	1	\N
4054	pujolal01	2001	0	ALS200107100	SLN	2382	NL	1	\N
4055	reedri01	2001	0	ALS200107100	NYN	2375	NL	0	\N
4056	rolliji01	2001	0	ALS200107100	PHI	2377	NL	1	\N
4057	schilcu01	2001	0	ALS200107100	ARI	2357	NL	0	\N
4058	shawje01	2001	0	ALS200107100	LAN	2370	NL	1	\N
4059	sheetbe01	2001	0	ALS200107100	MIL	2371	NL	1	\N
4060	wagnebi02	2001	0	ALS200107100	HOU	2368	NL	1	\N
4061	lowede01	2002	0	NLS200207090	BOS	2390	AL	1	1
4062	posadjo01	2002	0	NLS200207090	NYA	2404	AL	1	2
4063	giambja01	2002	0	NLS200207090	NYA	2404	AL	1	3
4064	soriaal01	2002	0	NLS200207090	NYA	2404	AL	1	4
4065	hillesh02	2002	0	NLS200207090	BOS	2390	AL	1	5
4066	rodrial01	2002	0	NLS200207090	TEX	2414	AL	1	6
4067	ramirma02	2002	0	NLS200207090	BOS	2390	AL	1	7
4068	hunteto01	2002	0	NLS200207090	MIN	2402	AL	1	8
4069	suzukic01	2002	0	NLS200207090	SEA	2410	AL	1	9
4070	anderga01	2002	0	NLS200207090	ANA	2386	AL	1	\N
4071	batisto01	2002	0	NLS200207090	BAL	2389	AL	1	\N
4072	buehrma01	2002	0	NLS200207090	CHA	2391	AL	1	\N
4073	damonjo01	2002	0	NLS200207090	BOS	2390	AL	1	\N
4074	fickro01	2002	0	NLS200207090	DET	2396	AL	1	\N
4075	garcifr02	2002	0	NLS200207090	SEA	2410	AL	1	\N
4076	garcino01	2002	0	NLS200207090	BOS	2390	AL	1	\N
4077	guarded01	2002	0	NLS200207090	MIN	2402	AL	1	\N
4078	hallaro01	2002	0	NLS200207090	TOR	2415	AL	1	\N
4079	jeterde01	2002	0	NLS200207090	NYA	2404	AL	1	\N
4080	konerpa01	2002	0	NLS200207090	CHA	2391	AL	1	\N
4081	martipe02	2002	0	NLS200207090	BOS	2390	AL	0	\N
4082	pierzaj01	2002	0	NLS200207090	MIN	2402	AL	1	\N
4083	riverma01	2002	0	NLS200207090	NYA	2404	AL	1	\N
4084	sasakka01	2002	0	NLS200207090	SEA	2410	AL	1	\N
4085	sweenmi01	2002	0	NLS200207090	KCA	2399	AL	1	\N
4086	tejadmi01	2002	0	NLS200207090	OAK	2406	AL	1	\N
4087	urbinug01	2002	0	NLS200207090	BOS	2390	AL	1	\N
4088	venturo01	2002	0	NLS200207090	NYA	2404	AL	1	\N
4089	vizquom01	2002	0	NLS200207090	CLE	2394	AL	1	\N
4090	winnra01	2002	0	NLS200207090	TBA	2413	AL	1	\N
4091	zitoba01	2002	0	NLS200207090	OAK	2406	AL	1	\N
4092	schilcu01	2002	0	NLS200207090	ARI	2387	NL	1	1
4093	piazzmi01	2002	0	NLS200207090	NYN	2405	NL	1	2
4094	heltoto01	2002	0	NLS200207090	COL	2395	NL	1	3
4095	vidrojo01	2002	0	NLS200207090	MON	2403	NL	1	4
4096	rolensc01	2002	0	NLS200207090	PHI	2407	NL	1	5
4097	rolliji01	2002	0	NLS200207090	PHI	2407	NL	1	6
4098	bondsba01	2002	0	NLS200207090	SFN	2411	NL	1	7
4099	guerrvl01	2002	0	NLS200207090	MON	2403	NL	1	8
4100	sosasa01	2002	0	NLS200207090	CHN	2392	NL	1	9
4101	berkmla01	2002	0	NLS200207090	HOU	2398	NL	1	\N
4102	castilu01	2002	0	NLS200207090	FLO	2397	NL	1	\N
4103	dunnad01	2002	0	NLS200207090	CIN	2393	NL	1	\N
4104	gagneer01	2002	0	NLS200207090	LAN	2400	NL	1	\N
4105	glavito02	2002	0	NLS200207090	ATL	2388	NL	0	\N
4106	gonzalu01	2002	0	NLS200207090	ARI	2387	NL	1	\N
4107	greensh01	2002	0	NLS200207090	LAN	2400	NL	1	\N
4108	hernajo01	2002	0	NLS200207090	MIL	2401	NL	1	\N
4109	hoffmtr01	2002	0	NLS200207090	SDN	2409	NL	1	\N
4110	johnsra05	2002	0	NLS200207090	ARI	2387	NL	0	\N
4111	jonesan01	2002	0	NLS200207090	ATL	2388	NL	1	\N
4112	kimby01	2002	0	NLS200207090	ARI	2387	NL	1	\N
4113	lowelmi01	2002	0	NLS200207090	FLO	2397	NL	1	\N
4114	milleda02	2002	0	NLS200207090	ARI	2387	NL	1	\N
4115	morrima01	2002	0	NLS200207090	SLN	2412	NL	0	\N
4116	nenro01	2002	0	NLS200207090	SFN	2411	NL	1	\N
4117	padilvi01	2002	0	NLS200207090	PHI	2407	NL	1	\N
4118	perezod01	2002	0	NLS200207090	LAN	2400	NL	1	\N
4119	remlimi01	2002	0	NLS200207090	ATL	2388	NL	1	\N
4120	santibe01	2002	0	NLS200207090	SFN	2411	NL	1	\N
4121	sexsori01	2002	0	NLS200207090	MIL	2401	NL	1	\N
4122	smoltjo01	2002	0	NLS200207090	ATL	2388	NL	1	\N
4123	spiveju01	2002	0	NLS200207090	ARI	2387	NL	1	\N
4124	willimi03	2002	0	NLS200207090	PIT	2408	NL	1	\N
4125	loaizes01	2003	0	ALS200307150	CHA	2421	AL	1	1
4126	posadjo01	2003	0	ALS200307150	NYA	2434	AL	1	2
4127	delgaca01	2003	0	ALS200307150	TOR	2445	AL	1	3
4128	soriaal01	2003	0	ALS200307150	NYA	2434	AL	1	4
4129	glaustr01	2003	0	ALS200307150	ANA	2416	AL	1	5
4130	rodrial01	2003	0	ALS200307150	TEX	2444	AL	1	6
4131	anderga01	2003	0	ALS200307150	ANA	2416	AL	1	7
4132	matsuhi01	2003	0	ALS200307150	NYA	2434	AL	1	8
4133	suzukic01	2003	0	ALS200307150	SEA	2440	AL	1	9
4134	martied01	2003	0	ALS200307150	SEA	2440	AL	1	10
4135	blaloha01	2003	0	ALS200307150	TEX	2444	AL	1	\N
4136	boonebr01	2003	0	ALS200307150	SEA	2440	AL	1	\N
4137	cartela02	2003	0	ALS200307150	TBA	2443	AL	0	\N
4138	clemero02	2003	0	ALS200307150	NYA	2434	AL	1	\N
4139	donnebr01	2003	0	ALS200307150	ANA	2416	AL	1	\N
4140	evereca01	2003	0	ALS200307150	CHA	2421	AL	1	\N
4141	foulkke01	2003	0	ALS200307150	OAK	2436	AL	1	\N
4142	garcino01	2003	0	ALS200307150	BOS	2420	AL	1	\N
4143	giambja01	2003	0	ALS200307150	NYA	2434	AL	1	\N
4144	guarded01	2003	0	ALS200307150	MIN	2432	AL	1	\N
4145	hallaro01	2003	0	ALS200307150	TOR	2445	AL	0	\N
4146	hasegsh01	2003	0	ALS200307150	SEA	2440	AL	1	\N
4147	hernara02	2003	0	ALS200307150	OAK	2436	AL	1	\N
4148	macdomi01	2003	0	ALS200307150	KCA	2429	AL	0	\N
4149	morame01	2003	0	ALS200307150	BAL	2419	AL	1	\N
4150	moyerja01	2003	0	ALS200307150	SEA	2440	AL	1	\N
4151	muldema01	2003	0	ALS200307150	OAK	2436	AL	1	\N
4152	ordonma01	2003	0	ALS200307150	CHA	2421	AL	1	\N
4153	ramirma02	2003	0	ALS200307150	BOS	2420	AL	0	\N
4154	sabatcc01	2003	0	ALS200307150	CLE	2424	AL	0	\N
4155	sweenmi01	2003	0	ALS200307150	KCA	2429	AL	0	\N
4156	varitja01	2003	0	ALS200307150	BOS	2420	AL	0	\N
4157	wellsve01	2003	0	ALS200307150	TOR	2445	AL	1	\N
4158	youngdm01	2003	0	ALS200307150	DET	2426	AL	0	\N
4159	zitoba01	2003	0	ALS200307150	OAK	2436	AL	0	\N
4160	schmija01	2003	0	ALS200307150	SFN	2441	NL	1	1
4161	lopezja01	2003	0	ALS200307150	ATL	2418	NL	1	2
4162	heltoto01	2003	0	ALS200307150	COL	2425	NL	1	3
4163	vidrojo01	2003	0	ALS200307150	MON	2433	NL	1	4
4164	rolensc01	2003	0	ALS200307150	SLN	2442	NL	1	5
4165	renteed01	2003	0	ALS200307150	SLN	2442	NL	1	6
4166	pujolal01	2003	0	ALS200307150	SLN	2442	NL	1	7
4167	edmonji01	2003	0	ALS200307150	SLN	2442	NL	1	8
4168	sheffga01	2003	0	ALS200307150	ATL	2418	NL	1	9
4169	bondsba01	2003	0	ALS200307150	SFN	2441	NL	1	10
4170	benitar01	2003	0	ALS200307150	NYN	2435	NL	0	\N
4171	booneaa01	2003	0	ALS200307150	CIN	2423	NL	1	\N
4172	brownke01	2003	0	ALS200307150	LAN	2430	NL	0	\N
4173	castilu01	2003	0	ALS200307150	FLO	2427	NL	1	\N
4174	chacosh01	2003	0	ALS200307150	COL	2425	NL	0	\N
4175	furcara01	2003	0	ALS200307150	ATL	2418	NL	1	\N
4176	gagneer01	2003	0	ALS200307150	LAN	2430	NL	1	\N
4177	gilesma01	2003	0	ALS200307150	ATL	2418	NL	0	\N
4178	gonzalu01	2003	0	ALS200307150	ARI	2417	NL	1	\N
4179	jenkige01	2003	0	ALS200307150	MIL	2431	NL	0	\N
4180	jonesan01	2003	0	ALS200307150	ATL	2418	NL	1	\N
4181	loducpa01	2003	0	ALS200307150	LAN	2430	NL	1	\N
4182	lowelmi01	2003	0	ALS200307150	FLO	2427	NL	1	\N
4183	ortizru01	2003	0	ALS200307150	ATL	2418	NL	1	\N
4184	priorma01	2003	0	ALS200307150	CHN	2422	NL	0	\N
4185	sexsori01	2003	0	ALS200307150	MIL	2431	NL	1	\N
4186	smoltjo01	2003	0	ALS200307150	ATL	2418	NL	0	\N
4187	wagnebi02	2003	0	ALS200307150	HOU	2428	NL	1	\N
4188	whitero02	2003	0	ALS200307150	SDN	2439	NL	1	\N
4189	willido03	2003	0	ALS200307150	FLO	2427	NL	0	\N
4190	willimi03	2003	0	ALS200307150	PIT	2438	NL	0	\N
4191	williwo02	2003	0	ALS200307150	SLN	2442	NL	1	\N
4192	wilsopr01	2003	0	ALS200307150	COL	2425	NL	1	\N
4193	wolfra02	2003	0	ALS200307150	PHI	2437	NL	1	\N
4194	woodke02	2003	0	ALS200307150	CHN	2422	NL	1	\N
4195	muldema01	2004	0	NLS200407130	OAK	2466	AL	1	1
4196	rodriiv01	2004	0	NLS200407130	DET	2456	AL	1	2
4197	giambja01	2004	0	NLS200407130	NYA	2464	AL	1	3
4198	soriaal01	2004	0	NLS200407130	TEX	2474	AL	1	4
4199	rodrial01	2004	0	NLS200407130	NYA	2464	AL	1	5
4200	jeterde01	2004	0	NLS200407130	NYA	2464	AL	1	6
4201	ramirma02	2004	0	NLS200407130	BOS	2450	AL	1	7
4202	suzukic01	2004	0	NLS200407130	SEA	2470	AL	1	8
4203	guerrvl01	2004	0	NLS200407130	ANA	2446	AL	1	9
4204	belliro01	2004	0	NLS200407130	CLE	2454	AL	1	\N
4205	blaloha01	2004	0	NLS200407130	TEX	2474	AL	1	\N
4206	cordefr01	2004	0	NLS200407130	TEX	2474	AL	0	\N
4207	crawfca02	2004	0	NLS200407130	TBA	2473	AL	1	\N
4208	gordoto01	2004	0	NLS200407130	NYA	2464	AL	1	\N
4209	guillca01	2004	0	NLS200407130	DET	2456	AL	0	\N
4210	harveke01	2004	0	NLS200407130	KCA	2459	AL	1	\N
4211	hudsoti01	2004	0	NLS200407130	OAK	2466	AL	0	\N
4212	lawtoma02	2004	0	NLS200407130	CLE	2454	AL	1	\N
4213	lillyte01	2004	0	NLS200407130	TOR	2475	AL	1	\N
4214	loaizes01	2004	0	NLS200407130	CHA	2451	AL	1	\N
4215	martivi01	2004	0	NLS200407130	CLE	2454	AL	1	\N
4216	matsuhi01	2004	0	NLS200407130	NYA	2464	AL	1	\N
4217	nathajo01	2004	0	NLS200407130	MIN	2462	AL	1	\N
4218	ortizda01	2004	0	NLS200407130	BOS	2450	AL	1	\N
4219	riverma01	2004	0	NLS200407130	NYA	2464	AL	1	\N
4220	rodrifr03	2004	0	NLS200407130	ANA	2446	AL	1	\N
4221	rogerke01	2004	0	NLS200407130	TEX	2474	AL	0	\N
4222	sabatcc01	2004	0	NLS200407130	CLE	2454	AL	1	\N
4223	schilcu01	2004	0	NLS200407130	BOS	2450	AL	0	\N
4224	sheffga01	2004	0	NLS200407130	NYA	2464	AL	1	\N
4225	tejadmi01	2004	0	NLS200407130	BAL	2449	AL	1	\N
4226	vazquja01	2004	0	NLS200407130	NYA	2464	AL	1	\N
4227	westbja01	2004	0	NLS200407130	CLE	2454	AL	0	\N
4228	youngmi02	2004	0	NLS200407130	TEX	2474	AL	1	\N
4229	clemero02	2004	0	NLS200407130	HOU	2458	NL	1	1
4230	piazzmi01	2004	0	NLS200407130	NYN	2465	NL	1	2
4231	pujolal01	2004	0	NLS200407130	SLN	2472	NL	1	3
4232	kentje01	2004	0	NLS200407130	HOU	2458	NL	1	4
4233	rolensc01	2004	0	NLS200407130	SLN	2472	NL	1	5
4234	renteed01	2004	0	NLS200407130	SLN	2472	NL	1	6
4235	bondsba01	2004	0	NLS200407130	SFN	2471	NL	1	7
4236	berkmla01	2004	0	NLS200407130	HOU	2458	NL	1	8
4237	sosasa01	2004	0	NLS200407130	CHN	2452	NL	1	9
4238	abreubo01	2004	0	NLS200407130	PHI	2467	NL	1	\N
4239	aloumo01	2004	0	NLS200407130	CHN	2452	NL	1	\N
4240	beltrca01	2004	0	NLS200407130	HOU	2458	NL	1	\N
4241	benitar01	2004	0	NLS200407130	FLO	2457	NL	0	\N
4242	cabremi01	2004	0	NLS200407130	FLO	2457	NL	1	\N
4243	caseyse01	2004	0	NLS200407130	CIN	2453	NL	0	\N
4244	estrajo01	2004	0	NLS200407130	ATL	2448	NL	1	\N
4245	gagneer01	2004	0	NLS200407130	LAN	2460	NL	1	\N
4246	glavito02	2004	0	NLS200407130	NYN	2465	NL	1	\N
4247	graveda01	2004	0	NLS200407130	CIN	2453	NL	0	\N
4248	griffke02	2004	0	NLS200407130	CIN	2453	NL	0	\N
4249	heltoto01	2004	0	NLS200407130	COL	2455	NL	1	\N
4250	hernali01	2004	0	NLS200407130	MON	2463	NL	0	\N
4251	johnsra05	2004	0	NLS200407130	ARI	2447	NL	1	\N
4252	kolbda01	2004	0	NLS200407130	MIL	2461	NL	1	\N
4253	larkiba01	2004	0	NLS200407130	CIN	2453	NL	1	\N
4254	loducpa01	2004	0	NLS200407130	LAN	2460	NL	1	\N
4255	loretma01	2004	0	NLS200407130	SDN	2469	NL	1	\N
4256	lowelmi01	2004	0	NLS200407130	FLO	2457	NL	1	\N
4257	pavanca01	2004	0	NLS200407130	FLO	2457	NL	1	\N
4258	schmija01	2004	0	NLS200407130	SFN	2471	NL	0	\N
4259	sheetbe01	2004	0	NLS200407130	MIL	2461	NL	1	\N
4260	thomeji01	2004	0	NLS200407130	PHI	2467	NL	1	\N
4261	wilsoja02	2004	0	NLS200407130	PIT	2468	NL	1	\N
4262	zambrca01	2004	0	NLS200407130	CHN	2452	NL	1	\N
4263	buehrma01	2005	0	ALS200507120	CHA	2480	AL	1	1
4264	varitja01	2005	0	ALS200507120	BOS	2479	AL	1	2
4265	teixema01	2005	0	ALS200507120	TEX	2503	AL	1	3
4266	roberbr01	2005	0	ALS200507120	BAL	2478	AL	1	4
4267	rodrial01	2005	0	ALS200507120	NYA	2493	AL	1	5
4268	tejadmi01	2005	0	ALS200507120	BAL	2478	AL	1	6
4269	ramirma02	2005	0	ALS200507120	BOS	2479	AL	1	7
4270	damonjo01	2005	0	ALS200507120	BOS	2479	AL	1	8
4271	guerrvl01	2005	0	ALS200507120	LAA	2489	AL	1	9
4272	ortizda01	2005	0	ALS200507120	BOS	2479	AL	1	10
4273	anderga01	2005	0	ALS200507120	LAA	2489	AL	1	\N
4274	baezda01	2005	0	ALS200507120	TBA	2502	AL	0	\N
4275	clemema01	2005	0	ALS200507120	BOS	2479	AL	1	\N
4276	colonba01	2005	0	ALS200507120	LAA	2489	AL	1	\N
4277	duchsju01	2005	0	ALS200507120	OAK	2495	AL	0	\N
4278	garlajo01	2005	0	ALS200507120	CHA	2480	AL	1	\N
4279	hallaro01	2005	0	ALS200507120	TOR	2504	AL	0	\N
4280	hillesh02	2005	0	ALS200507120	TOR	2504	AL	1	\N
4281	konerpa01	2005	0	ALS200507120	CHA	2480	AL	1	\N
4282	morame01	2005	0	ALS200507120	BAL	2478	AL	1	\N
4283	nathajo01	2005	0	ALS200507120	MIN	2492	AL	1	\N
4284	podsesc01	2005	0	ALS200507120	CHA	2480	AL	1	\N
4285	riverma01	2005	0	ALS200507120	NYA	2493	AL	1	\N
4286	rodriiv01	2005	0	ALS200507120	DET	2485	AL	1	\N
4287	rogerke01	2005	0	ALS200507120	TEX	2503	AL	1	\N
4288	ryanbj01	2005	0	ALS200507120	BAL	2478	AL	1	\N
4289	santajo01	2005	0	ALS200507120	MIN	2492	AL	1	\N
4290	sheffga01	2005	0	ALS200507120	NYA	2493	AL	1	\N
4291	soriaal01	2005	0	ALS200507120	TEX	2503	AL	1	\N
4292	suzukic01	2005	0	ALS200507120	SEA	2499	AL	1	\N
4293	sweenmi01	2005	0	ALS200507120	KCA	2488	AL	1	\N
4294	wickmbo01	2005	0	ALS200507120	CLE	2483	AL	1	\N
4295	youngmi02	2005	0	ALS200507120	TEX	2503	AL	1	\N
4296	carpech01	2005	0	ALS200507120	SLN	2501	NL	1	1
4297	piazzmi01	2005	0	ALS200507120	NYN	2494	NL	1	2
4298	leede02	2005	0	ALS200507120	CHN	2481	NL	1	3
4299	kentje01	2005	0	ALS200507120	LAN	2490	NL	1	4
4300	ramirar01	2005	0	ALS200507120	CHN	2481	NL	1	5
4301	eckstda01	2005	0	ALS200507120	SLN	2501	NL	1	6
4302	beltrca01	2005	0	ALS200507120	NYN	2494	NL	1	7
4303	edmonji01	2005	0	ALS200507120	SLN	2501	NL	1	8
4304	abreubo01	2005	0	ALS200507120	PHI	2496	NL	1	9
4305	pujolal01	2005	0	ALS200507120	SLN	2501	NL	1	10
4306	aloumo01	2005	0	ALS200507120	SFN	2500	NL	1	\N
4307	bayja01	2005	0	ALS200507120	PIT	2497	NL	0	\N
4308	cabremi01	2005	0	ALS200507120	FLO	2486	NL	1	\N
4309	castilu01	2005	0	ALS200507120	FLO	2486	NL	1	\N
4310	clemero02	2005	0	ALS200507120	HOU	2487	NL	1	\N
4311	cordech01	2005	0	ALS200507120	WAS	2505	NL	1	\N
4312	ensbemo01	2005	0	ALS200507120	HOU	2487	NL	1	\N
4313	fuentbr01	2005	0	ALS200507120	COL	2484	NL	0	\N
4314	gonzalu01	2005	0	ALS200507120	ARI	2476	NL	1	\N
4315	hernali01	2005	0	ALS200507120	WAS	2505	NL	1	\N
4316	isrinja01	2005	0	ALS200507120	SLN	2501	NL	0	\N
4317	izturce01	2005	0	ALS200507120	LAN	2490	NL	0	\N
4318	jonesan01	2005	0	ALS200507120	ATL	2477	NL	1	\N
4319	leeca01	2005	0	ALS200507120	MIL	2491	NL	1	\N
4320	lidgebr01	2005	0	ALS200507120	HOU	2487	NL	1	\N
4321	loducpa01	2005	0	ALS200507120	FLO	2486	NL	1	\N
4322	lopezfe01	2005	0	ALS200507120	CIN	2482	NL	1	\N
4323	martipe02	2005	0	ALS200507120	NYN	2494	NL	0	\N
4324	oswalro01	2005	0	ALS200507120	HOU	2487	NL	1	\N
4325	peavyja01	2005	0	ALS200507120	SDN	2498	NL	1	\N
4326	rolensc01	2005	0	ALS200507120	SLN	2501	NL	0	\N
4327	rolliji01	2005	0	ALS200507120	PHI	2496	NL	1	\N
4328	smoltjo01	2005	0	ALS200507120	ATL	2477	NL	1	\N
4329	wagnebi02	2005	0	ALS200507120	PHI	2496	NL	0	\N
4330	willido03	2005	0	ALS200507120	FLO	2486	NL	1	\N
4331	rogerke01	2006	0	NLS200607110	DET	2515	AL	1	1
4332	rodriiv01	2006	0	NLS200607110	DET	2515	AL	1	2
4333	ortizda01	2006	0	NLS200607110	BOS	2509	AL	1	3
4334	loretma01	2006	0	NLS200607110	BOS	2509	AL	1	4
4335	rodrial01	2006	0	NLS200607110	NYA	2523	AL	1	5
4336	jeterde01	2006	0	NLS200607110	NYA	2523	AL	1	6
4337	guerrvl01	2006	0	NLS200607110	LAA	2519	AL	1	7
4338	wellsve01	2006	0	NLS200607110	TOR	2534	AL	1	8
4339	suzukic01	2006	0	NLS200607110	SEA	2529	AL	1	9
4340	buehrma01	2006	0	NLS200607110	CHA	2510	AL	0	\N
4341	canoro01	2006	0	NLS200607110	NYA	2523	AL	0	\N
4342	contrjo01	2006	0	NLS200607110	CHA	2510	AL	0	\N
4343	dyeje01	2006	0	NLS200607110	CHA	2510	AL	1	\N
4344	glaustr01	2006	0	NLS200607110	TOR	2534	AL	1	\N
4345	hallaro01	2006	0	NLS200607110	TOR	2534	AL	1	\N
4346	jenksbo01	2006	0	NLS200607110	CHA	2510	AL	0	\N
4347	kazmisc01	2006	0	NLS200607110	TBA	2532	AL	1	\N
4348	konerpa01	2006	0	NLS200607110	CHA	2510	AL	1	\N
4349	liriafr01	2006	0	NLS200607110	MIN	2522	AL	0	\N
4350	lopezjo01	2006	0	NLS200607110	SEA	2529	AL	1	\N
4351	matthga02	2006	0	NLS200607110	TEX	2533	AL	1	\N
4352	mauerjo01	2006	0	NLS200607110	MIN	2522	AL	1	\N
4353	ordonma01	2006	0	NLS200607110	DET	2515	AL	1	\N
4354	papeljo01	2006	0	NLS200607110	BOS	2509	AL	0	\N
4355	pierzaj01	2006	0	NLS200607110	CHA	2510	AL	0	\N
4356	ramirma02	2006	0	NLS200607110	BOS	2509	AL	0	\N
4357	redmama01	2006	0	NLS200607110	KCA	2518	AL	0	\N
4358	riosal01	2006	0	NLS200607110	TOR	2534	AL	0	\N
4359	riverma01	2006	0	NLS200607110	NYA	2523	AL	1	\N
4360	ryanbj01	2006	0	NLS200607110	TOR	2534	AL	1	\N
4361	santajo01	2006	0	NLS200607110	MIN	2522	AL	1	\N
4362	sizemgr01	2006	0	NLS200607110	CLE	2513	AL	1	\N
4363	tejadmi01	2006	0	NLS200607110	BAL	2508	AL	1	\N
4364	thomeji01	2006	0	NLS200607110	CHA	2510	AL	1	\N
4365	youngmi02	2006	0	NLS200607110	TEX	2533	AL	1	\N
4366	zitoba01	2006	0	NLS200607110	OAK	2525	AL	1	\N
4367	pennybr01	2006	0	NLS200607110	LAN	2520	NL	1	1
4368	loducpa01	2006	0	NLS200607110	NYN	2524	NL	1	2
4369	pujolal01	2006	0	NLS200607110	SLN	2531	NL	1	3
4370	utleych01	2006	0	NLS200607110	PHI	2526	NL	1	4
4371	wrighda03	2006	0	NLS200607110	NYN	2524	NL	1	5
4372	renteed01	2006	0	NLS200607110	ATL	2507	NL	1	6
4373	soriaal01	2006	0	NLS200607110	WAS	2535	NL	1	7
4374	beltrca01	2006	0	NLS200607110	NYN	2524	NL	1	8
4375	bayja01	2006	0	NLS200607110	PIT	2527	NL	1	9
4376	arroybr01	2006	0	NLS200607110	CIN	2512	NL	1	\N
4377	berkmla01	2006	0	NLS200607110	HOU	2517	NL	1	\N
4378	cabremi01	2006	0	NLS200607110	FLO	2516	NL	1	\N
4379	capuach01	2006	0	NLS200607110	MIL	2521	NL	0	\N
4380	carpech01	2006	0	NLS200607110	SLN	2531	NL	0	\N
4381	eckstda01	2006	0	NLS200607110	SLN	2531	NL	1	\N
4382	fuentbr01	2006	0	NLS200607110	COL	2514	NL	1	\N
4383	garcino01	2006	0	NLS200607110	LAN	2520	NL	0	\N
4384	glavito02	2006	0	NLS200607110	NYN	2524	NL	0	\N
4385	gordoto01	2006	0	NLS200607110	PHI	2526	NL	1	\N
4386	hoffmtr01	2006	0	NLS200607110	SDN	2528	NL	1	\N
4387	hollima01	2006	0	NLS200607110	COL	2514	NL	1	\N
4388	howarry01	2006	0	NLS200607110	PHI	2526	NL	1	\N
4389	jonesan01	2006	0	NLS200607110	ATL	2507	NL	0	\N
4390	leeca01	2006	0	NLS200607110	MIL	2521	NL	1	\N
4391	martipe02	2006	0	NLS200607110	NYN	2524	NL	0	\N
4392	mccanbr01	2006	0	NLS200607110	ATL	2507	NL	1	\N
4393	oswalro01	2006	0	NLS200607110	HOU	2517	NL	1	\N
4394	reyesjo01	2006	0	NLS200607110	NYN	2524	NL	0	\N
4395	rolensc01	2006	0	NLS200607110	SLN	2531	NL	0	\N
4396	sanchfr01	2006	0	NLS200607110	PIT	2527	NL	1	\N
4397	schmija01	2006	0	NLS200607110	SFN	2530	NL	0	\N
4398	turnbde01	2006	0	NLS200607110	MIL	2521	NL	1	\N
4399	ugglada01	2006	0	NLS200607110	FLO	2516	NL	0	\N
4400	webbbr01	2006	0	NLS200607110	ARI	2506	NL	1	\N
4401	zambrca01	2006	0	NLS200607110	CHN	2511	NL	0	\N
4402	harenda01	2007	0	NLS200707100	OAK	2555	AL	1	1
4403	rodriiv01	2007	0	NLS200707100	DET	2545	AL	1	2
4404	ortizda01	2007	0	NLS200707100	BOS	2539	AL	1	3
4405	polanpl01	2007	0	NLS200707100	DET	2545	AL	1	4
4406	rodrial01	2007	0	NLS200707100	NYA	2553	AL	1	5
4407	jeterde01	2007	0	NLS200707100	NYA	2553	AL	1	6
4408	ordonma01	2007	0	NLS200707100	DET	2545	AL	1	7
4409	suzukic01	2007	0	NLS200707100	SEA	2559	AL	1	8
4410	guerrvl01	2007	0	NLS200707100	LAA	2549	AL	1	9
4411	beckejo02	2007	0	NLS200707100	BOS	2539	AL	1	\N
4412	crawfca02	2007	0	NLS200707100	TBA	2562	AL	1	\N
4413	guillca01	2007	0	NLS200707100	DET	2545	AL	1	\N
4414	hunteto01	2007	0	NLS200707100	MIN	2552	AL	1	\N
4415	jenksbo01	2007	0	NLS200707100	CHA	2540	AL	0	\N
4416	lackejo01	2007	0	NLS200707100	LAA	2549	AL	0	\N
4417	lowelmi01	2007	0	NLS200707100	BOS	2539	AL	1	\N
4418	martivi01	2007	0	NLS200707100	CLE	2543	AL	1	\N
4419	mechegi01	2007	0	NLS200707100	KCA	2548	AL	0	\N
4420	morneju01	2007	0	NLS200707100	MIN	2552	AL	1	\N
4421	okajihi01	2007	0	NLS200707100	BOS	2539	AL	0	\N
4422	papeljo01	2007	0	NLS200707100	BOS	2539	AL	1	\N
4423	posadjo01	2007	0	NLS200707100	NYA	2553	AL	1	\N
4424	putzjj01	2007	0	NLS200707100	SEA	2559	AL	1	\N
4425	ramirma02	2007	0	NLS200707100	BOS	2539	AL	1	\N
4426	riosal01	2007	0	NLS200707100	TOR	2564	AL	1	\N
4427	roberbr01	2007	0	NLS200707100	BAL	2538	AL	1	\N
4428	rodrifr03	2007	0	NLS200707100	LAA	2549	AL	1	\N
4429	sabatcc01	2007	0	NLS200707100	CLE	2543	AL	1	\N
4430	santajo01	2007	0	NLS200707100	MIN	2552	AL	1	\N
4431	sizemgr01	2007	0	NLS200707100	CLE	2543	AL	1	\N
4432	verlaju01	2007	0	NLS200707100	DET	2545	AL	1	\N
4433	youngmi02	2007	0	NLS200707100	TEX	2563	AL	0	\N
4434	peavyja01	2007	0	NLS200707100	SDN	2558	NL	1	1
4435	martiru01	2007	0	NLS200707100	LAN	2550	NL	1	2
4436	fieldpr01	2007	0	NLS200707100	MIL	2551	NL	1	3
4437	utleych01	2007	0	NLS200707100	PHI	2556	NL	1	4
4438	wrighda03	2007	0	NLS200707100	NYN	2554	NL	1	5
4439	reyesjo01	2007	0	NLS200707100	NYN	2554	NL	1	6
4440	bondsba01	2007	0	NLS200707100	SFN	2560	NL	1	7
4441	beltrca01	2007	0	NLS200707100	NYN	2554	NL	1	8
4442	griffke02	2007	0	NLS200707100	CIN	2542	NL	1	9
4443	cabremi01	2007	0	NLS200707100	FLO	2546	NL	1	\N
4444	cordefr01	2007	0	NLS200707100	MIL	2551	NL	1	\N
4445	fuentbr01	2007	0	NLS200707100	COL	2544	NL	0	\N
4446	hamelco01	2007	0	NLS200707100	PHI	2556	NL	1	\N
4447	hardyjj01	2007	0	NLS200707100	MIL	2551	NL	1	\N
4448	hoffmtr01	2007	0	NLS200707100	SDN	2558	NL	1	\N
4449	hollima01	2007	0	NLS200707100	COL	2544	NL	1	\N
4450	hudsoor01	2007	0	NLS200707100	ARI	2536	NL	1	\N
4451	leeca01	2007	0	NLS200707100	HOU	2547	NL	1	\N
4452	leede02	2007	0	NLS200707100	CHN	2541	NL	1	\N
4453	mccanbr01	2007	0	NLS200707100	ATL	2537	NL	1	\N
4454	oswalro01	2007	0	NLS200707100	HOU	2547	NL	0	\N
4455	pennybr01	2007	0	NLS200707100	LAN	2550	NL	1	\N
4456	pujolal01	2007	0	NLS200707100	SLN	2561	NL	0	\N
4457	rowanaa01	2007	0	NLS200707100	PHI	2556	NL	1	\N
4458	saitota01	2007	0	NLS200707100	LAN	2550	NL	1	\N
4459	sanchfr01	2007	0	NLS200707100	PIT	2557	NL	1	\N
4460	sheetbe01	2007	0	NLS200707100	MIL	2551	NL	1	\N
4461	smoltjo01	2007	0	NLS200707100	ATL	2537	NL	0	\N
4462	soriaal01	2007	0	NLS200707100	CHN	2541	NL	1	\N
4463	valvejo01	2007	0	NLS200707100	ARI	2536	NL	0	\N
4464	wagnebi02	2007	0	NLS200707100	NYN	2554	NL	1	\N
4465	webbbr01	2007	0	NLS200707100	ARI	2536	NL	0	\N
4466	youngch03	2007	0	NLS200707100	SDN	2558	NL	1	\N
4467	youngdm01	2007	0	NLS200707100	WAS	2565	NL	1	\N
4468	leecl02	2008	0	ALS200807150	CLE	2573	AL	1	1
4469	mauerjo01	2008	0	ALS200807150	MIN	2582	AL	1	2
4470	youklke01	2008	0	ALS200807150	BOS	2569	AL	1	3
4471	pedrodu01	2008	0	ALS200807150	BOS	2569	AL	1	4
4472	rodrial01	2008	0	ALS200807150	NYA	2583	AL	1	5
4473	jeterde01	2008	0	ALS200807150	NYA	2583	AL	1	6
4474	ramirma02	2008	0	ALS200807150	BOS	2569	AL	1	7
4475	hamiljo03	2008	0	ALS200807150	TEX	2593	AL	1	8
4476	suzukic01	2008	0	ALS200807150	SEA	2589	AL	1	9
4477	bradlmi01	2008	0	ALS200807150	TEX	2593	AL	1	10
4478	credejo01	2008	0	ALS200807150	CHA	2570	AL	1	\N
4479	drewjd01	2008	0	ALS200807150	BOS	2569	AL	1	\N
4480	duchsju01	2008	0	ALS200807150	OAK	2585	AL	1	\N
4481	guillca01	2008	0	ALS200807150	DET	2575	AL	1	\N
4482	hallaro01	2008	0	ALS200807150	TOR	2594	AL	1	\N
4483	kazmisc01	2008	0	ALS200807150	TBA	2592	AL	1	\N
4484	kinslia01	2008	0	ALS200807150	TEX	2593	AL	1	\N
4485	longoev01	2008	0	ALS200807150	TBA	2592	AL	1	\N
4486	morneju01	2008	0	ALS200807150	MIN	2582	AL	1	\N
4487	nathajo01	2008	0	ALS200807150	MIN	2582	AL	1	\N
4488	navardi01	2008	0	ALS200807150	TBA	2592	AL	1	\N
4489	ortizda01	2008	0	ALS200807150	BOS	2569	AL	0	\N
4490	papeljo01	2008	0	ALS200807150	BOS	2569	AL	1	\N
4491	quentca01	2008	0	ALS200807150	CHA	2570	AL	1	\N
4492	riverma01	2008	0	ALS200807150	NYA	2583	AL	1	\N
4493	rodrifr03	2008	0	ALS200807150	LAA	2579	AL	1	\N
4494	santaer01	2008	0	ALS200807150	LAA	2579	AL	1	\N
4495	saundjo01	2008	0	ALS200807150	LAA	2579	AL	1	\N
4496	sherrge01	2008	0	ALS200807150	BAL	2568	AL	1	\N
4497	sizemgr01	2008	0	ALS200807150	CLE	2573	AL	1	\N
4498	soriajo01	2008	0	ALS200807150	KCA	2578	AL	1	\N
4499	varitja01	2008	0	ALS200807150	BOS	2569	AL	1	\N
4500	youngmi02	2008	0	ALS200807150	TEX	2593	AL	1	\N
4501	sheetbe01	2008	0	ALS200807150	MIL	2581	NL	1	1
4502	sotoge01	2008	0	ALS200807150	CHN	2571	NL	1	2
4503	berkmla01	2008	0	ALS200807150	HOU	2577	NL	1	3
4504	utleych01	2008	0	ALS200807150	PHI	2586	NL	1	4
4505	jonesch06	2008	0	ALS200807150	ATL	2567	NL	1	5
4506	ramirha01	2008	0	ALS200807150	FLO	2576	NL	1	6
4507	braunry02	2008	0	ALS200807150	MIL	2581	NL	1	7
4508	fukudko01	2008	0	ALS200807150	CHN	2571	NL	1	8
4509	hollima01	2008	0	ALS200807150	COL	2574	NL	1	9
4510	pujolal01	2008	0	ALS200807150	SLN	2591	NL	1	10
4511	cookaa01	2008	0	ALS200807150	COL	2574	NL	1	\N
4512	dempsry01	2008	0	ALS200807150	CHN	2571	NL	1	\N
4513	gonzaad01	2008	0	ALS200807150	SDN	2588	NL	1	\N
4514	guzmacr01	2008	0	ALS200807150	WAS	2595	NL	1	\N
4515	harenda01	2008	0	ALS200807150	ARI	2566	NL	1	\N
4516	hartco01	2008	0	ALS200807150	MIL	2581	NL	1	\N
4517	lidgebr01	2008	0	ALS200807150	PHI	2586	NL	1	\N
4518	linceti01	2008	0	ALS200807150	SFN	2590	NL	0	\N
4519	ludwiry01	2008	0	ALS200807150	SLN	2591	NL	1	\N
4520	marmoca01	2008	0	ALS200807150	CHN	2571	NL	1	\N
4521	martiru01	2008	0	ALS200807150	LAN	2580	NL	1	\N
4522	mccanbr01	2008	0	ALS200807150	ATL	2567	NL	1	\N
4523	mclouna01	2008	0	ALS200807150	PIT	2587	NL	1	\N
4524	ramirar01	2008	0	ALS200807150	CHN	2571	NL	1	\N
4525	soriaal01	2008	0	ALS200807150	CHN	2571	NL	0	\N
4526	tejadmi01	2008	0	ALS200807150	HOU	2577	NL	1	\N
4527	ugglada01	2008	0	ALS200807150	FLO	2576	NL	1	\N
4528	volqued01	2008	0	ALS200807150	CIN	2572	NL	1	\N
4529	wagnebi02	2008	0	ALS200807150	NYN	2584	NL	1	\N
4530	webbbr01	2008	0	ALS200807150	ARI	2566	NL	1	\N
4531	wilsobr01	2008	0	ALS200807150	SFN	2590	NL	1	\N
4532	woodke02	2008	0	ALS200807150	CHN	2571	NL	0	\N
4533	wrighda03	2008	0	ALS200807150	NYN	2584	NL	1	\N
4534	zambrca01	2008	0	ALS200807150	CHN	2571	NL	1	\N
4535	hallaro01	2009	0	NLS200907140	TOR	2624	AL	1	1
4536	mauerjo01	2009	0	NLS200907140	MIN	2612	AL	1	2
4537	teixema01	2009	0	NLS200907140	NYA	2613	AL	1	3
4538	hillaa01	2009	0	NLS200907140	TOR	2624	AL	1	4
4539	youngmi02	2009	0	NLS200907140	TEX	2623	AL	1	5
4540	jeterde01	2009	0	NLS200907140	NYA	2613	AL	1	6
4541	bayja01	2009	0	NLS200907140	BOS	2599	AL	1	7
4542	hamiljo03	2009	0	NLS200907140	TEX	2623	AL	1	8
4543	suzukic01	2009	0	NLS200907140	SEA	2619	AL	1	9
4544	bartlja01	2009	0	NLS200907140	TBA	2622	AL	1	\N
4545	beckejo02	2009	0	NLS200907140	BOS	2599	AL	0	\N
4546	buehrma01	2009	0	NLS200907140	CHA	2600	AL	1	\N
4547	crawfca02	2009	0	NLS200907140	TBA	2622	AL	1	\N
4548	cruzne02	2009	0	NLS200907140	TEX	2623	AL	0	\N
4549	fuentbr01	2009	0	NLS200907140	LAA	2609	AL	0	\N
4550	grandcu01	2009	0	NLS200907140	DET	2605	AL	1	\N
4551	greinza01	2009	0	NLS200907140	KCA	2608	AL	1	\N
4552	hernafe02	2009	0	NLS200907140	SEA	2619	AL	1	\N
4553	hunteto01	2009	0	NLS200907140	LAA	2609	AL	0	\N
4554	ingebr01	2009	0	NLS200907140	DET	2605	AL	1	\N
4555	jacksed01	2009	0	NLS200907140	DET	2605	AL	1	\N
4556	jonesad01	2009	0	NLS200907140	BAL	2598	AL	1	\N
4557	longoev01	2009	0	NLS200907140	TBA	2622	AL	0	\N
4558	martivi01	2009	0	NLS200907140	CLE	2603	AL	1	\N
4559	morneju01	2009	0	NLS200907140	MIN	2612	AL	1	\N
4560	nathajo01	2009	0	NLS200907140	MIN	2612	AL	1	\N
4561	papeljo01	2009	0	NLS200907140	BOS	2599	AL	1	\N
4562	pedrodu01	2009	0	NLS200907140	BOS	2599	AL	0	\N
4563	penaca01	2009	0	NLS200907140	TBA	2622	AL	0	\N
4564	riverma01	2009	0	NLS200907140	NYA	2613	AL	1	\N
4565	verlaju01	2009	0	NLS200907140	DET	2605	AL	0	\N
4566	wakefti01	2009	0	NLS200907140	BOS	2599	AL	0	\N
4567	youklke01	2009	0	NLS200907140	BOS	2599	AL	1	\N
4568	zobribe01	2009	0	NLS200907140	TBA	2622	AL	1	\N
4569	linceti01	2009	0	NLS200907140	SFN	2620	NL	1	1
4570	molinya01	2009	0	NLS200907140	SLN	2621	NL	1	2
4571	pujolal01	2009	0	NLS200907140	SLN	2621	NL	1	3
4572	utleych01	2009	0	NLS200907140	PHI	2616	NL	1	4
4573	wrighda03	2009	0	NLS200907140	NYN	2614	NL	1	5
4574	ramirha01	2009	0	NLS200907140	FLO	2606	NL	1	6
4575	ibanera01	2009	0	NLS200907140	PHI	2616	NL	1	7
4576	victosh01	2009	0	NLS200907140	PHI	2616	NL	1	8
4577	braunry02	2009	0	NLS200907140	MIL	2611	NL	1	9
4578	bellhe01	2009	0	NLS200907140	SDN	2618	NL	1	\N
4579	beltrca01	2009	0	NLS200907140	NYN	2614	NL	0	\N
4580	billich01	2009	0	NLS200907140	LAN	2610	NL	1	\N
4581	broxtjo01	2009	0	NLS200907140	LAN	2610	NL	0	\N
4582	cainma01	2009	0	NLS200907140	SFN	2620	NL	0	\N
4583	cordefr01	2009	0	NLS200907140	CIN	2602	NL	1	\N
4584	dukeza01	2009	0	NLS200907140	PIT	2617	NL	0	\N
4585	fieldpr01	2009	0	NLS200907140	MIL	2611	NL	1	\N
4586	frankry01	2009	0	NLS200907140	SLN	2621	NL	1	\N
4587	gonzaad01	2009	0	NLS200907140	SDN	2618	NL	1	\N
4588	harenda01	2009	0	NLS200907140	ARI	2596	NL	1	\N
4589	hawpebr01	2009	0	NLS200907140	COL	2604	NL	1	\N
4590	hoffmtr01	2009	0	NLS200907140	MIL	2611	NL	1	\N
4591	howarry01	2009	0	NLS200907140	PHI	2616	NL	1	\N
4592	hudsoor01	2009	0	NLS200907140	LAN	2610	NL	1	\N
4593	johnsjo09	2009	0	NLS200907140	FLO	2606	NL	0	\N
4594	lillyte01	2009	0	NLS200907140	CHN	2601	NL	0	\N
4595	marquja01	2009	0	NLS200907140	COL	2604	NL	0	\N
4596	mccanbr01	2009	0	NLS200907140	ATL	2597	NL	1	\N
4597	pencehu01	2009	0	NLS200907140	HOU	2607	NL	0	\N
4598	rodrifr03	2009	0	NLS200907140	NYN	2614	NL	1	\N
4599	sanchfr01	2009	0	NLS200907140	PIT	2617	NL	0	\N
4600	santajo01	2009	0	NLS200907140	NYN	2614	NL	0	\N
4601	tejadmi01	2009	0	NLS200907140	HOU	2607	NL	1	\N
4602	uptonju01	2009	0	NLS200907140	ARI	2596	NL	1	\N
4603	werthja01	2009	0	NLS200907140	PHI	2616	NL	1	\N
4604	zimmery01	2009	0	NLS200907140	WAS	2625	NL	1	\N
4605	priceda01	2010	0	ALS201007130	TBA	2652	AL	1	1
4606	mauerjo01	2010	0	ALS201007130	MIN	2642	AL	1	2
4607	cabremi01	2010	0	ALS201007130	DET	2635	AL	1	3
4608	canoro01	2010	0	ALS201007130	NYA	2643	AL	1	4
4609	longoev01	2010	0	ALS201007130	TBA	2652	AL	1	5
4610	jeterde01	2010	0	ALS201007130	NYA	2643	AL	1	6
4611	crawfca02	2010	0	ALS201007130	TBA	2652	AL	1	7
4612	hamiljo03	2010	0	ALS201007130	TEX	2653	AL	1	8
4613	suzukic01	2010	0	ALS201007130	SEA	2649	AL	1	9
4614	guerrvl01	2010	0	ALS201007130	TEX	2653	AL	1	10
4615	andruel01	2010	0	ALS201007130	TEX	2653	AL	1	\N
4616	bailean01	2010	0	ALS201007130	OAK	2645	AL	1	\N
4617	bautijo02	2010	0	ALS201007130	TOR	2654	AL	1	\N
4618	beltrad01	2010	0	ALS201007130	BOS	2629	AL	1	\N
4619	buchhcl01	2010	0	ALS201007130	BOS	2629	AL	0	\N
4620	buckjo01	2010	0	ALS201007130	TOR	2654	AL	1	\N
4621	cahiltr01	2010	0	ALS201007130	OAK	2645	AL	0	\N
4622	carmofa01	2010	0	ALS201007130	CLE	2633	AL	0	\N
4623	felizne01	2010	0	ALS201007130	TEX	2653	AL	0	\N
4624	hugheph01	2010	0	ALS201007130	NYA	2643	AL	1	\N
4625	hunteto01	2010	0	ALS201007130	LAA	2639	AL	1	\N
4626	kinslia01	2010	0	ALS201007130	TEX	2653	AL	1	\N
4627	konerpa01	2010	0	ALS201007130	CHA	2630	AL	1	\N
4628	leecl02	2010	0	ALS201007130	TEX	2653	AL	1	\N
4629	lestejo01	2010	0	ALS201007130	BOS	2629	AL	1	\N
4630	martivi01	2010	0	ALS201007130	BOS	2629	AL	0	\N
4631	morneju01	2010	0	ALS201007130	MIN	2642	AL	0	\N
4632	ortizda01	2010	0	ALS201007130	BOS	2629	AL	1	\N
4633	pedrodu01	2010	0	ALS201007130	BOS	2629	AL	0	\N
4634	pettian01	2010	0	ALS201007130	NYA	2643	AL	1	\N
4635	riverma01	2010	0	ALS201007130	NYA	2643	AL	0	\N
4636	rodrial01	2010	0	ALS201007130	NYA	2643	AL	0	\N
4637	sabatcc01	2010	0	ALS201007130	NYA	2643	AL	0	\N
4638	soriajo01	2010	0	ALS201007130	KCA	2638	AL	0	\N
4639	soriara01	2010	0	ALS201007130	TBA	2652	AL	1	\N
4640	swishni01	2010	0	ALS201007130	NYA	2643	AL	1	\N
4641	thornma01	2010	0	ALS201007130	CHA	2630	AL	1	\N
4642	valvejo01	2010	0	ALS201007130	DET	2635	AL	1	\N
4643	verlaju01	2010	0	ALS201007130	DET	2635	AL	1	\N
4644	weaveje02	2010	0	ALS201007130	LAA	2639	AL	0	\N
4645	wellsve01	2010	0	ALS201007130	TOR	2654	AL	1	\N
4646	wiggity01	2010	0	ALS201007130	BAL	2628	AL	1	\N
4647	jimenub01	2010	0	ALS201007130	COL	2634	NL	1	1
4648	molinya01	2010	0	ALS201007130	SLN	2651	NL	1	2
4649	pujolal01	2010	0	ALS201007130	SLN	2651	NL	1	3
4650	pradoma01	2010	0	ALS201007130	ATL	2627	NL	1	4
4651	wrighda03	2010	0	ALS201007130	NYN	2644	NL	1	5
4652	ramirha01	2010	0	ALS201007130	FLO	2636	NL	1	6
4653	braunry02	2010	0	ALS201007130	MIL	2641	NL	1	7
4654	ethiean01	2010	0	ALS201007130	LAN	2640	NL	1	8
4655	hartco01	2010	0	ALS201007130	MIL	2641	NL	1	9
4656	howarry01	2010	0	ALS201007130	PHI	2646	NL	1	10
4657	bellhe01	2010	0	ALS201007130	SDN	2648	NL	1	\N
4658	bournmi01	2010	0	ALS201007130	HOU	2637	NL	1	\N
4659	broxtjo01	2010	0	ALS201007130	LAN	2640	NL	1	\N
4660	byrdma01	2010	0	ALS201007130	CHN	2631	NL	1	\N
4661	cappsma01	2010	0	ALS201007130	WAS	2655	NL	1	\N
4662	carpech01	2010	0	ALS201007130	SLN	2651	NL	0	\N
4663	furcara01	2010	0	ALS201007130	LAN	2640	NL	1	\N
4664	gallayo01	2010	0	ALS201007130	MIL	2641	NL	0	\N
4665	gonzaad01	2010	0	ALS201007130	SDN	2648	NL	1	\N
4666	hallaro01	2010	0	ALS201007130	PHI	2646	NL	1	\N
4667	heywaja01	2010	0	ALS201007130	ATL	2627	NL	0	\N
4668	hollima01	2010	0	ALS201007130	SLN	2651	NL	1	\N
4669	hudsoti01	2010	0	ALS201007130	ATL	2627	NL	0	\N
4670	infanom01	2010	0	ALS201007130	ATL	2627	NL	0	\N
4671	johnsjo09	2010	0	ALS201007130	FLO	2636	NL	1	\N
4672	kuoho01	2010	0	ALS201007130	LAN	2640	NL	1	\N
4673	linceti01	2010	0	ALS201007130	SFN	2650	NL	0	\N
4674	mccanbr01	2010	0	ALS201007130	ATL	2627	NL	1	\N
4675	meekev01	2010	0	ALS201007130	PIT	2647	NL	0	\N
4676	phillbr01	2010	0	ALS201007130	CIN	2632	NL	1	\N
4677	reyesjo01	2010	0	ALS201007130	NYN	2644	NL	0	\N
4678	rhodear01	2010	0	ALS201007130	CIN	2632	NL	0	\N
4679	rolensc01	2010	0	ALS201007130	CIN	2632	NL	1	\N
4680	tulowtr01	2010	0	ALS201007130	COL	2634	NL	0	\N
4681	utleych01	2010	0	ALS201007130	PHI	2646	NL	0	\N
4682	vottojo01	2010	0	ALS201007130	CIN	2632	NL	1	\N
4683	wainwad01	2010	0	ALS201007130	SLN	2651	NL	1	\N
4684	wilsobr01	2010	0	ALS201007130	SFN	2650	NL	1	\N
4685	youngch04	2010	0	ALS201007130	ARI	2626	NL	1	\N
4686	weaveje02	2011	0	NLS201107120	LAA	2669	AL	1	1
4687	avilaal01	2011	0	NLS201107120	DET	2665	AL	1	2
4688	gonzaad01	2011	0	NLS201107120	BOS	2659	AL	1	3
4689	canoro01	2011	0	NLS201107120	NYA	2673	AL	1	4
4690	beltrad01	2011	0	NLS201107120	TEX	2683	AL	1	5
4691	cabreas01	2011	0	NLS201107120	CLE	2663	AL	1	6
4692	hamiljo03	2011	0	NLS201107120	TEX	2683	AL	1	7
4693	grandcu01	2011	0	NLS201107120	NYA	2673	AL	1	8
4694	bautijo02	2011	0	NLS201107120	TOR	2684	AL	1	9
4695	ortizda01	2011	0	NLS201107120	BOS	2659	AL	1	10
4696	beckejo02	2011	0	NLS201107120	BOS	2659	AL	0	\N
4697	cabremi01	2011	0	NLS201107120	DET	2665	AL	1	\N
4698	crowaa01	2011	0	NLS201107120	KCA	2668	AL	0	\N
4699	cuddymi01	2011	0	NLS201107120	MIN	2672	AL	1	\N
4700	ellsbja01	2011	0	NLS201107120	BOS	2659	AL	1	\N
4701	gonzagi01	2011	0	NLS201107120	OAK	2675	AL	1	\N
4702	hernafe02	2011	0	NLS201107120	SEA	2679	AL	0	\N
4703	jeterde01	2011	0	NLS201107120	NYA	2673	AL	0	\N
4704	joycema01	2011	0	NLS201107120	TBA	2682	AL	1	\N
4705	kendrho01	2011	0	NLS201107120	LAA	2669	AL	1	\N
4706	konerpa01	2011	0	NLS201107120	CHA	2660	AL	1	\N
4707	leagubr01	2011	0	NLS201107120	SEA	2679	AL	1	\N
4708	lestejo01	2011	0	NLS201107120	BOS	2659	AL	0	\N
4709	martiru01	2011	0	NLS201107120	NYA	2673	AL	0	\N
4710	ogandal01	2011	0	NLS201107120	TEX	2683	AL	1	\N
4711	peraljh01	2011	0	NLS201107120	DET	2665	AL	1	\N
4712	perezch01	2011	0	NLS201107120	CLE	2663	AL	1	\N
4713	pinedmi01	2011	0	NLS201107120	SEA	2679	AL	1	\N
4714	priceda01	2011	0	NLS201107120	TBA	2682	AL	0	\N
4715	quentca01	2011	0	NLS201107120	CHA	2660	AL	1	\N
4716	riverma01	2011	0	NLS201107120	NYA	2673	AL	0	\N
4717	roberda08	2011	0	NLS201107120	NYA	2673	AL	1	\N
4718	rodrial01	2011	0	NLS201107120	NYA	2673	AL	0	\N
4719	romerri01	2011	0	NLS201107120	TOR	2684	AL	0	\N
4720	sabatcc01	2011	0	NLS201107120	NYA	2673	AL	0	\N
4721	shielja02	2011	0	NLS201107120	TBA	2682	AL	0	\N
4722	valvejo01	2011	0	NLS201107120	DET	2665	AL	0	\N
4723	verlaju01	2011	0	NLS201107120	DET	2665	AL	0	\N
4724	waldejo01	2011	0	NLS201107120	LAA	2669	AL	1	\N
4725	wietema01	2011	0	NLS201107120	BAL	2658	AL	1	\N
4726	wilsocj01	2011	0	NLS201107120	TEX	2683	AL	1	\N
4727	youklke01	2011	0	NLS201107120	BOS	2659	AL	1	\N
4728	youngmi02	2011	0	NLS201107120	TEX	2683	AL	1	\N
4729	hallaro01	2011	0	NLS201107120	PHI	2676	NL	1	1
4730	mccanbr01	2011	0	NLS201107120	ATL	2657	NL	1	2
4731	fieldpr01	2011	0	NLS201107120	MIL	2671	NL	1	3
4732	weeksri01	2011	0	NLS201107120	MIL	2671	NL	1	4
4733	rolensc01	2011	0	NLS201107120	CIN	2662	NL	1	5
4734	tulowtr01	2011	0	NLS201107120	COL	2664	NL	1	6
4735	hollima01	2011	0	NLS201107120	SLN	2681	NL	1	7
4736	kempma01	2011	0	NLS201107120	LAN	2670	NL	1	8
4737	berkmla01	2011	0	NLS201107120	SLN	2681	NL	1	9
4738	beltrca01	2011	0	NLS201107120	NYN	2674	NL	1	10
4739	bellhe01	2011	0	NLS201107120	SDN	2678	NL	1	\N
4740	bruceja01	2011	0	NLS201107120	CIN	2662	NL	1	\N
4741	cainma01	2011	0	NLS201107120	SFN	2680	NL	0	\N
4742	castrst01	2011	0	NLS201107120	CHN	2661	NL	1	\N
4743	clippty01	2011	0	NLS201107120	WAS	2685	NL	1	\N
4744	correke01	2011	0	NLS201107120	PIT	2677	NL	0	\N
4745	ethiean01	2011	0	NLS201107120	LAN	2670	NL	1	\N
4746	hamelco01	2011	0	NLS201107120	PHI	2676	NL	0	\N
4747	hanrajo01	2011	0	NLS201107120	PIT	2677	NL	1	\N
4748	jonesch06	2011	0	NLS201107120	ATL	2657	NL	0	\N
4749	jurrjja01	2011	0	NLS201107120	ATL	2657	NL	1	\N
4750	kershcl01	2011	0	NLS201107120	LAN	2670	NL	1	\N
4751	kimbrcr01	2011	0	NLS201107120	ATL	2657	NL	1	\N
4752	leecl02	2011	0	NLS201107120	PHI	2676	NL	1	\N
4753	linceti01	2011	0	NLS201107120	SFN	2680	NL	0	\N
4754	mccutan01	2011	0	NLS201107120	PIT	2677	NL	1	\N
4755	molinya01	2011	0	NLS201107120	SLN	2681	NL	1	\N
4756	montemi01	2011	0	NLS201107120	ARI	2656	NL	1	\N
4757	pencehu01	2011	0	NLS201107120	HOU	2667	NL	1	\N
4758	phillbr01	2011	0	NLS201107120	CIN	2662	NL	1	\N
4759	polanpl01	2011	0	NLS201107120	PHI	2676	NL	0	\N
4760	reyesjo01	2011	0	NLS201107120	NYN	2674	NL	0	\N
4761	sanchga01	2011	0	NLS201107120	FLO	2666	NL	1	\N
4762	sandopa01	2011	0	NLS201107120	SFN	2680	NL	1	\N
4763	uptonju01	2011	0	NLS201107120	ARI	2656	NL	1	\N
4764	ventejo01	2011	0	NLS201107120	ATL	2657	NL	1	\N
4765	victosh01	2011	0	NLS201107120	PHI	2676	NL	0	\N
4766	vogelry01	2011	0	NLS201107120	SFN	2680	NL	0	\N
4767	vottojo01	2011	0	NLS201107120	CIN	2662	NL	1	\N
4768	wilsobr01	2011	0	NLS201107120	SFN	2680	NL	1	\N
4769	verlaju01	2012	0	ALS201207100	DET	2695	AL	1	1
4770	napolmi01	2012	0	ALS201207100	TEX	2713	AL	1	2
4771	fieldpr01	2012	0	ALS201207100	DET	2695	AL	1	3
4772	canoro01	2012	0	ALS201207100	NYA	2703	AL	1	4
4773	beltrad01	2012	0	ALS201207100	TEX	2713	AL	1	5
4774	jeterde01	2012	0	ALS201207100	NYA	2703	AL	1	6
4775	hamiljo03	2012	0	ALS201207100	TEX	2713	AL	1	7
4776	grandcu01	2012	0	ALS201207100	NYA	2703	AL	1	8
4777	bautijo02	2012	0	ALS201207100	TOR	2714	AL	1	9
4778	ortizda01	2012	0	ALS201207100	BOS	2689	AL	1	10
4779	andruel01	2012	0	ALS201207100	TEX	2713	AL	1	\N
4780	butlebi03	2012	0	ALS201207100	KCA	2697	AL	1	\N
4781	cabreas01	2012	0	ALS201207100	CLE	2693	AL	1	\N
4782	cabremi01	2012	0	ALS201207100	DET	2695	AL	1	\N
4783	cookry01	2012	0	ALS201207100	OAK	2705	AL	1	\N
4784	darviyu01	2012	0	ALS201207100	TEX	2713	AL	0	\N
4785	dunnad01	2012	0	ALS201207100	CHA	2690	AL	0	\N
4786	harrima01	2012	0	ALS201207100	TEX	2713	AL	1	\N
4787	hernafe02	2012	0	ALS201207100	SEA	2709	AL	0	\N
4788	johnsji04	2012	0	ALS201207100	BAL	2688	AL	1	\N
4789	jonesad01	2012	0	ALS201207100	BAL	2688	AL	1	\N
4790	kinslia01	2012	0	ALS201207100	TEX	2713	AL	1	\N
4791	konerpa01	2012	0	ALS201207100	CHA	2690	AL	1	\N
4792	mauerjo01	2012	0	ALS201207100	MIN	2702	AL	1	\N
4793	nathajo01	2012	0	ALS201207100	TEX	2713	AL	1	\N
4794	peavyja01	2012	0	ALS201207100	CHA	2690	AL	0	\N
4795	perezch01	2012	0	ALS201207100	CLE	2693	AL	0	\N
4796	priceda01	2012	0	ALS201207100	TBA	2712	AL	1	\N
4797	rodnefe01	2012	0	ALS201207100	TBA	2712	AL	1	\N
4798	sabatcc01	2012	0	ALS201207100	NYA	2703	AL	0	\N
4799	salech01	2012	0	ALS201207100	CHA	2690	AL	1	\N
4800	troutmi01	2012	0	ALS201207100	LAA	2698	AL	1	\N
4801	trumbma01	2012	0	ALS201207100	LAA	2698	AL	1	\N
4802	weaveje02	2012	0	ALS201207100	LAA	2698	AL	1	\N
4803	wietema01	2012	0	ALS201207100	BAL	2688	AL	1	\N
4804	wilsocj01	2012	0	ALS201207100	LAA	2698	AL	0	\N
4805	cainma01	2012	0	ALS201207100	SFN	2710	NL	1	1
4806	poseybu01	2012	0	ALS201207100	SFN	2710	NL	1	2
4807	vottojo01	2012	0	ALS201207100	CIN	2692	NL	1	3
4808	ugglada01	2012	0	ALS201207100	ATL	2687	NL	1	4
4809	sandopa01	2012	0	ALS201207100	SFN	2710	NL	1	5
4810	furcara01	2012	0	ALS201207100	SLN	2711	NL	1	6
4811	braunry02	2012	0	ALS201207100	MIL	2701	NL	1	7
4812	cabreme01	2012	0	ALS201207100	SFN	2710	NL	1	8
4813	beltrca01	2012	0	ALS201207100	SLN	2711	NL	1	9
4814	gonzaca01	2012	0	ALS201207100	COL	2694	NL	1	10
4815	altuvjo01	2012	0	ALS201207100	HOU	2696	NL	1	\N
4816	bournmi01	2012	0	ALS201207100	ATL	2687	NL	1	\N
4817	bruceja01	2012	0	ALS201207100	CIN	2692	NL	1	\N
4818	castrst01	2012	0	ALS201207100	CHN	2691	NL	1	\N
4819	chapmar01	2012	0	ALS201207100	CIN	2692	NL	1	\N
4820	desmoia01	2012	0	ALS201207100	WAS	2715	NL	0	\N
4821	dickera01	2012	0	ALS201207100	NYN	2704	NL	1	\N
4822	freesda01	2012	0	ALS201207100	SLN	2711	NL	1	\N
4823	gonzagi01	2012	0	ALS201207100	WAS	2715	NL	1	\N
4824	hamelco01	2012	0	ALS201207100	PHI	2706	NL	1	\N
4825	hanrajo01	2012	0	ALS201207100	PIT	2707	NL	1	\N
4826	harpebr03	2012	0	ALS201207100	WAS	2715	NL	1	\N
4827	hollima01	2012	0	ALS201207100	SLN	2711	NL	1	\N
4828	jonesch06	2012	0	ALS201207100	ATL	2687	NL	1	\N
4829	kempma01	2012	0	ALS201207100	LAN	2699	NL	0	\N
4830	kershcl01	2012	0	ALS201207100	LAN	2699	NL	1	\N
4831	kimbrcr01	2012	0	ALS201207100	ATL	2687	NL	1	\N
4832	lahaibr01	2012	0	ALS201207100	CHN	2691	NL	1	\N
4833	lynnla01	2012	0	ALS201207100	SLN	2711	NL	0	\N
4834	mccutan01	2012	0	ALS201207100	PIT	2707	NL	1	\N
4835	mileywa01	2012	0	ALS201207100	ARI	2686	NL	1	\N
4836	molinya01	2012	0	ALS201207100	SLN	2711	NL	0	\N
4837	papeljo01	2012	0	ALS201207100	PHI	2706	NL	1	\N
4838	ruizca01	2012	0	ALS201207100	PHI	2706	NL	1	\N
4839	stantmi03	2012	0	ALS201207100	MIA	2700	NL	0	\N
4840	strasst01	2012	0	ALS201207100	WAS	2715	NL	1	\N
4841	streehu01	2012	0	ALS201207100	SDN	2708	NL	0	\N
4842	wrighda03	2012	0	ALS201207100	NYN	2704	NL	1	\N
4843	scherma01	2013	0	NLS201307160	DET	2725	AL	1	1
4844	mauerjo01	2013	0	NLS201307160	MIN	2732	AL	1	2
4845	davisch02	2013	0	NLS201307160	BAL	2718	AL	1	3
4846	canoro01	2013	0	NLS201307160	NYA	2733	AL	1	4
4847	cabremi01	2013	0	NLS201307160	DET	2725	AL	1	5
4848	hardyjj01	2013	0	NLS201307160	BAL	2718	AL	1	6
4849	troutmi01	2013	0	NLS201307160	LAA	2728	AL	1	7
4850	jonesad01	2013	0	NLS201307160	BAL	2718	AL	1	8
4851	bautijo02	2013	0	NLS201307160	TOR	2744	AL	1	9
4852	ortizda01	2013	0	NLS201307160	BOS	2719	AL	1	10
4853	balfogr01	2013	0	NLS201307160	OAK	2735	AL	1	\N
4854	buchhcl01	2013	0	NLS201307160	BOS	2719	AL	0	\N
4855	castrja01	2013	0	NLS201307160	HOU	2726	AL	0	\N
4856	cecilbr01	2013	0	NLS201307160	TOR	2744	AL	1	\N
4857	colonba01	2013	0	NLS201307160	OAK	2735	AL	0	\N
4858	crainje01	2013	0	NLS201307160	CHA	2720	AL	0	\N
4859	cruzne02	2013	0	NLS201307160	TEX	2743	AL	1	\N
4860	darviyu01	2013	0	NLS201307160	TEX	2743	AL	0	\N
4861	delabst01	2013	0	NLS201307160	TOR	2744	AL	1	\N
4862	encared01	2013	0	NLS201307160	TOR	2744	AL	1	\N
4863	fieldpr01	2013	0	NLS201307160	DET	2725	AL	1	\N
4864	gordoal01	2013	0	NLS201307160	KCA	2727	AL	1	\N
4865	hernafe02	2013	0	NLS201307160	SEA	2739	AL	1	\N
4866	hollagr01	2013	0	NLS201307160	KCA	2727	AL	1	\N
4867	hunteto01	2013	0	NLS201307160	DET	2725	AL	1	\N
4868	iwakuhi01	2013	0	NLS201307160	SEA	2739	AL	0	\N
4869	kipnija01	2013	0	NLS201307160	CLE	2723	AL	1	\N
4870	machama01	2013	0	NLS201307160	BAL	2718	AL	1	\N
4871	masteju01	2013	0	NLS201307160	CLE	2723	AL	0	\N
4872	moorema02	2013	0	NLS201307160	TBA	2742	AL	1	\N
4873	nathajo01	2013	0	NLS201307160	TEX	2743	AL	1	\N
4874	pedrodu01	2013	0	NLS201307160	BOS	2719	AL	1	\N
4875	peraljh01	2013	0	NLS201307160	DET	2725	AL	1	\N
4876	perezsa02	2013	0	NLS201307160	KCA	2727	AL	1	\N
4877	perkigl01	2013	0	NLS201307160	MIN	2732	AL	0	\N
4878	riverma01	2013	0	NLS201307160	NYA	2733	AL	1	\N
4879	salech01	2013	0	NLS201307160	CHA	2720	AL	1	\N
4880	tillmch01	2013	0	NLS201307160	BAL	2718	AL	0	\N
4881	verlaju01	2013	0	NLS201307160	DET	2725	AL	0	\N
4882	zobribe01	2013	0	NLS201307160	TBA	2742	AL	0	\N
4883	harvema01	2013	0	NLS201307160	NYN	2734	NL	1	1
4884	molinya01	2013	0	NLS201307160	SLN	2741	NL	1	2
4885	vottojo01	2013	0	NLS201307160	CIN	2722	NL	1	3
4886	phillbr01	2013	0	NLS201307160	CIN	2722	NL	1	4
4887	wrighda03	2013	0	NLS201307160	NYN	2734	NL	1	5
4888	tulowtr01	2013	0	NLS201307160	COL	2724	NL	1	6
4889	gonzaca01	2013	0	NLS201307160	COL	2724	NL	1	7
4890	harpebr03	2013	0	NLS201307160	WAS	2745	NL	1	8
4891	beltrca01	2013	0	NLS201307160	SLN	2741	NL	1	9
4892	cuddymi01	2013	0	NLS201307160	COL	2724	NL	1	10
4893	alvarpe01	2013	0	NLS201307160	PIT	2737	NL	1	\N
4894	browndo01	2013	0	NLS201307160	PHI	2736	NL	1	\N
4895	bumgama01	2013	0	NLS201307160	SFN	2740	NL	0	\N
4896	cabreev01	2013	0	NLS201307160	SDN	2738	NL	0	\N
4897	carpema01	2013	0	NLS201307160	SLN	2741	NL	1	\N
4898	chapmar01	2013	0	NLS201307160	CIN	2722	NL	1	\N
4899	corbipa01	2013	0	NLS201307160	ARI	2716	NL	1	\N
4900	craigal01	2013	0	NLS201307160	SLN	2741	NL	1	\N
4901	fernajo02	2013	0	NLS201307160	MIA	2730	NL	1	\N
4902	freemfr01	2013	0	NLS201307160	ATL	2717	NL	0	\N
4903	goldspa01	2013	0	NLS201307160	ARI	2716	NL	1	\N
4904	gomezca01	2013	0	NLS201307160	MIL	2731	NL	1	\N
4905	grillja01	2013	0	NLS201307160	PIT	2737	NL	1	\N
4906	kershcl01	2013	0	NLS201307160	LAN	2729	NL	1	\N
4907	kimbrcr01	2013	0	NLS201307160	ATL	2717	NL	1	\N
4908	leecl02	2013	0	NLS201307160	PHI	2736	NL	1	\N
4909	lockeje01	2013	0	NLS201307160	PIT	2737	NL	0	\N
4910	mccanbr01	2013	0	NLS201307160	ATL	2717	NL	0	\N
4911	mccutan01	2013	0	NLS201307160	PIT	2737	NL	1	\N
4912	melanma01	2013	0	NLS201307160	PIT	2737	NL	0	\N
4913	poseybu01	2013	0	NLS201307160	SFN	2740	NL	1	\N
4914	romose01	2013	0	NLS201307160	SFN	2740	NL	0	\N
4915	scutama01	2013	0	NLS201307160	SFN	2740	NL	0	\N
4916	segurje01	2013	0	NLS201307160	MIL	2731	NL	1	\N
4917	wainwad01	2013	0	NLS201307160	SLN	2741	NL	0	\N
4918	woodtr01	2013	0	NLS201307160	CHN	2721	NL	0	\N
4919	zimmejo02	2013	0	NLS201307160	WAS	2745	NL	0	\N
4920	hernafe02	2014	0	ALS201407150	SEA	2769	AL	1	1
4921	perezsa02	2014	0	ALS201407150	KCA	2757	AL	1	2
4922	cabremi01	2014	0	ALS201407150	DET	2755	AL	1	3
4923	canoro01	2014	0	ALS201407150	SEA	2769	AL	1	4
4924	donaljo02	2014	0	ALS201407150	OAK	2765	AL	1	5
4925	jeterde01	2014	0	ALS201407150	NYA	2763	AL	1	6
4926	troutmi01	2014	0	ALS201407150	LAA	2758	AL	1	7
4927	jonesad01	2014	0	ALS201407150	BAL	2748	AL	1	8
4928	bautijo02	2014	0	ALS201407150	TOR	2774	AL	1	9
4929	cruzne02	2014	0	ALS201407150	BAL	2748	AL	1	10
4930	abreujo02	2014	0	ALS201407150	CHA	2750	AL	1	\N
4931	altuvjo01	2014	0	ALS201407150	HOU	2756	AL	1	\N
4932	aybarer01	2014	0	ALS201407150	LAA	2758	AL	1	\N
4933	beltrad01	2014	0	ALS201407150	TEX	2773	AL	1	\N
4934	betande01	2014	0	ALS201407150	NYA	2763	AL	0	\N
4935	brantmi02	2014	0	ALS201407150	CLE	2753	AL	1	\N
4936	buehrma01	2014	0	ALS201407150	TOR	2774	AL	0	\N
4937	cespeyo01	2014	0	ALS201407150	OAK	2765	AL	1	\N
4938	darviyu01	2014	0	ALS201407150	TEX	2773	AL	1	\N
4939	doolise01	2014	0	ALS201407150	OAK	2765	AL	1	\N
4940	encared01	2014	0	ALS201407150	TOR	2774	AL	0	\N
4941	gordoal01	2014	0	ALS201407150	KCA	2757	AL	0	\N
4942	hollagr01	2014	0	ALS201407150	KCA	2757	AL	1	\N
4943	kazmisc01	2014	0	ALS201407150	OAK	2765	AL	1	\N
4944	kinslia01	2014	0	ALS201407150	DET	2755	AL	1	\N
4945	lestejo01	2014	0	ALS201407150	BOS	2749	AL	1	\N
4946	martivi01	2014	0	ALS201407150	DET	2755	AL	0	\N
4947	mossbr01	2014	0	ALS201407150	OAK	2765	AL	1	\N
4948	norride01	2014	0	ALS201407150	OAK	2765	AL	1	\N
4949	perkigl01	2014	0	ALS201407150	MIN	2762	AL	1	\N
4950	priceda01	2014	0	ALS201407150	TBA	2772	AL	0	\N
4951	ramiral03	2014	0	ALS201407150	CHA	2750	AL	1	\N
4952	rodnefe01	2014	0	ALS201407150	SEA	2769	AL	1	\N
4953	salech01	2014	0	ALS201407150	CHA	2750	AL	1	\N
4954	scherma01	2014	0	ALS201407150	DET	2755	AL	1	\N
4955	seageky01	2014	0	ALS201407150	SEA	2769	AL	1	\N
4956	suzukku01	2014	0	ALS201407150	MIN	2762	AL	1	\N
4957	tanakma01	2014	0	ALS201407150	NYA	2763	AL	0	\N
4958	ueharko01	2014	0	ALS201407150	BOS	2749	AL	1	\N
4959	wietema01	2014	0	ALS201407150	BAL	2748	AL	0	\N
4960	wainwad01	2014	0	ALS201407150	SLN	2771	NL	1	1
4961	lucrojo01	2014	0	ALS201407150	MIL	2761	NL	1	2
4962	goldspa01	2014	0	ALS201407150	ARI	2746	NL	1	3
4963	utleych01	2014	0	ALS201407150	PHI	2766	NL	1	4
4964	ramirar01	2014	0	ALS201407150	MIL	2761	NL	1	5
4965	tulowtr01	2014	0	ALS201407150	COL	2754	NL	1	6
4966	gomezca01	2014	0	ALS201407150	MIL	2761	NL	1	7
4967	mccutan01	2014	0	ALS201407150	PIT	2767	NL	1	8
4968	puigya01	2014	0	ALS201407150	LAN	2759	NL	1	9
4969	stantmi03	2014	0	ALS201407150	MIA	2760	NL	1	10
4970	alvarhe01	2014	0	ALS201407150	MIA	2760	NL	0	\N
4971	blackch02	2014	0	ALS201407150	COL	2754	NL	1	\N
4972	bumgama01	2014	0	ALS201407150	SFN	2770	NL	0	\N
4973	carpema01	2014	0	ALS201407150	SLN	2771	NL	0	\N
4974	castrst01	2014	0	ALS201407150	CHN	2751	NL	1	\N
4975	chapmar01	2014	0	ALS201407150	CIN	2752	NL	1	\N
4976	clippty01	2014	0	ALS201407150	WAS	2775	NL	1	\N
4977	cuetojo01	2014	0	ALS201407150	CIN	2752	NL	0	\N
4978	frazito01	2014	0	ALS201407150	CIN	2752	NL	1	\N
4979	freemfr01	2014	0	ALS201407150	ATL	2747	NL	1	\N
4980	gordode01	2014	0	ALS201407150	LAN	2759	NL	1	\N
4981	greinza01	2014	0	ALS201407150	LAN	2759	NL	1	\N
4982	harrijo05	2014	0	ALS201407150	PIT	2767	NL	1	\N
4983	hudsoti01	2014	0	ALS201407150	SFN	2770	NL	0	\N
4984	kershcl01	2014	0	ALS201407150	LAN	2759	NL	1	\N
4985	kimbrcr01	2014	0	ALS201407150	ATL	2747	NL	1	\N
4986	mesorde01	2014	0	ALS201407150	CIN	2752	NL	1	\N
4987	molinya01	2014	0	ALS201407150	SLN	2771	NL	0	\N
4988	montemi01	2014	0	ALS201407150	ARI	2746	NL	1	\N
4989	murphda08	2014	0	ALS201407150	NYN	2764	NL	1	\N
4990	neshepa01	2014	0	ALS201407150	SLN	2771	NL	1	\N
4991	pencehu01	2014	0	ALS201407150	SFN	2770	NL	1	\N
4992	rizzoan01	2014	0	ALS201407150	CHN	2751	NL	1	\N
4993	rodrifr03	2014	0	ALS201407150	MIL	2761	NL	1	\N
4994	rossty01	2014	0	ALS201407150	SDN	2768	NL	0	\N
4995	samarje01	2014	0	ALS201407150	CHN	2751	NL	0	\N
4996	simonal01	2014	0	ALS201407150	CIN	2752	NL	1	\N
4997	streehu01	2014	0	ALS201407150	SDN	2768	NL	0	\N
4998	teherju01	2014	0	ALS201407150	ATL	2747	NL	0	\N
4999	watsoto01	2014	0	ALS201407150	PIT	2767	NL	1	\N
5000	zimmejo02	2014	0	ALS201407150	WAS	2775	NL	0	\N
5001	keuchda01	2015	0	NLS201507140	HOU	2786	AL	1	1
5002	perezsa02	2015	0	NLS201507140	KCA	2787	AL	1	2
5003	pujolal01	2015	0	NLS201507140	LAA	2788	AL	1	3
5004	altuvjo01	2015	0	NLS201507140	HOU	2786	AL	1	4
5005	donaljo02	2015	0	NLS201507140	TOR	2804	AL	1	5
5006	escobal02	2015	0	NLS201507140	KCA	2787	AL	1	6
5007	jonesad01	2015	0	NLS201507140	BAL	2778	AL	1	7
5008	troutmi01	2015	0	NLS201507140	LAA	2788	AL	1	8
5009	cainlo01	2015	0	NLS201507140	KCA	2787	AL	1	9
5010	cruzne02	2015	0	NLS201507140	SEA	2799	AL	1	10
5011	archech01	2015	0	NLS201507140	TBA	2802	AL	1	\N
5012	bautijo02	2015	0	NLS201507140	TOR	2804	AL	0	\N
5013	betande01	2015	0	NLS201507140	NYA	2793	AL	1	\N
5014	boxbebr01	2015	0	NLS201507140	TBA	2802	AL	0	\N
5015	brittza01	2015	0	NLS201507140	BAL	2778	AL	1	\N
5016	cabremi01	2015	0	NLS201507140	DET	2785	AL	0	\N
5017	daviswa01	2015	0	NLS201507140	KCA	2787	AL	1	\N
5018	doziebr01	2015	0	NLS201507140	MIN	2792	AL	1	\N
5019	fieldpr01	2015	0	NLS201507140	TEX	2803	AL	1	\N
5020	gardnbr01	2015	0	NLS201507140	NYA	2793	AL	1	\N
5021	gordoal01	2015	0	NLS201507140	KCA	2787	AL	0	\N
5022	grayso01	2015	0	NLS201507140	OAK	2795	AL	0	\N
5023	hernafe02	2015	0	NLS201507140	SEA	2799	AL	1	\N
5024	herreke01	2015	0	NLS201507140	KCA	2787	AL	0	\N
5025	holtbr01	2015	0	NLS201507140	BOS	2779	AL	1	\N
5026	iglesjo01	2015	0	NLS201507140	DET	2785	AL	1	\N
5027	kipnija01	2015	0	NLS201507140	CLE	2783	AL	1	\N
5028	machama01	2015	0	NLS201507140	BAL	2778	AL	1	\N
5029	martijd02	2015	0	NLS201507140	DET	2785	AL	1	\N
5030	martiru01	2015	0	NLS201507140	TOR	2804	AL	1	\N
5031	moustmi01	2015	0	NLS201507140	KCA	2787	AL	1	\N
5032	odayda01	2015	0	NLS201507140	BAL	2778	AL	0	\N
5033	perkigl01	2015	0	NLS201507140	MIN	2792	AL	1	\N
5034	priceda01	2015	0	NLS201507140	DET	2785	AL	1	\N
5035	salech01	2015	0	NLS201507140	CHA	2780	AL	0	\N
5036	santihe01	2015	0	NLS201507140	LAA	2788	AL	0	\N
5037	teixema01	2015	0	NLS201507140	NYA	2793	AL	1	\N
5038	vogtst01	2015	0	NLS201507140	OAK	2795	AL	1	\N
5039	greinza01	2015	0	NLS201507140	LAN	2789	NL	1	1
5040	poseybu01	2015	0	NLS201507140	SFN	2800	NL	1	2
5041	goldspa01	2015	0	NLS201507140	ARI	2776	NL	1	3
5042	lemahdj01	2015	0	NLS201507140	COL	2784	NL	1	4
5043	frazito01	2015	0	NLS201507140	CIN	2782	NL	1	5
5044	peraljh01	2015	0	NLS201507140	SLN	2801	NL	1	6
5045	pederjo01	2015	0	NLS201507140	LAN	2789	NL	1	7
5046	mccutan01	2015	0	NLS201507140	PIT	2797	NL	1	8
5047	harpebr03	2015	0	NLS201507140	WAS	2805	NL	1	9
5048	rizzoan01	2015	0	NLS201507140	CHN	2781	NL	1	10
5049	arenano01	2015	0	NLS201507140	COL	2784	NL	1	\N
5050	braunry02	2015	0	NLS201507140	MIL	2791	NL	1	\N
5051	bryankr01	2015	0	NLS201507140	CHN	2781	NL	1	\N
5052	bumgama01	2015	0	NLS201507140	SFN	2800	NL	1	\N
5053	burneaj01	2015	0	NLS201507140	PIT	2797	NL	0	\N
5054	chapmar01	2015	0	NLS201507140	CIN	2782	NL	1	\N
5055	colege01	2015	0	NLS201507140	PIT	2797	NL	1	\N
5056	crawfbr01	2015	0	NLS201507140	SFN	2800	NL	1	\N
5057	degroja01	2015	0	NLS201507140	NYN	2794	NL	1	\N
5058	gonzaad01	2015	0	NLS201507140	LAN	2789	NL	1	\N
5059	gordode01	2015	0	NLS201507140	MIA	2790	NL	0	\N
5060	grandya01	2015	0	NLS201507140	LAN	2789	NL	1	\N
5061	hollima01	2015	0	NLS201507140	SLN	2801	NL	0	\N
5062	kershcl01	2015	0	NLS201507140	LAN	2789	NL	1	\N
5063	martica04	2015	0	NLS201507140	SLN	2801	NL	0	\N
5064	melanma01	2015	0	NLS201507140	PIT	2797	NL	1	\N
5065	millesh01	2015	0	NLS201507140	ATL	2777	NL	0	\N
5066	molinya01	2015	0	NLS201507140	SLN	2801	NL	1	\N
5067	panikjo01	2015	0	NLS201507140	SFN	2800	NL	1	\N
5068	papeljo01	2015	0	NLS201507140	PHI	2796	NL	0	\N
5069	polloaj01	2015	0	NLS201507140	ARI	2776	NL	1	\N
5070	rodrifr03	2015	0	NLS201507140	MIL	2791	NL	1	\N
5071	rosentr01	2015	0	NLS201507140	SLN	2801	NL	0	\N
5072	scherma01	2015	0	NLS201507140	WAS	2805	NL	0	\N
5073	stantmi03	2015	0	NLS201507140	MIA	2790	NL	0	\N
5074	tulowtr01	2015	0	NLS201507140	COL	2784	NL	1	\N
5075	uptonju01	2015	0	NLS201507140	SDN	2798	NL	1	\N
5076	wachami01	2015	0	NLS201507140	SLN	2801	NL	0	\N
5077	salech01	2016	0	ALS201607120	CHA	2810	AL	1	1
5078	perezsa02	2016	0	ALS201607120	KCA	2817	AL	1	2
5079	hosmeer01	2016	0	ALS201607120	KCA	2817	AL	1	3
5080	altuvjo01	2016	0	ALS201607120	HOU	2816	AL	1	4
5081	machama01	2016	0	ALS201607120	BAL	2808	AL	1	5
5082	bogaexa01	2016	0	ALS201607120	BOS	2809	AL	1	6
5083	bradlja02	2016	0	ALS201607120	BOS	2809	AL	1	7
5084	troutmi01	2016	0	ALS201607120	LAA	2818	AL	1	8
5085	bettsmo01	2016	0	ALS201607120	BOS	2809	AL	1	9
5086	ortizda01	2016	0	ALS201607120	BOS	2809	AL	1	10
5087	beltrca01	2016	0	ALS201607120	NYA	2823	AL	1	\N
5088	betande01	2016	0	ALS201607120	NYA	2823	AL	1	\N
5089	brachbr01	2016	0	ALS201607120	BAL	2808	AL	0	\N
5090	brittza01	2016	0	ALS201607120	BAL	2808	AL	1	\N
5091	cabremi01	2016	0	ALS201607120	DET	2815	AL	1	\N
5092	canoro01	2016	0	ALS201607120	SEA	2829	AL	1	\N
5093	colomal01	2016	0	ALS201607120	TBA	2832	AL	0	\N
5094	daviswa01	2016	0	ALS201607120	KCA	2817	AL	0	\N
5095	desmoia01	2016	0	ALS201607120	TEX	2833	AL	1	\N
5096	donaljo02	2016	0	ALS201607120	TOR	2834	AL	1	\N
5097	encared01	2016	0	ALS201607120	TOR	2834	AL	1	\N
5098	estrama01	2016	0	ALS201607120	TOR	2834	AL	0	\N
5099	hamelco01	2016	0	ALS201607120	TEX	2833	AL	1	\N
5100	harriwi02	2016	0	ALS201607120	HOU	2816	AL	1	\N
5101	herreke01	2016	0	ALS201607120	KCA	2817	AL	1	\N
5102	kimbrcr01	2016	0	ALS201607120	BOS	2809	AL	0	\N
5103	klubeco01	2016	0	ALS201607120	CLE	2813	AL	1	\N
5104	lindofr01	2016	0	ALS201607120	CLE	2813	AL	1	\N
5105	millean01	2016	0	ALS201607120	NYA	2823	AL	1	\N
5106	nunezed02	2016	0	ALS201607120	MIN	2822	AL	1	\N
5107	quintjo01	2016	0	ALS201607120	CHA	2810	AL	1	\N
5108	salazda01	2016	0	ALS201607120	CLE	2813	AL	0	\N
5109	sanchaa01	2016	0	ALS201607120	TOR	2834	AL	1	\N
5110	saundmi01	2016	0	ALS201607120	TOR	2834	AL	1	\N
5111	trumbma01	2016	0	ALS201607120	BAL	2808	AL	1	\N
5112	vogtst01	2016	0	ALS201607120	OAK	2825	AL	0	\N
5113	wietema01	2016	0	ALS201607120	BAL	2808	AL	1	\N
5114	wrighst01	2016	0	ALS201607120	BOS	2809	AL	0	\N
5115	cuetojo01	2016	0	ALS201607120	SFN	2830	NL	1	1
5116	poseybu01	2016	0	ALS201607120	SFN	2830	NL	1	2
5117	rizzoan01	2016	0	ALS201607120	CHN	2811	NL	1	3
5118	zobribe01	2016	0	ALS201607120	CHN	2811	NL	1	4
5119	bryankr01	2016	0	ALS201607120	CHN	2811	NL	1	5
5120	russead02	2016	0	ALS201607120	CHN	2811	NL	1	6
5121	gonzaca01	2016	0	ALS201607120	COL	2814	NL	1	7
5122	ozunama01	2016	0	ALS201607120	MIA	2820	NL	1	8
5123	harpebr03	2016	0	ALS201607120	WAS	2835	NL	1	9
5124	myerswi01	2016	0	ALS201607120	SDN	2828	NL	1	10
5125	arenano01	2016	0	ALS201607120	COL	2814	NL	1	\N
5126	arrieja01	2016	0	ALS201607120	CHN	2811	NL	0	\N
5127	beltbr01	2016	0	ALS201607120	SFN	2830	NL	1	\N
5128	bruceja01	2016	0	ALS201607120	CIN	2812	NL	1	\N
5129	bumgama01	2016	0	ALS201607120	SFN	2830	NL	0	\N
5130	carpema01	2016	0	ALS201607120	SLN	2831	NL	0	\N
5131	cespeyo01	2016	0	ALS201607120	NYN	2824	NL	0	\N
5132	colonba01	2016	0	ALS201607120	NYN	2824	NL	0	\N
5133	diazal02	2016	0	ALS201607120	SLN	2831	NL	1	\N
5134	duvalad01	2016	0	ALS201607120	CIN	2812	NL	1	\N
5135	familje01	2016	0	ALS201607120	NYN	2824	NL	0	\N
5136	fernajo02	2016	0	ALS201607120	MIA	2820	NL	1	\N
5137	fowlede01	2016	0	ALS201607120	CHN	2811	NL	0	\N
5138	goldspa01	2016	0	ALS201607120	ARI	2806	NL	1	\N
5139	herreod01	2016	0	ALS201607120	PHI	2826	NL	1	\N
5140	janseke01	2016	0	ALS201607120	LAN	2819	NL	1	\N
5141	kershcl01	2016	0	ALS201607120	LAN	2819	NL	0	\N
5142	lestejo01	2016	0	ALS201607120	CHN	2811	NL	1	\N
5143	lucrojo01	2016	0	ALS201607120	MIL	2821	NL	1	\N
5144	martest01	2016	0	ALS201607120	PIT	2827	NL	1	\N
5145	melanma01	2016	0	ALS201607120	PIT	2827	NL	1	\N
5146	murphda08	2016	0	ALS201607120	WAS	2835	NL	1	\N
5147	pomerdr01	2016	0	ALS201607120	SDN	2828	NL	1	\N
5148	ramosaj01	2016	0	ALS201607120	MIA	2820	NL	0	\N
5149	ramoswi01	2016	0	ALS201607120	WAS	2835	NL	1	\N
5150	rodnefe01	2016	0	ALS201607120	MIA	2820	NL	1	\N
5151	scherma01	2016	0	ALS201607120	WAS	2835	NL	1	\N
5152	seageco01	2016	0	ALS201607120	LAN	2819	NL	1	\N
5153	strasst01	2016	0	ALS201607120	WAS	2835	NL	0	\N
5154	syndeno01	2016	0	ALS201607120	NYN	2824	NL	0	\N
5155	teherju01	2016	0	ALS201607120	ATL	2807	NL	1	\N
5156	salech01	2017	0	NLS201707110	BOS	2839	AL	1	1
5157	perezsa02	2017	0	NLS201707110	KCA	2847	AL	1	2
5158	smoakju01	2017	0	NLS201707110	TOR	2864	AL	1	3
5159	altuvjo01	2017	0	NLS201707110	HOU	2846	AL	1	4
5160	ramirjo01	2017	0	NLS201707110	CLE	2843	AL	1	5
5161	correca01	2017	0	NLS201707110	HOU	2846	AL	1	6
5162	springe01	2017	0	NLS201707110	HOU	2846	AL	1	7
5163	bettsmo01	2017	0	NLS201707110	BOS	2839	AL	1	8
5164	judgeaa01	2017	0	NLS201707110	NYA	2853	AL	1	9
5165	dickeco01	2017	0	NLS201707110	TBA	2862	AL	1	10
5166	alonsyo01	2017	0	NLS201707110	OAK	2855	AL	1	\N
5167	archech01	2017	0	NLS201707110	TBA	2862	AL	0	\N
5168	betande01	2017	0	NLS201707110	NYA	2853	AL	1	\N
5169	brantmi02	2017	0	NLS201707110	CLE	2843	AL	1	\N
5170	canoro01	2017	0	NLS201707110	SEA	2859	AL	1	\N
5171	castrst01	2017	0	NLS201707110	NYA	2853	AL	0	\N
5172	cruzne02	2017	0	NLS201707110	SEA	2859	AL	1	\N
5173	darviyu01	2017	0	NLS201707110	TEX	2863	AL	0	\N
5174	devench02	2017	0	NLS201707110	HOU	2846	AL	1	\N
5175	fulmemi01	2017	0	NLS201707110	DET	2845	AL	0	\N
5176	garciav01	2017	0	NLS201707110	CHA	2840	AL	1	\N
5177	keuchda01	2017	0	NLS201707110	HOU	2846	AL	0	\N
5178	kimbrcr01	2017	0	NLS201707110	BOS	2839	AL	1	\N
5179	kintzbr01	2017	0	NLS201707110	MIN	2852	AL	1	\N
5180	klubeco01	2017	0	NLS201707110	CLE	2843	AL	0	\N
5181	lindofr01	2017	0	NLS201707110	CLE	2843	AL	1	\N
5182	mcculla02	2017	0	NLS201707110	HOU	2846	AL	0	\N
5183	millean01	2017	0	NLS201707110	CLE	2843	AL	1	\N
5184	moustmi01	2017	0	NLS201707110	KCA	2847	AL	1	\N
5185	osunaro01	2017	0	NLS201707110	TOR	2864	AL	1	\N
5186	sanchga02	2017	0	NLS201707110	NYA	2853	AL	1	\N
5187	sanomi01	2017	0	NLS201707110	MIN	2852	AL	1	\N
5188	santaer01	2017	0	NLS201707110	MIN	2852	AL	1	\N
5189	schoojo01	2017	0	NLS201707110	BAL	2838	AL	1	\N
5190	severlu01	2017	0	NLS201707110	NYA	2853	AL	0	\N
5191	troutmi01	2017	0	NLS201707110	LAA	2848	AL	0	\N
5192	uptonju01	2017	0	NLS201707110	DET	2845	AL	1	\N
5193	vargaja01	2017	0	NLS201707110	KCA	2847	AL	1	\N
5194	scherma01	2017	0	NLS201707110	WAS	2865	NL	1	1
5195	poseybu01	2017	0	NLS201707110	SFN	2860	NL	1	2
5196	zimmery01	2017	0	NLS201707110	WAS	2865	NL	1	3
5197	murphda08	2017	0	NLS201707110	WAS	2865	NL	1	4
5198	arenano01	2017	0	NLS201707110	COL	2844	NL	1	5
5199	cozarza01	2017	0	NLS201707110	CIN	2842	NL	1	6
5200	ozunama01	2017	0	NLS201707110	MIA	2850	NL	1	7
5201	blackch02	2017	0	NLS201707110	COL	2844	NL	1	8
5202	harpebr03	2017	0	NLS201707110	WAS	2865	NL	1	9
5203	stantmi03	2017	0	NLS201707110	MIA	2850	NL	1	10
5204	bellico01	2017	0	NLS201707110	LAN	2849	NL	1	\N
5205	confomi01	2017	0	NLS201707110	NYN	2854	NL	1	\N
5206	daviswa01	2017	0	NLS201707110	CHN	2841	NL	1	\N
5207	goldspa01	2017	0	NLS201707110	ARI	2836	NL	1	\N
5208	greinza01	2017	0	NLS201707110	ARI	2836	NL	1	\N
5209	handbr01	2017	0	NLS201707110	SDN	2858	NL	1	\N
5210	harrijo05	2017	0	NLS201707110	PIT	2857	NL	1	\N
5211	hollagr01	2017	0	NLS201707110	COL	2844	NL	1	\N
5212	inciaen01	2017	0	NLS201707110	ATL	2837	NL	1	\N
5213	janseke01	2017	0	NLS201707110	LAN	2849	NL	1	\N
5214	kershcl01	2017	0	NLS201707110	LAN	2849	NL	0	\N
5215	knebeco01	2017	0	NLS201707110	MIL	2851	NL	0	\N
5216	lambja01	2017	0	NLS201707110	ARI	2836	NL	1	\N
5217	lemahdj01	2017	0	NLS201707110	COL	2844	NL	0	\N
5218	martica04	2017	0	NLS201707110	SLN	2861	NL	1	\N
5219	molinya01	2017	0	NLS201707110	SLN	2861	NL	1	\N
5220	neshepa01	2017	0	NLS201707110	PHI	2856	NL	1	\N
5221	rayro02	2017	0	NLS201707110	ARI	2836	NL	0	\N
5222	seageco01	2017	0	NLS201707110	LAN	2849	NL	1	\N
5223	strasst01	2017	0	NLS201707110	WAS	2865	NL	0	\N
5224	turneju01	2017	0	NLS201707110	LAN	2849	NL	1	\N
5225	vottojo01	2017	0	NLS201707110	CIN	2842	NL	1	\N
5226	woodal02	2017	0	NLS201707110	LAN	2849	NL	1	\N
5227	salech01	2018	0	NLS201807170	BOS	2869	AL	1	1
5228	perezsa02	2018	0	NLS201807170	KCA	2877	AL	1	2
5229	abreujo02	2018	0	NLS201807170	CHA	2870	AL	1	3
5230	altuvjo01	2018	0	NLS201807170	HOU	2876	AL	1	4
5231	ramirjo01	2018	0	NLS201807170	CLE	2873	AL	1	5
5232	machama01	2018	0	NLS201807170	BAL	2868	AL	1	6
5233	judgeaa01	2018	0	NLS201807170	NYA	2883	AL	1	7
5234	troutmi01	2018	0	NLS201807170	LAA	2878	AL	1	8
5235	bettsmo01	2018	0	NLS201807170	BOS	2869	AL	1	9
5236	martijd02	2018	0	NLS201807170	BOS	2869	AL	1	10
5237	bauertr01	2018	0	NLS201807170	CLE	2873	AL	0	\N
5238	berrijo01	2018	0	NLS201807170	MIN	2882	AL	1	\N
5239	brantmi02	2018	0	NLS201807170	CLE	2873	AL	1	\N
5240	bregmal01	2018	0	NLS201807170	HOU	2876	AL	1	\N
5241	chapmar01	2018	0	NLS201807170	NYA	2883	AL	0	\N
5242	choosh01	2018	0	NLS201807170	TEX	2893	AL	1	\N
5243	colege01	2018	0	NLS201807170	HOU	2876	AL	0	\N
5244	cruzne02	2018	0	NLS201807170	SEA	2889	AL	1	\N
5245	diazed04	2018	0	NLS201807170	SEA	2889	AL	1	\N
5246	gomesya01	2018	0	NLS201807170	CLE	2873	AL	1	\N
5247	hanigmi01	2018	0	NLS201807170	SEA	2889	AL	1	\N
5248	happja01	2018	0	NLS201807170	TOR	2894	AL	1	\N
5249	jimenjo02	2018	0	NLS201807170	DET	2875	AL	1	\N
5250	kimbrcr01	2018	0	NLS201807170	BOS	2869	AL	0	\N
5251	klubeco01	2018	0	NLS201807170	CLE	2873	AL	0	\N
5252	lindofr01	2018	0	NLS201807170	CLE	2873	AL	1	\N
5253	lowrije01	2018	0	NLS201807170	OAK	2885	AL	1	\N
5254	morelmi01	2018	0	NLS201807170	BOS	2869	AL	1	\N
5255	mortoch02	2018	0	NLS201807170	HOU	2876	AL	1	\N
5256	ramoswi01	2018	0	NLS201807170	TBA	2892	AL	0	\N
5257	segurje01	2018	0	NLS201807170	SEA	2889	AL	1	\N
5258	severlu01	2018	0	NLS201807170	NYA	2883	AL	1	\N
5259	snellbl01	2018	0	NLS201807170	TBA	2892	AL	1	\N
5260	springe01	2018	0	NLS201807170	HOU	2876	AL	1	\N
5261	torregl01	2018	0	NLS201807170	NYA	2883	AL	0	\N
5262	treinbl01	2018	0	NLS201807170	OAK	2885	AL	1	\N
5263	verlaju01	2018	0	NLS201807170	HOU	2876	AL	0	\N
5264	scherma01	2018	0	NLS201807170	WAS	2895	NL	1	1
5265	contrwi01	2018	0	NLS201807170	CHN	2871	NL	1	2
5266	freemfr01	2018	0	NLS201807170	ATL	2867	NL	1	3
5267	baezja01	2018	0	NLS201807170	CHN	2871	NL	1	4
5268	arenano01	2018	0	NLS201807170	COL	2874	NL	1	5
5269	crawfbr01	2018	0	NLS201807170	SFN	2890	NL	1	6
5270	kempma01	2018	0	NLS201807170	LAN	2879	NL	1	7
5271	harpebr03	2018	0	NLS201807170	WAS	2895	NL	1	8
5272	markani01	2018	0	NLS201807170	ATL	2867	NL	1	9
5273	goldspa01	2018	0	NLS201807170	ARI	2866	NL	1	10
5274	aguilje01	2018	0	NLS201807170	MIL	2881	NL	1	\N
5275	albieoz01	2018	0	NLS201807170	ATL	2867	NL	1	\N
5276	blackch02	2018	0	NLS201807170	COL	2874	NL	1	\N
5277	cainlo01	2018	0	NLS201807170	MIL	2881	NL	1	\N
5278	corbipa01	2018	0	NLS201807170	ARI	2866	NL	0	\N
5279	degroja01	2018	0	NLS201807170	NYN	2884	NL	1	\N
5280	doolise01	2018	0	NLS201807170	WAS	2895	NL	0	\N
5281	foltymi01	2018	0	NLS201807170	ATL	2867	NL	1	\N
5282	gennesc01	2018	0	NLS201807170	CIN	2872	NL	1	\N
5283	haderjo01	2018	0	NLS201807170	MIL	2881	NL	1	\N
5284	handbr01	2018	0	NLS201807170	SDN	2888	NL	1	\N
5285	janseke01	2018	0	NLS201807170	LAN	2879	NL	0	\N
5286	jeffrje01	2018	0	NLS201807170	MIL	2881	NL	1	\N
5287	lestejo01	2018	0	NLS201807170	CHN	2871	NL	0	\N
5288	mikolmi01	2018	0	NLS201807170	SLN	2891	NL	0	\N
5289	molinya01	2018	0	NLS201807170	SLN	2891	NL	1	\N
5290	nolaaa01	2018	0	NLS201807170	PHI	2886	NL	1	\N
5291	poseybu01	2018	0	NLS201807170	SFN	2890	NL	0	\N
5292	realmjt01	2018	0	NLS201807170	MIA	2880	NL	1	\N
5293	riverfe01	2018	0	NLS201807170	PIT	2887	NL	1	\N
5294	storytr01	2018	0	NLS201807170	COL	2874	NL	1	\N
5295	stripro01	2018	0	NLS201807170	LAN	2879	NL	1	\N
5296	suareeu01	2018	0	NLS201807170	CIN	2872	NL	1	\N
5297	vottojo01	2018	0	NLS201807170	CIN	2872	NL	1	\N
5298	yelicch01	2018	0	NLS201807170	MIL	2881	NL	1	\N
5299	verlaju01	2019	0	ALS201907090	HOU	2906	AL	1	1
5300	sanchga02	2019	0	ALS201907090	NYA	2913	AL	1	2
5301	santaca01	2019	0	ALS201907090	CLE	2903	AL	1	3
5302	lemahdj01	2019	0	ALS201907090	NYA	2913	AL	1	4
5303	bregmal01	2019	0	ALS201907090	HOU	2906	AL	1	5
5304	polanjo01	2019	0	ALS201907090	MIN	2912	AL	1	6
5305	brantmi02	2019	0	ALS201907090	HOU	2906	AL	1	7
5306	troutmi01	2019	0	ALS201907090	LAA	2908	AL	1	8
5307	springe01	2019	0	ALS201907090	HOU	2906	AL	1	9
5308	martijd02	2019	0	ALS201907090	BOS	2899	AL	1	10
5309	abreujo02	2019	0	ALS201907090	CHA	2900	AL	1	\N
5310	berrijo01	2019	0	ALS201907090	MIN	2912	AL	1	\N
5311	bettsmo01	2019	0	ALS201907090	BOS	2899	AL	1	\N
5312	biebesh01	2019	0	ALS201907090	CLE	2903	AL	1	\N
5313	bogaexa01	2019	0	ALS201907090	BOS	2899	AL	1	\N
5314	chapmar01	2019	0	ALS201907090	NYA	2913	AL	1	\N
5315	chapmma01	2019	0	ALS201907090	OAK	2915	AL	1	\N
5316	colege01	2019	0	ALS201907090	HOU	2906	AL	0	\N
5317	gallojo01	2019	0	ALS201907090	TEX	2923	AL	1	\N
5318	giolilu01	2019	0	ALS201907090	CHA	2900	AL	1	\N
5319	greensh02	2019	0	ALS201907090	DET	2905	AL	1	\N
5320	handbr01	2019	0	ALS201907090	CLE	2903	AL	1	\N
5321	hendrli01	2019	0	ALS201907090	OAK	2915	AL	1	\N
5322	lasteto01	2019	0	ALS201907090	LAA	2908	AL	0	\N
5323	lindofr01	2019	0	ALS201907090	CLE	2903	AL	1	\N
5324	lowebr01	2019	0	ALS201907090	TBA	2922	AL	0	\N
5325	mccanja02	2019	0	ALS201907090	CHA	2900	AL	1	\N
5326	meadoau01	2019	0	ALS201907090	TBA	2922	AL	1	\N
5327	meansjo01	2019	0	ALS201907090	BAL	2898	AL	0	\N
5328	merriwh01	2019	0	ALS201907090	KCA	2907	AL	1	\N
5329	minormi01	2019	0	ALS201907090	TEX	2923	AL	0	\N
5330	mortoch02	2019	0	ALS201907090	TBA	2922	AL	0	\N
5331	odorija01	2019	0	ALS201907090	MIN	2912	AL	0	\N
5332	pencehu01	2019	0	ALS201907090	TEX	2923	AL	0	\N
5333	pressry01	2019	0	ALS201907090	HOU	2906	AL	0	\N
5334	stromma01	2019	0	ALS201907090	TOR	2924	AL	0	\N
5335	tanakma01	2019	0	ALS201907090	NYA	2913	AL	1	\N
5336	torregl01	2019	0	ALS201907090	NYA	2913	AL	1	\N
5337	vogelda01	2019	0	ALS201907090	SEA	2919	AL	1	\N
5338	ryuhy01	2019	0	ALS201907090	LAN	2909	NL	1	1
5339	contrwi01	2019	0	ALS201907090	CHN	2901	NL	1	2
5340	freemfr01	2019	0	ALS201907090	ATL	2897	NL	1	3
5341	marteke01	2019	0	ALS201907090	ARI	2896	NL	1	4
5342	arenano01	2019	0	ALS201907090	COL	2904	NL	1	5
5343	baezja01	2019	0	ALS201907090	CHN	2901	NL	1	6
5344	yelicch01	2019	0	ALS201907090	MIL	2911	NL	1	7
5345	acunaro01	2019	0	ALS201907090	ATL	2897	NL	1	8
5346	bellico01	2019	0	ALS201907090	LAN	2909	NL	1	9
5347	belljo02	2019	0	ALS201907090	PIT	2917	NL	1	10
5348	alcansa01	2019	0	ALS201907090	MIA	2910	NL	1	\N
5349	alonspe01	2019	0	ALS201907090	NYN	2914	NL	1	\N
5350	blackch02	2019	0	ALS201907090	COL	2904	NL	1	\N
5351	bryankr01	2019	0	ALS201907090	CHN	2901	NL	1	\N
5352	buehlwa01	2019	0	ALS201907090	LAN	2909	NL	1	\N
5353	castilu02	2019	0	ALS201907090	CIN	2902	NL	1	\N
5354	dahlda01	2019	0	ALS201907090	COL	2904	NL	1	\N
5355	degroja01	2019	0	ALS201907090	NYN	2914	NL	1	\N
5356	dejonpa01	2019	0	ALS201907090	SLN	2921	NL	1	\N
5357	grandya01	2019	0	ALS201907090	MIL	2911	NL	1	\N
5358	grayso01	2019	0	ALS201907090	CIN	2902	NL	0	\N
5359	greinza01	2019	0	ALS201907090	ARI	2896	NL	0	\N
5360	haderjo01	2019	0	ALS201907090	MIL	2911	NL	0	\N
5361	kershcl01	2019	0	ALS201907090	LAN	2909	NL	1	\N
5362	mcneije01	2019	0	ALS201907090	NYN	2914	NL	1	\N
5363	moustmi01	2019	0	ALS201907090	MIL	2911	NL	1	\N
5364	muncyma01	2019	0	ALS201907090	LAN	2909	NL	1	\N
5365	realmjt01	2019	0	ALS201907090	PHI	2916	NL	1	\N
5366	rendoan01	2019	0	ALS201907090	WAS	2925	NL	0	\N
5367	riverfe01	2019	0	ALS201907090	PIT	2917	NL	0	\N
5368	scherma01	2019	0	ALS201907090	WAS	2925	NL	0	\N
5369	smithwi04	2019	0	ALS201907090	SFN	2920	NL	1	\N
5370	sorokmi01	2019	0	ALS201907090	ATL	2897	NL	1	\N
5371	storytr01	2019	0	ALS201907090	COL	2904	NL	1	\N
5372	woodrbr01	2019	0	ALS201907090	MIL	2911	NL	1	\N
5373	yateski01	2019	0	ALS201907090	SDN	2918	NL	0	\N
\.
