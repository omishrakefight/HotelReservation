drop database if exists hotelReservation;

create database hotelReservation;
use hotelReservation;

CREATE TABLE Amenities (
    id INT NOT NULL AUTO_INCREMENT,
    Amenity VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE RoomType (
    id INT NOT NULL AUTO_INCREMENT,
    occupancyLimit INT NOT NULL,
    initialCost INT NOT NULL,
    bedSize VARCHAR(15),
    PRIMARY KEY (id)
);

CREATE TABLE AmenitesToRoom (
    FK_RoomType INT NOT NULL,
    FK_Amenities INT NOT NULL,
    FOREIGN KEY (FK_RoomType)
        REFERENCES RoomType (id),
    FOREIGN KEY (FK_Amenities)
        REFERENCES Amenities (id),
    PRIMARY KEY (FK_RoomType , FK_Amenities)
);

CREATE TABLE RoomInfo (
    id INT NOT NULL AUTO_INCREMENT,
    floorNumber INT NOT NULL,
    roomNumber INT NOT NULL,
    roomType INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (roomType)
        REFERENCES RoomType (id)
);

CREATE TABLE Guest (
    id INT AUTO_INCREMENT,
    DOB DATE,
    firstName VARCHAR(18) NOT NULL,
    lastName VARCHAR(18) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Customer (
    id INT AUTO_INCREMENT,
    DOB DATE,
    phone VARCHAR(15),
    email VARCHAR(100) NOT NULL,
    firstName VARCHAR(18) NOT NULL,
    lastName VARCHAR(18) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE addOns (
    id INT AUTO_INCREMENT,
    addOn VARCHAR(25) NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE reservation (
    id INT NOT NULL AUTO_INCREMENT,
    customer INT NOT NULL,
    startDate DATE,
    endDate DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (customer)
        REFERENCES customer (id)
);

CREATE TABLE addOnsToReservation (
    id INT AUTO_INCREMENT,
    dateOfPurchase DATE NOT NULL,
    timeOfPurchase varchar(15) NOT NULL,
    reservationID INT NOT NULL,
    addOnID INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (reservationID)
        REFERENCES reservation (id),
    FOREIGN KEY (addOnID)
        REFERENCES addOns (id)
);

CREATE TABLE roomsToReservation (
    reservationID INT NOT NULL,
    roomInfoID INT NOT NULL,
    FOREIGN KEY (reservationID)
        REFERENCES reservation (id),
    FOREIGN KEY (roomInfoID)
        REFERENCES RoomInfo (id),
    PRIMARY KEY (reservationID , roomInfoID)
);

CREATE TABLE cost (
    id INT NOT NULL AUTO_INCREMENT,
    reservationID INT NOT NULL,
    balance decimal(8, 2) not null,
    taxes decimal(7, 2) not null,
    FOREIGN KEY (reservationID)
        REFERENCES reservation (id),
    PRIMARY KEY (id)
);


CREATE TABLE promotions (
    id INT AUTO_INCREMENT,
    description VARCHAR(40) NOT NULL,
    percentReduction DECIMAL(3 , 2 ),
    flatReduction INT,
    PRIMARY KEY (id)
);

CREATE TABLE promotionsToReservation (
    FK_PromotionsID INT NOT NULL,
    FK_ReservationID INT NOT NULL,
    FOREIGN KEY (FK_PromotionsID)
        REFERENCES promotions (id),
    FOREIGN KEY (FK_ReservationID)
        REFERENCES reservation (id),
    PRIMARY KEY (FK_PromotionsID , FK_ReservationID)
);

CREATE TABLE headers (
    id INT AUTO_INCREMENT,
    reservationID varchar(20),
    FirstName varchar(20),
    LastName varchar(20),
    Taxes varchar(20),
    TotalCost varchar(20),
    GiveNull varchar(5),
    TableDivider varchar(5),
    Multiplier varchar(20),
    Reduction varchar(20),
    RoomNumber varchar(20),
    RoomType varchar(20),
    startDate varchar(20),
    endDate varchar(20),
    PRIMARY KEY (id)
);

create table guestToReservation (
	FK_GuestID INT NOT NULL,
    FK_ReservationID INT NOT NULL,
    FOREIGN KEY (FK_GuestID)
        REFERENCES guest (id),
    FOREIGN KEY (FK_ReservationID)
        REFERENCES reservation (id),
    PRIMARY KEY (FK_GuestID , FK_ReservationID)
)
