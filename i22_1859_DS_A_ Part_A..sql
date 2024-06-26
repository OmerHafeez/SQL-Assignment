CREATE DATABASE Assignment;
USE assignment;
CREATE TABLE Airline (
    Code INT PRIMARY KEY,
    Name VARCHAR(255),
    Headquarter_Address VARCHAR(255)
);

CREATE TABLE travel_agency (
    Agency_Code INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Contact_Person VARCHAR(255),
    Phone_Number BIGINT
);

CREATE TABLE menu_option (
    Option_Code INT PRIMARY KEY,
    Description VARCHAR(255)
);

CREATE TABLE passenger (
    Passenger_Number INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Gender VARCHAR(10),
    Age INT,
    Option_Code INT
);

CREATE TABLE flight (
    Flight_Number INT PRIMARY KEY,
    Origin VARCHAR(255),
    Destination VARCHAR(255),
    Day_Of_Week VARCHAR(255),
    Departure_Time TIME,
    Arrival_Time TIME,
    Airline_Code INT
);

CREATE TABLE crew (
    Crew_ID INT PRIMARY KEY,
    Booking_ID INT
);

CREATE TABLE mileage_program (
    Code INT PRIMARY KEY,
    Distribution VARCHAR(255),
    Start_Date DATE,
    Airline_Code INT,
    Passenger_Code INT
);

CREATE TABLE mileage_earned (
    Mileage_ID INT PRIMARY KEY,
    Booking_ID INT,
    Miles_Earned INT
);

CREATE TABLE booking (
    BookingID INT PRIMARY KEY,
    Flight_Number INT,
    Passenger_Number INT,
    Date DATE,
    Seat_Number INT,
    Pilot_Name VARCHAR(255),
    Agency_Code INT,
    Flight_Number_Reference VARCHAR(255),
    Crew_ID INT,
    Mileage_ID INT
);

CREATE TABLE kohsar_approval (
    Approval_ID INT PRIMARY KEY,
    Meal_ID INT
);

CREATE TABLE meal_details (
    Meal_ID INT PRIMARY KEY,
    Booking_ID INT,
    Option_Code INT,
    Protein_Level VARCHAR(255),
    Calories_Count INT
);

CREATE TABLE flight_stops (
    Stop_ID INT PRIMARY KEY AUTO_INCREMENT,
    Flight_Number INT,
    Stop_Location VARCHAR(255)
);

CREATE TABLE flight_crew (
    Flight_Number INT,
    Crew_ID INT,
    PRIMARY KEY (Flight_Number, Crew_ID)
);


INSERT INTO Airline (Code, Name, Headquarter_Address) VALUES
(1, 'PIA - Pakistan International Airlines', 'Jinnah International Airport, Karachi, Pakistan'),
(2, 'SereneAir', 'Lahore, Pakistan'),
(3, 'Shaheen Air International', 'Islamabad, Pakistan'),
(4, 'Emirates', 'Dubai, United Arab Emirates'),
(5, 'Qatar Airways', 'Doha, Qatar'),
(6, 'British Airways', 'London, United Kingdom'),
(7, 'Delta Air Lines', 'Atlanta, Georgia, United States'),
(8, 'Lufthansa', 'Cologne, Germany'),
(9, 'Air France', 'Paris, France'),
(10, 'Singapore Airlines', 'Singapore');


INSERT INTO travel_agency (Agency_Code, Name, Address, Contact_Person, Phone_Number) VALUES
(101, 'Saiyah', '76 Old LDA Building, Lahore, Pakistan', 'John Doe', 923008765432),
(102, 'Shedi Travel & Tours', 'Suite No. 8, 1st Floor, Panorama Centre, Karachi, Pakistan', 'Jane Smith', 923114567890),
(103, 'Globe Trotter', 'Dubai Media City, Dubai, United Arab Emirates', 'Ahmed Ali', 971504567890),
(104, 'Star Travel Agency', 'Doha Tower, Doha, Qatar', 'Fatima Khan', 974333444555),
(105, 'UK Travel Solutions', 'London Bridge, London, United Kingdom', 'David Brown', 442071231234),
(106, 'Atlanta Travels', 'Downtown Atlanta, Georgia, United States', 'Jessica White', 14046579900),
(107, 'German Travel Experts', 'Cologne City Centre, Cologne, Germany', 'Michael Schmidt', 492219876543),
(108, 'Parisian Tours', 'Champs-Élysées, Paris, France', 'Sophie Dupont', 33187654321),
(109, 'Singapore Tours', 'Marina Bay Sands, Singapore', 'Alex Tan', 6567312345),
(110, 'Global Explorer', 'Manama, Bahrain', 'Mohammed Abbas', 97317654321);


