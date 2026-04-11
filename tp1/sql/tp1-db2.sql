--DROP EXTENSION IF EXISTS 'uuid-ossp';
-- required to create uuid for default
--CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	-- the performance of using TEXT or VARCHAR() in PostgreSQL is the same 
	name TEXT NOT NULL,
	lastname TEXT NOT NULL,
	address TEXT NOT NULL,
	email TEXT NOT NULL
);

-- INSERT INTO clients (name,lastname,address,email) VALUES ('santino', 'maturo', 'diagonal evita 55', 'santinomaturo1@gmail.com');

DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	name TEXT NOT NULL,
	description TEXT NOT NULL,
	-- firs param is for digits and the second one for decimals
	price NUMERIC(12,2) NOT NULL,
	category_id UUID NOT NULL,
	stock INTEGER,
	FOREIGN KEY (category_id) REFERENCES categories(id) 
);

-- INSERT INTO products (name,description,price,category_id,stock) VALUES ('lenovo v15', 'Computadora con 512gb m.2, 16gb de ram y un procesdor r5 7520u', '1000000', '501918f6-7f28-45f1-843d-b9c06bd7dadb', '5');

DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	name TEXT NOT NULL
);

-- INSERT INTO categories (name) VALUES ('computadoras');

DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	client_id UUID NOT NULL,
	purchase_date TIMESTAMP NOT NULL DEFAULT NOW(),
	FOREIGN KEY (client_id) REFERENCES clients(id)
);

-- INSERT INTO orders (client_Id) VALUES ('7c12260b-50ca-49f8-a256-8580da8cd10b');

DROP TABLE IF EXISTS orderDetail;
CREATE TABLE IF NOT EXISTS orderDetail(
	order_id UUID NOT NULL,
	product_id UUID NOT NULL,
	purchase_price NUMERIC(12,2),
	quantity INTEGER,
	PRIMARY KEY (order_id, product_id),
	FOREIGN KEY (order_id) REFERENCES orders(id),
	FOREIGN KEY (product_id) REFERENCES products(id)
);

-- INSERT INTO orderDetail (order_id, product_id, purchase_price, quantity) VALUES ('b10415ba-fdb6-4542-adf6-8fc1be91aa79', '03b6c3ca-b141-4230-aaf4-9b32cc89d193', '20000', '4');