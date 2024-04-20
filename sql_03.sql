-- SELECT data from existed tables:

SELECT * FROM contacts

SELECT name, email FROM contacts ORDER BY name


SELECT name, email
FROM contacts
WHERE favorite = true
ORDER BY name


SELECT name, email
FROM users
WHERE age IN(20, 30, 40)
ORDER BY name


SELECT name, email, age
FROM users
WHERE age BETWEEN 30 AND 40
ORDER BY name


SELECT name, email
FROM contacts
WHERE name LIKE '%L%'
ORDER BY name


SELECT name, email, age
FROM users
WHERE age NOT BETWEEN 30 AND 40
ORDER BY name

