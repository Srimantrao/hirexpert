
// ignore_for_file: prefer_final_fields, non_constant_identifier_names, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../API_Controller/Candidate/Collction/Location/preferencetype_API_controller.dart';
import '../../../API_Controller/Candidate/Collction/Pop_Collection/CountryList_pop_controller.dart';

class UserSearchController with ChangeNotifier {
  final CountrylistPopController country = Get.put(CountrylistPopController());
  final PreferencetypeApiController Preferencetype = Get.put(PreferencetypeApiController());

  String _select = "";

   bool _hasInitialized = false;

  void onInit(BuildContext context) {
    if (!_hasInitialized) {
      _hasInitialized = true;
      _bottamApiCall(context);
    }
  }

  Future<void> _bottamApiCall(BuildContext context) async {
    await Future.microtask((){
      country.CountrylistPopController_fuction();
    });
  }

  get select => _select;

  ValueNotifier<bool> _selectboll = ValueNotifier<bool>(false);
  ValueNotifier<bool> _selectmain = ValueNotifier<bool>(false);

  get selectboll => _selectboll;
  get selectmain => _selectmain;

  void selectboll_fun() {_selectboll.value = true;notifyListeners();}
  void select_main() {_selectmain.value = true;notifyListeners();}

  bool _Savebutton = false;

  get Savebutton => _Savebutton;

  var _selectedCountryId;
  String _selectedState = '';
  List _states = [];

  get selectedCountryId => _selectedCountryId;
  String get selectedState => _selectedState;
  get states => _states;

  void updateCountrySelection({required String countryId, required List provinceList}) {
    _selectedCountryId = countryId;
    _states = provinceList;
    _selectedState = '';
    notifyListeners();
  }

  void updateStateSelection(String stateName) {
    _selectedState = stateName;
    _select = stateName;
    _Savebutton = true;
    _selectboll.value = true;
    _selectmain.value = true;
    notifyListeners();
  }

  set selectedState(String stateName) {
    _selectedState = stateName;
    notifyListeners();
  }
}
