create table usuarios_tienen_notificaciones
(
    id_usuario_notificacion serial
        primary key,
    leido                   boolean default false,
    fecha_recibido          timestamp,
    id_usuario              integer not null
        references usuarios,
    id_notificaciones       integer not null
        references notificaciones,
    unique (id_usuario, id_notificaciones)
);

alter table usuarios_tienen_notificaciones
    owner to "Crist";


