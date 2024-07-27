SELECT 
    m.id,
    m.title,
    m.release_date,
    m.duration,
    m.description,
    JSON_OBJECT('file_name', f.file_name, 'mime_type', f.mime_type, 'url', f.url) AS poster,
    JSON_OBJECT('id', d.id, 'first_name', d.first_name, 'last_name', d.last_name) AS director
FROM 
    Movie m
JOIN 
    File f ON m.poster_file_id = f.id
JOIN 
    Person d ON m.director_id = d.id
JOIN 
    MovieGenres mg ON m.id = mg.movie_id
JOIN 
    Genre g ON mg.genre_id = g.id
WHERE 
    m.country_id = 1
    AND m.release_date >= '2022-01-01'
    AND m.duration > 135
    AND g.name IN ('Action', 'Drama');
