insert_data.sql:
-- SQL script to insert sample data into tables

-- Insert data into employee table
INSERT INTO employee VALUES ('E001','Apratim','Hoogly',12345,'DC',10000);
INSERT INTO employee VALUES ('E002','Sagar','Mumbai',12346,'RP',10050);
INSERT INTO employee VALUES ('E003','Rohit','Pune',12347,'NS',10200);
INSERT INTO employee VALUES ('E004','Ashish','Kalyan',12348,'DC',20000);
INSERT INTO employee VALUES ('E005','Prathamesh','Dadar',12349,'NS',18000);
INSERT INTO employee VALUES ('E006','Deepak','Thane',12350,'RP',18000);
INSERT INTO employee VALUES ('E007','Sajid','Mumbai',12351,'NS',19000);

-- Insert data into patient table
INSERT INTO patient VALUES ('P001','E001','Raj','Hoogly',145,'2018-02-01','2018-03-01');
INSERT INTO patient VALUES ('P002','E001','Abc','Mumbai',146,'2018-03-01','2018-04-01');
INSERT INTO patient VALUES ('P003','E006','pqr','Pune',147,'2018-04-01','2018-05-01');
INSERT INTO patient VALUES ('P004','E001','SRD','Baroda',148,'2018-05-01','2018-06-01');
INSERT INTO patient VALUES ('P005','E006','BRD','Dadar',149,'2018-06-01','2018-07-01');

-- Insert data into doctor table
INSERT INTO doctor VALUES ('P001','E001','AB','MBBS');
INSERT INTO doctor VALUES ('P002','E001','ER','MBBS');
INSERT INTO doctor VALUES ('P003','E006','HY','MBBS');
INSERT INTO doctor VALUES ('P004','E001','FR','MD');
INSERT INTO doctor VALUES ('P005','E006','UT','MD');
-- Insert data into nurse table
INSERT INTO nurse VALUES ('E003','P001','Soumik');
INSERT INTO nurse VALUES ('E005','P002','Sovik');
INSERT INTO nurse VALUES ('E003','P003','Soumik');
INSERT INTO nurse VALUES ('E007','P003','Debalina');
INSERT INTO nurse VALUES ('E003','P004','Mani');
INSERT INTO nurse VALUES ('E005','P005','Sovik');
-- Insert data into records table
INSERT INTO records VALUES ('R001','P001','E001','DC','Medication');
INSERT INTO records VALUES ('R002','P001','E003','NS','Care');
INSERT INTO records VALUES ('R003','P001','E005','NS','Care');
INSERT INTO records VALUES ('R004','P002','E006','RC','Operation');
INSERT INTO records VALUES ('R005','P002','E003','NS','Care');
-- Insert data into rooms table
INSERT INTO rooms VALUES ('Re001',100,'ICU','P001','E001','DC');
INSERT INTO rooms VALUES ('Re002',100,'ICU','P001','E003','NS');
INSERT INTO rooms VALUES ('Re003',100,'ICU','P002','E006','RC');
INSERT INTO rooms VALUES ('Re004',100,'ICU','P002','E007','NS');
INSERT INTO rooms VALUES ('Re005',104,'General','P003','E001','DC');
-- Insert data into receptionist table
INSERT INTO receptionist VALUES ('E001','Ashish');
INSERT INTO receptionist VALUES ('E002','Ashish');
INSERT INTO receptionist VALUES ('E004','Pratham');
-- Insert data into medicines table
INSERT INTO medicines VALUES ('M1','P001',3,'para');
INSERT INTO medicines VALUES ('M2','P002',4,'crocin');
INSERT INTO medicines VALUES ('M3','P003',2,'avin');
INSERT INTO medicines VALUES ('M4','P005',7,'rcd');
INSERT INTO medicines VALUES ('M5','P003',1,'tc');
