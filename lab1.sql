Q1-1

SELECT owner FROM pet WHERE sex = "f";

Q1-2

SELECT name, birth FROM pet WHERE species = "dog";

Q1-3

SELECT owner FROM pet WHERE species = "bird";

Q1-4

SELECT species FROM pet WHERE sex = "f";

Q1-5

SELECT name,birth FROM pet WHERE species = "cat" OR species = "bird";

Q1-6

SELECT name, species FROM pet WHERE species = "cat" OR species = "bird" AND sex = "f";

Q2-1

SELECT owner, name FROM pet WHERE name LIKE "%er" OR name LIKE "%all";

Q2-2

SELECT name FROM pet WHERE owner LIKE "%e%";

Q2-3

SELECT name FROM pet WHERE name NOT LIKE "%fy";

Q2-4

SELECT name FROM pet WHERE LENGTH(owner) = 4;

Q2-5

SELECT owner FROM pet WHERE owner REGEXP '^[a-e]' OR owner REGEXP '[a-e]$';

Q2-6

SELECT owner FROM pet WHERE owner GLOB '[a-e]*' OR owner GLOB '*[a-e]';

Q3-1

SELECT AVG(checkups) AS average_checkups FROM pet;

Q3-2

SELECT species, COUNT(*) AS number_of_pets FROM pet GROUP BY species ORDER BY number_of_pets ASC;

q3-3

SELECT owner, species, COUNT(*) AS number_of_pets FROM pet GROUP BY owner, species ORDER BY owner, species;

Q3-4

SELECT owner, COUNT(DISTINCT species) AS number_of_species FROM pet GROUP BY owner ORDER BY number_of_species DESC;

Q3-5

SELECT species, sex, COUNT(sex) AS number_of_pets FROM pet WHERE sex IS NOT NULL GROUP BY species ORDER BY sex, species;

Q3-6

SELECT owner, COUNT(species) AS number_of_birds FROM pet WHERE species = "bird";

Q3-7

SELECT owner, SUM(checkups) AS total_checkups FROM pet GROUP BY owner ORDER BY total_checkups DESC;
