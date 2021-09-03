CREATE TABLE IF NOT EXISTS public."Performers"
(
    singer character varying,
    id integer,
    name character varying
);

CREATE TABLE IF NOT EXISTS public.albums
(
    name character varying,
    id integer,
    "year of issue" smallint
);

CREATE TABLE IF NOT EXISTS public.tracks
(
    name character varying,
    id integer,
    "length of time" smallint
);
