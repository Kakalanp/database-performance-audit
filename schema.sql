/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id                INT GENERATED ALWAYS AS IDENTITY,
  name              VARCHAR(250),
  date_of_birth     DATE,
  escape_attempts   INT,
  neutered          BOOLEAN,
  weight_kg         DECIMAL,
  PRIMARY KEY(id)
);

ALTER TABLE animals ADD COLUMN species VARCHAR(250);

CREATE TABLE owners(
	id				        INT GENERATED ALWAYS AS IDENTITY,
	full_name		      VARCHAR(250),
	age				        INT,
	PRIMARY KEY(id)
);

CREATE TABLE species(
	id 				        INT GENERATED ALWAYS AS IDENTITY,
	name 			        VARCHAR(250),
	PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals
ADD COLUMN species_id INTEGER,
ADD FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals
ADD COLUMN owner_id INTEGER,
ADD FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE vets(
  id                  INT GENERATED ALWAYS AS IDENTITY,
  name                VARCHAR(250),
  age                 INT,
  date_of_graduation  DATE,
  PRIMARY KEY(id)
);

CREATE TABLE specializations AS 
(SELECT species.id as species_id,
species.name as species_name,
vets.id as vet_id,
vets.name as vet_name
FROM species
INNER JOIN vets ON species.id = vets.id);

 
CREATE TABLE visits AS
(SELECT animals.id as animal_id,
animals.name as animal_name,
vets.id as vet_id,
vets.name as vet_name
FROM animals
INNER JOIN vets ON animals.id = vets.id);
ALTER TABLE visits ADD COLUMN date_of_visit DATE;

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX animals_id_asc ON visits(animals_id ASC); 
CREATE INDEX vet_id_asc ON visits(vet_id ASC); 
CREATE INDEX emails_asc ON owners(emails_id ASC); 
