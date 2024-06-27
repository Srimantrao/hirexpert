// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class DetailsInterviwe with ChangeNotifier {
  bool _isSeved = false;
  String _face = "Face to Face";
  late DateTime _selectdate;

  get isSeved => _isSeved;

  get face => _face;

  get selectdate => _selectdate;

  void Interviwe_Select() {
    _isSeved = !_isSeved;
    notifyListeners();
  }

  void face_Select(newValue) {
    _face = newValue;
    notifyListeners();
  }
}
