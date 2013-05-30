--UNION
-- 
-- UNION
-- 
-- SELECT casilla, bombre, tipo, "----" as barrio from 
-- 
-- 



---a) Indicar el jugador que más casas ha comprado en toda la historia.
-- buscar el total de compras de cada jugador a traves del 
SELECT * FROM jugador CROSS JOIN pago USING (pago_id);




SELECT turno_id, jugador_actual, casilla_id_actual, alquiler_id FROM turno NATURAL JOIN movimiento;



SELECT * FROM turno NATURAL JOIN compra_casa;




--para la consulta B

select calle_id,nombre, color, valor from calle  natural join barrio;

select * from casilla  natural join especial  where (casilla.casilla_id= especial.especial_id);


-- para consulta C

select * from jugador, (select jugador_actual,saldo from turno  natural join movimiento)as foo where foo.jugador_actual=jugador.jugador_id; 


DECLARE
   CURSOR c1 is
      SELECT jugador_id, compra_casa, precio FROM emp
         ORDER BY sal DESC;   -- start with highest paid employee
   my_jugador_id VARCHAR2(10);
   my_compra_casa NUMBER(4);
   my_precio   NUMBER(7,2);
BEGIN
   OPEN c1;
   FOR i IN 1..5 LOOP
      FETCH c1 INTO my_jugador_id, my_compra_casa, my_precio;
      EXIT WHEN c1%NOTFOUND;  /* in case the number requested */
                              /* is more than the total       */
                              /* number of employees          */
      INSERT INTO temp VALUES (my_precio, my_compra_casa, my_jugador_id);
      COMMIT;
   END LOOP;
   CLOSE c1;
END;



SELECT turno_id, dado_1, dado_2, movimiento_id
FROM turno NATURAL JOIN movimiento
order BY partida_id;
- 
-- --ERROR:  each UNION query must have the same number of columns
-- 
-- SELECT * FROM calles
-- UNION
-- SELECT * from especiales;
-- 
--  select * 
-- from casilla left join estaciones 
-- on casilla.casilla_id=estaciones.estacion_id;
-- 
-- 
-- 
-- 
-- CREATE OR REPLACE VIEW calles AS
-- SELECT casilla_id,nombre
-- FROM casilla  NATURAL JOIN calle where calle_id=casilla.casilla_id;
-- 
-- CREATE OR REPLACE VIEW especiales AS
-- SELECT casilla_id, tipo
-- FROM casilla  NATURAL JOIN especial 
-- WHERE (casilla.casilla_id= especial.especial_id);
-- 
-- select 
--         a.casilla_id,
--         b.calle_id,
--         b.nombre,
--         c.especial_id,
--         c.tipo
-- from 
--        casilla as a,calle as b ,especial as c
-- where 
--        a.casilla_id = b.calle_id OR a.casilla_id = c.especial_id;
-- 
-- 
-- 
-- select 
--         a.casilla_id,
--         b.nombre,
--         c.tipo
-- from 
--        casilla as a natural join calles as b ,casilla natural join especiales as c    
-- where                                                                                  a.casilla_id = b.casilla_id or a.casilla_id = c.casilla_id order by a.casilla_id;
-- --UNION
-- -- 
-- -- UNION
-- -- 
-- -- SELECT casilla, bombre, tipo, "----" as barrio from 
-- -- 
-- --
-- --gonna find my toothpick now





-- 
-- 
-- CREATE TRIGGER <nombre> BEFORE|AFTER INSERT |UPDATE |DELETE OM <tabla>
-- 
-- FOR EACH ROW|STATEMENT
-- 
-- EXECUTE PROCEDURE X();


-- variables OLD |NEW solo en EACH ROW

-- RETURN {NULL NEW } puede devolver en los triggers BEFORE ROW

-- RAISE EXCEPTION '---';