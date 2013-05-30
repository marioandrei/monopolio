--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------
-- DROP TRIGGER t_controla_turno ON turno;
-- DROP FUNCTION controla_turno();

CREATE or REPLACE FUNCTION controla_turno() RETURNS TRIGGER AS '
DECLARE
	varTurnoCorrecto integer; 
BEGIN 
	SELECT jugador_siguiente INTO varTurnoCorrecto 
		FROM turno where turno_id=NEW.turno_id-1 AND turno.partida_id=NEW.partida_id; 
		
	IF NEW.jugador_actual <> varTurnoCorrecto THEN
		RAISE EXCEPTION ''no es su turno, el jugador % tiene el turno  '', varTurnoCorrecto;
	end if;
	
	
	RETURN NEW;
END; ' LANGUAGE 'plpgsql';


CREATE TRIGGER t_controla_turno
	BEFORE INSERT 
	ON turno 
	FOR EACH ROW 
	EXECUTE PROCEDURE controla_turno();
