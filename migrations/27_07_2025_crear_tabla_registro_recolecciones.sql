create table registro_recolecciones
(
    id_registro_recoleccion serial
        primary key,
    volumen                 numeric(8, 2) not null,
    fecha_hora_recoleccion  timestamp     not null,
    observaciones           text,
    id_contenedor           integer       not null
        references contenedores,
    id_residuo              integer       not null
        references residuos,
    id_zona                 integer       not null
        references zonas,
    id_usuario              integer       not null
        references usuarios
);

alter table registro_recolecciones
    owner to "Crist";


