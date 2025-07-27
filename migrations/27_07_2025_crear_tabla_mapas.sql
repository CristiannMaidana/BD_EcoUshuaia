create table mapas
(
    id_mapa       serial
        primary key,
    nombre_mapa   varchar(50) not null
        unique,
    id_coordenada integer     not null
        references coordenadas
);

alter table mapas
    owner to "Crist";


