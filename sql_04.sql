-- AGGREGATION functions

SELECT min(age) as minAge
FROM users


SELECT avg(age) as averageAge
FROM users


SELECT COUNT(user_id) as total_contacts, user_id
FROM contacts
GROUP BY user_id


SELECT *
FROM contacts
WHERE user_id IN (SELECT id
    FROM users
    WHERE age < 30)


SELECT id, name as fullName, phone as mobile
FROM contacts
