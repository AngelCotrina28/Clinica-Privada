/*
NO COLOCAR INSERT DE COSAS NO NECESARIAS
EJEMPLO: INSERTAR ROLES ES NECESARIO YA QUE SON DATOS ESTATICOS CASI 0 DINAMICOS, POR ENDE
NO HAY APARTADO PARA CREAR ROLES, ASI QUE SIEMPRE TRABAJAREMOS CON LOS MISMOS: ADMI, CAJERO, 
ENFERMERA Y MEDICO.
INSERTAR TRABAJADORES NO ES NECESARIO DEBIDO A QUE SI EXISTE BOTONES PARA CREARLOS EN EL SISTEMA.
*/

/*PRIMERO EJECUTAR ESTOS COMANDOS:*/

DROP DATABASE bd_clinica;
CREATE DATABASE bd_clinica;


/*LUEGO CORRER EL BACKEND DEL SISTEMA, PARA QUE PUEDA CREAR LAS TABLAS, NO OLVIDAR CONFIGURAR EL 
ARCHIVO backend/src/resources/aplicattion.properties CON SUS CREDENCIALES DE SUS RESPECTIVAS BD'S.
UNA VEZ CORRIDO EL BACKEND YA DEBEN ESTAR CREADAS LAS TABLAS EN MYSQL, EJECUTAR ESTOS COMANDOS:*/

--SCRIP CREACION DE ROLES

INSERT INTO roles (id, nombre, descripcion) VALUES
(1,'ADMINISTRADOR', 'Rol Principal de clinica, maneja todas las funcionalidades del sistema'),
(2,'MEDICO', 'Médico de la clínica'),
(3,'ENFERMERO', 'Registra cita médica de CONSULTA EXTERNA y apertura historial clínico'),
(4,'JEFE_ENFERMERIA', 'Registra cita médica de EMERGENCIA y apertura historial clínico'),
(5,'RECEPCIONISTA', 'Registra cita médica y apertura historial clínico'),
(6,'TECNICO_FARMACIA', 'Registra ordenes de medicamentos'),
(7,'CAJERO', 'Abre caja y realiza cobros de servicios médicos');

-- Script de inserción de Especialidades Médicas

INSERT INTO especialidades (nombre, descripcion) VALUES
('Medicina General',         'Atención primaria y consulta general'),
('Cardiología',              'Diagnóstico y tratamiento de enfermedades cardiovasculares'),
('Pediatría',                'Atención médica a niños y adolescentes'),
('Ginecología y Obstetricia','Salud reproductiva y embarazo'),
('Traumatología y Ortopedia','Lesiones y enfermedades del aparato locomotor'),
('Neurología',               'Enfermedades del sistema nervioso central y periférico'),
('Gastroenterología',        'Enfermedades del aparato digestivo'),
('Dermatología',             'Enfermedades de la piel, cabello y uñas'),
('Oftalmología',             'Diagnóstico y tratamiento de enfermedades oculares'),
('Psiquiatría',              'Salud mental y trastornos psiquiátricos');

--Script para INSERTAR UNA INSTANCIA DE TRABAJADOR Y PODER EMPEZAR A TRABAJAR:
--user: admin
--password: admin123
INSERT INTO trabajadores (id, activo, colegiatura, created_at, dni, email, fecha_nacimiento, nombre_completo, password_hash, 
    telefono, updated_at, username, rol_id) VALUES 
(1, 1, NULL, '2026-04-30 22:26:17', '12345678', 'admin@rcp.com', '1990-01-01', 'Administrador del Sistema', '$2a$10$QFo1SwDMcwIuhIeGvtX3EOqMqiQ.ctiJvAdnNtD/oyBrRosfZjEea', 
    '999888777', '2026-04-30 22:26:17', 'admin', 1);
--TRABAJADORES PREDETERMINADOS
--CLAVES: 123456
INSERT INTO trabajadores (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (2,1,NULL,'2026-05-05 03:32:31.163082','74009891','acotrina@rcp.com','2002-05-28','Angel Eduardo Cotrina Ruiz','$2a$10$KiKGVLTyEdHtwa1jer3Jcu.TmbDGGuIDfI3WQrf0ioHvjbXXlmUMy','994896318','2026-05-05 03:34:20.786119','acotrina',7);
INSERT INTO trabajadores (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (3,1,NULL,'2026-05-05 03:33:07.583191','12322222','ksanroman@rcp.com','2002-02-12','Kazumi San Roman Torres','$2a$10$ctPXtUZQtpiAZY5qCDuonOB1P17SnepAf0wn9KRx2dHcMTXeZ3WmW','222222222','2026-05-05 03:33:07.583191','ksanroman',5);
INSERT INTO trabajadores (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (4,1,'123456','2026-05-05 03:34:01.710229','07972802','rruiz@rcp.com','1970-03-17','Rosario Ruth Ruiz Leguia','$2a$10$WyG/6asmP3Eg81gcH65emetkGrJv67SVEfQA710uAANqvhpeMhUmq','995546029','2026-05-05 03:34:01.710229','rruiz',2);
INSERT INTO trabajadores (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (5,1,NULL,'2026-05-05 03:35:13.673858','12345672','elpepe@rcp.com','2000-01-11','El pepe','$2a$10$TqKS7bMdl9NkqjAAF2FPx.JIdJGGzsvl4ZFCfH45A3HhpC.4kP4ja','987654321','2026-05-05 03:35:13.673858','elpepe',6);