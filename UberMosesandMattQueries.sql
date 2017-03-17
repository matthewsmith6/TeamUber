/*Deliverable 3. Question 1*   TeamUber Moses Lim & Matthew Smith*/
USE DataBProjUber;
GO


Select * FROM Driver;
Select * FROM Customer;
SELECT * FROM Car;
SELECT * FROM Trip;
SELECT * FROM Rating;

/*Query that uses aggregate function*/

Select count(TripID) as SuccesfulTrips From Rating
where NumberofStars> 3;

/*Selects Based On Inner Join*/
SELECT s.DropOffCountry,
s.PickUpCountry,
p.FirstName
FROM Trip as s
INNER JOIN Driver as p
ON s.DriverID=p.DriverID;

/*Select Based On Right OuterJoing*/
SELECT s.ExteriorColor,
s.LicensePlatNumber,
p.TypeofUber
FROM Car as s
RIGHT OUTER JOIN Trip as p
ON s.driverID=p.DriverID;

/*Subquery using SELECT*/

SELECT Gender, Race, DriverID From Driver;