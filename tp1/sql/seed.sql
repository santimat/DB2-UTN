-- =============================================
-- 1. CATEGORÍAS
-- =============================================
INSERT INTO categories (name) VALUES
  ('Electrónica'),
  ('Ropa y Calzado'),
  ('Hogar y Cocina'),
  ('Deportes'),
  ('Libros'),
  ('Juguetes'),
  ('Belleza y Cuidado'),
  ('Alimentos y Bebidas');

-- =============================================
-- 2. PRODUCTOS (50 filas)
-- Usamos subconsultas para obtener el category_id
-- =============================================
INSERT INTO products (name, description, price, category_id, stock) VALUES
('Smartphone Samsung Galaxy A55',   'Teléfono inteligente con pantalla AMOLED 6.6", 8 GB RAM y 128 GB de almacenamiento', 349999.99, (SELECT id FROM categories WHERE name = 'Electrónica'), 45),
('Notebook Lenovo IdeaPad 3',       'Laptop 15.6" con procesador Intel Core i5, 16 GB RAM y SSD 512 GB',                  749999.00, (SELECT id FROM categories WHERE name = 'Electrónica'), 20),
('Auriculares Sony WH-1000XM5',     'Auriculares inalámbricos con cancelación activa de ruido y autonomía de 30 h',        189999.50, (SELECT id FROM categories WHERE name = 'Electrónica'), 60),
('Tablet Xiaomi Pad 6',             'Tablet 11" con chip Snapdragon 870, 6 GB RAM y pantalla 144 Hz',                     279999.00, (SELECT id FROM categories WHERE name = 'Electrónica'), 30),
('Smart TV LG 55" 4K OLED',         'Televisor OLED 4K con webOS, Dolby Vision y soporte HDR10',                          1299999.00,(SELECT id FROM categories WHERE name = 'Electrónica'), 10),
('Cámara Canon EOS R50',            'Cámara mirrorless 24 MP con video 4K, Wi-Fi y lente kit 18-45 mm',                   899999.00, (SELECT id FROM categories WHERE name = 'Electrónica'), 15),
('Mouse Logitech MX Master 3S',     'Mouse ergonómico inalámbrico con sensor 8000 DPI y conexión Bolt USB',               49999.99,  (SELECT id FROM categories WHERE name = 'Electrónica'), 80),
('Campera de cuero sintético mujer','Campera estilo biker con cierre asimétrico, forro interior y talla L',               29999.00,  (SELECT id FROM categories WHERE name = 'Ropa y Calzado'), 35),
('Zapatillas Nike Air Max 90',      'Zapatillas urbanas con amortiguación Air y suela de goma vulcanizada, talle 42',     89999.00,  (SELECT id FROM categories WHERE name = 'Ropa y Calzado'), 50),
('Jean slim fit hombre',            'Pantalón de jean elástico tiro medio, color índigo, talle 32',                       15999.00,  (SELECT id FROM categories WHERE name = 'Ropa y Calzado'), 70),
('Remera deportiva Adidas',         'Remera de running con tecnología Climalite para absorción del sudor, talle M',        8999.50,   (SELECT id FROM categories WHERE name = 'Ropa y Calzado'), 100),
('Vestido de fiesta largo',         'Vestido de noche con escote en V, tela satinada y abertura lateral, color negro',    34999.00,  (SELECT id FROM categories WHERE name = 'Ropa y Calzado'), 25),
('Buzo con capucha unisex',         'Buzo algodón 320 g/m² con bolsillo canguro y cordón ajustable, color gris',          12999.00,  (SELECT id FROM categories WHERE name = 'Ropa y Calzado'), 90),
('Botas de cuero mujer',            'Bota corta de cuero genuino con taco de 5 cm y suela antideslizante, talle 38',     54999.00,  (SELECT id FROM categories WHERE name = 'Ropa y Calzado'), 20),
('Cafetera Nespresso Vertuo Next',  'Cafetera de cápsulas con tecnología Centrifusion y jarra de café de hasta 535 ml',  89999.00,  (SELECT id FROM categories WHERE name = 'Hogar y Cocina'), 40),
('Juego de ollas antiadherentes',   'Juego 5 piezas con recubrimiento cerámico y tapa de vidrio',                         24999.00,  (SELECT id FROM categories WHERE name = 'Hogar y Cocina'), 30),
('Licuadora Philips Pro Mix 1200W', 'Licuadora de alta potencia con jarra de vidrio 2 L, 5 velocidades y función pulse', 19999.00,  (SELECT id FROM categories WHERE name = 'Hogar y Cocina'), 55),
('Aspiradora Rowenta X-Force 11.60','Aspiradora escoba inalámbrica 25.2 V, 60 min de autonomía y filtro HEPA 13',        129999.00, (SELECT id FROM categories WHERE name = 'Hogar y Cocina'), 18),
('Colchón viscoelástico 2 plazas',  'Colchón memory foam 25 cm, densidad 35 kg/m³ y funda lavable',                      399999.00, (SELECT id FROM categories WHERE name = 'Hogar y Cocina'), 8),
('Freidora de aire Philips 4.1L',   'Air fryer con tecnología Rapid Air, pantalla digital y 7 programas preestablecidos', 69999.00,  (SELECT id FROM categories WHERE name = 'Hogar y Cocina'), 42),
('Silla de oficina ergonómica',     'Silla con soporte lumbar ajustable, apoyabrazos 4D y mecanismo de inclinación',      79999.00,  (SELECT id FROM categories WHERE name = 'Hogar y Cocina'), 22),
('Bicicleta de montaña Rodado 29',  'MTB cuadro aluminio, 21 velocidades Shimano y frenos de disco hidráulico',           349999.00, (SELECT id FROM categories WHERE name = 'Deportes'), 12),
('Pelota de fútbol Adidas FIFA Pro', 'Balón oficial PU termosoldado, tamaño 5 y cámara butyl',                            18999.00,  (SELECT id FROM categories WHERE name = 'Deportes'), 60),
('Mancuernas ajustables 2-24 kg',   'Set de pesas con mecanismo de ajuste rápido y base plástica incluida',              149999.00, (SELECT id FROM categories WHERE name = 'Deportes'), 25),
('Cinta de correr plegable 1800W',  'Trotadora hasta 16 km/h, pantalla LCD y 12 programas automáticos',                  499999.00, (SELECT id FROM categories WHERE name = 'Deportes'), 7),
('Raqueta de tenis Head Speed MP',  'Raqueta 300 g sin encordar, perfil 22/26/22 mm y mango talla 3',                    59999.00,  (SELECT id FROM categories WHERE name = 'Deportes'), 30),
('Mochila de hidratación 15L',      'Mochila trail con bolsillo para vejiga 2 L, tiras reflectivas y faja lumbar',       14999.00,  (SELECT id FROM categories WHERE name = 'Deportes'), 45),
('Colchoneta yoga antideslizante',  'Mat de NBR 183 x 61 cm, 6 mm de grosor, con bolso de transporte incluido',          7999.00,   (SELECT id FROM categories WHERE name = 'Deportes'), 80),
('El Señor de los Anillos - Lujo',  'Trilogía completa de Tolkien con ilustraciones y mapas a color en un solo volumen',  12999.00,  (SELECT id FROM categories WHERE name = 'Libros'), 50),
('Atomic Habits - James Clear',     'Guía práctica para crear buenos hábitos y eliminar los malos, edición en español',   6999.00,   (SELECT id FROM categories WHERE name = 'Libros'), 75),
('Cien años de soledad',            'Edición conmemorativa de la obra maestra del realismo mágico latinoamericano',        8999.00,   (SELECT id FROM categories WHERE name = 'Libros'), 60),
('Clean Code - Robert C. Martin',   'Manual de buenas prácticas para desarrolladores de software, edición en inglés',     9499.00,   (SELECT id FROM categories WHERE name = 'Libros'), 40),
('Sapiens: De animales a dioses',   'Breve historia de la humanidad por Yuval Noah Harari, tapa blanda',                  7499.00,   (SELECT id FROM categories WHERE name = 'Libros'), 55),
('Harry Potter y la piedra filosofal','Primera entrega ilustrada por Jim Kay de la saga de J.K. Rowling',                11999.00,  (SELECT id FROM categories WHERE name = 'Libros'), 30),
('LEGO Technic Bugatti Chiron',     'Set 3599 pzs con motor funcional, transmisión y techo desmontable',                  199999.00, (SELECT id FROM categories WHERE name = 'Juguetes'), 15),
('Barbie Fashionistas articulada',  'Muñeca 30 cm con 22 puntos de articulación, accesorios y ropa intercambiable',       9999.00,   (SELECT id FROM categories WHERE name = 'Juguetes'), 60),
('Auto RC 4x4 40 km/h',            'Vehículo off-road con suspensión independiente, batería Li-Ion y cargador USB',       29999.00,  (SELECT id FROM categories WHERE name = 'Juguetes'), 35),
('Juego de mesa Catan',             'Juego estratégico para 3-4 jugadores, +10 años, duración 60-90 min',                 14999.00,  (SELECT id FROM categories WHERE name = 'Juguetes'), 40),
('Pizarrón magnético infantil',     'Pizarrón 60x45 cm doble faz con tiza, marcadores y accesorios magnéticos',           6999.00,   (SELECT id FROM categories WHERE name = 'Juguetes'), 55),
('Dron DJI Mini 2 SE 2.7K',        'Dron plegable 249 g, estabilizador 3 ejes y autonomía de 31 minutos',                289999.00, (SELECT id FROM categories WHERE name = 'Juguetes'), 18),
('Secador Dyson Supersonic',        'Secador profesional 1600W, motor digital V9, 3 temperaturas y boquilla magnética',   299999.00, (SELECT id FROM categories WHERE name = 'Belleza y Cuidado'), 20),
('Crema hidratante CeraVe 52ml',    'Hidratante con ceramidas, ácido hialurónico y niacinamida para todo tipo de piel',   5999.00,   (SELECT id FROM categories WHERE name = 'Belleza y Cuidado'), 120),
('Chanel Chance Eau Tendre EDP',    'Eau de parfum floral afrutado, presentación 100 ml con vaporizador',                 149999.00, (SELECT id FROM categories WHERE name = 'Belleza y Cuidado'), 25),
('Kit maquillaje 12 piezas Maybelline','Set con base, corrector, sombras, labial y pinceles en estuche de viaje',        19999.00,  (SELECT id FROM categories WHERE name = 'Belleza y Cuidado'), 50),
('Afeitadora Philips S9000',        'Rasuradora rotativa 3 cabezales flexibles, motor 5D y carga rápida 5 min',           89999.00,  (SELECT id FROM categories WHERE name = 'Belleza y Cuidado'), 30),
('Café molido Illy Classico 250g',  'Café arábica molido tueste medio con notas de caramelo y jazmín, lata hermética',    4999.00,   (SELECT id FROM categories WHERE name = 'Alimentos y Bebidas'), 150),
('Proteína whey 2kg chocolate',     'Suplemento de suero concentrado con 24 g por porción y 80% de proteína',             39999.00,  (SELECT id FROM categories WHERE name = 'Alimentos y Bebidas'), 65),
('Whisky Jameson Irish 750ml',      'Whisky irlandés triple destilado con notas de vainilla y especias',                  14999.00,  (SELECT id FROM categories WHERE name = 'Alimentos y Bebidas'), 80),
('Aceite de oliva extra virgen 500ml','Primera presión en frío, acidez máxima 0.2%, origen Mendoza',                     3499.00,   (SELECT id FROM categories WHERE name = 'Alimentos y Bebidas'), 200),
('Yerba mate Taragüi sin palo 1kg', 'Elaborada sin palo, curada 12 meses, estilo suave con buena espuma',                2199.00,   (SELECT id FROM categories WHERE name = 'Alimentos y Bebidas'), 300);

