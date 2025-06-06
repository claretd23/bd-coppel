USE COPPEL;

INSERT INTO CLIENTES (ID_CLIENTE, NOMBRE, TELEFONO, DIRECCION) VALUES
('C0000001', 'fatima martinez', '4490000001', 'Calle  123, Ciudad de México'),
('C0000002', 'angela rodriguez', '4490000002', 'Avenida 456, Guadalajara'),
('C0000003', 'Carlos mata', '4490000003', 'Calle 5 de Febrero 789, Monterrey'),
('C0000004', 'berenice delgado', '4490000004', 'Avenida Juárez 101, Cancún'),
('C0000005', 'Luis Hernández', '4490000005', 'Calle Insurgentes 303, Tijuana'),
('C0000006', 'fernanda martinez', '4490000006', 'Calle  123, Ciudad de México'),
('C0000007', 'ignacio rodriguez', '4490000007', 'Avenida 456, Guadalajara'),
('C0000008', 'arturo mata', '4490000008', 'Calle 5 de Febrero 789, Monterrey'),
('C0000009', 'ernesto delgado', '4490000009', 'Avenida Juárez 101, Cancún'),
('C0000010', 'ary Hernández', '4490000010', 'Calle Insurgentes 303, Tijuana'),
('C0000011', 'monse ramirez', '4490000011', 'Avenida 225, tijuana'),
('C0000012', 'arturo mata', '4490000012', 'Calle 6  de febrero, Monterrey'),
('C0000013', 'ernesto delgado', '4490000013', 'Avenida lupe, Cancún'),
('C0000014', 'ary Hernández', '4490000014', 'Calle Insurgentes 304, texas'),
('C0000015', 'Raul Pérez', '4490000015', 'Calle Central 12, Puebla'),
('C0000016', 'Ximena Torres', '4490000016', 'Avenida 8 Norte, Mérida'),
('C0000017', 'Manuel López', '4490000017', 'Calle 10 Sur, Veracruz'),
('C0000018', 'Diana Ramírez', '4490000018', 'Avenida Colón 150, Monterrey'),
('C0000019', 'Julio García', '4490000019', 'Boulevard Reforma 20, CDMX'),
('C0000020', 'Rosa Sánchez', '4490000020', 'Avenida 14 Oriente, Puebla');

INSERT INTO PROVEEDORES (ID_PROVEEDOR, NOMBRE, TELEFONO, DIRECCION) VALUES
('P0000001', 'Proveedor A', '4650000001', 'Calle Proveedora 1, Ciudad de México'),
('P0000002', 'Proveedor B', '4650000002', 'Avenida Industrial 5, Guadalajara'),
('P0000003', 'Proveedor C', '4650000003', 'Calle de las Flores 20, Monterrey'),
('P0000004', 'Proveedor D', '4650000004', 'Calle Principal 100, Cancún'),
('P0000005', 'Proveedor E', '4650000005', 'Calle Futura 50, Tijuana'),
('P0000006', 'Proveedor F', '4650000006', 'Calle Proveedora 2, Ciudad de México'),
('P0000007', 'Proveedor G', '4650000007', 'Avenida Industrial 6, Guadalajara'),
('P0000008', 'Proveedor G', '4650000008', 'Calle de barrio, Monterrey'),
('P0000009', 'Proveedor I', '4650000009', 'Calle Principal 200, Cancún'),
('P0000010', 'Proveedor J', '4650000010', 'Calle Futura 60, Tijuana'),
('P0000011', 'Proveedor K', '4650000011', 'Calle Nueva 1, Ciudad de México'),
('P0000012', 'Proveedor L', '4650000012', 'Avenida de los Pinos, Monterrey'),
('P0000013', 'Proveedor M', '4650000013', 'Calle Valle 300, Guadalajara'),
('P0000014', 'Proveedor N', '4650000014', 'Calle Juárez 90, Cancún'),
('P0000015', 'Proveedor O', '4650000015', 'Calle Norte 25, Tijuana');

INSERT INTO CATEGORIAS (ID_CATEGORIA, NOMBRE) VALUES
('C0000001', 'Electrónica'),
('C0000002', 'dama'),
('C0000003', 'Muebles'),
('C0000004', 'Juguetes'),
('C0000005', 'Hogar'),
('C0000006', 'deportes'),
('C0000007', 'caballero'),
('C0000008', 'bebes'),
('C0000009', 'perfumeria'),
('C0000010', 'joyeria'),
('C0000011', 'mobilidad'),
('C0000012', 'Mascotas'),
('C0000013', 'Automotriz'),
('C0000014', 'Salud y Belleza'),
('C0000015', 'Electrodomésticos'),
('C0000016', 'Papelería');

INSERT INTO PRODUCTOS (ID_PRODUCTO, NOMBRE, PRECIO, ID_CATEGORIA, ID_PROVEEDOR) VALUES
('PR000001', 'Televisor LED', 5000.00, 'C0000001', 'P0000001'),
('PR000002', 'Silla de oficina', 1200.00, 'C0000003', 'P0000002'),
('PR000003', 'Camiseta', 200.00, 'C0000002', 'P0000003'),
('PR000004', 'Mesa de comedor', 3500.00, 'C0000003', 'P0000004'),
('PR000005', 'Coche de juguete', 150.00, 'C0000004', 'P0000005'),
('PR000006', 'florero',150.00, 'C0000001', 'P0000001'),
('PR000007', 'Silla gamer', 2000.00, 'C0000003', 'P0000002'),
('PR000008', 'pantalon', 200.00, 'C0000002', 'P0000003'),
('PR000009', 'estufa', 3500.00, 'C0000003', 'P0000004'),
('PR000010', 'llavero', 50.00, 'C0000004', 'P0000005'),
('PR000011', 'Laptop', 12000.00, 'C0000001', 'P0000001'),
('PR000012', 'Escritorio de madera', 3200.00, 'C0000003', 'P0000002'),
('PR000013', 'Perfume importado', 800.00, 'C0000009', 'P0000010'),
('PR000014', 'Bicicleta de montaña', 7500.00, 'C0000006', 'P0000007'),
('PR000015', 'Refrigerador', 9500.00, 'C0000015', 'P0000005');

