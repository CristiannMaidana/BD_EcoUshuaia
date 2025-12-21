CREATE TABLE HORARIOS_RECOLECCION (
    id_horario_recoleccion SERIAL PRIMARY KEY,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    dia_semana smallint NOT NULL CHECK (dia_semana BETWEEN 0 AND 6),
    id_zona INTEGER,
    id_categoria_residuo INTEGER,
    CONSTRAINT fk_zona FOREIGN KEY (id_zona) REFERENCES ZONAS(id_zona),
    CONSTRAINT fk_categoria_residuo FOREIGN KEY (id_categoria_residuo) REFERENCES  CATEGORIA_RESIDUOS(id_categoria_residuo),
    CHECK ( hora_fin < hora_fin )
)
