// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_app_file/open_app_file.dart';

import '../../../../modal/Dropdowns/drops.dart';

class My_ProfileController with ChangeNotifier {
  //Personal Information
  TextEditingController Job_Titales = TextEditingController();
  TextEditingController Frist_Name_Profile = TextEditingController();
  TextEditingController Last_Name_Profile = TextEditingController();
  TextEditingController Email_id_Profile = TextEditingController();
  TextEditingController Mobile_Numbres = TextEditingController();
  TextEditingController BirthDay = TextEditingController();

  //Adress
  TextEditingController Street_Address = TextEditingController();
  TextEditingController Post_Code = TextEditingController();
  TextEditingController Select_Province = TextEditingController();
  TextEditingController Select_City = TextEditingController();

  //Educational Details
  TextEditingController Degree = TextEditingController();
  TextEditingController Specialisation = TextEditingController();
  TextEditingController Institute_Name = TextEditingController();
  TextEditingController Passing_Year = TextEditingController();

  //Work Experience
  TextEditingController Enter_The_Comppany_name = TextEditingController();
  TextEditingController Designation = TextEditingController();
  TextEditingController Year = TextEditingController();

  //Salary
  TextEditingController CTCss = TextEditingController();
  TextEditingController Expanded = TextEditingController();

  //Work Location
  TextEditingController CTC2_text = TextEditingController();
  TextEditingController Preffered_Working_Location_text = TextEditingController();
  TextEditingController Preffered_Work_Setup_text = TextEditingController();
  TextEditingController Job_Type_Preferrence_text = TextEditingController();
  TextEditingController Enter_Notice_Period_text = TextEditingController();

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

  //Check Conditon
  //Personal Information
  //index Textfild
  int _P_Job_Title = 0;
  int _P_Frist_Name = 0;
  int _P_Last_Name = 0;
  int _P_Email_Id = 0;
  int _P_Mobile_Numbres = 0;
  int _P_Birthday = 0;

  //Address
  int _P_Street_Adress = 0;
  int _P_Post_Code = 0;
  int _P_Select_Province = 0;
  int _P_Select_City = 0;

  //Educational Details
  int _P_Degree = 0;
  int _P_Specialisation = 0;
  int _P_Instiute_name = 0;
  int _P_Passing_Year = 0;

  //Work Experience
  int _P_fresher = 0;
  int _P_Years_Selection = 0;
  int _P_Month_Selection = 0;
  int _P_Company_Name = 0;
  int _P_Designation = 0;
  int _P_Entry_Date = 0;
  int _P_Last_Date = 0;

  //Salary
  int _CTC = 0;
  int _Expected = 0;

  //Work Location
  int _P_CTC_Current = 0;
  int _Preffered_Working = 0;
  int _Preffered_Work_Working = 0;
  int _Job_Type_Preferrence = 0;
  int _Notice_Period = 0;

  //ShowError
  //Personal Information
  String _Job_Title = "";
  String _Frist_name = "";
  String _Last_name = "";
  String _Email_Id = "";
  String _Mobile_Numbress = "";
  String _Date_Of_Birth = "";

  //Adress
  String _Street_Adress = "";
  String _Post_Codes = "";
  String _Select_Provinces = "";
  String _Select_Citys = "";

  //Education Details
  String _Degrees = "";
  String _Specialisations = "";
  String _Institute_names = "";

  //Work Experience
  String _Companys_names = "";
  String _Designations = "";

  //Salary
  String _CTCS = "";
  String _Expecteds = "";

  //Work Location
  String _P_CTC_Currents = "";
  String _Preffered_Workings = "";
  String _Preffered_Work_Workings = "";
  String _Job_Type_Preferrences = "";
  String _Notice_Periods = "";

  //Condition true & false
  bool _onthrowError = false;

  //List Pass
  String _selectedYear = "";

  //Check Conditon
  //Personal Information
  int get P_Job_Title => _P_Job_Title;
  int get P_Frist_Name => _P_Frist_Name;
  int get P_Last_Name => _P_Last_Name;
  int get P_Email_Id => _P_Email_Id;
  int get P_Mobile_Numbres => _P_Mobile_Numbres;
  int get P_Birthday => _P_Birthday;

  //Address
  int get P_Street_Adress => _P_Street_Adress;
  int get P_Post_Code => _P_Post_Code;
  int get P_Select_Province => _P_Select_Province;
  int get P_Select_City => _P_Select_City;

  //Educational Details
  int get P_Degree => _P_Degree;
  int get P_Specialisation => _P_Specialisation;
  int get P_Instiute_name => _P_Instiute_name;
  int get P_Passing_Year => _P_Passing_Year;

  //Work Experience
  int get P_fresher => _P_fresher;
  int get P_Years_Selection => _P_Years_Selection;
  int get P_Month_Selection => _P_Month_Selection;
  int get P_Company_Name => _P_Company_Name;
  int get P_Designation => _P_Designation;
  int get P_Entry_Date => _P_Entry_Date;
  int get P_Last_Date => _P_Last_Date;

