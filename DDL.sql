CREATE DATABASE IF NOT EXISTS gestion_hospital;

USE gestion_hospital;


CREATE TABLE IF NOT EXISTS empleados (
    ID_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100)

);

CREATE TABLE IF NOT EXISTS estado_actividad (
    ID_estado INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR (10)

);

CREATE TABLE IF NOT EXISTS medicos (
    ID_medico INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100),
    tipo_medico VARCHAR (100),
    horario_consulta VARCHAR (10),
    periodo_sustitucion VARCHAR (10),
    id_estado INT,
    FOREIGN KEY (ID_estado) REFERENCES estado_actividad (ID_estado)

);

CREATE TABLE IF NOT EXISTS control_vacaciones (
    ID_control INT PRIMARY KEY AUTO_INCREMENT,
    empleadoID INT,
    medicoID INT,
    v_planificadas DATE, 
    v_disfrutadas DATE,
    FOREIGN KEY (empleadoID) REFERENCES empleados (ID_empleado),
    FOREIGN KEY (medicoID) REFERENCES medicos (ID_medico)

);

CREATE TABLE IF NOT EXISTS pacientes (
    ID_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100),
    medicoID INT,
    FOREIGN KEY (medicoID) REFERENCES medicos (ID_medico)
);

CREATE TABLE IF NOT EXISTS tipo_medico (
    ID_tipo INT PRIMARY KEY AUTO_INCREMENT,
    tipo_medico VARCHAR (30),
    medicoID INT,
    FOREIGN KEY (medicoID) REFERENCES medicos (ID_medico)
);

CREATE TABLE IF NOT EXISTS tipo_empleados (
    ID_tipo_empleado INT PRIMARY KEY AUTO_INCREMENT,
    tipo_empleado VARCHAR (30),
    empleadoID INT,
    FOREIGN KEY (empleadoID) REFERENCES empleados (ID_empleado)
);
