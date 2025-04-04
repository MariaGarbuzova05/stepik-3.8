--
-- Файл сгенерирован с помощью SQLiteStudio v3.4.17 в Пт апр 4 19:27:15 2025
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: books
CREATE TABLE IF NOT EXISTS books (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT (255) NOT NULL, year INTEGER NOT NULL CHECK (year > 0), author TEXT (255) NOT NULL);
INSERT INTO books (id, title, year, author) VALUES (1, 'Война и мир', 1869, 'Лев Толстой');
INSERT INTO books (id, title, year, author) VALUES (2, '1984', 1949, 'Джордж Оруэлл');
INSERT INTO books (id, title, year, author) VALUES (3, 'Убить пересмешника', 1960, 'Харпер Ли');
INSERT INTO books (id, title, year, author) VALUES (4, 'Гордость и предубеждение', 1813, 'Джейн Остин');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
