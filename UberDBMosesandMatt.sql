/*Matthew Smith and Moses Lim || Team Uber||  Database Creation.*/


CREATE DATABASE DataBProjUber;
GO

USE DataBProjUber;
GO

CREATE TABLE Driver(
  DriverID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Age bigint NOT NULL,
  Race varchar(50) NOT NULL,
  HairColor varchar(50) NOT NULL,
  EyeColor varchar(50) NOT NULL,
  PhoneNumber varchar(50) NOT NULL,
  EmailAddress varchar(50) NOT NULL,
  Langage varchar(50) NOT NULL,
  Gender varchar(50) NOT NULL,
  YearofLastAccident varchar(50) NOT NULL,
  YearsofEmployement bigint NOT NULL,
  NumberofJobs bigint NOT NULL);

CREATE TABLE Customer(
  CustomerID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Age bigint NOT NULL,
  Race varchar(50) NOT NULL,
  HairColor varchar(50) NOT NULL,
  EyeColor varchar(50) NOT NULL,
  Gender varchar(50) NOT NULL,
  YearsofMembership bigint NOT NULL,
  EmailAddress varchar(50) NOT NULL,
  PhoneNumber varchar(50) NOT NULL);

  CREATE TABLE Car(
  CarID bigint NOT NULL PRIMARY KEY,
  Make varchar(50) NOT NULL,
  Model varchar(50) NOT NULL,
  Years bigint NOT NULL,
  DriverID bigint NOT NULL,
  ExteriorColor varchar(50) NOT NULL,
  InteriorColor varchar(50) NOT NULL,
  Miles bigint NOT NULL,
  YearofLastService varchar(50) NOT NULL,
  YearofRegistration varchar(50) NOT NULL,
  VINNumber bigint NOT NULL,
  Insured varchar(50) NOT NULL,
  LicensePlatNumber varchar(50) NOT NULL,
  Transmission varchar(50) NOT NULL);


  CREATE TABLE Trip(
  TripID bigint NOT NULL PRIMARY KEY,
  PickUpCountry varchar(50) NOT NULL,
  PickUpState varchar(50) NOT NULL,
  PickUpCity varchar(50) NOT NULL,
  PickUpStreet varchar(50) NOT NULL,
  TimeElapsed varchar(50) NOT NULL,
  PickUpDate varchar(50) NOT NULL,
  PickUpTime varchar (50) NOT NULL,
  DropOffCountry varchar(50) NOT NULL,
  DropOffState varchar(50) NOT NULL,
  DropOffCity varchar(50) NOT NULL,
  DropOffStreet varchar(50) NOT NULL,
  DropOffDate varchar(50) NOT NULL,
  DropOffTime varchar(50) NOT NULL,
  TypeOfUber varchar(50) NOT NULL,
  CustomerID bigint NOT NULL, 
  DriverID bigint NOT NULL,
  CarID bigint NOT NULL,
  DistanceTravelled bigint NOT NULL);

  CREATE TABLE Rating(
  RatingID bigint NOT NULL PRIMARY KEY,
  TripID bigint NOT NULL,
  NumberofStars bigint NOT NULL,
  Comments varchar(50));

ALTER TABLE Trip ADD CONSTRAINT FK_Trip_Driver 
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID)

ALTER TABLE Trip ADD CONSTRAINT FK_Trip_Car 
FOREIGN KEY (CarID) REFERENCES Car(CarID)

ALTER TABLE Trip ADD CONSTRAINT FK_Trip_Customer
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)

ALTER TABLE Car ADD CONSTRAINT FK_Car_Driver 
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID)

ALTER TABLE Rating ADD CONSTRAINT FK_Rating_Trip 
FOREIGN KEY (TripID) REFERENCES Trip(TripID)

 ALTER TABLE Car ADD CONSTRAINT FK_Rating_Car 
FOREIGN KEY (CarID) REFERENCES Car(CarID);

