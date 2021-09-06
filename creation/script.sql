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
    "year of issue" smallint,
    performer_id integer
);

CREATE TABLE IF NOT EXISTS public.tracks
(
    name character varying,
    id integer,
    "length of time" smallint,
    album_id integer
);


ALTER TABLE public."Performers"
    ADD PRIMARY KEY (id);

ALTER TABLE public.albums
    ADD PRIMARY KEY (id);

ALTER TABLE public.tracks
    ADD PRIMARY KEY (id);


ALTER TABLE public.albums
    ADD CONSTRAINT performer_album FOREIGN KEY (performer_id)
    REFERENCES public."Performers" (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;
    
ALTER TABLE public.tracks
    ADD CONSTRAINT album_track FOREIGN KEY (album_id)
    REFERENCES public.albums (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;
