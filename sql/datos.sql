INSERT INTO casilla (casilla_id) values ( 1 );
INSERT INTO casilla (casilla_id) values ( 2 );
INSERT INTO casilla (casilla_id) values ( 3 );
INSERT INTO casilla (casilla_id) values ( 4 );
INSERT INTO casilla (casilla_id) values ( 5 );
INSERT INTO casilla (casilla_id) values ( 6 );
INSERT INTO casilla (casilla_id) values ( 7 );
INSERT INTO casilla (casilla_id) values ( 8 );
INSERT INTO casilla (casilla_id) values ( 9 );
INSERT INTO casilla (casilla_id) values ( 10 );
INSERT INTO casilla (casilla_id) values ( 11 );
INSERT INTO casilla (casilla_id) values ( 12 );
INSERT INTO casilla (casilla_id) values ( 13 );
INSERT INTO casilla (casilla_id) values ( 14 );
INSERT INTO casilla (casilla_id) values ( 15 );
INSERT INTO casilla (casilla_id) values ( 16 );
INSERT INTO casilla (casilla_id) values ( 17 );
INSERT INTO casilla (casilla_id) values ( 18 );
INSERT INTO casilla (casilla_id) values ( 19 );
INSERT INTO casilla (casilla_id) values ( 20 );
INSERT INTO casilla (casilla_id) values ( 21 );
INSERT INTO casilla (casilla_id) values ( 22 );
INSERT INTO casilla (casilla_id) values ( 23 );
INSERT INTO casilla (casilla_id) values ( 24 );
INSERT INTO casilla (casilla_id) values ( 25 );
INSERT INTO casilla (casilla_id) values ( 26 );
INSERT INTO casilla (casilla_id) values ( 27 );
INSERT INTO casilla (casilla_id) values ( 28 );
INSERT INTO casilla (casilla_id) values ( 29 );
INSERT INTO casilla (casilla_id) values ( 30 );
INSERT INTO casilla (casilla_id) values ( 31 );
INSERT INTO casilla (casilla_id) values ( 32 );
INSERT INTO casilla (casilla_id) values ( 33 );
INSERT INTO casilla (casilla_id) values ( 34 );
INSERT INTO casilla (casilla_id) values ( 35 );
INSERT INTO casilla (casilla_id) values ( 36 );
INSERT INTO casilla (casilla_id) values ( 37 );
INSERT INTO casilla (casilla_id) values ( 38 );
INSERT INTO casilla (casilla_id) values ( 39 );
INSERT INTO casilla (casilla_id) values ( 40 );


-- 28 propiedades

INSERT INTO propiedad (propiedad_id) values ( 1);
INSERT INTO propiedad (propiedad_id) values ( 3);
INSERT INTO propiedad (propiedad_id) values ( 6);
INSERT INTO propiedad (propiedad_id) values ( 8);
INSERT INTO propiedad (propiedad_id) values ( 9);
INSERT INTO propiedad (propiedad_id) values ( 11);
INSERT INTO propiedad (propiedad_id) values ( 13);
INSERT INTO propiedad (propiedad_id) values ( 14);
INSERT INTO propiedad (propiedad_id) values ( 16);
INSERT INTO propiedad (propiedad_id) values ( 18 );
INSERT INTO propiedad (propiedad_id) values ( 19 );
INSERT INTO propiedad (propiedad_id) values ( 21 );
INSERT INTO propiedad (propiedad_id) values ( 23 );
INSERT INTO propiedad (propiedad_id) values ( 24 );
INSERT INTO propiedad (propiedad_id) values ( 26 );
INSERT INTO propiedad (propiedad_id) values ( 27 );
INSERT INTO propiedad (propiedad_id) values ( 29 );
INSERT INTO propiedad (propiedad_id) values ( 31 );
INSERT INTO propiedad (propiedad_id) values ( 32 );
INSERT INTO propiedad (propiedad_id) values ( 34 );
INSERT INTO propiedad (propiedad_id) values ( 37 );
INSERT INTO propiedad (propiedad_id) values ( 39 );
INSERT INTO propiedad (propiedad_id) values (5);
INSERT INTO propiedad (propiedad_id) values (15);
INSERT INTO propiedad (propiedad_id) values (25);
INSERT INTO propiedad (propiedad_id) values (35);
INSERT INTO propiedad (propiedad_id) values (12);
INSERT INTO propiedad (propiedad_id) values (28);
                                             
