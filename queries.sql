INSERT INTO dealership(name, location, date_established) VALUES
('Dealership One', 'Calagry', '1990-02-04'),
('Dealership Two', 'Toronto', '2022-05-01'),
('Dealership Three', 'Vancouver', '2013-01-01');

INSERT INTO car_for_sale(dealership_id, make, model, `year`) VALUES
(1, 'Mercedes', 'E-350', '2022-01-01'),
(1, 'Acura', 'RDX', '2021-01-01'),
(1, 'Toyota', 'Corolla', '2016-01-01'),
(1, 'Mercedes', 'GLK', '2020-01-01'),
(2, 'Jeep', 'Wrangler', '2022-01-01'),
(2, 'Jeep', 'Gladiator', '2022-01-01'),
(3, 'Tesla', 'Model S', '2020-01-01'),
(3, 'Tesla', 'Model Y', '2019-01-01'),
(3, 'Porche', 'Tycan', '2022-01-01'),
(3, 'Ford', 'Mach1 Mustang', '2022-01-01'),
(3, 'Ford', 'F-150 Lighting', '2022-01-01');

SELECT cfs.make, cfs.model, cfs.`year` 
FROM car_for_sale cfs 
ORDER BY cfs.`year` DESC;

SELECT d.name, d.location 
FROM dealership d
ORDER BY d.date_established ASC
LIMIT 1;

SELECT d.name, d.location, cfs.make, cfs.model, cfs.`year` 
FROM dealership d INNER JOIN car_for_sale cfs ON cfs.dealership_id = d.id
WHERE cfs.`year` >= '2021-01-01'
ORDER BY cfs.`year` ASC; 