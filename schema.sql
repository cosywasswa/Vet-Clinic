CREATE DATABASE vet_clinic;
CREATE TABLE animals(id INT GENERATED ALWAYS AS IDENTITY,name VARCHAR,date_of_birth DATE,escape_attempts INT,neutered BOOLEAN,weight_kg DECIMAL(4,2),PRIMARY KEY(id));
ALTER TABLE animals ADD species VARCHAR;
