CREATE TABLE public.photos (
    id serial4 NOT NULL,
    user_id int4 NULL,
    city_id int4 NULL,
    image_url text NOT NULL,
    caption text NULL,
    latitude float8 NULL,
    longitude float8 NULL,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT photos_pkey PRIMARY KEY (id)
);

ALTER TABLE public.photos ADD CONSTRAINT photos_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(id) ON DELETE SET NULL;
ALTER TABLE public.photos ADD CONSTRAINT photos_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
