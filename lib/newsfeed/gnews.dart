import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/newsfeed/articlemodel.dart';

class GoogleNews {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=4b5a48de42384105a2c95a8b7fcd4068";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element["urlToImage"] != null &&
            element["description"] != null &&
            element["source"]["name"] == "Google News") {
          ArticleModel articleModel = ArticleModel(
              author: element['author'],
              description: element['description'],
              title: element['title'],
              url: element['url'],
              urlToImage: element['urlToImage']);
          news.add(articleModel);
        }
      });
    }
  }
}
