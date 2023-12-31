PGDMP     -    9                {            testVS    15.3    15.3 ]    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16637    testVS    DATABASE     {   CREATE DATABASE "testVS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE "testVS";
                ibrahim_chakour    false            �            1259    24584    app_transaction    TABLE     V  CREATE TABLE public.app_transaction (
    transaction_id integer NOT NULL,
    amount numeric(10,2) NOT NULL,
    typetransaction character varying(100) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    status character varying(100) NOT NULL,
    receiver_name character varying(100),
    sender_name character varying(100)
);
 #   DROP TABLE public.app_transaction;
       public         heap    ibrahim_chakour    false            �            1259    24583 "   app_transaction_transaction_id_seq    SEQUENCE     �   ALTER TABLE public.app_transaction ALTER COLUMN transaction_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.app_transaction_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    236            �            1259    16785    app_utilisateur    TABLE     �  CREATE TABLE public.app_utilisateur (
    id_utilisateur integer NOT NULL,
    nom_utilisateur character varying(100) NOT NULL,
    numero_telephone character varying(100) NOT NULL,
    courriel character varying(254) NOT NULL,
    solde numeric(10,2) NOT NULL,
    operateur character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    is_staff boolean NOT NULL,
    last_login timestamp with time zone,
    password character varying(100) NOT NULL
);
 #   DROP TABLE public.app_utilisateur;
       public         heap    ibrahim_chakour    false            �            1259    16784 "   app_utilisateur_id_utilisateur_seq    SEQUENCE     �   ALTER TABLE public.app_utilisateur ALTER COLUMN id_utilisateur ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.app_utilisateur_id_utilisateur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    234            �            1259    16661 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    ibrahim_chakour    false            �            1259    16660    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    221            �            1259    16669    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    ibrahim_chakour    false            �            1259    16668    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    223            �            1259    16655    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    ibrahim_chakour    false            �            1259    16654    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    219            �            1259    16675 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    ibrahim_chakour    false            �            1259    16683    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    ibrahim_chakour    false            �            1259    16682    auth_user_groups_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    227            �            1259    16674    auth_user_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    225            �            1259    16689    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    ibrahim_chakour    false            �            1259    16688 !   auth_user_user_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    229            �            1259    16747    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    ibrahim_chakour    false            �            1259    16746    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    231            �            1259    16647    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    ibrahim_chakour    false            �            1259    16646    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    217            �            1259    16639    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    ibrahim_chakour    false            �            1259    16638    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          ibrahim_chakour    false    215            �            1259    16775    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    ibrahim_chakour    false                      0    24584    app_transaction 
   TABLE DATA           �   COPY public.app_transaction (transaction_id, amount, typetransaction, "timestamp", status, receiver_name, sender_name) FROM stdin;
    public          ibrahim_chakour    false    236   �       }          0    16785    app_utilisateur 
   TABLE DATA           �   COPY public.app_utilisateur (id_utilisateur, nom_utilisateur, numero_telephone, courriel, solde, operateur, is_active, is_admin, is_staff, last_login, password) FROM stdin;
    public          ibrahim_chakour    false    234   ��       p          0    16661 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          ibrahim_chakour    false    221   �       r          0    16669    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          ibrahim_chakour    false    223   ;�       n          0    16655    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          ibrahim_chakour    false    219   X�       t          0    16675 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          ibrahim_chakour    false    225   ��       v          0    16683    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          ibrahim_chakour    false    227   ܈       x          0    16689    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          ibrahim_chakour    false    229   ��       z          0    16747    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          ibrahim_chakour    false    231   �       l          0    16647    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          ibrahim_chakour    false    217   ��       j          0    16639    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          ibrahim_chakour    false    215   y�       {          0    16775    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          ibrahim_chakour    false    232   ��       �           0    0 "   app_transaction_transaction_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.app_transaction_transaction_id_seq', 8, true);
          public          ibrahim_chakour    false    235            �           0    0 "   app_utilisateur_id_utilisateur_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.app_utilisateur_id_utilisateur_seq', 5, true);
          public          ibrahim_chakour    false    233            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          ibrahim_chakour    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          ibrahim_chakour    false    222            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          ibrahim_chakour    false    218            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          ibrahim_chakour    false    226            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          ibrahim_chakour    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          ibrahim_chakour    false    228            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 5, true);
          public          ibrahim_chakour    false    230            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          ibrahim_chakour    false    216            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          ibrahim_chakour    false    214            �           2606    24588 $   app_transaction app_transaction_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.app_transaction
    ADD CONSTRAINT app_transaction_pkey PRIMARY KEY (transaction_id);
 N   ALTER TABLE ONLY public.app_transaction DROP CONSTRAINT app_transaction_pkey;
       public            ibrahim_chakour    false    236            �           2606    24581 >   app_utilisateur app_utilisateur_numero_telephone_ce1d4f8b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_utilisateur
    ADD CONSTRAINT app_utilisateur_numero_telephone_ce1d4f8b_uniq UNIQUE (numero_telephone);
 h   ALTER TABLE ONLY public.app_utilisateur DROP CONSTRAINT app_utilisateur_numero_telephone_ce1d4f8b_uniq;
       public            ibrahim_chakour    false    234            �           2606    16791 $   app_utilisateur app_utilisateur_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.app_utilisateur
    ADD CONSTRAINT app_utilisateur_pkey PRIMARY KEY (id_utilisateur);
 N   ALTER TABLE ONLY public.app_utilisateur DROP CONSTRAINT app_utilisateur_pkey;
       public            ibrahim_chakour    false    234            �           2606    16773    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            ibrahim_chakour    false    221            �           2606    16704 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            ibrahim_chakour    false    223    223            �           2606    16673 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            ibrahim_chakour    false    223            �           2606    16665    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            ibrahim_chakour    false    221            �           2606    16695 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            ibrahim_chakour    false    219    219            �           2606    16659 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            ibrahim_chakour    false    219            �           2606    16687 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            ibrahim_chakour    false    227            �           2606    16719 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            ibrahim_chakour    false    227    227            �           2606    16679    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            ibrahim_chakour    false    225            �           2606    16693 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            ibrahim_chakour    false    229            �           2606    16733 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            ibrahim_chakour    false    229    229            �           2606    16768     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            ibrahim_chakour    false    225            �           2606    16754 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            ibrahim_chakour    false    231            �           2606    16653 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            ibrahim_chakour    false    217    217            �           2606    16651 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            ibrahim_chakour    false    217            �           2606    16645 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            ibrahim_chakour    false    215            �           2606    16781 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            ibrahim_chakour    false    232            �           1259    24582 .   app_utilisateur_numero_telephone_ce1d4f8b_like    INDEX     �   CREATE INDEX app_utilisateur_numero_telephone_ce1d4f8b_like ON public.app_utilisateur USING btree (numero_telephone varchar_pattern_ops);
 B   DROP INDEX public.app_utilisateur_numero_telephone_ce1d4f8b_like;
       public            ibrahim_chakour    false    234            �           1259    16774    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            ibrahim_chakour    false    221            �           1259    16715 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            ibrahim_chakour    false    223            �           1259    16716 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            ibrahim_chakour    false    223            �           1259    16701 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            ibrahim_chakour    false    219            �           1259    16731 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            ibrahim_chakour    false    227            �           1259    16730 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            ibrahim_chakour    false    227            �           1259    16745 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            ibrahim_chakour    false    229            �           1259    16744 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            ibrahim_chakour    false    229            �           1259    16769     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            ibrahim_chakour    false    225            �           1259    16765 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            ibrahim_chakour    false    231            �           1259    16766 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            ibrahim_chakour    false    231            �           1259    16783 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            ibrahim_chakour    false    232            �           1259    16782 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            ibrahim_chakour    false    232            �           2606    16710 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          ibrahim_chakour    false    223    3238    219            �           2606    16705 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          ibrahim_chakour    false    3243    221    223            �           2606    16696 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          ibrahim_chakour    false    3233    219    217            �           2606    16725 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          ibrahim_chakour    false    227    221    3243            �           2606    16720 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          ibrahim_chakour    false    225    3251    227            �           2606    16739 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          ibrahim_chakour    false    229    219    3238            �           2606    16734 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          ibrahim_chakour    false    229    225    3251            �           2606    16755 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          ibrahim_chakour    false    231    3233    217            �           2606    16760 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          ibrahim_chakour    false    3251    231    225               �   x����JAE��_1{馪��_A�! �s3�H�8�d2��c6��]Ԫhν�v�A������j�Z��#�6 ��M�����������s���8�8��ۧ]���ܴ�q�i����e�Cd�Ѣ��J�d�{�R���*�|@��	�'��W�JjМld)T��µ��2!�<�ܼ6˂������������HB4P|�-��@��Q�Wy�nM�?���M"�x��I/�Vk�	��(      }     x����J�@���)\d'	so�]h�$�ƶ� Ӗ11Wr�Ƨw����m����s�C�M":��D� ���(��)WaV���G!���V��pLAt�Hu��7�N��6�q��%}��y��>����櫎\��錯��j����u�So�B��=�e�iř�YC���T�w�Q �,Ei�R�Nm�-��)�����C��4"Ic~������4Eb�V�_H11�e@t��Ð�g&��\����X�t�U_U�+<D���x