INSERT INTO menu_option (Option_Code, Description) VALUES
(1, 'Vegetarian'),
(2, 'Non-Vegetarian'),
(3, 'Vegan'),
(4, 'Gluten-Free'),
(5, 'Kosher'),
(6, 'Halal'),
(7, 'Low-Carb'),
(8, 'Low-Fat'),
(9, 'Dairy-Free'),
(10, 'Nut-Free');


INSERT INTO passenger (Passenger_Number, Name, Address, Gender, Age, Option_Code) VALUES
(1001, 'Ali Hassan', 'House No. 123, Street 45, Lahore, Pakistan', 'Male', 35, 1),
(1002, 'Sana Khan', 'Apartment No. 56, Gulshan-e-Iqbal, Karachi, Pakistan', 'Female', 28, 2),
(1003, 'Ahmed Malik', 'Flat No. 12, Defence View, Islamabad, Pakistan', 'Male', 42, 3),
(1004, 'Fatima Zaidi', 'Plot No. 34, Model Town, Lahore, Pakistan', 'Female', 32, 1),
(1005, 'Zubair Ali', 'House No. 87, Street 23, Karachi, Pakistan', 'Male', 45, 2),
(1006, 'Ayesha Ahmed', 'Apartment No. 10, DHA Phase 2, Islamabad, Pakistan', 'Female', 35, 3),
(1007, 'Nadeem Khan', 'House No. 5, Street 10, Lahore Cantt, Lahore, Pakistan', 'Male', 50, 1),
(1008, 'Maria Khan', 'House No. 67, Street 12, Clifton, Karachi, Pakistan', 'Female', 25, 2),
(1009, 'Usman Ahmed', 'Flat No. 20, F-11 Markaz, Islamabad, Pakistan', 'Male', 30, 3),
(1010, 'Sadia Aslam', 'House No. 56, Street 8, Gulberg, Lahore, Pakistan', 'Female', 40, 1);


INSERT INTO flight (Flight_Number, Origin, Destination, Day_Of_Week, Departure_Time, Arrival_Time, Airline_Code) VALUES
(1001, 'Lahore', 'Karachi', 'Monday', '08:00:00', '10:00:00', 1),
(1002, 'Karachi', 'Islamabad', 'Tuesday', '09:30:00', '12:30:00', 2),
(1003, 'Islamabad', 'Lahore', 'Wednesday', '11:00:00', '13:00:00', 3),
(1004, 'Lahore', 'Islamabad', 'Thursday', '13:30:00', '15:30:00', 1),
(1005, 'Islamabad', 'Karachi', 'Friday', '14:00:00', '16:00:00', 2),
(1006, 'Karachi', 'Lahore', 'Saturday', '16:30:00', '18:30:00', 3),
(1007, 'Lahore', 'Multan', 'Sunday', '18:00:00', '20:00:00', 1),
(1008, 'Multan', 'Islamabad', 'Monday', '08:30:00', '10:30:00', 2),
(1009, 'Islamabad', 'Faisalabad', 'Tuesday', '10:00:00', '12:00:00', 3),
(1010, 'Faisalabad', 'Lahore', 'Wednesday', '12:30:00', '14:30:00', 1);


INSERT INTO crew (Crew_ID, Booking_ID) VALUES
(5001, 2001),
(5002, 2002),
(5003, 2003),
(5004, 2004),
(5005, 2005),
(5006, 2006),
(5007, 2007),
(5008, 2008),
(5009, 2009),
(5010, 2010);


INSERT INTO mileage_program (Code, Distribution, Start_Date, Airline_Code, Passenger_Code) VALUES
(3001, 'Frequent Flyer Program', '2022-01-01', 1, 1001),
(3002, 'Premium Rewards', '2022-01-01', 2, 1002),
(3003, 'MilesPlus', '2022-01-01', 3, 1003),
(3004, 'SkyMiles', '2022-01-01', 1, 1004),
(3005, 'Flyer Bonus', '2022-01-01', 2, 1005),
(3006, 'Elite Rewards', '2022-01-01', 3, 1006),
(3007, 'Aviation Advantage', '2022-01-01', 1, 1007),
(3008, 'Traveler Points', '2022-01-01', 2, 1008),
(3009, 'Airline Miles', '2022-01-01', 3, 1009),
(3010, 'Sky Rewards', '2022-01-01', 1, 1010);


