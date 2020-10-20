  --EXEMPLO CREATE TABLE
  create table table1(
  id NUMBER,
  value VARCHAR2(20)
  );
  --EXEMPLO DROP
  drop table table2;
  
  create table table2(
  id NUMBER,
  value VARCHAR2(20)
  );
  
--EXEMPLO INSERT VALUES NA MÃO
INSERT INTO table2 (id, value) 
WITH names AS ( 
    SELECT 3, 'F' FROM dual UNION ALL
    SELECT 3, 'D' FROM dual UNION ALL
    SELECT 3, 'B' FROM dual

) 
  SELECT * FROM names
  
 select * from table2; 


 --EXEMPLO SUB- SELECTS 
 select 
 t.id,
 (select value from table2 where t.id = table2.id ) val
 from table1 t;
 
 
 select 
 t.id,
 (select value from table2 where t.id = table2.id and rownum <= 1) val
 from table1 t;
 
 
 
 