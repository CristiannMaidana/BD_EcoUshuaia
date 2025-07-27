create table residuos
(
    id_residuo            serial
        primary key,
    nombre                varchar(50) not null
        unique,
    imagen                varchar(255),
    categoria             varchar(50),
    peso                  numeric(6, 2),
    instruccion_reciclado text,
    descripcion           text
);

alter table residuos
    owner to "Crist";


