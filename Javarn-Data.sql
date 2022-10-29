-- Insert sample data 
Insert into Driver(driverid, name, dob, phone, email, address) 
Values (1, 'Maria York', '2003-01-14', 021582945, 'newnewyork@gmail.com', '2531 Berry Street'),
		(2, 'Edward Estrada', '2004-03-18', 021284942, 'eric@gmail.com', '3335 Riverside Drive'),
		(3, 'Caitlin Archer', '1991-05-26', 021365196, 'archer@gmail.com', '4164 Park Street'),
		(4, 'Emilia Simpson', '1968-02-19', 0215934218, 'simpson@gmail.com', '3043 Wexford Way'),
		(5, 'Bradley Mays', '1979-09-04', 021456327, 'bmays@gmail.com', '4096 Edgewood Avenue'),
		(6, 'Hunter Clay', '1986-04-12', 034657125, 'hclay@gmail.com', '214 Magnolia Crescent'),
		(7, 'Lenny Neal', '1999-11-03', 021547974, 'lennyn@gmail.com', '2312 Lake Road'),
		(8, 'Ellie Martin', '1973-12-14', 021434673, 'martinellie@gmail.com', '12 Wisteria Walk'),
		(9, 'Dawn Ortega', '1996-10-30', 021454674, 'ortegas@gmail.com', '894 Maple Lane'),
		(10, 'David Wallace', '1965-02-28', 021346357, 'acewall@gmail.com', '124 Callison Lane');
		
Insert into Licence(licenceid, class, issuedate, expiry, conditions, driverid)
Values (1, 'Class 1 Restricted', '2021-12-15', '2026-12-15', 'Cannot carry passengers unless accompanied by supervisor. Can only drive without supervisor between 5am and 10pm.', 1),
		(2, 'Class 1 Learners', '2020-06-04', '2025-06-04', 'Can only drive with a supervisor. Must drive with an L plate.', 2),
		(3, 'Class 6 Full', '2017-05-29', '2027-05-29', 'No restrictions.', 3),
		(4, 'Class 4 Learners', '2019-02-18', '2024-02-18', 'Must drive with a supervisor.', 4),
		(5, 'Class 1 Full', '2018-04-02', '2028-04-02', 'No restrictions', 5),
		(6, 'Class 5 Full', '2015-12-15', '2025-12-15', 'No restrictions', 6),
		(7, 'Class 1 Learners', '2019-02-19', '2024-02-19', 'Can only drive with a supervisor. Must drive with an L plate.', 7),
		(8, 'Class 1 Full', '2012-11-08', '2022-11-08', 'Must wear glasses while driving.', 8),
		(9, 'Class 1 Restricted', '2022-09-12', '2027-09-12', 'Cannot carry passengers unless accompanied by supervisor. Can only drive without supervisor between 5am and 10pm.', 9),
		(10, 'Class 6 Learners', '2018-11-03', '2022-11-03', 'Must drive with an L plate. Cannot carry passengers.', 10);
		 
Insert into Vehicle(vehicleid, model, make, colour, fueltype, manufactureyear, class, conditions, country, value, purchasedate, driverid)
Values (1, 'Toyota', 'Corolla', 'Red', 'Regular', '1995', 'Class 1', 'Faulty locks.', 'United States', '$1,500.00', '2009-07-20', 1), 
		(2, 'Nissan', 'X-Trail', 'Navy Blue', 'Regular', '2018', 'Class 1', 'None', 'Japan', '$39,000.00', '2019-02-11', 2),
		(3, 'Tesla', 'Model S', 'White', 'Electric', '2019', 'Class 1', 'None', 'United States', '$89,000.00', '2021-12-06', 3),
		(4, 'Ford', 'Explorer', 'Blue', 'Regular', '2017', 'Class 1', 'Dent in driver-side door.', 'United States', '$32,000.00', '2017-09-01', 4),
		(5, 'BMW', '3 Series', 'Black', 'Regular', '2012', 'Class 1', 'None', 'Mexico', '$12,000.00', '2014-08-23', 5),
		(6, 'Toyota', 'RAV4', 'Red', 'Regular', '2015', 'Class 1', 'Chipped windshield', 'United States', '$11,000.00', '2020-03-04',  6),
		(7, 'Suzuki', 'Swift', 'Yellow', 'Regular', '2009', 'Class 1', 'None', 'New Zealand', '$9,000.00', '2009-07-20', 7),
		(8, 'Audi', 'e-tron', 'White', 'Electric', '2019', 'Class 1', 'None', 'Belgium', '$151,900', '2022-05-13', 8),
		(9, 'Nissan', 'Pathfinder', 'Gray', 'Regular', '2014', 'Class 1', 'None', 'Japan', '$13,000.00', '2016-01-12', 9),
		(10, 'Hyundai', 'Ioniq 5', 'Red', 'Electric', '2021', 'Class 1', 'None', 'South Korea', '$60,000.00', '2022-01-12', 10);
		
Insert into Government_Vehicle(governmentvehicleid, purpose, vehicleid)
Values (1, 'Police', 4),
		(2, 'Ambulance', 9),
		(3, 'Fire Department', 2);
		
