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
      backgroundColor: Color(0xFFF3F3F3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Coffee Recipes",
                key: Key("coffee-recipes"),
                style: TextStyle(
                    fontFamily: 'Kollektif',
                    fontSize: 25,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C748B))),
            Text(""),
            RecipeList(),
            Text(""),
            Text("Resources",
                style: TextStyle(
                    fontFamily: 'Kollektif',
                    fontSize: 25,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C748B))),
            Text(""),
            ResourceList()
          ],
        ),
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
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
                title: Text("${recipe.name}",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        letterSpacing: 0.1,
                        color: Color(0xFF4C748B))),
                trailing: Icon(Icons.chevron_right),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFF4C748B), width: 1),
                    borderRadius: BorderRadius.circular(2)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipeDetailScreen(recipe)),
                  );
                }),
          )
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
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
              title: Text("${resource.name}",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      letterSpacing: 0.1,
                      color: Color(0xFF4C748B))),
              trailing: Icon(Icons.chevron_right),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFF4C748B), width: 1),
                  borderRadius: BorderRadius.circular(2)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResourceScreen(resource)));
              },
            ),
          )
      ],
    );
  }
}
