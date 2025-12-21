CREATE TABLE CATEGORIA_RESIDUOS (
    id_categoria_residuo SERIAL PRIMARY KEY,
    categoria VARCHAR(60) UNIQUE NOT NULL,
    color_hex CHAR(7) UNIQUE NOT NULL CHECK (color_hex ~ '^#[0-9A-Fa-f]{6}$')
)