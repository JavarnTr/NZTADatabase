--Procedure to export all past payments
select name, reason, amount, date
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4

COPY (select name, reason, amount, date
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4) TO 'c:/tmp/test.csv' DELIMITER ',' CSV HEADER;






CREATE OR REPLACE FUNCTION export_cities(file_name VARCHAR(255)) RETURNS void 
  AS $$
  DECLARE
    select_stmt VARCHAR(500) := 'select name, payments.reason, amount, payments.date 
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4';
  BEGIN
     EXECUTE('COPY (' || select_stmt || ') TO ' || QUOTE_LITERAL(C:\Users\javar) || ' CSV'); 
  END;
  $$
  LANGUAGE plpgsql;