import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/models/recipe_step.dart';

CoffeeRecipe makeSweetMariasRecipe() {
  List<RecipeStep> steps = [
    RecipeStep("Add 360g water", 30),
    RecipeStep("Cover and wait", 90),
    RecipeStep("Stir", 15),
    RecipeStep("Cover and wait", 75),
    RecipeStep("Stir", 15),
  ];
  CoffeeRecipe recipe = CoffeeRecipe(
      "Sweet Maria's",
      22,
      360,
      "finely ground coffee",
      "The original recipe: makes one delicious cup",
      steps);
  return recipe;
}

CoffeeRecipe makePTsRecipe() {
  List<RecipeStep> steps = [
    RecipeStep("Add 320g water", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
  ];
  CoffeeRecipe recipe = CoffeeRecipe("PT's", 26, 320, "finely ground coffee",
      "Artisan coffee: award-winning cup of joe", steps);
  return recipe;
}

CoffeeRecipe makeTexasRecipe() {
  List<RecipeStep> steps = [
    RecipeStep("Add 360g water", 5),
    RecipeStep("Add 1/2 Fresh Ginger Root", 5),
    RecipeStep("Add 2 Whole Nutmeg", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
  ];
  CoffeeRecipe recipe = CoffeeRecipe("Texas Coffee School", 22, 360,
      "finely ground coffee", "Lone Star: one proud, mean bean", steps);
  return recipe;
}

CoffeeRecipe makeHomeRecipe() {
  List<RecipeStep> steps = [
    RecipeStep("Add 375g water", 5),
    RecipeStep("Add 1 tbsp brown sugar", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
  ];
  CoffeeRecipe recipe = CoffeeRecipe(
      "Homegrounds",
      22,
      375,
      "finely ground coffee",
      "Right at Home: for that nostalgic feeling",
      steps);
  return recipe;
}

List<CoffeeRecipe> getAllRecipes() {
  return [
    makeSweetMariasRecipe(),
    makePTsRecipe(),
    makeTexasRecipe(),
    makeHomeRecipe()
  ];
}

class CoffeeData {
  static List<CoffeeRecipe> loadRecipes() {
    return getAllRecipes();
  }
}
