DROP DATABASE IF EXISTS recipes_db;
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
('Salt', 'Essential 1'),
('Pepper', 'Essential 2'),
('Chicken', 'DO NOT UNDERCOOK'),
('Rice', 'Generic carb'),
('Grlic', 'Vampire repellent'),
('Oil', 'Use any kind you want'),
('Beef', 'The best'),
('Tofu', 'Plant?');

INSERT INTO recipes (name, protein, instructions) VALUES
('Chicken & rice bowl', 'Chicken', 'Seacon the chicken with salt and pepper. Fry the rice in the oil of your choice and add garlic for flavor.'),
('Just beef', 'Beef', 'Just cook ground beef with salt and pepper.'),
('Tofu stir fry', 'Tofu', 'Fry the tofu and some rice in oil.');

INSERT INTO recipe_ingredients (recipe_id, ingredient_id) VALUES
(1,3),
(1,1),
(1,2),
(1,4),
(1,6),
(1,5),
(2,7),
(2,1),
(2,2),
(3,8),
(3,4),
(3,6);
