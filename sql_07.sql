---- Модифікація таблиць: Оператор ALTER

-- Перейменувати колонку column_a у колонку column_b і задати їй тип INTEGER:
ALTER TABLE table_name CHANGE column_a column_b INTEGER; 

-- Змінити тільки тип колонки column_b в таблиці table_name:
ALTER TABLE table_name MODIFY column_b BIGINT NOT NULL;

-- Додати колонку column_c з типом FLOAT в таблицю table_name:
ALTER TABLE table_name ADD column_c FLOAT;

-- Додати колонку column_d з типом VARCHAR після column_c в таблицю table_name:
ALTER TABLE table_name ADD column_d VARCHAR(30) AFTER column_c;

-- Додати колонку column_f з типом CHAR і зробити її першою:
ALTER TABLE table_name ADD column_f CHAR(10) FIRST;

-- Видалити колонку column_c в таблиці table_name:
ALTER TABLE table_name DROP COLUMN column_c;

-- Додати індекс з ім'ям index_name_ix для колонки column_b:
ALTER TABLE table_name ADD INDEX index_name_ix (column_b);


