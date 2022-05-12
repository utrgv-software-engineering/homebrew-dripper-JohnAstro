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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 60, 30, 0),
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Color(0xFF4C748B))),
            child: Text("${recipe.name}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 30,
                    letterSpacing: 0.1,
                    color: Color(0xFF4C748B))),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Color(0xFF4C748B))),
            child: Text(
                "\n\n${recipe.coffeeVolumeGrams}g - ${recipe.grindSize}\n ${recipe.waterVolumeGrams}g - water\n\n\n ${recipe.miscDetails}\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    letterSpacing: 0.1,
                    color: Color(0xFF4C748B))),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(100, 400, 100, 0),
            child: RaisedButton(
              color: Color(0xFF4C748B),
              child: Text("Start"),
              textColor: Color(0xFFF3F3F3),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecipeStepsScreen(recipe)),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
