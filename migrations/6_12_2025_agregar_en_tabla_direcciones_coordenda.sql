ALTER TABLE DIRECCIONES
    ADD COLUMN coordenada GEOMETRY(Point, 4326) NOT NULL UNIQUE
        CHECK ( geometrytype(coordenada) = 'POINT' AND ST_SRID(coordenada)=4326);