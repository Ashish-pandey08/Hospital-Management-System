queries.sql:
Retrieve all patients' information along with their assigned doctors' names and specializations:
SELECT p.pid, p.name AS patient_name, p.address AS patient_address, d.dname AS doctor_name, d.d_sp AS doctor_specialization
FROM patient p
INNER JOIN doctor d ON p.pid = d.pid;

2.Retrieve the total number of records for each patient:
SELECT pid, COUNT(*) AS total_records
FROM records
GROUP BY pid;


3.Retrieve all medicines prescribed for a specific patient:
SELECT m.mid, m.mname AS medicine_name, m.quantity, p.name AS patient_name
FROM medicines m
INNER JOIN patient p ON m.pid = p.pid
WHERE p.name = 'Patient Name';

4.Retrieve the rooms occupied by patients along with the names of assigned nurses:
SELECT r.pid, r.RoNo AS room_number, r.RType AS room_type, n.nname AS nurse_name
FROM rooms r
INNER JOIN nurse n ON r.eid = n.eid;

5.Retrieve the receptionist's name for a specific employee:
SELECT r.rname AS receptionist_name
FROM receptionist r
WHERE r.eid = 'Employee ID';

