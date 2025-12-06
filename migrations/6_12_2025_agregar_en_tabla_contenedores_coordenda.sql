ALTER TABLE CONTENEDORES
    ADD COLUMN coordenda GEOMETRY(Point, 4326) NOT NULL UNIQUE
    CHECK ( geometrytype(coordenda) = 'POINT' AND st_srid(coordenda)=4326);