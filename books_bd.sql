--
-- Файл сгенерирован с помощью SQLiteStudio v3.4.17 в Сб апр 5 18:25:12 2025
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: books
CREATE TABLE IF NOT EXISTS books (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT (255) NOT NULL, year INTEGER NOT NULL CHECK (year > 0), author TEXT (255) NOT NULL, genre_id INTEGER REFERENCES genres (id));
INSERT INTO books (id, title, year, author, genre_id) VALUES (1, 'Война и мир', 1869, 'Лев Толстой', NULL);
INSERT INTO books (id, title, year, author, genre_id) VALUES (2, '1984', 1949, 'Джордж Оруэлл', NULL);
INSERT INTO books (id, title, year, author, genre_id) VALUES (3, 'Убить пересмешника', 1960, 'Харпер Ли', NULL);
INSERT INTO books (id, title, year, author, genre_id) VALUES (4, 'Гордость и предубеждение', 1813, 'Джейн Остин', NULL);

-- Таблица: genres
CREATE TABLE IF NOT EXISTS genres (id INTEGER PRIMARY KEY AUTOINCREMENT, genre TEXT NOT NULL);
INSERT INTO genres (id, genre) VALUES (1, 'Science Fiction');
INSERT INTO genres (id, genre) VALUES (2, 'Fantasy');
INSERT INTO genres (id, genre) VALUES (3, 'Mystery');
INSERT INTO genres (id, genre) VALUES (4, 'Thriller');
INSERT INTO genres (id, genre) VALUES (5, 'Romance');
INSERT INTO genres (id, genre) VALUES (6, 'Historical Fiction');
INSERT INTO genres (id, genre) VALUES (7, 'Non-Fiction');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
