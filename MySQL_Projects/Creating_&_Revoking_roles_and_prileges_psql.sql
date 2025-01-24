-- creating roles and privileges 
-- Read Only

-- Creating database, schema and table
CREATE DATABASE World;
CREATE SCHEMA store;
CREATE TABLE store.sales(customerId int NOT NULL, price char(8),item varchar(8));
INSERT INTO store.sales(customerID, price, item) VALUES (21323, 3.4, 'Onion');
SELECT * FROM store.sales;

-- Creating role
CREATE ROLE read_only;

-- Connecting role to database
GRANT CONNECT ON DATABASE World to read_only;

-- Creating privileges
GRANT USAGE ON SCHEMA store to read_only;
GRANT SELECT ON ALL TABLES IN SCHEMA store to read_only;

--Write_only
CREATE ROLE write_only;
GRANT CONNECT ON DATABASE World to write_only;
GRANT USAGE ON SCHEMA store to write_only;
GRANT SELECT ON ALL TABLES IN SCHEMA store to write_only;

-- Creating user and assigning roles to them;
-- Creating new user
CREATE USER Joan WITH PASSWORD 'Joan123';

-- Assigning Roles to user Joan
GRANT read_only TO Joan;

-- Revoking users privilege
REVOKE read_only FROM Joan;