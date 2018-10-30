use hotelReservation;

-- -----------------------------
--    POPULATE AMENITIES
-- -----------------------------
insert into Amenities (Amenity)
Values ('Bathroom'),
		('Refridgerator'),
        ('Stove'),
        ('altar');
        
-- -----------------------------
--    POPULATE Room Type
-- -----------------------------
insert into RoomType (occupancyLimit, initialCost, bedSize)
Values (1, 50, 'twin'),
		(2, 75, 'king'),
        (2, 95, 'twin'),
        (4, 110, 'king'),
        (2, 300, null);
        
-- -----------------------------
--    POPULATE Amenities to room
-- -----------------------------
insert into AmenitesToRoom(FK_RoomType, FK_Amenities)
Values 
(1, 1),	(1, 2),  
(2, 1),	(2, 2),  
(3, 1),	(3, 2), (3, 3),
(4, 1),	(4, 2), (4, 3),
(5, 4);


-- -----------------------------
--    POPULATE addOns
-- -----------------------------
insert into addOns (addOn, price)
Values  ('Wine', 20.00),
		('Candles', 10.00),
        ('Wifi', 5.00),
        ('Midnight Sacrifice', 100.00);

-- -----------------------------
--    POPULATE RoomInfo
-- -----------------------------
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 102, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 103, 3);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 105, 1);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 104, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 101, 4);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 145, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (6, 690, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (2, 394, 3);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 507, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 218, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (3, 419, 1);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (4, 583, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 645, 3);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 284, 1);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (3, 417, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 274, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (4, 183, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 388, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (3, 495, 4);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (2, 185, 3);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 652, 3);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 166, 1);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (4, 685, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (2, 377, 3);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (2, 144, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 356, 4);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (4, 242, 4);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (1, 217, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (3, 480, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (3, 501, 1);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 288, 2);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (4, 336, 1);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (5, 346, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (4, 106, 5);
insert into RoomInfo (floorNumber, roomNumber, roomType) values (4, 325, 2);        

-- -----------------------------
--    POPULATE Customer List
-- -----------------------------
insert into Customer (DOB, firstName, lastName, phone, email) values ('1995-05-27', 'Hildegarde', 'Wailes', '857-911-7591', 'hwailes0@g.co');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1968-08-12', 'Kassey', 'Lewtey', '964-934-1733', 'klewtey1@amazonaws.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1994-11-27', 'Graehme', 'De Mattei', '707-117-3297', 'gdemattei2@etsy.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1997-03-30', 'Edgard', 'Pallin', '963-544-9808', 'epallin3@booking.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1975-02-04', 'Phineas', 'Gove', '637-808-2909', 'pgove4@columbia.edu');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1986-11-19', 'Euphemia', 'Gosenell', '340-576-1818', 'egosenell5@unesco.org');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1959-01-04', 'Dan', 'Kibby', '120-212-1685', 'dkibby6@prweb.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1974-10-28', 'Hubey', 'Pudner', '295-351-4684', 'hpudner7@livejournal.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1960-12-29', 'Tailor', 'Bracknall', '512-116-9229', 'tbracknall8@usnews.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1998-05-18', 'Valencia', 'Laybourne', '814-169-4915', 'vlaybourne9@imdb.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1986-02-07', 'Kim', 'Albert', '963-314-4215', 'kalberta@ustream.tv');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1971-04-08', 'Marybeth', 'Haslock(e)', '852-433-9484', 'mhaslockeb@godaddy.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1963-12-23', 'Isidoro', 'Shucksmith', '389-800-1458', 'ishucksmithc@ebay.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1993-06-06', 'Lulu', 'Khristoforov', '109-625-2523', 'lkhristoforovd@domainmarket.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1960-02-03', 'Pepita', 'Dow', '300-345-7032', 'pdowe@slate.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1975-05-20', 'Carly', 'Gallop', '924-129-3411', 'cgallopf@globo.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1952-07-20', 'Kaye', 'Tolerton', '735-200-3606', 'ktolertong@netlog.com');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1982-07-09', 'Maddy', 'Spradbrow', '898-850-3438', 'mspradbrowh@icio.us');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1971-04-21', 'Rufe', 'Goreway', '161-523-2175', 'rgorewayi@ebay.co.uk');
insert into Customer (DOB, firstName, lastName, phone, email) values ('1992-10-04', 'Laurence', 'Wellfare', '678-208-1088', 'lwellfarej@weebly.com');
-- -----------------------------
--    POPULATE Guest List
-- -----------------------------
insert into Guest (DOB, firstName, lastName) values ('2013-11-24', 'Jami', 'Stroban');
insert into Guest (DOB, firstName, lastName) values ('1964-06-13', 'Winny', 'Roskams');
insert into Guest (DOB, firstName, lastName) values ('1953-10-24', 'Cristina', 'Hackin');
insert into Guest (DOB, firstName, lastName) values ('1958-12-31', 'Caprice', 'Lowth');
insert into Guest (DOB, firstName, lastName) values ('1975-12-07', 'Karrie', 'Banbrick');
insert into Guest (DOB, firstName, lastName) values ('2004-12-06', 'Dora', 'Chandlar');
insert into Guest (DOB, firstName, lastName) values ('2003-07-02', 'Kyle', 'Cantu');
insert into Guest (DOB, firstName, lastName) values ('1955-09-20', 'Fan', 'Kinny');
insert into Guest (DOB, firstName, lastName) values ('1967-05-07', 'Cos', 'Point');
insert into Guest (DOB, firstName, lastName) values ('1963-08-21', 'Lois', 'Briamo');
insert into Guest (DOB, firstName, lastName) values ('1988-05-02', 'Wanda', 'Wardingly');
insert into Guest (DOB, firstName, lastName) values ('1970-09-19', 'Olly', 'Harrismith');
insert into Guest (DOB, firstName, lastName) values ('1963-07-25', 'Clyve', 'Ledbetter');
insert into Guest (DOB, firstName, lastName) values ('1998-05-16', 'Arlyn', 'Kelson');
insert into Guest (DOB, firstName, lastName) values ('2008-07-02', 'Leonie', 'Kyles');
insert into Guest (DOB, firstName, lastName) values ('1989-11-28', 'Morena', 'Edlyne');
insert into Guest (DOB, firstName, lastName) values ('2013-10-15', 'Inger', 'Braybrooks');
insert into Guest (DOB, firstName, lastName) values ('2017-07-08', 'Clementius', 'Hanscome');
insert into Guest (DOB, firstName, lastName) values ('2003-11-12', 'Ignazio', 'Ciccarello');
insert into Guest (DOB, firstName, lastName) values ('1979-05-08', 'Kimmie', 'Heggadon');
insert into Guest (DOB, firstName, lastName) values ('1953-03-16', 'Tammie', 'Goodliff');
insert into Guest (DOB, firstName, lastName) values ('1956-12-03', 'Georgine', 'Rubie');
insert into Guest (DOB, firstName, lastName) values ('1971-08-23', 'Clarice', 'Bindon');
insert into Guest (DOB, firstName, lastName) values ('1990-07-02', 'Pru', 'McBayne');
insert into Guest (DOB, firstName, lastName) values ('1981-04-08', 'Lyn', 'Verrico');
-- -----------------------------
--    POPULATE Reservations
-- -----------------------------
insert into reservation (customer, startDate, endDate)
values  (1, '2018-04-08', '2018-04-14'),
		(2, '2018-04-09', '2018-04-14'),
        (3, '2018-05-09', '2018-05-15'),
        (4, '2018-02-09', '2018-03-15'),
        (5, '2018-06-09', '2018-06-15'),
        (7, '2018-07-09', '2018-07-15'),
        (8, '2018-08-09', '2018-08-15'),
        (9, '2018-09-09', '2018-09-15'),
        (10, '2018-10-09', '2018-10-15'),
        (11, '2018-11-09', '2018-11-15'),
        (12, '2018-12-09', '2018-12-15'),
        (14, '2018-02-20', '2018-02-25'),
        (15, '2018-03-20', '2018-03-25'),
        (16, '2018-04-20', '2018-04-25'),
        (17, '2018-05-20', '2018-05-25'),
        (18, '2018-06-20', '2018-06-25'),
        (19, '2018-07-20', '2018-07-25'),
        (20, '2019-02-16', '2019-02-18'),
        (20, '2019-02-10', '2019-02-15'),
        (6, '2019-02-20', '2019-02-25');

