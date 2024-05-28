import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFa9191a),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Text(
            "News Lancer",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Image.asset(
            "assets/loading/spl.jpg",
            width: MediaQuery.of(context).size.width,
          ),
          Spacer(),
          Text(
            "Developed By\nKevin",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 18,
          ),
        ],
      )),
    );
  }
}
