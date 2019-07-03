--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.locations VALUES (1, 33.5151005600000005, 130.177627000000001, 'その他の単路/車両相互', '2019-03-09 03:38:58', '2019-03-09 03:38:58');
INSERT INTO public.locations VALUES (2, 33.5161369400000027, 130.154965720000007, '一般交通の場所/人対車両', '2019-03-09 03:39:40', '2019-03-09 03:39:40');
INSERT INTO public.locations VALUES (3, 33.5694857499999983, 130.222150529999993, 'その他の単路/人対車両', '2019-03-09 03:40:13', '2019-03-09 03:40:13');
INSERT INTO public.locations VALUES (4, 33.5145289700000006, 130.141540359999993, '交差点その他/車両相互', '2019-03-09 03:40:43', '2019-03-09 03:40:43');
INSERT INTO public.locations VALUES (5, 33.4818689700000007, 130.07503152999999, '交差点その他/人対車両', '2019-03-09 03:41:17', '2019-03-09 03:41:17');
INSERT INTO public.locations VALUES (6, 33.5481024199999993, 130.201567329999989, 'その他の単路/人対車両', '2019-03-09 03:41:50', '2019-03-09 03:41:50');
INSERT INTO public.locations VALUES (7, 33.5075783300000012, 130.114627469999988, 'カーブ・屈折/車両相互', '2019-03-09 03:42:23', '2019-03-09 03:42:23');
INSERT INTO public.locations VALUES (8, 33.5746090800000019, 130.225508189999999, '交差点その他/人対車両', '2019-03-09 03:42:52', '2019-03-09 03:42:52');
INSERT INTO public.locations VALUES (9, 33.5192344700000007, 130.139301249999988, '交差点その他/人対車両', '2019-03-09 03:43:55', '2019-03-09 03:43:55');
INSERT INTO public.locations VALUES (10, 33.5222262200000003, 130.166984109999987, '交差点その他/車両相互', '2019-03-09 03:44:33', '2019-03-09 03:44:33');
INSERT INTO public.locations VALUES (11, 33.5391611900000015, 130.222519470000009, '交差点その他/車両相互', '2019-03-09 03:45:01', '2019-03-09 03:45:01');
INSERT INTO public.locations VALUES (12, 33.5090626400000033, 130.11226228000001, 'カーブ・屈折/車両相互', '2019-03-09 03:45:27', '2019-03-09 03:45:27');
INSERT INTO public.locations VALUES (13, 33.5094350000000034, 130.124635530000006, 'カーブ・屈折/車両相互', '2019-03-09 03:45:59', '2019-03-09 03:45:59');
INSERT INTO public.locations VALUES (14, 33.5470520300000032, 130.177268389999995, '交差点その他/車両相互', '2019-03-09 03:47:07', '2019-03-09 03:47:07');
INSERT INTO public.locations VALUES (15, 33.4901892800000027, 130.25533403, 'その他の単路/車両単独', '2019-03-09 03:47:36', '2019-03-09 03:47:36');
INSERT INTO public.locations VALUES (16, 33.566287250000002, 130.229391529999987, 'その他の単路/車両相互', '2019-03-09 03:50:11', '2019-03-09 03:50:11');
INSERT INTO public.locations VALUES (17, 33.5499902500000005, 130.216407110000006, '交差点その他/車両相互', '2019-03-09 03:51:38', '2019-03-09 03:51:38');
INSERT INTO public.locations VALUES (18, 33.5662949399999988, 130.229403969999993, 'その他の単路/車両相互', '2019-03-09 03:52:32', '2019-03-09 03:52:32');
INSERT INTO public.locations VALUES (19, 33.5640089999999987, 130.191722220000003, '交差点その他/車両相互', '2019-03-09 03:52:58', '2019-03-09 03:52:58');
INSERT INTO public.locations VALUES (20, 33.5738029999999981, 130.201663389999993, '交差点その他/車両相互', '2019-03-09 03:53:32', '2019-03-09 03:53:32');
INSERT INTO public.locations VALUES (21, 33.5129074700000018, 130.133501749999994, '交差点その他/人対車両', '2019-03-09 03:53:59', '2019-03-09 03:53:59');


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.schema_migrations VALUES (20190216210248, '2019-03-09 01:46:53');


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locations_id_seq', 21, true);


--
-- PostgreSQL database dump complete
--

