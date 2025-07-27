create table tipo_usuarios
(
    id_tipo_usuario serial
        primary key,
    tipo_usuario    varchar(50) not null
        unique
);

alter table tipo_usuarios
    owner to "Crist";


