--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
-- DROP VIEW consultaC;

CREATE OR REPLACE VIEW consultaC AS 
SELECT partida_id, jugador_actual, movimiento_id, saldo, dinero_jugador_actual, casilla_id_actual 
FROM  movimiento NATURAL JOIN turno
where partida_id = 2;

SELECT * FROM consultaC;