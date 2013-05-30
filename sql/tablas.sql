--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------

-- DROP TABLE jugada;
-- DROP TABLE casilla;
-- DROP TABLE propiedad;
-- DROP TABLE barrio;
-- DROP TABLE calle;
-- DROP TABLE estacion;
-- DROP TABLE compania;
-- DROP TABLE especial;
-- DROP TABLE tarjeta;
-- DROP TABLE pago;
-- DROP TABLE jugador;
-- DROP TABLE partida;
--------------------------------------------------------------------------

-- casilla
CREATE TABLE casilla (
	
	casilla_id integer NOT NULL,
	CONSTRAINT pk_casilla_id PRIMARY KEY (casilla_id)
	
);

-- propiedad
CREATE TABLE propiedad (
	
	propiedad_id integer REFERENCES casilla(casilla_id) ON UPDATE CASCADE,
	CONSTRAINT pk_propiedad_id PRIMARY KEY (propiedad_id)
	
); 


-- barrio
CREATE SEQUENCE barrio_seq;
CREATE TABLE barrio (
	
	barrio_id int DEFAULT nextval('barrio_seq'),
	color varchar(40), 
	valor int NOT NULL,

	alquiler_1_calle int NOT NULL,
	alquiler_todo_barrio int NOT NULL,
	alquiler_1_casa int NOT NULL,
	alquiler_2_casa int NOT NULL,
	alquiler_3_casa int NOT NULL,
	alquiler_4_casa int NOT NULL,
	alquiler_hotel int NOT NULL,

	CONSTRAINT pk_barrio_id PRIMARY KEY (barrio_id)
	
);

-- calle               
CREATE TABLE calle (
	
	calle_id int NOT NULL REFERENCES propiedad(propiedad_id),
	nombre varchar(40),
	barrio_id int NOT NULL,
	CONSTRAINT pk_calle_id PRIMARY KEY (calle_id),
	CONSTRAINT fk_esta_en_barrio FOREIGN KEY (barrio_id)
		REFERENCES barrio (barrio_id) ON DELETE CASCADE ON UPDATE CASCADE
);



-- estacion
CREATE TABLE estacion (
	
	estacion_id int NOT NULL,
	nombre varchar(50),
	precio int NOT NULL,
	alquiler_1_estacion int NOT NULL,
	alquiler_2_estacion int NOT NULL,
	alquiler_3_estacion int NOT NULL,
	alquiler_4_estacion int NOT NULL
);

--  compania
CREATE TABLE compania (
	
	compania_id integer NOT NULL,
	nombre varchar(50),
	precio int NOT NULL,
	tasa_1_estacion int NOT NULL, -- lo que ha sacado en los dados x tasa
	tasa_2_estacion int NOT NULL 
);

-- especial
CREATE TABLE especial (
	
	especial_id integer NOT NULL REFERENCES casilla(casilla_id),
	tipo varchar(50), -- carcel, impuesto, inicio, 
	valor int DEFAULT 0,
	impuesto int DEFAULT 0,
	CONSTRAINT pk_especial_id PRIMARY KEY (especial_id)
	
);                    

-- jugador
CREATE SEQUENCE jugador_seq;
CREATE TABLE jugador(

	jugador_id int DEFAULT nextval('jugador_seq'),
	nombre varchar(40),
	alias varchar(40),
	password varchar(40),
	privilegios boolean DEFAULT FALSE,
	CONSTRAINT pk_jugador PRIMARY KEY (jugador_id)
);






-- tarjeta
CREATE SEQUENCE tarjeta_seq;
CREATE TABLE tarjeta(

	tarjeta_id int DEFAULT nextval('tarjeta_seq'),
	texto_reverso varchar(100),
	CONSTRAINT pk_tarjeta PRIMARY KEY (tarjeta_id)
);



-- partida
CREATE SEQUENCE partida_seq;

CREATE TABLE partida(

	partida_id int DEFAULT nextval('partida_seq'),
	fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	fecha_fin    TIMESTAMP,
	dinero_ganador_partida int,
	ganador_partida int,
	numero_jugadores int default 0,
	
	numero_tarjetas int NOT NULL DEFAULT 32,
	hoteles_por_defecto int NOT NULL DEFAULT 12,
	casa_por_defecto int NOT NULL DEFAULT 32,
	
	CONSTRAINT pk_partida_id PRIMARY KEY (partida_id),
	CONSTRAINT fk_ganador_partida FOREIGN KEY (ganador_partida)
		REFERENCES jugador (jugador_iD) ON DELETE CASCADE ON UPDATE CASCADE
);

