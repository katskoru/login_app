import 'package:flutter/material.dart';
import 'package:login_page/my_card.dart';

class FeedPage extends StatefulWidget {
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      "https://images.pexels.com/photos/7363753/pexels-photo-7363753.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/9748197/pexels-photo-9748197.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1070945/pexels-photo-1070945.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    ];
    return Stack(
      children: [
        ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              func() {
                imgList.remove(imgList[index]);
              }

              String myTitle = (index + 1).toString();
              return MyCard(
                myHandler: () {
                  setState(() {
                    print("object");
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
              child: Icon(
                Icons.add_photo_alternate,
                size: 50.0,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
