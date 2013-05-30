--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
-- DROP VIEW c;
-- DROP VIEW b;
-- DROP VIEW a;
-- DROP VIEW companias;
-- DROP VIEW especiales;
-- DROP VIEW calles;
-- DROP VIEW calles_barrio;

-- primero unimos calles con su barrio, para tener una relacion de precio,
-- color y nombre junto al id. NATURAL JOIN debido a que comparten el barrio.
CREATE OR REPLACE VIEW calles_barrio AS
SELECT calle_id,nombre, color, valor
FROM calle NATURAL JOIN barrio;

-- relacionamos cada casilla con  las calles, las casillas especiales, estaciones y companias
CREATE OR REPLACE VIEW calles AS
SELECT * 
FROM casilla LEFT JOIN calles_barrio 
ON casilla.casilla_id=calles_barrio.calle_id;


CREATE OR REPLACE VIEW especiales AS
SELECT * 
FROM casilla  LEFT JOIN especial 
ON (casilla.casilla_id= especial.especial_id);

CREATE OR REPLACE VIEW estaciones AS
SELECT * 
FROM casilla  LEFT JOIN estacion 
ON (casilla.casilla_id= estacion.estacion_id);

CREATE OR REPLACE VIEW companias AS
SELECT * 
FROM casilla  LEFT JOIN compania 
ON (casilla.casilla_id= compania.compania_id);


-- empezamos a constriuir la tabla relacionando calles con estaciones, luego con especiales, companias 

CREATE OR REPLACE VIEW a AS 
SELECT 	estaciones.casilla_id, 
		estaciones.nombre as estacion, 
		calles.nombre,
		calles.color, 
		CASE
			WHEN calles.valor is null THEN precio
			WHEN precio is null THEN calles.valor
			ELSE calles.valor+ precio
		END
		 as precio
FROM estaciones LEFT JOIN calles 
ON estaciones.casilla_id=calles.casilla_id;


CREATE OR REPLACE VIEW b AS 
SELECT	a.casilla_id, 
		a.estacion, 
		a.nombre, 
		CASE
			WHEN a.precio is null THEN companias.precio
			WHEN companias.precio is null THEN a.precio
			ELSE a.precio+ companias.precio
		END
		 as precio,
		a.color, 
		companias.nombre as compania
FROM a LEFT JOIN companias
ON a.casilla_id=companias.casilla_id;

CREATE OR REPLACE VIEW c AS 
SELECT	b.casilla_id,
 		b.estacion,
		b.nombre,
		b.precio,
		b.color,
		tipo
FROM b LEFT JOIN especiales
ON b.casilla_id=especiales.casilla_id;

CREATE OR REPLACE VIEW consultaB AS 
SELECT 	c.casilla_id, 
		c.estacion, 
		c.nombre, 
		c.precio, 
		c.color, 
		c.tipo, 
		companias.nombre as compania
FROM c LEFT JOIN companias
ON c.casilla_id=companias.casilla_id;


SELECT * FROM consultaB;
