CREATE DATABASE Miscelanea;
CREATE USER 'Orlando'@'%' IDENTIFIED BY 'database';
GRANT ALL PRIVILEGES ON Miscelanea.* TO 'Orlando'@'%';

FLUSH PRIVILEGES;
