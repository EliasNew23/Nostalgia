------- Nombrando las categorias 1(cafe) - 2(Postre)
INSERT INTO Categoria (nombre_categoria) VALUES (1,'Café');
INSERT INTO Categoria (nombre_categoria) VALUES (2,'Postre');

--------producto Categoria 1 (cafe)
INSERT INTO Producto (nombre, precio, stock, id_categoria) VALUES
('Espresso', 9,20, 1),
('Café americano', 9,20, 1),
('Cappuccino', 10,20, 1),
('Café latte', 11.5,20, 1),
('Café mocha', 13,20, 1),
('Café filtrado', 10,20, 1),
('Café bombón', 16,20, 1),
('Café Dalgona', 14.5,20, 1),
('Café macchiato', 11,20, 1);
-----------producto Categoria 2 (postre)
INSERT INTO Producto(nombre, precio, stock, id_categoria)VALUES 
('Tarta Vianner', 17, 9, 2),
('Gelato', 22, 11, 2),
('Tiramisú', 14, 4, 2),
('Panna Cotta', 18, 4, 2),
('Pasteís de Belém', 19, 20, 2),
('Pávlola', 18.5, 15, 2),
('Pastafrolar', 17.5, 7, 2),
('Mousse', 15, 7, 2),
('Mazamorra moradar', 15, 22, 2),
('TBasbousa', 21, 10, 2);

--------insert para el cliente
INSERT INTO Cliente (nombre, apellido, correo, telefono) VALUES 
('Pedro', 'Castillo', 'pedro@gmail.com', '987654321');
