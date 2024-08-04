// ignore_for_file: file_names, non_constant_identifier_names, avoid_print, prefer_const_constructors, avoid_types_as_parameter_names, prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Location/jobtype_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Location/preferencetype_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Pop_Collection/CountryList_pop_controller.dart';

import '../../../../view/screen/Candidate/Menu/Home/Home.dart';
import '../../../../view/utils/app_String.dart';

class PreferenceControllers extends GetxController{
  var preferences = false.obs;
  var working_location = false.obs;
  var work_location = false.obs;
  var work_setup = false.obs;

  void preferences_fuction()=> preferences.value = true;
  void working_location_fuction()=> working_location.value = true;
  void work_location_fuction()=> work_location.value = true;
  void work_setup_fuction()=> work_setup.value = true;
}

class PreferenceController with ChangeNotifier {
  final JobtypeApiController Jobtype = Get.put(JobtypeApiController());
  final CountrylistPopController country = Get.put(CountrylistPopController());
  final PreferencetypeApiController Preferencetype = Get.put(PreferencetypeApiController());

  ValueNotifier<bool> _isState = ValueNotifier<bool>(false);
  ValueNotifier<bool> _isState2 = ValueNotifier<bool>(false);

  get isState => _isState;
  get isState2 => _isState2;

  bool _hasInitialized = false;

  //Preference
  bool _preference = false;
  String _preference_string = '';

  //Working Location
  bool _cuntrycode1 = false;
  String _cuntrycodevalue1 = '';
  String _selectedState1 = '';

  //Work Location
  bool _cuntrycode2 = false;
  String _cuntrycodevalue2 = '';

  //Work Setup
  bool _worksetup = false;
  String _worksetup_string = '';

  //Working Location
  List _states1 = [];

  //Work Setup
  List _states2 = [];
  List _selectedStates = [];

  get preference => _preference;
  get preference_string => _preference_string;
  get cuntrycode1 => _cuntrycode1;
  get cuntrycodevalue1 => _cuntrycodevalue1;
  get selectedState1 => _selectedState1;
  get cuntrycode2 => _cuntrycode2;
  get cuntrycodevalue2 => _cuntrycodevalue2;
  get worksetup => _worksetup;
  get worksetup_string => _worksetup_string;
  get states1 => _states1;
  get states2 => _states2;
  List get selectedStates => _selectedStates;

  void onInit(BuildContext context) {
    if (!_hasInitialized) {
      _hasInitialized = true;
      _navigateAfterDelay(context);
    }
  }

  Future<void> _navigateAfterDelay(BuildContext context) async {
    Future.microtask(() async {
      Jobtype.JobtypeApiController_Fuction();
      country.CountrylistPopController_fuction();
      Preferencetype.PreferencetypeApiController_fuction();
    });
  }

  void Preference_fuction({required String text}){
      _preference = true;
      _preference_string = text;
      Get.back();
      notifyListeners();
  }

  void showLocationSelector_fuction(String stateName){
    _selectedState1 = stateName;
    _cuntrycode1 = true;
    notifyListeners();
  }

  void showLocationselector_location({required String cuntrycodevalue2, required List states2}){
    _cuntrycode2 = true;
    _cuntrycodevalue2 = cuntrycodevalue2;
    _states2 = states2;
    print(cuntrycodevalue2);
    selectedStates.clear();
    notifyListeners();
  }


  void showLocation_state(BuildContext context, bool isStateSelected, String listing) {
    if (isStateSelected) {
      _selectedStates.add(listing);
    } else if (_selectedStates.length < 2) {
      _selectedStates.add(listing);
    } else if (_selectedStates.length == 2) {
      Get.back();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Only 2 states can be selected')));
      Get.back();
    }
    updatevalue();
    notifyListeners();
  }

  void WorkSetup_fuction(String){
    _worksetup = true;
    _worksetup_string = String;
    print(worksetup_string);
    Get.back();
    notifyListeners();
  }

  void updatevalue() {
    _isState2.value;
    notifyListeners();
  }

  void updateSelectedState(bool stateSelected) {
    _isState.value = stateSelected;
    notifyListeners();
  }
}