-- -----------------------------
--    POPULATE bought add ons for reservations
-- -----------------------------
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (5, 3, '2018-06-29', '4:06:08');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (1, 1, '2018-04-27', '15:32:54');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (12, 2, '2018-03-12', '1:07:03');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (17, 4, '2018-03-04', '17:31:08');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (5, 3, '2018-08-04', '16:41:24');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (11, 1, '2018-08-14', '6:34:51');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (12, 3, '2018-01-15', '12:14:47');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (15, 4, '2018-09-17', '9:03:47');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (12, 3, '2018-08-18', '3:19:33');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (8, 1, '2018-05-14', '23:41:48');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (20, 3, '2018-07-06', '10:35:07');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (8, 2, '2017-12-10', '7:14:10');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (15, 1, '2018-06-08', '22:45:54');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (11, 1, '2018-04-09', '15:17:43');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (1, 4, '2018-03-25', '7:01:48');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (4, 1, '2018-03-20', '2:04:08');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (7, 2, '2018-06-26', '2:18:43');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (14, 3, '2017-12-04', '8:40:12');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (12, 2, '2017-11-21', '4:59:08');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (20, 2, '2017-11-04', '4:33:05');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (15, 2, '2018-04-26', '20:30:05');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (10, 3, '2018-08-05', '12:59:33');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (15, 3, '2017-11-03', '20:34:57');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (5, 1, '2018-03-04', '21:47:55');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (19, 3, '2018-05-27', '17:53:19');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (18, 3, '2018-04-03', '22:11:27');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (8, 4, '2018-04-14', '6:04:02');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (7, 2, '2018-02-02', '23:52:20');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (6, 1, '2018-04-03', '18:37:16');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (6, 2, '2018-09-22', '18:28:46');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (14, 4, '2018-05-20', '0:24:50');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (1, 1, '2017-12-11', '11:30:28');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (3, 3, '2017-12-12', '23:11:03');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (14, 2, '2017-12-21', '2:48:05');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (2, 3, '2017-12-16', '21:42:03');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (18, 1, '2018-01-04', '11:46:59');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (2, 3, '2018-07-20', '14:03:30');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (15, 2, '2017-10-22', '10:21:40');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (1, 4, '2018-03-15', '4:06:56');
insert into addOnsToReservation (reservationID, addOnID, dateOfPurchase, timeOfPurchase) values (12, 1, '2018-03-09', '17:59:21');

