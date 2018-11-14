CREATE TABLE Client (
  id INTEGER PRIMARY KEY,
  clientId VARCHAR(255) UNIQUE NOT NULL,
  clientSecret VARCHAR(255)  UNIQUE NOT NULL,
  scope VARCHAR(255) NOT NULL
);

INSERT INTO Client (id, clientId, clientSecret, scope) VALUES (1, 'pokeReact', '$2a$10$mfjrN22bD325JJ0W56j.l.PnO3apKfpVTATjqOshfpsQQmgTA4gFa', 'pokemon_server');