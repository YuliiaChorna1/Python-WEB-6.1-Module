---- AGREGATION

select * from clients;

select min(age) as "minAge" from clients;
select max(age) as "maxAge", name from clients group by name;
select avg(age) as "avgAge" from clients;