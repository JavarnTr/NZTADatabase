--Show warrant of fitness expiry for electric vehicles.
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

