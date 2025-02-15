PGDMP  8    +    	            |         
   callcenter    15.5    16.1 N    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    16575 
   callcenter    DATABASE     ~   CREATE DATABASE callcenter WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE callcenter;
                postgres    false            `           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   pg_database_owner    false    5            �            1259    16576    agencias    TABLE       CREATE TABLE public.agencias (
    id_agencia integer NOT NULL,
    nombre_age character varying(50) NOT NULL,
    telefono_age character varying(10) NOT NULL,
    direccion_age character varying(100) NOT NULL,
    id_ciudad integer NOT NULL
)
WITH (autovacuum_enabled='true');
    DROP TABLE public.agencias;
       public         heap    postgres    false            �            1259    16579    Agencias_id_agencia_seq    SEQUENCE     �   CREATE SEQUENCE public."Agencias_id_agencia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Agencias_id_agencia_seq";
       public          postgres    false    214            a           0    0    Agencias_id_agencia_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Agencias_id_agencia_seq" OWNED BY public.agencias.id_agencia;
          public          postgres    false    215            �            1259    16580    canal    TABLE       CREATE TABLE public.canal (
    id_canal integer NOT NULL,
    nombre_can character varying(100) DEFAULT NULL::character varying,
    descripcion_can character varying(100) DEFAULT NULL::character varying,
    extension_can character varying(20)
)
WITH (autovacuum_enabled='true');
    DROP TABLE public.canal;
       public         heap    postgres    false            �            1259    16585    Canal_id_canal_seq    SEQUENCE     �   CREATE SEQUENCE public."Canal_id_canal_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Canal_id_canal_seq";
       public          postgres    false    216            b           0    0    Canal_id_canal_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Canal_id_canal_seq" OWNED BY public.canal.id_canal;
          public          postgres    false    217            �            1259    16586    ciudades    TABLE     �   CREATE TABLE public.ciudades (
    id_ciudad integer NOT NULL,
    nombre_ciu character varying(50) NOT NULL,
    provincia character varying(50) NOT NULL
)
WITH (autovacuum_enabled='true');
    DROP TABLE public.ciudades;
       public         heap    postgres    false            �            1259    16589    Ciudades_id_ciudad_seq    SEQUENCE     �   CREATE SEQUENCE public."Ciudades_id_ciudad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Ciudades_id_ciudad_seq";
       public          postgres    false    218            c           0    0    Ciudades_id_ciudad_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Ciudades_id_ciudad_seq" OWNED BY public.ciudades.id_ciudad;
          public          postgres    false    219            �            1259    16590    clientes    TABLE     l  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    cedula_cli character varying(13),
    nombre_cli character varying(30),
    apellido_cli character varying(30),
    telefono_cli character varying(10),
    socio_cli boolean,
    nacimiento_cli date,
    id_ciudad integer,
    nick_redes character varying(20)
)
WITH (autovacuum_enabled='true');
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16593    Clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public."Clientes_id_cliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Clientes_id_cliente_seq";
       public          postgres    false    220            d           0    0    Clientes_id_cliente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Clientes_id_cliente_seq" OWNED BY public.clientes.id_cliente;
          public          postgres    false    221            �            1259    16594    interacciones    TABLE     �  CREATE TABLE public.interacciones (
    id_interaccion integer NOT NULL,
    fecha timestamp without time zone NOT NULL,
    cant_mensaje integer,
    nombre_graba character varying(20),
    observacion character varying(20),
    duracion_llamada time without time zone,
    id_usuario integer NOT NULL,
    id_agencia integer,
    id_canal integer,
    id_tema integer,
    id_cliente integer
)
WITH (autovacuum_enabled='true');
 !   DROP TABLE public.interacciones;
       public         heap    postgres    false            �            1259    16597     Interacciones_id_interaccion_seq    SEQUENCE     �   CREATE SEQUENCE public."Interacciones_id_interaccion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Interacciones_id_interaccion_seq";
       public          postgres    false    222            e           0    0     Interacciones_id_interaccion_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Interacciones_id_interaccion_seq" OWNED BY public.interacciones.id_interaccion;
          public          postgres    false    223            �            1259    16598    motivos    TABLE     �   CREATE TABLE public.motivos (
    id_motivo integer NOT NULL,
    categoria_moti character varying(100) NOT NULL,
    descripcion_moti character varying(100) NOT NULL
)
WITH (autovacuum_enabled='true');
    DROP TABLE public.motivos;
       public         heap    postgres    false            �            1259    16601    Motivos_id_motivo_seq    SEQUENCE     �   CREATE SEQUENCE public."Motivos_id_motivo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Motivos_id_motivo_seq";
       public          postgres    false    224            f           0    0    Motivos_id_motivo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Motivos_id_motivo_seq" OWNED BY public.motivos.id_motivo;
          public          postgres    false    225            �            1259    16602    temas    TABLE     �   CREATE TABLE public.temas (
    id_tema integer NOT NULL,
    nombre_tema character varying(20) NOT NULL,
    descrip_tema character varying(50)
)
WITH (autovacuum_enabled='true');
    DROP TABLE public.temas;
       public         heap    postgres    false            �            1259    16605    Temas_id_tema_seq    SEQUENCE     �   CREATE SEQUENCE public."Temas_id_tema_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Temas_id_tema_seq";
       public          postgres    false    226            g           0    0    Temas_id_tema_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Temas_id_tema_seq" OWNED BY public.temas.id_tema;
          public          postgres    false    227            �            1259    16606    usuarios    TABLE     J  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    cedula_usu character varying(10) NOT NULL,
    nombre_usu character varying(50) NOT NULL,
    email_usu character varying(40) NOT NULL,
    user_usu character varying(20) NOT NULL,
    password character varying(100) NOT NULL
)
WITH (autovacuum_enabled='true');
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16609    Usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuarios_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Usuarios_id_usuario_seq";
       public          postgres    false    228            h           0    0    Usuarios_id_usuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Usuarios_id_usuario_seq" OWNED BY public.usuarios.id_usuario;
          public          postgres    false    229            �            1259    16610    det_interaccion_motivo    TABLE     �   CREATE TABLE public.det_interaccion_motivo (
    id_interaccion integer NOT NULL,
    id_motivo integer NOT NULL
)
WITH (autovacuum_enabled='true');
 *   DROP TABLE public.det_interaccion_motivo;
       public         heap    postgres    false            �           2604    16613    agencias id_agencia    DEFAULT     |   ALTER TABLE ONLY public.agencias ALTER COLUMN id_agencia SET DEFAULT nextval('public."Agencias_id_agencia_seq"'::regclass);
 B   ALTER TABLE public.agencias ALTER COLUMN id_agencia DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16614    canal id_canal    DEFAULT     r   ALTER TABLE ONLY public.canal ALTER COLUMN id_canal SET DEFAULT nextval('public."Canal_id_canal_seq"'::regclass);
 =   ALTER TABLE public.canal ALTER COLUMN id_canal DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16615    ciudades id_ciudad    DEFAULT     z   ALTER TABLE ONLY public.ciudades ALTER COLUMN id_ciudad SET DEFAULT nextval('public."Ciudades_id_ciudad_seq"'::regclass);
 A   ALTER TABLE public.ciudades ALTER COLUMN id_ciudad DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16616    clientes id_cliente    DEFAULT     |   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public."Clientes_id_cliente_seq"'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16617    interacciones id_interaccion    DEFAULT     �   ALTER TABLE ONLY public.interacciones ALTER COLUMN id_interaccion SET DEFAULT nextval('public."Interacciones_id_interaccion_seq"'::regclass);
 K   ALTER TABLE public.interacciones ALTER COLUMN id_interaccion DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16618    motivos id_motivo    DEFAULT     x   ALTER TABLE ONLY public.motivos ALTER COLUMN id_motivo SET DEFAULT nextval('public."Motivos_id_motivo_seq"'::regclass);
 @   ALTER TABLE public.motivos ALTER COLUMN id_motivo DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16619    temas id_tema    DEFAULT     p   ALTER TABLE ONLY public.temas ALTER COLUMN id_tema SET DEFAULT nextval('public."Temas_id_tema_seq"'::regclass);
 <   ALTER TABLE public.temas ALTER COLUMN id_tema DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16620    usuarios id_usuario    DEFAULT     |   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public."Usuarios_id_usuario_seq"'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    229    228            I          0    16576    agencias 
   TABLE DATA           b   COPY public.agencias (id_agencia, nombre_age, telefono_age, direccion_age, id_ciudad) FROM stdin;
    public          postgres    false    214   �^       K          0    16580    canal 
   TABLE DATA           U   COPY public.canal (id_canal, nombre_can, descripcion_can, extension_can) FROM stdin;
    public          postgres    false    216   {`       M          0    16586    ciudades 
   TABLE DATA           D   COPY public.ciudades (id_ciudad, nombre_ciu, provincia) FROM stdin;
    public          postgres    false    218   �`       O          0    16590    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, cedula_cli, nombre_cli, apellido_cli, telefono_cli, socio_cli, nacimiento_cli, id_ciudad, nick_redes) FROM stdin;
    public          postgres    false    220   �h       Y          0    16610    det_interaccion_motivo 
   TABLE DATA           K   COPY public.det_interaccion_motivo (id_interaccion, id_motivo) FROM stdin;
    public          postgres    false    230   �i       Q          0    16594    interacciones 
   TABLE DATA           �   COPY public.interacciones (id_interaccion, fecha, cant_mensaje, nombre_graba, observacion, duracion_llamada, id_usuario, id_agencia, id_canal, id_tema, id_cliente) FROM stdin;
    public          postgres    false    222   j       S          0    16598    motivos 
   TABLE DATA           N   COPY public.motivos (id_motivo, categoria_moti, descripcion_moti) FROM stdin;
    public          postgres    false    224   Yj       U          0    16602    temas 
   TABLE DATA           C   COPY public.temas (id_tema, nombre_tema, descrip_tema) FROM stdin;
    public          postgres    false    226   5k       W          0    16606    usuarios 
   TABLE DATA           e   COPY public.usuarios (id_usuario, cedula_usu, nombre_usu, email_usu, user_usu, password) FROM stdin;
    public          postgres    false    228   �k       i           0    0    Agencias_id_agencia_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Agencias_id_agencia_seq"', 12, true);
          public          postgres    false    215            j           0    0    Canal_id_canal_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Canal_id_canal_seq"', 5, true);
          public          postgres    false    217            k           0    0    Ciudades_id_ciudad_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Ciudades_id_ciudad_seq"', 225, true);
          public          postgres    false    219            l           0    0    Clientes_id_cliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Clientes_id_cliente_seq"', 7, true);
          public          postgres    false    221            m           0    0     Interacciones_id_interaccion_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Interacciones_id_interaccion_seq"', 2, true);
          public          postgres    false    223            n           0    0    Motivos_id_motivo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Motivos_id_motivo_seq"', 11, true);
          public          postgres    false    225            o           0    0    Temas_id_tema_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Temas_id_tema_seq"', 5, true);
          public          postgres    false    227            p           0    0    Usuarios_id_usuario_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Usuarios_id_usuario_seq"', 11, true);
          public          postgres    false    229            �           2606    16622    agencias PK_Agencias 
   CONSTRAINT     \   ALTER TABLE ONLY public.agencias
    ADD CONSTRAINT "PK_Agencias" PRIMARY KEY (id_agencia);
 @   ALTER TABLE ONLY public.agencias DROP CONSTRAINT "PK_Agencias";
       public            postgres    false    214            �           2606    16624    canal PK_Canal 
   CONSTRAINT     T   ALTER TABLE ONLY public.canal
    ADD CONSTRAINT "PK_Canal" PRIMARY KEY (id_canal);
 :   ALTER TABLE ONLY public.canal DROP CONSTRAINT "PK_Canal";
       public            postgres    false    216            �           2606    16626    ciudades PK_Ciudades 
   CONSTRAINT     [   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT "PK_Ciudades" PRIMARY KEY (id_ciudad);
 @   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT "PK_Ciudades";
       public            postgres    false    218            �           2606    16628    clientes PK_Clientes 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT "PK_Clientes" PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT "PK_Clientes";
       public            postgres    false    220            �           2606    16630    interacciones PK_Interacciones 
   CONSTRAINT     j   ALTER TABLE ONLY public.interacciones
    ADD CONSTRAINT "PK_Interacciones" PRIMARY KEY (id_interaccion);
 J   ALTER TABLE ONLY public.interacciones DROP CONSTRAINT "PK_Interacciones";
       public            postgres    false    222            �           2606    16632    motivos PK_Motivos 
   CONSTRAINT     Y   ALTER TABLE ONLY public.motivos
    ADD CONSTRAINT "PK_Motivos" PRIMARY KEY (id_motivo);
 >   ALTER TABLE ONLY public.motivos DROP CONSTRAINT "PK_Motivos";
       public            postgres    false    224            �           2606    16634    temas PK_Temas 
   CONSTRAINT     S   ALTER TABLE ONLY public.temas
    ADD CONSTRAINT "PK_Temas" PRIMARY KEY (id_tema);
 :   ALTER TABLE ONLY public.temas DROP CONSTRAINT "PK_Temas";
       public            postgres    false    226            �           2606    16636    usuarios PK_Usuarios 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT "PK_Usuarios" PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT "PK_Usuarios";
       public            postgres    false    228            �           2606    16638    motivos categoria_moti 
   CONSTRAINT     [   ALTER TABLE ONLY public.motivos
    ADD CONSTRAINT categoria_moti UNIQUE (categoria_moti);
 @   ALTER TABLE ONLY public.motivos DROP CONSTRAINT categoria_moti;
       public            postgres    false    224            �           2606    16640    usuarios cedula_usu 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT cedula_usu UNIQUE (cedula_usu);
 =   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT cedula_usu;
       public            postgres    false    228            �           2606    16642    motivos descripcion_moti 
   CONSTRAINT     _   ALTER TABLE ONLY public.motivos
    ADD CONSTRAINT descripcion_moti UNIQUE (descripcion_moti);
 B   ALTER TABLE ONLY public.motivos DROP CONSTRAINT descripcion_moti;
       public            postgres    false    224            �           2606    16644    usuarios email_usu 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT email_usu UNIQUE (email_usu);
 <   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT email_usu;
       public            postgres    false    228            �           2606    16646    temas nombre_tema 
   CONSTRAINT     S   ALTER TABLE ONLY public.temas
    ADD CONSTRAINT nombre_tema UNIQUE (nombre_tema);
 ;   ALTER TABLE ONLY public.temas DROP CONSTRAINT nombre_tema;
       public            postgres    false    226            �           2606    16648    usuarios user 
   CONSTRAINT     N   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT "user" UNIQUE (user_usu);
 9   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT "user";
       public            postgres    false    228            �           2606    16649    agencias agencia_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY public.agencias
    ADD CONSTRAINT agencia_ciudad FOREIGN KEY (id_ciudad) REFERENCES public.ciudades(id_ciudad);
 A   ALTER TABLE ONLY public.agencias DROP CONSTRAINT agencia_ciudad;
       public          postgres    false    218    214    3227            �           2606    16654    clientes cliente_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT cliente_ciudad FOREIGN KEY (id_ciudad) REFERENCES public.ciudades(id_ciudad);
 A   ALTER TABLE ONLY public.clientes DROP CONSTRAINT cliente_ciudad;
       public          postgres    false    3227    220    218            �           2606    16659 "   interacciones interacccion_agencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.interacciones
    ADD CONSTRAINT interacccion_agencia FOREIGN KEY (id_agencia) REFERENCES public.agencias(id_agencia);
 L   ALTER TABLE ONLY public.interacciones DROP CONSTRAINT interacccion_agencia;
       public          postgres    false    214    222    3223            �           2606    16664    interacciones interaccion_canal    FK CONSTRAINT     �   ALTER TABLE ONLY public.interacciones
    ADD CONSTRAINT interaccion_canal FOREIGN KEY (id_canal) REFERENCES public.canal(id_canal);
 I   ALTER TABLE ONLY public.interacciones DROP CONSTRAINT interaccion_canal;
       public          postgres    false    222    3225    216            �           2606    16669 !   interacciones interaccion_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.interacciones
    ADD CONSTRAINT interaccion_cliente FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);
 K   ALTER TABLE ONLY public.interacciones DROP CONSTRAINT interaccion_cliente;
       public          postgres    false    220    222    3229            �           2606    16674 *   det_interaccion_motivo interaccion_detalle    FK CONSTRAINT     �   ALTER TABLE ONLY public.det_interaccion_motivo
    ADD CONSTRAINT interaccion_detalle FOREIGN KEY (id_interaccion) REFERENCES public.interacciones(id_interaccion);
 T   ALTER TABLE ONLY public.det_interaccion_motivo DROP CONSTRAINT interaccion_detalle;
       public          postgres    false    3231    230    222            �           2606    16679    interacciones interaccion_tema    FK CONSTRAINT     �   ALTER TABLE ONLY public.interacciones
    ADD CONSTRAINT interaccion_tema FOREIGN KEY (id_tema) REFERENCES public.temas(id_tema);
 H   ALTER TABLE ONLY public.interacciones DROP CONSTRAINT interaccion_tema;
       public          postgres    false    3239    222    226            �           2606    16684 !   interacciones interaccion_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.interacciones
    ADD CONSTRAINT interaccion_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 K   ALTER TABLE ONLY public.interacciones DROP CONSTRAINT interaccion_usuario;
       public          postgres    false    222    228    3243            �           2606    16689 %   det_interaccion_motivo motivo_detalle    FK CONSTRAINT     �   ALTER TABLE ONLY public.det_interaccion_motivo
    ADD CONSTRAINT motivo_detalle FOREIGN KEY (id_motivo) REFERENCES public.motivos(id_motivo);
 O   ALTER TABLE ONLY public.det_interaccion_motivo DROP CONSTRAINT motivo_detalle;
       public          postgres    false    3233    230    224            I   �  x�m�ώ�0���S��BN8�(�na�J]�2�M�ت�#eߡ�c9�#�b5���ԃ�%4�|��,�m�G?�/�_-�p�I�n=�¾S�M����(��+JxZ��^��,"�R|���|PhY��"ʮ2�D�2W\�E^�Y�]�Wl@��Lעi5l��z�
�J�2�~C�f�!�R��N��+Nyi���X�k۴�`	���j�/FXPjŊ��]��c�A����g^L�`VM�W�Vhx3��q���Eԣ�Π�ܯ1�����=Og�'Tx�\�{�<h�
U�����8*���)�5YG4t�m
�O�/';��,.�lB��;E��2T��P
c��$Z��w�?�r���[����q�x'	|\8�3/?��/��}��Q�>�V-�^��� ��S��I#
�/���QJ� ���      K   W   x�3���I�MLITp,I�K�LI�P�Up�(Q040�b.c����Ĝ̪D$-p4=&p�E(�@�h�M9�3K�
�=... ǒ4�      M   �  x�mXM����W������fX�o����@'��$�2N)YB�Q����[K��N0�~-]���ec��N�z�}M�^3=O��)k�����L�jiV =U�;͓\[���6�E��G���7��+�Ej�J�,Ũn�[��Y����֊E}7��Zz�DH�-#N�(Jk���,�x����a�rQS�����2��U���u<�b�$*�Ճ�)�`<{/��2�UfGJ!��P��M�����خG�'�s�%B���ޑd�R�V�hM��|}�@�qфÄ��&��m�U,����<cҳ�f]�WY����:<���l�R�)����Dg�i���n��l�᳹�8v{^�D��߀���=�﨣>Į�@%��UZ�PƾֵD��X��Y�G˄#a5X*�2�F��Zz�S�	�<��c0z:h-.@��r@�d�A�h�h���q�^r>
:b1�^���ܹ�Q�'R Q��8�ؓ�hL<z,x�G�]!*�c`�e����ec�T
����g��֜��c���J$bP�}T*c'��O_d+�X3�e�x��|ڀ¥��6X�b�%�0�Oo�<#҈\s�)E���e^���U��؅�6���0�%aׂu��pi?͓q��Hh��$��9B�ι����a�Q�i��D/�D_ڹ��oz��$��Wn�q(9��sE�g�Ь�oǢ�����Xv�n7J�X5��eW���t�;���`���f��
�i7�p
�qR`�8J�T�%8�d������k�g(�������̶��QK��*w�-ժ�u=���-���<��T �h��g�����d �O��%���!k:-�5���~B
�͕������sdD؝镉0���ϡ,x��DOP���PY ��p��b�M�_�$̑_�{ �胰� ̐�u$D�A��Ͷ�ġ	�%����|��Ql�B��!U��F@3��t��W4抅L5�C8���tr��emgq�;$�0?����!pBx��Ďy��L�+t'f9�B��b�K;qL��A��l# �!���1a� �ԡ!��^��`���6�U;�(�b�X�����m�3f��B�C��b��U���!
}I�!���rF(�p�L3G��V���8���^��«q�B��+Z8�N�;X�M���lP�T�c�hgT�H�q
,Rw ��
̵�Z���.2!\?|�ͧ}��e%2�F���kX�bBed��AI�i��ǣ� V� �M� �H�AG�����D�9��9��:8��p��P�생@Fẗ��D�/E7���r�����u�B;��4��Y.
���r�5�t&���ݰ����]g��	7��X��9���n4�J�������7��ӻy����I}�*���$����Sލ١����I8�ZH㵝�^�kg���%;��Yu5�'��_`�`� ����~��	e�ʫ��}v 磂u�QH�N����W}���y��J�u�(�H?U)�sE�a��,[�^�Y�١��-��5_m"�K�	7T?DPg�W�9}�)��'.��X�/�7�G�a"�������ݫ���U�O6�Og����4��p��j$��3r��O��>�4��w�=\���~�O��N���D/�ŋ�/O�<�aA�|O��o�I����`�,�c�Y&L>���Dꮢ�����z�[(t&��}�X�����d�ס�o�8&�me��?��h��z����7�ivE"�������p�:��{�C1[�GDU�fr�3��
]!� �QVs
���kG&��s���`�hM�a�W'��˸Ck�j⹠�xM��Z��=��Sц5hU!���Է�*X+�T����?��c���?�X�a��R�;�g�����,��p��G��~���t�?p���      O     x��нN1���y��8�+8�2pR�"B{r⮇���=��b�@���-A8���!�Scbu�ۧ1BC�#�%�FJ ���X����#r��x�8=<g��Q�T
P�q�۠aI���mJm��wQ�༗.H�+fP�R�Q���B���Z�BƁ�R���Nz���XCyS
ʥ�!�T����8�VͿ�8�&hmB��ہ�Ծ�<�7��{fW�v����?�X����vɅ�҂�}�~��΢��n���`AC����]TU�	w/~�      Y      x�3�4�2�4�2� bCC�=...  G�      Q   ;   x�3�4202�50�52R0��25�22�44������4�4bc.C�,�ꌸb���� X�Z      S   �   x��н
�0���{����?G�R-��.��R�	&�C�����5/fբ�Kn\��䚕��d�ؐX�t�V�ˈ�d�`Gj���ȼ��S�䵺���f��I�j�.'4��?	mJe�Ҍܛ@��Q�(f�"�����h��G�H}��Oܕ�)����e5J A��.��$Be��Q��я� ��1T��%#�1���7�c�      U   @   x�3�t��+.�)I�3�L8KS�!$�)�ceiJ"��2���K�/�ML���C�o������ %�>      W   �   x�}�?�0���S80�^��4���?�-�Z�
&����Mw��.�����P��\ܪ+��J����aii�Iۼ�A�=
���J�R���h2
;�p1[EIg�&�p�ۥ6O���,�9��]7�q:�Й�?�G7���j[��1cqn��8?n]�-Fل-�@%Y9�V�H՛Br��=��)���Bx���c��}|TW     