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
('Alergología', 'Diagnóstico y tratamiento de alergias y enfermedades inmunológicas.'),
('Anestesiología', 'Cuidados perioperatorios, manejo del dolor y reanimación.'),
('Cardiología', 'Enfermedades del corazón y del sistema circulatorio.'),
('Cirugía Cardiovascular', 'Tratamiento quirúrgico de enfermedades del corazón y vasos sanguíneos.'),
('Cirugía General', 'Intervenciones quirúrgicas del tracto gastrointestinal y sistema endocrino.'),
('Cirugía Maxilofacial', 'Tratamiento quirúrgico de enfermedades de la cara, boca y cuello.'),
('Cirugía Pediátrica', 'Intervenciones quirúrgicas en fetos, lactantes, niños y adolescentes.'),
('Cirugía Plástica y Reconstructiva', 'Restauración o mejora de la forma y función corporal.'),
('Dermatología', 'Estudio y tratamiento de las enfermedades de la piel, cabello y uñas.'),
('Endocrinología', 'Trastornos de las glándulas endocrinas y del metabolismo (ej. Diabetes).'),
('Gastroenterología', 'Enfermedades del aparato digestivo y órganos asociados (hígado, páncreas).'),
('Geriatría', 'Atención integral de la salud en adultos mayores.'),
('Ginecología y Obstetricia', 'Salud del sistema reproductor femenino, embarazo y parto.'),
('Hematología', 'Estudio y tratamiento de las enfermedades de la sangre.'),
('Hepatología', 'Estudio y tratamiento de enfermedades del hígado, vesícula biliar y vías biliares.'),
('Infectología', 'Diagnóstico y tratamiento de enfermedades infecciosas y parasitarias.'),
('Medicina Física y Rehabilitación', 'Recuperación de funciones motoras y tratamiento de discapacidad.'),
('Medicina General', 'Primer nivel de atención médica, prevención y tratamiento de enfermedades comunes.'),
('Medicina Intensiva (UCI)', 'Atención de pacientes con condiciones de salud críticas o que amenazan la vida.'),
('Medicina Interna', 'Atención integral del adulto, prevención, diagnóstico y tratamiento no quirúrgico.'),
('Medicina Legal y Forense', 'Aplicación de conocimientos médicos a problemas legales y judiciales.'),
('Neumología', 'Estudio y tratamiento de enfermedades del sistema respiratorio y pulmones.'),
('Neurología', 'Trastornos del sistema nervioso central y periférico.'),
('Neurocirugía', 'Tratamiento quirúrgico de enfermedades del sistema nervioso.'),
('Nefrología', 'Estudio y tratamiento de las enfermedades del riñón.'),
('Nutrición y Dietética', 'Manejo de la alimentación y estado nutricional del paciente.'),
('Odontología', 'Salud bucodental, dientes, encías y sistema estomatognático.'),
('Oftalmología', 'Enfermedades de los ojos y de la visión.'),
('Oncología Médica', 'Diagnóstico y tratamiento del cáncer mediante terapias sistémicas.'),
('Otorrinolaringología', 'Enfermedades del oído, nariz, garganta y estructuras del cuello.'),
('Pediatría', 'Atención médica de bebés, niños y adolescentes.'),
('Psiquiatría', 'Diagnóstico y tratamiento de trastornos mentales y del comportamiento.'),
('Radiología', 'Diagnóstico por imágenes (Rayos X, Ecografías, Resonancias).'),
('Reumatología', 'Enfermedades médicas del aparato locomotor y tejido conectivo.'),
('Traumatología y Ortopedia', 'Lesiones y enfermedades del sistema musculoesquelético.'),
('Urología', 'Enfermedades del sistema urinario y del aparato reproductor masculino.'),
('Toxicología', 'Estudio y tratamiento de intoxicaciones por sustancias.'),
('Gastroenterología Pediátrica', 'Trastornos digestivos específicos en niños.'),
('Cardiología Pediátrica', 'Enfermedades del corazón específicas en niños.'),
('Neonatología', 'Cuidado y tratamiento de recién nacidos, especialmente los prematuros.');

--Script para INSERTAR UNA INSTANCIA DE TRABAJADOR Y PODER EMPEZAR A TRABAJAR:
--user: admin
--password: admin123
INSERT INTO trabajadores (id, activo, colegiatura, created_at, dni, email, fecha_nacimiento, nombre_completo, password_hash, 
    telefono, updated_at, username, rol_id) VALUES 
(1, 1, NULL, '2026-04-30 22:26:17', '12345678', 'admin@clinica.com', '1990-01-01', 'Administrador del Sistema', '$2a$10$QFo1SwDMcwIuhIeGvtX3EOqMqiQ.ctiJvAdnNtD/oyBrRosfZjEea', 
    '999888777', '2026-04-30 22:26:17', 'admin', 1);
--TRABAJADORES PREDETERMINADOS
--CLAVES: 123456
INSERT INTO `` (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (1,'1',NULL,'2026-04-30 22:26:17.000000','12345678','admin@clinica.com','1990-01-01','Administrador del Sistema','$2a$10$QFo1SwDMcwIuhIeGvtX3EOqMqiQ.ctiJvAdnNtD/oyBrRosfZjEea','999888777','2026-04-30 22:26:17.000000','admin',1);
INSERT INTO `` (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (3,'1',NULL,'2026-05-05 03:32:31.163082','74009891','acotrina@rcp.com','2002-05-28','Angel Eduardo Cotrina Ruiz','$2a$10$KiKGVLTyEdHtwa1jer3Jcu.TmbDGGuIDfI3WQrf0ioHvjbXXlmUMy','994896318','2026-05-05 03:34:20.786119','acotrina',7);
INSERT INTO `` (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (4,'1',NULL,'2026-05-05 03:33:07.583191','12322222','ksanroman@rcp.com','2002-02-12','Kazumi San Roman Torres','$2a$10$ctPXtUZQtpiAZY5qCDuonOB1P17SnepAf0wn9KRx2dHcMTXeZ3WmW','222222222','2026-05-05 03:33:07.583191','ksanroman',5);
INSERT INTO `` (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (5,'1','123456','2026-05-05 03:34:01.710229','07972802','rruiz@rcp.com','1970-03-17','Rosario Ruth Ruiz Leguia','$2a$10$WyG/6asmP3Eg81gcH65emetkGrJv67SVEfQA710uAANqvhpeMhUmq','995546029','2026-05-05 03:34:01.710229','rruiz',2);
INSERT INTO `` (`id`,`activo`,`colegiatura`,`created_at`,`dni`,`email`,`fecha_nacimiento`,`nombre_completo`,`password_hash`,`telefono`,`updated_at`,`username`,`rol_id`) VALUES (6,'1',NULL,'2026-05-05 03:35:13.673858','12345672','elpepe@rcp.com','2000-01-11','El pepe','$2a$10$TqKS7bMdl9NkqjAAF2FPx.JIdJGGzsvl4ZFCfH45A3HhpC.4kP4ja','987654321','2026-05-05 03:35:13.673858','elpepe',6);