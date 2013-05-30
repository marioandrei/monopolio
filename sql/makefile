#Por favor especifique su grupo y numero de pareja en las dos
#líneas siguientes
GRUPO=c
PAREJA=9
#Por lo general no se requiere modificar el fichero
#a partir de esta línea
export PGDATABASE:=$(GRUPO)_$(PAREJA)
export PGUSER :=alumnodb
export PGPASSWORD :=alumnodb
export PGCLIENTENCODING:=LATIN9
export PGHOST:=localhost
DBNAME =$(PGDATABASE)
PSQL = psql
CREATEDB = createdb
DROPDB = dropdb
PG_DUMP = pg_dump
all: borrar db tablas datos respaldo triggerE triggerF triggerG triggersH consultaA consultaB consultaC consultaD 
db:
	@echo Creando BBDD
	@$(CREATEDB)
tablas:
	@echo Creando tablas
	@cat tablas.sql | $(PSQL)
datos:
	@echo Poblando tablas
	@cat datos.sql | $(PSQL)
borrar:
	@echo Eliminando BBDD
	@$(DROPDB) $(DBNAME)
respaldo:
	@echo creando dumpfile
	@$(PG_DUMP) > $(DBNAME).sql
consultaA:
	@echo Preparando la consultaA
	@cat consultaA.sql | $(PSQL) -q | tee consultaA.log
consultaB:
	@echo Preparando la consultaB
	@cat consultaB.sql | $(PSQL) -q | tee consultaB.log
consultaC:
	@echo Preparando la consultaC
	@cat consultaC.sql | $(PSQL) -q | tee consultaC.log
consultaD:
	@echo Preparando la consultaD
	@cat consultaD.sql | $(PSQL) -q | tee consultaD.log
triggerE:
	@echo Creando triggerE
	@cat triggerE.sql | $(PSQL) | tee triggerE.log
triggerEtest:
	@echo Lanzando triggerEtest
	@cat triggerEtest.sql | $(PSQL) | tee triggerEtest.log
triggerF:
	@echo Creando triggerF
	@cat triggerF.sql | $(PSQL) | tee triggerF.log
triggerFtest:
	@echo Lanzando triggerFp2
	@cat triggerFtest.sql | $(PSQL) | tee triggerFtest.log
triggerG:
	@echo Creando triggerG
	@cat triggerG.sql | $(PSQL) | tee triggerG.log
triggerGtest:
	@echo Lanzando triggerGtest
	@cat triggerGtest.sql | $(PSQL) | tee triggerGtest.log
triggerH:
	@echo Creando triggerG
	@cat triggerH.sql | $(PSQL) | tee triggerH.log
triggerHtest:
	@echo Lanzando triggerGtest
	@cat triggerHtest.sql | $(PSQL) | tee triggerHtest.log
