create table usuario_historiales
(
    id_usuario_historial serial
        primary key,
    cantidad_total       numeric,
    unidad               varchar(10),
    ultima_actualizacion timestamp,
    id_residuo           integer not null
        references residuos,
    id_usuario           integer not null
        references usuarios,
    unique (id_usuario, id_residuo)
);

alter table usuario_historiales
    owner to "Crist";