  //Salary
  int get CTC => _CTC;
  int get Expected => _Expected;

  //Working Location
  int get P_CTC_Current => _P_CTC_Current;
  int get Preffered_Working => _Preffered_Working;
  int get Preffered_Work_Working => _Preffered_Work_Working;
  int get Job_Type_Preferrence => _Job_Type_Preferrence;
  int get Notice_Period => _Notice_Period;

  //Show Error
  //Personal Information
  String get JobTitle => _Job_Title;
  String get FristName => _Frist_name;
  String get LastName => _Last_name;
  String get Email_Id => _Email_Id;
  String get Mobile_Numbress => _Mobile_Numbress;
  String get Date_Of_Birth => _Date_Of_Birth;

  //Adress
  String get Street_Adress => _Street_Adress;
  String get Post_Codes => _Post_Codes;
  String get Select_Provinces => _Select_Provinces;
  String get Select_Citys => _Select_Citys;

  //Educational Details
  String get Degrees => _Degrees;
  String get Specialisations => _Specialisations;
  String get Institute_names => _Institute_names;

  //Work Experience
  String get Companys_names => _Companys_names;
  String get Designations => _Designations;

  //Salary
  String get CTCS => _CTCS;
  String get Expecteds => _Expecteds;

  //Work Location
  String get P_CTC_Currents => _P_CTC_Currents;
  String get Preffered_Workings => _Preffered_Workings;
  String get PPreffered_Work_Workings => _Preffered_Work_Workings;
  String get Job_Type_Preferrences => _Job_Type_Preferrences;
  String get Notice_Periods => _Notice_Periods;

  //Error Throw
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

  //List Passing
  String get selectedYear => _selectedYear;

  //Visibility
  void Upload_lock_fun() {_Upload_lock = !_Upload_lock;notifyListeners();}
  void Personal_Information_fun() {_Personal_Information = !_Personal_Information;notifyListeners();}
  void Address_fun() {_Address = !_Address;notifyListeners();}
  void Education_Details_fun() {_Education_Details = !_Education_Details;notifyListeners();}
  void Work_Experience_fun() {_Work_Experience = !_Work_Experience;notifyListeners();}
  void Salary_fun() {_Salary = !_Salary;notifyListeners();}
  void Work_Location_fun() {_Work_Location = !_Work_Location;notifyListeners();}

  //I'm Not a Fresher
  void Fresher_fun(val) {_fresher = val;notifyListeners();}

