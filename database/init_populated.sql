-- Create DB and tables
CREATE DATABASE IF NOT EXISTS it_checklist_db;
USE it_checklist_db;
DROP TABLE IF EXISTS user_tasks;
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;
CREATE TABLE users ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL, email VARCHAR(150) NOT NULL UNIQUE, password VARCHAR(255) NOT NULL, role ENUM('admin','user') NOT NULL DEFAULT 'user', created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP );
CREATE TABLE tasks ( id INT AUTO_INCREMENT PRIMARY KEY, title VARCHAR(255) NOT NULL, description TEXT, priority ENUM('low','high','critical') DEFAULT 'low', created_by INT DEFAULT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP );
CREATE TABLE user_tasks ( id INT AUTO_INCREMENT PRIMARY KEY, user_id INT NOT NULL, task_id INT NOT NULL, task_date DATE NOT NULL, status ENUM('pending','in_progress','completed') DEFAULT 'pending', remarks TEXT, updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, UNIQUE KEY uq_user_task_date (user_id, task_id, task_date) );
INSERT INTO users (name,email,password,role) VALUES ('System Admin','admin@example.com','$2y$12$arqFyazTUN0PnjC/vdcAxeIKSYcS7UGOYOlraRj56teKE6aCmlkpe','admin'), ('Paul Ivan Mojica','paul@example.com','$2y$12$Rr3tqu7MNZZ3BwSsDxwio.JoZn9J9cfD4VzfUckMteDdttIGK0JCS','user');
INSERT INTO tasks (title,description,priority,created_by) VALUES ('Check Server Status','Verify all critical servers are running and responsive','critical',1), ('Review Server Resources','Monitor CPU, memory, and disk usage on all servers','high',1);
