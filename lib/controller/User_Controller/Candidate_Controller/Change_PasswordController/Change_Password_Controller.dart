// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class ChangePasswordController with ChangeNotifier {
  TextEditingController old_pass = TextEditingController();
  TextEditingController new_pass = TextEditingController();
  TextEditingController conf_pass = TextEditingController();

  //obscureText
  bool _o_pass = true;
  bool _n_pass = true;
  bool _c_pass = true;

  //Throw Error
  bool _Old_passing = false;
  String _Olding = "";
  String _Newing = "";
  String _Confarm_Newing = "";

  get o_pass => _o_pass;

  get n_pass => _n_pass;

  get c_pass => _c_pass;

  get Old_passing => _Old_passing;

  get Olding => _Olding;

  get Newing => _Newing;

  get Confarm_Newing => _Confarm_Newing;

  //obscureText
  //OLd Password
  void OldPassword_Fuction_obx() {
    _o_pass = !o_pass;
    notifyListeners();
  }

  //New password
  void NewPassword_fuction_obx() {
    _n_pass = !n_pass;
    notifyListeners();
  }

  //Confirm Password
  void Confirm_Password_obx() {
    _c_pass = !_c_pass;
    notifyListeners();
  }

  //Validation
  //Old Password
  void Old_Password_fuction(String val) {
    if (!val.contains("@")) {
      _Old_passing = true;
      _Olding = "@";
    } else if (!val.contains("5")) {
      _Old_passing = true;
      _Olding = "5";
    } else if (!val.contains("A")) {
      _Old_passing = true;
      _Olding = "A";
    } else {
      _Old_passing = false;
      _Olding = "";
    }
    notifyListeners();
  }

  //New Password
  void new_password_fuction(String val) {
    if (!val.contains("@")) {
      _Old_passing = true;
      _Newing = "@";
    } else if (!val.contains("5")) {
      _Old_passing = true;
      _Newing = "5";
    } else if (!val.contains("A")) {
      _Old_passing = true;
      _Newing = "A";
    } else {
      _Old_passing = false;
      _Newing = "";
    }
    notifyListeners();
  }

  //Confirm Password
  void Confirm_Password(String val) {
    if (!val.contains("@")) {
      _Old_passing = true;
      _Confarm_Newing = "@";
    } else if (!val.contains("5")) {
      _Old_passing = true;
      _Confarm_Newing = "5";
    } else if (!val.contains("A")) {
      _Old_passing = true;
      _Confarm_Newing = "A";
    } else {
      _Old_passing = false;
      _Confarm_Newing = "";
    }
    notifyListeners();
  }

  //Button
  void Button_Fuction() {
    if (old_pass.text.isEmpty) {
      _Old_passing = true;
      _Olding = "Plese Input Old Password";
    } else {
      _Old_passing = false;
      _Olding = "";
    }
    if (new_pass.text.isEmpty) {
      _Old_passing = true;
      _Newing = "Plese Input Old Password";
    } else {
      _Old_passing = false;
      _Newing = "";
    }
    if (conf_pass.text.isEmpty) {
      _Old_passing = true;
      _Confarm_Newing = "Plese Input Old Password";
    } else {
      _Old_passing = false;
      _Confarm_Newing = "";
    }
    notifyListeners();
  }
}
