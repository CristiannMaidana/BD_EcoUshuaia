create table sensores
(
    id_sensor                serial
        primary key,
    nombre_sensor            varchar(50)  not null,
    fecha_instalacion_sensor date,
    numero_serie             varchar(100) not null
        unique,
    id_contenedor            integer
        references contenedores,
    unique (id_contenedor, nombre_sensor)
);

alter table sensores
    owner to "Crist";


