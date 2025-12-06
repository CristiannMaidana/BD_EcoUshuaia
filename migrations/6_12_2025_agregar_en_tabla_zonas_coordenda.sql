ALTER TABLE ZONAS
    ADD COLUMN coordenada GEOMETRY(MultiPolygon, 4326) NOT NULL UNIQUE
        CHECK ( geometrytype(coordenada) = 'MULTIPOLYGON' AND ST_SRID(coordenada)=4326);