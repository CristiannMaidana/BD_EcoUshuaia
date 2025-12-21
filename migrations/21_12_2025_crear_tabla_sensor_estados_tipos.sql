CREATE TABLE SENSOR_ESTADOS_TIPOS
(
    id_sensor_estado_tipos SERIAL PRIMARY KEY,
    estado                 VARCHAR(60) NOT NULL UNIQUE,
    descripcion            TEXT        NOT NULL,
    severidad              SMALLINT    NOT NULL
)