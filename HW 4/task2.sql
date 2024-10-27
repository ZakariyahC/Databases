-- IN1013 - HW 4: Task 2 (UPDATE PART)

-- SELECT * FROM petEvent;
INSERT INTO petEvent VALUES ("Fluffy", "2020-10-15", "vet", "antibiotics");
-- SELECT * FROM petEvent;
 
-- SELECT * FROM petPet;
INSERT INTO petPet VALUES ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL);
INSERT INTO petEvent VALUES ("Hammy", "2020-10-15", "vet", "antibiotics");
-- SELECT * FROM petEvent;
-- SELECT * FROM petPet;
INSERT INTO petEvent VALUES ("Fluffy", "2020-10-15", "litter", "5 kittens, 3 female, 2 male");
-- SELECT * FROM petEvent;

UPDATE petEvent SET petname = "Claws" WHERE eventdate = "1997-08-03" AND remark = "broken rib";
-- SELECT * FROM petEvent;


UPDATE petPet SET death = "2020-09-01" WHERE petname = "Puffball";
-- SELECT * FROM petPet;
-- DESC petEvent;

-- SELECT CONSTRAINT_NAME FROM information_schema.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'petEvent';
ALTER TABLE petEvent DROP FOREIGN KEY petevent_ibfk_1; 
ALTER TABLE petEvent ADD CONSTRAINT fk_petname FOREIGN KEY (petname) REFERENCES petPet(petName) ON DELETE CASCADE;
-- DESC petEvent;
-- SELECT * FROM petEvent;
DELETE FROM petPet WHERE owner = "Harold" AND species = "dog";
-- SELECT * FROM petPet;
-- SELECT * FROM petEvent;