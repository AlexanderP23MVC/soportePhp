PGDMP  1                    |            Soporte    16.1    16.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19595    Soporte    DATABASE     �   CREATE DATABASE "Soporte" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
    DROP DATABASE "Soporte";
                postgres    false            �            1259    19613    aplicaciones    TABLE     �   CREATE TABLE public.aplicaciones (
    id_aplicaciones integer NOT NULL,
    aplicacion character varying,
    id_categoria integer
);
     DROP TABLE public.aplicaciones;
       public         heap    postgres    false            �            1259    19612     aplicaciones_id_aplicaciones_seq    SEQUENCE     �   CREATE SEQUENCE public.aplicaciones_id_aplicaciones_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.aplicaciones_id_aplicaciones_seq;
       public          postgres    false    220            �           0    0     aplicaciones_id_aplicaciones_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.aplicaciones_id_aplicaciones_seq OWNED BY public.aplicaciones.id_aplicaciones;
          public          postgres    false    219            �            1259    19706    archivos    TABLE     �   CREATE TABLE public.archivos (
    id_archivos integer NOT NULL,
    nombre_archivos character varying,
    ruta_archivos character varying,
    descripcion character varying,
    id_fecha integer,
    id_empleado integer
);
    DROP TABLE public.archivos;
       public         heap    postgres    false            �            1259    19705    archivos_id_archivos_seq    SEQUENCE     �   CREATE SEQUENCE public.archivos_id_archivos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.archivos_id_archivos_seq;
       public          postgres    false    242            �           0    0    archivos_id_archivos_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.archivos_id_archivos_seq OWNED BY public.archivos.id_archivos;
          public          postgres    false    241            �            1259    19622 	   categoria    TABLE     f   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    categoria character varying
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    19621    categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_id_categoria_seq;
       public          postgres    false    222            �           0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;
          public          postgres    false    221            �            1259    19656 
   comentario    TABLE     �   CREATE TABLE public.comentario (
    id_comentario integer NOT NULL,
    comentario character varying,
    id_indicaciones integer,
    id_usuario integer
);
    DROP TABLE public.comentario;
       public         heap    postgres    false            �            1259    19655    comentario_id_comentario_seq    SEQUENCE     �   CREATE SEQUENCE public.comentario_id_comentario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.comentario_id_comentario_seq;
       public          postgres    false    230            �           0    0    comentario_id_comentario_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.comentario_id_comentario_seq OWNED BY public.comentario.id_comentario;
          public          postgres    false    229            �            1259    19631    configuraciones    TABLE     x   CREATE TABLE public.configuraciones (
    id_configuraciones integer NOT NULL,
    configuraciones character varying
);
 #   DROP TABLE public.configuraciones;
       public         heap    postgres    false            �            1259    19630 &   configuraciones_id_configuraciones_seq    SEQUENCE     �   CREATE SEQUENCE public.configuraciones_id_configuraciones_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.configuraciones_id_configuraciones_seq;
       public          postgres    false    224            �           0    0 &   configuraciones_id_configuraciones_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.configuraciones_id_configuraciones_seq OWNED BY public.configuraciones.id_configuraciones;
          public          postgres    false    223            �            1259    19690 
   contadores    TABLE     �   CREATE TABLE public.contadores (
    id_contadores integer NOT NULL,
    cantidad_impresion integer,
    id_equipo integer,
    id_fecha integer,
    id_usuario integer
);
    DROP TABLE public.contadores;
       public         heap    postgres    false            �            1259    19689    contadores_id_contadores_seq    SEQUENCE     �   CREATE SEQUENCE public.contadores_id_contadores_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.contadores_id_contadores_seq;
       public          postgres    false    238            �           0    0    contadores_id_contadores_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.contadores_id_contadores_seq OWNED BY public.contadores.id_contadores;
          public          postgres    false    237            �            1259    19665    crud    TABLE     W   CREATE TABLE public.crud (
    id_crud integer NOT NULL,
    crud character varying
);
    DROP TABLE public.crud;
       public         heap    postgres    false            �            1259    19664    crud_id_crud_seq    SEQUENCE     �   CREATE SEQUENCE public.crud_id_crud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.crud_id_crud_seq;
       public          postgres    false    232            �           0    0    crud_id_crud_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.crud_id_crud_seq OWNED BY public.crud.id_crud;
          public          postgres    false    231            �            1259    19731    cursos    TABLE     �   CREATE TABLE public.cursos (
    id_curso integer NOT NULL,
    curso character varying,
    id_tipo_curso integer,
    id_usuario integer,
    id_modulo integer
);
    DROP TABLE public.cursos;
       public         heap    postgres    false            �            1259    19730    cursos_id_curso_seq    SEQUENCE     �   CREATE SEQUENCE public.cursos_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cursos_id_curso_seq;
       public          postgres    false    248            �           0    0    cursos_id_curso_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cursos_id_curso_seq OWNED BY public.cursos.id_curso;
          public          postgres    false    247            �            1259    19697 	   empleados    TABLE     z   CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nombre character varying,
    id_usuario integer
);
    DROP TABLE public.empleados;
       public         heap    postgres    false            �            1259    19696    empleados_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.empleados_id_empleado_seq;
       public          postgres    false    240            �           0    0    empleados_id_empleado_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;
          public          postgres    false    239            �            1259    19681    equipo    TABLE     �   CREATE TABLE public.equipo (
    id_equipo integer NOT NULL,
    nombre character varying,
    serial character varying,
    "direccionIp" character varying,
    operativo boolean,
    descripcion character varying
);
    DROP TABLE public.equipo;
       public         heap    postgres    false            �            1259    19680    equipo_id_equipo_seq    SEQUENCE     �   CREATE SEQUENCE public.equipo_id_equipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.equipo_id_equipo_seq;
       public          postgres    false    236            �           0    0    equipo_id_equipo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.equipo_id_equipo_seq OWNED BY public.equipo.id_equipo;
          public          postgres    false    235            �            1259    19715    fechas    TABLE     O   CREATE TABLE public.fechas (
    id_fechas integer NOT NULL,
    fecha date
);
    DROP TABLE public.fechas;
       public         heap    postgres    false            �            1259    19714    fechas_id_fechas_seq    SEQUENCE     �   CREATE SEQUENCE public.fechas_id_fechas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.fechas_id_fechas_seq;
       public          postgres    false    244            �           0    0    fechas_id_fechas_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.fechas_id_fechas_seq OWNED BY public.fechas.id_fechas;
          public          postgres    false    243            �            1259    19758    finalizacion    TABLE     �   CREATE TABLE public.finalizacion (
    id_finalizacion integer NOT NULL,
    id_curso integer,
    id_modulo integer,
    id_usuario integer,
    finalizacion character varying
);
     DROP TABLE public.finalizacion;
       public         heap    postgres    false            �            1259    19757     finalizacion_id_finalizacion_seq    SEQUENCE     �   CREATE SEQUENCE public.finalizacion_id_finalizacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.finalizacion_id_finalizacion_seq;
       public          postgres    false    254            �           0    0     finalizacion_id_finalizacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.finalizacion_id_finalizacion_seq OWNED BY public.finalizacion.id_finalizacion;
          public          postgres    false    253            �            1259    19647    indicaciones    TABLE     	  CREATE TABLE public.indicaciones (
    id_indicaciones integer NOT NULL,
    id_usuario integer,
    id_aplicaciones integer,
    id_pasos integer,
    id_configuracion integer,
    indicaciones character varying,
    img character varying,
    id_fecha integer
);
     DROP TABLE public.indicaciones;
       public         heap    postgres    false            �            1259    19646     indicaciones_id_indicaciones_seq    SEQUENCE     �   CREATE SEQUENCE public.indicaciones_id_indicaciones_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.indicaciones_id_indicaciones_seq;
       public          postgres    false    228            �           0    0     indicaciones_id_indicaciones_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.indicaciones_id_indicaciones_seq OWNED BY public.indicaciones.id_indicaciones;
          public          postgres    false    227            �            1259    19749    modulo    TABLE     �   CREATE TABLE public.modulo (
    id_modulo integer NOT NULL,
    id_pasos integer,
    descripcion character varying,
    img character varying,
    id_tipo_curso integer
);
    DROP TABLE public.modulo;
       public         heap    postgres    false            �            1259    19748    modulo_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.modulo_id_modulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.modulo_id_modulo_seq;
       public          postgres    false    252            �           0    0    modulo_id_modulo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.modulo_id_modulo_seq OWNED BY public.modulo.id_modulo;
          public          postgres    false    251            �            1259    19674    notificacion    TABLE     �   CREATE TABLE public.notificacion (
    id_notificacion integer NOT NULL,
    id_indicaciones integer,
    id_crud integer,
    id_usuario integer
);
     DROP TABLE public.notificacion;
       public         heap    postgres    false            �            1259    19673     notificacion_id_notificacion_seq    SEQUENCE     �   CREATE SEQUENCE public.notificacion_id_notificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.notificacion_id_notificacion_seq;
       public          postgres    false    234            �           0    0     notificacion_id_notificacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.notificacion_id_notificacion_seq OWNED BY public.notificacion.id_notificacion;
          public          postgres    false    233            �            1259    19640    pasos    TABLE     O   CREATE TABLE public.pasos (
    id_paso integer NOT NULL,
    pasos integer
);
    DROP TABLE public.pasos;
       public         heap    postgres    false            �            1259    19639    pasos_id_paso_seq    SEQUENCE     �   CREATE SEQUENCE public.pasos_id_paso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pasos_id_paso_seq;
       public          postgres    false    226            �           0    0    pasos_id_paso_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pasos_id_paso_seq OWNED BY public.pasos.id_paso;
          public          postgres    false    225            �            1259    19722 	   plantilla    TABLE     ~   CREATE TABLE public.plantilla (
    id_plantilla integer NOT NULL,
    plantilla character varying,
    id_usuario integer
);
    DROP TABLE public.plantilla;
       public         heap    postgres    false            �            1259    19721    plantilla_id_plantilla_seq    SEQUENCE     �   CREATE SEQUENCE public.plantilla_id_plantilla_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.plantilla_id_plantilla_seq;
       public          postgres    false    246            �           0    0    plantilla_id_plantilla_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.plantilla_id_plantilla_seq OWNED BY public.plantilla.id_plantilla;
          public          postgres    false    245            �            1259    19606    sesion    TABLE     �   CREATE TABLE public.sesion (
    id_sesion integer NOT NULL,
    id_usuario integer,
    sesion boolean,
    id_fecha integer
);
    DROP TABLE public.sesion;
       public         heap    postgres    false            �            1259    19605    sesion_id_sesion_seq    SEQUENCE     �   CREATE SEQUENCE public.sesion_id_sesion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sesion_id_sesion_seq;
       public          postgres    false    218            �           0    0    sesion_id_sesion_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sesion_id_sesion_seq OWNED BY public.sesion.id_sesion;
          public          postgres    false    217            �            1259    19740 
   tipo_curso    TABLE     i   CREATE TABLE public.tipo_curso (
    id_tipo_curso integer NOT NULL,
    tipo_curso character varying
);
    DROP TABLE public.tipo_curso;
       public         heap    postgres    false            �            1259    19739    tipo_curso_id_tipo_curso_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_curso_id_tipo_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tipo_curso_id_tipo_curso_seq;
       public          postgres    false    250            �           0    0    tipo_curso_id_tipo_curso_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tipo_curso_id_tipo_curso_seq OWNED BY public.tipo_curso.id_tipo_curso;
          public          postgres    false    249            �            1259    19597    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usurio integer NOT NULL,
    "user" character varying,
    password character varying,
    tokken character varying
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    19596    usuario_id_usurio_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usurio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_id_usurio_seq;
       public          postgres    false    216            �           0    0    usuario_id_usurio_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_id_usurio_seq OWNED BY public.usuario.id_usurio;
          public          postgres    false    215            {           2604    19616    aplicaciones id_aplicaciones    DEFAULT     �   ALTER TABLE ONLY public.aplicaciones ALTER COLUMN id_aplicaciones SET DEFAULT nextval('public.aplicaciones_id_aplicaciones_seq'::regclass);
 K   ALTER TABLE public.aplicaciones ALTER COLUMN id_aplicaciones DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    19709    archivos id_archivos    DEFAULT     |   ALTER TABLE ONLY public.archivos ALTER COLUMN id_archivos SET DEFAULT nextval('public.archivos_id_archivos_seq'::regclass);
 C   ALTER TABLE public.archivos ALTER COLUMN id_archivos DROP DEFAULT;
       public          postgres    false    241    242    242            |           2604    19625    categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    19659    comentario id_comentario    DEFAULT     �   ALTER TABLE ONLY public.comentario ALTER COLUMN id_comentario SET DEFAULT nextval('public.comentario_id_comentario_seq'::regclass);
 G   ALTER TABLE public.comentario ALTER COLUMN id_comentario DROP DEFAULT;
       public          postgres    false    230    229    230            }           2604    19634 "   configuraciones id_configuraciones    DEFAULT     �   ALTER TABLE ONLY public.configuraciones ALTER COLUMN id_configuraciones SET DEFAULT nextval('public.configuraciones_id_configuraciones_seq'::regclass);
 Q   ALTER TABLE public.configuraciones ALTER COLUMN id_configuraciones DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    19693    contadores id_contadores    DEFAULT     �   ALTER TABLE ONLY public.contadores ALTER COLUMN id_contadores SET DEFAULT nextval('public.contadores_id_contadores_seq'::regclass);
 G   ALTER TABLE public.contadores ALTER COLUMN id_contadores DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    19668    crud id_crud    DEFAULT     l   ALTER TABLE ONLY public.crud ALTER COLUMN id_crud SET DEFAULT nextval('public.crud_id_crud_seq'::regclass);
 ;   ALTER TABLE public.crud ALTER COLUMN id_crud DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    19734    cursos id_curso    DEFAULT     r   ALTER TABLE ONLY public.cursos ALTER COLUMN id_curso SET DEFAULT nextval('public.cursos_id_curso_seq'::regclass);
 >   ALTER TABLE public.cursos ALTER COLUMN id_curso DROP DEFAULT;
       public          postgres    false    248    247    248            �           2604    19700    empleados id_empleado    DEFAULT     ~   ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);
 D   ALTER TABLE public.empleados ALTER COLUMN id_empleado DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    19684    equipo id_equipo    DEFAULT     t   ALTER TABLE ONLY public.equipo ALTER COLUMN id_equipo SET DEFAULT nextval('public.equipo_id_equipo_seq'::regclass);
 ?   ALTER TABLE public.equipo ALTER COLUMN id_equipo DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    19718    fechas id_fechas    DEFAULT     t   ALTER TABLE ONLY public.fechas ALTER COLUMN id_fechas SET DEFAULT nextval('public.fechas_id_fechas_seq'::regclass);
 ?   ALTER TABLE public.fechas ALTER COLUMN id_fechas DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    19761    finalizacion id_finalizacion    DEFAULT     �   ALTER TABLE ONLY public.finalizacion ALTER COLUMN id_finalizacion SET DEFAULT nextval('public.finalizacion_id_finalizacion_seq'::regclass);
 K   ALTER TABLE public.finalizacion ALTER COLUMN id_finalizacion DROP DEFAULT;
       public          postgres    false    253    254    254                       2604    19650    indicaciones id_indicaciones    DEFAULT     �   ALTER TABLE ONLY public.indicaciones ALTER COLUMN id_indicaciones SET DEFAULT nextval('public.indicaciones_id_indicaciones_seq'::regclass);
 K   ALTER TABLE public.indicaciones ALTER COLUMN id_indicaciones DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    19752    modulo id_modulo    DEFAULT     t   ALTER TABLE ONLY public.modulo ALTER COLUMN id_modulo SET DEFAULT nextval('public.modulo_id_modulo_seq'::regclass);
 ?   ALTER TABLE public.modulo ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    251    252    252            �           2604    19677    notificacion id_notificacion    DEFAULT     �   ALTER TABLE ONLY public.notificacion ALTER COLUMN id_notificacion SET DEFAULT nextval('public.notificacion_id_notificacion_seq'::regclass);
 K   ALTER TABLE public.notificacion ALTER COLUMN id_notificacion DROP DEFAULT;
       public          postgres    false    234    233    234            ~           2604    19643    pasos id_paso    DEFAULT     n   ALTER TABLE ONLY public.pasos ALTER COLUMN id_paso SET DEFAULT nextval('public.pasos_id_paso_seq'::regclass);
 <   ALTER TABLE public.pasos ALTER COLUMN id_paso DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    19725    plantilla id_plantilla    DEFAULT     �   ALTER TABLE ONLY public.plantilla ALTER COLUMN id_plantilla SET DEFAULT nextval('public.plantilla_id_plantilla_seq'::regclass);
 E   ALTER TABLE public.plantilla ALTER COLUMN id_plantilla DROP DEFAULT;
       public          postgres    false    246    245    246            z           2604    19609    sesion id_sesion    DEFAULT     t   ALTER TABLE ONLY public.sesion ALTER COLUMN id_sesion SET DEFAULT nextval('public.sesion_id_sesion_seq'::regclass);
 ?   ALTER TABLE public.sesion ALTER COLUMN id_sesion DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    19743    tipo_curso id_tipo_curso    DEFAULT     �   ALTER TABLE ONLY public.tipo_curso ALTER COLUMN id_tipo_curso SET DEFAULT nextval('public.tipo_curso_id_tipo_curso_seq'::regclass);
 G   ALTER TABLE public.tipo_curso ALTER COLUMN id_tipo_curso DROP DEFAULT;
       public          postgres    false    250    249    250            y           2604    19600    usuario id_usurio    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usurio SET DEFAULT nextval('public.usuario_id_usurio_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN id_usurio DROP DEFAULT;
       public          postgres    false    215    216    216            d          0    19613    aplicaciones 
   TABLE DATA           Q   COPY public.aplicaciones (id_aplicaciones, aplicacion, id_categoria) FROM stdin;
    public          postgres    false    220   ��       z          0    19706    archivos 
   TABLE DATA           s   COPY public.archivos (id_archivos, nombre_archivos, ruta_archivos, descripcion, id_fecha, id_empleado) FROM stdin;
    public          postgres    false    242   ��       f          0    19622 	   categoria 
   TABLE DATA           <   COPY public.categoria (id_categoria, categoria) FROM stdin;
    public          postgres    false    222   ��       n          0    19656 
   comentario 
   TABLE DATA           \   COPY public.comentario (id_comentario, comentario, id_indicaciones, id_usuario) FROM stdin;
    public          postgres    false    230   �       h          0    19631    configuraciones 
   TABLE DATA           N   COPY public.configuraciones (id_configuraciones, configuraciones) FROM stdin;
    public          postgres    false    224   /�       v          0    19690 
   contadores 
   TABLE DATA           h   COPY public.contadores (id_contadores, cantidad_impresion, id_equipo, id_fecha, id_usuario) FROM stdin;
    public          postgres    false    238   L�       p          0    19665    crud 
   TABLE DATA           -   COPY public.crud (id_crud, crud) FROM stdin;
    public          postgres    false    232   i�       �          0    19731    cursos 
   TABLE DATA           W   COPY public.cursos (id_curso, curso, id_tipo_curso, id_usuario, id_modulo) FROM stdin;
    public          postgres    false    248   ��       x          0    19697 	   empleados 
   TABLE DATA           D   COPY public.empleados (id_empleado, nombre, id_usuario) FROM stdin;
    public          postgres    false    240   ��       t          0    19681    equipo 
   TABLE DATA           b   COPY public.equipo (id_equipo, nombre, serial, "direccionIp", operativo, descripcion) FROM stdin;
    public          postgres    false    236   ��       |          0    19715    fechas 
   TABLE DATA           2   COPY public.fechas (id_fechas, fecha) FROM stdin;
    public          postgres    false    244   ��       �          0    19758    finalizacion 
   TABLE DATA           f   COPY public.finalizacion (id_finalizacion, id_curso, id_modulo, id_usuario, finalizacion) FROM stdin;
    public          postgres    false    254   ��       l          0    19647    indicaciones 
   TABLE DATA           �   COPY public.indicaciones (id_indicaciones, id_usuario, id_aplicaciones, id_pasos, id_configuracion, indicaciones, img, id_fecha) FROM stdin;
    public          postgres    false    228   �       �          0    19749    modulo 
   TABLE DATA           V   COPY public.modulo (id_modulo, id_pasos, descripcion, img, id_tipo_curso) FROM stdin;
    public          postgres    false    252   4�       r          0    19674    notificacion 
   TABLE DATA           ]   COPY public.notificacion (id_notificacion, id_indicaciones, id_crud, id_usuario) FROM stdin;
    public          postgres    false    234   Q�       j          0    19640    pasos 
   TABLE DATA           /   COPY public.pasos (id_paso, pasos) FROM stdin;
    public          postgres    false    226   n�       ~          0    19722 	   plantilla 
   TABLE DATA           H   COPY public.plantilla (id_plantilla, plantilla, id_usuario) FROM stdin;
    public          postgres    false    246   ��       b          0    19606    sesion 
   TABLE DATA           I   COPY public.sesion (id_sesion, id_usuario, sesion, id_fecha) FROM stdin;
    public          postgres    false    218   ��       �          0    19740 
   tipo_curso 
   TABLE DATA           ?   COPY public.tipo_curso (id_tipo_curso, tipo_curso) FROM stdin;
    public          postgres    false    250   ��       `          0    19597    usuario 
   TABLE DATA           F   COPY public.usuario (id_usurio, "user", password, tokken) FROM stdin;
    public          postgres    false    216   ��       �           0    0     aplicaciones_id_aplicaciones_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.aplicaciones_id_aplicaciones_seq', 1, false);
          public          postgres    false    219            �           0    0    archivos_id_archivos_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.archivos_id_archivos_seq', 1, false);
          public          postgres    false    241            �           0    0    categoria_id_categoria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 1, false);
          public          postgres    false    221            �           0    0    comentario_id_comentario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.comentario_id_comentario_seq', 1, false);
          public          postgres    false    229            �           0    0 &   configuraciones_id_configuraciones_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.configuraciones_id_configuraciones_seq', 1, false);
          public          postgres    false    223            �           0    0    contadores_id_contadores_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.contadores_id_contadores_seq', 1, false);
          public          postgres    false    237            �           0    0    crud_id_crud_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.crud_id_crud_seq', 1, false);
          public          postgres    false    231            �           0    0    cursos_id_curso_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cursos_id_curso_seq', 1, false);
          public          postgres    false    247            �           0    0    empleados_id_empleado_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 1, false);
          public          postgres    false    239            �           0    0    equipo_id_equipo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.equipo_id_equipo_seq', 1, false);
          public          postgres    false    235            �           0    0    fechas_id_fechas_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fechas_id_fechas_seq', 1, false);
          public          postgres    false    243            �           0    0     finalizacion_id_finalizacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.finalizacion_id_finalizacion_seq', 1, false);
          public          postgres    false    253            �           0    0     indicaciones_id_indicaciones_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.indicaciones_id_indicaciones_seq', 1, false);
          public          postgres    false    227            �           0    0    modulo_id_modulo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.modulo_id_modulo_seq', 1, false);
          public          postgres    false    251            �           0    0     notificacion_id_notificacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.notificacion_id_notificacion_seq', 1, false);
          public          postgres    false    233            �           0    0    pasos_id_paso_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pasos_id_paso_seq', 1, false);
          public          postgres    false    225            �           0    0    plantilla_id_plantilla_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.plantilla_id_plantilla_seq', 1, false);
          public          postgres    false    245            �           0    0    sesion_id_sesion_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sesion_id_sesion_seq', 1, false);
          public          postgres    false    217            �           0    0    tipo_curso_id_tipo_curso_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tipo_curso_id_tipo_curso_seq', 1, false);
          public          postgres    false    249            �           0    0    usuario_id_usurio_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usurio_seq', 1, false);
          public          postgres    false    215            �           2606    19620    aplicaciones aplicaciones_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.aplicaciones
    ADD CONSTRAINT aplicaciones_pkey PRIMARY KEY (id_aplicaciones);
 H   ALTER TABLE ONLY public.aplicaciones DROP CONSTRAINT aplicaciones_pkey;
       public            postgres    false    220            �           2606    19713    archivos archivos_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.archivos
    ADD CONSTRAINT archivos_pkey PRIMARY KEY (id_archivos);
 @   ALTER TABLE ONLY public.archivos DROP CONSTRAINT archivos_pkey;
       public            postgres    false    242            �           2606    19629    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    222            �           2606    19663    comentario comentario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id_comentario);
 D   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_pkey;
       public            postgres    false    230            �           2606    19638 $   configuraciones configuraciones_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.configuraciones
    ADD CONSTRAINT configuraciones_pkey PRIMARY KEY (id_configuraciones);
 N   ALTER TABLE ONLY public.configuraciones DROP CONSTRAINT configuraciones_pkey;
       public            postgres    false    224            �           2606    19695    contadores contadores_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.contadores
    ADD CONSTRAINT contadores_pkey PRIMARY KEY (id_contadores);
 D   ALTER TABLE ONLY public.contadores DROP CONSTRAINT contadores_pkey;
       public            postgres    false    238            �           2606    19672    crud crud_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.crud
    ADD CONSTRAINT crud_pkey PRIMARY KEY (id_crud);
 8   ALTER TABLE ONLY public.crud DROP CONSTRAINT crud_pkey;
       public            postgres    false    232            �           2606    19738    cursos cursos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id_curso);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public            postgres    false    248            �           2606    19704    empleados empleados_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public            postgres    false    240            �           2606    19688    equipo equipo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id_equipo);
 <   ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
       public            postgres    false    236            �           2606    19720    fechas fechas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.fechas
    ADD CONSTRAINT fechas_pkey PRIMARY KEY (id_fechas);
 <   ALTER TABLE ONLY public.fechas DROP CONSTRAINT fechas_pkey;
       public            postgres    false    244            �           2606    19765    finalizacion finalizacion_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.finalizacion
    ADD CONSTRAINT finalizacion_pkey PRIMARY KEY (id_finalizacion);
 H   ALTER TABLE ONLY public.finalizacion DROP CONSTRAINT finalizacion_pkey;
       public            postgres    false    254            �           2606    19654    indicaciones indicaciones_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.indicaciones
    ADD CONSTRAINT indicaciones_pkey PRIMARY KEY (id_indicaciones);
 H   ALTER TABLE ONLY public.indicaciones DROP CONSTRAINT indicaciones_pkey;
       public            postgres    false    228            �           2606    19756    modulo modulo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_pkey PRIMARY KEY (id_modulo);
 <   ALTER TABLE ONLY public.modulo DROP CONSTRAINT modulo_pkey;
       public            postgres    false    252            �           2606    19679    notificacion notificacion_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.notificacion
    ADD CONSTRAINT notificacion_pkey PRIMARY KEY (id_notificacion);
 H   ALTER TABLE ONLY public.notificacion DROP CONSTRAINT notificacion_pkey;
       public            postgres    false    234            �           2606    19645    pasos pasos_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.pasos
    ADD CONSTRAINT pasos_pkey PRIMARY KEY (id_paso);
 :   ALTER TABLE ONLY public.pasos DROP CONSTRAINT pasos_pkey;
       public            postgres    false    226            �           2606    19729    plantilla plantilla_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.plantilla
    ADD CONSTRAINT plantilla_pkey PRIMARY KEY (id_plantilla);
 B   ALTER TABLE ONLY public.plantilla DROP CONSTRAINT plantilla_pkey;
       public            postgres    false    246            �           2606    19611    sesion sesion_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.sesion
    ADD CONSTRAINT sesion_pkey PRIMARY KEY (id_sesion);
 <   ALTER TABLE ONLY public.sesion DROP CONSTRAINT sesion_pkey;
       public            postgres    false    218            �           2606    19747    tipo_curso tipo_curso_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tipo_curso
    ADD CONSTRAINT tipo_curso_pkey PRIMARY KEY (id_tipo_curso);
 D   ALTER TABLE ONLY public.tipo_curso DROP CONSTRAINT tipo_curso_pkey;
       public            postgres    false    250            �           2606    19604    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usurio);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    216            �           2606    19776 +   aplicaciones aplicaciones_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.aplicaciones
    ADD CONSTRAINT aplicaciones_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);
 U   ALTER TABLE ONLY public.aplicaciones DROP CONSTRAINT aplicaciones_id_categoria_fkey;
       public          postgres    false    220    4756    222            �           2606    19851 "   archivos archivos_id_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.archivos
    ADD CONSTRAINT archivos_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);
 L   ALTER TABLE ONLY public.archivos DROP CONSTRAINT archivos_id_empleado_fkey;
       public          postgres    false    242    4774    240            �           2606    19806 *   comentario comentario_id_indicaciones_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_id_indicaciones_fkey FOREIGN KEY (id_indicaciones) REFERENCES public.indicaciones(id_indicaciones);
 T   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_id_indicaciones_fkey;
       public          postgres    false    230    4762    228            �           2606    19811 %   comentario comentario_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 O   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_id_usuario_fkey;
       public          postgres    false    4750    216    230            �           2606    19831 $   contadores contadores_id_equipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contadores
    ADD CONSTRAINT contadores_id_equipo_fkey FOREIGN KEY (id_equipo) REFERENCES public.equipo(id_equipo);
 N   ALTER TABLE ONLY public.contadores DROP CONSTRAINT contadores_id_equipo_fkey;
       public          postgres    false    236    238    4770            �           2606    19836 #   contadores contadores_id_fecha_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contadores
    ADD CONSTRAINT contadores_id_fecha_fkey FOREIGN KEY (id_fecha) REFERENCES public.fechas(id_fechas);
 M   ALTER TABLE ONLY public.contadores DROP CONSTRAINT contadores_id_fecha_fkey;
       public          postgres    false    4778    244    238            �           2606    19841 %   contadores contadores_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contadores
    ADD CONSTRAINT contadores_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 O   ALTER TABLE ONLY public.contadores DROP CONSTRAINT contadores_id_usuario_fkey;
       public          postgres    false    238    216    4750            �           2606    19871    cursos cursos_id_modulo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_modulo_fkey FOREIGN KEY (id_modulo) REFERENCES public.modulo(id_modulo);
 F   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_id_modulo_fkey;
       public          postgres    false    252    248    4786            �           2606    19861     cursos cursos_id_tipo_curso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_tipo_curso_fkey FOREIGN KEY (id_tipo_curso) REFERENCES public.tipo_curso(id_tipo_curso);
 J   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_id_tipo_curso_fkey;
       public          postgres    false    4784    248    250            �           2606    19866    cursos cursos_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 G   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_id_usuario_fkey;
       public          postgres    false    4750    216    248            �           2606    19846 #   empleados empleados_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 M   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_id_usuario_fkey;
       public          postgres    false    4750    216    240            �           2606    19886 '   finalizacion finalizacion_id_curso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finalizacion
    ADD CONSTRAINT finalizacion_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso);
 Q   ALTER TABLE ONLY public.finalizacion DROP CONSTRAINT finalizacion_id_curso_fkey;
       public          postgres    false    248    4782    254            �           2606    19891 (   finalizacion finalizacion_id_modulo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finalizacion
    ADD CONSTRAINT finalizacion_id_modulo_fkey FOREIGN KEY (id_modulo) REFERENCES public.modulo(id_modulo);
 R   ALTER TABLE ONLY public.finalizacion DROP CONSTRAINT finalizacion_id_modulo_fkey;
       public          postgres    false    252    254    4786            �           2606    19896 )   finalizacion finalizacion_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finalizacion
    ADD CONSTRAINT finalizacion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 S   ALTER TABLE ONLY public.finalizacion DROP CONSTRAINT finalizacion_id_usuario_fkey;
       public          postgres    false    254    216    4750            �           2606    19786 .   indicaciones indicaciones_id_aplicaciones_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.indicaciones
    ADD CONSTRAINT indicaciones_id_aplicaciones_fkey FOREIGN KEY (id_aplicaciones) REFERENCES public.aplicaciones(id_aplicaciones);
 X   ALTER TABLE ONLY public.indicaciones DROP CONSTRAINT indicaciones_id_aplicaciones_fkey;
       public          postgres    false    220    228    4754            �           2606    19796 /   indicaciones indicaciones_id_configuracion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.indicaciones
    ADD CONSTRAINT indicaciones_id_configuracion_fkey FOREIGN KEY (id_configuracion) REFERENCES public.configuraciones(id_configuraciones);
 Y   ALTER TABLE ONLY public.indicaciones DROP CONSTRAINT indicaciones_id_configuracion_fkey;
       public          postgres    false    228    224    4758            �           2606    19801 '   indicaciones indicaciones_id_fecha_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.indicaciones
    ADD CONSTRAINT indicaciones_id_fecha_fkey FOREIGN KEY (id_fecha) REFERENCES public.fechas(id_fechas);
 Q   ALTER TABLE ONLY public.indicaciones DROP CONSTRAINT indicaciones_id_fecha_fkey;
       public          postgres    false    244    228    4778            �           2606    19791 '   indicaciones indicaciones_id_pasos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.indicaciones
    ADD CONSTRAINT indicaciones_id_pasos_fkey FOREIGN KEY (id_pasos) REFERENCES public.pasos(id_paso);
 Q   ALTER TABLE ONLY public.indicaciones DROP CONSTRAINT indicaciones_id_pasos_fkey;
       public          postgres    false    226    228    4760            �           2606    19781 )   indicaciones indicaciones_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.indicaciones
    ADD CONSTRAINT indicaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 S   ALTER TABLE ONLY public.indicaciones DROP CONSTRAINT indicaciones_id_usuario_fkey;
       public          postgres    false    216    228    4750            �           2606    19876    modulo modulo_id_pasos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_id_pasos_fkey FOREIGN KEY (id_pasos) REFERENCES public.pasos(id_paso);
 E   ALTER TABLE ONLY public.modulo DROP CONSTRAINT modulo_id_pasos_fkey;
       public          postgres    false    226    4760    252            �           2606    19881     modulo modulo_id_tipo_curso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_id_tipo_curso_fkey FOREIGN KEY (id_tipo_curso) REFERENCES public.tipo_curso(id_tipo_curso);
 J   ALTER TABLE ONLY public.modulo DROP CONSTRAINT modulo_id_tipo_curso_fkey;
       public          postgres    false    4784    252    250            �           2606    19821 &   notificacion notificacion_id_crud_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notificacion
    ADD CONSTRAINT notificacion_id_crud_fkey FOREIGN KEY (id_crud) REFERENCES public.crud(id_crud);
 P   ALTER TABLE ONLY public.notificacion DROP CONSTRAINT notificacion_id_crud_fkey;
       public          postgres    false    232    4766    234            �           2606    19816 .   notificacion notificacion_id_indicaciones_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notificacion
    ADD CONSTRAINT notificacion_id_indicaciones_fkey FOREIGN KEY (id_indicaciones) REFERENCES public.indicaciones(id_indicaciones);
 X   ALTER TABLE ONLY public.notificacion DROP CONSTRAINT notificacion_id_indicaciones_fkey;
       public          postgres    false    234    228    4762            �           2606    19826 )   notificacion notificacion_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notificacion
    ADD CONSTRAINT notificacion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 S   ALTER TABLE ONLY public.notificacion DROP CONSTRAINT notificacion_id_usuario_fkey;
       public          postgres    false    4750    234    216            �           2606    19856 #   plantilla plantilla_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.plantilla
    ADD CONSTRAINT plantilla_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 M   ALTER TABLE ONLY public.plantilla DROP CONSTRAINT plantilla_id_usuario_fkey;
       public          postgres    false    216    4750    246            �           2606    19771    sesion sesion_id_fecha_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sesion
    ADD CONSTRAINT sesion_id_fecha_fkey FOREIGN KEY (id_fecha) REFERENCES public.fechas(id_fechas);
 E   ALTER TABLE ONLY public.sesion DROP CONSTRAINT sesion_id_fecha_fkey;
       public          postgres    false    4778    244    218            �           2606    19766    sesion sesion_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sesion
    ADD CONSTRAINT sesion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usurio);
 G   ALTER TABLE ONLY public.sesion DROP CONSTRAINT sesion_id_usuario_fkey;
       public          postgres    false    218    216    4750            d      x������ � �      z      x������ � �      f      x������ � �      n      x������ � �      h      x������ � �      v      x������ � �      p      x������ � �      �      x������ � �      x      x������ � �      t      x������ � �      |      x������ � �      �      x������ � �      l      x������ � �      �      x������ � �      r      x������ � �      j      x������ � �      ~      x������ � �      b      x������ � �      �      x������ � �      `      x������ � �     