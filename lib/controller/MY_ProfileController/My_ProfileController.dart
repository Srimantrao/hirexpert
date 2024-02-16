// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_app_file/open_app_file.dart';

class My_ProfileController with ChangeNotifier {
  //Personal Information
  TextEditingController Job_Titales = TextEditingController();
  TextEditingController Frist_Name_Profile = TextEditingController();
  TextEditingController Last_Name_Profile = TextEditingController();
  TextEditingController Email_id_Profile = TextEditingController();
  TextEditingController Mobile_Numbres = TextEditingController();
  TextEditingController BirthDay = TextEditingController();

  //File
  PlatformFile? _file;

  PlatformFile? get file => _file;

  int _selectedCheckboxIndex = -1;

  //Visibility
  bool _Upload_lock = false;
  bool _Personal_Information = false;
  bool _Address = false;
  bool _Education_Details = false;
  bool _Work_Experience = false;
  bool _Salary = false;
  bool _Work_Location = false;

  //Switch
  bool _fresher = false;

  //Check Box
  bool _I_currently_workhere = false;

  //Personal Information
  //index Textfild
  int _P_Job_Title = 0;
  int _P_Frist_Name = 0;
  int _P_Last_Name = 0;
  int _P_Email_Id = 0;
  int _P_Mobile_Numbres = 0;
  int _P_Birthday = 0;

  //ShowError
  String _Job_Title = "";
  String _Frist_name = "";
  String _Last_name = "";
  bool _onthrowError = false;

  //Personal Information
  int get P_Job_Title => _P_Job_Title;

  int get P_Frist_Name => _P_Frist_Name;

  int get P_Last_Name => _P_Last_Name;

  int get P_Email_Id => _P_Email_Id;

  int get P_Mobile_Numbres => _P_Mobile_Numbres;

  int get P_Birthday => _P_Birthday;

  //Show Error
  String get JobTitle => _Job_Title;

  String get FristName => _Frist_name;

  String get LastName => _Last_name;

  bool get onthrowError => _onthrowError;

  //Visibility
  bool get Upload_lock => _Upload_lock;

  bool get Personal_Information => _Personal_Information;

  bool get Address => _Address;

  bool get Education_Details => _Education_Details;

  bool get Work_Experience => _Work_Experience;

  bool get Salary => _Salary;

  bool get Work_Location => _Work_Location;

  //Switch
  bool get fresher => _fresher;

  //Check Box

  bool get I_currently_workhere => _I_currently_workhere;

  //Check Box
  int get selectedCheckboxIndex => _selectedCheckboxIndex;

  //Visibility
  void Upload_lock_fun() {
    _Upload_lock = !_Upload_lock;
    notifyListeners();
  }

  void Personal_Information_fun() {
    _Personal_Information = !_Personal_Information;
    notifyListeners();
  }

  void Address_fun() {
    _Address = !_Address;
    notifyListeners();
  }

  void Education_Details_fun() {
    _Education_Details = !_Education_Details;
    notifyListeners();
  }

  void Work_Experience_fun() {
    _Work_Experience = !_Work_Experience;
    notifyListeners();
  }

  void Salary_fun() {
    _Salary = !_Salary;
    notifyListeners();
  }

  void Work_Location_fun() {
    _Work_Location = !_Work_Location;
    notifyListeners();
  }

  //I'm Not a Fresher
  void Fresher_fun(val) {
    _fresher = val;
    notifyListeners();
  }

  //file Uplode
  Future<void> picksinglefile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      _file = result.files.first;
      _file == null ? false : OpenAppFile.open(_file!.path.toString());
    }
    notifyListeners();
  }

  //Personal Information
  void P_Job_Title_fun() {
    _P_Job_Title = 0;
    notifyListeners();
  }

  void P_Frist_Name_fun() {
    _P_Frist_Name = 1;
    notifyListeners();
  }

  void P_Last_Name_fun() {
    _P_Last_Name = 2;
    notifyListeners();
  }

  void P_Email_ID_fun() {
    _P_Email_Id = 3;
    notifyListeners();
  }

  void P_Mobile_Numbres_fun() {
    _P_Mobile_Numbres = 4;
    notifyListeners();
  }

  void P_Birthday_fun() {
    _P_Birthday = 5;
    notifyListeners();
  }

  //Checkmark is a male or female
  void handleCheckboxValueChanged(int index) {
    if (_selectedCheckboxIndex == index) {
      _selectedCheckboxIndex = -1;
    } else {
      _selectedCheckboxIndex = index;
    }
    notifyListeners();
  }

  //Validation
  //Personal Information
  void JobTitle_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Job_Title = "Plese Input Your Job Title";
    } else {
      _onthrowError = true;
      _Job_Title = "";
    }
    notifyListeners();
  }
  void FristName_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Frist_name = "Plese Input Your Frist Name";
    } else {
      _onthrowError = true;
      _Frist_name = "";
    }
    notifyListeners();
  }
  void LastName_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Last_name = "Plese Input Your Last Name";
    } else {
      _onthrowError = true;
      _Last_name = "";
    }
    notifyListeners();
  }
}
