-- JOIN tables

SELECT u.id, u.name, u.email, g.name AS gender
FROM users AS u
INNER JOIN genders AS g ON g.id = u.gender_id


SELECT c.id, c.name, c.email, u.name AS owner
FROM contacts AS c
JOIN users AS u ON u.id = c.user_id


SELECT c.id, c.name, c.email, u.name AS owner
FROM contacts AS c
LEFT JOIN users AS u ON u.id = c.user_id