--8 barrios

INSERT INTO barrio values(nextval('barrio_seq'),'anil',60,2,4,10,30,90,160,250);
INSERT INTO barrio values(nextval('barrio_seq'),'celeste',110,6,12,30,90,270,400,550);
INSERT INTO barrio values(nextval('barrio_seq'),'morado',150,10,20,50,150,450,625,750);
INSERT INTO barrio values(nextval('barrio_seq'),'naranja',190,14,28,70,200,550,750,950);
INSERT INTO barrio values(nextval('barrio_seq'),'rojo',230,20,40,100,300,750,925,1100);
INSERT INTO barrio values(nextval('barrio_seq'),'amarillo',270,22,44,110,330,800,975,1150);
INSERT INTO barrio values(nextval('barrio_seq'),'verde',310,26,52,130,390,900,1100,1275);
INSERT INTO barrio values(nextval('barrio_seq'),'azul',375,50,100,200,600,1300,1600,2000);

--22 calles
INSERT INTO calle values(1,'Ronda de Valencia',1);
INSERT INTO calle values(3,'Plaza de Lavapies',1);
INSERT INTO calle values(6,'Cuatro Caminos',2);
INSERT INTO calle values(8,'Avenida Reina Victoria',2);
INSERT INTO calle values(9,'Calle Bravo Murillo',2);
INSERT INTO calle values(11,'Glorieta de Bilbao',3);
INSERT INTO calle values(13,'Calle Alberto Aguilera',3);
INSERT INTO calle values(14,'Calle Fuencarral',3);
INSERT INTO calle values(16,'Avenida de Felipe II',4);
INSERT INTO calle values(18,'Calle Velazquez',4);
INSERT INTO calle values(19,'Calle Serrano',4);
INSERT INTO calle values(21,'Avenida de America',5);
INSERT INTO calle values(23,'Calle Maria de Molina',5);
INSERT INTO calle values(24,'Calle Cea Bermudez',5);
INSERT INTO calle values(26,'Avenida de los Reyes Catolicos',6);
INSERT INTO calle values(27,'Calle Bailen',6);
INSERT INTO calle values(29,'Calle Plaza de Espana',6);
INSERT INTO calle values(31,'Puerta del Sol',7);
INSERT INTO calle values(32,'Calle Alcala',7);
INSERT INTO calle values(34,'Gran Via',7);
INSERT INTO calle values(37,'Paseo de la Castellana',8);
INSERT INTO calle values(39,'Paseo del Prado',8);




--- NUEVA PARTIDA
-- JUGADORES 8                                           
INSERT INTO jugador values ( nextval('jugador_seq') , 'Administrador'		,'admin','admin',TRUE	     );
INSERT INTO jugador values ( nextval('jugador_seq') , 'Nombre Jugador Dos '	,'alias2','2'	     );
INSERT INTO jugador values ( nextval('jugador_seq') , 'Nombre Jugador Tres' 	,'alias3','3' 	 );
INSERT INTO jugador values ( nextval('jugador_seq') , 'Nombre Jugador Cuatro','alias4','4'    );
INSERT INTO jugador values ( nextval('jugador_seq') , 'Nombre Jugador Cinco' ,'alias5','5'     );
INSERT INTO jugador values ( nextval('jugador_seq') , 'Nombre Jugador Seis' 	,'alias6','6' 	 );
INSERT INTO jugador values ( nextval('jugador_seq') , 'Nombre Jugador Siete' ,'alias7','7'     );
INSERT INTO jugador values ( nextval('jugador_seq') , 'Nombre Jugador Ocho' 	,'alias8','8' 	 );
                                                         
                                              



INSERT INTO estacion values(5,'Estacion de Goya',200,25,50,200,200);
INSERT INTO estacion values(15,'Estacion de las Delicias',200,25,50,200,200);
INSERT INTO estacion values(25,'Estacion del Mediodia',200,25,50,200,200);
INSERT INTO estacion values(35,'Estacion del Norte',200,25,50,200,200);

