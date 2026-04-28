/*Ejecutar todo de golpe.
NO COLOCAR INSERT DE COSAS NO NECESARIAS
EJEMPLO: INSERTAR ROLES ES NECESARIO YA QUE SON DATOS ESTATICOS CASI 0 DINAMICOS, POR ENDE
NO HAY APARTADO PARA CREAR ROLES, ASI QUE SIEMPRE TRABAJAREMOS CON LOS MISMOS: ADMI, CAJERO, 
ENFERMERA Y MEDICO.
INSERTAR TRABAJADORES NO ES NECESARIO DEBIDO A QUE SI EXISTE BOTONES PARA CREARLOS EN EL SISTEMA.*/

/*PRIMERO EJECUTAR ESTOS COMANDOS:*/

DROP DATABASE bd_clinica;
CREATE DATABASE bd_clinica;


/*LUEGO CORRER EL BACKEND DEL SISTEMA, PARA QUE PUEDA CREAR LAS TABLAS, NO OLVIDAR CONFIGURAR EL 
ARCHIVO backend/src/resources/aplicattion.properties CON SUS CREDENCIALES DE SUS RESPECTIVAS BD'S.
UNA VEZ CORRIDO EL BACKEND YA DEBEN ESTAR CREADAS LAS TABLAS EN MYSQL, EJECUTAR ESTOS COMANDOS:*/

INSERT INTO roles (id, nombre, descripcion) VALUES
(1,'ADMINISTRADOR', 'Rol Principal de clinica, maneja todas las funcionalidades del sistema'),
(2,'MEDICO', 'Médico de la clínica'),
(3,'ENFERMERO', 'Registra cita médica de CONSULTA EXTERNA y apertura historial clínico'),
(4,'JEFE_ENFERMERIA', 'Registra cita médica de EMERGENCIA y apertura historial clínico'),
(5,'RECEPCIONISTA', 'Registra cita médica y apertura historial clínico'),
(6,'TECNICO_FARMACIA', 'Registra ordenes de medicamentos'),
(7,'CAJERO', 'Abre caja y realiza cobros de servicios médicos');

-- Script de inserción de Especialidades Médicas
-- Usamos INSERT IGNORE por si lo corres dos veces, no te duplique los datos.

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