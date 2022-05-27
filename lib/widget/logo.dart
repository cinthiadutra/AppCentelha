import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Container(
              child: Image.asset(
                "assets/images/centelha.png",
                scale: 7,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "A Centelha Divina",
              style: TextStyle(fontSize: 30),
            ),
          )
        ]));
  }
}
