-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля:
-- id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве
-- и их возраст находится в диапазоне [18, 30) лет. 
-- Примечание: Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9]
-- означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". Такой синтаксис нельзя использовать в sql, вам нужно найти
-- решение, как такое условие можно записать в sql по-другому.
-- Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql


-- create
CREATE TABLE classmates (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO classmates (name, age, address) VALUES ('Олег', 25, 'Москва');
INSERT INTO classmates (name, age, address) VALUES ('Татьяна', 15, 'Москва');
INSERT INTO classmates (name, age, address) VALUES ('Зинаида', 40, 'Санкт-Петербург');
INSERT INTO classmates (name, age, address) VALUES ('Геннадий', 45, 'Саратов');
INSERT INTO classmates (name, age, address) VALUES ('Яков', 50, 'Магнитогорск');
INSERT INTO classmates (name, age, address) VALUES ('Сергей', 27, 'Москва');
INSERT INTO classmates (name, age, address) VALUES ('Семен', 28, 'Ростов-на-Дону');
INSERT INTO classmates (name, age, address) VALUES ('Елена', 29, 'Москва');
INSERT INTO classmates (name, age, address) VALUES ('Сергей', 31, 'Санкт-Петербург');
INSERT INTO classmates (name, age, address) VALUES ('Ольга', 33, 'Москва');

-- fetch 
SELECT * FROM classmates WHERE age >= 18 AND age < 30 AND address = 'Москва';