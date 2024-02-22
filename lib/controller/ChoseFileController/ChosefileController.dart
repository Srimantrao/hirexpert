// ignore_for_file: file_names, non_constant_identifier_names

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_app_file/open_app_file.dart';

class ChosefileController with ChangeNotifier {
  PlatformFile? _files;

  PlatformFile? get files => _files;

  int _selectwidgetone = 0;
  int _selectwidgettwo = 0;

  int get selectwidgetone => _selectwidgetone;

  int get selectwidgettwo => _selectwidgettwo;

  void SelectWidget_one() {
    _selectwidgetone = 0;
  }

  void SelectWidget_two() {
    _selectwidgettwo = 1;
  }

  Future<void> pickefile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      _files = result.files.first;
      _files == (null) ? false : OpenAppFile.open(_files!.path.toString());
    }
    notifyListeners();
  }
}
