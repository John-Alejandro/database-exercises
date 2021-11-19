USE codeup_test_db;

INSERT INTO albums (artist, name, release_date,sales, genre)
VALUES ('Elton John', 'Goodbye Yellow Brick Road', 1973, 8.5, 'Rock, pop rock, glam rock'),
       ('Guns N Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin rock'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, alternative rock'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock, blues rock, soft rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Film score'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.5, 'Pop, dance'),
       ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 19.6, 'Heartland rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop, disco'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('The Beatles', '1', 2000, 23.5, 'Rock'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy metal'),
       ('Celine Dion', 'Let''s Talk About Love', 1997, 19.3, 'Pop, soft rock'),
       ('Adele', '21', 2011, 26.4, 'Pop, soul'),
       ('Various Artist', 'Dirty Dancing', 1987, 17.9, 'Pop, rock, R&B'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 8.5, 'Rock'),
       ('Celine Dion', 'Falling into You', 1996, 21.1, 'Pop, soft rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.1, 'New jack swing, R&B and pop'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.3, 'Alternative rock'),
       ('Michael Jackson', 'Bad', 1987, 20.7, 'Pop, rhythm and blues, funk and rock'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard rock, heavy metal, folk rock'),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 14.4, 'Rock and roll'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, pop'),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Progressive rock'),
       ('Eagles', 'Hits (1971–1975)', 1976, 41.2, 'Country rock, soft rock, folk rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, glam rock, progressive rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 21.7, 'R&B, soul, pop, soundtrack'),
       ('AC/DC', 'Back in Black', 1980, 29.6, 'Hard rock'),
       ('Michael Jackson', 'Thriller', 1982, 8.5, 'Pop, post-disco, funk, rock');







Message matthias hinojosa













#  For this exercise, we will be creating a seeder script for our albums, that is, a script that that fills a table with data.
#
# Create a new file named albums_seeder.sql.
#
# At the top of albums_seeder.sql be sure to USE the codeup_test_db database.
#
# Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.
#
# First write your queries as separate INSERT statements for each record and test. You should see no output.
# Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
# Note that running the albums_seeder.sql multiple times will generate duplicate data, don't worry about that for now (we'll fix it by the end of the exercise).