-- orden_tarjetas

CREATE SEQUENCE siguiente_tarjeta_s_seq
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 16
  MINVALUE 1
  CYCLE;

CREATE SEQUENCE siguiente_tarjeta_c_seq
  START WITH 17
  INCREMENT BY 1
  MAXVALUE 32
  MINVALUE 17
  CYCLE;

CREATE SEQUENCE orden_tarjetas_seq;

CREATE TABLE orden_tarjetas(

	orden_tarjetas_id int DEFAULT nextval('orden_tarjetas_seq'),
	tarjeta_id int NOT NULL,
	partida_id int NOT NULL,
	orden int NOT NULL,
	CONSTRAINT pk_orden_tarjetas PRIMARY KEY (orden_tarjetas_id),
	CONSTRAINT fk_orden_tarjetas FOREIGN KEY (tarjeta_id)
		REFERENCES tarjeta (tarjeta_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_pertenece_partida FOREIGN KEY (partida_id)
		REFERENCES partida (partida_iD) ON DELETE CASCADE ON UPDATE CASCADE
);
-- participacion
CREATE TABLE participacion(

	jugador_id int NOT NULL,
	partida_id int NOT NULL,
	orden int NOT NULL,
	dinero int DEFAULT 1500,
	jugando int DEFAULT 1,
	
	CONSTRAINT pk_orden_jugadores PRIMARY KEY (jugador_id,partida_id),

	CONSTRAINT fk_jugador FOREIGN KEY (jugador_id)
		REFERENCES jugador(jugador_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_pertenece_a_partida FOREIGN KEY (partida_id)
		REFERENCES partida(partida_id) ON DELETE CASCADE ON UPDATE CASCADE

);


-- alquiler
CREATE SEQUENCE alquiler_seq;
CREATE TABLE alquiler(

	alquiler_id int DEFAULT nextval('alquiler_seq'),
	precio int DEFAULT null,
	calle_id int,
	partida_actual int DEFAULT currval('partida_seq'),
	CONSTRAINT pk_alquiler PRIMARY KEY (alquiler_id),
	CONSTRAINT fk_calle FOREIGN KEY (calle_id)
		REFERENCES calle (calle_id) ON DELETE CASCADE ON UPDATE CASCADE

);

-- impuesto_multa
CREATE SEQUENCE impuesto_multa_seq;
CREATE TABLE impuesto_multa(

	impuesto_multa_id int DEFAULT nextval('impuesto_multa_seq'),
	precio int DEFAULT null,
	CONSTRAINT pk_impuesto_multa PRIMARY KEY (impuesto_multa_id)

);


-- turno
CREATE SEQUENCE turno_seq;
CREATE TABLE turno(

	turno_id int DEFAULT nextval('turno_seq'),

	jugador_actual int NOT NULL, -- tal vez redundantes
	jugador_siguiente int NOT NULL,
	
	dado_1 int NOT NULL,
	dado_2 int NOT NULL,
	
	coge_tarjeta int DEFAULT NULL,

	partida_id int NOT NULL,

	casilla_id_actual int NOT NULL,
	casilla_id_futura int NOT NULL,
		
	fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
	finalizado boolean DEFAULT FALSE,

	CONSTRAINT pk_turno PRIMARY KEY (turno_id),

	CONSTRAINT fk_jugador_actual FOREIGN KEY (jugador_actual)
		REFERENCES jugador (jugador_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_jugador_siguiente FOREIGN KEY (jugador_siguiente)
		REFERENCES jugador (jugador_id) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CONSTRAINT fk_coge_tarjeta FOREIGN KEY (coge_tarjeta)
		REFERENCES tarjeta (tarjeta_id) ON DELETE CASCADE ON UPDATE CASCADE,

	CONSTRAINT fk_pertenece_a_partida FOREIGN KEY (partida_id)
		REFERENCES partida(partida_id) ON DELETE CASCADE ON UPDATE CASCADE,
		
	CONSTRAINT fk_casilla_actual FOREIGN KEY (casilla_id_actual)
		REFERENCES casilla (casilla_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_casilla_futura FOREIGN KEY (casilla_id_futura)
		REFERENCES casilla (casilla_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- compra casa
CREATE SEQUENCE compra_casa_seq;
CREATE TABLE compra_casa(

	compra_casa_id int DEFAULT nextval('compra_casa_seq'),
	precio int default 0,
	edifica_calle int NOT NULL,
	turno_id int NOT NULL,
	CONSTRAINT pk_compra_casa PRIMARY KEY (compra_casa_id),
	CONSTRAINT fk_edifica_calle FOREIGN KEY (edifica_calle)
		REFERENCES calle (calle_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_edificada_en_turno FOREIGN KEY (turno_id)
		REFERENCES turno (turno_id) ON DELETE CASCADE ON UPDATE CASCADE
);

--compra hotel
CREATE SEQUENCE compra_hotel_seq;
CREATE TABLE compra_hotel(

	compra_hotel_id int DEFAULT nextval('compra_hotel_seq'),
	precio int default 0, 
	edifica_calle int NOT NULL,
	CONSTRAINT pk_compra_hotel PRIMARY KEY (compra_hotel_id),
	CONSTRAINT fk_edifica_calle FOREIGN KEY (edifica_calle)
		REFERENCES calle (calle_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- compra propiedad
CREATE SEQUENCE compra_propiedad_seq;
CREATE TABLE compra_propiedad(

	compra_propiedad_id int DEFAULT nextval('compra_propiedad_seq'),
 	precio int default 0,
	propiedad_id int NOT NULL,
	CONSTRAINT pk_compra_propiedad PRIMARY KEY (compra_propiedad_id),
	CONSTRAINT fk_propiedad_comprada FOREIGN KEY (propiedad_id)
		REFERENCES propiedad (propiedad_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- movimiento
CREATE SEQUENCE movimiento_seq;
CREATE TABLE movimiento(

	movimiento_id int DEFAULT nextval('movimiento_seq'),
	turno_id int NOT NULL,
	
	usa_tarjeta int DEFAULT NULL,

	compra_propiedad_id int DEFAULT NULL,
	compra_casa_id int DEFAULT NULL,
	compra_hotel_id int DEFAULT NULL,

	impuesto_id int DEFAULT NULL,
	alquiler_id int DEFAULT NULL,
	saldo int,

	pertenece_a_partida int NOT NULL,
	
	dinero_jugador_actual int DEFAULT 0, 
	
	fecha TIMESTAMP NOT NULL DEFAULT clock_timestamp(),
	
	CONSTRAINT pk_movimiento PRIMARY KEY (movimiento_id),
	
	CONSTRAINT fk_alquiler FOREIGN KEY (alquiler_id)
		REFERENCES alquiler (alquiler_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_impuesto_multa FOREIGN KEY (impuesto_id)
		REFERENCES impuesto_multa (impuesto_multa_id) ON DELETE CASCADE ON UPDATE CASCADE,
		
	CONSTRAINT fk_turno_id FOREIGN KEY (turno_id)
		REFERENCES turno (turno_id) ON DELETE CASCADE ON UPDATE CASCADE,

	CONSTRAINT fk_usa_tarjeta FOREIGN KEY (usa_tarjeta)
		REFERENCES tarjeta (tarjeta_id) ON DELETE CASCADE ON UPDATE CASCADE,


	CONSTRAINT fk_pertenece_a_partida FOREIGN KEY (pertenece_a_partida)
		REFERENCES partida(partida_id) ON DELETE CASCADE ON UPDATE CASCADE,

	CONSTRAINT fk_realiza_compra_propiedad FOREIGN KEY (compra_propiedad_id)
		REFERENCES compra_propiedad (compra_propiedad_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_realiza_compra_casa FOREIGN KEY (compra_casa_id)
		REFERENCES compra_casa (compra_casa_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_realiza_compra_hotel FOREIGN KEY (compra_hotel_id)
		REFERENCES compra_hotel (compra_hotel_id) ON DELETE CASCADE ON UPDATE CASCADE

);







CREATE OR REPLACE VIEW alquiler_aux AS
SELECT * 
FROM calle  NATURAL JOIN barrio;

