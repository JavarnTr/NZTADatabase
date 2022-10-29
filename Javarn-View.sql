--View that displays all vehicles that were/are owned by someone in the NZTA database. Entering a driverid of 1 returns all vehicles that have driverid 1 associated with them, whether that be from the vehicles table or past owners table.
Create view vehicle_history as
    select model, make, manufactureyear, purchasedate, saledate
    from vehicle
    inner join past_owners on past_owners.vehicleid = vehicle.vehicleid
    inner join driver on driver.driverid = vehicle.vehicleid
    where past_owners.driverid = 1 or vehicle.driverid = 1