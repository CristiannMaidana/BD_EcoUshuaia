--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Homebrew)
-- Dumped by pg_dump version 17.5 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.zonas DROP CONSTRAINT IF EXISTS zonas_id_mapa_fkey;
ALTER TABLE IF EXISTS ONLY public.zonas DROP CONSTRAINT IF EXISTS zonas_id_calendario_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_tienen_notificaciones DROP CONSTRAINT IF EXISTS usuarios_tienen_notificaciones_id_usuario_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_tienen_notificaciones DROP CONSTRAINT IF EXISTS usuarios_tienen_notificaciones_id_notificaciones_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_registro_contenedores DROP CONSTRAINT IF EXISTS usuarios_registro_contenedores_id_usuario_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_registro_contenedores DROP CONSTRAINT IF EXISTS usuarios_registro_contenedores_id_contenedor_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_id_zona_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_id_tipo_usuario_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_id_direccion_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_historiales_residuos DROP CONSTRAINT IF EXISTS usuario_historiales_id_usuario_fkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_historiales_residuos DROP CONSTRAINT IF EXISTS usuario_historiales_id_residuo_fkey;
ALTER TABLE IF EXISTS ONLY public.sensores DROP CONSTRAINT IF EXISTS sensores_id_contenedor_fkey;
ALTER TABLE IF EXISTS ONLY public.registro_recolecciones DROP CONSTRAINT IF EXISTS registro_recolecciones_id_zona_fkey;
ALTER TABLE IF EXISTS ONLY public.registro_recolecciones DROP CONSTRAINT IF EXISTS registro_recolecciones_id_usuario_fkey;
ALTER TABLE IF EXISTS ONLY public.registro_recolecciones DROP CONSTRAINT IF EXISTS registro_recolecciones_id_residuo_fkey;
ALTER TABLE IF EXISTS ONLY public.registro_recolecciones DROP CONSTRAINT IF EXISTS registro_recolecciones_id_contenedor_fkey;
ALTER TABLE IF EXISTS ONLY public.medicion_sensores DROP CONSTRAINT IF EXISTS medicion_sensores_id_sensor_fkey;
ALTER TABLE IF EXISTS ONLY public.medicion_sensores DROP CONSTRAINT IF EXISTS medicion_sensores_id_contenedor_fkey;
ALTER TABLE IF EXISTS ONLY public.horarios_recoleccion DROP CONSTRAINT IF EXISTS fk_zona;
ALTER TABLE IF EXISTS ONLY public.sensor_estado_historial DROP CONSTRAINT IF EXISTS fk_sensor_estado_tipo;
ALTER TABLE IF EXISTS ONLY public.excepciones_recolecciones DROP CONSTRAINT IF EXISTS fk_horario_recoleccion;
ALTER TABLE IF EXISTS ONLY public.residuos DROP CONSTRAINT IF EXISTS fk_categoria_residuos;
ALTER TABLE IF EXISTS ONLY public.horarios_recoleccion DROP CONSTRAINT IF EXISTS fk_categoria_residuo;
ALTER TABLE IF EXISTS ONLY public.calendarios DROP CONSTRAINT IF EXISTS fk_calendarios_categoria;
ALTER TABLE IF EXISTS ONLY public.sensor_estado_historial DROP CONSTRAINT IF EXISTS estados_id_sensor_fkey;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.contenedores DROP CONSTRAINT IF EXISTS contenedores_id_zona_fkey;
ALTER TABLE IF EXISTS ONLY public.contenedores DROP CONSTRAINT IF EXISTS contenedores_id_residuo_fkey;
ALTER TABLE IF EXISTS ONLY public.contenedores DROP CONSTRAINT IF EXISTS contenedores_id_mapa_fkey;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX IF EXISTS public.usuarios_email_ef44a1d6_like;
DROP INDEX IF EXISTS public.django_session_session_key_c0390e0f_like;
DROP INDEX IF EXISTS public.django_session_expire_date_a5c62663;
DROP INDEX IF EXISTS public.django_admin_log_user_id_c564eba6;
DROP INDEX IF EXISTS public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX IF EXISTS public.auth_user_username_6821ab7c_like;
DROP INDEX IF EXISTS public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX IF EXISTS public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX IF EXISTS public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX IF EXISTS public.auth_user_groups_group_id_97559544;
DROP INDEX IF EXISTS public.auth_permission_content_type_id_2f476e4b;
DROP INDEX IF EXISTS public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX IF EXISTS public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX IF EXISTS public.auth_group_name_a6ea08ec_like;
ALTER TABLE IF EXISTS ONLY public.zonas DROP CONSTRAINT IF EXISTS zonas_pkey;
ALTER TABLE IF EXISTS ONLY public.zonas DROP CONSTRAINT IF EXISTS zonas_nombre_zona_id_mapa_key;
ALTER TABLE IF EXISTS ONLY public.zonas DROP CONSTRAINT IF EXISTS zonas_coordenada_key;
ALTER TABLE IF EXISTS ONLY public.zonas DROP CONSTRAINT IF EXISTS zonas_color_zona_id_mapa_key;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_user_id_key;
ALTER TABLE IF EXISTS ONLY public.usuarios_tienen_notificaciones DROP CONSTRAINT IF EXISTS usuarios_tienen_notificaciones_pkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_tienen_notificaciones DROP CONSTRAINT IF EXISTS usuarios_tienen_notificaciones_id_usuario_id_notificaciones_key;
ALTER TABLE IF EXISTS ONLY public.usuarios_registro_contenedores DROP CONSTRAINT IF EXISTS usuarios_registro_contenedores_pkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_registro_contenedores DROP CONSTRAINT IF EXISTS usuarios_registro_contenedores_id_usuario_id_contenedor_key;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_pkey;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_email_key;
ALTER TABLE IF EXISTS ONLY public.usuarios DROP CONSTRAINT IF EXISTS usuarios_email_ef44a1d6_uniq;
ALTER TABLE IF EXISTS ONLY public.usuarios_historiales_residuos DROP CONSTRAINT IF EXISTS usuario_historiales_pkey;
ALTER TABLE IF EXISTS ONLY public.usuarios_historiales_residuos DROP CONSTRAINT IF EXISTS usuario_historiales_id_usuario_id_residuo_key;
ALTER TABLE IF EXISTS ONLY public.umbral_llenado DROP CONSTRAINT IF EXISTS umbral_llenado_pkey;
ALTER TABLE IF EXISTS ONLY public.tipo_usuarios DROP CONSTRAINT IF EXISTS tipo_usuarios_tipo_usuario_key;
ALTER TABLE IF EXISTS ONLY public.tipo_usuarios DROP CONSTRAINT IF EXISTS tipo_usuarios_pkey;
ALTER TABLE IF EXISTS ONLY public.sensores DROP CONSTRAINT IF EXISTS sensores_pkey;
ALTER TABLE IF EXISTS ONLY public.sensores DROP CONSTRAINT IF EXISTS sensores_numero_serie_key;
ALTER TABLE IF EXISTS ONLY public.sensores DROP CONSTRAINT IF EXISTS sensores_id_contenedor_nombre_sensor_key;
ALTER TABLE IF EXISTS ONLY public.sensor_estados_tipos DROP CONSTRAINT IF EXISTS sensor_estados_tipos_pkey;
ALTER TABLE IF EXISTS ONLY public.sensor_estados_tipos DROP CONSTRAINT IF EXISTS sensor_estados_tipos_estado_key;
ALTER TABLE IF EXISTS ONLY public.residuos DROP CONSTRAINT IF EXISTS residuos_pkey;
ALTER TABLE IF EXISTS ONLY public.residuos DROP CONSTRAINT IF EXISTS residuos_nombre_key;
ALTER TABLE IF EXISTS ONLY public.registro_recolecciones DROP CONSTRAINT IF EXISTS registro_recolecciones_pkey;
ALTER TABLE IF EXISTS ONLY public.notificaciones DROP CONSTRAINT IF EXISTS notificaciones_pkey;
ALTER TABLE IF EXISTS ONLY public.medicion_sensores DROP CONSTRAINT IF EXISTS medicion_sensores_pkey;
ALTER TABLE IF EXISTS ONLY public.mapas DROP CONSTRAINT IF EXISTS mapas_pkey;
ALTER TABLE IF EXISTS ONLY public.mapas DROP CONSTRAINT IF EXISTS mapas_nombre_mapa_key;
ALTER TABLE IF EXISTS ONLY public.mapas DROP CONSTRAINT IF EXISTS mapas_coordenada_key;
ALTER TABLE IF EXISTS ONLY public.horarios_recoleccion DROP CONSTRAINT IF EXISTS horarios_recoleccion_pkey;
ALTER TABLE IF EXISTS ONLY public.excepciones_recolecciones DROP CONSTRAINT IF EXISTS excepciones_recolecciones_pkey;
ALTER TABLE IF EXISTS ONLY public.sensor_estado_historial DROP CONSTRAINT IF EXISTS estados_pkey;
ALTER TABLE IF EXISTS ONLY public.django_session DROP CONSTRAINT IF EXISTS django_session_pkey;
ALTER TABLE IF EXISTS ONLY public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_pkey;
ALTER TABLE IF EXISTS ONLY public.direcciones DROP CONSTRAINT IF EXISTS direcciones_pkey;
ALTER TABLE IF EXISTS ONLY public.direcciones DROP CONSTRAINT IF EXISTS direcciones_coordenada_key;
ALTER TABLE IF EXISTS ONLY public.contenedores DROP CONSTRAINT IF EXISTS contenedores_pkey;
ALTER TABLE IF EXISTS ONLY public.contenedores DROP CONSTRAINT IF EXISTS contenedores_nombre_contenedor_id_mapa_key;
ALTER TABLE IF EXISTS ONLY public.contenedores DROP CONSTRAINT IF EXISTS contenedores_coordenda_key;
ALTER TABLE IF EXISTS ONLY public.categoria_residuos DROP CONSTRAINT IF EXISTS categoria_residuos_pkey;
ALTER TABLE IF EXISTS ONLY public.categoria_residuos DROP CONSTRAINT IF EXISTS categoria_residuos_color_hex_key;
ALTER TABLE IF EXISTS ONLY public.categoria_residuos DROP CONSTRAINT IF EXISTS categoria_residuos_categoria_key;
ALTER TABLE IF EXISTS ONLY public.categoria_noticias DROP CONSTRAINT IF EXISTS categoria_noticias_pkey;
ALTER TABLE IF EXISTS ONLY public.categoria_noticias DROP CONSTRAINT IF EXISTS categoria_noticias_color_hex_key;
ALTER TABLE IF EXISTS ONLY public.categoria_noticias DROP CONSTRAINT IF EXISTS categoria_noticias_categoria_key;
ALTER TABLE IF EXISTS ONLY public.calendarios DROP CONSTRAINT IF EXISTS calendarios_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user DROP CONSTRAINT IF EXISTS auth_user_username_key;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user DROP CONSTRAINT IF EXISTS auth_user_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_name_key;
ALTER TABLE IF EXISTS public.zonas ALTER COLUMN id_zona DROP DEFAULT;
ALTER TABLE IF EXISTS public.usuarios_tienen_notificaciones ALTER COLUMN id_usuario_notificacion DROP DEFAULT;
ALTER TABLE IF EXISTS public.usuarios_registro_contenedores ALTER COLUMN id_usuario_registro_contenedor DROP DEFAULT;
ALTER TABLE IF EXISTS public.usuarios_historiales_residuos ALTER COLUMN id_usuario_historial_residuos DROP DEFAULT;
ALTER TABLE IF EXISTS public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
ALTER TABLE IF EXISTS public.umbral_llenado ALTER COLUMN id_umbral_llenado DROP DEFAULT;
ALTER TABLE IF EXISTS public.tipo_usuarios ALTER COLUMN id_tipo_usuario DROP DEFAULT;
ALTER TABLE IF EXISTS public.sensores ALTER COLUMN id_sensor DROP DEFAULT;
ALTER TABLE IF EXISTS public.sensor_estados_tipos ALTER COLUMN id_sensor_estado_tipos DROP DEFAULT;
ALTER TABLE IF EXISTS public.sensor_estado_historial ALTER COLUMN id_estado DROP DEFAULT;
ALTER TABLE IF EXISTS public.residuos ALTER COLUMN id_residuo DROP DEFAULT;
ALTER TABLE IF EXISTS public.registro_recolecciones ALTER COLUMN id_registro_recoleccion DROP DEFAULT;
ALTER TABLE IF EXISTS public.notificaciones ALTER COLUMN id_notificacion DROP DEFAULT;
ALTER TABLE IF EXISTS public.medicion_sensores ALTER COLUMN id_medicion_sensor DROP DEFAULT;
ALTER TABLE IF EXISTS public.mapas ALTER COLUMN id_mapa DROP DEFAULT;
ALTER TABLE IF EXISTS public.horarios_recoleccion ALTER COLUMN id_horario_recoleccion DROP DEFAULT;
ALTER TABLE IF EXISTS public.excepciones_recolecciones ALTER COLUMN id_excepciones_recoleccion DROP DEFAULT;
ALTER TABLE IF EXISTS public.direcciones ALTER COLUMN id_direccion DROP DEFAULT;
ALTER TABLE IF EXISTS public.contenedores ALTER COLUMN id_contenedor DROP DEFAULT;
ALTER TABLE IF EXISTS public.categoria_residuos ALTER COLUMN id_categoria_residuo DROP DEFAULT;
ALTER TABLE IF EXISTS public.categoria_noticias ALTER COLUMN id_categoria_noticias DROP DEFAULT;
ALTER TABLE IF EXISTS public.calendarios ALTER COLUMN id_calendario DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.zonas_id_zona_seq;
DROP TABLE IF EXISTS public.zonas;
DROP SEQUENCE IF EXISTS public.usuarios_tienen_notificaciones_id_usuario_notificacion_seq;
DROP TABLE IF EXISTS public.usuarios_tienen_notificaciones;
DROP SEQUENCE IF EXISTS public.usuarios_registro_contenedore_id_usuario_registro_contenedo_seq;
DROP TABLE IF EXISTS public.usuarios_registro_contenedores;
DROP SEQUENCE IF EXISTS public.usuarios_id_usuario_seq;
DROP TABLE IF EXISTS public.usuarios;
DROP SEQUENCE IF EXISTS public.usuario_historiales_id_usuario_historial_seq;
DROP TABLE IF EXISTS public.usuarios_historiales_residuos;
DROP SEQUENCE IF EXISTS public.umbral_llenado_id_umbral_llenado_seq;
DROP TABLE IF EXISTS public.umbral_llenado;
DROP SEQUENCE IF EXISTS public.tipo_usuarios_id_tipo_usuario_seq;
DROP TABLE IF EXISTS public.tipo_usuarios;
DROP SEQUENCE IF EXISTS public.sensores_id_sensor_seq;
DROP TABLE IF EXISTS public.sensores;
DROP SEQUENCE IF EXISTS public.sensor_estados_tipos_id_sensor_estado_tipos_seq;
DROP TABLE IF EXISTS public.sensor_estados_tipos;
DROP SEQUENCE IF EXISTS public.residuos_id_residuo_seq;
DROP TABLE IF EXISTS public.residuos;
DROP SEQUENCE IF EXISTS public.registro_recolecciones_id_registro_recoleccion_seq;
DROP TABLE IF EXISTS public.registro_recolecciones;
DROP SEQUENCE IF EXISTS public.notificaciones_id_notificacion_seq;
DROP TABLE IF EXISTS public.notificaciones;
DROP SEQUENCE IF EXISTS public.medicion_sensores_id_medicion_sensor_seq;
DROP TABLE IF EXISTS public.medicion_sensores;
DROP SEQUENCE IF EXISTS public.mapas_id_mapa_seq;
DROP TABLE IF EXISTS public.mapas;
DROP SEQUENCE IF EXISTS public.horarios_recoleccion_id_horario_recoleccion_seq;
DROP TABLE IF EXISTS public.horarios_recoleccion;
DROP SEQUENCE IF EXISTS public.excepciones_recolecciones_id_excepciones_recoleccion_seq;
DROP TABLE IF EXISTS public.excepciones_recolecciones;
DROP SEQUENCE IF EXISTS public.estados_id_estado_seq;
DROP TABLE IF EXISTS public.sensor_estado_historial;
DROP TABLE IF EXISTS public.django_session;
DROP TABLE IF EXISTS public.django_migrations;
DROP TABLE IF EXISTS public.django_content_type;
DROP TABLE IF EXISTS public.django_admin_log;
DROP SEQUENCE IF EXISTS public.direcciones_id_direccion_seq;
DROP TABLE IF EXISTS public.direcciones;
DROP SEQUENCE IF EXISTS public.contenedores_id_contenedor_seq;
DROP TABLE IF EXISTS public.contenedores;
DROP SEQUENCE IF EXISTS public.categoria_residuos_id_categoria_residuo_seq;
DROP TABLE IF EXISTS public.categoria_residuos;
DROP SEQUENCE IF EXISTS public.categoria_noticias_id_categoria_noticias_seq;
DROP TABLE IF EXISTS public.categoria_noticias;
DROP SEQUENCE IF EXISTS public.calendarios_id_calendario_seq;
DROP TABLE IF EXISTS public.calendarios;
DROP TABLE IF EXISTS public.auth_user_user_permissions;
DROP TABLE IF EXISTS public.auth_user_groups;
DROP TABLE IF EXISTS public.auth_user;
DROP TABLE IF EXISTS public.auth_permission;
DROP TABLE IF EXISTS public.auth_group_permissions;
DROP TABLE IF EXISTS public.auth_group;
DROP EXTENSION IF EXISTS postgis;
--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "Crist";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "Crist";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "Crist";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.auth_user (
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


ALTER TABLE public.auth_user OWNER TO "Crist";

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "Crist";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "Crist";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: calendarios; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.calendarios (
    id_calendario integer NOT NULL,
    cuerpo text NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    titulo character varying(20) NOT NULL,
    duracion interval NOT NULL,
    subtitulo character varying(160),
    todo_el_dia boolean DEFAULT false NOT NULL,
    categoria_noticia integer NOT NULL,
    creado_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT calendarios_duracion_check CHECK ((duracion >= '00:30:00'::interval))
);


ALTER TABLE public.calendarios OWNER TO "Crist";

--
-- Name: calendarios_id_calendario_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.calendarios_id_calendario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.calendarios_id_calendario_seq OWNER TO "Crist";

--
-- Name: calendarios_id_calendario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.calendarios_id_calendario_seq OWNED BY public.calendarios.id_calendario;


--
-- Name: categoria_noticias; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.categoria_noticias (
    id_categoria_noticias integer NOT NULL,
    categoria character varying(60) NOT NULL,
    color_hex character(7) NOT NULL,
    CONSTRAINT categoria_noticias_color_hex_check CHECK ((color_hex ~ '^#[0-9A-Fa-f]{6}$'::text))
);


ALTER TABLE public.categoria_noticias OWNER TO "Crist";

--
-- Name: categoria_noticias_id_categoria_noticias_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.categoria_noticias_id_categoria_noticias_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_noticias_id_categoria_noticias_seq OWNER TO "Crist";

--
-- Name: categoria_noticias_id_categoria_noticias_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.categoria_noticias_id_categoria_noticias_seq OWNED BY public.categoria_noticias.id_categoria_noticias;


--
-- Name: categoria_residuos; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.categoria_residuos (
    id_categoria_residuo integer NOT NULL,
    categoria character varying(60) NOT NULL,
    color_hex character(7) NOT NULL,
    CONSTRAINT categoria_residuos_color_hex_check CHECK ((color_hex ~ '^#[0-9A-Fa-f]{6}$'::text))
);


ALTER TABLE public.categoria_residuos OWNER TO "Crist";

--
-- Name: categoria_residuos_id_categoria_residuo_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.categoria_residuos_id_categoria_residuo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_residuos_id_categoria_residuo_seq OWNER TO "Crist";

--
-- Name: categoria_residuos_id_categoria_residuo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.categoria_residuos_id_categoria_residuo_seq OWNED BY public.categoria_residuos.id_categoria_residuo;


--
-- Name: contenedores; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.contenedores (
    id_contenedor integer NOT NULL,
    nombre_contenedor character varying(50) NOT NULL,
    color_contenedor character varying(20) NOT NULL,
    capacidad_total numeric(8,2),
    fecha_instalacion date DEFAULT (now())::date,
    ultimo_vaciado timestamp without time zone,
    descripcion_ubicacion text,
    id_zona integer,
    id_residuo integer,
    id_mapa integer,
    coordenada public.geometry(Point,4326) NOT NULL,
    CONSTRAINT contenedores_coordenda_check CHECK (((public.geometrytype(coordenada) = 'POINT'::text) AND (public.st_srid(coordenada) = 4326)))
);


ALTER TABLE public.contenedores OWNER TO "Crist";

--
-- Name: contenedores_id_contenedor_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.contenedores_id_contenedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contenedores_id_contenedor_seq OWNER TO "Crist";

--
-- Name: contenedores_id_contenedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.contenedores_id_contenedor_seq OWNED BY public.contenedores.id_contenedor;


--
-- Name: direcciones; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.direcciones (
    id_direccion integer NOT NULL,
    calle character varying(100),
    numero character varying(10),
    barrio character varying(50),
    ciudad character varying(50),
    codigo_postal character varying(20),
    provincia character varying(100),
    pais character varying(50),
    coordenada public.geometry(Point,4326) NOT NULL,
    CONSTRAINT direcciones_coordenada_check CHECK (((public.geometrytype(coordenada) = 'POINT'::text) AND (public.st_srid(coordenada) = 4326)))
);


ALTER TABLE public.direcciones OWNER TO "Crist";

--
-- Name: direcciones_id_direccion_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.direcciones_id_direccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.direcciones_id_direccion_seq OWNER TO "Crist";

--
-- Name: direcciones_id_direccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.direcciones_id_direccion_seq OWNED BY public.direcciones.id_direccion;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO "Crist";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "Crist";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "Crist";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "Crist";

--
-- Name: sensor_estado_historial; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.sensor_estado_historial (
    id_estado integer NOT NULL,
    fecha_estado timestamp without time zone,
    id_sensor integer,
    id_sensor_estado_tipo integer
);


ALTER TABLE public.sensor_estado_historial OWNER TO "Crist";

--
-- Name: estados_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.estados_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estados_id_estado_seq OWNER TO "Crist";

--
-- Name: estados_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.estados_id_estado_seq OWNED BY public.sensor_estado_historial.id_estado;


--
-- Name: excepciones_recolecciones; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.excepciones_recolecciones (
    id_excepciones_recoleccion integer NOT NULL,
    fecha smallint NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone NOT NULL,
    tipo text NOT NULL,
    nueva_fecha date NOT NULL,
    nuevo_inicio time without time zone NOT NULL,
    nuevo_fin time without time zone NOT NULL,
    motivo text NOT NULL,
    id_horario_recoleccion integer,
    CONSTRAINT excepciones_recolecciones_check CHECK ((nuevo_fin > nuevo_inicio)),
    CONSTRAINT excepciones_recolecciones_fecha_check CHECK (((fecha >= 0) AND (fecha <= 6))),
    CONSTRAINT excepciones_recolecciones_tipo_check CHECK ((tipo = ANY (ARRAY['CANCELA'::text, 'AGREGA'::text, 'REEMPLAZA'::text, 'REPROGRAMA'::text])))
);


ALTER TABLE public.excepciones_recolecciones OWNER TO "Crist";

--
-- Name: excepciones_recolecciones_id_excepciones_recoleccion_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.excepciones_recolecciones_id_excepciones_recoleccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.excepciones_recolecciones_id_excepciones_recoleccion_seq OWNER TO "Crist";

--
-- Name: excepciones_recolecciones_id_excepciones_recoleccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.excepciones_recolecciones_id_excepciones_recoleccion_seq OWNED BY public.excepciones_recolecciones.id_excepciones_recoleccion;


--
-- Name: horarios_recoleccion; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.horarios_recoleccion (
    id_horario_recoleccion integer NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone NOT NULL,
    dia_semana smallint NOT NULL,
    id_zona integer,
    id_categoria_residuo integer,
    CONSTRAINT horarios_recoleccion_dia_semana_check CHECK (((dia_semana >= 0) AND (dia_semana <= 6))),
    CONSTRAINT horarios_recoleccion_hora_fin_check CHECK ((hora_fin < hora_fin))
);


ALTER TABLE public.horarios_recoleccion OWNER TO "Crist";

--
-- Name: horarios_recoleccion_id_horario_recoleccion_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.horarios_recoleccion_id_horario_recoleccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.horarios_recoleccion_id_horario_recoleccion_seq OWNER TO "Crist";

--
-- Name: horarios_recoleccion_id_horario_recoleccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.horarios_recoleccion_id_horario_recoleccion_seq OWNED BY public.horarios_recoleccion.id_horario_recoleccion;


--
-- Name: mapas; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.mapas (
    id_mapa integer NOT NULL,
    nombre_mapa character varying(50) NOT NULL,
    coordenada public.geometry(Geometry,4326) NOT NULL,
    CONSTRAINT mapas_coordenada_check CHECK (((public.geometrytype(coordenada) = ANY (ARRAY['POLYGON'::text, 'MULTIPOLYGON'::text])) AND (public.st_srid(coordenada) = 4326)))
);


ALTER TABLE public.mapas OWNER TO "Crist";

--
-- Name: mapas_id_mapa_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.mapas_id_mapa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mapas_id_mapa_seq OWNER TO "Crist";

--
-- Name: mapas_id_mapa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.mapas_id_mapa_seq OWNED BY public.mapas.id_mapa;


--
-- Name: medicion_sensores; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.medicion_sensores (
    id_medicion_sensor integer NOT NULL,
    fecha_hora_medicion timestamp without time zone NOT NULL,
    porcentaje_ocupacion numeric(5,2),
    volumen_medido numeric(8,2),
    alerta_generada boolean,
    id_sensor integer NOT NULL,
    id_contenedor integer NOT NULL
);


ALTER TABLE public.medicion_sensores OWNER TO "Crist";

--
-- Name: medicion_sensores_id_medicion_sensor_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.medicion_sensores_id_medicion_sensor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.medicion_sensores_id_medicion_sensor_seq OWNER TO "Crist";

--
-- Name: medicion_sensores_id_medicion_sensor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.medicion_sensores_id_medicion_sensor_seq OWNED BY public.medicion_sensores.id_medicion_sensor;


--
-- Name: notificaciones; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.notificaciones (
    id_notificacion integer NOT NULL,
    mensaje text NOT NULL,
    fecha_envio timestamp without time zone NOT NULL,
    tipo_notificacion character varying(30)
);


ALTER TABLE public.notificaciones OWNER TO "Crist";

--
-- Name: notificaciones_id_notificacion_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.notificaciones_id_notificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notificaciones_id_notificacion_seq OWNER TO "Crist";

--
-- Name: notificaciones_id_notificacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.notificaciones_id_notificacion_seq OWNED BY public.notificaciones.id_notificacion;


--
-- Name: registro_recolecciones; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.registro_recolecciones (
    id_registro_recoleccion integer NOT NULL,
    volumen numeric(8,2) NOT NULL,
    fecha_hora_recoleccion timestamp without time zone NOT NULL,
    observaciones text,
    id_contenedor integer NOT NULL,
    id_residuo integer NOT NULL,
    id_zona integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.registro_recolecciones OWNER TO "Crist";

--
-- Name: registro_recolecciones_id_registro_recoleccion_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.registro_recolecciones_id_registro_recoleccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.registro_recolecciones_id_registro_recoleccion_seq OWNER TO "Crist";

--
-- Name: registro_recolecciones_id_registro_recoleccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.registro_recolecciones_id_registro_recoleccion_seq OWNED BY public.registro_recolecciones.id_registro_recoleccion;


--
-- Name: residuos; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.residuos (
    id_residuo integer NOT NULL,
    nombre character varying(50) NOT NULL,
    imagen character varying(255),
    peso numeric(6,2),
    instruccion_reciclado text,
    descripcion text,
    id_categoria_residuos integer
);


ALTER TABLE public.residuos OWNER TO "Crist";

--
-- Name: residuos_id_residuo_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.residuos_id_residuo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.residuos_id_residuo_seq OWNER TO "Crist";

--
-- Name: residuos_id_residuo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.residuos_id_residuo_seq OWNED BY public.residuos.id_residuo;


--
-- Name: sensor_estados_tipos; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.sensor_estados_tipos (
    id_sensor_estado_tipos integer NOT NULL,
    estado character varying(60) NOT NULL,
    descripcion text NOT NULL,
    severidad smallint NOT NULL
);


ALTER TABLE public.sensor_estados_tipos OWNER TO "Crist";

--
-- Name: sensor_estados_tipos_id_sensor_estado_tipos_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.sensor_estados_tipos_id_sensor_estado_tipos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sensor_estados_tipos_id_sensor_estado_tipos_seq OWNER TO "Crist";

--
-- Name: sensor_estados_tipos_id_sensor_estado_tipos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.sensor_estados_tipos_id_sensor_estado_tipos_seq OWNED BY public.sensor_estados_tipos.id_sensor_estado_tipos;


--
-- Name: sensores; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.sensores (
    id_sensor integer NOT NULL,
    nombre_sensor character varying(50) NOT NULL,
    fecha_instalacion_sensor date,
    numero_serie character varying(100) NOT NULL,
    id_contenedor integer
);


ALTER TABLE public.sensores OWNER TO "Crist";

--
-- Name: sensores_id_sensor_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.sensores_id_sensor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sensores_id_sensor_seq OWNER TO "Crist";

--
-- Name: sensores_id_sensor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.sensores_id_sensor_seq OWNED BY public.sensores.id_sensor;


--
-- Name: tipo_usuarios; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.tipo_usuarios (
    id_tipo_usuario integer NOT NULL,
    tipo_usuario character varying(50) NOT NULL
);


ALTER TABLE public.tipo_usuarios OWNER TO "Crist";

--
-- Name: tipo_usuarios_id_tipo_usuario_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.tipo_usuarios_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipo_usuarios_id_tipo_usuario_seq OWNER TO "Crist";

--
-- Name: tipo_usuarios_id_tipo_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.tipo_usuarios_id_tipo_usuario_seq OWNED BY public.tipo_usuarios.id_tipo_usuario;


--
-- Name: umbral_llenado; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.umbral_llenado (
    id_umbral_llenado integer NOT NULL,
    bajo_max numeric(5,2) NOT NULL,
    medio_max numeric(5,2) NOT NULL,
    alto_max numeric(5,2) NOT NULL,
    CONSTRAINT umbral_llenado_check CHECK ((((0)::numeric <= bajo_max) AND (bajo_max < medio_max) AND (medio_max < alto_max) AND (alto_max <= (100)::numeric)))
);


ALTER TABLE public.umbral_llenado OWNER TO "Crist";

--
-- Name: umbral_llenado_id_umbral_llenado_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.umbral_llenado_id_umbral_llenado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.umbral_llenado_id_umbral_llenado_seq OWNER TO "Crist";

--
-- Name: umbral_llenado_id_umbral_llenado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.umbral_llenado_id_umbral_llenado_seq OWNED BY public.umbral_llenado.id_umbral_llenado;


--
-- Name: usuarios_historiales_residuos; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.usuarios_historiales_residuos (
    id_usuario_historial_residuos integer NOT NULL,
    cantidad_total numeric,
    unidad character varying(10),
    ultima_actualizacion timestamp without time zone,
    id_residuo integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.usuarios_historiales_residuos OWNER TO "Crist";

--
-- Name: usuario_historiales_id_usuario_historial_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.usuario_historiales_id_usuario_historial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_historiales_id_usuario_historial_seq OWNER TO "Crist";

--
-- Name: usuario_historiales_id_usuario_historial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.usuario_historiales_id_usuario_historial_seq OWNED BY public.usuarios_historiales_residuos.id_usuario_historial_residuos;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(50) NOT NULL,
    apellido_usuario character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    id_direccion integer,
    id_zona integer,
    id_tipo_usuario integer,
    user_id integer
);


ALTER TABLE public.usuarios OWNER TO "Crist";

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO "Crist";

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- Name: usuarios_registro_contenedores; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.usuarios_registro_contenedores (
    id_usuario_registro_contenedor integer NOT NULL,
    nota_usuario_contenedor text,
    id_usuario integer NOT NULL,
    id_contenedor integer NOT NULL
);


ALTER TABLE public.usuarios_registro_contenedores OWNER TO "Crist";

--
-- Name: usuarios_registro_contenedore_id_usuario_registro_contenedo_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.usuarios_registro_contenedore_id_usuario_registro_contenedo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_registro_contenedore_id_usuario_registro_contenedo_seq OWNER TO "Crist";

--
-- Name: usuarios_registro_contenedore_id_usuario_registro_contenedo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.usuarios_registro_contenedore_id_usuario_registro_contenedo_seq OWNED BY public.usuarios_registro_contenedores.id_usuario_registro_contenedor;


--
-- Name: usuarios_tienen_notificaciones; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.usuarios_tienen_notificaciones (
    id_usuario_notificacion integer NOT NULL,
    leido boolean DEFAULT false,
    fecha_recibido timestamp without time zone,
    id_usuario integer NOT NULL,
    id_notificaciones integer NOT NULL
);


ALTER TABLE public.usuarios_tienen_notificaciones OWNER TO "Crist";

--
-- Name: usuarios_tienen_notificaciones_id_usuario_notificacion_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.usuarios_tienen_notificaciones_id_usuario_notificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_tienen_notificaciones_id_usuario_notificacion_seq OWNER TO "Crist";

--
-- Name: usuarios_tienen_notificaciones_id_usuario_notificacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.usuarios_tienen_notificaciones_id_usuario_notificacion_seq OWNED BY public.usuarios_tienen_notificaciones.id_usuario_notificacion;


--
-- Name: zonas; Type: TABLE; Schema: public; Owner: Crist
--

CREATE TABLE public.zonas (
    id_zona integer NOT NULL,
    nombre_zona character varying(50),
    color_zona character varying(20),
    id_mapa integer,
    id_calendario integer,
    coordenada public.geometry(MultiPolygon,4326) NOT NULL,
    CONSTRAINT zonas_coordenada_check CHECK (((public.geometrytype(coordenada) = 'MULTIPOLYGON'::text) AND (public.st_srid(coordenada) = 4326)))
);


ALTER TABLE public.zonas OWNER TO "Crist";

--
-- Name: zonas_id_zona_seq; Type: SEQUENCE; Schema: public; Owner: Crist
--

CREATE SEQUENCE public.zonas_id_zona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zonas_id_zona_seq OWNER TO "Crist";

--
-- Name: zonas_id_zona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Crist
--

ALTER SEQUENCE public.zonas_id_zona_seq OWNED BY public.zonas.id_zona;


--
-- Name: calendarios id_calendario; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.calendarios ALTER COLUMN id_calendario SET DEFAULT nextval('public.calendarios_id_calendario_seq'::regclass);


--
-- Name: categoria_noticias id_categoria_noticias; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_noticias ALTER COLUMN id_categoria_noticias SET DEFAULT nextval('public.categoria_noticias_id_categoria_noticias_seq'::regclass);


--
-- Name: categoria_residuos id_categoria_residuo; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_residuos ALTER COLUMN id_categoria_residuo SET DEFAULT nextval('public.categoria_residuos_id_categoria_residuo_seq'::regclass);


--
-- Name: contenedores id_contenedor; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.contenedores ALTER COLUMN id_contenedor SET DEFAULT nextval('public.contenedores_id_contenedor_seq'::regclass);


--
-- Name: direcciones id_direccion; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.direcciones ALTER COLUMN id_direccion SET DEFAULT nextval('public.direcciones_id_direccion_seq'::regclass);


--
-- Name: excepciones_recolecciones id_excepciones_recoleccion; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.excepciones_recolecciones ALTER COLUMN id_excepciones_recoleccion SET DEFAULT nextval('public.excepciones_recolecciones_id_excepciones_recoleccion_seq'::regclass);


--
-- Name: horarios_recoleccion id_horario_recoleccion; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.horarios_recoleccion ALTER COLUMN id_horario_recoleccion SET DEFAULT nextval('public.horarios_recoleccion_id_horario_recoleccion_seq'::regclass);


--
-- Name: mapas id_mapa; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.mapas ALTER COLUMN id_mapa SET DEFAULT nextval('public.mapas_id_mapa_seq'::regclass);


--
-- Name: medicion_sensores id_medicion_sensor; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.medicion_sensores ALTER COLUMN id_medicion_sensor SET DEFAULT nextval('public.medicion_sensores_id_medicion_sensor_seq'::regclass);


--
-- Name: notificaciones id_notificacion; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.notificaciones ALTER COLUMN id_notificacion SET DEFAULT nextval('public.notificaciones_id_notificacion_seq'::regclass);


--
-- Name: registro_recolecciones id_registro_recoleccion; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.registro_recolecciones ALTER COLUMN id_registro_recoleccion SET DEFAULT nextval('public.registro_recolecciones_id_registro_recoleccion_seq'::regclass);


--
-- Name: residuos id_residuo; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.residuos ALTER COLUMN id_residuo SET DEFAULT nextval('public.residuos_id_residuo_seq'::regclass);


--
-- Name: sensor_estado_historial id_estado; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensor_estado_historial ALTER COLUMN id_estado SET DEFAULT nextval('public.estados_id_estado_seq'::regclass);


--
-- Name: sensor_estados_tipos id_sensor_estado_tipos; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensor_estados_tipos ALTER COLUMN id_sensor_estado_tipos SET DEFAULT nextval('public.sensor_estados_tipos_id_sensor_estado_tipos_seq'::regclass);


--
-- Name: sensores id_sensor; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensores ALTER COLUMN id_sensor SET DEFAULT nextval('public.sensores_id_sensor_seq'::regclass);


--
-- Name: tipo_usuarios id_tipo_usuario; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.tipo_usuarios ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public.tipo_usuarios_id_tipo_usuario_seq'::regclass);


--
-- Name: umbral_llenado id_umbral_llenado; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.umbral_llenado ALTER COLUMN id_umbral_llenado SET DEFAULT nextval('public.umbral_llenado_id_umbral_llenado_seq'::regclass);


--
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- Name: usuarios_historiales_residuos id_usuario_historial_residuos; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_historiales_residuos ALTER COLUMN id_usuario_historial_residuos SET DEFAULT nextval('public.usuario_historiales_id_usuario_historial_seq'::regclass);


--
-- Name: usuarios_registro_contenedores id_usuario_registro_contenedor; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_registro_contenedores ALTER COLUMN id_usuario_registro_contenedor SET DEFAULT nextval('public.usuarios_registro_contenedore_id_usuario_registro_contenedo_seq'::regclass);


--
-- Name: usuarios_tienen_notificaciones id_usuario_notificacion; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_tienen_notificaciones ALTER COLUMN id_usuario_notificacion SET DEFAULT nextval('public.usuarios_tienen_notificaciones_id_usuario_notificacion_seq'::regclass);


--
-- Name: zonas id_zona; Type: DEFAULT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.zonas ALTER COLUMN id_zona SET DEFAULT nextval('public.zonas_id_zona_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add calendarios	6	add_calendarios
22	Can change calendarios	6	change_calendarios
23	Can delete calendarios	6	delete_calendarios
24	Can view calendarios	6	view_calendarios
25	Can add contenedores	7	add_contenedores
26	Can change contenedores	7	change_contenedores
27	Can delete contenedores	7	delete_contenedores
28	Can view contenedores	7	view_contenedores
29	Can add coordenadas	8	add_coordenadas
30	Can change coordenadas	8	change_coordenadas
31	Can delete coordenadas	8	delete_coordenadas
32	Can view coordenadas	8	view_coordenadas
33	Can add estados	9	add_estados
34	Can change estados	9	change_estados
35	Can delete estados	9	delete_estados
36	Can view estados	9	view_estados
37	Can add mapas	10	add_mapas
38	Can change mapas	10	change_mapas
39	Can delete mapas	10	delete_mapas
40	Can view mapas	10	view_mapas
41	Can add medicion sensores	11	add_medicionsensores
42	Can change medicion sensores	11	change_medicionsensores
43	Can delete medicion sensores	11	delete_medicionsensores
44	Can view medicion sensores	11	view_medicionsensores
45	Can add notificaciones	12	add_notificaciones
46	Can change notificaciones	12	change_notificaciones
47	Can delete notificaciones	12	delete_notificaciones
48	Can view notificaciones	12	view_notificaciones
49	Can add registro recolecciones	13	add_registrorecolecciones
50	Can change registro recolecciones	13	change_registrorecolecciones
51	Can delete registro recolecciones	13	delete_registrorecolecciones
52	Can view registro recolecciones	13	view_registrorecolecciones
53	Can add residuos	14	add_residuos
54	Can change residuos	14	change_residuos
55	Can delete residuos	14	delete_residuos
56	Can view residuos	14	view_residuos
57	Can add sensores	15	add_sensores
58	Can change sensores	15	change_sensores
59	Can delete sensores	15	delete_sensores
60	Can view sensores	15	view_sensores
61	Can add spatial ref sys	16	add_spatialrefsys
62	Can change spatial ref sys	16	change_spatialrefsys
63	Can delete spatial ref sys	16	delete_spatialrefsys
64	Can view spatial ref sys	16	view_spatialrefsys
65	Can add tipo estados	17	add_tipoestados
66	Can change tipo estados	17	change_tipoestados
67	Can delete tipo estados	17	delete_tipoestados
68	Can view tipo estados	17	view_tipoestados
69	Can add usuarios historiales residuos	18	add_usuarioshistorialesresiduos
70	Can change usuarios historiales residuos	18	change_usuarioshistorialesresiduos
71	Can delete usuarios historiales residuos	18	delete_usuarioshistorialesresiduos
72	Can view usuarios historiales residuos	18	view_usuarioshistorialesresiduos
73	Can add usuarios registro contenedores	19	add_usuariosregistrocontenedores
74	Can change usuarios registro contenedores	19	change_usuariosregistrocontenedores
75	Can delete usuarios registro contenedores	19	delete_usuariosregistrocontenedores
76	Can view usuarios registro contenedores	19	view_usuariosregistrocontenedores
77	Can add usuarios tienen notificaciones	20	add_usuariostienennotificaciones
78	Can change usuarios tienen notificaciones	20	change_usuariostienennotificaciones
79	Can delete usuarios tienen notificaciones	20	delete_usuariostienennotificaciones
80	Can view usuarios tienen notificaciones	20	view_usuariostienennotificaciones
81	Can add usuarios	21	add_usuarios
82	Can change usuarios	21	change_usuarios
83	Can delete usuarios	21	delete_usuarios
84	Can view usuarios	21	view_usuarios
85	Can add direcciones	22	add_direcciones
86	Can change direcciones	22	change_direcciones
87	Can delete direcciones	22	delete_direcciones
88	Can view direcciones	22	view_direcciones
89	Can add zonas	23	add_zonas
90	Can change zonas	23	change_zonas
91	Can delete zonas	23	delete_zonas
92	Can view zonas	23	view_zonas
93	Can add tipo usuarios	24	add_tipousuarios
94	Can change tipo usuarios	24	change_tipousuarios
95	Can delete tipo usuarios	24	delete_tipousuarios
96	Can view tipo usuarios	24	view_tipousuarios
97	Can add session	25	add_session
98	Can change session	25	change_session
99	Can delete session	25	delete_session
100	Can view session	25	view_session
101	Can add categoria noticias	26	add_categorianoticias
102	Can change categoria noticias	26	change_categorianoticias
103	Can delete categoria noticias	26	delete_categorianoticias
104	Can view categoria noticias	26	view_categorianoticias
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1000000$vsfIQciJjSQfbBHuglKo62$N3tPVHinbBS2tDCQoNSBaIlXZtJSCBLyGILY9QJJHtw=	2025-08-15 12:50:39.561484-03	t	cristina			cristin@gmail.com	t	t	2025-08-15 12:45:35.785116-03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: calendarios; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.calendarios (id_calendario, cuerpo, fecha, hora, titulo, duracion, subtitulo, todo_el_dia, categoria_noticia, creado_at) FROM stdin;
13	prueba novedad	2025-08-17	01:02:00	REFACCION CONTENEDOR	00:30:00	\N	f	1	2025-10-24 17:46:55.103879-03
21	prueba fecha vieja 6	2025-05-15	02:03:00	NUEVO CONTENEDOR	00:50:00	\N	t	4	2025-10-24 17:46:55.103879-03
17	prueba fecha vieja 2	2025-04-09	00:03:00	NUEVO EVENTO	02:00:00	\N	f	2	2025-10-24 17:46:55.103879-03
19	prueba fecha vieja 4	2024-11-19	02:03:00	RECOLECCION	04:00:00	\N	f	3	2025-10-24 17:46:55.103879-03
18	prueba fecha vieja 3	2025-02-20	02:03:00	CAMBIO RUTA	01:00:00	\N	f	1	2025-10-24 17:46:55.103879-03
20	prueba fecha vieja 5	2024-10-18	02:03:00	CAMBIO CONTENEDOR	00:40:00	\N	f	1	2025-10-24 17:46:55.103879-03
16	Prueba fecha vieja	2025-06-13	12:03:00	CAMBIO HORARIOS	02:00:00	\N	f	1	2025-10-24 17:46:55.103879-03
22	El equipo de residuos realizará tareas de refacción del contenedor de orgánicos, incluyendo limpieza profunda, reposición de tapas y refuerzo de anclajes.\n\nSe recomienda evitar depositar residuos entre las 10:00 y 11:30 para facilitar el trabajo. El tránsito puede verse reducido de manera temporal.\n\nConsejo: programá un recordatorio para sacar los residuos después de las 11:30.\nAnte condiciones climáticas adversas, se reprogramará para el siguiente día hábil a la misma hora.	2025-10-23	20:50:49	Refacción contenedor	01:30:00	Mantenimiento y reubicación para mejorar la accesibilidad.	f	3	2025-10-24 17:46:55.103879-03
15	probando novedad que choca horario 01:02:00 y diferente fecha	2025-08-21	01:02:00	CAMBIO RECORRIDO	03:00:00	\N	f	1	2025-10-24 17:46:55.103879-03
14	prueba novedad pm	2025-08-17	13:02:00	CAMBIO CONTENEDOR	01:00:00	\N	f	1	2025-10-24 17:46:55.103879-03
23	prueba3 en 1, este es 1	2025-11-29	17:44:17	Prueba 1	01:00:00	\N	f	1	2025-11-29 17:44:55.342801-03
24	prueba 3 en 1, este es 2	2025-11-29	17:45:15	prueba2	02:00:00	\N	f	2	2025-11-29 17:45:52.175347-03
25	prueba 3 en 1, este es 3	2025-11-29	17:45:40	prueba3	01:30:00	\N	f	3	2025-11-29 17:45:52.175347-03
\.


--
-- Data for Name: categoria_noticias; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.categoria_noticias (id_categoria_noticias, categoria, color_hex) FROM stdin;
1	Anuncio	#F59E0B
2	Evento	#3B82F6
3	Recolección	#22C55E
4	Noticia	#8B5CF6
5	Alerta	#EF4444
6	Mantenimiento	#F97316
7	Feriados	#9CA3AF
8	Cambio de recorrido	#06B6D4
\.


--
-- Data for Name: categoria_residuos; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.categoria_residuos (id_categoria_residuo, categoria, color_hex) FROM stdin;
2	Orgánicos	#451A03
3	Papeles	#1E3A8A
4	Envases	#EAB308
5	Vidrios	#065F46
6	Pesados	#374151
7	Especiales	#C2410C
8	Riesgosos	#7F1D1D
\.


--
-- Data for Name: contenedores; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.contenedores (id_contenedor, nombre_contenedor, color_contenedor, capacidad_total, fecha_instalacion, ultimo_vaciado, descripcion_ubicacion, id_zona, id_residuo, id_mapa, coordenada) FROM stdin;
7	Contenedor 01	rojo	\N	2025-12-06	\N	\N	\N	1	\N	0101000020E6100000CA61FEA5AE1551C00546DB45E2694BC0
8	Contenedor 02	verde	\N	2025-12-08	\N	\N	\N	2	\N	0101000020E61000006A05DC9CB51551C0B54609F4E0694BC0
9	Contenedor 03	gris	\N	2025-12-08	\N	\N	\N	3	\N	0101000020E6100000699C6302921551C030101DB3B7694BC0
\.


--
-- Data for Name: direcciones; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.direcciones (id_direccion, calle, numero, barrio, ciudad, codigo_postal, provincia, pais, coordenada) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	apiApp	calendarios
7	apiApp	contenedores
8	apiApp	coordenadas
9	apiApp	estados
10	apiApp	mapas
11	apiApp	medicionsensores
12	apiApp	notificaciones
13	apiApp	registrorecolecciones
14	apiApp	residuos
15	apiApp	sensores
16	apiApp	spatialrefsys
17	apiApp	tipoestados
18	apiApp	usuarioshistorialesresiduos
19	apiApp	usuariosregistrocontenedores
20	apiApp	usuariostienennotificaciones
21	apiApp	usuarios
22	apiApp	direcciones
23	apiApp	zonas
24	apiApp	tipousuarios
25	sessions	session
26	apiApp	categorianoticias
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-08-15 00:35:32.435314-03
2	auth	0001_initial	2025-08-15 00:35:32.472078-03
3	admin	0001_initial	2025-08-15 00:35:32.479229-03
4	admin	0002_logentry_remove_auto_add	2025-08-15 00:35:32.481444-03
5	admin	0003_logentry_add_action_flag_choices	2025-08-15 00:35:32.483357-03
6	apiApp	0001_initial	2025-08-15 00:39:00.74386-03
7	contenttypes	0002_remove_content_type_name	2025-08-15 00:43:58.751403-03
8	auth	0002_alter_permission_name_max_length	2025-08-15 00:43:58.753935-03
9	auth	0003_alter_user_email_max_length	2025-08-15 00:43:58.756088-03
10	auth	0004_alter_user_username_opts	2025-08-15 00:43:58.758148-03
11	auth	0005_alter_user_last_login_null	2025-08-15 00:43:58.760193-03
12	auth	0006_require_contenttypes_0002	2025-08-15 00:43:58.760524-03
13	auth	0007_alter_validators_add_error_messages	2025-08-15 00:43:58.762537-03
14	auth	0008_alter_user_username_max_length	2025-08-15 00:43:58.768879-03
15	auth	0009_alter_user_last_name_max_length	2025-08-15 00:43:58.770994-03
16	auth	0010_alter_group_name_max_length	2025-08-15 00:43:58.775763-03
17	auth	0011_update_proxy_permissions	2025-08-15 00:43:58.7794-03
18	auth	0012_alter_user_first_name_max_length	2025-08-15 00:43:58.781415-03
19	sessions	0001_initial	2025-08-15 00:43:58.785922-03
20	apiApp	0002_alter_usuarios_user	2025-08-18 12:06:01.451218-03
21	apiApp	0003_alter_usuarios_email	2025-10-03 20:33:15.307511-03
22	apiApp	0004_add_calendarios_titulo	2025-10-20 19:59:44.083304-03
23	apiApp	0005_calendarios_upgrade	2025-10-24 18:01:03.846294-03
24	apiApp	0006_categorianoticias	2025-11-24 18:14:02.031476-03
25	apiApp	0007_delete_coordenadas_delete_spatialrefsys	2025-12-06 20:26:07.854914-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
g7xzjt84qpsjwpp6lz9myvxkxinljiz7	.eJxVjMsOgjAQRf-la9PQAkN16Z5vaObRsagpCYWV8d-VhIVu7znnvkzEbc1xq2mJk5iLceb0uxHyI5UdyB3LbbY8l3WZyO6KPWi14yzpeT3cv4OMNX_r0HiW4LFB0aFroCWvTEisAtjTOTAACLS99AMmCKgQFFmdE-2SJ_P-AAs_OU8:1umwhT:hhea00Czz5ShCn5awtCiEpDS85D8aLnEDdKxR2vLBd0	2025-08-29 12:50:39.563617-03
\.


--
-- Data for Name: excepciones_recolecciones; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.excepciones_recolecciones (id_excepciones_recoleccion, fecha, hora_inicio, hora_fin, tipo, nueva_fecha, nuevo_inicio, nuevo_fin, motivo, id_horario_recoleccion) FROM stdin;
\.


--
-- Data for Name: horarios_recoleccion; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.horarios_recoleccion (id_horario_recoleccion, hora_inicio, hora_fin, dia_semana, id_zona, id_categoria_residuo) FROM stdin;
\.


--
-- Data for Name: mapas; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.mapas (id_mapa, nombre_mapa, coordenada) FROM stdin;
\.


--
-- Data for Name: medicion_sensores; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.medicion_sensores (id_medicion_sensor, fecha_hora_medicion, porcentaje_ocupacion, volumen_medido, alerta_generada, id_sensor, id_contenedor) FROM stdin;
\.


--
-- Data for Name: notificaciones; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.notificaciones (id_notificacion, mensaje, fecha_envio, tipo_notificacion) FROM stdin;
\.


--
-- Data for Name: registro_recolecciones; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.registro_recolecciones (id_registro_recoleccion, volumen, fecha_hora_recoleccion, observaciones, id_contenedor, id_residuo, id_zona, id_usuario) FROM stdin;
\.


--
-- Data for Name: residuos; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.residuos (id_residuo, nombre, imagen, peso, instruccion_reciclado, descripcion, id_categoria_residuos) FROM stdin;
6	Electrónicos	\N	0.15	No tirar en contenedores comunes. Llevar a puntos especiales de reciclaje.	Aparatos eléctricos y electrónicos en desuso.	7
11	Sanitarios	\N	0.05	Manipular con cuidado. Llevar a centros de gestión sanitaria autorizados.	Material médico descartable, jeringas, gasas, y otros residuos hospitalarios	8
2	Papel y Cartón	\N	0.03	Mantener seco y limpio para reciclar.	Papel de diario, revistas, cartones y cajas para reciclar.	3
9	Voluminosos	\N	0.20	No tirar en contenedores comunes. Llevar a puntos de recolección específicos.	Muebles, electrodomésticos, grandes, colchones, y otros objetos voluminosos.	6
7	Textiles	\N	0.08	Ropa y telas limpias para reciclaje o donación.	Ropa, telas y calzado para reciclar o reutilizar.	7
1	Plastico	\N	0.02	Lavar y secar antes de reciclar. No incluir plásticos contaminados con alimentos o químicos.	Envases y objetos de plástico que pueden ser reciclados, como botellas, bolsas y recipientes.	4
3	Vidrio	\N	0.05	No romper botellas. Lavar antes de reciclar.	Botellas y frascos de vidrio reciclables.	5
5	Orgánico	\N	0.10	Separar restos de comida y materia biodegradable.	Residuos biodegradables y restos de alimentos.	2
10	Construcción y demolición	\N	0.25	No mezclar con residuos domésticos. Llevar a centros especializados.	Escombos, restos de obras, materiales como ladrillos, cemento, yeso.	6
8	Peligrosos	\N	0.01	Llevar a puntos especiales. No mezclar con otros residuos.	Pilas, baterías, medicamentos y productos químicos.	8
4	Metales	\N	0.04	Vaciar y limpiar latas.	Latas de aluminio, latas de conserva y otros metales reciclables.	4
\.


--
-- Data for Name: sensor_estado_historial; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.sensor_estado_historial (id_estado, fecha_estado, id_sensor, id_sensor_estado_tipo) FROM stdin;
\.


--
-- Data for Name: sensor_estados_tipos; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.sensor_estados_tipos (id_sensor_estado_tipos, estado, descripcion, severidad) FROM stdin;
\.


--
-- Data for Name: sensores; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.sensores (id_sensor, nombre_sensor, fecha_instalacion_sensor, numero_serie, id_contenedor) FROM stdin;
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: tipo_usuarios; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.tipo_usuarios (id_tipo_usuario, tipo_usuario) FROM stdin;
1	usuario
2	recolector
3	administrativo
\.


--
-- Data for Name: umbral_llenado; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.umbral_llenado (id_umbral_llenado, bajo_max, medio_max, alto_max) FROM stdin;
1	25.00	55.00	80.00
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.usuarios (id_usuario, nombre_usuario, apellido_usuario, email, id_direccion, id_zona, id_tipo_usuario, user_id) FROM stdin;
1	prueba nombre	prueba apellido	prueba@gmail.com	\N	\N	1	\N
2	nombre uno	apellido uno	email@gmail.com	\N	\N	\N	\N
3	Cristian	Maidana	cristian@gmail.com	\N	\N	1	\N
\.


--
-- Data for Name: usuarios_historiales_residuos; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.usuarios_historiales_residuos (id_usuario_historial_residuos, cantidad_total, unidad, ultima_actualizacion, id_residuo, id_usuario) FROM stdin;
\.


--
-- Data for Name: usuarios_registro_contenedores; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.usuarios_registro_contenedores (id_usuario_registro_contenedor, nota_usuario_contenedor, id_usuario, id_contenedor) FROM stdin;
\.


--
-- Data for Name: usuarios_tienen_notificaciones; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.usuarios_tienen_notificaciones (id_usuario_notificacion, leido, fecha_recibido, id_usuario, id_notificaciones) FROM stdin;
\.


--
-- Data for Name: zonas; Type: TABLE DATA; Schema: public; Owner: Crist
--

COPY public.zonas (id_zona, nombre_zona, color_zona, id_mapa, id_calendario, coordenada) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: calendarios_id_calendario_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.calendarios_id_calendario_seq', 25, true);


--
-- Name: categoria_noticias_id_categoria_noticias_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.categoria_noticias_id_categoria_noticias_seq', 8, true);


--
-- Name: categoria_residuos_id_categoria_residuo_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.categoria_residuos_id_categoria_residuo_seq', 8, true);


--
-- Name: contenedores_id_contenedor_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.contenedores_id_contenedor_seq', 9, true);


--
-- Name: direcciones_id_direccion_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.direcciones_id_direccion_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: estados_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.estados_id_estado_seq', 1, false);


--
-- Name: excepciones_recolecciones_id_excepciones_recoleccion_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.excepciones_recolecciones_id_excepciones_recoleccion_seq', 1, false);


--
-- Name: horarios_recoleccion_id_horario_recoleccion_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.horarios_recoleccion_id_horario_recoleccion_seq', 1, false);


--
-- Name: mapas_id_mapa_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.mapas_id_mapa_seq', 1, false);


--
-- Name: medicion_sensores_id_medicion_sensor_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.medicion_sensores_id_medicion_sensor_seq', 1, false);


--
-- Name: notificaciones_id_notificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.notificaciones_id_notificacion_seq', 1, false);


--
-- Name: registro_recolecciones_id_registro_recoleccion_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.registro_recolecciones_id_registro_recoleccion_seq', 1, false);


--
-- Name: residuos_id_residuo_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.residuos_id_residuo_seq', 17, true);


--
-- Name: sensor_estados_tipos_id_sensor_estado_tipos_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.sensor_estados_tipos_id_sensor_estado_tipos_seq', 1, false);


--
-- Name: sensores_id_sensor_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.sensores_id_sensor_seq', 1, false);


--
-- Name: tipo_usuarios_id_tipo_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.tipo_usuarios_id_tipo_usuario_seq', 3, true);


--
-- Name: umbral_llenado_id_umbral_llenado_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.umbral_llenado_id_umbral_llenado_seq', 1, true);


--
-- Name: usuario_historiales_id_usuario_historial_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.usuario_historiales_id_usuario_historial_seq', 1, false);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 4, true);


--
-- Name: usuarios_registro_contenedore_id_usuario_registro_contenedo_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.usuarios_registro_contenedore_id_usuario_registro_contenedo_seq', 1, false);


--
-- Name: usuarios_tienen_notificaciones_id_usuario_notificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.usuarios_tienen_notificaciones_id_usuario_notificacion_seq', 1, false);


--
-- Name: zonas_id_zona_seq; Type: SEQUENCE SET; Schema: public; Owner: Crist
--

SELECT pg_catalog.setval('public.zonas_id_zona_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: calendarios calendarios_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.calendarios
    ADD CONSTRAINT calendarios_pkey PRIMARY KEY (id_calendario);


--
-- Name: categoria_noticias categoria_noticias_categoria_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_noticias
    ADD CONSTRAINT categoria_noticias_categoria_key UNIQUE (categoria);


--
-- Name: categoria_noticias categoria_noticias_color_hex_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_noticias
    ADD CONSTRAINT categoria_noticias_color_hex_key UNIQUE (color_hex);


--
-- Name: categoria_noticias categoria_noticias_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_noticias
    ADD CONSTRAINT categoria_noticias_pkey PRIMARY KEY (id_categoria_noticias);


--
-- Name: categoria_residuos categoria_residuos_categoria_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_residuos
    ADD CONSTRAINT categoria_residuos_categoria_key UNIQUE (categoria);


--
-- Name: categoria_residuos categoria_residuos_color_hex_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_residuos
    ADD CONSTRAINT categoria_residuos_color_hex_key UNIQUE (color_hex);


--
-- Name: categoria_residuos categoria_residuos_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.categoria_residuos
    ADD CONSTRAINT categoria_residuos_pkey PRIMARY KEY (id_categoria_residuo);


--
-- Name: contenedores contenedores_coordenda_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.contenedores
    ADD CONSTRAINT contenedores_coordenda_key UNIQUE (coordenada);


--
-- Name: contenedores contenedores_nombre_contenedor_id_mapa_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.contenedores
    ADD CONSTRAINT contenedores_nombre_contenedor_id_mapa_key UNIQUE (nombre_contenedor, id_mapa);


--
-- Name: contenedores contenedores_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.contenedores
    ADD CONSTRAINT contenedores_pkey PRIMARY KEY (id_contenedor);


--
-- Name: direcciones direcciones_coordenada_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.direcciones
    ADD CONSTRAINT direcciones_coordenada_key UNIQUE (coordenada);


--
-- Name: direcciones direcciones_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.direcciones
    ADD CONSTRAINT direcciones_pkey PRIMARY KEY (id_direccion);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: sensor_estado_historial estados_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensor_estado_historial
    ADD CONSTRAINT estados_pkey PRIMARY KEY (id_estado);


--
-- Name: excepciones_recolecciones excepciones_recolecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.excepciones_recolecciones
    ADD CONSTRAINT excepciones_recolecciones_pkey PRIMARY KEY (id_excepciones_recoleccion);


--
-- Name: horarios_recoleccion horarios_recoleccion_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.horarios_recoleccion
    ADD CONSTRAINT horarios_recoleccion_pkey PRIMARY KEY (id_horario_recoleccion);


--
-- Name: mapas mapas_coordenada_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.mapas
    ADD CONSTRAINT mapas_coordenada_key UNIQUE (coordenada);


--
-- Name: mapas mapas_nombre_mapa_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.mapas
    ADD CONSTRAINT mapas_nombre_mapa_key UNIQUE (nombre_mapa);


--
-- Name: mapas mapas_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.mapas
    ADD CONSTRAINT mapas_pkey PRIMARY KEY (id_mapa);


--
-- Name: medicion_sensores medicion_sensores_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.medicion_sensores
    ADD CONSTRAINT medicion_sensores_pkey PRIMARY KEY (id_medicion_sensor);


--
-- Name: notificaciones notificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_pkey PRIMARY KEY (id_notificacion);


--
-- Name: registro_recolecciones registro_recolecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.registro_recolecciones
    ADD CONSTRAINT registro_recolecciones_pkey PRIMARY KEY (id_registro_recoleccion);


--
-- Name: residuos residuos_nombre_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.residuos
    ADD CONSTRAINT residuos_nombre_key UNIQUE (nombre);


--
-- Name: residuos residuos_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.residuos
    ADD CONSTRAINT residuos_pkey PRIMARY KEY (id_residuo);


--
-- Name: sensor_estados_tipos sensor_estados_tipos_estado_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensor_estados_tipos
    ADD CONSTRAINT sensor_estados_tipos_estado_key UNIQUE (estado);


--
-- Name: sensor_estados_tipos sensor_estados_tipos_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensor_estados_tipos
    ADD CONSTRAINT sensor_estados_tipos_pkey PRIMARY KEY (id_sensor_estado_tipos);


--
-- Name: sensores sensores_id_contenedor_nombre_sensor_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensores
    ADD CONSTRAINT sensores_id_contenedor_nombre_sensor_key UNIQUE (id_contenedor, nombre_sensor);


--
-- Name: sensores sensores_numero_serie_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensores
    ADD CONSTRAINT sensores_numero_serie_key UNIQUE (numero_serie);


--
-- Name: sensores sensores_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensores
    ADD CONSTRAINT sensores_pkey PRIMARY KEY (id_sensor);


--
-- Name: tipo_usuarios tipo_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.tipo_usuarios
    ADD CONSTRAINT tipo_usuarios_pkey PRIMARY KEY (id_tipo_usuario);


--
-- Name: tipo_usuarios tipo_usuarios_tipo_usuario_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.tipo_usuarios
    ADD CONSTRAINT tipo_usuarios_tipo_usuario_key UNIQUE (tipo_usuario);


--
-- Name: umbral_llenado umbral_llenado_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.umbral_llenado
    ADD CONSTRAINT umbral_llenado_pkey PRIMARY KEY (id_umbral_llenado);


--
-- Name: usuarios_historiales_residuos usuario_historiales_id_usuario_id_residuo_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_historiales_residuos
    ADD CONSTRAINT usuario_historiales_id_usuario_id_residuo_key UNIQUE (id_usuario, id_residuo);


--
-- Name: usuarios_historiales_residuos usuario_historiales_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_historiales_residuos
    ADD CONSTRAINT usuario_historiales_pkey PRIMARY KEY (id_usuario_historial_residuos);


--
-- Name: usuarios usuarios_email_ef44a1d6_uniq; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_ef44a1d6_uniq UNIQUE (email);


--
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- Name: usuarios_registro_contenedores usuarios_registro_contenedores_id_usuario_id_contenedor_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_registro_contenedores
    ADD CONSTRAINT usuarios_registro_contenedores_id_usuario_id_contenedor_key UNIQUE (id_usuario, id_contenedor);


--
-- Name: usuarios_registro_contenedores usuarios_registro_contenedores_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_registro_contenedores
    ADD CONSTRAINT usuarios_registro_contenedores_pkey PRIMARY KEY (id_usuario_registro_contenedor);


--
-- Name: usuarios_tienen_notificaciones usuarios_tienen_notificaciones_id_usuario_id_notificaciones_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_tienen_notificaciones
    ADD CONSTRAINT usuarios_tienen_notificaciones_id_usuario_id_notificaciones_key UNIQUE (id_usuario, id_notificaciones);


--
-- Name: usuarios_tienen_notificaciones usuarios_tienen_notificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_tienen_notificaciones
    ADD CONSTRAINT usuarios_tienen_notificaciones_pkey PRIMARY KEY (id_usuario_notificacion);


--
-- Name: usuarios usuarios_user_id_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_user_id_key UNIQUE (user_id);


--
-- Name: zonas zonas_color_zona_id_mapa_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.zonas
    ADD CONSTRAINT zonas_color_zona_id_mapa_key UNIQUE (color_zona, id_mapa);


--
-- Name: zonas zonas_coordenada_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.zonas
    ADD CONSTRAINT zonas_coordenada_key UNIQUE (coordenada);


--
-- Name: zonas zonas_nombre_zona_id_mapa_key; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.zonas
    ADD CONSTRAINT zonas_nombre_zona_id_mapa_key UNIQUE (nombre_zona, id_mapa);


--
-- Name: zonas zonas_pkey; Type: CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.zonas
    ADD CONSTRAINT zonas_pkey PRIMARY KEY (id_zona);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: usuarios_email_ef44a1d6_like; Type: INDEX; Schema: public; Owner: Crist
--

CREATE INDEX usuarios_email_ef44a1d6_like ON public.usuarios USING btree (email varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contenedores contenedores_id_mapa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.contenedores
    ADD CONSTRAINT contenedores_id_mapa_fkey FOREIGN KEY (id_mapa) REFERENCES public.mapas(id_mapa);


--
-- Name: contenedores contenedores_id_residuo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.contenedores
    ADD CONSTRAINT contenedores_id_residuo_fkey FOREIGN KEY (id_residuo) REFERENCES public.residuos(id_residuo);


--
-- Name: contenedores contenedores_id_zona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.contenedores
    ADD CONSTRAINT contenedores_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES public.zonas(id_zona);


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sensor_estado_historial estados_id_sensor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensor_estado_historial
    ADD CONSTRAINT estados_id_sensor_fkey FOREIGN KEY (id_sensor) REFERENCES public.sensores(id_sensor);


--
-- Name: calendarios fk_calendarios_categoria; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.calendarios
    ADD CONSTRAINT fk_calendarios_categoria FOREIGN KEY (categoria_noticia) REFERENCES public.categoria_noticias(id_categoria_noticias);


--
-- Name: horarios_recoleccion fk_categoria_residuo; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.horarios_recoleccion
    ADD CONSTRAINT fk_categoria_residuo FOREIGN KEY (id_categoria_residuo) REFERENCES public.categoria_residuos(id_categoria_residuo);


--
-- Name: residuos fk_categoria_residuos; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.residuos
    ADD CONSTRAINT fk_categoria_residuos FOREIGN KEY (id_categoria_residuos) REFERENCES public.categoria_residuos(id_categoria_residuo);


--
-- Name: excepciones_recolecciones fk_horario_recoleccion; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.excepciones_recolecciones
    ADD CONSTRAINT fk_horario_recoleccion FOREIGN KEY (id_horario_recoleccion) REFERENCES public.horarios_recoleccion(id_horario_recoleccion);


--
-- Name: sensor_estado_historial fk_sensor_estado_tipo; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensor_estado_historial
    ADD CONSTRAINT fk_sensor_estado_tipo FOREIGN KEY (id_sensor_estado_tipo) REFERENCES public.sensor_estados_tipos(id_sensor_estado_tipos);


--
-- Name: horarios_recoleccion fk_zona; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.horarios_recoleccion
    ADD CONSTRAINT fk_zona FOREIGN KEY (id_zona) REFERENCES public.zonas(id_zona);


--
-- Name: medicion_sensores medicion_sensores_id_contenedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.medicion_sensores
    ADD CONSTRAINT medicion_sensores_id_contenedor_fkey FOREIGN KEY (id_contenedor) REFERENCES public.contenedores(id_contenedor);


--
-- Name: medicion_sensores medicion_sensores_id_sensor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.medicion_sensores
    ADD CONSTRAINT medicion_sensores_id_sensor_fkey FOREIGN KEY (id_sensor) REFERENCES public.sensores(id_sensor);


--
-- Name: registro_recolecciones registro_recolecciones_id_contenedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.registro_recolecciones
    ADD CONSTRAINT registro_recolecciones_id_contenedor_fkey FOREIGN KEY (id_contenedor) REFERENCES public.contenedores(id_contenedor);


--
-- Name: registro_recolecciones registro_recolecciones_id_residuo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.registro_recolecciones
    ADD CONSTRAINT registro_recolecciones_id_residuo_fkey FOREIGN KEY (id_residuo) REFERENCES public.residuos(id_residuo);


--
-- Name: registro_recolecciones registro_recolecciones_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.registro_recolecciones
    ADD CONSTRAINT registro_recolecciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);


--
-- Name: registro_recolecciones registro_recolecciones_id_zona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.registro_recolecciones
    ADD CONSTRAINT registro_recolecciones_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES public.zonas(id_zona);


--
-- Name: sensores sensores_id_contenedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.sensores
    ADD CONSTRAINT sensores_id_contenedor_fkey FOREIGN KEY (id_contenedor) REFERENCES public.contenedores(id_contenedor);


--
-- Name: usuarios_historiales_residuos usuario_historiales_id_residuo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_historiales_residuos
    ADD CONSTRAINT usuario_historiales_id_residuo_fkey FOREIGN KEY (id_residuo) REFERENCES public.residuos(id_residuo);


--
-- Name: usuarios_historiales_residuos usuario_historiales_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_historiales_residuos
    ADD CONSTRAINT usuario_historiales_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);


--
-- Name: usuarios usuarios_id_direccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_direccion_fkey FOREIGN KEY (id_direccion) REFERENCES public.direcciones(id_direccion);


--
-- Name: usuarios usuarios_id_tipo_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_tipo_usuario_fkey FOREIGN KEY (id_tipo_usuario) REFERENCES public.tipo_usuarios(id_tipo_usuario);


--
-- Name: usuarios usuarios_id_zona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES public.zonas(id_zona);


--
-- Name: usuarios_registro_contenedores usuarios_registro_contenedores_id_contenedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_registro_contenedores
    ADD CONSTRAINT usuarios_registro_contenedores_id_contenedor_fkey FOREIGN KEY (id_contenedor) REFERENCES public.contenedores(id_contenedor);


--
-- Name: usuarios_registro_contenedores usuarios_registro_contenedores_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_registro_contenedores
    ADD CONSTRAINT usuarios_registro_contenedores_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);


--
-- Name: usuarios_tienen_notificaciones usuarios_tienen_notificaciones_id_notificaciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_tienen_notificaciones
    ADD CONSTRAINT usuarios_tienen_notificaciones_id_notificaciones_fkey FOREIGN KEY (id_notificaciones) REFERENCES public.notificaciones(id_notificacion);


--
-- Name: usuarios_tienen_notificaciones usuarios_tienen_notificaciones_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios_tienen_notificaciones
    ADD CONSTRAINT usuarios_tienen_notificaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);


--
-- Name: usuarios usuarios_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: zonas zonas_id_calendario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.zonas
    ADD CONSTRAINT zonas_id_calendario_fkey FOREIGN KEY (id_calendario) REFERENCES public.calendarios(id_calendario);


--
-- Name: zonas zonas_id_mapa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Crist
--

ALTER TABLE ONLY public.zonas
    ADD CONSTRAINT zonas_id_mapa_fkey FOREIGN KEY (id_mapa) REFERENCES public.mapas(id_mapa);


--
-- PostgreSQL database dump complete
--

