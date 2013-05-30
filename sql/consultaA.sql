--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
-- DROP VIEW consultaA;
-- DROP VIEW id_casas;
-- DROP VIEW compras_casa;


CREATE OR REPLACE VIEW compras_casa AS
SELECT jugador_actual as jugador_id, count(*) AS casas
FROM turno NATURAL JOIN compra_casa
GROUP BY jugador_actual;
-----

CREATE OR REPLACE VIEW id_casas AS
SELECT jugador_id, casas
FROM compras_casa
WHERE casas=(select max(casas) from compras_casa);


CREATE OR REPLACE VIEW consultaA AS
SELECT jugador_id, nombre, casas
FROM jugador NATURAL JOIN id_casas; 

SELECT * FROM consultaA;