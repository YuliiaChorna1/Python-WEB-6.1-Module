---- Insert

insert into clients(name, surname, age) values ('Dima', 'Kushch', 19);
insert into clients(name, surname, age) values ('Dima', 'Other', 50);

insert into clients(name, surname, age)
    values
        ('Anton', 'Abc', 23),
        ('Lera', 'Baas', 32);

insert into client_photo(url, client_id_fk) values ('cat_1.jpeg', 1), ('cat_2.jpeg', 1)
