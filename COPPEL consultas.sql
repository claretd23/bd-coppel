USE COPPEL;


--  OBTENER TODOS LOS CLIENTES Y SUS TELEFONOS
SELECT c.ID_CLIENTE, c.NOMBRE, c.TELEFONO 
FROM CLIENTES c;






-- Selección de datos con filtros (SELECT + WHERE).
-- PRODUCTOS CON PRECIO ARRIBA DE $200
SELECT p.ID_PRODUCTO, p.NOMBRE, p.PRECIO
FROM PRODUCTOS p
WHERE p.PRECIO > 200;

-- OBTENER LOS PRODUCTOS DE UN PROVEEDOR ESPECIFICO
SELECT p.ID_PRODUCTO, p.NOMBRE, p.PRECIO
FROM PRODUCTOS p
WHERE p.ID_PROVEEDOR = 'P0000002';



-- Uso de operadores (LIKE, IN, BETWEEN, etc.)
-- PRODUCTOS QUE EMPIECEN CON LA LETRA E
SELECT p.ID_PRODUCTO, p.NOMBRE
FROM PRODUCTOS p
WHERE p.NOMBRE LIKE 'e%';

--  PRODUCTOS CON PRECIO ENTRE 100 Y 500
SELECT *  FROM PRODUCTOS p
WHERE p.PRECIO BETWEEN 100 AND 500;

-- CLIENTES CON EL CREDITO ACTIVO
SELECT c.ID_CLIENTE, c.NOMBRE
FROM CLIENTES c
WHERE c.ID_CLIENTE IN (
    SELECT cr.ID_CLIENTE 
    FROM CREDITOS cr
    WHERE cr.ESTATUS IN ('Activo')
);



-- Consultas con GROUP BY y funciones de agregación (COUNT, SUM, AVG, etc.).
-- PROMEDIO DE PRECIO POR CATEGORIA
SELECT p.ID_CATEGORIA, AVG(p.PRECIO) AS PROMEDIO_PRECIO
FROM PRODUCTOS p
GROUP BY p.ID_CATEGORIA;

--  VENTAS POR EMPLEADO
SELECT v.ID_EMPLEADO, COUNT(*) AS TOTAL_VENTAS 
FROM VENTAS v
GROUP BY v.ID_EMPLEADO;

-- TOTAL DE TODAS LAS VENTAS
SELECT SUM(v.PAGO_TOTAL) AS TOTAL_VENTAS
FROM VENTAS V;


 

-- Uso de JOINs (al menos un ejemplo de cada tipo: INNER, LEFT, RIGHT).
-- OBTENER LOS DETALLES DE LAS VENTAS(CLIENTE, EMPLEADO Y PRODUCTOS)
SELECT v.ID_VENTA, c.NOMBRE AS CLIENTE, e.NOMBRE AS EMPLEADO, p.NOMBRE AS PRODUCTO, v.PAGO_TOTAL
FROM VENTAS v
INNER JOIN CLIENTES c ON v.ID_CLIENTE = c.ID_CLIENTE
INNER JOIN EMPLEADOS e ON v.ID_EMPLEADO = e.ID_EMPLEADO
INNER JOIN PRODUCTOS p ON v.ID_PRODUCTO = p.ID_PRODUCTO;

-- MUESTRA LOS CLIENTES Y SUS COMPRAS
SELECT c.NOMBRE AS CLIENTE, v.ID_VENTA, v.PAGO_TOTAL
FROM CLIENTES c
LEFT JOIN VENTAS v ON c.ID_CLIENTE = v.ID_CLIENTE;

-- MUESTRA TODAS LAS VENTAS Y SUS CLIENTES
SELECT v.ID_VENTA, c.NOMBRE AS CLIENTE, v.PAGO_TOTAL
FROM VENTAS v
RIGHT JOIN CLIENTES c ON v.ID_CLIENTE = c.ID_CLIENTE;



-- Subconsultas en el SELECT o WHERE.
-- CLIENTES CON COMPRAS ARRIBA DE $5000
SELECT * FROM CLIENTES WHERE ID_CLIENTE IN (
    SELECT ID_CLIENTE FROM VENTAS WHERE PAGO_TOTAL > 5000
);

-- funciones de ventana
-- NUMERO DE  VENTAS POR CLIENTE
SELECT ID_CLIENTE, COUNT(ID_VENTA) AS TOTAL_VENTAS,
       ROW_NUMBER() OVER (ORDER BY COUNT(ID_VENTA) DESC) AS RANKING
FROM VENTAS
GROUP BY ID_CLIENTE;


-- Operadores de Conjunto 
-- CLIENTES REGISTRADOS EN CREDITOS Y EN CLIENTES
SELECT c.ID_CLIENTE, c.NOMBRE
FROM CLIENTES c
WHERE c.ID_CLIENTE IN (
    SELECT cr.ID_CLIENTE FROM CREDITOS cr
    UNION
    SELECT c.ID_CLIENTE FROM CLIENTES c
);


