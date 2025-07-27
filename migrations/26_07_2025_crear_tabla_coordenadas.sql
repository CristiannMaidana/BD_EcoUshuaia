create table coordenadas
(
    id_coordenada      serial
        primary key,
    archivo_coordenada jsonb
        unique,
    latitud            numeric(9, 6) not null,
    longitud           numeric(9, 6) not null,
    unique (latitud, longitud)
);

alter table coordenadas
    owner to "Crist";