INSERT INTO clients (name, lastname, address, email) VALUES
('Juan', 'Gomez', 'Av. Santa Fe 1234, CABA', 'juan.gomez@email.com'),
('Maria', 'Rodriguez', 'Calle 50 456, La Plata', 'm.rodriguez@email.com'),
('Carlos', 'Lopez', 'Belgrano 789, Cordoba', 'carlos.lopez88@email.com'),
('Ana', 'Fernandez', 'San Martin 101, Rosario', 'ana_fer@email.com'),
('Luis', 'Garcia', 'Pueyrredon 332, Mendoza', 'lgarcia.pro@email.com'),
('Sofia', 'Perez', 'Mitre 55, Salta', 'sofia.perez.dev@email.com'),
('Diego', 'Martinez', 'Rivadavia 990, Neuquen', 'diego.mtz@email.com'),
('Lucia', 'Sanchez', 'Entre Rios 221, Parana', 'lucia_sanchez@email.com'),
('Mateo', 'Diaz', '9 de Julio 443, Tucuman', 'mateo.diaz.ar@email.com'),
('Elena', 'Alvarez', 'Colon 12, Mar del Plata', 'elena.alvarez.tech@email.com'),
('Martin', 'Romero', 'España 567, Jujuy', 'mromero@email.com'),
('Valentina', 'Vazquez', 'Alvear 88, Corrientes', 'valen.vazquez@email.com'),
('Nicolas', 'Castro', 'Sarmiento 1102, Posadas', 'nicolas_castro@email.com'),
('Camila', 'Sosa', 'Luro 340, Mar del Plata', 'camisosa@email.com'),
('Lucas', 'Ramirez', 'Moreno 76, Resistencia', 'lucas.ramirez@email.com'),
('Julieta', 'Ruiz', 'Urquiza 234, Victoria', 'julieta.ruiz@email.com'),
('Tomas', 'Torres', 'Irigoyen 543, Bahia Blanca', 't.torres@email.com'),
('Victoria', 'Flores', 'Velez Sarsfield 890, Cordoba', 'vicky_flores@email.com'),
('Sebastian', 'Acosta', 'San Lorenzo 123, Santa Fe', 'seb.acosta@email.com'),
('Martina', 'Benitez', 'Alberdi 45, Formosa', 'm.benitez@email.com'),
('Facundo', 'Medina', 'Roca 789, General Roca', 'facu.medina@email.com'),
('Belen', 'Suarez', 'Rawson 321, Trelew', 'belu_suarez@email.com'),
('Santiago', 'Herrera', 'Ameghino 11, Comodoro Rivadavia', 'santi.herrera@email.com'),
('Paula', 'Aguirre', 'Maipu 654, San Luis', 'paula.aguirre@email.com'),
('Agustin', 'Gimenez', 'Balcarce 98, Catamarca', 'agustin.g@email.com'),
('Abril', 'Pereyra', 'Chacabuco 77, San Juan', 'abril.pereyra@email.com'),
('Felipe', 'Molina', 'Saavedra 231, La Rioja', 'felipe.molina@email.com'),
('Delfina', 'Quinteros', 'Libertad 44, Santiago del Estero', 'delfi.q@email.com'),
('Bruno', 'Cabrera', 'Castelli 56, Resistencia', 'bruno.cabrera@email.com'),
('Rocio', 'Vidal', 'Las Heras 901, Mendoza', 'rocio.vidal@email.com'),
('Joaquin', 'Mansilla', 'Arenales 34, CABA', 'j.mansilla@email.com'),
('Lola', 'Duarte', 'Gorriti 123, Jujuy', 'lola.duarte@email.com'),
('Manuel', 'Ortega', 'Pellegrini 88, Rosario', 'manu.ortega@email.com'),
('Zoe', 'Miranda', 'Florida 500, CABA', 'zoe.miranda@email.com'),
('Ignacio', 'Cardozo', 'Buzon 432, Tandil', 'nacho.cardozo@email.com'),
('Micaela', 'Navarro', 'Garibaldi 12, Quilmes', 'mica_navarro@email.com'),
('Franco', 'Rojas', 'Olavarria 776, Avellaneda', 'franco.rojas@email.com'),
('Lara', 'Luna', 'Alsina 90, Bahia Blanca', 'lara.luna@email.com'),
('Enzo', 'Juarez', 'Dorrego 120, Guaymallen', 'enzo.juarez@email.com'),
('Sol', 'Marquez', 'Aristobulo del Valle 234, Santa Fe', 'sol.marquez@email.com'),
('Geronimo', 'Silva', 'Juan B. Justo 4567, CABA', 'gero.silva@email.com'),
('Kiara', 'Arias', 'Boedo 11, Lomas de Zamora', 'kiara.arias@email.com'),
('Ivan', 'Blanco', 'Uzzi 88, Ushuaia', 'ivan.blanco@email.com'),
('Malena', 'Godoy', 'San Martin 5, Rio Gallegos', 'male.godoy@email.com'),
('Esteban', 'Paz', 'Belgrano 12, Yerba Buena', 'esteban.paz@email.com'),
('Renata', 'Bravo', 'Av. Peron 443, Yerba Buena', 'renata.bravo@email.com'),
('Thiago', 'Vera', 'Diagonal 73 1234, La Plata', 'thiago.vera@email.com'),
('Juana', 'Soto', 'Paseo Victorica 400, Tigre', 'juana.soto@email.com'),
('Bautista', 'Cano', 'Cuyo 12, Martinez', 'bauti.cano@email.com'),
('Candela', 'Mendez', 'Santa Rosa 99, Cordoba', 'cande.mendez@email.com'),
('Fabián', 'Garrido', 'Hipólito Yrigoyen 432, Quilmes', 'fabian.garrido@email.com'),
('Gloria', 'Ibarra', 'Av. Vergara 1200, Hurlingham', 'gloria.ibarra@email.com'),
('Marcos', 'Peralta', 'Calle 12 890, Mercedes', 'm.peralta@email.com'),
('Silvia', 'Domínguez', 'Boulevard Marítimo 2300, Mar del Plata', 'silvia.dominguez@email.com'),
('Hugo', 'Farías', 'Urquiza 45, Gualeguaychú', 'hugo.farias@email.com'),
('Natalia', 'Sosa', 'Sarmiento 678, Azul', 'naty.sosa@email.com'),
('Adrián', 'Cisneros', 'Av. Balloffet 321, San Rafael', 'adrian.cis@email.com'),
('Patricia', 'Leiva', 'San Martín 99, Zapala', 'patricia.leiva@email.com'),
('Raúl', 'Esquivel', 'Ruta 3 km 12, Caleta Olivia', 'raul.esquivel@email.com'),
('Mónica', 'Benavídez', 'Alvear 443, Santo Tomé', 'moni.benavidez@email.com'),
('Andrés', 'Ojeda', 'Junín 12, Corrientes', 'andres.ojeda@email.com'),
('Gabriela', 'Montenegro', 'España 1102, Clorinda', 'gaby.montenegro@email.com'),
('Jorge', 'Salinas', 'Mitre 54, General Pico', 'jorge.salinas@email.com'),
('Daniela', 'Verón', 'Av. Kirchner 44, Río Gallegos', 'daniela.veron@email.com'),
('Oscar', 'Duarte', 'Calle 8 123, Berazategui', 'oscar.duarte@email.com'),
('Cristina', 'Valdez', 'Moreno 990, Bariloche', 'cris.valdez@email.com'),
('Leonardo', 'Gallardo', 'San Lorenzo 45, Granadero Baigorria', 'leo.gallardo@email.com'),
('Lorena', 'Roldán', 'Irigoyen 332, Cipolletti', 'lore.roldan@email.com'),
('Javier', 'Bustos', 'Chacabuco 88, Villa Mercedes', 'javier.bustos@email.com'),
('Mariela', 'Palacios', 'Calle 14 567, City Bell', 'mariela.pal@email.com'),
('Rubén', 'Mendez', 'Pueyrredón 12, Villa María', 'ruben.mendez@email.com'),
('Paola', 'Luna', 'Libertad 654, Oberá', 'paola.luna@email.com'),
('César', 'Guerra', 'Belgrano 98, Termas de Río Hondo', 'cesar.guerra@email.com'),
('Silvana', 'Villa', 'Sáenz Peña 231, Junín', 'silvana.villa@email.com'),
('Walter', 'Brizuela', 'Rivadavia 11, Chilecito', 'walter.briz@email.com'),
('Estela', 'Chávez', 'Alberdi 77, Concepción del Uruguay', 'estela.chavez@email.com'),
('Ricardo', 'Páez', 'Edison 34, Trelew', 'ricardo.paez@email.com'),
('Andrea', 'Giménez', 'Falucho 56, Rafaela', 'andrea.gimenez@email.com'),
('Gustavo', 'Aguero', 'Las Heras 901, Godoy Cruz', 'gustavo.aguero@email.com'),
('Florencia', 'Carrizo', 'San Martín 34, Caucete', 'flor.carrizo@email.com'),
('Héctor', 'Ibáñez', 'Av. Libertador 432, Vicente López', 'hector.ibanez@email.com'),
('Beatriz', 'Serrano', 'Pasaje de la Piedad 12, CABA', 'beatriz.serrano@email.com'),
('Mariano', 'Cano', '9 de Julio 776, Lanús', 'mariano.cano@email.com'),
('Verónica', 'Tello', 'Olavarría 90, Tandil', 'vero.tello@email.com'),
('Alejandro', 'Calderón', 'Dorrego 120, Las Heras', 'ale.calderon@email.com'),
('Liliana', 'Correa', 'Av. Freyre 234, Santa Fe', 'lili.correa@email.com'),
('Fernando', 'Vargas', 'Juan B. Justo 11, Mar del Plata', 'fer.vargas@email.com'),
('Sandra', 'Prieto', 'Boedo 88, Lomas de Zamora', 'sandra.prieto@email.com'),
('Claudio', 'Godoy', 'Magallanes 5, Ushuaia', 'claudio.godoy@email.com'),
('Karina', 'Avila', 'San Martín 12, Calafate', 'karina.avila@email.com'),
('Marcelo', 'Rojas', 'Belgrano 443, Palpalá', 'marcelo.rojas@email.com'),
('Mirta', 'Burgos', 'Av. Perón 12, Tafí Viejo', 'mirta.burgos@email.com'),
('Eduardo', 'Saavedra', 'Calle 6 1234, La Plata', 'edu.saavedra@email.com'),
('Alicia', 'Zárate', 'Tigre 400, Rincón de Milberg', 'alicia.zarate@email.com'),
('Roberto', 'Cabrera', 'Cuyo 99, Olivos', 'roberto.cabrera@email.com'),
('Analía', 'Ledesma', 'Santa Rosa 12, Alta Gracia', 'analia.ledesma@email.com'),
('Ramiro', 'Rey', 'Luro 500, Mar del Plata', 'ramiro.rey@email.com'),
('Norma', 'Díaz', 'Garibaldi 231, Quilmes', 'norma.diaz@email.com'),
('Emiliano', 'Bracamonte', 'Uzzi 12, Ushuaia', 'emi.braca@email.com'),
('Yolanda', 'Sánchez', 'Chacabuco 99, San Miguel', 'yolanda.sanchez@email.com');

