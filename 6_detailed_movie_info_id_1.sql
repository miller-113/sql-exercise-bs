SELECT 
    m.id,
    m.title,
    m.release_date,
    m.duration,
    m.description,
    JSON_OBJECT('file_name', f.file_name, 'mime_type', f.mime_type, 'url', f.url) AS poster,
    JSON_OBJECT('id', d.id, 'first_name', d.first_name, 'last_name', d.last_name, 'photo', JSON_OBJECT('file_name', df.file_name, 'mime_type', df.mime_type, 'url', df.url)) AS director,
    JSON_ARRAYAGG(JSON_OBJECT('id', a.id, 'first_name', a.first_name, 'last_name', a.last_name, 'photo', JSON_OBJECT('file_name', af.file_name, 'mime_type', af.mime_type, 'url', af.url))) AS actors,
    JSON_ARRAYAGG(JSON_OBJECT('id', g.id, 'name', g.name)) AS genres
FROM 
    Movie m
JOIN 
    File f ON m.poster_file_id = f.id
JOIN 
    Person d ON m.director_id = d.id
JOIN 
    File df ON d.primary_photo_id = df.id
LEFT JOIN 
    Character c ON m.id = c.movie_id
LEFT JOIN 
    Person a ON c.actor_id = a.id
LEFT JOIN 
    File af ON a.primary_photo_id = af.id
LEFT JOIN 
    MovieGenres mg ON m.id = mg.movie_id
LEFT JOIN 
    Genre g ON mg.genre_id = g.id
WHERE 
    m.id = 1
GROUP BY 
    m.id;
