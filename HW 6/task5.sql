--1
SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(*)
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
GROUP BY restBill.waiter_no, restBill.bill_date
HAVING COUNT(*) >= 2;

--2
SELECT room_name, COUNT(*)
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

--3
SELECT room_name, SUM(bill_total)
FROM restRoom_management JOIN restBill ON restRoom_management.room_date = restBill.bill_date
GROUP BY room_name;

--4
SELECT hs.first_name, hs.surname, SUM(rb.bill_total)
FROM restStaff ws
JOIN restBill rb ON ws.staff_no = rb.waiter_no
JOIN restStaff hs ON ws.headwaiter = hs.staff_no
GROUP BY hs.first_name, hs.surname
ORDER BY SUM(rb.bill_total) DESC;

--5
SELECT DISTINCT cust_name
FROM restBill
GROUP BY cust_name
having AVG(bill_total) > 400;

--6
SELECT first_name, surname, COUNT(*)
FROM restStaff join restBill ON restStaff.staff_no = restBill.waiter_no
GROUP BY first_name,surname
having COUNT(bill_date) > 2
