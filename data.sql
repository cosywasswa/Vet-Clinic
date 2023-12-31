INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Agumon','2020-02-03',0,'TRUE',10.23);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Gabumon','2018-11-15',2,'TRUE',8);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Pikachu','2021-01-07',1,'FALSE',15.04);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Devimon','2017-05-12',5,'TRUE',11);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Charmander','2020-02-08',0,'FALSE',-11);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Plantmon','2021-11-15',2,'TRUE',-5.7);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Squirtle','1993-04-02',3,'FALSE',-12.13);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Angemon','2005-06-12',1,'TRUE',-45);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Boarmon','2005-06-07',7,'TRUE',20.4);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Blossom','1998-10-13',3,'TRUE',17);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Ditto','2022-05-14',4,'TRUE',22);

INSERT INTO owners(full_name,age) VALUES('Sam Smith',34),('Jennifer Orwell',19),('Bob',45),
('Melody Pond',77),('Dean Winchester',14),('Jody Whittaker',38);
INSERT INTO species(name) VALUES('Pokemon'),('Digimon');

UPDATE animals SET species_id = s.id FROM species s 
WHERE (animals.name LIKE '%mon' AND s.name = 'Digimon') OR (animals.name NOT LIKE '%mon' AND s.name = 'Pokemon');

UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Agumon' AND o.full_name = 'Sam Smith';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Pikachu' AND o.full_name = 'Jennifer Orwell';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Gabumon' AND o.full_name = 'Jennifer Orwell';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Devimon' AND o.full_name = 'Bob';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Plantmon' AND o.full_name = 'Bob';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Charmander' AND o.full_name = 'Melody Pond';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Squirtle' AND o.full_name = 'Melody Pond';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Blossom' AND o.full_name = 'Melody Pond';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Angemon' AND o.full_name = 'Dean Winchester';
UPDATE animals SET owner_id = o.id FROM owners o WHERE animals.name = 'Boarmon' AND o.full_name = 'Dean Winchester';

INSERT INTO vets(name,age,date_of_graduation) VALUES('William Tatcher',45,'2000-04-23');
INSERT INTO vets(name,age,date_of_graduation) VALUES('Maisy Smith',26,'2019-01-17');
INSERT INTO vets(name,age,date_of_graduation) VALUES('Stephanie Mendez',64,'1981-05-04');
INSERT INTO vets(name,age,date_of_graduation) VALUES('Jack Harkness',38,'2008-06-08');

INSERT INTO specializations (vet_id, species_id) VALUES((SELECT id FROM vets WHERE name = 'William Tatcher'), 
(SELECT id FROM species WHERE name = 'Pokemon')
);

INSERT INTO specializations (vet_id, species_id) VALUES((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 
(SELECT id FROM species WHERE name = 'Digimon')
);

INSERT INTO specializations (vet_id, species_id) VALUES((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 
(SELECT id FROM species WHERE name = 'Pokemon')
);

INSERT INTO specializations (vet_id, species_id) VALUES((SELECT id FROM vets WHERE name = 'Jack Harkness'), 
(SELECT id FROM species WHERE name = 'Digimon')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Agumon'),'2020-05-24',
(SELECT id FROM vets WHERE name = 'William Tatcher')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Agumon'),'2020-07-22',
(SELECT id FROM vets WHERE name = 'Stephanie Mendez')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Gabumon'),'2021-02-02',
(SELECT id FROM vets WHERE name = 'Jack Harkness')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Pikachu'),'2020-01-05',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Pikachu'),'2020-03-08',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Pikachu'),'2020-05-14',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Devimon'),'2021-05-04',
(SELECT id FROM vets WHERE name = 'Stephanie Mendez')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Charmander'),'2021-02-24',
(SELECT id FROM vets WHERE name = 'Jack Harkness')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Plantmon'),'2019-12-21',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Plantmon'),'2020-08-10',
(SELECT id FROM vets WHERE name = 'William Tatcher')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Plantmon'),'2021-04-07',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Squirtle'),'2019-09-29',
(SELECT id FROM vets WHERE name = 'Stephanie Mendez')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Angemon'),'2020-10-03',
(SELECT id FROM vets WHERE name = 'Jack Harkness')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Angemon'),'2020-11-04',
(SELECT id FROM vets WHERE name = 'Jack Harkness')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Boarmon'),'2019-01-24',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Boarmon'),'2019-05-15',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Boarmon'),'2020-02-27',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Boarmon'),'2020-08-03',
(SELECT id FROM vets WHERE name = 'Maisy Smith')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Blossom'),'2020-05-24',
(SELECT id FROM vets WHERE name = 'Stephanie Mendez')
);

INSERT INTO visits(animal_id, date_of_the_visit, vet_id) VALUES((SELECT id FROM animals WHERE name = 'Blossom'),'2021-01-11',
(SELECT id FROM vets WHERE name = 'William Tatcher')
);
---Performance audit data-excluding the previous data---

INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';



