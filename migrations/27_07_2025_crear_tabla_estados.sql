create table estados
(
    id_estado      serial
        primary key,
    fecha_estado   timestamp,
    volumen        numeric(8, 2),
    id_sensor      integer
        references sensores,
    id_tipo_estado integer
        references tipo_estados
);

alter table estados
    owner to "Crist";


