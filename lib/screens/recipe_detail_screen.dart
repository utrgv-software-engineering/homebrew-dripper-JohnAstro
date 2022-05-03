import 'package:flutter/material.dart';
import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/screens/recipe_steps_screen.dart';

class RecipeDetailScreen extends StatelessWidget {
  CoffeeRecipe recipe;

  RecipeDetailScreen(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text("Recipe Details"),
      ),
      body: ListView(
        children: [
          Text(recipe.name),
          Text("${recipe.coffeeVolumeGrams}g - ${recipe.grindSize}"),
          Text("${recipe.waterVolumeGrams}g - water"),
          Text("${recipe.miscDetails}"),
          RaisedButton(
            child: Text("Start"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RecipeStepsScreen(recipe)),
              );
            },
          )
        ],
      ),
    );
  }
}
