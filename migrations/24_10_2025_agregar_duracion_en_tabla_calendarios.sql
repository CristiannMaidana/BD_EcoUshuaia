ALTER TABLE CALENDARIOS ADD COLUMN duracion INTERVAL NOT NULL CHECK (duracion >= interval'30 minutes');
