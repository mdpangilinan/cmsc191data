CREATE DATABASE IF NOT EXISTS business;
USE business;

CREATE TABLE IF NOT EXISTS customer (
	customerid INT, /*NUMBER ASSIGNED*/
	fname VARCHAR(50),
	lname VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	country VARCHAR(50),
	PRIMARY KEY (customerid)
)DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS branch (
	branchid INT, /*NUMBER ASSIGNED*/
	name VARCHAR(255),
	city VARCHAR(100),
	country VARCHAR(50),
	PRIMARY KEY (branchid)
)DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS branchcustomer (
	branchid INT NOT NULL, /*NUMBER ASSIGNED*/
	customerid INT NOT NULL, /*0-200K*/
	dateopened DATE,
	FOREIGN KEY (branchid) REFERENCES branch (branchid),
	FOREIGN KEY (customerid) REFERENCES customer (customerid),
	UNIQUE KEY branchcustomer_uk (branchid, customerid)
);

CREATE TABLE IF NOT EXISTS account (
	accountno INT, /*NUMBER ASSIGNED*/
	customerid INT NOT NULL, /*0-200K*/
	amount VARCHAR(50),
	date DATE,
	type VARCHAR(50),
	PRIMARY KEY (accountno),
	FOREIGN KEY (customerid) REFERENCES customer (customerid)
);
