SELECT driver.driverid, name, model, make, fueltype, expiry
FROM vehicle
INNER JOIN driver on driver.driverid = vehicle.driverid
INNER JOIN warrant_of_fitness on warrant_of_fitness.vehicleid = vehicle.vehicleid
WHERE fueltype = 'Electric';

--Show all drivers that have recieved a speeding ticket and what vehicle they were driving.
SELECT driver.driverid, name, reason,  model, make, amount, paydate 
FROM driver
INNER JOIN penalty on penalty.driverid = driver.driverid
INNER JOIN vehicle on vehicle.driverid = driver.driverid
WHERE reason = 'Speeding'
ORDER BY amount asc

--Check the registration expiry of a specific vehicle. Searching by the ID of the vehicle will give you details of the vehicle, who owns it, and when the rego expires.
SELECT name, model, make, expiry
FROM registration
INNER JOIN vehicle on vehicle.vehicleid = registration.vehicleid
INNER JOIN driver on driver.driverid = vehicle.driverid
WHERE vehicle.vehicleid = 7;

--Procedure to export all past payments
select name, reason, amount, date
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4

COPY (select name, reason, amount, date
from payments
inner join driver on driver.driverid = payments.driverid
where payments.driverid = 4) TO 'c:/tmp/test.csv' DELIMITER ',' CSV HEADER;

--View that displays all vehicles that were/are owned by someone in the NZTA database. Entering a driverid of 1 returns all vehicles that have driverid 1 associated with them, whether that be from the vehicles table or past owners table.
Create view vehicle_history as
    select model, make, manufactureyear, purchasedate, saledate
    from vehicle
    inner join past_owners on past_owners.vehicleid = vehicle.vehicleid
    inner join driver on driver.driverid = vehicle.vehicleid
    where past_owners.driverid = 1 or vehicle.driverid = 1




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