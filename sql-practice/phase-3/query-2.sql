-- Find All the Toys for Hermione's cats
-- Your code here

SELECT toys.name
FROM toys
WHERE cat_id = ((
    SELECT cat_owners.cat_id
    FROM cat_owners
    JOIN cats ON (cat_owners.cat_id = cats.id)
    JOIN owners ON (owners.id = cat_owners.owner_id)
    WHERE first_name = 'Hermione'
));
