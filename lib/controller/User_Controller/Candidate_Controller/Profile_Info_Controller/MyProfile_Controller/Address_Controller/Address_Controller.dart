// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import '../../../../../API_Controller/Candidate/Collction/Pop_Collection/CountryList_pop_controller.dart';

class AddressProvider extends GetxController {
  CountrylistPopController Countrylist = Get.put(CountrylistPopController());

  var selectedProvince = ''.obs; // Observable for selected province
  var provinceId = ''.obs; // Observable for province ID
  var cityList = <String>[].obs; // Observable for city list
  var selectedCityId = ''.obs; // Observable for selected city ID
  var selectedProvinceBool = false.obs; // Observable for toggle state

  void toggleProvinceSelection() {
    selectedProvinceBool.value = !selectedProvinceBool.value;
  }

  void setSelectedProvince(String value) {
    selectedProvince.value = value;
    List<String> parts = value.split(':');
    provinceId.value = parts[0].trim();

    // Assuming `Countrylist.countrylist` is accessible
    cityList.value = (Countrylist.countrylist['data'][0]['ProvinceList']
        .firstWhere((province) => province['ProvinceId'] == provinceId.value)['CityList'] as List)
        .map<String>((city) => "${city['CityId']} : ${city['CityName']}")
        .toList();

    selectedCityId.value = ''; // Reset selected city
  }
}
