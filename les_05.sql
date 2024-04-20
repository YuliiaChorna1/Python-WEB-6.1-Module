---- UPDATE

update clients set name = 'Anton' where id = 4;


---- DELETE

delete from clients where age > 30;

delete from clients where id = 5;

truncate table clients cascade;
