CREATE DATABASE `GigPlatformDB`;
USE `GigPlatformDB`;
CREATE TABLE informal_worker (
    worker_id INT AUTO_INCREMENT PRIMARY KEY,
    worker_name VARCHAR(100),
    age INT,
    income DECIMAL(10, 2),
    location VARCHAR(100) DEFAULT 'Kampala'
);
INSERT INTO informal_worker (worker_name, age, income, location) 
VALUES('John Okello', 28, 120.00, 'Kampala'),
('Grace Namusoke', 35, 200.00, 'Kampala'),
('Brian Mugisha', 22, 75.50, 'Kampala'),
('Fatuma Nakayi', 30, 180.00, 'Kampala'),
('Paul Ssembatya', 40, 250.00, 'Kampala');


CREATE TABLE gig_platform (
    platform_id INT AUTO_INCREMENT PRIMARY KEY,
    platform_name VARCHAR(100),
    creation_date DATE,
    decentralized BOOLEAN
);
INSERT INTO gig_platform (platform_name, creation_date, decentralized) VALUES
('JuaKali Uganda', '2021-06-10', TRUE),
('BodaLink', '2020-02-15', FALSE),
('WorkMate', '2023-01-05', TRUE);


CREATE TABLE decentralization (
    decentralization_id INT AUTO_INCREMENT PRIMARY KEY,
    impact TEXT,
    degree VARCHAR(50),
    effect TEXT
);
INSERT INTO decentralization (impact, degree, effect) VALUES
('Improved payment speed', 'High', 'Workers receive faster mobile payments'),
('Increased transparency', 'Medium', 'Jobs are matched fairly without bias'),
('Data ownership for workers', 'High', 'Workers control their profiles and history'),
('Limited employer control', 'Low', 'Employers cannot reject applications unfairly');

