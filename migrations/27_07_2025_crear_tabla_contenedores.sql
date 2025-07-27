create table contenedores
(
    id_contenedor         serial
        primary key,
    nombre_contenedor     varchar(50) not null,
    color_contenedor      varchar(20) not null,
    capacidad_total       numeric,
    fecha_instalacion     date,
    ultimo_vaciado        timestamp,
    descripcion_ubicacion text,
    id_zona               integer
        references zonas,
    id_residuo            integer
        references residuos,
    id_coordenada         integer
        references coordenadas,
    id_mapa               integer
        references mapas,
    unique (nombre_contenedor, id_mapa)
);

alter table contenedores
    owner to "Crist";