  //file Uplode
  Future<void> picksinglefile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      _file = result.files.first;
      _file == null ? false : OpenAppFile.open(_file!.path.toString());
    }
    notifyListeners();
  }

  //Check Conditon

  //Personal Information
  void P_Job_Title_fun() {_P_Job_Title = 0;notifyListeners();}
  void P_Frist_Name_fun() {_P_Frist_Name = 1;notifyListeners();}
  void P_Last_Name_fun() {_P_Last_Name = 2;notifyListeners();}
  void P_Email_ID_fun() {_P_Email_Id = 3;notifyListeners();}
  void P_Mobile_Numbres_fun() {_P_Mobile_Numbres = 4;notifyListeners();}
  void P_Birthday_fun() {_P_Birthday = 5;notifyListeners();}

  //Adress
  void P_Street_Adress_Fun() {_P_Street_Adress = 0;notifyListeners();}
  void P_Post_Code_Fun() {_P_Post_Code = 1;notifyListeners();}
  void P_Select_Province_Fun() {_P_Select_Province = 2;notifyListeners();}
  void P_Select_City_Fun() {_P_Select_City = 3;notifyListeners();}

  //Educational Details
  void P_Degree_fun() {_P_Degree = 0;notifyListeners();}
  void P_Specialisation_fun() {_P_Specialisation = 1;notifyListeners();}
  void P_Instiute_name_fun() {_P_Instiute_name = 2;notifyListeners();}
  void P_Passing_Year_fun() {_P_Passing_Year = 3;notifyListeners();}

  //Work Experience
  void P_Years_Selection_fun() {_P_Years_Selection = 0;notifyListeners();}
  void P_Month_Selection_fun() {_P_Month_Selection = 1;notifyListeners();}
  void P_Company_Name_fun() {_P_Company_Name = 2;notifyListeners();}
  void P_Designation_fun() {_P_Designation = 3;notifyListeners();}
  void P_Entry_Date_fun() {_P_Entry_Date = 4;notifyListeners();}
  void P_Last_Date_fun() {_P_Last_Date = 5;notifyListeners();}
  void Freshers_fun() {_P_fresher = 6;notifyListeners();}

  //Salary
  void CTC_Fun() {_CTC = 0;notifyListeners();}
  void Expected_Fun() {_Expected = 1;notifyListeners();}

  //Work Location
  void P_CTC_Current_fun() {_P_CTC_Current = 0;notifyListeners();}
  void Preffered_Working_fun() {_Preffered_Working = 1;notifyListeners();}
  void Preffered_Work_Working_fun() {_Preffered_Work_Working = 2;notifyListeners();}
  void Job_Type_Preferrence_fun() {_Job_Type_Preferrence = 3;notifyListeners();}

  void Notice_Period_fun() {_Notice_Period = 4;notifyListeners();}

  //Checkmark is a male or female
  void handleCheckboxValueChanged(int index) {
    if (_selectedCheckboxIndex == index) {
      _selectedCheckboxIndex = index;
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
      _Job_Title = "Plese Input Your Job Title !";
    } else {
      _onthrowError = true;
      _Job_Title = "";
    }
    notifyListeners();
  }

  void FristName_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Frist_name = "Plese Input Your Frist Name !";
    } else {
      _onthrowError = true;
      _Frist_name = "";
    }
    notifyListeners();
  }

  void LastName_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Last_name = "Plese Input Your Last Name !";
    } else {
      _onthrowError = true;
      _Last_name = "";
    }
    notifyListeners();
  }

  void Email_ID_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Email_Id = "Plese Input Your Email Address !";
    } else {
      _onthrowError = true;
      _Email_Id = "";
    }
    notifyListeners();
  }

  void Mobile_Numbress_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Mobile_Numbress = "Plese Input Your Mobile Numbres !";
    } else {
      _onthrowError = true;
      _Mobile_Numbress = "";
    }
    notifyListeners();
  }

  void Date_OF_Bithday_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Date_Of_Birth = "Plese Input Your Bith Dath !";
    } else {
      _onthrowError = true;
      _Date_Of_Birth = "";
    }
    notifyListeners();
  }

  //Adress
  void Street_Adress_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Street_Adress = "Plese Input Your Street Adress !";
    } else {
      _onthrowError = true;
      _Street_Adress = "";
    }
    notifyListeners();
  }

  void Post_Codes_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Post_Codes = "Plese Input Your Post Code !";
    } else {
      _onthrowError = true;
      _Post_Codes = "";
    }
    notifyListeners();
  }

  void Select_Provinces_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Select_Provinces = "Plese Input Your Job Title !";
    } else {
      _onthrowError = true;
      _Select_Provinces = "";
    }
    notifyListeners();
  }

  void Select_Citys_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Select_Citys = "Plese Input Your Select City !";
    } else {
      _onthrowError = true;
      _Select_Citys = "";
    }
    notifyListeners();
  }

  //Educational Details
  void Degree_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Degrees = "Plese Input Your Degree !";
    } else {
      _onthrowError = true;
      _Degrees = "";
    }
    notifyListeners();
  }

  void Specialisation_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Specialisations = "Plese Input Your Specialisation !";
    } else {
      _onthrowError = true;
      _Specialisations = "";
    }
    notifyListeners();
  }

  void Institute_name_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Institute_names = "Plese Input Your Instiute Name !";
    } else {
      _onthrowError = true;
      _Institute_names = "";
    }
    notifyListeners();
  }

  //Work Experience
  void Companys_names_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Companys_names = "Plese Input Your Company Name !";
    } else {
      _onthrowError = true;
      _Companys_names = "";
    }
    notifyListeners();
  }

  void Designations_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Designations = "Plese Input Your Designation !";
    } else {
      _onthrowError = true;
      _Designations = "";
    }
    notifyListeners();
  }

  //Salary
  void CTCs_Validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _CTCS = "Plese Input Your CTCs !";
    } else {
      _onthrowError = true;
      _CTCS = "";
    }
    notifyListeners();
  }

  void Expected_Validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Expecteds = "Plese Input Your Expecteds !";
    } else {
      _onthrowError = true;
      _Expecteds = "";
    }
    notifyListeners();
  }

  //Work Location
  void P_CTC_Currents_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _P_CTC_Currents = "Plese Input Your Currents !";
    } else {
      _onthrowError = true;
      _P_CTC_Currents = "";
    }
    notifyListeners();
  }

  void Preffered_Workings_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Preffered_Workings = "Plese Input Your Working Location !";
    } else {
      _onthrowError = true;
      _Preffered_Workings = "";
    }
    notifyListeners();
  }

  void Preffered_Work_Workings_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Preffered_Work_Workings = "Plese Input Your Preffered !";
    } else {
      _onthrowError = true;
      _Preffered_Work_Workings = "";
    }
    notifyListeners();
  }

  void Job_Type_Preferrences_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Job_Type_Preferrences = "Plese Input Your Job Perferrence !";
    } else {
      _onthrowError = true;
      _Job_Type_Preferrences = "";
    }
    notifyListeners();
  }

  void Notice_Periods_validation(String val) {
    if (val.isEmpty) {
      _onthrowError = false;
      _Notice_Periods = "Plese Input Your Notice Period !";
    } else {
      _onthrowError = true;
      _Notice_Periods = "";
    }
    notifyListeners();
  }

  //Educational Details
  //Select Year
  void onSelectedItemChanged(int index) {_selectedYear = Years[index];notifyListeners();}

  //Work Experience
  //Check Box
  void Work_Check(val) {_I_currently_workhere = val!;notifyListeners();}
}
