// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_print, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Location/jobtype_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Pop_Collection/CountryList_pop_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/showpop/showbottam.dart';
import 'package:hirexpert/view/utils/common/showpop/showdialog.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/DropdownController/PreferenceController.dart';
import '../../../utils/aap_image.dart';
import '../../../utils/common/Popup/Candidate/Location_comm.dart';
import 'choose_file.dart';

class Location extends StatefulWidget {
  final String? first_name;
  final String? last_name;

  Location({super.key, this.first_name, this.last_name});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final JobtypeApiController Jobtype = Get.put(JobtypeApiController());
  final CountrylistPopController country = Get.put(CountrylistPopController());

  @override
  void initState() {
    Future.microtask(() async {
      Jobtype.JobtypeApiController_Fuction();
      await country.CountrylistPopController_fuction();
    });
    super.initState();
  }

  bool preference = false;
  String preference_string = '';

  bool cuntrycode1 = false;
  String cuntrycodevalue1 = '';
  String selectedState1 = '';

  bool cuntrycode2 = false;
  String cuntrycodevalue2 = '';
  String selectedStat2 = '';


  List states = [];
  List<String> selectedStates = [];


  ValueNotifier<bool> isState = ValueNotifier<bool>(false);

  void ValueNotif() {
    isState.value = true;
  }

  @override
  Widget build(BuildContext context) {
    final Work = Provider.of<SetupController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset(AppImage.profile, scale: 5)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.first_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                      SizedBox(width: Get.width / 50),
                      Text(widget.last_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                    ],
                  ),
                  SizedBox(height: Get.height / 20),

