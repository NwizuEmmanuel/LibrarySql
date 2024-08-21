CREATE TABLE book
(
	book_id INT IDENTITY (1,1) PRIMARY KEY,
	book_title VARCHAR(50) NOT NULL
);

CREATE TABLE author
(
	author_id INT IDENTITY (1,1) PRIMARY KEY,
	author_name VARCHAR (50) NOT NULL
);

CREATE TABLE book_author
(
	book_id INT,
	author_id INT,
	FOREIGN KEY (book_id) REFERENCES book (book_id),
	FOREIGN KEY (author_id) REFERENCES author (author_id)
);

