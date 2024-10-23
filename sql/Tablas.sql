CREATE TABLE Categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion_categoria VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_categoria)
);  

CREATE TABLE Marca (
    id_marca INT NOT NULL AUTO_INCREMENT,
    nombre_marca VARCHAR(50) NOT NULL,
    descripcion_marca VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_marca)
);

CREATE TABLE Presentacion (
    id_presentacion INT NOT NULL AUTO_INCREMENT,
    tipo_presentacion VARCHAR(50) NOT NULL,
    descripcion_presentacion VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_presentacion)
);

CREATE TABLE Rol (
    id_rol INT NOT NULL AUTO_INCREMENT,
    nombre_rol VARCHAR(50) NOT NULL,
    descripcion_rol VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_rol)
);

CREATE TABLE Productos (
    codigo_barras VARCHAR(13) NOT NULL,
    id_marca INT NOT NULL,
    id_categoria INT NOT NULL,
    id_presentacion INT NOT NULL,
    nombre_productos VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL,
    existencias INT NOT NULL,
    estatus CHAR(1) NOT NULL,
    PRIMARY KEY (codigo_barras),
    FOREIGN KEY (id_marca) REFERENCES Marca(id_marca),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_presentacion) REFERENCES Presentacion(id_presentacion)
);

CREATE TABLE Venta (
    id_venta INT NOT NULL AUTO_INCREMENT,
    total_venta DOUBLE NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(id_venta)
);

CREATE TABLE Detalle_venta (
    Id_detalle_venta INT NOT NULL AUTO_INCREMENT,
    codigo_barras VARCHAR(13) NOT NULL,
    Id_venta INT NOT NULL, 
    cantidad INT NOT NULL,
    PRIMARY KEY(Id_detalle_venta),
    FOREIGN KEY(codigo_barras) REFERENCES Productos(codigo_barras),
    FOREIGN KEY(Id_venta) REFERENCES Venta(id_venta) 
);

CREATE TABLE Usuario (
    Clv_Usuario VARCHAR(5) NOT NULL,
    id_rol INT NOT NULL, 
    Nombre VARCHAR(70) NOT NULL,
    Apellido_Paterno VARCHAR(50) NOT NULL,
    Apellido_Materno VARCHAR(50) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Usuario VARCHAR(50) NOT NULL,
    Contraseña VARCHAR(50) NOT NULL,
    PRIMARY KEY (Clv_Usuario),
    FOREIGN KEY(id_rol) REFERENCES Rol(id_rol)
);