INSERT INTO compania values(12,'Compania de Distribucion de Electricidad',150,4,10);
INSERT INTO compania values(28,'Compania de Distribucion de Aguas',150,4,10);


INSERT INTO especial values(7,'Suerte');
INSERT INTO especial values(22,'Suerte');
INSERT INTO especial values(36,'Suerte');
INSERT INTO especial values(2,'Caja de Comunidad');
INSERT INTO especial values(17,'Caja de Comunidad');
INSERT INTO especial values(33,'Caja de Comunidad');

INSERT INTO especial values(4,'Impuesto Capital',100);
INSERT INTO especial values(38,'Impuesto Tasa de Lujo',200);

INSERT INTO especial values(40,'Salida', 200);
INSERT INTO especial values(10,'Carcel',50);
INSERT INTO especial values(20,'Parking Gratuito');
INSERT INTO especial values(30,'Vaya a la carcel');


INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), '>> GET OUT OF JAIL FREE << Keep this card until needed or sold.'                               );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Advance to the nearest Railroad. If unowned you may buy it from the bank. Otherwise pay rent.' );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Advance to the nearest Utility. If unowned you may buy it from the bank. Otherwise pay rent.'  );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Go Back 3 Spaces. '                                                                            );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Advance to the nearest Railroad. If unowned you may buy it from the bank. Otherwise pay rent.' );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), '>> GO DIRECTLY TO JAIL << Do not pass %0. Do not collect $200.'                                );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Take a Ride on the Reading. (Advance To %5) If you pass %0, collect $200.'                     );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Take a Walk on the Boardwalk. (Advance To %39) '                                               );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Advance To %24. '                                                                              );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Advance To %0. '                                                                               );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Advance To %11. If you pass %0, collect $200. '                                                );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Make general repairs on all of your Property. For Each House pay $25. For Each Hotel pay $100.');
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'You have been elected Chairman of the Board. Pay each player $50.'                             );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Pay Poor Tax of $15. '                                                                         );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Bank pays you Dividend of $50. '                                                               );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Your Building and Loan Matures. Collect $150. '                                                );

INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), '>> GET OUT OF JAIL FREE << Keep this card until needed or sold.'              );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Receive for Services $25.'                                                    );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Bank Error in Your Favor. Collect $200.'                                      );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Income Tax Refund. Collect $20.'                                              );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Pay Hospital $100.'                                                           );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Life Insurance Matures. Collect $100.'                                        );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'From sale of Stock You get $45.'                                              );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'You are Assessed for street repairs. $40 per House. $115 per Hotel.'          );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'X-mas Fund Matures. Collect $100.'                                            );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'You have won Second Prize in a Beauty Contest. Collect $11.'                  );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Advance to %0. (Collect $200)'                                                );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'You inherit $100.'                                                            );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Pay School Tax of $150.'                                                      );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), '>> GO DIRECTLY TO JAIL << Do not pass %0. Do not collect $200.'               );
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), '>> GRAND OPERA OPENING << Collect $50 from each player for opening night seats.');
INSERT INTO tarjeta (tarjeta_id, texto_reverso) values (nextval('tarjeta_seq'), 'Doctors Fee:  Pay $50.'                                                      );


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



















INSERT INTO partida(partida_id) values (nextval('partida_seq'));


INSERT INTO participacion VALUES(1,1,1);
INSERT INTO participacion VALUES(2,1,2);
INSERT INTO participacion VALUES(3,1,3);
INSERT INTO participacion VALUES(4,1,4);


-- PARTIDA 1
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 1 , 1 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 2 , 2 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 3 , 3 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 4 , 4 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 5 , 5 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 6 , 6 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 7 , 7 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 8 , 8 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 9 , 9 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 10 , 10 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 11 , 11 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 12 , 12 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 13 , 13 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 14 , 14 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 15 , 15 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 16 , 16 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 17 , 17 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 18 , 18 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 19 , 19 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 20 , 20 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 21 , 21 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 22 , 22 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 23 , 23 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 24 , 24 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 25 , 25 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 26 , 26 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 27 , 27 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 28 , 28 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 29 , 29 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 30 , 30 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 31 , 31 , 1);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 32 , 32 , 1);



--SACA EL PRIMER JUGADOR

