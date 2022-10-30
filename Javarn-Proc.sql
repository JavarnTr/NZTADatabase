--Export all past payments
COPY (select name, reason, amount, date
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4) TO 'C:\Users\javar\Documents\GitHub\payments.csv' DELIMITER ',' CSV HEADER;