-- -----------------------------
--    POPULATE rooms to reservation
-- -----------------------------
insert into roomsToReservation (ReservationID, RoomInfoID) values (1, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (1, 1);
insert into roomsToReservation (ReservationID, RoomInfoID) values (7, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (15, 1);
insert into roomsToReservation (ReservationID, RoomInfoID) values (3, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (6, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (19, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (10, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (20, 1);
insert into roomsToReservation (ReservationID, RoomInfoID) values (8, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (13, 4);
insert into roomsToReservation (ReservationID, RoomInfoID) values (8, 1);
insert into roomsToReservation (ReservationID, RoomInfoID) values (10, 4);
insert into roomsToReservation (ReservationID, RoomInfoID) values (5, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (7, 1);
insert into roomsToReservation (ReservationID, RoomInfoID) values (5, 2);
insert into roomsToReservation (ReservationID, RoomInfoID) values (16, 4);
insert into roomsToReservation (ReservationID, RoomInfoID) values (8, 2);
insert into roomsToReservation (ReservationID, RoomInfoID) values (18, 4);
insert into roomsToReservation (ReservationID, RoomInfoID) values (18, 1);
insert into roomsToReservation (ReservationID, RoomInfoID) values (14, 2);
insert into roomsToReservation (ReservationID, RoomInfoID) values (2, 1);
insert into roomsToReservation (ReservationID, RoomInfoID) values (12, 4);
insert into roomsToReservation (ReservationID, RoomInfoID) values (13, 5);
insert into roomsToReservation (ReservationID, RoomInfoID) values (4, 1);

-- -----------------------------
--    POPULATE promotions
-- -----------------------------
insert into promotions (description, percentReduction, flatReduction)
Values  ('First time visit.', .50, null),
		('Returning customer', null, -1),
        ('Weekend stay', 1.1, null),
        ('Bribed the receptionist with tacos', null, -20),
        ('Blackmailed the Owner', .00, null);

-- -----------------------------
--    POPULATE promotions to reservations
-- -----------------------------
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (4, 19);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (4, 6);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (2, 5);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (2, 19);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (3, 19);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (1, 7);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (3, 13);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (2, 3);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (4, 16);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (3, 7);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (1, 2);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (3, 1);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (2, 15);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (3, 14);
insert into promotionsToReservation (FK_PromotionsID, FK_ReservationID) values (1, 6);

-- -----------------------------
--    POPULATE costs to reservations
-- -----------------------------
insert into cost (reservationID, taxes, balance) values (1, 838.98, 3518.63);
insert into cost (reservationID, taxes, balance) values (2, 587.41, 5112.67);
insert into cost (reservationID, taxes, balance) values (3, 351.62, 4115.05);
insert into cost (reservationID, taxes, balance) values (4, 786.85, 9912.11);
insert into cost (reservationID, taxes, balance) values (5, 75.41, 4176.69);
insert into cost (reservationID, taxes, balance) values (6, 351.59, 8488.24);
insert into cost (reservationID, taxes, balance) values (7, 21.22, 9011.91);
insert into cost (reservationID, taxes, balance) values (8, 752.94, 3010.51);
insert into cost (reservationID, taxes, balance) values (9, 495.45, 6323.71);
insert into cost (reservationID, taxes, balance) values (10, 694.42, 342.82);
insert into cost (reservationID, taxes, balance) values (11, 52.41, 6000.06);
insert into cost (reservationID, taxes, balance) values (12, 495.24, 8428.61);
insert into cost (reservationID, taxes, balance) values (13, 585.31, 9007.24);
insert into cost (reservationID, taxes, balance) values (14, 944.69, 4300.73);
insert into cost (reservationID, taxes, balance) values (15, 22.31, 4725.2);
insert into cost (reservationID, taxes, balance) values (16, 857.24, 4155.31);
insert into cost (reservationID, taxes, balance) values (17, 918.53, 3282.54);
insert into cost (reservationID, taxes, balance) values (18, 596.1, 6506.63);
insert into cost (reservationID, taxes, balance) values (19, 580.82, 8928.58);
insert into cost (reservationID, taxes, balance) values (20, 66.83, 2796.51);
-- -----------------------------
--    POPULATE Headers
-- -----------------------------
insert into headers (reservationID, FirstName, LastName, Taxes, TotalCost, GiveNull, TableDivider, Multiplier, Reduction, RoomNumber, RoomType, startDate, endDate)
values ('reservationID', 'First Name', 'Last Name', 'Taxes', 'Total Cost', null, '---', 'Multiplier', 'Reduction', 'RoomNumber', 'RoomType', 'startDate', 'endDate');

-- -----------------------------
--    POPULATE Guests to Reservations
-- -----------------------------
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (6, 3);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (10, 1);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (2, 6);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (4, 3);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (15, 10);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (1, 2);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (9, 12);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (18, 5);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (19, 19);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (14, 16);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (11, 12);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (19, 6);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (5, 17);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (2, 20);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (9, 8);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (9, 11);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (11, 5);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (23, 6);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (24, 16);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (23, 11);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (9, 17);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (13, 10);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (7, 15);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (17, 5);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (13, 2);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (5, 15);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (17, 2);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (12, 1);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (13, 14);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (8, 9);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (6, 7);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (3, 1);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (3, 11);
insert into guestToReservation (FK_GuestID, FK_ReservationID) values (13, 15);
