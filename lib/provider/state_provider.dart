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
  bool _customTileExpanded = false;
  bool _firstTileExpanded = false;
  bool _lastTileExpanded = false;

  bool get customTileExpanded => _customTileExpanded;
  set customTileExpanded(bool newcustomTileExpanded) {
    _customTileExpanded = newcustomTileExpanded;
    notifyListeners();
  }

  bool get firstTileExpanded => _firstTileExpanded;
  set firstTileExpanded(bool newfirstTileExpanded) {
    _firstTileExpanded = newfirstTileExpanded;
    notifyListeners();
  }

  bool get lastTileExpanded => _lastTileExpanded;
  set lastTileExpanded(bool newlastTileExpanded) {
    _lastTileExpanded = newlastTileExpanded;
    notifyListeners();
  }

  List<String> get imgList => _imgList;
  set imgList(List<String> newimgList) {
    _imgList = newimgList;
    notifyListeners();
  }

  bool get isInitialValue => _isInitialValue;
  set isInitialValue(bool newisInitialValue) {
    _isInitialValue = newisInitialValue;
    notifyListeners();
  }

  int get index1 => _index1;
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

  String _title = "Social_Page";

  String get title => _title;
  set title(String newTitle) {
    _title = newTitle;
    notifyListeners();
  }

  onPageChanged(int page) {
    String _temptitle = "";

    switch (page) {
      case 0:
        _temptitle = "Social_Page";
        break;
      case 1:
        _temptitle = "Settings";
        break;
    }
    _title = _temptitle;
    notifyListeners();
  }
}
