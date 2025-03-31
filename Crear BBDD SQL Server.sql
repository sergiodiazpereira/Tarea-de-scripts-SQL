CREATE TABLE jesuita (
    idJesuita TINYINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    codigo CHAR(5) NULL,
    nombre VARCHAR(50) NOT NULL UNIQUE, 
    nombreAlumno VARCHAR(100) NOT NULL UNIQUE, 
    firma VARCHAR(300)  NOT NULL,
    firmaIngles VARCHAR(300)  NOT NULL
);

CREATE TABLE lugar (
    ip CHAR(15) NOT NULL PRIMARY KEY, 
    nombre_maquina CHAR(12) NOT NULL, 
    lugar VARCHAR(30) NOT NULL
);

CREATE TABLE visita (
    idVisita SMALLINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idJesuita TINYINT NOT NULL,
    ip CHAR(15) NOT NULL, 
    fechaHora DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT Lugar_Visita FOREIGN KEY (ip) REFERENCES lugar(ip),
    CONSTRAINT Jesuita_Visita FOREIGN KEY (idJesuita) REFERENCES jesuita(idJesuita)
);