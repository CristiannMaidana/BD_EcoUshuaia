ALTER TABLE MAPAS
    ADD COLUMN coordenada GEOMETRY(Geometry, 4326) NOT NULL UNIQUE
        CHECK ( geometrytype(coordenada) IN ('POLYGON', 'MULTIPOLYGON') AND ST_SRID(coordenada)=4326);