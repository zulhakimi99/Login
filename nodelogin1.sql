PGDMP                         x         
   nodelogin1    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16498 
   nodelogin1    DATABASE     �   CREATE DATABASE nodelogin1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE nodelogin1;
                zul    false            �            1259    16501    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(200) NOT NULL,
    password character varying(200) NOT NULL
);
    DROP TABLE public.users;
       public         heap    zul    false            �            1259    16499    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          zul    false    203                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          zul    false    202            �
           2604    16504    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          zul    false    202    203    203                      0    16501    users 
   TABLE DATA           :   COPY public.users (id, name, email, password) FROM stdin;
    public          zul    false    203   �                  0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          zul    false    202            �
           2606    16511    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            zul    false    203            �
           2606    16509    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            zul    false    203               '   x�3�*�a��������\΂�������=... ��
�     