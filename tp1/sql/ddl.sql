-- required to create uuid for default
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	-- the performance of using TEXT or VARCHAR() in PostgreSQL is the same 
	name TEXT NOT NULL,
	lastname TEXT NOT NULL,
	address TEXT NOT NULL,
	email TEXT NOT NULL
);


DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	name TEXT NOT NULL,
	description TEXT NOT NULL,
	-- firs param is for digits and the second one for decimals
	price NUMERIC(12,2) NOT NULL,
	stock INTEGER
);

DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	name TEXT NOT NULL
);


DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
	id UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	purchase_date TIMESTAMP NOT NULL DEFAULT NOW()
);

ALTER TABLE products ADD COLUMN category_id UUID,
ADD CONSTRAINT fk_category_id
FOREIGN KEY (category_id)
REFERENCES categories(id);

ALTER TABLE orders ADD COLUMN client_id UUID,
ADD CONSTRAINT fk_client_Id
FOREIGN KEY (client_id)
REFERENCES clients(id);


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
