CREATE DATABASE SeguridadDB;
GO
USE SeguridadDB;
GO
CREATE TABLE users (
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(50) NOT NULL,
    enabled TINYINT NOT NULL DEFAULT 1
);

CREATE TABLE authorities (
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    CONSTRAINT fk_authorities_users FOREIGN KEY(username) REFERENCES users(username)
);
CREATE UNIQUE INDEX ix_auth_username ON authorities (username, authority);

INSERT INTO users (username, password, enabled) VALUES ('admin', '{noop}12345', 1);
INSERT INTO authorities (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO users (username, password, enabled) VALUES ('empleado', '{noop}12345', 1);
INSERT INTO authorities (username, authority) VALUES ('empleado', 'ROLE_USER');