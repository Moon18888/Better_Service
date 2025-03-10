CREATE database BetterService;
USE BetterService;

CREATE TABLE usuario (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50),
    apellido_P VARCHAR(50),
    apellido_M VARCHAR(50),
    correo VARCHAR(50),
    telefono VARCHAR(15),
    ubicacion VARCHAR(200)
);

CREATE TABLE impacto (
    id_impacto INT IDENTITY(1,1) PRIMARY KEY,
    descripcion VARCHAR(30)
);

CREATE TABLE urgencia (
    id_urgencia INT IDENTITY(1,1) PRIMARY KEY,
    descripcion VARCHAR(30)
);

CREATE TABLE prioridad (
    id_prioridad INT IDENTITY(1,1) PRIMARY KEY,
    descripcion VARCHAR(10)
);

CREATE TABLE estatus (
    id_estatus INT IDENTITY(1,1) PRIMARY KEY,
    descripcion VARCHAR(50)
);

CREATE TABLE grupossoporte (
    id_grupos INT IDENTITY(1,1) PRIMARY KEY,
    grupo VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    nivel INT NOT NULL
);


CREATE TABLE categorias (
    id_categoria INT IDENTITY(1,1)Primary key,
    descripcion VARCHAR(100) NOT NULL,
    id_subcategoria INT,
    FOREIGN KEY (id_subcategoria) REFERENCES categorias(id_categoria)

);


CREATE TABLE especialistas (
    id_especialista INT,
    job_title VARCHAR(100) NOT NULL,
    id_grupo INT,
    FOREIGN KEY (id_especialista) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_grupo) REFERENCES grupossoporte(id_grupos)
);

CREATE TABLE incidencias (
    id_incidencia INT IDENTITY(1,1) PRIMARY KEY,
    fecha DATE,
    id_usuario INT,
    short_description VARCHAR(255),
    descripcion VARCHAR(1500),
    id_urgencia INT,
    id_impacto INT,
    id_prioridad INT,
    id_categoria INT,
    id_subcategoria INT,
    id_grupos INT,
    id_especialista INT,
    id_estatus INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_urgencia) REFERENCES urgencia(id_urgencia),
    FOREIGN KEY (id_impacto) REFERENCES impacto(id_impacto),
    FOREIGN KEY (id_prioridad) REFERENCES prioridad(id_prioridad),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_subcategoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_grupos) REFERENCES grupossoporte(id_grupos),
    FOREIGN KEY (id_especialista) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_estatus) REFERENCES estatus(id_estatus)
   );

CREATE TABLE notas (
    id_notas INT IDENTITY(1,1) PRIMARY KEY,
    id_incidencia INT,
    id_especialista INT,
    fecha_nota DATETIME,
    descripcion VARCHAR(100),
    FOREIGN KEY (id_incidencia) REFERENCES incidencias(id_incidencia),
    FOREIGN KEY (id_especialista) REFERENCES usuario(id_usuario)
);
