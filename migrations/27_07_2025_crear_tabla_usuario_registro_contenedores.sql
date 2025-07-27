create table usuarios_registro_contenedores
(
    id_usuario_registro_contenedor integer default nextval('usuarios_registro_contenedore_id_usuario_registro_contenedo_seq'::regclass) not null
        primary key,
    nota_usuario_contenedor        text,
    id_usuario                     integer                                                                                              not null
        references usuarios,
    id_contenedor                  integer                                                                                              not null
        references contenedores,
    unique (id_usuario, id_contenedor)
);

alter table usuarios_registro_contenedores
    owner to "Crist";


