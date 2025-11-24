create table categoria_noticias
(
    id_categoria_noticias serial
        primary key,
    categoria             varchar(60) not null
        unique,
    color_hex             char(7)     not null
        unique
        constraint categoria_noticias_color_hex_check
            check (color_hex ~ '^#[0-9A-Fa-f]{6}$'::text)
);

alter table categoria_noticias
    owner to "Crist";

