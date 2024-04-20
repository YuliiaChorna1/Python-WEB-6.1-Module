---- ALTER
-- alter table table_name add/change/drop


alter table clients add column visa bool;

alter table clients change age str_age varchar(255);

alter table clients drop column age;
