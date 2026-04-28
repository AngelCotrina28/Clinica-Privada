/*Ejecutar todo de golpe.
NO COLOCAR INSERT DE COSAS NO NECESARIAS
EJEMPLO: INSERTAR ROLES ES NECESARIO YA QUE SON DATOS ESTATICOS CASI 0 DINAMICOS, POR ENDE
NO HAY APARTADO PARA CREAR ROLES, ASI QUE SIEMPRE TRABAJAREMOS CON LOS MISMOS: ADMI, CAJERO, 
ENFERMERA Y MEDICO.
INSERTAR TRABAJADORES NO ES NECESARIO DEBIDO A QUE SI EXISTE BOTONES PARA CREARLOS EN EL SISTEMA.*/

DROP DATABASE bd_clinica;
CREATE DATABASE bd_clinica;

INSERT INTO roles (nombre, descripcion) VALUES ('Administrador', 'Administrador del sistema');
INSERT INTO roles (nombre, descripcion) VALUES ('Medico', 'Médico de la clínica');
INSERT INTO roles (nombre, descripcion) VALUES ('Enfermera', 'Enfermero de la clínica');
INSERT INTO roles (nombre, descripcion) VALUES ('Cajero', 'Cajero de la clínica');
