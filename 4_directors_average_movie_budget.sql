SELECT 
    d.id AS director_id,
    CONCAT(d.first_name, ' ', d.last_name) AS director_name,
    AVG(m.budget) AS average_budget
FROM 
    Movie m
JOIN 
    Person d ON m.director_id = d.id
GROUP BY 
    d.id;
