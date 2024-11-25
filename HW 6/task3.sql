--1
SELECT first_name
FROM restStaff Inner join restBill ON restStaff.staff_no = restBill.waiter_no
WHERE cust_name = "Tanya Singh";

--2
SELECT room_date
FROM restStaff Inner join restRoom_management ON restStaff.staff_no=restRoom_management.headwaiter
WHERE room_date LIKE "1602%" AND first_name = "Charles";

--3
SELECT first_name, surname
FROM restStaff
WHERE headwaiter = "005";

--4
SELECT cust_name, bill_total, first_name, surname
FROM restBill Inner join restStaff ON restBill.waiter_no = restStaff.staff_no
order by bill_total desc;

--5
SELECT first_name, surname
FROM restStaff Inner join restBill ON restStaff.staff_no = restBill.waiter_no
where bill_no = "00014" OR bill_no = "00017";
 
--6
SELECT first_name, surname
FROM restStaff Inner join restRoom_management ON restStaff.staff_no=restRoom_management.headwaiter
where (restRoom_management.room_date = "160312" AND restRoom_management.room_name = "Blue") 
union
SELECT first_name, surname
FROM restStaff 
where restStaff.headwaiter = ( SELECT restStaff.headwaiter FROM restRoom_management where restRoom_management.room_date = "160312" AND restRoom_management.room_name = "Blue")
    
