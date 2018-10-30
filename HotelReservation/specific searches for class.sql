use hotelReservation;

--  Find a single reservation and its costs.
select reservation.ID, firstName, lastName, startDate, endDate, dateOfPurchase, TimeOfPurchase, addOn, price  from reservation
inner join customer on customer.id = reservation.customer
inner join addOnsToReservation on addOnsToReservation.reservationID = reservation.id
inner join addons on addons.ID = addonstoreservation.addOnID
inner join roomsToReservation on roomsToReservation.reservationID = reservation.id
where reservation.id = 5
	UNION
select TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, TableDivider from headers
	UNION
select reservationID, FirstName, lastName, startDate, endDate, roomNumber, roomType, null, totalCost from headers  #working here need to match columns
	UNION
select reservation.ID, firstName, lastName, startDate, endDate, roomNumber, roomType, null, initialCost  from roomsToReservation
inner join roomInfo on  roomsToReservation.RoomInfoID = roomInfo.Id
inner join roomType on roomtype.id = roomInfo.roomType
inner join reservation on reservation.id = roomsToReservation.ReservationID
inner join customer on customer.id = reservation.customer
where reservation.id = 5
	UNION
select TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, TableDivider, null from headers
	UNION
select reservationID, FirstName, LastName, GiveNull, GiveNull, Multiplier, Reduction, Taxes, TotalCost from headers  #working here need to match columns
	UNION
    #update. this needs to be linked.
select reservation.ID, 'Promotion', description, null, null, percentReduction, flatReduction, null, null from promotions
inner join promotionsToReservation on promotions.id = promotionsToReservation.FK_PromotionsID
inner join reservation on reservation.ID = promotionsToReservation.FK_ReservationID
where reservation.id = 5
	UNION
select reservation.ID, firstName, lastName, null, null, null, null, Taxes,  balance  from reservation
inner join customer on customer.id = reservation.customer
inner join cost on cost.reservationID = reservation.id
where reservation.id = 5;


#Query to search for quests assosciated with a reservation
select reservation.Id as ReservationNumber, guest.firstName, guest.LastName from guest
inner join guestToReservation on guestToReservation.FK_GuestID = guest.id
inner join reservation on reservation.id = guestToReservation.FK_ReservationID
where reservation.id = 11
Union
select reservation.Id as ReservationNumber, firstName, LastName from customer
inner join reservation on reservation.customer = customer.id
where reservation.id = 11;

#Write a query that returns rooms that do not contain a specific amenity
select * from roominfo
inner join roomType on roomType.id = roominfo.roomType
inner join AmenitesToRoom on FK_roomType = roomType.id
right outer join Amenities on Amenities.id = AmenitesToRoom.FK_Amenities
where roomInfo.roomNumber = 101;

#select * from amenities
#right join AmenitesToRoom on AmenitesToRoom.FK_Amenities = amenities.id
#inner join roomType on FK_roomType = roomType.id
#inner join roomInfo on roomType.id = roominfo.roomType;


#Write a query that returns a list of promotion codes, and the number of times used.
select description, percentReduction, flatReduction, FK_PromotionsID, FK_ReservationID, count(FK_PromotionsID) from promotions
Left join promotionsToReservation on promotionsToReservation.FK_PromotionsID = promotions.id
group by description;


#Write a query that returns all the rooms reserved for a particular customer
select reservation.ID as reservation, firstName, lastName, roomNumber from reservation  # also roomNumber
inner join customer on customer.id = reservation.customer
inner join roomsToReservation on roomsToReservation.reservationID = reservation.id
inner join roomInfo on roomInfo.id = roomsToReservation.roomInfoID

where firstName = 'Laurence';


#Write a query that returns a list of reservations that end tomorrow?
select reservation.ID, startDate, endDate, firstName, lastName from reservation
inner join customer on customer.id = reservation.customer
where endDate = '2018-04-14';
#not sure how to make this a passed in variable yet, but can do with changing date manually

select * from headers