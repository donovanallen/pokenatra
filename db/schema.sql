DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS teams;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  poke_type TEXT,
  cp INT,
  img_url TEXT,
  trainer_id INT
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  level INT NOT NULL,
  img_url TEXT,
  team_id INT
);

CREATE TABLE teams(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
