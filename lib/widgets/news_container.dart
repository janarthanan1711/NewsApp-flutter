import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer(
      {Key? key,
      this.imageUrl,
      this.title,
      this.description,
      this.author,
      this.link})
      : super(key: key);
  final String? imageUrl;
  final String? title;
  final String? description;
  final String? author;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 25,
        child: Container(
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(imageUrl!),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        description!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("by $author")],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
