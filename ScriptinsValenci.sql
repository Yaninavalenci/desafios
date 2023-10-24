-- Creación del esquema

CREATE SCHEMA mitaller;

-- Conecto con el esquema

USE mitaller;

-- Creación de tablas especificando claves primarias y foráneas

CREATE TABLE clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    telefono INT NOT NULL, 
	dni INT NOT NULL, 
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL
);

CREATE TABLE usuarios(
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    password INT NOT NULL, 
	rol VARCHAR(45) NOT NULL, 
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL
);

CREATE TABLE estado(
	id_estado INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    tipo_estado VARCHAR(45) NOT NULL
);

CREATE TABLE forma_pago(
	id_pago INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    tipo_pago VARCHAR(45) NOT NULL
);

CREATE TABLE tecnicos(
	id_tecnico INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL
);

CREATE TABLE ordenes_de_trabajo(
    id_orden INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    id_usuario INT NOT NULL, 
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
    id_estado INT NOT NULL,
	FOREIGN KEY (id_estado) REFERENCES estado (id_estado),
    id_tecnico INT NOT NULL, 
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos (id_tecnico),
	item VARCHAR(45) NOT NULL,
	fecha DATE NOT NULL
); 

CREATE TABLE factura(
    id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_orden INT NOT NULL,
    FOREIGN KEY (id_orden) REFERENCES ordenes_de_trabajo (id_orden),
    id_pago int NOT NULL,
    FOREIGN KEY (id_pago) REFERENCES forma_pago (id_pago),
    importe INT NOT NULL, 
	fecha date NOT NULL
);



INSERT INTO clientes (id_cliente, telefono, dni, nombre, apellido)
VALUES (null, 1155889977, 30258147, 'beth', 'gibbons'),
(null, 1155998877, 30258148, 'roger', 'waters'),
(null, 1155998822, 30258149, 'tom', 'yorke'),
(null, 1155889999, 30258162, 'jimmy', 'hendrix'),
(null, 1155998832, 30258150, 'bjork', 'gum');

INSERT INTO usuarios (id_usuario, password, rol, nombre, apellido)
VALUES (null, 1234, 'supervisor', 'fito', 'paez'),
(null, 2255, 'vendedor', 'luis', 'spinetta'),
(null, 4321, 'tecnico', 'luca', 'prodan'),
(null, 3412, 'supervisor', 'gustavo', 'cerati'),
(null, 5522, 'tecnico', 'charly', 'garcia');

INSERT INTO estado (id_estado, tipo_estado)
VALUES (null, 'recibido'),
(null, 'diagnostico'),
(null, 'presupuestado'),
(null, 'esperando_aprobacion'),
(null, 'en_curso'),
(null, 'finalizado'),
(null, 'entregado');

INSERT INTO forma_pago (id_pago, tipo_pago)
VALUES (null, 'contado'),
(null, 'debito'),
(null, 'credito'),
(null, 'ahora12'),
(null, 'ahora18'),
(null, 'cheque');

insert INTO tecnicos (id_tecnico, nombre, apellido)
VALUES (null, 'ricardo', 'mollo'),
(null, 'indio', 'solari'),
(null, 'adrian', 'dargelos'),
(null, 'axel', 'krygier'),
(null, 'norberto', 'napolitano');

insert INTO ordenes_de_trabajo (id_orden, id_cliente, id_usuario, id_estado, id_tecnico, item, fecha)
VALUES (null, 1, 2, 7, 1, 'soldadora', '23-10-10'),
(null, 2, 2, 6, 1, 'amoladora', '23-10-10'),
(null, 3, 3, 2, 2, 'taladro', '23-10-11'),
(null, 4, 3, 1, 1, 'lijadora', '23-10-12'),
(null, 5, 5, 4, 3, 'caladora', '23-10-13');

insert INTO factura (id_factura, id_orden, id_pago, importe, fecha)
VALUES (null, 1, 2, 2500, '23-10-20'),
(null, 2, 2, 3000, '23-10-21'),
(null, 3, 3, 1500, '23-10-22'),
(null, 4, 3, 4000, '23-10-22'),
(null, 5, 5, 5000, '23-10-24');