'L-�~�әC�iC�mzQ���4���ϴ      p      x������ � �      r      x������ � �      n   U  x�]�]n� ��g8�'h����ؤ!J��E��fo_FfƷ~	��Q��g��i2���VF�cK�龭�Pq�`�w��-�%����	vn�R��֟q��٫�hC�<N@�c��}�b �-%
	��=S����
���<x�u�]Ho�� �)�P��E*�7��Οڔ�~<��#�����j����xؤ��ه�ղ�^��� ��mZr�$��w�<�q�?(�!WX��7_��`\�\�;�LLL;1�K��:!�J�&}�4n6�}UM|H�ѹvi�g�\̻��#s�F^����ԇ���v��_-�]�/@Z,\|�c���ː�9}}h��	��1      t     x���]K�`����O����y�Q�����6_B'N�+�0��ۨ���/n��C���8�o]b�e�'��	�����6��bY2�^�w���8�w��'U�1�IZ>�ߎ��٤7 CLfP�a1A\�Pg\�XhM!=اa^�Z�	 $YԆiV~���2�
e_����w��j�Ғ�߈�h����ޡ�Ӿ7�91�q��#w��������MeE��{1vC��΍om�4�Q�1*���?ೣ�+�N��H�� Qm�      v      x������ � �      x      x������ � �      z   �   x�uбn� ���b�@p�Y;u��h�b�6��(��H�Z��t���:�����P��Y.-�L	m�x�	��U\�G���%/�^NW����z���A��QV&[c����e�2�rkhS�ZY���L��N�� j���@gx�*
�'7�>�J;��H�ԗԑ�@W�V�v�~��}�_]O丌��fC�My
����0�w�$aW      l   l   x�M�;
�Pk�a��0i�#��'$�·OlH�3��_�Mm�Xp"��&��5S�Ἓ1Zw\v�)�+�������lu�����K'M.��f*ؒ�Z?���:2@      j     x���ݎ� �������(@�gلezH�g{��~�n�d�oo�A�g�CQ�h�!�!�ˤ}���&e@@>P�����hI8��B(��^('PU�������D0J�"���O�Nw�N��Y���Q����`SD�dcD�Tm0� ?�:��k4m�9������^��T������T6h''�z��RҢ����V���s�(rC�>.�Wƾ�PU�Zd
�S�%�3N�A<�Qf�=�*��Mt6������L�b�f�r�)w��v�8H��?�[)geM���|:}���d��W�G��H��鼊9���D3I���?QlEatC��8O�a"��q�)X�SLH�ɍߗ]C>�'#r3c�{�4�MS���^�~�rRT _K��;M�x�xCXI�����|��`�����b��A(�����+M��Dàd5�$�C�+�����f��� �\r�+��*Ia���O�eOI��	�7�K���W{d����f���js���WY��]��`c��0����p8��2��      {   �  x���K��@  �u{��O0U�%;>
T��R�Lb�	DN?��\`�^U��T�r���E~�|"x�P�͚<��c��������*Ӓ{n���{�7���O�:�ޟ����ե�pU�!�ezG����4��0�� y!�L1��8{�6�cr��Ÿy���b)mƔ��v� (m*6�Ż5�v��~N�Y���.:
{K�d�u�T���F'�4	
�NgC{]<n'_�t�ᣨhˉ1�Os�  P��HA���5��� X�A�!!Ϣ)�.E�o�9E���x�c��Y!�u�R9�v��)���v��߂%X�7X�!S]���s�n �
�=}��[uoV�s���
�}h��e��?N�l��P�=�AA�[n�8��Gnҫz�%��T�w�r�W}���!�	�
��F\�%$��Y�V������     