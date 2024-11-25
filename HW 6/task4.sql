--1
SELECT DISTINCT cust_name
FROM restBill
WHERE bill_total > 450 AND waiter_no in (
SELECT waiter_no From restStaff WHERE first_name = "Charles");

--2
SELECT first_name, surname
From restStaff
WHERE staff_no = (
SELECT waiter_no from restBill WHERE bill_date = "160111" AND cust_name LIKE "Nerida %");

--3
SELECT cust_name
from restBill
WHERE bill_total in 
(SELECT MIN(bill_total) FROM restBill);

--4
SELECT first_name
FROM restStaff
WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);

--5
SELECT cust_name, first_name, surname, room_name
from restBill Inner join restStaff ON restStaff.staff_no = restBill.waiter_no
inner join restRoom_management ON restRoom_management.room_date = restBill.bill_date
WHERE bill_total in 
(SELECT MAX(bill_total) FROM restBill);
