import 'package:flutter/cupertino.dart';

class StateProvider extends ChangeNotifier {
  int _index1 = 0;
  bool _isInitialValue = true;
  List<String> _imgList = [];
  List imgList2 = [
    "./assets/img/1.jpg",
    "./assets/img/2.jpg",
    "./assets/img/3.jpg",
    "./assets/img/4.jpg",
  ];

  bool get isInitialValue => _isInitialValue;
  List<String> get imgList => _imgList;
  int get index1 => _index1;

  set imgList(List<String> newimgList) {
    _imgList = newimgList;
    notifyListeners();
  }

  set isInitialValue(bool newisInitialValue) {
    _isInitialValue = newisInitialValue;
    notifyListeners();
  }

  set index1(int newindex1) {
    _index1 = newindex1;
    notifyListeners();
  }

  addToList() {
    if (index1 <= 3) {
      imgList.add(imgList2[index1]);
      index1 += 1;
    } else {}

    notifyListeners();
  }

  removeFromList(int index) {
    imgList.removeAt(index);
    notifyListeners();
  }
}
