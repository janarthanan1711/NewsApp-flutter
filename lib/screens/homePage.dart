import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice1/data/datas.dart';
import 'package:flutter_practice1/widgets/home_container.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 126, 231, 205),
        title: const Text('News App'),
        leading: const Icon(Icons.arrow_back_sharp),
      ),
      body: ListView.builder(
        itemCount: mydata.length,
        itemBuilder: ((context, index) {
          return HomeContainer(
            imageUrl: mydata[index]['image'],
            title: mydata[index]['title'],
          );
        }),
      ),
    );
  }
}
