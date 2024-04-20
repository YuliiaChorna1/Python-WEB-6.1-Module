------ PRIMARY KEY (повинен бути унікальним та вічним)

-- додати первинний ключ таблиці, де його немає:
ALTER TABLE table1 ADD CONSTRAINT table1_id_pk PRIMARY KEY (id);

-- видалити первинний ключ:
ALTER TABLE table1 DROP PRIMARY KEY;


------ UNIQUE KEY​ 

-- Створення при описі структури:
CREATE TABLE persons (
    id INT PRIMARY KEY,
    email CHAR(50) NOT NULL,
    fullName varchar(100) NULL,
    CONSTRAINT persons_email_un UNIQUE KEY (email)
);

-- додати його за допомогою ALTER, якщо у структурі таблиці його немає:
ALTER TABLE persons ADD CONSTRAINT persons_email_un UNIQUE KEY (email);

------ FOREIGN KEY

-- Створюємо батьківську таблицю:
CREATE TABLE genders (
  id INT PRIMARY KEY,
  name VARCHAR(30),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Та дочірню:
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(30),
  email VARCHAR(30),
  password VARCHAR(30),
  age TINYINT UNSIGNED,
  gender_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (gender_id) REFERENCES genders (id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