                  //Preference
                  Text(Location_text.preference, style: TextStyle(fontSize: Get.width / 25, color: AppColor.subcolor)),
                  GestureDetector(
                    onTap: () {
                      Showdialog.showdialod(
                        context: context,
                        height: Get.height / 1.5,
                        colamWidget: SizedBox(
                          height: Get.height / 1.5,
                          child: ListView.builder(
                            itemCount: Jobtype.jobtype_data['data'].length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        preference = true;
                                        preference_string = Jobtype.jobtype_data['data'][index];
                                        Get.back();
                                      });
                                    },
                                    child: Text(
                                      Jobtype.jobtype_data['data'][index],
                                      style: TextStyle(
                                        fontSize: Get.width / 28,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Get.height / 50),
                                ],
                              );
                            },
                          ),
                        ),
                        hedingtext: Location_text.preference,
                        onTabs: () {Get.back();},
                      );
                    },
                    child: Pop_Container(
                      text: Location_text.Select,
                      condition: preference,
                      text2: preference_string,
                    ),
                  ),
                  // const Preference(),
                  SizedBox(height: Get.height / 50),

                  //Current Location
                  Text(
                    Location_text.Location,
                    style: TextStyle(
                      fontSize: Get.width / 25,
                      color: AppColor.subcolor,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (BuildContext context, void Function(void Function()) setState) {
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
                                          Text(Location_text.Location, style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 23)),
                                          GestureDetector(
                                            onTap: () {Get.back();},
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
                                                itemCount: country.countrylist['data'].length,
                                                itemBuilder: (BuildContext context, int index) {
                                                  bool isSelected = cuntrycodevalue1 == country.countrylist['data'][index]['CountryId'];
                                                  return GestureDetector(
                                                    onTap: () {
                                                      cuntrycode1 = true;
                                                      cuntrycodevalue1 = country.countrylist['data'][index]['CountryId'];
                                                      states = country.countrylist['data'][index]['ProvinceList'];
                                                      print(cuntrycodevalue1);
                                                      selectedState1 = '';
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                                                      width: Get.width / 4,
                                                      height: Get.height / 20,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(Get.width / 50),
                                                        color: isSelected
                                                            ? AppColor.Button_color
                                                            : AppColor.Full_body_color,
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          textAlign: TextAlign.center,
                                                          country.countrylist['data'][index]['Country'],
                                                          style: TextStyle(
                                                            fontSize: Get.width / 28,
                                                            color: isSelected
                                                                ? AppColor.Full_body_color
                                                                : AppColor.black_all,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 30),
                                            cuntrycode1
                                                ? Expanded(
                                                    child: ListView.builder(
                                                      itemCount: states.length,
                                                      itemBuilder: (BuildContext context, int index) {
                                                        bool isStateSelected = selectedState1 == states[index]['Name'];
                                                        return GestureDetector(
                                                          onTap: () {
                                                            selectedState1 = states[index]['Name'];
                                                            print(selectedState1);
                                                            ValueNotif();
                                                            Get.back();
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                                                            width: Get.width / 4,
                                                            height: Get.height / 20,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(Get.width / 50),
                                                              color: isStateSelected
                                                                  ? AppColor.Button_color
                                                                  : AppColor.Full_body_color,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                textAlign: TextAlign.center,
                                                                states[index]['Name'],
                                                                style: TextStyle(
                                                                  fontSize: Get.width / 28,
                                                                  color: isStateSelected
                                                                      ? AppColor.Full_body_color
                                                                      : AppColor.black_all,
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
                    child: ValueListenableBuilder(
                      valueListenable: isState,
                      builder: (BuildContext context, bool value, Widget? child) {
                        return Pop_Container(
                          text: Location_text.Select,
                          condition: cuntrycode1,
                          text2: selectedState1,
                        );
                      },
                    ),
                  ),

                  // const Location_fild(),
                  SizedBox(height: Get.height / 50),

                  //Preferred Location
                  Text(Location_text.Preffered, style: TextStyle(fontSize: Get.width / 25, color: AppColor.subcolor)),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (BuildContext context, void Function(void Function()) setState) {
                              List<String> selectedStates = [];
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
                                          Text(Location_text.Location, style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 23)),
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
                                                itemCount: country.countrylist['data'].length,
                                                itemBuilder: (BuildContext context, int index) {
                                                  bool isSelected = cuntrycodevalue2 == country.countrylist['data'][index]['CountryId'];
                                                  return GestureDetector(
                                                    onTap: () {
                                                      cuntrycode2 = true;
                                                      cuntrycodevalue2 = country.countrylist['data'][index]['CountryId'];
                                                      states = country.countrylist['data'][index]['ProvinceList'];
                                                      print(cuntrycodevalue2);
                                                      selectedStates.clear();
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                                                      width: Get.width / 4,
                                                      height: Get.height / 20,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(Get.width / 50),
                                                        color: isSelected
                                                            ? AppColor.Button_color
                                                            : AppColor.Full_body_color,
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          textAlign: TextAlign.center,
                                                          country.countrylist['data'][index]['Country'],
                                                          style: TextStyle(
                                                            fontSize: Get.width / 28,
                                                            color: isSelected
                                                                ? AppColor.Full_body_color
                                                                : AppColor.black_all,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 30),
                                            (cuntrycode2)
                                                ? Expanded(
                                              child: ListView.builder(
                                                itemCount: states.length,
                                                itemBuilder: (BuildContext context, int index) {
                                                  bool isStateSelected = selectedStates.contains(states[index]['Name']);
                                                  return GestureDetector(
                                                    onTap: () {
                                                      if (isStateSelected) {
                                                        selectedStates.remove(states[index]['Name']);
                                                      } else {
                                                        selectedStates.add(states[index]['Name']);
                                                      }
                                                      print(selectedStates);
                                                      ValueNotif();
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      margin: EdgeInsets.symmetric(vertical: Get.width / 60),
                                                      width: Get.width / 4,
                                                      height: Get.height / 20,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(Get.width / 50),
                                                        color: isStateSelected
                                                            ? AppColor.Button_color
                                                            : AppColor.Full_body_color,
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          textAlign: TextAlign.center,
                                                          states[index]['Name'],
                                                          style: TextStyle(
                                                            fontSize: Get.width / 28,
                                                            color: isStateSelected
                                                                ? AppColor.Full_body_color
                                                                : AppColor.black_all,
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
                    child: ValueListenableBuilder(
                      valueListenable: isState,
                      builder: (BuildContext context, bool value, Widget? child) {
                        return Pop_Container(
                          text: Location_text.Select,
                          condition: cuntrycode2,
                          text2: selectedStates.join(selectedStat2),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Setup
                  Text(
                    Location_text.Work,
                    style: TextStyle(
                      fontSize: Get.width / 25,
                      color: AppColor.subcolor,
                    ),
                  ),
                  const Setup(),
                ],
              ),

              //Buttons
              Consumer<SetupController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Row(
                              children: [
                                SvgPicture.asset(AppIcons.Backarrow),
                                SizedBox(width: Get.width / 70),
                                Text(
                                  Navigator_text.Back,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Get.width / 23,
                                    color: AppColor.Button_color,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Work.isnext_fun();
                              Get.to(() => const Choose());
                            },
                            child: Row(
                              children: [
                                Text(
                                  Navigator_text.Next,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Get.width / 23,
                                    color: (Work.isnext)
                                        ? AppColor.Button_color
                                        : AppColor.Botton_color_hide,
                                  ),
                                ),
                                SizedBox(width: Get.width / 70),
                                SvgPicture.asset(
                                  AppIcons.Go,
                                  color: (Work.isnext)
                                      ? AppColor.Button_color
                                      : AppColor.Botton_color_hide,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 50),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
