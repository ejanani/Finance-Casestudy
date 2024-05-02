CREATE DATABASE FINANCE

USE FINANCE

CREATE TABLE USERS(
user_Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
userName VARCHAR(50),
password VARCHAR(50),
email VARCHAR(100) UNIQUE
)


CREATE TABLE ExpenseCategories (
category_id INT PRIMARY KEY IDENTITY(100,1) NOT NULL,
category_name VARCHAR(50)
)

CREATE TABLE Expenses (
expense_id INT PRIMARY KEY IDENTITY(50,1) NOT NULL,
user_id INT,
amount DECIMAL(10, 2),
category_id INT,
date DATE,
description VARCHAR(255),
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (category_id) REFERENCES ExpenseCategories(category_id)
)

INSERT INTO Users VALUES
('John Smith', 'jo67yut', 'john@curi.com'),
('Raya David', 'rt56hf', 'yara@fmdf.com'),
('Arjun Kumar', 'ar54tg', 'arjun@kila.com')

SELECT * FROM Users

INSERT INTO ExpenseCategories VALUES
( 'Groceries'),
( 'Entertainment'),
( 'Transportation')

SELECT * FROM ExpenseCategories

INSERT INTO Expenses VALUES
( 1, 500, 100, '2023-05-01', 'Weekly grocery shopping'),
( 2, 250, 101, '2022-05-02', 'Movie tickets'),
( 3, 300, 102, '2021-05-03', 'Taxi fare')

SELECT * FROM Expenses