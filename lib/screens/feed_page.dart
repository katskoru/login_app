import 'package:flutter/material.dart';
import 'package:login_page/widgets/my_card.dart';
import 'package:provider/provider.dart';

import '../provider/state_provider.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StateProvider myProvider =
        Provider.of<StateProvider>(context, listen: false);
    List<String> imgList =
        Provider.of<StateProvider>(context, listen: true).imgList;
    int index1 = myProvider.index1;
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
              itemCount: imgList.length,
              itemBuilder: (context, index) {
                String myTitle = (index + 1).toString();
                return MyCard(
                  removeImg: () {
                    myProvider.removeFromList(index);
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
                        myProvider.addToList();
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
