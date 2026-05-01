CREATE DATABASE recipes_db;
USE recipes_db;

CREATE TABLE recipes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  protein VARCHAR(50),
  instructions TEXT
);

CREATE TABLE ingredients (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  info TEXT
);

CREATE TABLE recipe_ingredients (
  recipe_id INT,
  ingredient_id INT
);

INSERT INTO ingredients (name, info) VALUES
('Salt', 'Essential seasoning'),
('Chicken', 'Cook thoroughly'),
('Rice', 'Staple grain');
