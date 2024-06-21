PGDMP      !    
            |           old_library    16.2 (Debian 16.2-1.pgdg120+2)    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16388    old_library    DATABASE     v   CREATE DATABASE old_library WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE old_library;
                postgres    false            �            1259    16417 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16416    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    222            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    221            �            1259    16426    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16425    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    224            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    223            �            1259    16408    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16407    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    220            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    219            �            1259    16435 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16444    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16443    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    228            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    227            �            1259    16434    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    226            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    225            �            1259    16453    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16452 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    230            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    229            �            1259    16537    books_author    TABLE     h   CREATE TABLE public.books_author (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
     DROP TABLE public.books_author;
       public         heap    postgres    false            �            1259    16536    books_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.books_author_id_seq;
       public          postgres    false    235            �           0    0    books_author_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;
          public          postgres    false    234            �            1259    16544 
   books_book    TABLE     �   CREATE TABLE public.books_book (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    published_date date NOT NULL
);
    DROP TABLE public.books_book;
       public         heap    postgres    false            �            1259    16551    books_book_authors    TABLE     �   CREATE TABLE public.books_book_authors (
    id integer NOT NULL,
    book_id integer NOT NULL,
    author_id integer NOT NULL
);
 &   DROP TABLE public.books_book_authors;
       public         heap    postgres    false            �            1259    16550    books_book_authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.books_book_authors_id_seq;
       public          postgres    false    239            �           0    0    books_book_authors_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.books_book_authors_id_seq OWNED BY public.books_book_authors.id;
          public          postgres    false    238            �            1259    16543    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public          postgres    false    237            �           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;
          public          postgres    false    236            �            1259    16560    books_bookloan    TABLE     �   CREATE TABLE public.books_bookloan (
    id integer NOT NULL,
    loan_date date NOT NULL,
    return_date date NOT NULL,
    book_id integer NOT NULL,
    client_id integer NOT NULL,
    returned boolean NOT NULL
);
 "   DROP TABLE public.books_bookloan;
       public         heap    postgres    false            �            1259    16559    books_bookloan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_bookloan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.books_bookloan_id_seq;
       public          postgres    false    241            �           0    0    books_bookloan_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.books_bookloan_id_seq OWNED BY public.books_bookloan.id;
          public          postgres    false    240            �            1259    16567    books_libraryclient    TABLE     �   CREATE TABLE public.books_libraryclient (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    contact character varying(100) NOT NULL
);
 '   DROP TABLE public.books_libraryclient;
       public         heap    postgres    false            �            1259    16566    books_libraryclient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_libraryclient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.books_libraryclient_id_seq;
       public          postgres    false    243            �           0    0    books_libraryclient_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.books_libraryclient_id_seq OWNED BY public.books_libraryclient.id;
          public          postgres    false    242            �            1259    16506    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    16505    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    232            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    231            �            1259    16399    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16398    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    217            �            1259    16390    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16389    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    216            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    215            �            1259    16527    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           2604    16420    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16429    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16411    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16438    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16447    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16456    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16540    books_author id    DEFAULT     r   ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);
 >   ALTER TABLE public.books_author ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    16547    books_book id    DEFAULT     n   ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books_book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    16554    books_book_authors id    DEFAULT     ~   ALTER TABLE ONLY public.books_book_authors ALTER COLUMN id SET DEFAULT nextval('public.books_book_authors_id_seq'::regclass);
 D   ALTER TABLE public.books_book_authors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    16563    books_bookloan id    DEFAULT     v   ALTER TABLE ONLY public.books_bookloan ALTER COLUMN id SET DEFAULT nextval('public.books_bookloan_id_seq'::regclass);
 @   ALTER TABLE public.books_bookloan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    16570    books_libraryclient id    DEFAULT     �   ALTER TABLE ONLY public.books_libraryclient ALTER COLUMN id SET DEFAULT nextval('public.books_libraryclient_id_seq'::regclass);
 E   ALTER TABLE public.books_libraryclient ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    16509    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    16402    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16393    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16417 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    222   d�       �          0    16426    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    224   ��       �          0    16408    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    220   ��       �          0    16435 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    226   �       �          0    16444    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    228   Ż       �          0    16453    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    230   �       �          0    16537    books_author 
   TABLE DATA           0   COPY public.books_author (id, name) FROM stdin;
    public          postgres    false    235   ��       �          0    16544 
   books_book 
   TABLE DATA           ?   COPY public.books_book (id, title, published_date) FROM stdin;
    public          postgres    false    237   ��       �          0    16551    books_book_authors 
   TABLE DATA           D   COPY public.books_book_authors (id, book_id, author_id) FROM stdin;
    public          postgres    false    239   ��       �          0    16560    books_bookloan 
   TABLE DATA           b   COPY public.books_bookloan (id, loan_date, return_date, book_id, client_id, returned) FROM stdin;
    public          postgres    false    241   Ž       �          0    16567    books_libraryclient 
   TABLE DATA           @   COPY public.books_libraryclient (id, name, contact) FROM stdin;
    public          postgres    false    243   -�       �          0    16506    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    232   þ       �          0    16399    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    218   �       �          0    16390    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    216   �       �          0    16527    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    233   E�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 30, true);
          public          postgres    false    219            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    227            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    225            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    229            �           0    0    books_author_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.books_author_id_seq', 11, true);
          public          postgres    false    234            �           0    0    books_book_authors_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.books_book_authors_id_seq', 10, true);
          public          postgres    false    238            �           0    0    books_book_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.books_book_id_seq', 10, true);
          public          postgres    false    236            �           0    0    books_bookloan_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.books_bookloan_id_seq', 16, true);
          public          postgres    false    240            �           0    0    books_libraryclient_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.books_libraryclient_id_seq', 5, true);
          public          postgres    false    242            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 43, true);
          public          postgres    false    231            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    217            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 12, true);
          public          postgres    false    215            �           2606    16424    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    222            �           2606    16433 H   auth_group_permissions auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public            postgres    false    224    224            �           2606    16431 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    224            �           2606    16422    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    222            �           2606    16415 <   auth_permission auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public            postgres    false    220    220            �           2606    16413 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    220            �           2606    16449 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    228            �           2606    16451 6   auth_user_groups auth_user_groups_user_id_group_id_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public            postgres    false    228    228            �           2606    16440    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    226            �           2606    16458 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    230            �           2606    16460 O   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public            postgres    false    230    230            �           2606    16442     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    226                       2606    16542    books_author books_author_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.books_author DROP CONSTRAINT books_author_pkey;
       public            postgres    false    235                       2606    16558 ;   books_book_authors books_book_authors_book_id_author_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.books_book_authors
    ADD CONSTRAINT books_book_authors_book_id_author_id_key UNIQUE (book_id, author_id);
 e   ALTER TABLE ONLY public.books_book_authors DROP CONSTRAINT books_book_authors_book_id_author_id_key;
       public            postgres    false    239    239                       2606    16556 *   books_book_authors books_book_authors_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.books_book_authors
    ADD CONSTRAINT books_book_authors_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.books_book_authors DROP CONSTRAINT books_book_authors_pkey;
       public            postgres    false    239            	           2606    16549    books_book books_book_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.books_book DROP CONSTRAINT books_book_pkey;
       public            postgres    false    237                       2606    16565 "   books_bookloan books_bookloan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.books_bookloan
    ADD CONSTRAINT books_bookloan_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.books_bookloan DROP CONSTRAINT books_bookloan_pkey;
       public            postgres    false    241                       2606    16572 ,   books_libraryclient books_libraryclient_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.books_libraryclient
    ADD CONSTRAINT books_libraryclient_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.books_libraryclient DROP CONSTRAINT books_libraryclient_pkey;
       public            postgres    false    243                       2606    16514 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    232            �           2606    16406 G   django_content_type django_content_type_app_label_45f3b1d93ec8c61c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
       public            postgres    false    218    218            �           2606    16404 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    218            �           2606    16397 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    216                       2606    16533 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    233            �           1259    16467 %   auth_group_name_253ae2a6331666e8_like    INDEX     p   CREATE INDEX auth_group_name_253ae2a6331666e8_like ON public.auth_group USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.auth_group_name_253ae2a6331666e8_like;
       public            postgres    false    222            �           1259    16478    auth_group_permissions_0e939a4f    INDEX     f   CREATE INDEX auth_group_permissions_0e939a4f ON public.auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public            postgres    false    224            �           1259    16479    auth_group_permissions_8373b171    INDEX     k   CREATE INDEX auth_group_permissions_8373b171 ON public.auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public            postgres    false    224            �           1259    16466    auth_permission_417f1b1c    INDEX     _   CREATE INDEX auth_permission_417f1b1c ON public.auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public            postgres    false    220            �           1259    16492    auth_user_groups_0e939a4f    INDEX     Z   CREATE INDEX auth_user_groups_0e939a4f ON public.auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public            postgres    false    228            �           1259    16491    auth_user_groups_e8701ad4    INDEX     Y   CREATE INDEX auth_user_groups_e8701ad4 ON public.auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public            postgres    false    228            �           1259    16504 #   auth_user_user_permissions_8373b171    INDEX     s   CREATE INDEX auth_user_user_permissions_8373b171 ON public.auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public            postgres    false    230            �           1259    16503 #   auth_user_user_permissions_e8701ad4    INDEX     m   CREATE INDEX auth_user_user_permissions_e8701ad4 ON public.auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public            postgres    false    230            �           1259    16480 (   auth_user_username_51b3b110094b8aae_like    INDEX     v   CREATE INDEX auth_user_username_51b3b110094b8aae_like ON public.auth_user USING btree (username varchar_pattern_ops);
 <   DROP INDEX public.auth_user_username_51b3b110094b8aae_like;
       public            postgres    false    226            
           1259    16583    books_book_authors_0a4572cc    INDEX     ]   CREATE INDEX books_book_authors_0a4572cc ON public.books_book_authors USING btree (book_id);
 /   DROP INDEX public.books_book_authors_0a4572cc;
       public            postgres    false    239                       1259    16584    books_book_authors_4f331e2f    INDEX     _   CREATE INDEX books_book_authors_4f331e2f ON public.books_book_authors USING btree (author_id);
 /   DROP INDEX public.books_book_authors_4f331e2f;
       public            postgres    false    239                       1259    16590    books_bookloan_0a4572cc    INDEX     U   CREATE INDEX books_bookloan_0a4572cc ON public.books_bookloan USING btree (book_id);
 +   DROP INDEX public.books_bookloan_0a4572cc;
       public            postgres    false    241                       1259    16591    books_bookloan_2bfe9d72    INDEX     W   CREATE INDEX books_bookloan_2bfe9d72 ON public.books_bookloan USING btree (client_id);
 +   DROP INDEX public.books_bookloan_2bfe9d72;
       public            postgres    false    241            �           1259    16525    django_admin_log_417f1b1c    INDEX     a   CREATE INDEX django_admin_log_417f1b1c ON public.django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public            postgres    false    232            �           1259    16526    django_admin_log_e8701ad4    INDEX     Y   CREATE INDEX django_admin_log_e8701ad4 ON public.django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public            postgres    false    232                       1259    16534    django_session_de54fa62    INDEX     Y   CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public            postgres    false    233                       1259    16535 0   django_session_session_key_461cfeaa630ca218_like    INDEX     �   CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 D   DROP INDEX public.django_session_session_key_461cfeaa630ca218_like;
       public            postgres    false    233                       2606    16461 O   auth_permission auth_content_type_id_508cf46651277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
       public          postgres    false    220    3292    218                       2606    16468 V   auth_group_permissions auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
       public          postgres    false    222    3302    224                       2606    16473 V   auth_group_permissions auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
       public          postgres    false    220    224    3297                       2606    16498 Z   auth_user_user_permissions auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
       public          postgres    false    220    230    3297                       2606    16486 L   auth_user_groups auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
       public          postgres    false    222    3302    228                       2606    16481 J   auth_user_groups auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
       public          postgres    false    3310    228    226                       2606    16493 Z   auth_user_user_permissions auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
       public          postgres    false    226    230    3310                       2606    16578 R   books_book_authors books_book_authors_author_id_e049bfcbf8204f0_fk_books_author_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_book_authors
    ADD CONSTRAINT books_book_authors_author_id_e049bfcbf8204f0_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.books_book_authors DROP CONSTRAINT books_book_authors_author_id_e049bfcbf8204f0_fk_books_author_id;
       public          postgres    false    3335    239    235                        2606    16573 O   books_book_authors books_book_authors_book_id_50d3054cfcf399e4_fk_books_book_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_book_authors
    ADD CONSTRAINT books_book_authors_book_id_50d3054cfcf399e4_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.books_book_authors DROP CONSTRAINT books_book_authors_book_id_50d3054cfcf399e4_fk_books_book_id;
       public          postgres    false    3337    239    237            !           2606    16592 N   books_bookloan books_book_client_id_11a7a0ad4776c33b_fk_books_libraryclient_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_bookloan
    ADD CONSTRAINT books_book_client_id_11a7a0ad4776c33b_fk_books_libraryclient_id FOREIGN KEY (client_id) REFERENCES public.books_libraryclient(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.books_bookloan DROP CONSTRAINT books_book_client_id_11a7a0ad4776c33b_fk_books_libraryclient_id;
       public          postgres    false    241    243    3349            "           2606    16585 G   books_bookloan books_bookloan_book_id_341c6db1648b3c25_fk_books_book_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_bookloan
    ADD CONSTRAINT books_bookloan_book_id_341c6db1648b3c25_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.books_bookloan DROP CONSTRAINT books_bookloan_book_id_341c6db1648b3c25_fk_books_book_id;
       public          postgres    false    3337    241    237                       2606    16515 P   django_admin_log djan_content_type_id_697914295151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
       public          postgres    false    218    232    3292                       2606    16520 J   django_admin_log django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
       public          postgres    false    3310    232    226            �      x^����� � �      �      x^����� � �      �   j  x^]�Mn� ���)|��8��^�R�$(���;�ܾf��wf����x��ꆦ�^���5n���X3��.�U�r�(�p���=�T�(-�6K�.�������j]
�+�Hq��Ku��]��l��z����Y��3��ĩ4%��3^�f���G��<�oy< ��	�t 96��i�P3����T�R��E���
���7�+�W�xdo2:�p���J,����!sz�ʌ!���^��sP�"t�2AW�?U�)AhA���5G��Gi>%|K dN !���Ѕwsy�s�	C�"j�"�4z�i��=H=M�zO�zZ�>y�n0�o�><��E���\��4��!�E�~��?E0�      �   �   x^]��
�@ ϻ_�����羵� �p�CEfA�&�m	.~}B��2�a|�]۪�K�H�B�NJ�*	k)�����+/m�A�6y�c��7ސѡ�ֻ����X/�9C@�t&0�|	pQ@��+*}2����z�/=����@
9���rοI�,}      �      x^����� � �      �      x^����� � �      �   �   x^-���0E����"'`�i�ĩ�
jPi���?����u��;b6�Ѽ�	قEGr���5葬� �
�L�Hq�����$ۢ;�3U�e�����U�3m/
Ʋg�@_@�����Ѽ8����=�K�k�]-"?��y�      �   �   x^-�Mn�0���)|P%&�Y8�n�*u[���'"��^�͍�2X�X���y��=��`�>�C:Y�����g�糁ES���Y|�
�����!=FBz��1�DF��5�	!k���$��!�ʝI�_D�y-,����>u�2<:HJؾ9�i&N�UL�e'[%�U&���7I���|�W-j��ԛ�()�����Z��K�+      �   /   x^Ǳ  ��������P��$)m6��5�C�`���q���b      �   X   x^m̱�0D����l'�B��/E�"���{�0Z��M'Q�E�g��3P���j�D˜��G��	bf���kmr�?~�"�<� `      �   �   x^3�0���v\�}�G���.lr6;.캰�ӡ,��2�*1)���N�2ἰ�¾�@�T�S�l��i�\�{�����������L9/,���b�Ŧ���+U0�t(��MM��+IL.����� b%M7      �   �  x^�W�nE]����A(�zu=z��ĒK6�[qf�x��ؑg��`��Da?�bby���?��퇫�۲�ǚ��s�so�ɥ���mə������V��S�'b�Uy�dӣ��|��'v"v�0L���I�����`�Gߔ�?[�����G��
)3n��)����r��AAz�}&��&��6��.A��ɷQu�m�VĊd-�U]�jz����:��+��6��V];�R<�Q��
U���Q]�j�AZ� c�L�vIKF\QM?f3�;]���\m�-����ʈE"�Wj'[hT#5����f*�C��zqT���Mg��{lQ.���^�p�n�Y�O�xn~=w��qS�P0��B���f�Itm+W�����a�co*Mڦ�f�r���g6�[�o)���}d��C蘢7G*�N����mN�f�}u���:��5&���I�3�v\	����֡��'m��RN���YЩ?DC��{��xr�GM��Ӡ^m+���Ry�3j��?:�d
�TZfJk%FG.�B�`�s^���a7ҋ�ʔ乧+�?��=9�S�sN�o��	/��5�-esM��F�g����ҰT�{wU�?^r��:NK.(놿�Yۨ��m�-��̈\����zT=�qXW�,�
¦:�NXx�O�����pV=
�p^����ҷ0�б���5�Wx��yXq�f�E����mXwKHߝ@����b��#t��	l� a�Wd�����6շ0\�u����d�;�Q��F�.}�r�=M5y:�2�o���$lP�;$O�t�}V.����ꁼ�!�P=� ��p�3��V�[���O�����r#����O�D��:�Q�B߰�:8ǰb�� tpw��=L��<ZX�m ��X*�yFl���m��"»���[���z�LA����{�z�s��K�ol[H�4��Qtz8��Z}��MJI>)Xx��E�!{�cu
�^&��	v��$�RTE� ���9��\�O�������w�O����ރ�'���{�
���N�8ד�pD���)�BKv���W~T����p�2�ً�k`r>�?,w��twy	��1RRd��z���n^�7�i�l���A�����y�|#�r�A-����bU/I��T�+�l����/)�]	|aQ���+uk���|������      �   y   x^M�K�0Dמ�T��ޥ�@#���N�=��n�h�4�>S`�2x�Zq!W�H��̂0�[3����ż�N�p^�\��#�%�m��u"_[}Q<w��x�C�Nk���|�Dq��	��<�      �   -  x^���N� E��W�n��(���JV"-k�F�^�M]c�n�/����A��d�>O62 @�f�������a$ق��bfM/��/	�����"8��KD��#��)�[}���[�f���(�����͗���.�d�����\�z2�����ڛE?`����Qk�<;�R:��P(j��KJAU�pJq_Dr�� ��]"��I�pty�����
	k-��y�o�[��֛��&h_D���	�E[Wy�	a�Q�N�c��g��	y�(DU3���M�)��H���LQ���kI��m�4_����      �     x^e��n�@�<E��f���&])t&r��̤�Zf`,բ��W�t��Y�|�@�޵~w&G�|h�t����WSMw9P� CVa�c�*�%���{�5��N֬�q�݌i=)w��3wx/s�/�/�ԧ���51\'a��R�7-�p����l�I�z�Xjq��$.f�Z��^�����r`���zcR�T�*L�JZ�v����������Ee�e�O��t��sz��s}���� �C2��S۝�d���#!��Ȳ��Cf�     