-----------------------------------------------------------------------ronda 1
--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,2,1,currval('partida_seq'),40,3); 

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),3,60);
			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);

--jugador 2
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);
			
--jugador 3
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 4
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

-----------------------------------------------------------------------ronda 2
--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,3,1,currval('partida_seq'),3,7);
--jugador 2
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,3,1,currval('partida_seq'),3,7);
--jugador 3
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,3,1,currval('partida_seq'),3,7);
--jugador 4
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,3,1,currval('partida_seq'),3,7);

-----------------------------------------------------------------------ronda 3
--cogen tarjeta comunidad

--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),1,2,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 2
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),2,3,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 3
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),3,4,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 4
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),4,1,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
			
			
-----------------------------------------------------------------------ronda 4
--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,6,6,currval('partida_seq'),17,29); 
			
--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,6,6,currval('partida_seq'),17,29);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),29,270);
			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);
			

--jugador 3
--paga alquiler bailen

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,6,6,currval('partida_seq'),17,29);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),22,29);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-22);


--jugador 4
-- cae en compañia de agua

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,6,5,currval('partida_seq'),17,28);
		
-----------------------------------------------------------------------ronda 5
--jugador 1


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),1,60);
			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);





--jugador 2 --paga alquiler ronda valencia

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);




--jugador 3 -- paga alquiler ronda de valencia
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 4 va a la carcel
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,6,6,currval('partida_seq'),28,10);

-----------------------------------------------------------------------ronda 6
--jugador 1

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,1,currval('turno_seq'));
			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);




--jugador 2 --- PAGA alquiler 1 casa

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),10,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-10);
--jugador 3 --- PAGA alquiler 1 casa
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),10,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-10);			
--jugador 4 --- intenta salir de carcel, lanza los dados
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,1,2,currval('partida_seq'),10,10);

			
			
-----------------------------------------------------------------------ronda 7
--jugador 1 --compra casa en calle 3


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,6,6,currval('partida_seq'),1,13);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,3,currval('turno_seq'));
			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);


--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,6,6,currval('partida_seq'),1,13);
--jugador 3

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,6,6,currval('partida_seq'),1,13);
--jugador 4

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,5,1,currval('partida_seq'),10,10);


-----------------------------------------------------------------------ronda 8
--jugador 1 

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,6,6,currval('partida_seq'),13,25);

--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,6,6,currval('partida_seq'),13,25);
--jugador 3

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,6,6,currval('partida_seq'),13,25);
--jugador 4

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,6,6,currval('partida_seq'),10,22);
			




-----------------------------------------------------------------------ronda 9
--jugador 1 

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,2,6,6,currval('partida_seq'),25,37);

--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,3,6,6,currval('partida_seq'),25,37);
--jugador 3

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),3,4,6,6,currval('partida_seq'),25,37);
--jugador 4

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),4,1,6,6,currval('partida_seq'),22,34);



-----************************************************************************** PARTIDA 2

INSERT INTO partida(partida_id) values (nextval('partida_seq'));


INSERT INTO participacion VALUES(5,2,1);
INSERT INTO participacion VALUES(6,2,2);
INSERT INTO participacion VALUES(7,2,3);
INSERT INTO participacion VALUES(8,2,4);


INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 1 ,  32,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 2 ,  31,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 3 ,  30,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 4 ,  29,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 5 ,  28,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 6 ,  27,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 7 ,  26,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 8 ,  25,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 9 ,  24,   2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 10 , 23 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 11 , 22 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 12 , 21 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 13 , 20 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 14 , 19 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 15 , 18 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 16 , 17 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 17 , 16 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 18 , 15 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 19 , 14 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 20 , 13 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 21 , 12 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 22 , 11 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 23 , 10 , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 24 , 9  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 25 , 8  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 26 , 7  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 27 , 6  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 28 , 5  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 29 , 4  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 30 , 3  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 31 , 2  , 2);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 32 , 1  , 2);

-----------------------------------------------------------------------ronda 1
--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,2,1,currval('partida_seq'),40,3); 

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),3,60);
			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);

--jugador 6
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);
			
--jugador 7
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 8
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

		-----------------------------------------------------------------------ronda 2
