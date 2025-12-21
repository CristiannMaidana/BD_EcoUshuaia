CREATE TABLE UMBRAL_LLENADO (
    id_umbral_llenado SERIAL PRIMARY KEY,
    bajo_max NUMERIC(5,2) NOT NULL,
    medio_max NUMERIC(5,2) NOT NULL,
    alto_max NUMERIC(5,2) NOT NULL,
    CHECK (0 <= bajo_max AND bajo_max < medio_max AND medio_max < alto_max AND alto_max <= 100)
);