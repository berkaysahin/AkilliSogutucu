--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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

--
-- Name: g191210302_nyat; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE g191210302_nyat WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';


ALTER DATABASE g191210302_nyat OWNER TO postgres;

\connect g191210302_nyat

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
-- Name: kullanicilar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kullanicilar (
    id integer NOT NULL,
    kullaniciadi text NOT NULL,
    sifre text NOT NULL
);


ALTER TABLE public.kullanicilar OWNER TO postgres;

--
-- Name: kullanicilar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kullanicilar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kullanicilar_id_seq OWNER TO postgres;

--
-- Name: kullanicilar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kullanicilar_id_seq OWNED BY public.kullanicilar.id;


--
-- Name: loglar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loglar (
    id integer NOT NULL,
    tarih date NOT NULL,
    icerik text NOT NULL
);


ALTER TABLE public.loglar OWNER TO postgres;

--
-- Name: loglar_logno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loglar_logno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loglar_logno_seq OWNER TO postgres;

--
-- Name: loglar_logno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loglar_logno_seq OWNED BY public.loglar.id;


--
-- Name: kullanicilar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanicilar ALTER COLUMN id SET DEFAULT nextval('public.kullanicilar_id_seq'::regclass);


--
-- Name: loglar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loglar ALTER COLUMN id SET DEFAULT nextval('public.loglar_logno_seq'::regclass);


--
-- Data for Name: kullanicilar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kullanicilar (id, kullaniciadi, sifre) VALUES (1, 'berkay', '123');


--
-- Data for Name: loglar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.loglar (id, tarih, icerik) VALUES (79, '2021-05-16', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (80, '2021-05-16', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (81, '2021-05-16', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (82, '2021-05-16', 'Olculen sicaklik: 48.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (83, '2021-05-16', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (84, '2021-05-16', 'Sogutucu kapatildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (85, '2021-05-16', 'berkay cikis yapiliyor.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (86, '2021-05-16', 'Cihazin durumu: Kapali');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (87, '2021-05-16', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (88, '2021-05-16', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (89, '2021-05-16', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (90, '2021-05-16', 'Olculen sicaklik: 16.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (91, '2021-05-16', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (92, '2021-05-16', 'Sogutucu kapatildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (93, '2021-05-16', 'berkay cikis yapiliyor.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (94, '2021-05-16', 'Cihazin durumu: Kapali');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (95, '2021-05-17', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (96, '2021-05-17', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (97, '2021-05-17', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (98, '2021-05-17', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (99, '2021-05-17', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (100, '2021-05-17', 'Olculen sicaklik: 26.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (101, '2021-05-17', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (102, '2021-05-17', 'Sogutucu kapatildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (103, '2021-05-17', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (104, '2021-05-17', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (105, '2021-05-17', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (106, '2021-05-17', 'Olculen sicaklik: 22.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (107, '2021-05-17', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (108, '2021-05-17', 'Sogutucu kapatildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (109, '2021-05-17', 'berkay cikis yapiliyor.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (110, '2021-05-17', 'Cihazin durumu: Kapali');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (111, '2021-05-17', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (112, '2021-05-17', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (113, '2021-05-17', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (114, '2021-05-17', 'Olculen sicaklik: 39.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (115, '2021-05-17', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (116, '2021-05-17', 'Sogutucu kapatildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (117, '2021-05-17', 'berkay cikis yapiliyor.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (118, '2021-05-17', 'Cihazin durumu: Kapali');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (119, '2021-05-17', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (120, '2021-05-17', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (121, '2021-05-17', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (122, '2021-05-17', 'Olculen sicaklik: 12.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (123, '2021-05-17', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (124, '2021-05-17', 'Sogutucu kapatildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (125, '2021-05-17', 'berkay cikis yapiliyor.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (126, '2021-05-17', 'Cihazin durumu: Kapali');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (127, '2021-05-17', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (128, '2021-05-17', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (129, '2021-05-17', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (130, '2021-05-17', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (131, '2021-05-17', 'Olculen sicaklik: 31.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (132, '2021-05-17', 'berkay giris yapildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (133, '2021-05-17', 'Cihazin durumu: Bekleme');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (134, '2021-05-17', 'Cihazin durumu: Algilama');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (135, '2021-05-17', 'Olculen sicaklik: 45.0');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (136, '2021-05-17', 'Sogutucu acildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (137, '2021-05-17', 'Sogutucu kapatildi.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (138, '2021-05-17', 'berkay cikis yapiliyor.');
INSERT INTO public.loglar (id, tarih, icerik) VALUES (139, '2021-05-17', 'Cihazin durumu: Kapali');


--
-- Name: kullanicilar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kullanicilar_id_seq', 1, false);


--
-- Name: loglar_logno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loglar_logno_seq', 139, true);


--
-- Name: kullanicilar kullanicilar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanicilar
    ADD CONSTRAINT kullanicilar_pk PRIMARY KEY (id);


--
-- Name: loglar loglar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loglar
    ADD CONSTRAINT loglar_pk PRIMARY KEY (id);


--
-- Name: kullanicilar_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX kullanicilar_id_uindex ON public.kullanicilar USING btree (id);


--
-- Name: kullanicilar_kullaniciadi_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX kullanicilar_kullaniciadi_uindex ON public.kullanicilar USING btree (kullaniciadi);


--
-- Name: loglar_logno_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX loglar_logno_uindex ON public.loglar USING btree (id);


--
-- PostgreSQL database dump complete
--

