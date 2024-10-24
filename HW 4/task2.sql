
INSERT INTO petEvent VALUES ( "Fluffy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petPet VALUES ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL);
INSERT INTO petEvent VALUES ("Hammy", "2020-10-15", "vet", "antibiotics");

update petEvent set remark = "5 kittens, 3 female, 2 male" where petname = "Fluffy";

update petEvent set petname = "Claws" where eventdate = "1997-08-03";

update petPet set death = "2020-09-01" where petname = "Puffball";

DELETE FROM petEvent WHERE petname IN (SELECT petname FROM petPet WHERE owner = "Harold");
DELETE FROM petPet WHERE owner = "Harold";