-- =============================================
-- 4. ÓRDENES Y DETALLES (200 órdenes, cada una con al menos 2 productos)
-- =============================================

WITH client_list AS (
  SELECT id, row_number() OVER () AS rn FROM clients
),
random_orders AS (
  SELECT
    uuid_generate_v4() AS order_id,
    ((row_number() OVER ()) - 1) % (SELECT count(*) FROM client_list) + 1 AS client_rn,
    NOW() - (interval '1 day' * floor(random() * 365)) AS purchase_date
  FROM generate_series(1, 200)
),
orders_with_client AS (
  SELECT
    o.order_id,
    c.id AS client_id,
    o.purchase_date
  FROM random_orders o
  JOIN client_list c ON c.rn = o.client_rn
),
order_insert AS (
  INSERT INTO orders (id, client_id, purchase_date)
  SELECT order_id, client_id, purchase_date FROM orders_with_client
  RETURNING id
)
-- Insertar 2 productos distintos por cada orden
INSERT INTO orderDetail (order_id, product_id, purchase_price, quantity)
SELECT
  o.id AS order_id,
  p.id AS product_id,
  p.price AS purchase_price,
  (floor(random() * 3) + 1)::int AS quantity -- cantidad entre 1 y 3
FROM order_insert o
JOIN LATERAL (
  SELECT id, price FROM products ORDER BY random() LIMIT 2
  ) p ON TRUE;