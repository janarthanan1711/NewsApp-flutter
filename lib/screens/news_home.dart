import 'package:flutter/material.dart';
import 'package:flutter_practice1/widgets/news_container.dart';

class NewsHome extends StatefulWidget {
  NewsHome({Key? key}) : super(key: key);

  @override
  State<NewsHome> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Politics"),
      ),
      body: ListView(children: const [
        NewsContainer(),
        NewsContainer(),
        NewsContainer(),
        NewsContainer(),
        NewsContainer(),
      ]),
    );
  }
}
