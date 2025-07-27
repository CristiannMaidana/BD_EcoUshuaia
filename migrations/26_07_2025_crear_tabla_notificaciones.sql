create table notificaciones
(
    id_notificacion   serial
        primary key,
    mensaje           text      not null,
    fecha_envio       timestamp not null,
    tipo_notificacion varchar(30)
);

alter table notificaciones
    owner to "Crist";


