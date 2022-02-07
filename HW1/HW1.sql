CREATE DATABASE db_design;
USE db_design;
CREATE TABLE library(Author VARCHAR(100),
					 Publish_date DATE,
                     Book_name VARCHAR(100),
                     Publisher VARCHAR(100));

INSERT INTO `library` (Author, Publish_date, Book_name, Publisher)
VALUES ('Andrew Jacobson','2003-04-27','Blue Gift','CRC Press'),
							 ('Bill Kauffmann','2005-03-06','Willow in the Mist','Delirium Books'),
                             ('Bill Kern','2005-03-01','Time of Silence','Del Sol Press'),
                             ('Catherine Wilde','2008-06-30','Black Tears','CRC Press'),
                             ('John Becker','2008-05-02','Splintered History','ABC Publishing'),
                             ('John Becker','2006-07-17','Lost Ashes','Delirium Books'),
                             ('John Becker','2010-01-15','Forgotten Girl','ABC Publishing'),
                             ('Michael Ernst','1954-12-04','Tower in the Flame','Beyer Books'),
                             ('Natalie Haast','1988-02-25','Frozen Legacy','Beyer Books'),
                             ('Samantha Steele','1999-10-08','Doors of Danger','Beyer BABC Publishingoks'),
                             ('Samantha Steele','1993-02-11','Diamond Petals','Beyer Books');
SELECT * FROM library;
update library
set Publisher = "ABC Publishing"
where Publish_date = '1999-10-08'
LIMIT 1;
SELECT * FROM library;