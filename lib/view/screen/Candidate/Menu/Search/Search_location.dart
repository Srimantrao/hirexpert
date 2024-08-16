// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, prefer_const_constructors, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../controller/User_Controller/Candidate_Controller/UserJob_Search_listing_Controller/User_Search_Controller.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_color.dart';
import '../../../../utils/app_icon.dart';
import 'Search_find.dart';

class Search_location extends StatelessWidget {
  final Function(String, String)? onLocationSelected;

  Search_location({super.key, this.onLocationSelected});

  @override
  Widget build(BuildContext context) {
    context.read<UserSearchController>().onInit(context);
    final Search = Provider.of<UserSearchController>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        elevation: 0,
        surfaceTintColor: AppColor.Full_body_color,
        title: Text(Search_text.Search_Jobss, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Text(Search_text.cancel, style: TextStyle(color: AppColor.Error_color, fontWeight: FontWeight.w600, fontSize: Get.width / 23)),
          ),
          SizedBox(width: Get.width / 40),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: Search_text.Keyword,
                      hintStyle: TextStyle(color: AppColor.subcolor),
                      prefixIcon: Icon(Icons.search, color: AppColor.subcolor),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor.Bottam_color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor.Bottam_color),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  Consumer<UserSearchController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return GestureDetector(
                        onTap: () {
                          showBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context, inscgange) {
                                  return Container(
                                    height: Get.height / 1,
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
                                              Text(Search_text.Bottam_bar, style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 23)),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: SvgPicture.asset(AppIcons.cancel),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Divider(thickness: 1, color: AppColor.subcolor),
                                          SizedBox(height: Get.height / 50),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: Get.width / 2.5,
                                                  child: ListView.builder(
                                                    itemCount: Search.country.countrylist['data'].length,
                                                    itemBuilder: (BuildContext context, int index) {
                                                      bool isSelected = Search.selectedCountryId == Search.country.countrylist['data'][index]['CountryId'];
                                                      return GestureDetector(
                                                        onTap: () {
                                                          inscgange(() {
                                                            Search.updateCountrySelection(
                                                                countryId: Search.country.countrylist['data'][index]['CountryId'],
                                                                provinceList: Search.country.countrylist['data'][index]['ProvinceList'] ?? [],
                                                            );
                                                          });
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
                                                              Search.country.countrylist['data'][index]['Country'],
                                                              textAlign: TextAlign.center,
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
                                                (Search.selectedCountryId != null && Search.states.isNotEmpty)
                                                    ? Expanded(
                                                        child: ListView.builder(
                                                          itemCount: Search.states.length,
                                                          itemBuilder: (BuildContextcontext, int index) {
                                                            bool isStateSelected = Search.selectedState == Search.states[index]['Name'];
                                                            return GestureDetector(
                                                              onTap: () {
                                                                inscgange(() {
                                                                  Search.updateStateSelection(Search.states[index]['Name']);
                                                                  if (onLocationSelected != null) {
                                                                    onLocationSelected!(Search.selectedCountryId, Search.selectedState);
                                                                  }
                                                                });
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
                                                                  child: Text(Search.states[index]['Name'],
                                                                    textAlign: TextAlign.center,
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
                                },
                              );
                            },
                          );
                        },
                        child: Container(
                          height: Get.height / 15,
                          width: Get.width,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: AppColor.Bottam_color),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: Get.width / 30),
                              Icon(Icons.location_on_outlined, color: AppColor.subcolor),
                              SizedBox(width: Get.width / 40),
                              ValueListenableBuilder(
                                valueListenable: Search.selectboll,
                                builder: (BuildContext context, bool value, Widget? child) {
                                  return (value)
                                      ? Text(Search.select, style: TextStyle(color: AppColor.black_all, fontSize: Get.width / 24))
                                      : Text(Search_text.Select_Location, style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 24));
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ValueListenableBuilder(
                valueListenable: Search.selectmain,
                builder: (BuildContext context, value, Widget? child) {
                  return Visibility(
                 visible: Search.Savebutton,
                   child:Search_find(onString: Search.select),
               );},
              )
            ],
          ),
        ),
      ),
    );
  }
}
