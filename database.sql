CREATE DATABASE employee_leave_db;
USE employee_leave_db;

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(50),
password VARCHAR(50),
role VARCHAR(20)
);

CREATE TABLE leaves(
leave_id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(50),
leave_date DATE,
reason VARCHAR(200),
status VARCHAR(20)
);

INSERT INTO users(username,password,role)
VALUES
('admin','admin123','admin'),
('venkat','1234','employee'),
('kumar','1234','employee');
