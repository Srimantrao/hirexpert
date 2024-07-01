// ignore_for_file: constant_identifier_names, file_names

class AppUrl {
  static const WebSocket = "wss://echo.websocket.events";
  static const Hirexpert = "https://cidevelop.weingenious.in/hirexpert/";

  //Candidate
  //Popup
  static const preferredWork = "$Hirexpert/api/v1/user/preferredWorkSetupList";
  static const Jobtype = "$Hirexpert/api/v1/user/jobTypeList";
  static const interest = "$Hirexpert/api/v1/user/candidateTech";
  static const degreeList = "$Hirexpert/api/v1/user/degreeList";
  static const technologyList = "$Hirexpert/api/v1/user/technologyList";

  //Show All Data
  static const Search_Job = "$Hirexpert/api/v1/Advertisedjob/JobFilterList?TechId=3";
  static const SearchJob = "$Hirexpert/api/v1/Advertisedjob/SearchJob";
  static const JobInterviewList = "$Hirexpert/api/v1/Advertisedjob/JobInterviewList";

  //Collcetion
  static const login = "$Hirexpert/api/v1/user/login";
  static const Sinup = "$Hirexpert/api/v1/user/candidateSignup";
  static const OTP = "$Hirexpert/api/v1/user/candidateOTPVerified/NTU=";
  static const Change_password = "$Hirexpert/api/v1/user/changePassword";
  static const tagList = "$Hirexpert/api/v1/user/tagList";
  static const Concern = "$Hirexpert/api/v1/Advertisedjob/addConcern";
  static const count = "$Hirexpert/api/v1/Advertisedjob/JobStatusWiseCountList";
  static const savelist = "$Hirexpert/api/v1/Advertisedjob/FavouriteJobList";

  //Notification
  static const Notification = "$Hirexpert/api/v1/user/notificationList?UserType=Candidate";

  //Employer
  //Collcetion
  static const Employer_Signup = "$Hirexpert/api/v1/user/employerSignup";
}