--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,3,1,currval('partida_seq'),3,7);
--jugador 6
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,3,1,currval('partida_seq'),3,7);
--jugador 7
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,3,1,currval('partida_seq'),3,7);
--jugador 8
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,3,1,currval('partida_seq'),3,7);

-----------------------------------------------------------------------ronda 3
--cogen tarjeta comunidad

--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),5,6,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 6
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),6,7,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 7
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),7,8,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 8
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),8,5,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));


-----------------------------------------------------------------------ronda 4
--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,6,6,currval('partida_seq'),17,29); 

--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,6,6,currval('partida_seq'),17,29);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),29,270);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);


--jugador 7
--paga alquiler bailen

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,6,6,currval('partida_seq'),17,29);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),22,29);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-22);


--jugador 8
-- cae en compañia de agua

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,6,5,currval('partida_seq'),17,28);

-----------------------------------------------------------------------ronda 5
--jugador 5


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),1,60);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);





--jugador 6 --paga alquiler ronda valencia

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);




--jugador 7 -- paga alquiler ronda de valencia
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 8 va a la carcel
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,6,6,currval('partida_seq'),28,10);

-----------------------------------------------------------------------ronda 6
--jugador 5

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,1,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,1,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);




--jugador 6 --- PAGA alquiler 1 casa

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),30,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-30);
--jugador 7 --- PAGA alquiler 1 casa
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),30,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-30);			
--jugador 8 --- intenta salir de carcel, lanza los dados
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,1,2,currval('partida_seq'),10,10);



-----------------------------------------------------------------------ronda 7
--jugador 5--compra casa en calle 3


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,6,6,currval('partida_seq'),1,13);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,3,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);


--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,6,6,currval('partida_seq'),1,13);
--jugador 7

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,6,6,currval('partida_seq'),1,13);
--jugador 8

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,5,1,currval('partida_seq'),10,10);


-----------------------------------------------------------------------ronda 8
--jugador 5

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,6,6,currval('partida_seq'),13,25);

--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,6,6,currval('partida_seq'),13,25);
--jugador 7

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,6,6,currval('partida_seq'),13,25);
--jugador 8

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,6,6,currval('partida_seq'),10,22);





-----------------------------------------------------------------------ronda 9
--jugador 5

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),5,6,6,6,currval('partida_seq'),25,37);

--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),6,7,6,6,currval('partida_seq'),25,37);
--jugador 7

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,8,6,6,currval('partida_seq'),25,37);
--jugador 8

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,5,6,6,currval('partida_seq'),22,34);










-----************************************************************************** PARTIDA 3

INSERT INTO partida(partida_id) values (nextval('partida_seq'));


INSERT INTO participacion VALUES(1,3,1);
INSERT INTO participacion VALUES(8,3,2);
INSERT INTO participacion VALUES(2,3,3);
INSERT INTO participacion VALUES(7,3,4);


INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 1 ,  20,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 2 ,  21,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 3 ,  32,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 4 ,  14,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 5 ,  15,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 6 ,  16,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 7 ,  17,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 8 ,  2 ,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 9 ,  1 ,  3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 10 , 29 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 11 , 28 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 12 , 27 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 13 , 26 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 14 , 25 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 15 , 24 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 16 , 23 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 17 , 22 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 18 , 19 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 19 , 18 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 20 , 3  , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 21 , 4  , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 22 , 5  , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 23 , 6  , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 24 , 7  , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 25 , 8  , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 26 , 9  , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 27 , 10 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 28 , 11 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 29 , 12 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 30 , 13 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 31 , 31 , 3);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 32 , 30 , 3);

-----------------------------------------------------------------------ronda 1
--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,2,1,currval('partida_seq'),40,3); 

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),3,60);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);

--jugador 6
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 7
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 8
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

		-----------------------------------------------------------------------ronda 2
--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,3,1,currval('partida_seq'),3,7);
--jugador 6
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,3,1,currval('partida_seq'),3,7);
--jugador 7
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,3,1,currval('partida_seq'),3,7);
--jugador 8
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,3,1,currval('partida_seq'),3,7);

-----------------------------------------------------------------------ronda 3
--cogen tarjeta comunidad

--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),1,8,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 6
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),8,2,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 7
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),2,7,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 8
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
			values(nextval('turno_seq'),7,1,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));


