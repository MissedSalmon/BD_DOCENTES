CREATE TABLE Docente (
    legajo int PRIMARY KEY,
    DNI int,
    nombre VARCHAR(100) NOT NULL, 
    estado_civil VARCHAR(50),
    email VARCHAR(100),
    sexo ENUM('M', 'F'), 
    fecha_nacimiento DATE
);

CREATE TABLE contactos (
    numero BIGINT PRIMARY KEY,
    tipo VARCHAR(50),
    medio VARCHAR(100)
);

CREATE TABLE DocentePoseeContactos (
    legajo INT, 
    numero BIGINT,
    PRIMARY KEY (legajo, numero),
    FOREIGN KEY (legajo) REFERENCES docente(legajo),
    FOREIGN KEY (numero) REFERENCES contactos(numero)
);

CREATE TABLE Publicaciones (
    titulo VARCHAR(255) PRIMARY KEY,
    año INT,
    ref_biblio VARCHAR(255)
);

CREATE TABLE DocenteTienePublicaciones (
    legajo INT,
titulo VARCHAR(255),
    PRIMARY KEY (legajo, titulo),
    FOREIGN KEY (legajo) REFERENCES docente(legajo),
    FOREIGN KEY (titulo) REFERENCES publicaciones(titulo)
);

CREATE TABLE Idiomas (
    id_idioma int primary key,
    nivel VARCHAR(3),
    idioma VARCHAR(20),
    institucion VARCHAR(50),
    certificacion varchar(50)
);

CREATE TABLE DocenteSabeIdiomas (
    legajo INT,
    id_idioma int,
    PRIMARY KEY (legajo,id_idioma),
    FOREIGN KEY (id_idioma) REFERENCES idiomas(id_idioma),
    FOREIGN KEY (legajo) REFERENCES docente(legajo)
);


CREATE TABLE ReunionesCientificas (
    id_reunion INT PRIMARY KEY,
    titulo VARCHAR(100),
    fecha DATE,
    participacion VARCHAR(30)
);

CREATE TABLE DocenteParticipaReuniones (
    legajo INT,
    id_reunion INT,
    PRIMARY KEY (legajo, id_reunion),
    FOREIGN KEY (legajo) REFERENCES docente(legajo),
    FOREIGN KEY (id_reunion) REFERENCES ReunionesCientificas(id_reunion)
);

CREATE TABLE PasividadObtenida (
    id_pasividad INT PRIMARY KEY,
    regimen VARCHAR(50),
    fecha_inicio DATE,
    suspendido BOOLEAN,
    causa VARCHAR(255),
    legajo INT not null,
    FOREIGN KEY (legajo) REFERENCES Docente(legajo)
);

CREATE TABLE Ubicacion(
    CP int PRIMARY KEY,
    Provincia varchar(50),
    ciudad varchar(50)
);
CREATE TABLE Domicilio (
    id_domicilio INT PRIMARY KEY,
    barrio VARCHAR(100),
    calle VARCHAR(100),
    numero INT,
    piso INT,
    depto VARCHAR(50),
    cp INT not null,
    FOREIGN KEY (CP) REFERENCES Ubicacion(CP)
);


CREATE TABLE Institucion (
    CUIT BIGINT PRIMARY KEY,
    razon_social VARCHAR(100),
    id_domicilio INT,
FOREIGN KEY (id_domicilio) REFERENCES Domicilio(id_domicilio)
);

CREATE TABLE Empresa(
    cuit BIGINT PRIMARY KEY,
    ActividadPrincipal  VARCHAR(100),
    tipo VARCHAR(10),
    FOREIGN KEY (cuit) REFERENCES Institucion(cuit)
);

CREATE TABLE Universidad(
    cuit  BIGINT PRIMARY KEY,
    dependencia VARCHAR(100),
    unidad_academica VARCHAR(50),
    FOREIGN KEY (cuit) REFERENCES Institucion(cuit)
);


