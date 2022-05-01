import 'package:flutter/material.dart';
import 'package:login_page/widgets/my_card.dart';
import 'package:provider/provider.dart';

import '../state_provider.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    List<String> imgList =
        Provider.of<StateProvider>(context, listen: true).imgList;
    int index1 = Provider.of<StateProvider>(context, listen: false).index1;
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
              itemCount: imgList.length,
              itemBuilder: (context, index) {
                String myTitle = (index + 1).toString();
                return MyCard(
                  removeImg: () {
                    Provider.of<StateProvider>(context, listen: false)
                        .removeFromList(index);
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
                  index1 <= 3
                      ? Icons.add_photo_alternate
                      : Icons.done_outline_sharp,
                  size: 50.0,
                ),
                onPressed: index1 <= 3
                    ? () {
                        Provider.of<StateProvider>(context, listen: false)
                            .addToList();
                      }
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
