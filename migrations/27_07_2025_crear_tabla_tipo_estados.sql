create table tipo_estados
(
    id_tipo_estado serial
        primary key,
    nombre_estados varchar(50)
);

alter table tipo_estados
    owner to "Crist";


