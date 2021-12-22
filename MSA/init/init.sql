create database IF NOT EXISTS test_db;

CREATE TABLE IF NOT EXISTS test_db.diet_history
(
    id       bigint(20) not null,
    date     date,
    username varchar(255),
    food_id  bigint(20),
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS test_db.exercise
(
    id   bigint(20) not null,
    name varchar(255),
    part varchar(255),
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS test_db.exercise_history
(
    id   bigint(20) not null,
    date date,
    rep int(11),
    sets int(11),
    username varchar(255),
    weight int(11),
    exercise_id bigint(20),
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS test_db.food
(
    id   bigint(20) not null,
    calorie int(11) NOT NULL,
    carbo_hydrate int(11) NOT NULL,
    fat int(11) NOT NULL,
    name varchar(255),
    protein int(11) NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS test_db.user
(
    id bigint(20) not null,
    first_name varchar(255),
    last_name varchar(255),
    password varchar(255),
    username varchar(200) unique,
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS test_db.hibernate_sequence
(
    next_val bigint(20)
    );