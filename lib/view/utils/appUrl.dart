// ignore_for_file: constant_identifier_names, file_names

class AppUrl {
  static const WebSocket = "wss://echo.websocket.events";
  static const Hirexpert = "https://cidevelop.weingenious.in/hirexpert/";
  static const Base_location = "$Hirexpert/api/v1/";

  //Candidate
  //Popup
  static const preferredWork = "$Base_location/user/preferredWorkSetupList";
  static const Jobtype = "$Base_location/user/jobTypeList";
  static const interest = "$Base_location/user/candidateTech";
  static const degreeList = "$Base_location/user/degreeList";
  static const technologyList = "$Base_location/user/technologyList";

  //Show All Data
  static const Search_Job =
      "$Base_location/Advertisedjob/JobFilterList?TechId=3";
  static const SearchJob = "$Base_location/Advertisedjob/SearchJob";
  static const JobInterviewList =
      "$Base_location/Advertisedjob/JobInterviewList";

  //Collcetion
  static const login = "$Base_location/user/login";
  static const Sinup = "$Base_location/user/candidateSignup";
  static const OTP = "$Base_location/user/candidateOTPVerified/NTU=";
  static const Change_password = "$Base_location/user/changePassword";
  static const tagList = "$Base_location/user/tagList";
  static const Concern = "$Base_location/Advertisedjob/addConcern";
  static const count = "$Base_location/Advertisedjob/JobStatusWiseCountList";
  static const savelist = "$Base_location/Advertisedjob/FavouriteJobList";

  //Menu
  static const Offer = "$Base_location/Advertisedjob/AdvertiseJob";
  static const IsFavourite = "$Base_location/Advertisedjob/CanFavourite";
  static const Applyed = "$Base_location/Advertisedjob/JobApply";
  static const isApplyed = "$Base_location/Advertisedjob/jobDetails";

  //Details
  static const details = "$Base_location/Advertisedjob/JobDetails";

  //Notification
  static const Notification =
      "$Hirexpert/api/v1/user/notificationList?UserType=Candidate";

  //Employer
  //Collcetion
  static const Employer_Signup = "$Hirexpert/api/v1/user/employerSignup";
}