INSERT INTO Driver (DriverID, FirstName, LastName, Age, Race, HairColor, EyeColor, PhoneNumber, EmailAddress, Langage, Gender, YearofLastAccident, YearsofEmployement, NumberofJobs)
Values
(1, 'Moses','Kim', 29, 'Asian', 'Brown', 'Black', 8495049394, 'kim@gmail.com', 'English', 'Male', 2007, 4, 11),  
(2, 'Matt', 'Smith', 54, 'Asian', 'Brown', 'Black', 7485960485, 'smith@gmail.com', 'English', 'Male', 2006, 2, 10),
(3, 'Noah', 'Wheeler', 25, 'Black', 'Black', 'Hazel', 4758695049, 'noah@gmail.com', 'Spanish', 'Male', 2010, 4, 7),
(4, 'Rose', 'Lauture', 47, 'White', 'Brown', 'Black', 7585768796, 'rose@gmail.com', 'Spanish', 'Female', 2009, 4, 10),
(5, 'Kathy', 'Smith', 65, 'Spanish', 'Brown','Hazel', 3647586958, 'kathy@gmail.com', 'English', 'Female', 2007, 8, 7),
(6, 'Gina', 'Lim', 67, 'Asian', 'Black', 'Black', 5748389485, 'Lim@gmail.com', 'French', 'Female', 2002, 8, 20),
(7, 'Moses', 'Sanders', 58, 'Black', 'Black', 'Black', 57473829283, 'moses@gmail.com','English', 'Male', 2005, 7, 12),
(8, 'Caleb', 'Gordon', 39, 'White', 'Red', 'Blue', 9675847586, 'caleb@gmail.com', 'French', 'Male', 2006, 5, 9),
(9, 'Manny', 'Brown', 22, 'Black', 'Black', 'Green', 3546574889, 'brown@gmail.com', 'Spanish', 'Male', 20015, 2, 12),
(10, 'Paulina', 'Grant', 36, 'Spanish', 'Brown', 'Black', 364946354, 'grant@gmail.com', 'English', 'Female', 2010, 5, 16);

Insert Into Customer (CustomerID, FirstName, LastName, Age, Race, HairColor, EyeColor, Gender, YearsofMembership, EmailAddress, PhoneNumber)
Values
(1, 'Jon', 'Hill', 60, 'Asian', 'Brown', 'Black','Male', 6, 'hill@gmail.com', 7465748473),
(2, 'Adam', 'Smith', 35, 'Black', 'Black', 'Hazel','Male', 7, 'adam@gmail.com', 6364758473),
(3, 'Kate', 'Lyn', 85, 'Black', 'Red', 'Black', 'Female', 6, 'katee@gmail.com', 7484736487),
(4, 'Jacky', 'Smythe', 38, 'Spanish', 'Brown','Hazel', 'Female', 8, 'jacky@gmail.com', 7364736890),
(5, 'Jess', 'Tammy', 57, 'Asian', 'Black', 'Black', 'Female', 20, 'tammy@gmail.com', 7658967567),
(6, 'Carthel', 'Saunders', 78, 'Black', 'Black', 'Black', 'Male', 17,  'carthel@gmail.com', 3648594837),
(7, 'Paul', 'Daniels', 36, 'Spanish', 'Red', 'Blue', 'Male', 14, 'paul@gmail.com', 9675847586),
(8, 'Jordan', 'Jones', 87, 'Black', 'Red', 'Green', 'Male', 7, 'jordan@gmail.com', 9046574889),
(9, 'Ina', 'Kao', 28, 'Asian', 'Brown', 'Blue', 'Female', 12, 'ina@gmail.com', 3646463654),
(10, 'Ashley', 'Walters', 43, 'Black', 'Black', 'Hazel', 'Female', 13, 'aw@gmail@gmail.com', 7656787678);

Insert Into Car (CarID, Make, Model, Years, DriverID, ExteriorColor, InteriorColor, Miles, YearofLastService, YearofRegistration, VINNUmber, Insured, LicensePlatNumber, Transmission)
Values
(101, 'Toyota', 'Camry', 1995, 1, 'Blue', 'Black', 100000, '2010', '2012', 786578, 'YES', 'GWH7887', 'Manual'),
(102, 'Toyota', 'Yaris', 2005, 2, 'Black', 'Black', 150000, '2012', '2015', 495867, 'YES', 'GHD6484', 'Automatic'),
(103, 'Nissan', 'Sentra', 2010, 3, 'Blue', 'Red', 26000, '2016', '2016', 489302, 'YES', 'HFU8475', 'Automatic'),
(104, 'Toyota', 'Corolla', 2007, 4, 'Red', 'Black', 164000, '2013', '2016', 378393, 'YES', 'HJU8475', 'Automatic'),
(105, 'Toyota', 'Camry', 2017, 5, 'Black', 'Grey', 20000, '2016', '2016', 384750, 'YES', 'JKU8354', 'Automatic'),
(106, 'Ford', 'Mustang', 2015, 6, 'Red', 'Grey', 34000, '2015', '2016', 374947, 'YES', 'KGY1222', 'Manual'),
(107, 'Honda', 'Civic', 2013, 7, 'Black', 'Grey', 50000, '2013', '2014', 364758, 'YES', 'DTU6748', 'Automatic'),
(108, 'Toyota', 'Camry', 2003, 8, 'Grey', 'Black', 78949, '2015', '2015', 463849, 'YES', 'UIK3647', 'Automatic'),
(109, 'Honda', 'Accord', 2007, 9, 'Blue', 'Grey', 123647, '2013', '2014', 989763, 'YES', 'IKU2536', 'Manual'),
(110, 'Jeep', 'Cherokee', 2015, 10, 'Green', 'Black', 83947, '2015', '2017', 829834, 'YES', 'DGU9086', 'Automatic');

