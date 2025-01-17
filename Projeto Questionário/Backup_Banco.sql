PGDMP     *    2                |            questionario    15.6    15.6 ,    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    25259    questionario    DATABASE     �   CREATE DATABASE questionario WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE questionario;
                postgres    false            �            1259    25296 	   categoria    TABLE     v   CREATE TABLE public.categoria (
    idcategoria integer NOT NULL,
    nomecategoria character varying(30) NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    25295    categoria_idcategoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_idcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categoria_idcategoria_seq;
       public          postgres    false    221            -           0    0    categoria_idcategoria_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categoria_idcategoria_seq OWNED BY public.categoria.idcategoria;
          public          postgres    false    220            �            1259    25303    pergunta    TABLE        CREATE TABLE public.pergunta (
    idpergunta integer NOT NULL,
    pergunta text NOT NULL,
    alter1 text NOT NULL,
    alter2 text NOT NULL,
    alter3 text NOT NULL,
    alter4 text NOT NULL,
    resp text NOT NULL,
    idcategoria integer NOT NULL
);
    DROP TABLE public.pergunta;
       public         heap    postgres    false            �            1259    25302    pergunta_idpergunta_seq    SEQUENCE     �   CREATE SEQUENCE public.pergunta_idpergunta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pergunta_idpergunta_seq;
       public          postgres    false    223            .           0    0    pergunta_idpergunta_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pergunta_idpergunta_seq OWNED BY public.pergunta.idpergunta;
          public          postgres    false    222            �            1259    25284 	   pontuacao    TABLE     �   CREATE TABLE public.pontuacao (
    idtentativa integer NOT NULL,
    idusuario integer NOT NULL,
    totalacertos integer NOT NULL,
    datatentativa timestamp without time zone NOT NULL,
    totalerros integer
);
    DROP TABLE public.pontuacao;
       public         heap    postgres    false            �            1259    25283    pontuacao_idtentativa_seq    SEQUENCE     �   CREATE SEQUENCE public.pontuacao_idtentativa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pontuacao_idtentativa_seq;
       public          postgres    false    219            /           0    0    pontuacao_idtentativa_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pontuacao_idtentativa_seq OWNED BY public.pontuacao.idtentativa;
          public          postgres    false    218            �            1259    25261    tipousuario    TABLE     |   CREATE TABLE public.tipousuario (
    idtipousuario integer NOT NULL,
    nometipousuario character varying(10) NOT NULL
);
    DROP TABLE public.tipousuario;
       public         heap    postgres    false            �            1259    25260    tipousuario_idtipousuario_seq    SEQUENCE     �   CREATE SEQUENCE public.tipousuario_idtipousuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tipousuario_idtipousuario_seq;
       public          postgres    false    215            0           0    0    tipousuario_idtipousuario_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tipousuario_idtipousuario_seq OWNED BY public.tipousuario.idtipousuario;
          public          postgres    false    214            �            1259    25268    usuario    TABLE     �   CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    nomeusuario character varying(40) NOT NULL,
    email character varying(50) NOT NULL,
    senha character varying(13) NOT NULL,
    idtipousuario integer NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    25267    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    217            1           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          postgres    false    216            |           2604    25299    categoria idcategoria    DEFAULT     ~   ALTER TABLE ONLY public.categoria ALTER COLUMN idcategoria SET DEFAULT nextval('public.categoria_idcategoria_seq'::regclass);
 D   ALTER TABLE public.categoria ALTER COLUMN idcategoria DROP DEFAULT;
       public          postgres    false    221    220    221            }           2604    25306    pergunta idpergunta    DEFAULT     z   ALTER TABLE ONLY public.pergunta ALTER COLUMN idpergunta SET DEFAULT nextval('public.pergunta_idpergunta_seq'::regclass);
 B   ALTER TABLE public.pergunta ALTER COLUMN idpergunta DROP DEFAULT;
       public          postgres    false    222    223    223            {           2604    25287    pontuacao idtentativa    DEFAULT     ~   ALTER TABLE ONLY public.pontuacao ALTER COLUMN idtentativa SET DEFAULT nextval('public.pontuacao_idtentativa_seq'::regclass);
 D   ALTER TABLE public.pontuacao ALTER COLUMN idtentativa DROP DEFAULT;
       public          postgres    false    219    218    219            y           2604    25264    tipousuario idtipousuario    DEFAULT     �   ALTER TABLE ONLY public.tipousuario ALTER COLUMN idtipousuario SET DEFAULT nextval('public.tipousuario_idtipousuario_seq'::regclass);
 H   ALTER TABLE public.tipousuario ALTER COLUMN idtipousuario DROP DEFAULT;
       public          postgres    false    214    215    215            z           2604    25271    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    217    216    217            $          0    25296 	   categoria 
   TABLE DATA           ?   COPY public.categoria (idcategoria, nomecategoria) FROM stdin;
    public          postgres    false    221   �2       &          0    25303    pergunta 
   TABLE DATA           k   COPY public.pergunta (idpergunta, pergunta, alter1, alter2, alter3, alter4, resp, idcategoria) FROM stdin;
    public          postgres    false    223   #3       "          0    25284 	   pontuacao 
   TABLE DATA           d   COPY public.pontuacao (idtentativa, idusuario, totalacertos, datatentativa, totalerros) FROM stdin;
    public          postgres    false    219   �5                 0    25261    tipousuario 
   TABLE DATA           E   COPY public.tipousuario (idtipousuario, nometipousuario) FROM stdin;
    public          postgres    false    215   I6                  0    25268    usuario 
   TABLE DATA           V   COPY public.usuario (idusuario, nomeusuario, email, senha, idtipousuario) FROM stdin;
    public          postgres    false    217   �6       2           0    0    categoria_idcategoria_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.categoria_idcategoria_seq', 4, true);
          public          postgres    false    220            3           0    0    pergunta_idpergunta_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pergunta_idpergunta_seq', 9, true);
          public          postgres    false    222            4           0    0    pontuacao_idtentativa_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pontuacao_idtentativa_seq', 7, true);
          public          postgres    false    218            5           0    0    tipousuario_idtipousuario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tipousuario_idtipousuario_seq', 3, true);
          public          postgres    false    214            6           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 15, true);
          public          postgres    false    216            �           2606    25301    categoria categoria_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (idcategoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    221            �           2606    25310    pergunta pergunta_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pergunta
    ADD CONSTRAINT pergunta_pkey PRIMARY KEY (idpergunta);
 @   ALTER TABLE ONLY public.pergunta DROP CONSTRAINT pergunta_pkey;
       public            postgres    false    223            �           2606    25289    pontuacao pontuacao_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.pontuacao
    ADD CONSTRAINT pontuacao_pkey PRIMARY KEY (idtentativa);
 B   ALTER TABLE ONLY public.pontuacao DROP CONSTRAINT pontuacao_pkey;
       public            postgres    false    219                       2606    25266    tipousuario tipousuario_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tipousuario
    ADD CONSTRAINT tipousuario_pkey PRIMARY KEY (idtipousuario);
 F   ALTER TABLE ONLY public.tipousuario DROP CONSTRAINT tipousuario_pkey;
       public            postgres    false    215            �           2606    25277    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public            postgres    false    217            �           2606    25275    usuario usuario_nomeusuario_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_nomeusuario_key UNIQUE (nomeusuario);
 I   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_nomeusuario_key;
       public            postgres    false    217            �           2606    25273    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    217            �           2606    25311    pergunta fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.pergunta
    ADD CONSTRAINT fk_categoria FOREIGN KEY (idcategoria) REFERENCES public.categoria(idcategoria);
 ?   ALTER TABLE ONLY public.pergunta DROP CONSTRAINT fk_categoria;
       public          postgres    false    221    3209    223            �           2606    25278    usuario fk_tipo_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_tipo_usuario FOREIGN KEY (idtipousuario) REFERENCES public.tipousuario(idtipousuario);
 A   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_tipo_usuario;
       public          postgres    false    217    3199    215            �           2606    25290    pontuacao fk_usuario    FK CONSTRAINT     ~   ALTER TABLE ONLY public.pontuacao
    ADD CONSTRAINT fk_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 >   ALTER TABLE ONLY public.pontuacao DROP CONSTRAINT fk_usuario;
       public          postgres    false    219    217    3205            $   <   x�3��
	u=��e���rxr��#�����{���m����
ĞΎ\1z\\\ ��Z      &   �  x��S�j�@�G_qq�V�8�6����H�fV���h�fIi�C����� ��F?0������#��B�>�}ι�٩�)5��Ɉ¦%O4%�BzF�C�1��8x������)����;��k��F#��F�Tysk�>dSA��0$�_4z����:u<xǃ��86
^�#:��N�e�������$�҈	{ex!St�Mi<e[�O�.,�l��������_�(�:َ�v��2��Ζ"�XH�լ�U�(=a�����z�W��7x?����쎂���47�j�\M��AZ�_܆��_��%e�u	�ײ����v��j���芔��YHԮ����UY��P*�����/Ӯ�%H�u��u:��l�]������6s��&4� Ԅ<wu����΅��O�B�]�|on�fP����#@ܣi�^�ԕݮ�?�>i?���zU�nj�r�vHV����l+Qj��4�J����˷$�`��Vt"㙮�+<<'�%"Y����>����a�ts�i�q\}��mWQ���cw�x��MyA:��jQ�q�Y�R_4���ȑ�xh�<.5����|�	��vũ�y9�E�� 7�����%�aJ	�s�B�)=î����q\�ߖ08���7�<�N      "      x�m��C1D�5T���C-鿎���DYϑ�*)� ��L��H2��6�VF�	��?$�������~�e�C֚�䗠�>R��k=�.2(n�%3���"��h)�G%!�ӵJtU˫3���)�         )   x�3�tL����2�t�)���2�(�OK-.�/����� �S	#            x�UP�r� ����hN+e�T���$]���=L@(.����ܰ˾cPx��I��Oo�־��XV�J-�E+�H���K���<?J����x���AIj8�M"�Ў��2�-�Wu+u����Z�w=3?�[�!�z_��mG/�ZJaQ�L�9�M��xZ	���\�h1D�+�Q�ʀ�ec��:G=ku�)���5ZE�ђ	�;�K���	7o�x`����nN���n�|�}�h{��Et���J�
B��i��     