CREATE TABLE TareasNoOficiales (
    id_tarea INT PRIMARY KEY,
    fecha_inicio DATE,
    RelacionDependencia VARCHAR(50),
    FuncionDesempeñada VARCHAR(50),
    institucion bigint,
    FOREIGN KEY (institucion) REFERENCES Institucion(CUIT)

);


CREATE TABLE DocenteRealizaTareaNoOficiales(
    legajo INT,
    id_tarea INT,
    PRIMARY KEY (legajo, id_tarea),
    FOREIGN KEY ( legajo) REFERENCES Docente(legajo),
    FOREIGN KEY (id_tarea) REFERENCES TareasNoOficiales(id_Tarea)
);

CREATE TABLE Antecedentes (
    id_antecedentes INT PRIMARY KEY,
    id_docentes INT not null,
    nombre_cargo VARCHAR(200),
    funcion VARCHAR(255),
    reparticion INT,
    fecha_inicio DATE ,
    fecha_fin DATE,
    FOREIGN KEY (id_docentes) REFERENCES Docente(Legajo)
);

CREATE TABLE Antecedentes_Docentes(
   id_antecedentes INT PRIMARY KEY,
   materia VARCHAR(200),
   id_corresponde BIGINT NOT NULL, 
   FOREIGN KEY (id_antecedentes) REFERENCES Antecedentes(id_antecedentes),
   FOREIGN KEY (id_corresponde) REFERENCES Universidad(CUIT)
);

CREATE TABLE Antecedentes_Profesionales (
    id_antecedentes INT PRIMARY KEY,
    tipo_act VARCHAR(200),
    id_corresponde BIGINT NOT NULL, 
    FOREIGN KEY (id_antecedentes) REFERENCES Antecedentes(id_antecedentes),
    FOREIGN KEY (id_corresponde) REFERENCES Empresa(CUIT)
);

CREATE TABLE Horas (
    id_hora int primary key,
    hora_entrada TIME,
    hora_salida TIME,
    dia TINYINT,
    id_antecedentes INT NOT NULL,
    FOREIGN KEY (id_antecedentes) REFERENCES Antecedentes_Docentes (id_antecedentes) ON DELETE CASCADE
);

CREATE TABLE Seguro (
    nro_seguro INT PRIMARY KEY,
    nombre_aseguradora VARCHAR(100),
    cod_compania INT,
    tipo VARCHAR(50),
    Legajo INT NOT NULL,
    CUIT BIGINT NOT NULL,
    FOREIGN KEY (legajo) REFERENCES Docente(Legajo),
    FOREIGN KEY (CUIT) REFERENCES Institucion(CUIT)
);

CREATE TABLE Obra_Social (
    Nro_Obra INT PRIMARY KEY,
    Nombre_obra VARCHAR (30),
    Plan VARCHAR (60),
    Legajo INT NOT NULL,
    CUIT BIGINT NOT NULL,
    FOREIGN KEY (Legajo) REFERENCES Docente(Legajo),
    FOREIGN KEY (CUIT) REFERENCES Institucion(CUIT)

);

CREATE TABLE Familiar (
    nro_documento INT PRIMARY KEY, 
    NombreCompleto VARCHAR(100),
    tipo_documento VARCHAR(50), 
    id_Domicilio INT,
    fecha_nacimiento DATE,
    FOREIGN KEY (id_domicilio) REFERENCES Domicilio(id_domicilio)
);

CREATE TABLE DocenteAfiliaFamiliar(
    nro_documento INT,
    parentesco VARCHAR(50),
    Legajo INT, 
    PRIMARY KEY(nro_documento,legajo),
    FOREIGN KEY (Legajo) REFERENCES Docente (Legajo),
    FOREIGN KEY (nro_documento) REFERENCES Familiar (nro_documento)
);

