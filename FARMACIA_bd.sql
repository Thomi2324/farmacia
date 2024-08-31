-- Crear base de datos con MySQL
CREATE DATABASE Farmacia;

CREATE TABLE "Pharmacy" (
	"Pharmacy_id "	INTEGER,
	"Pharmacy_name"	TEXT NOT NULL,
	"Pharmacy_address"	NUMERIC NOT NULL,
	"Pharmacy_phone"	NUMERIC NOT NULL,
	PRIMARY KEY("Pharmacy_id " AUTOINCREMENT)
);

CREATE TABLE "Pharmacist" (
	"Pharmacist_id"	INTEGER,
	"Pharmacist_name"	TEXT NOT NULL,
	"Pharmacist_studies"	TEXT NOT NULL,
	"Pharmacist_graduation_day"	NUMERIC NOT NULL,
	PRIMARY KEY("Pharmacist_id" AUTOINCREMENT)
);

CREATE TABLE "Customer" (
	"Customer_id"	INTEGER,
	"Customer_name"	TEXT NOT NULL,
	"Customer_phone"	NUMERIC NOT NULL,
	"Customer_email"	TEXT NOT NULL,
	PRIMARY KEY("Customer_id" AUTOINCREMENT)
);

CREATE TABLE "Medicine" (
	"Medicine_id"	INTEGER,
	"Medicine_name"	TEXT NOT NULL,
	"Medicine_price"	NUMERIC NOT NULL,
	PRIMARY KEY("Medicine_id" AUTOINCREMENT)
);

CREATE TABLE "Medical formula" (
	"Medicalformula_id"	INTEGER,
	"Medicalformula_date"	NUMERIC NOT NULL,
	"Medicalformula_custumer_id"	TEXT NOT NULL,
	"Medicalformula_pharmacy_id"	TEXT NOT NULL,
	PRIMARY KEY("Medicalformula_id" AUTOINCREMENT)
	FOREIGN KEY (Medicalformula_id) REFERENCES Customer (Customer_id)
	FOREIGN KEY (Medicalformula_id) REFERENCES Pharmacist (Pharmacist_id)
);

CREATE TABLE "Sale" (
	"Sale_id"	INTEGER,
	"Sale_date"	NUMERIC NOT NULL,
	"Sale_pharmacy_id"	TEXT NOT NULL,
	"Sale_customer_id"	TEXT NOT NULL,
	"Sale_total"	NUMERIC NOT NULL,
	PRIMARY KEY("Sale_id" AUTOINCREMENT)
	FOREIGN KEY (Sale_id) REFERENCES Pharmacist (Pharmacist_id)
	FOREIGN KEY (Sale_id) REFERENCES Customer (Customer_id)
);