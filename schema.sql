CREATE DATABASE IF NOT EXISTS business;
USE business;

CREATE TABLE IF NOT EXISTS customer (
	customerid INT,
	fname VARCHAR(50),
	lname VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	country VARCHAR(50),
	PRIMARY KEY (customerid)
);

CREATE TABLE IF NOT EXISTS branch (
	branchid INT,
	name VARCHAR(50),
	city VARCHAR(50),
	country VARCHAR(50),
	PRIMARY KEY (branchid)
);

CREATE TABLE IF NOT EXISTS branchcustomer (
	branchid INT NOT NULL,
	customerid INT NOT NULL,
	dateopened DATE,
	FOREIGN KEY (branchid) REFERENCES branch (branchid),
	FOREIGN KEY (customerid) REFERENCES customer (customerid),
	UNIQUE KEY branchcustomer_uk (branchid, customerid)
);

CREATE TABLE IF NOT EXISTS account (
	accountno INT,
	customerid INT NOT NULL,
	amount VARCHAR(50),
	date DATE,
	type VARCHAR(50),
	PRIMARY KEY (accountno),
	FOREIGN KEY (customerid) REFERENCES customer (customerid)
);