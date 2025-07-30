INSERT INTO empleados (nombre) VALUES 
("CARMEN ACEVEDO"),
("RAMON ORTEGA"),
("CATALINA ROA"),
("JOAN BENAVIDES")
;

INSERT INTO estado_actividad (estado) VALUES
("Activo"),
("vacaciones"),
("sustituto")
;

INSERT INTO medicos (nombre, horario_consulta, periodo_sustitucion, id_estado) VALUES
('RICARDO GOMEZ','2025-06-14','9', 1),
("RICARDO LOPEZ","2025-05-19","7", 2),
("RICARDO GONZALES","2025-05-17","6", 1)
;

INSERT INTO pacientes (nombre, medicoID) VALUES 
("MARIA JOSE", "1"),
("MARIA CATALINA", "2"),
("MARIA CAMILA", "3")
; 