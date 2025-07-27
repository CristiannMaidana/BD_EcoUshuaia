create table zonas
(
    id_zona       serial
        primary key,
    nombre_zona   varchar(50),
    color_zona    varchar(20),
    id_mapa       integer
        references mapas,
    id_calendario integer
        references calendarios,
    id_coordenada integer
        references coordenadas,
    unique (nombre_zona, id_mapa),
    unique (color_zona, id_mapa)
);

alter table zonas
    owner to "Crist";


