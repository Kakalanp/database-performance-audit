/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Agumon', '2020-02-03', 10.23, true, 0),
('Gabumon', '2018-11-15', 8, true, 2),
('Pikachu', '2021-01-07', 15.04, false, 1),
('Devimon', '2017-05-12', 11, true, 5);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Charmander', '2020-02-08', -11, false, 0),
('Plantmon', '2021-11-15', -5.7, true, 2),
('Squirtle', '1993-04-02', -12.13, false, 3),
('Angemon', '2005-06-12', -45, true, 1),
('Boarmon', '2005-06-07', 20.4, true, 7),
('Blossom', '1998-10-13', 17, true, 3),
('Ditto', '2022-05-14', 22, true, 4);

INSERT INTO owners(full_name,age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell',19 ),
('Bob',45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38);

INSERT INTO species(name)
VALUES('Pokemon'), ('Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon';

UPDATE animals
Set owner_id = 1 WHERE name IN ('Agumon'),
Set owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu'),
Set owner_id = 3 WHERE name IN ('Devimon', 'Plantmon'),
Set owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom'),
Set owner_id = 5 WHERE name IN ('Angemon','Boarmon');

INSERT INTO vets(name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez',64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (species_id, species_name, vet_name, vet_id)
VALUES (1, 'Pokemon', 'William Tatcher', 1),
(1, 'Pokemon', 'Stephanie Mendez', 3),
(2, 'Digimon', 'Stephanie Mendez', 3),
(2, 'Digimon', 'Jack Harkness', 4);

INSERT INTO visits (animal_id,animal_name,vet_id,vet_name,date_of_visit)
VALUES (1,'Agumon', 1, 'William Tatcher', '2020-05-24'),
(1, 'Agumon', 3, 'Stephanie Mendez', '2020-07-22'),
(2, 'Gabumon', 4, 'Jack Harkness', '2021-02-02'),
(3, 'Pikachu', 2, 'Maisy Smith', '2020-01-05'),
(3, 'Pikachu', 2, 'Maisy Smith', '2020-03-08'),
(3, 'Pikachu', 2, 'Maisy Smith', '2020-05-14'),
(3, 'Devimon', 3, 'Stephanie Mendez', '2021-05-04'),
(5, 'Charmander', 4, 'Jack Harkness', '2021-02-24'),
(6, 'Plantmon', 2, 'Maisy Smith', '2019-12-21'),
(6, 'Plantmon', 1, 'William Tatcher', '2020-08-10'),
(6, 'Plantmon', 2, 'Maisy Smith', '2021-04-07'),
(7, 'Squirtle', 3, 'Stephanie Mendez', '2019-09-29'),
(8, 'Angemon', 4, 'Jack Harkness', '2020-10-03'),
(8, 'Angemon', 4, 'Jack Harkness', '2020-11-04'),
(9, 'Boarmon', 2, 'Maisy Smith', '2019-01-24'),
(9, 'Boarmon', 2, 'Maisy Smith', '2019-05-15'),
(9, 'Boarmon', 2, 'Maisy Smith', '2020-02-27'),
(9, 'Boarmon', 2, 'Maisy Smith', '2020-08-03'),
(10, 'Blossom', 3, 'Stephanie Mendez', '2020-05-24'),
(10, 'Blossom', 1, 'William Tatcher', '2021-01-11');
