-- Database: sreenath

-- DROP DATABASE IF EXISTS sreenath;

CREATE TABLE customers (
  sno SERIAL PRIMARY KEY,
  customer_name VARCHAR(255),
  age INT,
  phone VARCHAR(20),
  location VARCHAR(255),
  created_at TIMESTAMP
);

	
INSERT INTO customers (customer_name, age, phone, location, created_at) VALUES
('John Doe', 30, '123-456-7890', 'New York', '2024-02-01 08:00:00'),
('Jane Smith', 25, '987-654-3210', 'Los Angeles', '2024-02-02 08:15:00'),
('Michael Johnson', 40, '555-123-4567', 'Chicago', '2024-02-03 08:30:00'),
('Sarah Williams', 35, '333-999-8888', 'Houston', '2024-02-04 08:45:00'),
('David Brown', 28, '777-222-3333', 'Miami', '2024-02-05 09:00:00'),
('Lisa Davis', 45, '111-777-9999', 'Atlanta', '2024-02-06 09:15:00'),
('Robert Wilson', 32, '444-888-2222', 'Seattle', '2024-02-07 09:30:00'),
('Emily Moore', 29, '666-444-1111', 'Denver', '2024-02-08 09:45:00'),
('Daniel Taylor', 50, '222-555-7777', 'Boston', '2024-02-09 10:00:00'),
('Jennifer Anderson', 38, '999-333-5555', 'San Francisco', '2024-02-10 10:15:00'),
('James Martinez', 27, '888-111-6666', 'Dallas', '2024-02-11 10:30:00'),
('Amanda Hernandez', 42, '444-222-8888', 'Phoenix', '2024-02-12 10:45:00'),
('Matthew Gonzalez', 31, '777-444-3333', 'Philadelphia', '2024-02-13 11:00:00'),
('Olivia Wilson', 36, '666-333-9999', 'Detroit', '2024-02-14 11:15:00'),
('Ethan Anderson', 26, '555-888-1111', 'Minneapolis', '2024-02-15 11:30:00'),
('Sophia Thomas', 39, '333-666-2222', 'Portland', '2024-02-16 11:45:00'),
('Alexander Lee', 33, '222-777-4444', 'Las Vegas', '2024-02-17 12:00:00'),
('Mia Perez', 47, '888-333-5555', 'Orlando', '2024-02-18 12:15:00'),
('Benjamin Moore', 34, '777-555-2222', 'Austin', '2024-02-19 12:30:00'),
('Harper Garcia', 41, '666-222-8888', 'Nashville', '2024-02-20 12:45:00'),
('Samuel Rodriguez', 28, '555-999-3333', 'Charlotte', '2024-02-21 13:00:00'),
('Evelyn Lewis', 37, '333-888-7777', 'Indianapolis', '2024-02-22 13:15:00'),
('Dylan Walker', 49, '222-666-4444', 'San Diego', '2024-02-23 13:30:00'),
('Victoria Hall', 30, '999-222-5555', 'Tampa', '2024-02-24 13:45:00'),
('Julian Young', 25, '888-666-3333', 'Pittsburgh', '2024-02-25 14:00:00'),
('Claire Scott', 40, '777-333-4444', 'Sacramento', '2024-02-26 14:15:00'),
('Wyatt King', 35, '666-999-2222', 'Salt Lake City', '2024-02-27 14:30:00'),
('Hazel Hill', 32, '555-444-7777', 'Honolulu', '2024-02-28 14:45:00'),
('Leo Ramirez', 27, '444-888-1111', 'Anchorage', '2024-02-29 15:00:00'),
('Zoey Russell', 45, '222-777-4444', 'Kansas City', '2024-03-01 15:15:00'),
('Nolan Peterson', 33, '999-444-6666', 'Oklahoma City', '2024-03-02 15:30:00'),
('Lila Stewart', 38, '888-222-5555', 'Milwaukee', '2024-03-03 15:45:00'),
('Xander Bell', 29, '777-999-3333', 'Memphis', '2024-03-04 16:00:00'),
('Audrey Price', 42, '666-555-8888', 'Louisville', '2024-03-05 16:15:00'),
('Mason Cooper', 31, '555-777-2222', 'Baltimore', '2024-03-06 16:30:00'),
('Penelope Reed', 46, '333-222-9999', 'Raleigh', '2024-03-07 16:45:00'),
('Eli Sanders', 34, '222-888-4444', 'Cincinnati', '2024-03-08 17:00:00'),
('Stella Coleman', 39, '111-777-5555', 'Cleveland', '2024-03-09 17:15:00'),
('Asher Rivera', 28, '777-111-3333', 'St. Louis', '2024-03-10 17:30:00'),
('Nora Barnes', 43, '555-333-8888', 'Buffalo', '2024-03-11 17:45:00'),
('Gabriel Diaz', 32, '333-777-2222', 'Hartford', '2024-03-12 18:00:00'),
('Ruby Morris', 47, '111-444-6666', 'Richmond', '2024-03-13 18:15:00'),
('Luke Griffin', 30, '777-444-5555', 'Boise', '2024-03-14 18:30:00'),
('Eva Henderson', 26, '555-111-8888', 'Albuquerque', '2024-03-15 18:45:00'),
('Miles Palmer', 41, '444-777-2222', 'Charleston', '2024-03-16 19:00:00'),
('Clara Bryant', 36, '999-222-3333', 'Tucson', '2024-03-17 19:15:00');

select * from customers;