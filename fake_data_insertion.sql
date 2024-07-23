INSERT INTO Country (name) VALUES 
('USA'),
('UK'),
('Canada'),
('France'),
('India');

INSERT INTO Genre (name) VALUES 
('Action'),
('Drama'),
('Comedy'),
('Thriller'),
('Science Fiction');

INSERT INTO File (file_name, mime_type, key, url) VALUES
('avatar1.jpg', 'image/jpeg', 'avatars/avatar1.jpg', 'https://example.com/avatars/avatar1.jpg'),
('avatar2.jpg', 'image/jpeg', 'avatars/avatar2.jpg', 'https://example.com/avatars/avatar2.jpg'),
('poster1.jpg', 'image/jpeg', 'posters/poster1.jpg', 'https://example.com/posters/poster1.jpg'),
('poster2.jpg', 'image/jpeg', 'posters/poster2.jpg', 'https://example.com/posters/poster2.jpg'),
('photo1.jpg', 'image/jpeg', 'photos/photo1.jpg', 'https://example.com/photos/photo1.jpg');

INSERT INTO User (username, first_name, last_name, email, password, avatar_file_id) VALUES
('john_doe', 'John', 'Doe', 'john@example.com', 'password123', 1),
('jane_smith', 'Jane', 'Smith', 'jane@example.com', 'password123', 2);

INSERT INTO Person (first_name, last_name, biography, date_of_birth, gender, home_country_id, primary_photo_id) VALUES
('Steven', 'Spielberg', 'Famous director known for Jaws and E.T.', '1946-12-18', 'male', 1, 5),
('Leonardo', 'DiCaprio', 'Oscar-winning actor known for Titanic and Inception.', '1974-11-11', 'male', 1, NULL),
('Kate', 'Winslet', 'Oscar-winning actress known for Titanic.', '1975-10-05', 'female', 2, NULL),
('Christopher', 'Nolan', 'Director known for Inception and The Dark Knight Trilogy.', '1970-07-30', 'male', 2, NULL),
('Meryl', 'Streep', 'Award-winning actress known for The Devil Wears Prada.', '1949-06-22', 'female', 1, NULL);

INSERT INTO Movie (title, description, budget, release_date, duration, director_id, country_id, poster_file_id) VALUES
('Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology.', 160000000, '2010-07-16', 148, 4, 1, 3),
('Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist.', 200000000, '1997-12-19', 195, 1, 1, 4);

INSERT INTO Character (name, description, role, movie_id, actor_id) VALUES
('Dom Cobb', 'A skilled thief and the main protagonist.', 'leading', 1, 2),
('Rose DeWitt Bukater', 'A wealthy young woman who falls in love with a kind but poor artist.', 'leading', 2, 3),
('Robert Fischer', 'The heir to a business empire.', 'supporting', 1, NULL);

INSERT INTO FavoriteMovies (user_id, movie_id) VALUES
(1, 1),
(1, 2),
(2, 1);

INSERT INTO MovieGenres (movie_id, genre_id) VALUES
(1, 1),
(1, 4),
(2, 2),
(2, 4);
