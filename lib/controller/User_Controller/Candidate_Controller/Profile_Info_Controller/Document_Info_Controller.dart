// ignore_for_file: file_names, non_constant_identifier_names, prefer_final_fields

import 'package:flutter/cupertino.dart';

class DocumentInfoController with ChangeNotifier {
  String _Month = "Month";
  String _Year = "Year";

  bool _certificate_cheak = false;
  bool _Image_url = false;
  bool _Image = false;

  get Month => _Month;

  get Year => _Year;

  get certificate_cheak => _certificate_cheak;

  get Image_url => _Image_url;

  get Image => _Image;

  void certificate_cheak_fuction(val) {
    _certificate_cheak = val!;
    notifyListeners();
  }

  void Image_url_fuction(val) {
    _Image_url = val!;
    notifyListeners();
  }

  void Image_fuction(val){
    _Image = val!;
    notifyListeners();
  }
}
