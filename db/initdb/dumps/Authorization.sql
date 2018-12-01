CREATE TABLE Client (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  clientId VARCHAR(255) UNIQUE NOT NULL,
  clientSecret VARCHAR(255)  UNIQUE NOT NULL,
  scope VARCHAR(255) NOT NULL
);

INSERT INTO Client (id, clientId, clientSecret, scope) VALUES (1, 'pokeReact', '$2a$10$mfjrN22bD325JJ0W56j.l.PnO3apKfpVTATjqOshfpsQQmgTA4gFa', 'pokemon_server');

CREATE TABLE User(
id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
enabled TINYINT(1) NOT NULL DEFAULT TRUE
);

INSERT INTO User (id, username, password, email, enabled) VALUES (1, 'user', '$2a$10$LSaFawSH0E37U.0g1q.zsuXSq2GKX8HOzZlstdgt4AeyJlVk6eRvi', 't@t.be', 1);

CREATE TABLE RegistrationToken(
  id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
  token VARCHAR(255) NOT NULL,
  expiryDate DATETIME NOT NULL,
  user_fk BIGINT(20) NOT NULL,
  FOREIGN KEY (user_fk) REFERENCES User(id)
);

CREATE TABLE ResetPasswordToken(
  id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
  token VARCHAR(255) NOT NULL,
  expiryDate DATETIME NOT NULL,
  user_fk BIGINT(20) NOT NULL,
  FOREIGN KEY (user_fk) REFERENCES User(id)
);