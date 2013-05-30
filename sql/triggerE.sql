--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
CREATE or REPLACE FUNCTION pagar200() RETURNS TRIGGER AS '
DECLARE
	actual integer; 
	futura integer; 
	mov int;
BEGIN 
	
	SELECT INTO actual casilla_id_actual FROM turno WHERE turno.casilla_id_actual=NEW.casilla_id_actual;
	SELECT INTO futura casilla_id_futura FROM turno WHERE turno.casilla_id_actual=NEW.casilla_id_actual;
	mov:= nextval(''movimiento_seq'');
	IF futura < actual THEN
		insert into movimiento(movimiento_id,turno_id,pertenece_a_partida,saldo) 
			    values (mov, new.turno_id, new.partida_id, 200); 		
		RAISE NOTICE ''turno % jugador % pasa por salida  '', new.turno_id, new.jugador_actual;
		
		RAISE NOTICE ''se suman 200 al jugador % '', new.jugador_actual;
		
	end if;
	RETURN NEW;
END; ' LANGUAGE 'plpgsql';


CREATE TRIGGER pasa_por_salida
AFTER INSERT ON turno
FOR EACH ROW EXECUTE PROCEDURE pagar200();


