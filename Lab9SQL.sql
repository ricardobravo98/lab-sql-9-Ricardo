USE Sakila;

SELECT * from rental limit 5;

#create table for may
CREATE TABLE Rentals_may like rental;

INSERT INTO Rentals_may (Select * from rental 
where return_date like "2005-05%");

Select * from Rentals_may;

#create table for june

CREATE TABLE Rentals_june like rental;

INSERT INTO Rentals_june (Select * from rental 
where return_date like "2005-06%");

Select * from Rentals_june;

#counting the number of values in may & june
Select customer_id, Count(rental_id) from Rentals_may
group by customer_id order by Count(rental_id)  DESC;

#counting the number of values in may & june
Select customer_id, Count(rental_id) from Rentals_june
group by customer_id order by Count(rental_id)  DESC;




