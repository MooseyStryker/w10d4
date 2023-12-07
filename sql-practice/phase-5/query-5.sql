-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here

SELECT DISTINCT
  name
FROM
  cat_owners
JOIN
  cats ON (cat_owners.cat_id = cats.id)
JOIN
  owners ON (cat_owners.owner_id = owners.id)
WHERE (
  (first_name = "George" AND last_name = "Beatty") OR
  (first_name = "Melynda" AND last_name = "Abshire")
);
