
CREATE DATABASE IF NOT EXISTS sampledb;
USE sampledb;
CREATE TABLE hello (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255)
);
INSERT INTO hello (message) VALUES ('Hello from Database!');
