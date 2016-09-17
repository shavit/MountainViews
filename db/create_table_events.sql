CREATE TABLE events (
  id SERIAL,
  name VARCHAR(120) NOT NULL,
  description VARCHAR(255) NOT NULL,
  picture VARCHAR(255) NOT NULL,
  venue VARCHAR(40) NOT NULL,
  country VARCHAR(20) NOT NULL,
  starting_at DATE NOT NULL,
  created_at DATE NOT NULL,
  updated_at DATE NOT NULL
);
