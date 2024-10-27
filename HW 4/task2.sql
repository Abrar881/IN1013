-- task2.sql

-- Insert event for Fluffy's vet visit
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'Received antibiotics for infection');

-- Insert Hammy's record in petPet table
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30');

-- Insert event for Hammy's vet visit
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'Routine checkup and antibiotics');

-- Adding unique records for Fluffy's 5 kittens
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('FluffyKittenA', 'Fluffy', 'cat', 'F', NULL),
       ('FluffyKittenB', 'Fluffy', 'cat', 'F', NULL),
       ('FluffyKittenC', 'Fluffy', 'cat', 'F', NULL),
       ('FluffyKittenD', 'Fluffy', 'cat', 'M', NULL),
       ('FluffyKittenE', 'Fluffy', 'cat', 'M', NULL);

-- Add unique event for Claws' injury
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'Sustained a broken rib from a fall');

-- Update Puffball's death date
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- Remove Harold's dog entry for GDPR compliance
DELETE FROM petPet
WHERE owner = 'Harold' AND species = 'dog';
