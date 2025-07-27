create table calendarios
(
    id_calendario serial
        primary key,
    novedad       text not null,
    fecha         date not null,
    hora          time not null
);

alter table calendarios
    owner to "Crist";


