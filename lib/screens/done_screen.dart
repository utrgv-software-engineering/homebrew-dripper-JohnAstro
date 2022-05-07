import 'package:flutter/material.dart';
import 'package:homebrew_dripper/screens/recipe_selection_screen.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Center(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 312, bottom: 242),
                child: Text("enjoy your amazing\n handmade coffee",
                    style: TextStyle(
                        fontFamily: 'Monteserrat',
                        fontSize: 18,
                        letterSpacing: 0.1,
                        color: Color(0xFF4C748B)))),
            Container(
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeSelectionScreen()));
                    },
                    child: Text("done",
                        style: TextStyle(
                            color: Color(0xFF4C748B),
                            fontSize: 18,
                            fontFamily: 'Monteserrat',
                            letterSpacing: 0.1))))
          ],
        ),
      ),
    );
  }
}
