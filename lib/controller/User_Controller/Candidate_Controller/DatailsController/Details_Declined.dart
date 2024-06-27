// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class DetailsDeclined with ChangeNotifier {
  bool _isSeved = false;

  get isSeved => _isSeved;

  void Details_Declined() {
    _isSeved = !_isSeved;
    notifyListeners();
  }
}