INSERT INTO EMPLEADOS (ID_EMPLEADO, NOMBRE, ROL, TELEFONO, DIRECCION) VALUES
('E0000001', 'Pedro Martínez', 'Cajero', '5530003001', 'Sucursal Reforma, Ciudad de México'),
('E0000002', 'Laura Sánchez', 'Gerente', '5530003002', 'Sucursal Juárez, Guadalajara'),
('E0000003', 'José Rodríguez', 'Vendedor', '5530003003', 'Sucursal Insurgentes, Monterrey'),
('E0000004', 'Marta Fernández', 'Cajero', '5530003004', 'Sucursal Tijuana, Tijuana'),
('E0000005', 'Ricardo Gómez', 'Vendedor', '5530003005', 'Sucursal Cancún, Cancún'),
('E0000006', 'Ana López', 'Vendedor', '5530003006', 'Sucursal Reforma, Ciudad de México'),
('E0000007', 'Daniel Torres', 'Cajero', '5530003007', 'Sucursal Insurgentes, Guadalajara'),
('E0000008', 'Clara Méndez', 'Gerente', '5530003008', 'Sucursal Centro, Monterrey'),
('E0000009', 'Rodrigo Pérez', 'Vendedor', '5530003009', 'Sucursal Norte, Cancún'),
('E0000010', 'Elena Navarro', 'Cajero', '5530003010', 'Sucursal Oeste, Tijuana');


INSERT INTO VENTAS (ID_VENTA, FECHA, DESCUENTO, PAGO_TOTAL, ID_CLIENTE, ID_EMPLEADO, ID_PRODUCTO) VALUES
('V0000001', '2025-01-01', 10.00, 4500.00, 'C0000001', 'E0000001', 'PR000001'),
('V0000002', '2025-01-02', 5.00, 1140.00, 'C0000002', 'E0000002', 'PR000002'),
('V0000003', '2025-01-03', 15.00, 2970.00, 'C0000003', 'E0000003', 'PR000003'),
('V0000004', '2025-01-04', 20.00, 2800.00, 'C0000004', 'E0000004', 'PR000004'),
('V0000005', '2025-01-05', 0.00, 150.00, 'C0000005', 'E0000005', 'PR000005'),
('V0000006', '2025-01-06', 5.00, 11400.00, 'C0000006', 'E0000006', 'PR000011'),
('V0000007', '2025-01-07', 10.00, 2880.00, 'C0000007', 'E0000007', 'PR000012'),
('V0000008', '2025-01-08', 15.00, 680.00, 'C0000008', 'E0000008', 'PR000013'),
('V0000009', '2025-01-09', 0.00, 7500.00, 'C0000009', 'E0000009', 'PR000014'),
('V0000010', '2025-01-10', 20.00, 7600.00, 'C0000010', 'E0000010', 'PR000015');

INSERT INTO CREDITOS (ID_CREDITO, ID_CLIENTE, PAGO_TOTAL, PAGOS_RESTANTES, ESTATUS, FECHA_INICIO) VALUES
('CR000001', 'C0000001', 5000.00, 10, 'Activo', '2025-01-01'),
('CR000002', 'C0000002', 3500.00, 8, 'Activo', '2025-01-02'),
('CR000003', 'C0000003', 7000.00, 12, 'No activo', '2025-01-03'),
('CR000004', 'C0000004', 1500.00, 5, 'Activo', '2025-01-04'),
('CR000005', 'C0000005', 1200.00, 6, 'No activo', '2025-01-05'),
('CR000006', 'C0000006', 12000.00, 24, 'Activo', '2025-01-06'),
('CR000007', 'C0000007', 3200.00, 6, 'Activo', '2025-01-07'),
('CR000008', 'C0000008', 800.00, 4, 'No activo', '2025-01-08'),
('CR000009', 'C0000009', 7500.00, 12, 'Activo', '2025-01-09'),
('CR000010', 'C0000010', 9500.00, 18, 'Activo', '2025-01-10');

INSERT INTO PAGOS (ID_PAGO, ID_CREDITO, FECHA, PAGO, METODO_PAGO) VALUES
('P000001', 'CR000001', '2025-01-10', 500.00, 'Efectivo'),
('P000002', 'CR000002', '2025-01-11', 350.00, 'Tarjeta'),
('P000003', 'CR000003', '2025-01-12', 700.00, 'Transferencia'),
('P000004', 'CR000004', '2025-01-13', 300.00, 'Efectivo'),
('P000005', 'CR000005', '2025-01-14', 200.00, 'Tarjeta'),
('P000006', 'CR000006', '2025-01-16', 500.00, 'Efectivo'),
('P000007', 'CR000007', '2025-01-17', 320.00, 'Tarjeta'),
('P000008', 'CR000008', '2025-01-18', 200.00, 'Transferencia'),
('P000009', 'CR000009', '2025-01-19', 625.00, 'Efectivo'),
('P000010', 'CR000010', '2025-01-20', 750.00, 'Tarjeta');








