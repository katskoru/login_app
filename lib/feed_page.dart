import 'package:flutter/material.dart';
import 'package:login_page/my_card.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      "https://images.pexels.com/photos/7363753/pexels-photo-7363753.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/2791043/pexels-photo-2791043.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/9748197/pexels-photo-9748197.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ];
    return ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          String myTitle = (index + 1).toString();
          return MyCard(
            imgUrl: imgList[index],
            newsTitle: myTitle,
          );
        });
  }
}
