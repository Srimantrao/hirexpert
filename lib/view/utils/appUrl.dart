// ignore_for_file: constant_identifier_names, file_names

class AppUrl {
  static const WebSocket = "wss://echo.websocket.events";
  static const Hirexpert = "http://192.168.1.137/stage_gohire/";

  //Popup
  static const preferredWork = "$Hirexpert/api/v1/user/preferredWorkSetupList";
  static const Jobtype = "$Hirexpert/api/v1/user/jobTypeList";

  //Show All Data
  static const Search_Job =
      "$Hirexpert/api/v1/Advertisedjob/JobFilterList?TechId=3";
  static const SearchJob = "$Hirexpert/api/v1/Advertisedjob/SearchJob";

  //Collcetion
  static const login = "$Hirexpert/api/v1/user/login";
}
