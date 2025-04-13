-- Создаем базу данных, если она не существует
CREATE DATABASE IF NOT EXISTS task_manager;

-- Создаем пользователя, если он не существует
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'secret';

-- Предоставляем пользователю все привилегии на базу task_manager
GRANT ALL PRIVILEGES ON task_manager.* TO 'user'@'%';

-- Обновляем привилегии
FLUSH PRIVILEGES;

-- Переключаемся на базу task_manager
USE task_manager;

-- Создаем таблицу tasks, если она не существует
CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);