Insert Into Trip (TripID, PickUpCountry, PickUpState, PickUpCity, PickUpStreet, TimeElapsed, PickUpDate, PickUpTime, DropOffCountry, DropOffState, DropOffCity, DropOffStreet, DropOffDate, DropOffTime, TypeOfUber, CustomerID, DriverID, CarID, DistanceTravelled)
Values
(1, 'UnitedStates', 'FL', 'Miami', 'GroveStreet', '00:13:20', '02/09/13', '1:00:00PM', 'UnitedStates', 'FL', 'Miami', 'ParkerAve', '02/09/13', '1:13:20PM', 'UberX', 2, 3, 103, 2.3),
(2, 'UnitedStates', 'MA', 'Wellesley', 'ForestStreet', '00:24:12', '04/04/16', '2:00:00PM', 'UnitedStates', 'MA', 'Newton', 'NewStreet', '04/04/16', '2:24:12PM', 'UberX', 2, 8, 108, 5.6),
(3, 'UnitedStates', 'MA', 'Newton', 'DukeAve', '00:30:00', '09/04/12', '1:30:00PM', 'UnitedStates', 'MA', 'Brighton', 'SnowStreet', '09/04/12', '2:00:00PM', 'UberX', 5, 3, 103, 12.2),
(4, 'UnitedStates', 'NY', 'Bronx', 'LinkDrive', '00:12:18', '10/08/09', '4:15:00PM', 'UnitedStates', 'NY', 'Bronx', 'GoodyStreet', '10/08/09', '4:27:18PM', 'UberXL', 6, 8, 108, 4.2),
(5, 'UnitedStates', 'NY', 'Manhattan', '69thStreet', '00:34:12', '10/10/10', '5:00:18PM', 'UnitedStates', 'NY', 'Manhattan', '100thStreet', '10/10/10', '5:30:30PM', 'UberX', 5, 10, 110, 20.0),
(6, 'UnitedStates', 'VA', 'Weston', 'BeachStreet', '00:10:00', '05/12/17', '10:00:00AM', 'UnitedStates', 'VA', 'Weston', 'LakeDrive', '05/12/17', '10:10:00AM', 'UberXL', 7, 3, 103, 3.1),
(7, 'UnitedStates', 'NY', 'Brooklyn', 'FinaDrive', '00:23:12', '07/11/08', '3:00:00PM', 'UnitedStates', 'NY', 'Brooklyn', 'AquaStreet', '06/10/06', '3:23:12PM', 'UberX', 2, 6, 106, 6.1),
(8, 'UnitedStates', 'CA', 'LosAngeles', 'TourStreet', '00:45:00', '01/12/04', '2:00:00PM', 'UnitedStates', 'CA', 'LosAngeles', 'ButtonStreet', '1/12/04', '2:45:00PM', 'UberX', 3, 1, 101, 30.1),
(9, 'UnitedStates', 'NY', 'Bronx', 'MountAve', '00:12:00', '02/12/05', '2:00:00PM', 'UnitedStates', 'NY', 'Bronx', 'ToneStreet', '02/12/05', '2:12:00PM', 'UberX', 4, 6, 106, 2.1),
(10, 'UnitedStates', 'CA', 'Torrence', 'BrickStreet', '00:23:12', '04/12/12', '4:50:00PM', 'UnitedStates', 'CA', 'Torrence', 'MavyAve', '04/12/12', '5:13:12PM', 'UberX', 3, 1, 101, 13.2);

Insert Into Rating (RatingID, TripID, NumberofStars, Comments)
Values
(1, 4, 5, 'AMAZING!'),
(2, 6, 3,'They Were Okay'),
(3, 2, 4, 'Funny Guy'),
(4, 1, 2, 'Creeped Me Out'),
(5, 3, 3, 'Provided water'),
(6, 10, 5, 'He has good music'),
(7, 9, 2, 'Im hard to please'),
(8, 5, 3, 'Car smelled bad'),
(9, 8, 2, 'Avoided Traffic'),
(10,7, 5, 'Killed a Guy but was on time'); 

