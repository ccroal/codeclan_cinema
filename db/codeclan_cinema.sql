DROP TABLE films;
DROP TABLE customers;

CREATE TABLE customers(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
funds INT
);

CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  price INT
);