-----------------------------------------------------------------------ronda 4
--jugador 5
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,6,6,currval('partida_seq'),17,29); 

--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,6,6,currval('partida_seq'),17,29);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),29,270);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);


--jugador 7
--paga alquiler bailen

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,6,6,currval('partida_seq'),17,29);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 			values(nextval('alquiler_seq'),22,29);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-22);


--jugador 8
-- cae en compañia de agua

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,6,5,currval('partida_seq'),17,28);

-----------------------------------------------------------------------ronda 5
--jugador 5


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
			values(nextval('compra_propiedad_seq'),1,60);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);





--jugador 6 --paga alquiler ronda valencia

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);




--jugador 7 -- paga alquiler ronda de valencia
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 8 va a la carcel
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,6,6,currval('partida_seq'),28,10);

-----------------------------------------------------------------------ronda 6
--jugador 5

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,1,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,1,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);




--jugador 6 --- PAGA alquiler 1 casa

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),30,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-30);
--jugador 7 --- PAGA alquiler 1 casa
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
		 	values(nextval('alquiler_seq'),30,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-30);			
--jugador 8 --- intenta salir de carcel, lanza los dados
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,1,2,currval('partida_seq'),10,10);



-----------------------------------------------------------------------ronda 7
--jugador 5--compra casa en calle 3


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,6,6,currval('partida_seq'),1,13);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
			values(nextval('compra_casa_seq'),10,3,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
			values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);


--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,6,6,currval('partida_seq'),1,13);
--jugador 7

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,6,6,currval('partida_seq'),1,13);
--jugador 8

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,5,1,currval('partida_seq'),10,10);


-----------------------------------------------------------------------ronda 8
--jugador 5

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,6,6,currval('partida_seq'),13,25);

--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,6,6,currval('partida_seq'),13,25);
--jugador 7

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,6,6,currval('partida_seq'),13,25);
--jugador 8

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,6,6,currval('partida_seq'),10,22);





-----------------------------------------------------------------------ronda 9
--jugador 5

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),1,8,6,6,currval('partida_seq'),25,37);

--jugador 6

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),8,2,6,6,currval('partida_seq'),25,37);
--jugador 7

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),2,7,6,6,currval('partida_seq'),25,37);
--jugador 8

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
			values(nextval('turno_seq'),7,1,6,6,currval('partida_seq'),22,34);






--------PARTIDA 4

INSERT INTO partida(partida_id) values (nextval('partida_seq'));


INSERT INTO participacion VALUES(3,4,1);
INSERT INTO participacion VALUES(6,4,2);
INSERT INTO participacion VALUES(4,4,3);
INSERT INTO participacion VALUES(5,4,4);


-- PARTIDA 1                                                                                                                
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 1 ,  32 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 2 ,  31 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 3 ,  30 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 4 ,  29 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 5 ,  28 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 6 ,  27 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 7 ,  26 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 8 ,  25 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 9 ,  24 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 10 , 23 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 11 , 22 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 12 , 21 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 13 , 20 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 14 , 19 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 15 , 18 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 16 , 17 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 17 , 16 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 18 , 15 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 19 , 14 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 20 , 13 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 21 , 12 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 22 , 11 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 23 , 10 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 24 ,  9 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 25 ,  8 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 26 ,  7 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 27 ,  6 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 28 ,  5 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 29 ,  4 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 30 ,  3 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 31 ,  2 , 4);
INSERT INTO orden_tarjetas (orden_tarjetas_id,tarjeta_id,orden, partida_id) values (nextval('orden_tarjetas_seq'), 32 ,  1 , 4);



--SACA EL PRIMER JUGADOR
-- movimiento
-- movimiento_id int DEFAULT nextval('movimiento_seq'),
-- turno_id int NOT NULL,
-- usa_tarjeta int DEFAULT NULL,
-- 
-- compra_propiedad int DEFAULT NULL,
-- compra_casa int DEFAULT NULL,
-- compra_hotel int DEFAULT NULL,
-- 
-- impuesto_id int DEFAULT NULL,
-- alquiler_id int DEFAULT NULL,
-- 
-- --pertenece_a_partida int NOT NULL, --redundante
-- --jugador actual int NOT NULL, -- redundante
--fecha date NOT NULL DEFAULT CURRENT_DATE,

