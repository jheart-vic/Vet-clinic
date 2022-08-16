/* Populate database with sample data. */
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Agumon', 'February 3, 2020', 0, TRUE, 10.23);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Gabumon', 'November 15, 2018', 2, TRUE, 8);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Pikachu', 'January 7, 2021', 1, FALSE, 15.04);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Devimon', 'May 12, 2017', 5, TRUE, 11);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Charmander', 'February 8, 2020', 0, TRUE, 11);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Plantmon', 'November 15, 2021', 2, TRUE, 5.7);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Squirtle', 'April 2, 1993', 3, TRUE, 12.13);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Angemon', 'June 12, 2005', 1, FALSE, 45);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Boarmon', 'June 7, 2005', 7, TRUE, 20.4);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Blossom', 'October 13, 1998', 3, TRUE, 17);
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Ditto', 'May 14, 2022', 4, TRUE, 22);
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);
INSERT INTO species (name)
VALUES ('Pokemon'),
  ('Digimon');
INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, ' April 23, 2000'),
  ('Maisy Smith', 26, 'January 17, 2019'),
  ('Stephanie Mendez', 64, 'May 4, 1981'),
  ('Jack Harkness', 38, 'June 8, 2018');
INSERT INTO specializations
VALUES (1, 1),
  (1, 3),
  (2, 3),
  (2, 4);
INSERT INTO visits
VALUES (1, 4, 'February 24, 2021'),
  (2, 3, 'September 29, 2019'),
  (3, 1, 'January 11, 2021'),
  (3, 3, 'May 24, 2020'),
  (4, 4, 'October 3, 2020'),
  (4, 4, 'November 4, 2020'),
  (5, 2, 'January 24, 2019'),
  (5, 2, 'May 15, 2019'),
  (5, 2, 'February 27, 2020'),
  (5, 2, 'August 3, 2020'),
  (6, 1, 'May 24, 2020'),
  (6, 3, 'July 22, 2020'),
  (7, 4, 'February 2, 2021'),
  (8, 2, 'January 5, 2020'),
  (8, 2, 'March 8, 2020'),
  (8, 2, 'May 14, 2020'),
  (9, 3, 'May 4, 2021'),
  (10, 1, 'August 10, 2020'),
  (10, 2, 'April 7, 2021'),

  -- insert into visits table
INSERT INTO visits (animals_id, vets_id, date_of_visit)
SELECT *
FROM (
    SELECT id
    FROM animals
  ) animal_ids,
  (
    SELECT id
    FROM vets
  ) vets_ids,
  generate_series('1900-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp
-- insert into owners
insert into owners (full_name, email)
select 'Owner ' || generate_series(1, 2500000),
  'owner_' || generate_series(1, 2500000) || '@mail.com';