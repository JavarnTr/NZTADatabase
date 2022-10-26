SELECT driver.driverid, name, model, make, fueltype, expiry
FROM vehicle
INNER JOIN driver on driver.driverid = vehicle.driverid
INNER JOIN warrant_of_fitness on warrant_of_fitness.vehicleid = vehicle.vehicleid
WHERE fueltype = 'Electric';

SELECT driver.driverid, name, reason,  model, make, amount, paydate 
FROM driver
INNER JOIN penalty on penalty.driverid = driver.driverid
INNER JOIN vehicle on vehicle.driverid = driver.driverid
WHERE reason = 'Speeding'
ORDER BY amount asc

CREATE VIEW warrants as
	SELECT driver.driverid, name, model, make, fueltype, expiry
	FROM vehicle
	INNER JOIN driver on driver.driverid = vehicle.driverid
	INNER JOIN warrant_of_fitness on warrant_of_fitness.vehicleid = vehicle.vehicleid
	WHERE fueltype = 'Electric';
	
CREATE VIEW penalties as
	SELECT driver.driverid, name, reason,  model, make, amount, paydate 
	FROM driver
	INNER JOIN penalty on penalty.driverid = driver.driverid
	INNER JOIN vehicle on vehicle.driverid = driver.driverid
	WHERE reason = 'Speeding'
	ORDER BY amount asc;

Select * 
FROM VehicleID
INNER JOIN driver on driver.driverid = vehicle.driverid
INNER JOIN Past_Owners on Past_Owners.vehicleid = vehicle.vehicleid
WHERE driverid = 1

select model, past_owners.driverid, vehicle.driverid from past_owners 

inner join vehicle on vehicle.vehicleid = past_owners.vehicleid


where past_owners.vehicleid = 1

select name, vehicle.driverid, model, past_owners.vehicleid, saledate
from past_owners
inner join vehicle on vehicle.vehicleid = past_owners.vehicleid
inner join driver on driver.driverid = past_owners.driverid
where vehicle.driverid = 1 or driver.driverid = 1


