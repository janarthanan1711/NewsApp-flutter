import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({Key? key}) : super(key: key);

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
                    image: const DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          "https://www.zambianguardian.com/wp-content/uploads/2022/02/Functions-of-political-system-according-to-David-Easton-696x457.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Gold smuggling fears after India hikes duty hjadhjdhkfhkhkfgjjkgjdhsgjmgsj",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Nepal’s foreign exchange reserves could deplete further if illegal imports rise. ",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [Text("By Bibek Acharya")],
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
