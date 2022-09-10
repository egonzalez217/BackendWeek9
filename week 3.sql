create database if not exists social_media;

use social_media;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

CREATE TABLE users
(
	id int(10) not null auto_increment,
	user_name varchar(25) not null,
    password varchar(25) not null,
    email varchar(25) not null,
	primary key (id)
);

CREATE TABLE posts
(
	id int(10) not null auto_increment,
	post_text varchar(240) not null,
	primary key (id),
    foreign key (user_id) references users(id)
);

CREATE TABLE comments
(
	id int(10) not null auto_increment, 
	primary key (id),
    foreign key (user_id) references users (id),
    foreign key (post_id) references posts (id)
);