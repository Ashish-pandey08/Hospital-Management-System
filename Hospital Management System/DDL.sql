create_tables.sql:

-- SQL script to create tables for Hospital Management System

-- Employee table
CREATE TABLE employee (
    eid VARCHAR(5) PRIMARY KEY,
    ename VARCHAR(10),
    eaddress VARCHAR(10),
    ecno NUMERIC(10),
    ejob VARCHAR(10),
    esal NUMERIC(6)
);

-- Patient table
CREATE TABLE patient (
    pid VARCHAR(5) PRIMARY KEY,
    eid VARCHAR(5) REFERENCES employee(eid),
    name VARCHAR(10),
    address VARCHAR(10),
    cno NUMERIC(10),
    d_o_ad DATE,
    d_o_dis DATE
);

-- Doctor table
CREATE TABLE doctor (
    pid VARCHAR(5) REFERENCES patient(pid),
    eid VARCHAR(5) REFERENCES employee(eid),
    dname VARCHAR(10),
    d_sp VARCHAR(10)
);
Nurse table:

CREATE TABLE nurse (
    eid VARCHAR(5) REFERENCES employee(eid),
    pid VARCHAR(5) REFERENCES patient(pid),
    nname VARCHAR(10)
); 
Records table:
CREATE TABLE records (
    RNo VARCHAR(5) PRIMARY KEY,
    pid VARCHAR(5) REFERENCES patient(pid),
    eid VARCHAR(5) REFERENCES employee(eid),
    etype VARCHAR(8),
    Rdetails VARCHAR(10)
);
Rooms table:
CREATE TABLE rooms (
    ReID VARCHAR(5) PRIMARY KEY,
    RoNo NUMERIC(3),
    RType VARCHAR(8),
    pid VARCHAR(5) REFERENCES patient(pid),
    eid VARCHAR(5) REFERENCES employee(eid),
    etype VARCHAR(10)
);
Receptionist table:
CREATE TABLE receptionist (
    eid VARCHAR(5) REFERENCES employee(eid),
    rname VARCHAR(10)
);
Medicines table:
CREATE TABLE medicines (
    mid VARCHAR(5) PRIMARY KEY,
    pid VARCHAR(5) REFERENCES patient(pid),
    quantity NUMERIC(4),
    mname VARCHAR(10)
);
