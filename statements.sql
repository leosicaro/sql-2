/* Relación tipo 1:1 */
-- PASO 1
-- Tu código aquí
CREATE TABLE usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(100) NOT NULL,
 email VARCHAR(100) NOT NULL,
 edad INT );

-- PASO 2
-- Tu código aquí
CREATE TABLE roles (
id_rol INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_rol VARCHAR(50) NOT NULL
);

-- PASO 3
-- Tu código aquí

ALTER TABLE usuarios ADD COLUMN id_rol int;
ALTER TABLE usuarios ADD FOREIGN KEY (id_rol) REFERENCES roles(id_rol);
-- PASO 4
-- Tu código aquí
SELECT usuarios.nombre, usuarios.apellido, usuarios.edad, roles.id_rol,roles.id_rol FROM usuarios INNER JOIN roles ON usuarios.id_rol=roles.id_rol;


/* Relación tipo 1:N */
-- PASO 1
-- Tu código aquí
CREATE TABLE categoria(
id_categoria INT NOT NULL PRIMARY KEY auto_increment,
categoria VARCHAR(100) NOT NULL
)

-- PASO 2
-- Tu código aquí
ALTER TABLE usuarios ADD COLUMN id_categoria INT NOT NULL;

-- PASO 3
-- Tu código aquí
UPDATE usuarios SET id_categoria = 1 WHERE id_usuario IN (1, 10 );
UPDATE usuarios SET id_categoria = 2 WHERE id_usuario IN (2, 11 );
UPDATE usuarios SET id_categoria = 3 WHERE id_usuario IN (3, 12 );
UPDATE usuarios SET id_categoria = 4 WHERE id_usuario IN (4, 13 );
UPDATE usuarios SET id_categoria = 5 WHERE id_usuario IN (5, 14 );
UPDATE usuarios SET id_categoria = 6 WHERE id_usuario IN (6, 15 );
UPDATE usuarios SET id_categoria = 7 WHERE id_usuario IN (7, 16 );
UPDATE usuarios SET id_categoria = 8 WHERE id_usuario IN (8, 17 );
UPDATE usuarios SET id_categoria = 9 WHERE id_usuario IN (9, 18,19 );


-- PASO 4
-- Tu código aquí

/* Relación tipo N:M */
-- PASO 1
-- Tu código aquí


-- PASO 2
-- Tu código aquí


-- PASO 3
-- Tu código aquí
