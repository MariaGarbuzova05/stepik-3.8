--
-- ���� ������������ � ������� SQLiteStudio v3.4.17 � �� ��� 4 19:27:15 2025
--
-- �������������� ��������� ������: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: books
CREATE TABLE IF NOT EXISTS books (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT (255) NOT NULL, year INTEGER NOT NULL CHECK (year > 0), author TEXT (255) NOT NULL);
INSERT INTO books (id, title, year, author) VALUES (1, '����� � ���', 1869, '��� �������');
INSERT INTO books (id, title, year, author) VALUES (2, '1984', 1949, '������ ������');
INSERT INTO books (id, title, year, author) VALUES (3, '����� ������������', 1960, '������ ��');
INSERT INTO books (id, title, year, author) VALUES (4, '�������� � �������������', 1813, '����� �����');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
