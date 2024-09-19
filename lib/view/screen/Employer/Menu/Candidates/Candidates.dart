// ignore_for_file: avoid_print, file_names, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';
import '../../../../../controller/User_Controller/Candidate_Controller/UserJob_Search_listing_Controller/User_Search_Controller.dart';
import '../../../../utils/app_String.dart';
import '../My_Job/Live_jobs/Live_Jobs_Ditails.dart';

class Candidates extends StatefulWidget {
  final Function(String, String)? onLocationSelected;

  const Candidates({super.key, this.onLocationSelected});

  @override
  State<Candidates> createState() => _CandidatesState();
}

class _CandidatesState extends State<Candidates> {
  @override
  void initState() {
    super.initState();
    context.read<UserSearchController>().onInit(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final searchController = Provider.of<UserSearchController>(context, listen: false);
    final Search = Provider.of<UserSearchController>(context,listen: false);
    return Scaffold(
      backgroundColor: AppColor.Full_body_color,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(color: AppColor.Full_body_color),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0,
                backgroundColor: AppColor.Full_body_color,
                pinned: false,
                collapsedHeight: Get.height / 4,
                automaticallyImplyLeading: false,
                flexibleSpace: Container(
                  height: Get.height / 4,
                  width: Get.width,
                  decoration: BoxDecoration(color: AppColor.Full_body_color),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                    child: Column(
                      children: [
                        SizedBox(height: Get.height / 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(My_Jobes_text.My_Jobs, style: TextStyle(fontSize: Get.height / 40, fontWeight: FontWeight.w600)),
                            Row(
                              children: [
                                Container(
                                  height: Get.height / 20,
                                  width: Get.width / 3.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Get.width / 50),
                                    color: AppColor.Button_color,
                                  ),
                                  child: Center(
                                    child: Text(My_Jobes_text.Post_Jobs, style: TextStyle(fontSize: Get.width / 27, color: AppColor.Full_body_color)),
                                  ),
                                ),
                                SizedBox(width: Get.width / 50),
                                Icon(Icons.notifications_none_sharp, color: AppColor.select_check_color, size: 30),
                                SizedBox(width: Get.width / 50),
                                Icon(Icons.monitor_weight_outlined, color: AppColor.select_check_color, size: 30),
                                SizedBox(width: Get.width / 50),
                                PopupMenuButton(
                                  color: AppColor.Full_body_color,
                                  onSelected: (value) {
                                    print(value);
                                  },
                                  itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry>[
                                    PopupMenuItem(value: 1, child: Text('All')),
                                    PopupMenuItem(value: 2, child: Text('Last 7 Days')),
                                    PopupMenuItem(value: 3, child: Text('Last 30 Days')),
                                    PopupMenuItem(value: 4, child: Text('Last 6 Months')),
                                    PopupMenuItem(value: 5, child: Text('Last 1 Year')),
                                  ],
                                  child: SvgPicture.asset(AppIcons.dots),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        TextField(
                          decoration: InputDecoration(
                            hintText: Search_text.Keyword,
                            hintStyle: TextStyle(color: AppColor.subcolor),
                            prefixIcon: Icon(Icons.search, color: AppColor.subcolor),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                          ),
                        ),
                        SizedBox(height: Get.height / 50),
                        Consumer<UserSearchController>(
                          builder: (context, searchController, child) {
                            return GestureDetector(
                              onTap: () {
                                showBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context, setState) {
                                        return Container(
                                          height: Get.height / 1.18,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                              color: AppColor.Full_body_color,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(Get.width/50),
                                              topRight: Radius.circular(Get.width/50),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: Get.height / 30),
                                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                          itemCount: searchController.country.countrylist['data'].length,
                                                          itemBuilder: (BuildContext context, int index) {
                                                            bool isSelected = searchController.selectedCountryId == searchController.country.countrylist['data'][index]['CountryId'];
                                                            return GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  searchController.updateCountrySelection(
                                                                    countryId: searchController.country.countrylist['data'][index]['CountryId'],
                                                                    provinceList: searchController.country.countrylist['data'][index]['ProvinceList'] ?? [],
                                                                  );
                                                                });
                                                              },
                                                              child: Container(
                                                                margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                                                                width: Get.width / 4,
                                                                height: Get.height / 20,
                                                                decoration:
                                                                BoxDecoration(borderRadius: BorderRadius.circular(Get.width / 50),
                                                                  color: isSelected ? AppColor.Button_color : AppColor.Full_body_color,
                                                                ),
                                                                child: Center(
                                                                  child: Text(searchController.country.countrylist['data'][index]['Country'],
                                                                    textAlign: TextAlign.center,
                                                                    style: TextStyle(fontSize: Get.width / 28,
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
                                                      (searchController.selectedCountryId != null && searchController.states.isNotEmpty) ? Expanded(
                                                        child: ListView.builder(
                                                          itemCount: searchController.states.length,
                                                          itemBuilder: (BuildContextcontext, int index) {
                                                            bool isStateSelected = searchController.selectedState == searchController.states[index]['Name'];
                                                            return GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                      searchController.updateStateSelection(searchController.states[index]['Name']);
                                                                      if (widget.onLocationSelected != null) {
                                                                        widget.onLocationSelected!(searchController.selectedCountryId!, searchController.selectedState);
                                                                      }
                                                                    });
                                                                Get.back();
                                                              },
                                                              child:
                                                              Container(
                                                                margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                                                                width: Get.width / 4,
                                                                height: Get.height / 20,
                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(Get.width / 50),
                                                                  color: isStateSelected ? AppColor.Button_color : AppColor.Full_body_color,
                                                                ),
                                                                child:
                                                                Center(
                                                                  child: Text(
                                                                      searchController.states[index]['Name'],
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          fontSize: Get.width / 28,
                                                                          color: isStateSelected ? AppColor.Full_body_color : AppColor.black_all
                                                                      )
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ) : Container(),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: Get.height / 30),
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
                                  border: Border(bottom: BorderSide(color: AppColor.Bottam_color)),
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
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(LiveJobsDitails());
                      },
                      child: Container(
                        width: size.width,
                        margin: EdgeInsets.only(left: Get.width / 30, right: Get.width / 30, top: Get.height / 60),
                        padding: EdgeInsets.symmetric(horizontal: Get.width / 30, vertical: Get.height / 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.width / 50),
                          color: AppColor.Full_body_color,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Job Title ${index + 1}', style: TextStyle(fontSize: Get.width / 25, fontWeight: FontWeight.bold)),
                                SizedBox(height: Get.height / 80),
                                Text('Company Name ${index + 1}', style: TextStyle(fontSize: Get.width / 30, color: AppColor.subcolor)),
                                SizedBox(height: Get.height / 80),
                                Text('Location ${index + 1}', style: TextStyle(fontSize: Get.width / 30, color: AppColor.subcolor)),
                              ],
                            ),
                            Column(
                              children: [
                                Text('\$${(index + 1) * 10000}', style: TextStyle(fontSize: Get.width / 30, fontWeight: FontWeight.bold)),
                                SizedBox(height: Get.height / 80),
                                Text('Posted ${index + 1}d ago', style: TextStyle(fontSize: Get.width / 30, color: AppColor.subcolor)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: 10, // Number of items in the list
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}