CREATE TABLE users(
      id SERIAL PRIMARY KEY NOT NULL,
      name VARCHAR(30) NOT NULL UNIQUE,
      email VARCHAR(50) NOT NULL UNIQUE,
      premium_id int);

CREATE TABLE premium (
      id SERIAL PRIMARY KEY NOT NULL,
      users_id int NOT NULL,
      level int NOT NULL,
      date_start_membership DATE NOT NULL);

CREATE TABLE threads (
      id SERIAL PRIMARY KEY NOT NULL,
      theme VARCHAR(20) NOT NULL,
      topic VARCHAR(50) NOT NULL,
      creator_id int NOT NULL);

CREATE TABLE messages (
      id SERIAL PRIMARY KEY NOT NULL,
      thread_id int NOT NULL,
      message VARCHAR(500) NOT NULL,
      creator_id int NOT NULL);
