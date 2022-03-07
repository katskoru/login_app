import 'package:flutter/material.dart';
import 'package:login_page/my_card.dart';

class FeedPage extends StatefulWidget {
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<String> imgList = [
    "./assets/img/1.jpg",
  ];

  List imgList2 = [
    "./assets/img/2.jpg",
    "./assets/img/3.jpg",
    "./assets/img/4.jpg",
  ];
  int index1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
              itemCount: imgList.length,
              itemBuilder: (context, index) {
                String myTitle = (index + 1).toString();
                return MyCard(
                  removeImg: () {
                    setState(() {
                      imgList.remove(imgList[index]);
                    });
                  },
                  imgUrl: imgList[index],
                  newsTitle: myTitle,
                );
              }),
          Positioned(
            bottom: 15.0,
            right: 15.0,
            child: Container(
              height: 80.0,
              width: 80.0,
              child: FloatingActionButton(
                backgroundColor: Colors.purple,
                child: const Icon(
                  Icons.add_photo_alternate,
                  size: 50.0,
                ),
                onPressed: () {
                  setState(() {
                    //jak zrobić, żeby zapamiętało w liście
                    if (index1 <= 3) {
                      imgList.add(imgList2[index1]);
                      index1 += 1;
                    } else {
                      imgList.add((imgList2[4]));
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
