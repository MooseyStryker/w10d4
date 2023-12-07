-- Find Hermione's cats
-- Your code here

SELECT name
FROM cat_owners
JOIN cats ON (cat_owners.cat_id = cats.id)
JOIN owners ON (owners.id = cat_owners.owner_id)
WHERE first_name = 'Hermione';
