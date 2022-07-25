import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice1/screens/news_home.dart';
import 'package:flutter_practice1/widgets/news_container.dart';

class HomeContainer extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  const HomeContainer({Key? key, this.imageUrl, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => NewsHome(
                  title: title,
                  category: title!.toLowerCase(),
                )),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 167,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl!),
            ),
          ),
          child: Center(
            child: Text(
              title!,
              style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
