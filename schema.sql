/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
);

ALTER TABLE animals 
DROP species;

CREATE TABLE owners (
  id serial PRIMARY KEY,
  full_name varchar(100),
  age int
);

CREATE TABLE species (
  id serial PRIMARY KEY,
  full_name varchar(100),
);

ALTER TABLE animals
  ADD species_id int

  ALTER TABLE animals ADD species_id int REFERENCES species(id);

ALTER TABLE animals ADD owner_id int REFERENCES owners(id);

CREATE TABLE vets(
  id serial PRIMARY KEY,
  name varchar(100),
  age INT,
  date_of_graduation DATE
);

CREATE TABLE specializations (
  species_id int,
  vets_id int,
  PRIMARY KEY (species_id, vets_id)
);

CREATE TABLE visits (
  animals_id int,
  vets_id int,
   date_of_visit date,
  PRIMARY KEY (animals_id, vets_id, date_of_visit)
);

ALTER TABLE visits
 ADD FOREIGN KEY (animals_id)  REFERENCES animals (id);
 ADD FOREIGN KEY (vets_id)  REFERENCES vets (id);

ALTER TABLE specializations
 ADD FOREIGN KEY (species_id)  REFERENCES species (id);
 ADD FOREIGN KEY (vets_id)  REFERENCES vets (id);