--Export all past payments
--Sometimes Postgres returned an error saying it didn't have permissions to access the csv file, but a solution was to move it to 
--my C drive's tmp folder and changing the code's file path to match.
COPY (select name, reason, amount, date
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4) TO 'C:\Users\javar\Documents\GitHub\payments.csv' DELIMITER ',' CSV HEADER;