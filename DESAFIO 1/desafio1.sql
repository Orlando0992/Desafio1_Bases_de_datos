-- DESAFIO 1

-- Entra al terminal e ingresa al cliente de postgreSQL desde allí
psql -U postgreSQL

-- 1.- Crear una base de datos llamada desafio-tuNombre-tuApellido-3digitos.
CREATE DATABASE desafio_Esteban_Cardenas_123;

-- 2.- Ingresar a la base de datos creada.
\c desafio_esteban_cardenas_123;

-- 3.- Crear una tabla llamada clientes:
--      a. Con una columna llamada email de tipo varchar(50).
--      b. Una columna llamada nombre de tipo varchar sin limitación.
--      c. Una columna llamada teléfono de tipo varchar(16).
--      d. Un campo llamado empresa de tipo varchar(50).
--      e. Una columna de tipo smallint, para indicar la prioridad del cliente. Ahí se debe
--      ingresar un valor entre 1 y 10, donde 10 es más prioritario

CREATE TABLE clientes ( 
    email varchar(50), 
    nombre varchar, 
    telefono varchar(16), 
    empresa varchar(50), 
    prioridad smallint check (prioridad >= 1 AND prioridad <= 10)
);


-- 4.- Ingresar 10 clientes distintos con distintas prioridades, el resto de los valores los puedes inventar.

INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) 
VALUES 
    ('Orlando@gmail.com', 'Orlando', '96582456', 'Mercado Pago', 5),
    ('Roberta@gmail.com', 'Roberta', '41523658', 'Jumbo', 8),
    ('Claudia@gmail.com', 'Claudia', '41415267', 'Lider', 3),
    ('Camilo@gmail.com', 'Camilo', '63592369', 'Falabella', 7),
    ('Natalia@gmail.com', 'Natalia', '52897836', 'Casino Dreams', 2),
    ('Diego@gmail.com', 'Diego', '36985639', 'Arauco', 6),
    ('Manuel@gmail.com', 'Manuel', '85858596', 'Delisur', 9),
    ('Constanza@gmail.com', 'Constanza', '23265241', 'Ripley', 1),
    ('Fabricio@gmail.com', 'Fabricio', '96362114', 'Ferreteria Rio', 4),
    ('Sara@gmail.com', 'Sara', '91915736', 'Abogados ARK', 10);


-- 5.- Selecciona los tres clientes de mayor prioridad
SELECT *
FROM clientes
ORDER BY prioridad DESC
LIMIT 3;


-- 6.- Seleccionar todos los clientes cuya prioridad sea mayor a 5
SELECT *
FROM clientes
WHERE prioridad > 5;
