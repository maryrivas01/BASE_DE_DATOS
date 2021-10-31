USE Hospital 
 
   CREATE TABLE Paciente 
 (
        NumeroHistorialClinico INT PRIMARY KEY IDENTITY (1, 1),
		NombrePaciente VARCHAR (15),
		ApellidoPaciente VARCHAR (15),
		Domicilio VARCHAR (50),
		Sexo VARCHAR (15),
		CodigoPostal INT,
		Provincia VARCHAR (20),
		Telefono INT,
		Observaciones VARCHAR(250),
 
);

    CREATE TABLE MEDICO 
	(
		CodigoIdentificacion INT PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR (15),
		Apellido VARCHAR (15),
		Especialidad VARCHAR (25),
		NumeroColegiado INT,
		Cargo VARCHAR (30),
		Observacion VARCHAR (250),
	);

	CREATE TABLE INGRESO
	(
		CodigoDeIdentificacion INT PRIMARY KEY IDENTITY (1, 1),
		FechaIngreso DATE,
		NumeroPlanta INT,
		NumeroCama INT,
		Observaciones VARCHAR (250),

		CodigoPaciente INT,
		CodigoMedico INT,

		FOREIGN KEY (CodigoPaciente) REFERENCES PACIENTE(NumeroHistorialClinico),

		FOREIGN KEY (CodigoMedico) REFERENCES MEDICO(CodigoIdentificacion),
	);

	INSERT INTO PACIENTE VALUES('Luis', 'Tobar', 'Bo. Las Uvas', 'Masculino', 19232, 'San Salvador', 23232424, 'El paciente ingreso al hospital mostrando una sintomatología de dolor de cabeza, visión borrosa y malestar general.');
    INSERT INTO PACIENTE VALUES('Marta', 'Valdéz', 'El Chile', 'Femenino', 19232, 'Chalatenango', 56744576, 'La paciente ingreso al hospital mostrando una sintomatología de nauseas, Dolor de vientre, fiebres y cancancio, posible sospecha de embarazo.');
    INSERT INTO PACIENTE VALUES('Alexander', 'Zelaya', 'Bo. Santa Tecla, Potonico', 'Masculino', 19232, 'San Miguel', 23232424, 'El paciente ingreso al hospital mostrando una sintomatología de cuadro positivo para COVID-19, sera puesto en atención medica y en observación delicada.');


   INSERT INTO MEDICO VALUES ('Miguel', 'Santos', 'Cirujano',31965072, 'Jefe en turno diurno', 'Calidad humana, responsable y excelente');




 
 
 
 
 
 
 
 
 
 