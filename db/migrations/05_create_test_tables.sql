CREATE TABLE users(id SERIAL PRIMARY KEY, username VARCHAR(20), email VARCHAR(60), password VARCHAR(20), name VARCHAR(20));

CREATE TABLE peeps(id SERIAL PRIMARY KEY, text VARCHAR(250), timestamp TIMESTAMP, user_id INTEGER REFERENCES users(id));