INSERT INTO kohsar_approval (Approval_ID, Meal_ID) VALUES
(6001, 1001),
(6002, 1002),
(6003, 1003),
(6004, 1004),
(6005, 1005),
(6006, 1006),
(6007, 1007),
(6008, 1008),
(6009, 1009),
(6010, 1010);


INSERT INTO mileage_earned (Mileage_ID, Booking_ID, Miles_Earned) VALUES
(4001, 2001, 500),
(4002, 2002, 600),
(4003, 2003, 700),
(4004, 2004, 800),
(4005, 2005, 900),
(4006, 2006, 1000),
(4007, 2007, 1100),
(4008, 2008, 1200),
(4009, 2009, 1300),
(4010, 2010, 1400);


INSERT INTO booking (BookingID, Flight_Number, Passenger_Number, Date, Seat_Number, Pilot_Name, Agency_Code, Flight_Number_Reference, Crew_ID, Mileage_ID) VALUES
(2001, 1001, 1001, '2024-04-10', 12, 'John Doe', 101, 'PK1001', 5001, 3001),
(2002, 1002, 1002, '2024-04-11', 14, 'Jane Smith', 102, 'PK1002', 5002, 3002),
(2003, 1003, 1003, '2024-04-12', 16, 'Ahmed Khan', 103, 'PK1003', 5003, 3003),
(2004, 1004, 1004, '2024-04-13', 18, 'Sarah Patel', 104, 'PK1004', 5004, 3004),
(2005, 1005, 1005, '2024-04-14', 20, 'David Lee', 105, 'PK1005', 5005, 3005),
(2006, 1006, 1006, '2024-04-15', 22, 'Emma Wilson', 106, 'PK1006', 5006, 3006),
(2007, 1007, 1007, '2024-04-16', 24, 'Ryan Johnson', 107, 'PK1007', 5007, 3007),
(2008, 1008, 1008, '2024-04-17', 26, 'Sophia Brown', 108, 'PK1008', 5008, 3008),
(2009, 1009, 1009, '2024-04-18', 28, 'Mohammed Ali', 109, 'PK1009', 5009, 3009),
(2010, 1010, 1010, '2024-04-19', 30, 'Lisa Taylor', 110, 'PK1010', 5010, 3010);


INSERT INTO meal_details (Meal_ID, Booking_ID, Option_Code, Protein_Level, Calories_Count) VALUES
(1001, 2001, 1, 'High', 500),
(1002, 2002, 2, 'Medium', 600),
(1003, 2003, 3, 'Low', 700),
(1004, 2004, 4, 'High', 550),
(1005, 2005, 5, 'Medium', 650),
(1006, 2006, 6, 'Low', 750),
(1007, 2007, 7, 'High', 600),
(1008, 2008, 8, 'Medium', 700),
(1009, 2009, 9, 'Low', 800),
(1010, 2010, 10, 'High', 750);


INSERT INTO flight_stops (Flight_Number, Stop_Location) VALUES
(1001, 'Multan'),
(1001, 'Faisalabad'),
(1002, 'Sukkur'),
(1002, 'Hyderabad'),
(1003, 'Rawalpindi'),
(1003, 'Peshawar'),
(1004, 'Quetta'),
(1004, 'Gilgit'),
(1005, 'Skardu'),
(1005, 'Chitral');


INSERT INTO flight_crew (Flight_Number, Crew_ID) VALUES
(1001, 5001),
(1001, 5002),
(1002, 5003),
(1002, 5004),
(1003, 5005),
(1003, 5006),
(1004, 5007),
(1004, 5008),
(1005, 5009),
(1005, 5010);


ALTER TABLE crew
ADD CONSTRAINT fk_booking_id
FOREIGN KEY (Booking_ID) REFERENCES booking(BookingID);

ALTER TABLE mileage_earned
ADD CONSTRAINT fk_booking_id
FOREIGN KEY (Booking_ID) REFERENCES booking(BookingID);

ALTER TABLE booking
ADD CONSTRAINT fk_passenger_number
FOREIGN KEY (Passenger_Number) REFERENCES passenger(Passenger_Number);

ALTER TABLE booking
ADD CONSTRAINT fk_agency_code
FOREIGN KEY (Agency_Code) REFERENCES travel_agency(Agency_Code);



