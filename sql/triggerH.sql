--------------------------------------------------------------------------
-- Ignacio Sainz-Trápaga 
-- Mario Pantoja
--------------------------------------------------------------------------

CREATE FUNCTION alquiler() RETURNS TRIGGER AS '
DECLARE
	varDueno int;
	varPartida int;
	varMovimiento int;
BEGIN	

	varMovimiento:=(select movimiento_id from movimiento natural join alquiler
		WHERE alquiler_id=new.alquiler_id);
	varPartida:= (SELECT pertenece_a_partida  from movimiento 
		where movimiento.movimiento_id=varMovimiento);

	SELECT jugador_actual INTO varDueno
		from movimiento natural join turno, compra_propiedad
		where compra_propiedad.compra_propiedad_id=movimiento.compra_propiedad_id 
		and new.calle_id=compra_propiedad.propiedad_id;
	
	RAISE NOTICE '' pagamos % euros al jugador : % en la partida % '', NEW.precio ,varDueno, new.partida_actual;

	UPDATE participacion 
		SET dinero= participacion.dinero+NEW.precio
		WHERE jugador_id=varDueno and partida_id=new.partida_actual;


     RETURN NEW;
  END;
' LANGUAGE 'plpgsql';

 
CREATE TRIGGER t_alquiler
AFTER INSERT OR UPDATE
ON alquiler FOR EACH ROW 
EXECUTE PROCEDURE alquiler();
