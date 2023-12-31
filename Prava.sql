PGDMP                  	    {            Prava    16.0    16.0 b    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    16397    Prava    DATABASE     {   CREATE DATABASE "Prava" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Prava";
                postgres    false            4           0    0    DATABASE "Prava"    COMMENT     X   COMMENT ON DATABASE "Prava" IS 'Получение водительских прав.';
                   postgres    false    4915                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16417    car    TABLE     �   CREATE TABLE public.car (
    car_id integer NOT NULL,
    brand character varying(255) NOT NULL,
    model character varying(255) NOT NULL,
    year integer NOT NULL,
    license_plate character varying(10) NOT NULL,
    driver_id integer
);
    DROP TABLE public.car;
       public         heap    postgres    false    4            �            1259    16416    car_car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.car_car_id_seq;
       public          postgres    false    218    4            6           0    0    car_car_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.car_car_id_seq OWNED BY public.car.car_id;
          public          postgres    false    217            �            1259    16408    driver    TABLE     J  CREATE TABLE public.driver (
    driver_id integer NOT NULL,
    name character varying(255) NOT NULL,
    date_of_birth date NOT NULL,
    address text,
    license_number character varying(20) NOT NULL,
    issue_date date NOT NULL,
    license_category character varying(10),
    gibdd_id integer,
    instructor_id integer
);
    DROP TABLE public.driver;
       public         heap    postgres    false    4            �            1259    16407    driver_driver_id_seq    SEQUENCE     �   CREATE SEQUENCE public.driver_driver_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.driver_driver_id_seq;
       public          postgres    false    216    4            7           0    0    driver_driver_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.driver_driver_id_seq OWNED BY public.driver.driver_id;
          public          postgres    false    215            �            1259    16559    driverdrivingschoollink    TABLE     �   CREATE TABLE public.driverdrivingschoollink (
    driver_hub_id integer,
    school_hub_id integer,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 +   DROP TABLE public.driverdrivingschoollink;
       public         heap    postgres    false    4            �            1259    16486 	   driverhub    TABLE     �   CREATE TABLE public.driverhub (
    driver_hub_id integer NOT NULL,
    driver_id integer,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.driverhub;
       public         heap    postgres    false    4            �            1259    16485    driverhub_driver_hub_id_seq    SEQUENCE     �   CREATE SEQUENCE public.driverhub_driver_hub_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.driverhub_driver_hub_id_seq;
       public          postgres    false    228    4            8           0    0    driverhub_driver_hub_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.driverhub_driver_hub_id_seq OWNED BY public.driverhub.driver_hub_id;
          public          postgres    false    227            �            1259    16544    driverinstructorlink    TABLE     �   CREATE TABLE public.driverinstructorlink (
    driver_hub_id integer,
    instructor_hub_id integer,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 (   DROP TABLE public.driverinstructorlink;
       public         heap    postgres    false    4            �            1259    16502    driversatellite    TABLE     h  CREATE TABLE public.driversatellite (
    driver_satellite_id integer NOT NULL,
    driver_hub_id integer,
    name character varying(255),
    date_of_birth date,
    address text,
    license_number character varying(20),
    issue_date date,
    license_category character varying(10),
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.driversatellite;
       public         heap    postgres    false    4            �            1259    16501 '   driversatellite_driver_satellite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.driversatellite_driver_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.driversatellite_driver_satellite_id_seq;
       public          postgres    false    4    232            9           0    0 '   driversatellite_driver_satellite_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.driversatellite_driver_satellite_id_seq OWNED BY public.driversatellite.driver_satellite_id;
          public          postgres    false    231            �            1259    16494    drivingschoolhub    TABLE     �   CREATE TABLE public.drivingschoolhub (
    school_hub_id integer NOT NULL,
    gibdd_id integer,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 $   DROP TABLE public.drivingschoolhub;
       public         heap    postgres    false    4            �            1259    16493 "   drivingschoolhub_school_hub_id_seq    SEQUENCE     �   CREATE SEQUENCE public.drivingschoolhub_school_hub_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.drivingschoolhub_school_hub_id_seq;
       public          postgres    false    230    4            :           0    0 "   drivingschoolhub_school_hub_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.drivingschoolhub_school_hub_id_seq OWNED BY public.drivingschoolhub.school_hub_id;
          public          postgres    false    229            �            1259    16517    drivingschoolsatellite    TABLE     (  CREATE TABLE public.drivingschoolsatellite (
    school_satellite_id integer NOT NULL,
    school_hub_id integer,
    name character varying(255),
    location character varying(255),
    contact_phone character varying(20),
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 *   DROP TABLE public.drivingschoolsatellite;
       public         heap    postgres    false    4            �            1259    16516 .   drivingschoolsatellite_school_satellite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.drivingschoolsatellite_school_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.drivingschoolsatellite_school_satellite_id_seq;
       public          postgres    false    4    234            ;           0    0 .   drivingschoolsatellite_school_satellite_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.drivingschoolsatellite_school_satellite_id_seq OWNED BY public.drivingschoolsatellite.school_satellite_id;
          public          postgres    false    233            �            1259    16431    exam    TABLE     �   CREATE TABLE public.exam (
    exam_id integer NOT NULL,
    exam_type character varying(50) NOT NULL,
    exam_date date NOT NULL,
    exam_result character varying(20),
    driver_id integer
);
    DROP TABLE public.exam;
       public         heap    postgres    false    4            �            1259    16430    exam_exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exam_exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.exam_exam_id_seq;
       public          postgres    false    4    220            <           0    0    exam_exam_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.exam_exam_id_seq OWNED BY public.exam.exam_id;
          public          postgres    false    219            �            1259    16457    gibdd    TABLE     �   CREATE TABLE public.gibdd (
    gibdd_id integer NOT NULL,
    name character varying(255) NOT NULL,
    location character varying(255),
    contact_phone character varying(20)
);
    DROP TABLE public.gibdd;
       public         heap    postgres    false    4            �            1259    16456    gibdd_gibdd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gibdd_gibdd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.gibdd_gibdd_id_seq;
       public          postgres    false    222    4            =           0    0    gibdd_gibdd_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.gibdd_gibdd_id_seq OWNED BY public.gibdd.gibdd_id;
          public          postgres    false    221            �            1259    16466 
   instructor    TABLE     �   CREATE TABLE public.instructor (
    instructor_id integer NOT NULL,
    name character varying(255) NOT NULL,
    contact_phone character varying(20),
    gibdd_id integer
);
    DROP TABLE public.instructor;
       public         heap    postgres    false    4            �            1259    16465    instructor_instructor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.instructor_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.instructor_instructor_id_seq;
       public          postgres    false    4    224            >           0    0    instructor_instructor_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.instructor_instructor_id_seq OWNED BY public.instructor.instructor_id;
          public          postgres    false    223            �            1259    16478    instructorhub    TABLE     �   CREATE TABLE public.instructorhub (
    instructor_hub_id integer NOT NULL,
    instructor_id integer,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.instructorhub;
       public         heap    postgres    false    4            �            1259    16477 #   instructorhub_instructor_hub_id_seq    SEQUENCE     �   CREATE SEQUENCE public.instructorhub_instructor_hub_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.instructorhub_instructor_hub_id_seq;
       public          postgres    false    226    4            ?           0    0 #   instructorhub_instructor_hub_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.instructorhub_instructor_hub_id_seq OWNED BY public.instructorhub.instructor_hub_id;
          public          postgres    false    225            �            1259    16532    instructorsatellite    TABLE       CREATE TABLE public.instructorsatellite (
    instructor_satellite_id integer NOT NULL,
    instructor_hub_id integer,
    name character varying(255),
    contact_phone character varying(20),
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.instructorsatellite;
       public         heap    postgres    false    4            �            1259    16531 /   instructorsatellite_instructor_satellite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.instructorsatellite_instructor_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.instructorsatellite_instructor_satellite_id_seq;
       public          postgres    false    4    236            @           0    0 /   instructorsatellite_instructor_satellite_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.instructorsatellite_instructor_satellite_id_seq OWNED BY public.instructorsatellite.instructor_satellite_id;
          public          postgres    false    235            U           2604    16420 
   car car_id    DEFAULT     h   ALTER TABLE ONLY public.car ALTER COLUMN car_id SET DEFAULT nextval('public.car_car_id_seq'::regclass);
 9   ALTER TABLE public.car ALTER COLUMN car_id DROP DEFAULT;
       public          postgres    false    217    218    218            T           2604    16411    driver driver_id    DEFAULT     t   ALTER TABLE ONLY public.driver ALTER COLUMN driver_id SET DEFAULT nextval('public.driver_driver_id_seq'::regclass);
 ?   ALTER TABLE public.driver ALTER COLUMN driver_id DROP DEFAULT;
       public          postgres    false    216    215    216            [           2604    16489    driverhub driver_hub_id    DEFAULT     �   ALTER TABLE ONLY public.driverhub ALTER COLUMN driver_hub_id SET DEFAULT nextval('public.driverhub_driver_hub_id_seq'::regclass);
 F   ALTER TABLE public.driverhub ALTER COLUMN driver_hub_id DROP DEFAULT;
       public          postgres    false    227    228    228            _           2604    16505 #   driversatellite driver_satellite_id    DEFAULT     �   ALTER TABLE ONLY public.driversatellite ALTER COLUMN driver_satellite_id SET DEFAULT nextval('public.driversatellite_driver_satellite_id_seq'::regclass);
 R   ALTER TABLE public.driversatellite ALTER COLUMN driver_satellite_id DROP DEFAULT;
       public          postgres    false    232    231    232            ]           2604    16497    drivingschoolhub school_hub_id    DEFAULT     �   ALTER TABLE ONLY public.drivingschoolhub ALTER COLUMN school_hub_id SET DEFAULT nextval('public.drivingschoolhub_school_hub_id_seq'::regclass);
 M   ALTER TABLE public.drivingschoolhub ALTER COLUMN school_hub_id DROP DEFAULT;
       public          postgres    false    229    230    230            a           2604    16520 *   drivingschoolsatellite school_satellite_id    DEFAULT     �   ALTER TABLE ONLY public.drivingschoolsatellite ALTER COLUMN school_satellite_id SET DEFAULT nextval('public.drivingschoolsatellite_school_satellite_id_seq'::regclass);
 Y   ALTER TABLE public.drivingschoolsatellite ALTER COLUMN school_satellite_id DROP DEFAULT;
       public          postgres    false    234    233    234            V           2604    16434    exam exam_id    DEFAULT     l   ALTER TABLE ONLY public.exam ALTER COLUMN exam_id SET DEFAULT nextval('public.exam_exam_id_seq'::regclass);
 ;   ALTER TABLE public.exam ALTER COLUMN exam_id DROP DEFAULT;
       public          postgres    false    219    220    220            W           2604    16460    gibdd gibdd_id    DEFAULT     p   ALTER TABLE ONLY public.gibdd ALTER COLUMN gibdd_id SET DEFAULT nextval('public.gibdd_gibdd_id_seq'::regclass);
 =   ALTER TABLE public.gibdd ALTER COLUMN gibdd_id DROP DEFAULT;
       public          postgres    false    221    222    222            X           2604    16469    instructor instructor_id    DEFAULT     �   ALTER TABLE ONLY public.instructor ALTER COLUMN instructor_id SET DEFAULT nextval('public.instructor_instructor_id_seq'::regclass);
 G   ALTER TABLE public.instructor ALTER COLUMN instructor_id DROP DEFAULT;
       public          postgres    false    223    224    224            Y           2604    16481    instructorhub instructor_hub_id    DEFAULT     �   ALTER TABLE ONLY public.instructorhub ALTER COLUMN instructor_hub_id SET DEFAULT nextval('public.instructorhub_instructor_hub_id_seq'::regclass);
 N   ALTER TABLE public.instructorhub ALTER COLUMN instructor_hub_id DROP DEFAULT;
       public          postgres    false    226    225    226            c           2604    16535 +   instructorsatellite instructor_satellite_id    DEFAULT     �   ALTER TABLE ONLY public.instructorsatellite ALTER COLUMN instructor_satellite_id SET DEFAULT nextval('public.instructorsatellite_instructor_satellite_id_seq'::regclass);
 Z   ALTER TABLE public.instructorsatellite ALTER COLUMN instructor_satellite_id DROP DEFAULT;
       public          postgres    false    236    235    236                      0    16417    car 
   TABLE DATA           S   COPY public.car (car_id, brand, model, year, license_plate, driver_id) FROM stdin;
    public          postgres    false    218   s|                 0    16408    driver 
   TABLE DATA           �   COPY public.driver (driver_id, name, date_of_birth, address, license_number, issue_date, license_category, gibdd_id, instructor_id) FROM stdin;
    public          postgres    false    216   �|       -          0    16559    driverdrivingschoollink 
   TABLE DATA           Z   COPY public.driverdrivingschoollink (driver_hub_id, school_hub_id, load_date) FROM stdin;
    public          postgres    false    238   �|       #          0    16486 	   driverhub 
   TABLE DATA           H   COPY public.driverhub (driver_hub_id, driver_id, load_date) FROM stdin;
    public          postgres    false    228   �|       ,          0    16544    driverinstructorlink 
   TABLE DATA           [   COPY public.driverinstructorlink (driver_hub_id, instructor_hub_id, load_date) FROM stdin;
    public          postgres    false    237   �|       '          0    16502    driversatellite 
   TABLE DATA           �   COPY public.driversatellite (driver_satellite_id, driver_hub_id, name, date_of_birth, address, license_number, issue_date, license_category, load_date) FROM stdin;
    public          postgres    false    232   }       %          0    16494    drivingschoolhub 
   TABLE DATA           N   COPY public.drivingschoolhub (school_hub_id, gibdd_id, load_date) FROM stdin;
    public          postgres    false    230   !}       )          0    16517    drivingschoolsatellite 
   TABLE DATA           ~   COPY public.drivingschoolsatellite (school_satellite_id, school_hub_id, name, location, contact_phone, load_date) FROM stdin;
    public          postgres    false    234   >}                 0    16431    exam 
   TABLE DATA           U   COPY public.exam (exam_id, exam_type, exam_date, exam_result, driver_id) FROM stdin;
    public          postgres    false    220   [}                 0    16457    gibdd 
   TABLE DATA           H   COPY public.gibdd (gibdd_id, name, location, contact_phone) FROM stdin;
    public          postgres    false    222   x}                 0    16466 
   instructor 
   TABLE DATA           R   COPY public.instructor (instructor_id, name, contact_phone, gibdd_id) FROM stdin;
    public          postgres    false    224   �}       !          0    16478    instructorhub 
   TABLE DATA           T   COPY public.instructorhub (instructor_hub_id, instructor_id, load_date) FROM stdin;
    public          postgres    false    226   �}       +          0    16532    instructorsatellite 
   TABLE DATA           y   COPY public.instructorsatellite (instructor_satellite_id, instructor_hub_id, name, contact_phone, load_date) FROM stdin;
    public          postgres    false    236   �}       A           0    0    car_car_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.car_car_id_seq', 1, false);
          public          postgres    false    217            B           0    0    driver_driver_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.driver_driver_id_seq', 1, false);
          public          postgres    false    215            C           0    0    driverhub_driver_hub_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.driverhub_driver_hub_id_seq', 1, false);
          public          postgres    false    227            D           0    0 '   driversatellite_driver_satellite_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.driversatellite_driver_satellite_id_seq', 1, false);
          public          postgres    false    231            E           0    0 "   drivingschoolhub_school_hub_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.drivingschoolhub_school_hub_id_seq', 1, false);
          public          postgres    false    229            F           0    0 .   drivingschoolsatellite_school_satellite_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.drivingschoolsatellite_school_satellite_id_seq', 1, false);
          public          postgres    false    233            G           0    0    exam_exam_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.exam_exam_id_seq', 1, false);
          public          postgres    false    219            H           0    0    gibdd_gibdd_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.gibdd_gibdd_id_seq', 1, false);
          public          postgres    false    221            I           0    0    instructor_instructor_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.instructor_instructor_id_seq', 1, false);
          public          postgres    false    223            J           0    0 #   instructorhub_instructor_hub_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.instructorhub_instructor_hub_id_seq', 1, false);
          public          postgres    false    225            K           0    0 /   instructorsatellite_instructor_satellite_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.instructorsatellite_instructor_satellite_id_seq', 1, false);
          public          postgres    false    235            j           2606    16424    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    218            h           2606    16415    driver driver_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_pkey PRIMARY KEY (driver_id);
 <   ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_pkey;
       public            postgres    false    216            t           2606    16492    driverhub driverhub_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.driverhub
    ADD CONSTRAINT driverhub_pkey PRIMARY KEY (driver_hub_id);
 B   ALTER TABLE ONLY public.driverhub DROP CONSTRAINT driverhub_pkey;
       public            postgres    false    228            x           2606    16510 $   driversatellite driversatellite_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.driversatellite
    ADD CONSTRAINT driversatellite_pkey PRIMARY KEY (driver_satellite_id);
 N   ALTER TABLE ONLY public.driversatellite DROP CONSTRAINT driversatellite_pkey;
       public            postgres    false    232            v           2606    16500 &   drivingschoolhub drivingschoolhub_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.drivingschoolhub
    ADD CONSTRAINT drivingschoolhub_pkey PRIMARY KEY (school_hub_id);
 P   ALTER TABLE ONLY public.drivingschoolhub DROP CONSTRAINT drivingschoolhub_pkey;
       public            postgres    false    230            z           2606    16525 2   drivingschoolsatellite drivingschoolsatellite_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.drivingschoolsatellite
    ADD CONSTRAINT drivingschoolsatellite_pkey PRIMARY KEY (school_satellite_id);
 \   ALTER TABLE ONLY public.drivingschoolsatellite DROP CONSTRAINT drivingschoolsatellite_pkey;
       public            postgres    false    234            l           2606    16436    exam exam_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pkey PRIMARY KEY (exam_id);
 8   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_pkey;
       public            postgres    false    220            n           2606    16464    gibdd gibdd_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.gibdd
    ADD CONSTRAINT gibdd_pkey PRIMARY KEY (gibdd_id);
 :   ALTER TABLE ONLY public.gibdd DROP CONSTRAINT gibdd_pkey;
       public            postgres    false    222            p           2606    16471    instructor instructor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (instructor_id);
 D   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_pkey;
       public            postgres    false    224            r           2606    16484     instructorhub instructorhub_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.instructorhub
    ADD CONSTRAINT instructorhub_pkey PRIMARY KEY (instructor_hub_id);
 J   ALTER TABLE ONLY public.instructorhub DROP CONSTRAINT instructorhub_pkey;
       public            postgres    false    226            |           2606    16538 ,   instructorsatellite instructorsatellite_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.instructorsatellite
    ADD CONSTRAINT instructorsatellite_pkey PRIMARY KEY (instructor_satellite_id);
 V   ALTER TABLE ONLY public.instructorsatellite DROP CONSTRAINT instructorsatellite_pkey;
       public            postgres    false    236            }           2606    16425    car car_driver_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.driver(driver_id);
 @   ALTER TABLE ONLY public.car DROP CONSTRAINT car_driver_id_fkey;
       public          postgres    false    4712    216    218            �           2606    16563 B   driverdrivingschoollink driverdrivingschoollink_driver_hub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.driverdrivingschoollink
    ADD CONSTRAINT driverdrivingschoollink_driver_hub_id_fkey FOREIGN KEY (driver_hub_id) REFERENCES public.driverhub(driver_hub_id);
 l   ALTER TABLE ONLY public.driverdrivingschoollink DROP CONSTRAINT driverdrivingschoollink_driver_hub_id_fkey;
       public          postgres    false    238    228    4724            �           2606    16568 B   driverdrivingschoollink driverdrivingschoollink_school_hub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.driverdrivingschoollink
    ADD CONSTRAINT driverdrivingschoollink_school_hub_id_fkey FOREIGN KEY (school_hub_id) REFERENCES public.drivingschoolhub(school_hub_id);
 l   ALTER TABLE ONLY public.driverdrivingschoollink DROP CONSTRAINT driverdrivingschoollink_school_hub_id_fkey;
       public          postgres    false    230    238    4726            �           2606    16548 <   driverinstructorlink driverinstructorlink_driver_hub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.driverinstructorlink
    ADD CONSTRAINT driverinstructorlink_driver_hub_id_fkey FOREIGN KEY (driver_hub_id) REFERENCES public.driverhub(driver_hub_id);
 f   ALTER TABLE ONLY public.driverinstructorlink DROP CONSTRAINT driverinstructorlink_driver_hub_id_fkey;
       public          postgres    false    237    228    4724            �           2606    16553 @   driverinstructorlink driverinstructorlink_instructor_hub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.driverinstructorlink
    ADD CONSTRAINT driverinstructorlink_instructor_hub_id_fkey FOREIGN KEY (instructor_hub_id) REFERENCES public.instructorhub(instructor_hub_id);
 j   ALTER TABLE ONLY public.driverinstructorlink DROP CONSTRAINT driverinstructorlink_instructor_hub_id_fkey;
       public          postgres    false    4722    226    237            �           2606    16511 2   driversatellite driversatellite_driver_hub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.driversatellite
    ADD CONSTRAINT driversatellite_driver_hub_id_fkey FOREIGN KEY (driver_hub_id) REFERENCES public.driverhub(driver_hub_id);
 \   ALTER TABLE ONLY public.driversatellite DROP CONSTRAINT driversatellite_driver_hub_id_fkey;
       public          postgres    false    4724    228    232            �           2606    16526 @   drivingschoolsatellite drivingschoolsatellite_school_hub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.drivingschoolsatellite
    ADD CONSTRAINT drivingschoolsatellite_school_hub_id_fkey FOREIGN KEY (school_hub_id) REFERENCES public.drivingschoolhub(school_hub_id);
 j   ALTER TABLE ONLY public.drivingschoolsatellite DROP CONSTRAINT drivingschoolsatellite_school_hub_id_fkey;
       public          postgres    false    234    230    4726            ~           2606    16437    exam exam_driver_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.driver(driver_id);
 B   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_driver_id_fkey;
       public          postgres    false    216    4712    220                       2606    16472 #   instructor instructor_gibdd_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_gibdd_id_fkey FOREIGN KEY (gibdd_id) REFERENCES public.gibdd(gibdd_id);
 M   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_gibdd_id_fkey;
       public          postgres    false    222    4718    224            �           2606    16539 >   instructorsatellite instructorsatellite_instructor_hub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructorsatellite
    ADD CONSTRAINT instructorsatellite_instructor_hub_id_fkey FOREIGN KEY (instructor_hub_id) REFERENCES public.instructorhub(instructor_hub_id);
 h   ALTER TABLE ONLY public.instructorsatellite DROP CONSTRAINT instructorsatellite_instructor_hub_id_fkey;
       public          postgres    false    4722    226    236                  x������ � �            x������ � �      -      x������ � �      #      x������ � �      ,      x������ � �      '      x������ � �      %      x������ � �      )      x������ � �            x������ � �            x������ � �            x������ � �      !      x������ � �      +      x������ � �     