ALTER TABLE booking
ADD CONSTRAINT fk_crew_id
FOREIGN KEY (Crew_ID) REFERENCES crew(Crew_ID);

ALTER TABLE booking
ADD CONSTRAINT fk_mileage_id
FOREIGN KEY (Mileage_ID) REFERENCES mileage_program(Code);

ALTER TABLE kohsar_approval
ADD CONSTRAINT fk_meal_id
FOREIGN KEY (Meal_ID) REFERENCES meal_details(Meal_ID);

ALTER TABLE meal_details
ADD CONSTRAINT fk_booking_id
FOREIGN KEY (Booking_ID) REFERENCES booking(BookingID);

ALTER TABLE meal_details
ADD CONSTRAINT fk_option_code
FOREIGN KEY (Option_Code) REFERENCES menu_option(Option_Code);

ALTER TABLE flight_stops
ADD CONSTRAINT fk_flight_number
FOREIGN KEY (Flight_Number) REFERENCES flight(Flight_Number);

ALTER TABLE flight_crew
ADD CONSTRAINT fk_flight_number
FOREIGN KEY (Flight_Number) REFERENCES flight(Flight_Number);

ALTER TABLE flight_crew
ADD CONSTRAINT fk_crew_id
FOREIGN KEY (Crew_ID) REFERENCES crew(Crew_ID);

ALTER TABLE booking
ADD CONSTRAINT fk_flight_number_reference
FOREIGN KEY (Flight_Number_Reference) REFERENCES flight(Flight_Number);


-- 5 queries --

SELECT b.BookingID, b.Date, b.Seat_Number, b.Pilot_Name, p.Name AS Passenger_Name,
       f.Flight_Number, f.Origin, f.Destination, f.Day_Of_Week, f.Departure_Time, f.Arrival_Time
FROM booking b
INNER JOIN passenger p ON b.Passenger_Number = p.Passenger_Number
INNER JOIN flight f ON b.Flight_Number = f.Flight_Number;


SELECT m.Meal_ID, m.Protein_Level, m.Calories_Count, m.Option_Code, 
       b.BookingID, b.Date, b.Seat_Number, p.Name AS Passenger_Name
FROM meal_details m
LEFT JOIN booking b ON m.Booking_ID = b.BookingID
LEFT JOIN passenger p ON b.Passenger_Number = p.Passenger_Number;


SELECT b.BookingID, b.Date, b.Seat_Number, b.Pilot_Name, p.Name AS Passenger_Name,
       f.Flight_Number, f.Origin, f.Destination, f.Day_Of_Week, f.Departure_Time, f.Arrival_Time
FROM booking b
INNER JOIN passenger p ON b.Passenger_Number = p.Passenger_Number
INNER JOIN flight f ON b.Flight_Number = f.Flight_Number
WHERE b.BookingID IN (SELECT DISTINCT Booking_ID FROM meal_details);


SELECT m.Meal_ID, m.Protein_Level, m.Calories_Count, m.Option_Code, 
       b.BookingID, b.Date, b.Seat_Number, p.Name AS Passenger_Name
FROM meal_details m
LEFT JOIN booking b ON m.Booking_ID = b.BookingID
LEFT JOIN passenger p ON b.Passenger_Number = p.Passenger_Number
WHERE m.Booking_ID IN (SELECT DISTINCT BookingID FROM booking);


SELECT b.BookingID, b.Date, b.Seat_Number, p.Name AS Passenger_Name, f.Flight_Number, f.Origin, f.Destination, 
       m.Option_Code AS Meal_Option, mp.Distribution AS MileageProgram,
       SUM(me.Miles_Earned) AS Total_Miles_Earned
FROM booking b
INNER JOIN passenger p ON b.Passenger_Number = p.Passenger_Number
INNER JOIN flight f ON b.Flight_Number = f.Flight_Number
LEFT JOIN meal_details m ON b.BookingID = m.Booking_ID
LEFT JOIN mileage_program mp ON b.Mileage_ID = mp.Code
LEFT JOIN mileage_earned me ON b.BookingID = me.Booking_ID
WHERE f.Departure_Time > '12:00:00' 
  AND p.Age > 30 
  AND (m.Option_Code = 1 OR m.Option_Code = 2 OR m.Option_Code = 6) 
GROUP BY b.BookingID, b.Date, b.Seat_Number, p.Name, f.Flight_Number, f.Origin, f.Destination, m.Option_Code, mp.Distribution
ORDER BY Total_Miles_Earned DESC;
