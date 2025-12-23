ALTER TABLE RESIDUOS ALTER COLUMN color_hex SET NOT NULL,
    ADD CONSTRAINT residuos_color_hex_key   UNIQUE (color_hex);