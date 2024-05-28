
import 'package:flutter/material.dart';
import 'package:mews_lancer/view/DetailedView.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;
  NewsContainer(
      {super.key,
        required this.imgUrl,
        required this.newsDes,
        required this.newsCnt,
        required this.newsHead,
        required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        FadeInImage.assetNetwork(
            height: 350,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            placeholder: "assets/loading/loader.gif",
            image: imgUrl),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),
            Text(
              newsHead.length > 70
                  ? "${newsHead.substring(0, 70)}..."
                  : newsHead,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              newsDes,
              style: TextStyle(fontSize: 12, color: Colors.black45),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              newsCnt != "--"
                  ? newsCnt.length > 140
                  ? "${newsCnt.substring(0, 140)}..."
                  : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                  : newsCnt,
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailViewScreen(newsUrl: newsUrl)));
                  },
                  child: Text("Read More")),
            ),
          ],
        ),
        Center(
            child: TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://newsapi.org/"));
                },
                child: Text(
                  "News Provided By NewsAPI.org",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ))),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
