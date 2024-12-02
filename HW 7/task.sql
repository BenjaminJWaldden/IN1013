
--1;
CREATE View samsBills
AS SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restStaff inner join restBill ON restStaff.staff_no = restBill.waiter_no
where first_name = "Sam" AND surname= "Pitt";

--2;
SELECT * FROM samsBills WHERE bill_total> 400;

--3;
CREATE View roomTotals
AS SELECT room_name, SUM(bill_total) AS total_sum
FROM restRoom_management join restBill ON restRoom_management.room_date = restBill.bill_date
GROUP BY room_name;

--4;
CREATE View teamTotals
AS SELECT CONCAT(first_name, ' ', surname) AS headwaiter_name, SUM(bill_total) AS total_sum
FROM restStaff inner join restBill ON restStaff.staff_no = restBill.waiter_no 
GROUP BY headwaiter_name;