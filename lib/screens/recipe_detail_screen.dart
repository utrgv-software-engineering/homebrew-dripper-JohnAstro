import 'package:flutter/material.dart';
import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/screens/recipe_steps_screen.dart';
import 'package:homebrew_dripper/models/recipe_step.dart';

class RecipeDetailScreen extends StatelessWidget {
  CoffeeRecipe recipe;

  RecipeDetailScreen(this.recipe);

  List<RecipeStep> remainingSteps;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text("Recipe Details"),
      ),
      body: ListView(
        children: [
          Text("${recipe.name}",
              style: TextStyle(
                  fontFamily: 'Kollektif',
                  fontSize: 15,
                  letterSpacing: 0.1,
                  color: Color(0xFF4C748B))),
          Text("${recipe.coffeeVolumeGrams}g - ${recipe.grindSize}",
              style: TextStyle(
                  fontFamily: 'Kollektif',
                  fontSize: 15,
                  letterSpacing: 0.1,
                  color: Color(0xFF4C748B))),
          Text("${recipe.waterVolumeGrams}g - water",
              style: TextStyle(
                  fontFamily: 'Kollektif',
                  fontSize: 15,
                  letterSpacing: 0.1,
                  color: Color(0xFF4C748B))),
          Text(""),
          Text("${recipe.miscDetails}",
              style: TextStyle(
                  fontFamily: 'Kollektif',
                  fontSize: 15,
                  letterSpacing: 0.1,
                  color: Color(0xFF4C748B))),
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
