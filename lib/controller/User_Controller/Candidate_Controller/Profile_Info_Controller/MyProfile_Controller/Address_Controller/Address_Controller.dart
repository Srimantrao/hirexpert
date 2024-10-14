// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import '../../../../../API_Controller/Candidate/Collction/Pop_Collection/CountryList_pop_controller.dart';

class AddressProvider extends GetxController {
  CountrylistPopController Countrylist = Get.put(CountrylistPopController());

  var selectedProvince = ''.obs;
  var provinceId = ''.obs;
  var cityList = <String>[].obs;
  var selectedCityId = ''.obs;
  var selectedProvinceBool = false.obs;
  var selectedCountry = ''.obs;


  void toggleProvinceSelection() {
    selectedProvinceBool.value = !selectedProvinceBool.value;
  }

  void setSelectedProvince(String value) {
    selectedProvince.value = value;
    List<String> parts = value.split(':');
    provinceId.value = parts[0].trim();
    cityList.value = (Countrylist.countrylist['data'][0]['ProvinceList'].firstWhere((province) => province['ProvinceId'] == provinceId.value)['CityList'] as List).map<String>((city) => "${city['CityId']} : ${city['CityName']}").toList();
    selectedCityId.value = '';
  }

  void toggleCitySelection() {
    selectedProvinceBool.value = !selectedProvinceBool.value;
  }

  void setSelectedCity(String city) {
    selectedCityId.value = city;
  }

  void setSelectedCountry(String country) {
    selectedCountry.value = country;
  }
}
