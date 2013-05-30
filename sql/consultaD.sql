--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
-- DROP VIEW alquiler_casa_propiedades;
-- DROP VIEW alquiler_casa;
-- DROP VIEW solo_alquileres;
-- DROP VIEW alquileres;
-- DROP VIEW propiedades;
-- DROP VIEW casas;
-- DROP VIEW tarjetas;
-- DROP VIEW num_movs;
-- DROP VIEW movimientos;

-- relacionamos cada partida con todos los movimientos realizados

CREATE OR REPLACE VIEW movimientos AS
SELECT *                                    
FROM turno  NATURAL JOIN movimiento ;

CREATE OR REPLACE VIEW casas AS 
SELECT partida_id, count(compra_casa_id) as casas_compradas
FROM partida NATURAL JOIN movimientos GROUP BY partida_id;

CREATE OR REPLACE VIEW propiedades AS 
SELECT partida_id, count(compra_propiedad_id) as propiedades_compradas
FROM partida NATURAL JOIN movimientos GROUP BY partida_id;

CREATE OR REPLACE VIEW alquileres AS 
SELECT partida_id, count(alquiler_id) as alquileres_pagados
FROM partida NATURAL JOIN movimientos GROUP BY partida_id;

CREATE OR REPLACE VIEW num_movs AS 
SELECT partida_id, count(movimiento_id) as movs
FROM partida NATURAL JOIN movimientos GROUP BY partida_id;

CREATE OR REPLACE VIEW tarjetas AS 
SELECT partida_id, count(coge_tarjeta) as caja_comunidad
FROM partida NATURAL JOIN turno GROUP BY partida_id;


CREATE OR REPLACE VIEW solo_alquileres AS 
SELECT partida.partida_id, alquileres.alquileres_pagados
FROM partida LEFT JOIN alquileres 
ON partida.partida_id=alquileres.partida_id;

CREATE OR REPLACE VIEW alquiler_casa AS 
SELECT solo_alquileres.partida_id, solo_alquileres.alquileres_pagados, casas_compradas
FROM solo_alquileres LEFT JOIN casas
ON solo_alquileres.partida_id=casas.partida_id;

CREATE OR REPLACE VIEW alquiler_casa_propiedades AS 
SELECT 	alquiler_casa.partida_id, 
		alquiler_casa.alquileres_pagados, 
		alquiler_casa.casas_compradas, 
		propiedades_compradas
FROM alquiler_casa LEFT JOIN propiedades
ON alquiler_casa.partida_id=propiedades.partida_id;

CREATE OR REPLACE VIEW consultaD AS 
SELECT 	alquiler_casa_propiedades.partida_id, 
		alquiler_casa_propiedades.alquileres_pagados, 
		alquiler_casa_propiedades.casas_compradas, 
		alquiler_casa_propiedades.propiedades_compradas,
		movs
FROM alquiler_casa_propiedades LEFT JOIN num_movs
ON alquiler_casa_propiedades.partida_id=num_movs.partida_id;

SELECT * FROM consultaD;
