// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/foundation.dart';

class Notification_Controller with ChangeNotifier {
  bool _Update_me_once_per_week = false;
  bool _Update_me_every_2_weeks = false;
  bool _Update_me_once_a_month = false;
  bool _Id_prefer_no_job_match_notifications = false;
  bool _Update_me_immediately_when_new_job_available = false;

  bool _Employers_yes = false;
  bool _Employers_no = false;

  bool _Resources_yes = false;
  bool _Resources_no = false;

  bool get Update_me_once_per_week => _Update_me_once_per_week;

  bool get Update_me_every_2_weeks => _Update_me_every_2_weeks;

  bool get Update_me_once_a_month => _Update_me_once_a_month;

  bool get Id_prefer_no_job_match_notifications =>
      _Id_prefer_no_job_match_notifications;

  bool get Update_me_immediately_when_new_job_available =>
      _Update_me_immediately_when_new_job_available;

  bool get Employers_yes => _Employers_yes;

  bool get Employers_no => _Employers_no;

  bool get Resources_yes => _Resources_yes;

  bool get Resources_no => _Resources_no;

  void Update_me_once_per_week_fun(val) {
    _Update_me_once_per_week = val!;
    notifyListeners();
  }

  void Update_me_every_2_weeks_fun(val) {
    _Update_me_every_2_weeks = val!;
    notifyListeners();
  }

  void Update_me_once_a_month_fun(val) {
    _Update_me_once_a_month = val!;
    notifyListeners();
  }

  void Id_prefer_no_job_match_notifications_fun(val) {
    _Id_prefer_no_job_match_notifications = val!;
    notifyListeners();
  }

  void Update_me_immediately_when_new_job_available_fun(val) {
    _Update_me_immediately_when_new_job_available = val!;
    notifyListeners();
  }

  void Employers_yes_fun(val) {
    _Employers_yes = val!;
    notifyListeners();
  }

  void Employers_no_fun(val) {
    _Employers_no = val!;
    notifyListeners();
  }

  void Resources_yes_fun(val) {
    _Resources_yes = val!;
    notifyListeners();
  }

  void Resources_no_fun(val) {
    _Resources_no = val!;
    notifyListeners();
  }
}
