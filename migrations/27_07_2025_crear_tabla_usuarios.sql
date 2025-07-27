create table usuarios
(
    id_usuario       serial
        primary key,
    nombre_usuario   varchar(50)  not null,
    apellido_usuario varchar(50)  not null,
    email            varchar(100) not null
        unique,
    fecha_nacimiento date,
    id_direccion     integer
        references direcciones,
    id_zona          integer
        references zonas,
    id_tipo_usuario  integer
        references tipo_usuarios
);

alter table usuarios
    owner to "Crist";


