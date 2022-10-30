--Export all past payments
COPY (select name, reason, amount, date
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4) TO 'c:/tmp/test.csv' DELIMITER ',' CSV HEADER;




