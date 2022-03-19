use bd;

select * from employee;

# pour ajouter des lignes

insert into EMPLOYEE ( FIRST_NAME, LAST_NAME ,START_DATE) values ('yahyah1', 'abdel1', '2001-06-22');
insert into EMPLOYEE ( FIRST_NAME, LAST_NAME ,START_DATE) values ('yahyah2', 'abdel2', '2001-06-22');
insert into EMPLOYEE ( FIRST_NAME, LAST_NAME ,START_DATE) values ('yahyah3', 'abdel3', '2001-06-22');
insert into EMPLOYEE ( FIRST_NAME, LAST_NAME ,START_DATE) values ('yahyah4', 'abdel4', '2001-06-22');
insert into EMPLOYEE ( FIRST_NAME, LAST_NAME ,START_DATE) values ('yahyah5', 'abdel5', '2001-06-22');

# pour modifier le tableau
UPDATE EMPLOYEE
SET SUPERIOR_EMP_ID = 18
WHERE EMP_ID = 12;


#delete from EMPLOYEE;

insert into department ( NAME) values ('sciences');

insert into EMPLOYEE ( FIRST_NAME, LAST_NAME ,START_DATE, TITLE) values ('yahyah24', 'abdel24', '2001-06-22','PRESIDENT');