-- task2.sql

-- Inserting events for Fluffy and Hammy
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- Inserting Hammy into petPet
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30');

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- Adding records for Fluffy's 5 kittens
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('FluffyKitten1', 'Fluffy', 'cat', 'F', NULL),
       ('FluffyKitten2', 'Fluffy', 'cat', 'F', NULL),
       ('FluffyKitten3', 'Fluffy', 'cat', 'F', NULL),
       ('FluffyKitten4', 'Fluffy', 'cat', 'M', NULL),
       ('FluffyKitten5', 'Fluffy', 'cat', 'M', NULL);

-- Adding event for Claws on 1997-08-03
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broken rib');

-- Updating Puffball's death date
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- Deleting Harold's pet (dog) from the database
DELETE FROM petPet
WHERE owner = 'Harold' AND species = 'dog';
