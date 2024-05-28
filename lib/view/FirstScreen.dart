import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mews_lancer/view/home.dart';

class FirstScreen extends StatelessWidget {
  String newsHead = "Welcome to News Lancer!";
  String newsDes = "Made with love by, Kev Lancer.";
  String newsCnt =
      "Dive into the world of news with this Flutter-made app! Stay informed on the go with a constant stream of headlines from more than 10, globally trusted sources. This is your perfect companion to stay up-to-date on everything. [Note: If it doesnt load, means you have reached the api request limit. Try again in 24 hrs.]  ";
  String imgUrl = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Material(
          child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/loading/loader.gif"),
              fit: BoxFit.cover),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  newsHead,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  newsDes,
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
                SizedBox(
                  height: 300,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Center(
                    child: Text(
                      newsCnt,
                      maxLines: 6,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Let's Scroll!",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ]),
      )),
    );
  }
}
