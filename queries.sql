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
