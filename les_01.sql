---- create table in postgress

create table clients (
  id serial primary key,
  name varchar(30),
  surname varchar(30),
  age int check (AGE >= 0),
  constraint persons_surname_un unique (surname)
);

create table client_photo(
	id serial primary key,
	url varchar(255),
	client_id_fk int references clients(id) on delete cascade
);