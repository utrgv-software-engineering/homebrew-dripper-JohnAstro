import 'package:flutter/material.dart';
import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/models/resource.dart';
import 'package:homebrew_dripper/screens/recipe_detail_screen.dart';
import 'package:homebrew_dripper/screens/resource_screen.dart';
import 'package:homebrew_dripper/utils/coffee_data.dart';
import 'package:homebrew_dripper/utils/resource_data.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 10);
    return Timer(duration, navigateToRecipeSelectionScreen);
  }

  navigateToRecipeSelectionScreen() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => RecipeSelectionScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4C748B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOMEBREW",
                style: TextStyle(
                    fontFamily: 'Norwester',
                    fontSize: 48,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text("Handmade Coffee",
                style: TextStyle(
                    fontFamily: 'Kollektif',
                    fontSize: 18,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }
}

class RecipeSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Selection"),
      ),
      body: ListView(
        children: [
          Text("Coffee Recipes", key: Key("coffee-recipes")),
          RecipeList(),
          Text("Resources"),
          ResourceList()
        ],
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  List<CoffeeRecipe> recipes = CoffeeData.loadRecipes();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (CoffeeRecipe recipe in recipes)
          ListTile(
              title: Text(recipe.name),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecipeDetailScreen(recipe)),
                );
              })
      ],
    );
  }
}

class ResourceList extends StatelessWidget {
  List<Resource> resources = ResourceData.loadResources();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (Resource resource in resources)
          ListTile(
            title: Text(resource.name),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResourceScreen(resource)));
            },
          )
      ],
    );
  }
}
