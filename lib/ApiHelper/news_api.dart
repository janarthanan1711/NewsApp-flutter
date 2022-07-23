// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_practice1/Model/news_model.dart';
import 'dart:convert';

String baseUrl = "https://ktmwebscraper.herokuapp.com/";

getNews(String newsType) async {
  var response = await http.get(Uri.parse(baseUrl + newsType));

  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);

    List<News> myNews = [];

    for (var news in jsonData) {
      News singleNews = News(
          title: news['title'],
          imageUrl: news['image'],
          description: news['description'],
          author: news['author'],
          link: news['link']);

      myNews.add(singleNews);
    }
    debugPrint(myNews.toString());
    return myNews;
  } else {
    throw Exception('Unable to fetch the news data');
  }
}
