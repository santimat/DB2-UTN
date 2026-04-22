# Sistema de gestion de pedidos + stock + clientes

## Instrucciones

1. Ejecutar ddl.sql para crear la base de datos y las tablas.
2. Ejecutar seed.sql para insertar datos de prueba en las tablas.
3. Probar consultas SQL para verificar que los datos se han insertado correctamente ejecutando queries.sql

## Decisiones de diseño

- Uso de UUID como clave primaria para garantizar la unicidad de los registros y facilitar la integración con otros sistemas.
- Se ha creado una tabla `clients` para almacenar información de los clientes, incluyendo su nombre, correo electrónico.
- Se ha creado una tabla `products` para almacenar información de los productos, incluyendo su nombre, descripción, precio, stock y un referenciador a la categoría correspondiente.
- Se separó categorías a una tabla `categories` para mantener la normalización de la base de datos y permitir una fácil gestión de las categorías de productos.
- Se ha creado una tabla `orders` para almacenar cliente y fecha de pedido (tipo timestamp para más precisión) con un valor por defecto de la fecha y hora actual.
- Se ha creado una tabla `orderdetail` para almacenar los productos incluidos en cada pedido, con su respectivo precio de compra (diferente al precio del producto en caso de descuentos o promociones) y la cantidad solicitada.
- Las relaciones entre las tablas se han añadido mediante `ALTER TABLE` para mantener la claridad en la definición de las tablas y facilitar la lectura del código.

## Posibles mejoras

- Agregar una tabla `suppliers` para gestionar los proveedores de los productos.
- Separar stock a otra tabla para llevar un historial de movimientos de stock y facilitar la gestión de inventarios. Además permitir manejar stock por ubicación (almacén, tienda, etc).
- Agregar una tabla `payments` para gestionar los pagos de los pedidos, incluyendo el método de pago, el monto y la fecha de pago.
- Implementar triggers para mantener la integridad de los datos, por ejemplo, para actualizar el stock automáticamente cuando se realice un pedido o para registrar la fecha de actualización de los productos.
- Implementar vistas para facilitar la consulta de información agregada, como el total de ventas por producto o el historial de pedidos de un cliente.
