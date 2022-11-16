CREATE USER 'auth_user' @'%' IDENTIFIED WITH mysql_native_password BY 'Auth123';

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON *.* TO 'auth_user' @'%';

USE auth;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO
    user (email, password)
VALUES
    ('user@email.com', 'Admin123');