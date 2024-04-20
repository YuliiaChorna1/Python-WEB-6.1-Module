-- UPDATE: Зміна даних
UPDATE contacts SET user_id = 3 WHERE id = 5;


-- DELETE: Видалення записів з таблиці
DELETE FROM contacts WHERE id = 4;


-- DELETE TABLE: видалити всі дані, таблицю залишити
TRUNCATE TABLE contacts;


-- DELETE TABLE: видалити таблицю повністю
DROP TABLE contacts;

