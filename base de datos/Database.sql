PGDMP                     	    z           datalist    14.4    14.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16396    datalist    DATABASE     e   CREATE DATABASE datalist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE datalist;
                postgres    false            ?            1259    16421 	   categoria    TABLE     Y   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            ?            1259    16433    producto    TABLE     ?   CREATE TABLE public.producto (
    id integer,
    nombre character varying,
    cantidad integer,
    fecha_actualizacion date,
    "idProveedor" integer,
    "idCategoria" integer
);
    DROP TABLE public.producto;
       public         heap    postgres    false            ?            1259    16414 	   proveedor    TABLE     Y   CREATE TABLE public.proveedor (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            ?          0    16421 	   categoria 
   TABLE DATA           /   COPY public.categoria (id, nombre) FROM stdin;
    public          postgres    false    210   [       ?          0    16433    producto 
   TABLE DATA           k   COPY public.producto (id, nombre, cantidad, fecha_actualizacion, "idProveedor", "idCategoria") FROM stdin;
    public          postgres    false    211   x       ?          0    16414 	   proveedor 
   TABLE DATA           /   COPY public.proveedor (id, nombre) FROM stdin;
    public          postgres    false    209   ?       f           2606    16427    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    210            d           2606    16420    proveedor proveedor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    209            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     