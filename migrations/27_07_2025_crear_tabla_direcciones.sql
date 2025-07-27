create table direcciones
(
    id_direccion  serial
        primary key,
    calle         varchar(100),
    numero        varchar(10),
    barrio        varchar(50),
    ciudad        varchar(50),
    codigo_postal varchar(20),
    provincia     varchar(100),
    pais          varchar(50),
    id_coordenada integer
        references coordenadas
);

alter table direcciones
    owner to "Crist";


