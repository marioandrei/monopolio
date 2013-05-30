--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
-- DROP TRIGGER t_controla_jugando ON turno;
-- DROP FUNCTION controla_jugando();

CREATE or REPLACE FUNCTION controla_jugando() RETURNS TRIGGER AS '
DECLARE
	var_jugando integer; 
BEGIN 
	SELECT jugando INTO var_jugando 
		FROM participacion
		where jugador_id=NEW.jugador_actual AND partida_id=NEW.partida_id; 
		
	IF var_jugando <>  1 THEN
		RAISE EXCEPTION ''no es su turno, el jugador % esta eliminado  '', NEW.jugador_actual;
	end if;
	RETURN NEW;
END; ' LANGUAGE 'plpgsql';


CREATE TRIGGER t_controla_jugando
	BEFORE INSERT 
	ON turno 
	FOR EACH ROW 
	EXECUTE PROCEDURE controla_jugando();
