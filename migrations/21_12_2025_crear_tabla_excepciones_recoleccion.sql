CREATE TABLE EXCEPCIONES_RECOLECCIONES
(
    id_excepciones_recoleccion SERIAL PRIMARY KEY,
    -- Fecha original
    fecha                      smallint NOT NULL CHECK (fecha BETWEEN 0 AND 6),
    hora_inicio                TIME     NOT NULL,
    hora_fin                   TIME     NOT NULL,

    tipo                       TEXT     NOT NULL CHECK (tipo IN ('CANCELA', 'AGREGA', 'REEMPLAZA', 'REPROGRAMA')),

    -- Fecha a para el reemplazo
    nueva_fecha                DATE     NOT NULL,
    nuevo_inicio               TIME     NOT NULL,
    nuevo_fin                  TIME     NOT NULL,
    motivo                     TEXT     NOT NULL,

    id_horario_recoleccion     INTEGER,
    CONSTRAINT fk_horario_recoleccion FOREIGN KEY (id_horario_recoleccion) REFERENCES HORARIOS_RECOLECCION (id_horario_recoleccion),
    CHECK ( nuevo_fin > nuevo_inicio )
)