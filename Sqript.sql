PGDMP     !    *    
            {            Shop3    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    25561    Shop3    DATABASE     {   CREATE DATABASE "Shop3" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop3";
                postgres    false            �            1259    25563    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    25562    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    25570    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    25569    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    25700    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    25699    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    223            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    222            �            1259    25577    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    25576    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    25586    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    25707    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    25706    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    25585    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            ~           2604    25566    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    25573    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    25703 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    25580 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    25589 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    25710    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            (          0    25563    category 
   TABLE DATA                 public          postgres    false    215   s9       *          0    25570    image 
   TABLE DATA                 public          postgres    false    217   �9       0          0    25700    orders 
   TABLE DATA                 public          postgres    false    223   P>       ,          0    25577    person 
   TABLE DATA                 public          postgres    false    219   �?       .          0    25586    product 
   TABLE DATA                 public          postgres    false    221   �@       2          0    25707    product_cart 
   TABLE DATA                 public          postgres    false    225   lE       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 55, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 5, true);
          public          postgres    false    222            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 4, true);
          public          postgres    false    218            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 5, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 11, true);
          public          postgres    false    220            �           2606    25568    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    25575    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    25705    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    223            �           2606    25584    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    25712    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    25594    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    25596 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    25713 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    223    3210    219            �           2606    25602 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3206    221            �           2606    25718 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3212    223    221            �           2606    25597 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    221    3212            �           2606    25728 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    225    3212            �           2606    25723 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    219    225    3210            (   x   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0���.6]�د�i��I�� #�\l��ta�}@�v]�A�1� c�\�vaǅ�/v���� }pL�      *   E  x���ˊ]7E���;�]U��"�<0b'�P�J������n��sh�麒�������o~�p{��Ï�/_���q<��~{�<�n������}��ۗ?��_�_�>�׷_����7�o���n/��L�:Ɍ��$��;S͆s�K���o_��˧[z�݋����Cȉ8�J�R�	�\'�,u�ʇ\ǌ`�U��N*��{���C԰T�xS��VW*�(X�`�D�J#v[=��<ʡ�1��=m^Lm��n��y���޳��H�13�9� S'��L�<����z6��c(z����4��}�4SӀsZw�msZ^]ǲdy�:fsd��y!�ve�#��4L�{�%Ŏz��s�ғ6�T#U]�s^$¼�-q�2f`���y4Ү��m�*�B���[
���[Db}��X�b��d�6�8�YZX���-�.���@~0��2YN!��[��*�gn�PW.P���mR�(,�� ��CD�[D�pJF��β���d<cPf|��<s����#v�fm�=����PiL�8&$��cn�&�;��27�rj��f����-"�d��-��&f��6��u�"�Z�CD�[D5uXn���_���J�f/�F��gnyE-hܨ&�9��'�@y)/���!��L�"��%X��� ��6�	f��e.퇈�C��	"����A+2&`UsxWM5�7i�N3���rlN3$t�NUQFa�5�TCt��E�fl��L���)P_é���P�z}�y�[h�L+�4sW2��N�<|�O�c��3��TR(�3�θ۱w�*�u?GJ�f��C�&���{�[���-*S,���f��4�n����(���X��"}�>�M�4���M�s��G��۸�f�Gt"�M,��{�]��&2�,%ZQP��D��G�(�a긧�5̴MĞ2�e탡-��*I�,�Vm9���iv�.���eR�������3ɲ�j��f���n��J[
ڐ!_TЫ[��֊���7(W��n��?��[÷�v|EX��JK�%��"�9^�.��"�B����`E-�P3D+KIj��u�d������*��54�64'N��Ńӷ�/�Y�d      0   %  x���=k�0�=�B[��餓dw��PRhҮA_C��*]
-J!z�{��k���۞5��+���؅�bF��b�B?���E7��ԝR���ɧ�`��9����1�<ҟי���9L��f�/�[���D@�Aq�E�&*���̯A&C�{�+c�ږ��!z�,�J�^e��S��Ӣ�d�U-��VkWBj�J&F�@�L@ǝS�m�>� I����aj�j��"4W�!�}���<W�jnU���J	ٺ�C�Mp?��aP����5�-�6 ������U�      ,     x����n�@�=O15!#�ULW(�L��u�LEd��L�鋛ƤK���&���E�7q}�x���G!Y�4�@�N4� 'R�L���cl-��x�ih����̊۵Q�j����.����1&i �� ��<iې}+�X?�h��ߺ;^�>��L�%d��=���sS��W=E��u$�h�����.�������x1���p�IUyU��uYp����9�0�?�e/��<�W���<���z0����i����Ȇ�+��F�l�&�n�(�g��|���0E��C��      .   �  x��VKOW��+�"��5c�_�U�X�b	H��R�J-952FQw�.!����P�]�c��6�ܿ�_��L\5+�����9���w�33s��E53��PK+�g3I�R>�ZIԽLʧRO�'���4���d>�T��~���|&	�r:�M�}��)d�}�4��!���e���?=ɤ�o�>�/�{1�����aM�*�-�6��p��$�}�˥��|�P$jܖM�:�czC���v���xK5:�#����N)ڕ�����I����c�����%9tN-�Q2���3wZ�������cV�
�g�.tY9Fr]I�}�G����A�>�A�_b����\�>^:t�QȲ���8�ѥ�A>��e���OM<�z��u�la��n�]�.ؕҫ|��ǞzpyA=]��OI�Ϩ��m�S6OMDw0Ȅ�w��=!J�Y�PJb��8G�����`�	�U>Y�� 8Fdt&�i闺�(�v���݁�.D��������k~�=4����Ŕ�
�j
�*�U�vK����-�Ss�gg9�-���t\��%�H�\^�ź`�5MI1&�`�&��RM�OqS	(��;�߆���k|��`�e�|��f�7@��p ���/�`�E&�V��3[�W�a�z8�}�!��t�c�7��U�� :l�'�
%�x�Zp��"9 ��B�K��pv�@پ�BϘp))��Ҿ�ɲ���78�A��]�� �)���M(ِ�iH[����k|M�H���0@Χ�ȥ����#޸�-��m4��
Vp^��-�k�-t�6�D�w3��j6>�{SU�/�5���ܕo�,�ڐ&�y������I�/t�͉�bQ7�o�G����������7��.Rڢ�[T����÷�J�Fm+��,+�ɐ5��x��0�v��w��6�*lNx�a�)<y"�����d�7+QF���[f8�&Ǣ�7���:sVS���ˑ	��~B7�%,���+��+�D�m]��*��}�����6;h�mf�siy��)��v��Cꓝ7K�1��8�6?��Q��,�
�.sn0��Pu��%�7`ȶ�6��o~V�L$�����K�xͱ�@j����qR^�.�6č˔BZ��g{�������/k{}�(��l$�H�������z84ƒ2�LL�A�p}      2   
   x���         