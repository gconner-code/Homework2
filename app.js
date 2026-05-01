const express = require('express');
const bodyParser = require('body-parser');
const db = require('./db');
const app = express();
app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: true }));
app.get('/', (req, res) => {
  res.render('home');
});
app.get('/recipes', (req, res) => {
  const query = `SELECT * FROM recipes`;
  db.query(query, (err, results) => {
    if (err) throw err;

    const categorized = {
      Chicken: [],
      Beef: [],
      Tofu: [],
      Grains: []
    };

    results.forEach(r => {
      if (categorized[r.protein]) {
        categorized[r.protein].push(r);
      }
    });

    res.render('recipes', { categorized });
  });
});
app.get('/recipe/:id', (req, res) => {
  const recipeId = req.params.id;

  const recipeQuery = 'SELECT * FROM recipes WHERE id = ?';
  const ingredientQuery = `
    SELECT ingredients.name, ingredients.info
    FROM ingredients
    JOIN recipe_ingredients ON ingredients.id = recipe_ingredients.ingredient_id
    WHERE recipe_ingredients.recipe_id = ?
  `;
app.listen(3000, () => console.log('Server running on port 3000'));
