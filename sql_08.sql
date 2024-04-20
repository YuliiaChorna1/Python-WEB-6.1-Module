---- Модифікація таблиць: Індекси

-- додамо індекс на поле fullname:
CREATE INDEX fullname_ix ON users (fullname);

-- 1. індекс створюється під час створення таблиці:
CREATE TABLE table1
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Код товару',
    code char(4) NOT NULL DEFAULT 'AAAA',
    name VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Назва товару',
    description TEXT NOT NULL DEFAULT '' COMMENT 'Опис товару',
    price FLOAT NOT NULL DEFAULT 0 COMMENT 'Ціна товару',
    CONSTRAINT table1_id_pk PRIMARY KEY (id),
    INDEX table1_name_ix(name),
    INDEX table1_price_ix(price)
) COMMENT 'Таблиця товарів з ключами та індексами';

-- 2. індекс створюється змінюючи таблицю через оператор ALTER:
ALTER TABLE table1 ADD INDEX table1_name_ix(name), ADD INDEX table1_price_ix(price);

-- 3. індекс створюється через оператор CREATE:
CREATE INDEX table1_name_ix ON table1 (name);

-- Cкладені індекси:
CREATE INDEX table1_name_price_ix ON table1 (name, price);

-- Щоб видалити індекс, потрібно виконати оператор DROP:
DROP INDEX table1_price_ix ON table1;

