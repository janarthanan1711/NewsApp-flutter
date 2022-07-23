import 'package:flutter/material.dart';
import 'package:flutter_practice1/ApiHelper/news_api.dart';
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
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
          title: const Text("Headlines"),
        ),
        body: FutureBuilder(
          future: getNews('sports'),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: ((context, index) {
                  var data = snapshot.data;
                  return NewsContainer(
                    imageUrl: data[index].imageUrl,
                    title: data[index].title,
                    description: data[index].description,
                    author: data[index].author,
                    link: data[index].link,
                  );
                }),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}
