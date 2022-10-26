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



select *
from vehicle
inner join past_owners on past_owners.vehicleid = vehicle.vehicleid
inner join driver on driver.driverid = vehicle.vehicleid

where past_owners.driverid = 1 or vehicle.driverid = 1