ALTER TABLE HORARIOS_RECOLECCION
  ADD  CONSTRAINT horarios_recoleccion_hora_fin_check
  CHECK (hora_fin > hora_inicio);