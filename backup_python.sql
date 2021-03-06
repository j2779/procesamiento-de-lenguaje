PGDMP     .                    y         	   bd_python    11.7    12.0 ~    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    221511 	   bd_python    DATABASE     ?   CREATE DATABASE bd_python WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE bd_python;
                postgres    false            ?            1259    221543 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            ?            1259    221541    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            ?            1259    221553    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            ?            1259    221551    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            ?            1259    221535    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            ?            1259    221533    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    201            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    200            ?            1259    221561 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false            ?            1259    221571    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            postgres    false            ?            1259    221569    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            ?            1259    221559    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    207            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    206            ?            1259    221579    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            postgres    false            ?            1259    221577 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    211            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    210            ?            1259    221682    core_estado    TABLE     V   CREATE TABLE public.core_estado (
    id bigint NOT NULL,
    estado text NOT NULL
);
    DROP TABLE public.core_estado;
       public            postgres    false            ?            1259    221680    core_estado_id_seq    SEQUENCE     {   CREATE SEQUENCE public.core_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.core_estado_id_seq;
       public          postgres    false    216            ?           0    0    core_estado_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.core_estado_id_seq OWNED BY public.core_estado.id;
          public          postgres    false    215            ?            1259    221718    core_perfiles    TABLE       CREATE TABLE public.core_perfiles (
    id bigint NOT NULL,
    universidad text NOT NULL,
    facultad text NOT NULL,
    carrera text NOT NULL,
    descripcion text NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    actualizacion timestamp with time zone
);
 !   DROP TABLE public.core_perfiles;
       public            postgres    false            ?            1259    221716    core_perfiles_id_seq    SEQUENCE     }   CREATE SEQUENCE public.core_perfiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.core_perfiles_id_seq;
       public          postgres    false    220            ?           0    0    core_perfiles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.core_perfiles_id_seq OWNED BY public.core_perfiles.id;
          public          postgres    false    219            ?            1259    221693    core_usuario    TABLE       CREATE TABLE public.core_usuario (
    id bigint NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    cedula character varying(10) NOT NULL,
    tipo_persona text NOT NULL,
    empresa text,
    edad integer NOT NULL,
    telefono character varying(10),
    correo character varying(254) NOT NULL,
    clave text NOT NULL,
    fecha_registro timestamp with time zone NOT NULL,
    fecha_ingreso timestamp with time zone NOT NULL,
    estado_user_id bigint NOT NULL,
    CONSTRAINT core_usuario_edad_check CHECK ((edad >= 0))
);
     DROP TABLE public.core_usuario;
       public            postgres    false            ?            1259    221691    core_usuario_id_seq    SEQUENCE     |   CREATE SEQUENCE public.core_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_usuario_id_seq;
       public          postgres    false    218            ?           0    0    core_usuario_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_usuario_id_seq OWNED BY public.core_usuario.id;
          public          postgres    false    217            ?            1259    221639    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            ?            1259    221637    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    213            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    212            ?            1259    221525    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            ?            1259    221523    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    199            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    198            ?            1259    221514    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            ?            1259    221512    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    197            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    196            ?            1259    221670    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            ?
           2604    221546    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?
           2604    221556    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?
           2604    221538    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?
           2604    221564    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?
           2604    221574    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            ?
           2604    221582    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?
           2604    221685    core_estado id    DEFAULT     p   ALTER TABLE ONLY public.core_estado ALTER COLUMN id SET DEFAULT nextval('public.core_estado_id_seq'::regclass);
 =   ALTER TABLE public.core_estado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            ?
           2604    221721    core_perfiles id    DEFAULT     t   ALTER TABLE ONLY public.core_perfiles ALTER COLUMN id SET DEFAULT nextval('public.core_perfiles_id_seq'::regclass);
 ?   ALTER TABLE public.core_perfiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            ?
           2604    221696    core_usuario id    DEFAULT     r   ALTER TABLE ONLY public.core_usuario ALTER COLUMN id SET DEFAULT nextval('public.core_usuario_id_seq'::regclass);
 >   ALTER TABLE public.core_usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            ?
           2604    221642    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?
           2604    221528    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199            ?
           2604    221517    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            ?          0    221543 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   E?       ?          0    221553    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   b?       ?          0    221535    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   ?       ?          0    221561 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    207   ?       ?          0    221571    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   ҧ       ?          0    221579    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    211   ??       ?          0    221682    core_estado 
   TABLE DATA           1   COPY public.core_estado (id, estado) FROM stdin;
    public          postgres    false    216   ?       ?          0    221718    core_perfiles 
   TABLE DATA           w   COPY public.core_perfiles (id, universidad, facultad, carrera, descripcion, fecha_creacion, actualizacion) FROM stdin;
    public          postgres    false    220   I?       ?          0    221693    core_usuario 
   TABLE DATA           ?   COPY public.core_usuario (id, nombre, apellido, cedula, tipo_persona, empresa, edad, telefono, correo, clave, fecha_registro, fecha_ingreso, estado_user_id) FROM stdin;
    public          postgres    false    218   f?       ?          0    221639    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   ??       ?          0    221525    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   ??       ?          0    221514    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197    ?       ?          0    221670    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    214   ??       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    202            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    204            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    200            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    206            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    210            ?           0    0    core_estado_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_estado_id_seq', 3, true);
          public          postgres    false    215            ?           0    0    core_perfiles_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_perfiles_id_seq', 1, false);
          public          postgres    false    219            ?           0    0    core_usuario_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_usuario_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    198            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    196            ?
           2606    221668    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    203            ?
           2606    221595 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    205    205            ?
           2606    221558 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    205            ?
           2606    221548    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    203            ?
           2606    221586 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    201    201            ?
           2606    221540 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    201            ?
           2606    221576 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            ?
           2606    221610 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            ?
           2606    221566    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    207            ?
           2606    221584 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    211            ?
           2606    221624 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    211    211            ?
           2606    221662     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    207                       2606    221690    core_estado core_estado_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.core_estado
    ADD CONSTRAINT core_estado_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.core_estado DROP CONSTRAINT core_estado_pkey;
       public            postgres    false    216                       2606    221726     core_perfiles core_perfiles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.core_perfiles
    ADD CONSTRAINT core_perfiles_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.core_perfiles DROP CONSTRAINT core_perfiles_pkey;
       public            postgres    false    220                       2606    221704 $   core_usuario core_usuario_cedula_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.core_usuario
    ADD CONSTRAINT core_usuario_cedula_key UNIQUE (cedula);
 N   ALTER TABLE ONLY public.core_usuario DROP CONSTRAINT core_usuario_cedula_key;
       public            postgres    false    218                       2606    221706 $   core_usuario core_usuario_correo_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.core_usuario
    ADD CONSTRAINT core_usuario_correo_key UNIQUE (correo);
 N   ALTER TABLE ONLY public.core_usuario DROP CONSTRAINT core_usuario_correo_key;
       public            postgres    false    218                       2606    221702    core_usuario core_usuario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_usuario
    ADD CONSTRAINT core_usuario_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_usuario DROP CONSTRAINT core_usuario_pkey;
       public            postgres    false    218                       2606    221648 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    213            ?
           2606    221532 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    199    199            ?
           2606    221530 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    199            ?
           2606    221522 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    197                       2606    221677 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    214            ?
           1259    221669    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    203            ?
           1259    221606 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    205            ?
           1259    221607 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    205            ?
           1259    221592 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    201            ?
           1259    221622 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            ?
           1259    221621 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            ?
           1259    221636 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    211            ?
           1259    221635 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    211            ?
           1259    221663     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    207            	           1259    221712 !   core_usuario_cedula_cbd6624d_like    INDEX     p   CREATE INDEX core_usuario_cedula_cbd6624d_like ON public.core_usuario USING btree (cedula varchar_pattern_ops);
 5   DROP INDEX public.core_usuario_cedula_cbd6624d_like;
       public            postgres    false    218                       1259    221713 !   core_usuario_correo_1000405d_like    INDEX     p   CREATE INDEX core_usuario_correo_1000405d_like ON public.core_usuario USING btree (correo varchar_pattern_ops);
 5   DROP INDEX public.core_usuario_correo_1000405d_like;
       public            postgres    false    218                       1259    221714 $   core_usuario_estado_user_id_2a47df96    INDEX     g   CREATE INDEX core_usuario_estado_user_id_2a47df96 ON public.core_usuario USING btree (estado_user_id);
 8   DROP INDEX public.core_usuario_estado_user_id_2a47df96;
       public            postgres    false    218            ?
           1259    221659 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213                       1259    221660 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213                       1259    221679 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    214                       1259    221678 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    214                       2606    221601 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    2786    201                       2606    221596 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2791    203    205                       2606    221587 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    199    201    2781                       2606    221616 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2791    209    203                       2606    221611 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    209    2799    207                       2606    221630 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    211    201    2786                       2606    221625 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2799    211    207                       2606    221707 C   core_usuario core_usuario_estado_user_id_2a47df96_fk_core_estado_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_usuario
    ADD CONSTRAINT core_usuario_estado_user_id_2a47df96_fk_core_estado_id FOREIGN KEY (estado_user_id) REFERENCES public.core_estado(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.core_usuario DROP CONSTRAINT core_usuario_estado_user_id_2a47df96_fk_core_estado_id;
       public          postgres    false    218    216    2824                       2606    221649 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    199    213    2781                       2606    221654 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    207    213    2799            ?      x?????? ? ?      ?      x?????? ? ?      ?   v  x?]??j?0F?????:m????tIIҍ??Z??%?Β???;??~*?a(????Ӷ<\p???YS?KB???t??J-+?x??SK????1?????f?????:Γ+IM??r??b??ϰT?II?????e??7W? ?}8h9??H?N?@H)*??U6??qq5	??>?z??X??Fo??	he7ƴ:?y?y??????]Ch?:>??????;??????? ?;?t??ӭ?$?ʗ&???3c&??A/c*??UF$?q??avGJ?/M?3?L?3?T?3B*t*K?~gwB?????&??*`?抱-`?NC?J?_?5?????J_ջ/?)?  6??Ϡ?~??y????O?Ǜ???nō      ?   ?   x?]?A?0@??Wt??m~?&??J?(????V:M???]{??Qdһ????&????#=??t?g:MvI?ڜ?jo???&V?????͞-??x?;&????S???;??'0A?0:"0?0 ?<p<,|G???Z$?3//???L??B?W?=U9?TW꼔O?(?3?aU?E??PsN????:c˲?x:?      ?      x?????? ? ?      ?      x?????? ? ?      ?   -   x?3?L,(?OJL????2?,JM?,.)JL??2??KM1b???? ?8      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   p   x?M?K
ADש???.n'???N??bnoc#??Wԣ?T?U*-:s?p????ƶ??h?q4?i6????LO?ѵ????B?_??>0&?(??6(=???>???da?c?i4?      ?   ?  x???ߎ? ???S?X??W|???R?Ń?پ????z??x??>g?????h?/?Y?(;?h?k0?????????D??2??]v??^???E-??H??ѧ?N?#?T??'?r~Hu??
f?_F??{?O?}?@T??`w?3RN?c?~Rg?u??????:???ßl?[5????I?f%e?P?!?>???&?ل?.K.)?ը??3Ӑ?zFA?0c 3??(???%]̨?{I???g???HɗR??㞞?`??L T????y?[???D???J?I??Նj?hW??>???A?};?Vʗv???K?	?5?e???ܡ???vF*?ە??2?(]!?J?O??A?d
???? m?!?u~C???^1??9)2j??????~HZey?]??cWg?m????t?b???8) .??|2?????B{???????͞???	???3Lr%??=?LYp?      ?     x??m?B@  ?????]?????^?????l?~?=????>????w???pc4????P????Tl?ڎ?U>?????Ô?? ??%[?	Q??R??9۩?#??Z|*?f???|??a???l?O?\??@T?34?97&?3j?? G0?8>?V?sѰd??}V?v	???ݓ
?4~>ubi'Ü9$B?mA?+??]{??C?S??1ք??)??x??{?,;R?8?a?P?
e?d????MK3l??t?O?$???]'     