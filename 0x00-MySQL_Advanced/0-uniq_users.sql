-- creates a table users

CREATE TABLE IF NOT EXISTS users (
	id INT AUTO_INCREMENT PRIMARY_KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
);
