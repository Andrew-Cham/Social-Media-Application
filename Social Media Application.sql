CREATE DATABASE IF NOT EXISTS Social_Media_Application;

USE Social_Media_Application;

DROP TABLE IF EXISTS users;
Drop TABLE IF EXISTS comments;
Drop TABLE IF EXISTS posts;

CREATE TABLE users (
	user_id INT(11) NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(100),
	password VARCHAR(100) NOT NULL,
	PRIMARY KEY(user_id)
	
);

CREATE TABLE posts (
	post_id INT(11) NOT NULL AUTO_INCREMENT,
	user_id INT(11) NOT NULL,
	comment_id INT(11) NOT NULL,
	posts TEXT NOT NULL,
	PRIMARY KEY(post_id),
	FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE comments (
	comment_id INT(11) NOT NULL AUTO_INCREMENT,
	user_id INT(11) NOT NULL,
	post_id INT(11) NOT NULL,
    comment TEXT NOT NULL,
	date_created DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(comment_id),
	FOREIGN KEY (user_id) REFERENCES users (user_id),
	FOREIGN KEY(post_id) REFERENCES posts (post_id)	
);