CREATE TABLE SeguroBeneficiaFamiliar(
    nro_seguro INT,
    nro_documento INT,
    porcentaje REAL,
    PRIMARY KEY(nro_seguro,nro_documento),
    FOREIGN KEY (nro_seguro) REFERENCES Seguro(nro_seguro),
    FOREIGN KEY (nro_documento) REFERENCES Familiar(nro_documento)
);

CREATE TABLE ObraAfiliaFamiliar(
    nro_obra INT,
    nro_documento INT,
    PRIMARY KEY(nro_obra,nro_documento),
    FOREIGN KEY (nro_obra) REFERENCES obra_social(nro_obra),
    FOREIGN KEY (nro_documento) REFERENCES Familiar(nro_documento)
);


CREATE TABLE DocenteTieneDomicilio ( 
    legajo INT,
    id_domicilio INT,
    tipo VARCHAR(50),
    Primary key(legajo,id_domicilio),
    FOREIGN KEY (legajo) REFERENCES Docente(Legajo),
    FOREIGN KEY (id_domicilio) REFERENCES Domicilio(id_domicilio)
);

CREATE TABLE CursoOconf (
    curso_Conf VARCHAR(50) PRIMARY KEY,
    descripcion VARCHAR(100),
    cuit BIGINT NOT NULL,
    FOREIGN KEY (cuit) REFERENCES Institucion(CUIT)
);

CREATE TABLE DocenteDictaConferencia(
	curso_Conf VARCHAR(50),
	legajo INT,
    desde DATE,
    hasta DATE,
    primary key (curso_Conf,legajo),
    foreign key (curso_conf) references CursoOConf(curso_conf),
    foreign key (legajo) references Docente(legajo)
);


CREATE TABLE ActividadesInvestigacion (
    investigacion INT PRIMARY KEY,
    area_principal VARCHAR(100),
    categoria VARCHAR(50),
    institucion BIGINT NOT NULL,
    FOREIGN KEY (institucion) REFERENCES Institucion(CUIT)
);

CREATE TABLE DocenteParticipaInvestigacion(
    Legajo INT,
    investigacion INT,
    desde DATE,
    hasta  DATE,
    dedicación int,
    PRIMARY KEY(Legajo,investigacion),
    FOREIGN KEY (Legajo) REFERENCES Docente(Legajo),
    FOREIGN KEY (investigacion) REFERENCES ActividadesInvestigacion(Investigacion)
);

CREATE TABLE Titulos (
    idtitulo INT PRIMARY KEY,
    nivel VARCHAR(50),
    nombre VARCHAR(100)
);
CREATE TABLE DocenteObtieneTitulo(
    idTitulo INT,
    Legajo INT,
    Desde DATE,
    Hasta DATE,
    PRIMARY KEY(idTitulo,Legajo),
    FOREIGN KEY(idTitulo) REFERENCES Titulos(idtitulo),
    FOREIGN KEY(Legajo) REFERENCES Docente(Legajo)
);
CREATE TABLE UniversidadBrindaTitulo(
    idTitulo INT,
    Universidad BIGINT,
    PRIMARY KEY(idTitulo,Universidad),
    FOREIGN KEY(idTitulo) REFERENCES Titulos(idtitulo),
    FOREIGN KEY(Universidad) REFERENCES Universidad(CUIT)
);
CREATE TABLE ActividadesExtensionUniversitaria (
    idActividad INT PRIMARY KEY,
    acciones VARCHAR(255),
    cargo VARCHAR(50),
    CUIT BIGINT,
    FOREIGN KEY (CUIT) REFERENCES Universidad(CUIT)
);

CREATE TABLE docenteImpulsaActividadExt (
desde DATE,
 hasta DATE ,
 id_actividad_ext INT,
 Legajo INT,
 dedicación int,
 PRIMARY KEY( id_actividad_ext,Legajo ),
FOREIGN KEY (Legajo) REFERENCES Docente (Legajo),
FOREIGN KEY (id_actividad_ext) REFERENCES ActividadesExtensionUniversitaria (idActividad)
);