-----------------------------------------------------------------------ronda 1
--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,2,1,currval('partida_seq'),40,3); 

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
		values(nextval('compra_propiedad_seq'),3,60);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);

--jugador 2
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 3
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 			values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 4
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,2,1,currval('partida_seq'),40,3);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 	values(nextval('alquiler_seq'),2,3);                       --paga alquiler lavapies			
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

-----------------------------------------------------------------------ronda 2
--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,3,1,currval('partida_seq'),3,7);
--jugador 2
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,3,1,currval('partida_seq'),3,7);
--jugador 3
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,3,1,currval('partida_seq'),3,7);
--jugador 4
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,3,1,currval('partida_seq'),3,7);

-----------------------------------------------------------------------ronda 3
--cogen tarjeta comunidad

--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
		values(nextval('turno_seq'),3,6,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 2
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
		values(nextval('turno_seq'),6,4,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 3
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
		values(nextval('turno_seq'),4,5,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));
--jugador 4
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
		values(nextval('turno_seq'),5,3,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));


-----------------------------------------------------------------------ronda 4
--jugador 1
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,6,6,currval('partida_seq'),17,29); 

--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,6,6,currval('partida_seq'),17,29);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
		values(nextval('compra_propiedad_seq'),29,270);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);


--jugador 3
--paga alquiler bailen

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,6,6,currval('partida_seq'),17,29);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 			values(nextval('alquiler_seq'),22,29);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-22);


--jugador 4
-- cae en compañia de agua

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,6,5,currval('partida_seq'),17,28);

-----------------------------------------------------------------------ronda 5
--jugador 1


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
		values(nextval('compra_propiedad_seq'),1,60);

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_propiedad_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_propiedad_seq'),-60);





--jugador 2 --paga alquiler ronda valencia

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);




--jugador 3 -- paga alquiler ronda de valencia
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 	values(nextval('alquiler_seq'),2,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-2);

--jugador 4 va a la carcel
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,6,6,currval('partida_seq'),28,10);

-----------------------------------------------------------------------ronda 6
--jugador 1

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,6,6,currval('partida_seq'),29,1);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
		values(nextval('compra_casa_seq'),10,1,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);




--jugador 2 --- PAGA alquiler 1 casa

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 	values(nextval('alquiler_seq'),10,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-10);
--jugador 3 --- PAGA alquiler 1 casa
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,6,6,currval('partida_seq'),29,1);
INSERT INTO alquiler(alquiler_id, precio, calle_id)
	 	values(nextval('alquiler_seq'),10,1);		
INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,alquiler_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('alquiler_seq'),-10);			
--jugador 4 --- intenta salir de carcel, lanza los dados
INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,1,2,currval('partida_seq'),10,10);



-----------------------------------------------------------------------ronda 7
--jugador 1 --compra casa en calle 3


INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,6,6,currval('partida_seq'),1,13);

INSERT INTO compra_casa(compra_casa_id,precio,edifica_calle,turno_id)
		values(nextval('compra_casa_seq'),10,3,currval('turno_seq'));

INSERT INTO movimiento(movimiento_id, turno_id, pertenece_a_partida,compra_casa_id,saldo)
		values(nextval('movimiento_seq'),currval('turno_seq'),currval('partida_seq'),currval('compra_casa_seq'),-10);


--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,6,6,currval('partida_seq'),1,13);
--jugador 3

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,6,6,currval('partida_seq'),1,13);
--jugador 4

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,5,1,currval('partida_seq'),10,10);


-----------------------------------------------------------------------ronda 8
--jugador 1 

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,6,6,currval('partida_seq'),13,25);

--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,6,6,currval('partida_seq'),13,25);
--jugador 3

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,6,6,currval('partida_seq'),13,25);
--jugador 4

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,6,6,currval('partida_seq'),10,22);





-----------------------------------------------------------------------ronda 9
--jugador 1 

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),3,6,6,6,currval('partida_seq'),25,37);

--jugador 2

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),6,4,6,6,currval('partida_seq'),25,37);
--jugador 3

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),4,5,6,6,currval('partida_seq'),25,37);
--jugador 4

INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
		values(nextval('turno_seq'),5,3,6,6,currval('partida_seq'),22,34);




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
