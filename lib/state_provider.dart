import 'package:flutter/cupertino.dart';

class StateProvider extends ChangeNotifier {
  bool? _isInitialValue = true;
  init() {
    _isInitialValue = true;
  }

  bool? get isInitialValue => _isInitialValue;

  set isInitialValue(bool? newisInitialValue) {
    _isInitialValue = newisInitialValue;
    notifyListeners();
  }
}