Insert into Clean_Car(cleancarid, emissions, vehicleid)
VALUES (1, 'Electric', 3),
		(2, 'Electric', 8),
		(3, 'Electric', 10);

Insert into Payments(paymentid, reason, date, amount, driverid)
VALUES (1, 'Warrant', '2021-11-04', '$60.00', 3),
		(2, 'Warrant', '2022-05-16', '$140.00', 9),
		(3, 'Warrant', '2022-02-07', '$90.00', 4),
		(4, 'Warrant', '2021-10-19', '$70.00', 4),
		(5, 'Warrant', '2022-09-28', '$110.00', 10),
		(6, 'Registration', '2022-03-14', '$102.90', 9),
		(7, 'Registration', '2021-11-07', '$102.90', 6),
		(8, 'Registration', '2022-01-23', '$102.90', 7),
		(9, 'Registration', '2022-05-01', '$53.61', 5),
		(10, 'Registration', '2021-12-21', '$102.90', 8),
		(11, 'Penalty', '2021-09-15', '$120.00', 9),
		(12, 'Penalty', '2017-03-14', '$30.00', 3),
		(13, 'Penalty', '2015-08-08', '$4500.00', 6),
		(14, 'Penalty', '2018-01-30', '$70.00', 4),
		(15, 'Penalty', '2019-04-04', '$230.00', 7),
		(16, 'Test', '2021-12-15', '$55', 8),
		(17, 'Test', '2020-06-04', '$110.00', 5),
		(18, 'Test', '2017-05-29', '$140.00', 5),
		(19, 'Test', '2019-02-18', '$163.96', 2),
		(20, 'Test', '2018-04-02', '$70.00', 1);

Insert into Warrant_of_Fitness(warrantid, issuedate, expiry, issues, vehicleid, paymentid)
Values (1, '2021-11-04', '2022-11-04', 'None', 1, 1),
		(2, '2022-05-16', '2022-11-16', 'Seatbelt replacement', 2, 2),
		(3, '2022-02-07', '2023-02-07', 'Pump up tires', 3, 3),
		(4, '2021-10-19', '2022-10-19', 'None', 4, 4),
		(5, '2022-09-28', '2023-02-28', 'Headlight replacement', 5, 5);
		

Insert into Registration(registrationid, date, expiry, vehicleid, paymentid)
Values (1, '2022-03-14', '2023-03-14', 1, 6),
		(2, '2021-11-07', '2022-11-07', 2, 7),
		(3, '2022-01-23', '2023-01-23', 3, 8),
		(4, '2022-05-01', '2022-11-01', 4, 9),
		(5, '2021-12-21', '2022-12-21', 5, 10);

Insert into Penalty(penaltyid, reason, date, paydate, driverid, paymentid)
Values (1, 'Speeding', '2021-08-18', '2021-09-15', 1, 11),
		(2, 'Parking', '2017-02-14','2017-03-14', 2, 12),
		(3, 'Drinking', '2015-07-11', '2015-08-08', 3, 13),
		(4, 'Driving outside of hours', '2018-01-02', '2018-01-30', 4, 14),
		(5, 'Speeding', '2019-03-07', '2019-04-04', 5, 15);

Insert into Applicant(applicantid, driverid)
Values (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10);
		
Insert into Instructor(instructorid, name, phone, address)
Values (1, 'Paul Martin', 021425783, '9 Lyndhurst Road'),
		(2, 'Raymond Morgan', 021973524, '94 Marshall Avenue'),
		(3, 'Renee Jackson', 021429759, '121 Broderick Road'),
		(4, 'Michelle English', 021754862, '34 Norman Street'),
		(5, 'Anthony Sullivan', 021673419, '27 West Fork Street'),
		(6, 'Ryan Woods', 021271493, '13 Willow Street'),
		(7, 'Michael Thomas', 021863648, '2313 Lake Road'),
		(8, 'Judith Bowman', 021251794, '12 Tanglewood Drive'),
		(9, 'Charles White', 021475389, '21 Ridgeview Cresent'),
		(10, 'Samantha Collins', 021683164, '47 Harley Brook Lane');
	

Insert into Driver_Test(testid, date, result, type, applicantid, paymentid, instructorid)
Values (1, '2021-12-15', 'Fail', 'Full', 1, 16, 1),
		(2, '2020-06-04', 'Pass', 'Learners', 2, 17, 2),
		(3, '2017-05-29', 'Pass', 'Full', 3, 18, 3),
		(4, '2019-02-18', 'Pass', 'Learners', 4, 19, 4),
		(5, '2018-04-02', 'Pass', 'Full', 5, 20, 5);
		

Insert into Past_Owners(driverid, vehicleid, saledate)
Values (8, 1, '2009-07-20'),
		(3, 2, '2019-02-11'),
		(5, 3, '2021-12-06'),
		(1, 4, '2017-09-01'),
		(7, 5, '2014-08-23'),
		(10, 6, '2020-03-04'),
		(4, 7, '2011-09-08'),
		(9, 8, '2022-05-13'),
		(2, 9, '2016-01-12'),
		(6, 10, '2021-11-28');