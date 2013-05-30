--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
-- DROP TRIGGER t_actualizar_saldo ON movimiento;
-- DROP FUNCTION actualizar_saldo();


CREATE or REPLACE FUNCTION actualizar_saldo() RETURNS TRIGGER AS '
DECLARE
	jugador_var integer;
	turno_var integer;
	var_saldo integer;
	var_partida integer;
BEGIN 
	SELECT jugador_actual INTO jugador_var 
		FROM turno NATURAL JOIN movimiento
		WHERE movimiento.turno_id=NEW.turno_id;
	
	SELECT turno_id INTO turno_var
		FROM turno NATURAL JOIN movimiento
		WHERE movimiento.turno_id=NEW.turno_id;	

	SELECT partida_id INTO var_partida
		FROM turno NATURAL JOIN movimiento
		WHERE movimiento.turno_id=NEW.turno_id;	


	
	RAISE NOTICE ''actualizamos saldo del jugador % en el turno %'', jugador_var, turno_var;
	
	SELECT dinero INTO var_saldo
		FROM participacion
		WHERE participacion.jugador_id=jugador_var and participacion.partida_id=var_partida;
		
	--RAISE NOTICE '' test dinero %  par %'', var_saldo,var_partida;
	IF var_saldo+new.saldo <0 THEN
		UPDATE participacion
			SET jugando=0
		WHERE participacion.jugador_id=jugador_var and participacion.partida_id=var_partida;
		
		UPDATE partida
			set numero_jugadores=numero_jugadores-1
		WHERE partida_id=var_partida;

		

	END IF;	
	

	UPDATE participacion  
		SET dinero= dinero+NEW.saldo
	 	WHERE jugador_var=participacion.jugador_id and participacion.partida_id=var_partida;
	
	
	
		
	UPDATE movimiento  
		SET dinero_jugador_actual= var_saldo+NEW.saldo
	 	WHERE movimiento_id=NEW.movimiento_id;

	

	RETURN NEW;

	
	
END; ' LANGUAGE 'plpgsql';


CREATE TRIGGER t_actualizar_saldo
AFTER INSERT ON movimiento
FOR EACH ROW EXECUTE PROCEDURE actualizar_saldo();






CREATE or REPLACE FUNCTION numero_jugadores() RETURNS TRIGGER AS '
DECLARE
	jugador_var integer;
	turno_var integer;
	var_saldo integer;
	var_partida integer;
	var_n integer;

BEGIN 
	
	select numero_jugadores into var_n
		from partida
		where partida_id=new.partida_id;

	IF var_n=1 THEN
		

		UPDATE partida
			SET fecha_fin=clock_timestamp()
		WHERE partida_id=new.partida_id;
		
		select jugador_id into jugador_var
		from participacion 
		where partida_id=new.partida_id and dinero>0;

		select dinero into var_saldo
		from participacion 
		where partida_id=new.partida_id and dinero>0;
		
		UPDATE partida
			SET ganador_partida=jugador_var
		WHERE partida_id=new.partida_id;
		
		UPDATE partida
			SET dinero_ganador_partida=var_saldo
		WHERE partida_id=new.partida_id;
		

	END IF;	
	RETURN NEW;

	
	
END; ' LANGUAGE 'plpgsql';

CREATE TRIGGER t_numero_jugadores
AFTER UPDATE ON participacion
FOR EACH ROW EXECUTE PROCEDURE numero_jugadores();

CREATE or REPLACE FUNCTION ganador() RETURNS TRIGGER AS '
DECLARE
	jugador_var integer;
	turno_var integer;
	var_saldo integer;
	var_partida integer;
BEGIN 
	UPDATE partida  
		SET numero_jugadores= numero_jugadores+1
	 	WHERE partida_id=new.partida_id;
	
	RETURN NEW;

	
	
END; ' LANGUAGE 'plpgsql';

CREATE TRIGGER t_ganador
AFTER INSERT ON participacion 
FOR EACH ROW EXECUTE PROCEDURE ganador();

