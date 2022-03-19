use bd;
#select concat(LEFT(LAST_NAME, 1), '.') as FisrtLetter from employee

#select LOWER(product_type_cd), UPPER(name) from product;
select CONCAT(LOWER(LEFT(product_type_cd,1)),SUBSTRING(product_type_cd,2)) from product;


