create table medicion_sensores
(
    id_medicion_sensor   serial
        primary key,
    fecha_hora_medicion  timestamp not null,
    porcentaje_ocupacion numeric(5, 2),
    volumen_medido       numeric(8, 2),
    alerta_generada      boolean,
    id_sensor            integer   not null
        references sensores,
    id_contenedor        integer   not null
        references contenedores
);

alter table medicion_sensores
    owner to "Crist";


