// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class LocationSelector extends StatelessWidget {
  final Map<String, dynamic> countryList;
  final String initialCountryId;
  final Function(String, String) onLocationSelected;

  LocationSelector({required this.countryList, required this.initialCountryId, required this.onLocationSelected});

  @override
  Widget build(BuildContext context) {
    String selectedCountryId = initialCountryId;
    List<dynamic> states = countryList['data'].firstWhere((country) => country['CountryId'] == selectedCountryId)['ProvinceList'];
    String selectedState = '';

    return Container(
      height: Get.height / 1.1,
      width: Get.width,
      decoration: BoxDecoration(color: AppColor.Full_body_color),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height / 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 23)),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(AppIcons.cancel),
                ),
              ],
            ),
            SizedBox(height: Get.height / 50),
            Divider(
              thickness: 1,
              color: AppColor.subcolor,
            ),
            SizedBox(height: Get.height / 50),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: ListView.builder(
                      itemCount: countryList['data'].length,
                      itemBuilder: (BuildContext context, int index) {
                        bool isSelected = selectedCountryId == countryList['data'][index]['CountryId'];
                        return GestureDetector(
                          onTap: () {
                            selectedCountryId = countryList['data'][index]['CountryId'];
                            states = countryList['data'][index]['ProvinceList'];
                            selectedState = '';
                            (context as Element).markNeedsBuild(); // Force rebuild to update UI
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                            width: Get.width / 4,
                            height: Get.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Get.width / 50),
                              color: isSelected ? AppColor.Button_color : AppColor.Full_body_color,
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                countryList['data'][index]['Country'],
                                style: TextStyle(
                                  fontSize: Get.width / 28,
                                  color: isSelected ? AppColor.Full_body_color : AppColor.black_all,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: Get.width / 30),
                  selectedCountryId.isNotEmpty ? Expanded(
                          child: ListView.builder(
                            itemCount: states.length,
                            itemBuilder: (BuildContext context, int index) {
                              bool isStateSelected = selectedState == states[index]['Name'];
                              return GestureDetector(
                                onTap: () {
                                  selectedState = states[index]['Name'];
                                  onLocationSelected(selectedCountryId, selectedState);
                                  Get.back();
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                                  width: Get.width / 4,
                                  height: Get.height / 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Get.width / 50),
                                    color: isStateSelected ? AppColor.Button_color : AppColor.Full_body_color,
                                  ),
                                  child: Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      states[index]['Name'],
                                      style: TextStyle(
                                        fontSize: Get.width / 28,
                                        color: isStateSelected ? AppColor.Full_body_color : AppColor.black_all,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showLocationSelector({
  required BuildContext context,
  required Map<String, dynamic> countryList,
  required String initialCountryId,
  required Function(String, String) onLocationSelected,
  required ValueNotifier<bool> isStateNotifier,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return LocationSelector(
        countryList: countryList,
        initialCountryId: initialCountryId,
        onLocationSelected: (String countryId, String stateName) {
          onLocationSelected(countryId, stateName);
          isStateNotifier.value = true;
        },
      );
    },
  );
}
