// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../controller/ButtonsController/SearchButtonsController.dart';
import '../../../../modal/bottamsheet/Location_list.dart';
import '../../../utils/app_String.dart';
import '../../../utils/app_color.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/common/Buttons/wideButtons.dart';
import 'Search_find.dart';

class Search_location extends StatefulWidget {
  const Search_location({super.key});

  @override
  State<Search_location> createState() => _Search_locationState();
}

class _Search_locationState extends State<Search_location> {
  int State = -1;
  int Gujarat = -1;
  int Maharastrya = -1;

  String select = "";

  ValueNotifier<bool> selectboll = ValueNotifier<bool>(false);

  void selectboll_fun() {
    selectboll.value = true;
  }

  void showbottming() async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Get.width / 30),
              topRight: Radius.circular(Get.width / 30),
            ),
            color: AppColor.Full_body_color,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height / 15,
                  width: Get.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.Bottam_color,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(
                        Location_text.Location,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Get.width / 23,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(AppIcons.cancel),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height / 50),
                StatefulBuilder(
                  builder: (BuildContext context,
                      void Function(void Function()) setState) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //State List
                            SizedBox(
                              height: Get.height / 2.5,
                              width: Get.width / 4,
                              child: ListView.builder(
                                itemCount: State_list.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        State = index;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        vertical: Get.width / 60,
                                      ),
                                      width: Get.width / 4,
                                      height: Get.height / 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width / 50,
                                        ),
                                        color: (State == index)
                                            ? AppColor.Button_color
                                            : AppColor.Full_body_color,
                                      ),
                                      child: Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          State_list[index],
                                          style: TextStyle(
                                            fontSize: Get.width / 28,
                                            color: (State == index)
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

                            //Aria List
                            (State == 0 || State == 1)
                                ? Row(
                              children: [
                                (State == 0)
                                    ? SizedBox(
                                  height: Get.height / 3,
                                  width: Get.width / 4,
                                  child: ListView.builder(
                                    itemCount: Area_Gujarat.length,
                                    itemBuilder:
                                        (BuildContext context,
                                        int index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            Gujarat = index;
                                          });
                                        },
                                        child: Container(
                                          margin:
                                          EdgeInsets.symmetric(
                                            vertical:
                                            Get.width / 60,
                                          ),
                                          width: Get.width / 4,
                                          height: Get.height / 20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                              Get.width / 50,
                                            ),
                                            color: (Gujarat ==
                                                index)
                                                ? AppColor
                                                .Button_color
                                                : AppColor
                                                .Full_body_color,
                                          ),
                                          child: Center(
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(
                                                      () {
                                                    Gujarat = index;
                                                    selectboll_fun();
                                                    select =
                                                    Area_Gujarat[
                                                    index];
                                                  },
                                                );
                                              },
                                              child: Text(
                                                textAlign: TextAlign
                                                    .center,
                                                Area_Gujarat[index],
                                                style: TextStyle(
                                                  fontSize:
                                                  Get.width /
                                                      28,
                                                  color: (Gujarat ==
                                                      index)
                                                      ? AppColor
                                                      .Full_body_color
                                                      : AppColor
                                                      .black_all,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                                    : const SizedBox(),
                                (State == 1)
                                    ? SizedBox(
                                  height: Get.height / 3,
                                  width: Get.width / 4,
                                  child: ListView.builder(
                                    itemCount:
                                    Area_Maharashtra.length,
                                    itemBuilder:
                                        (BuildContext context,
                                        int index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            Maharastrya = index;
                                          });
                                        },
                                        child: Container(
                                          margin:
                                          EdgeInsets.symmetric(
                                            vertical:
                                            Get.width / 60,
                                          ),
                                          width: Get.width / 4,
                                          height: Get.height / 20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                              Get.width / 50,
                                            ),
                                            color: (Maharastrya ==
                                                index)
                                                ? AppColor
                                                .Button_color
                                                : AppColor
                                                .Full_body_color,
                                          ),
                                          child: Center(
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  Maharastrya =
                                                      index;
                                                  selectboll_fun();
                                                  select =
                                                  Area_Maharashtra[
                                                  index];
                                                });
                                              },
                                              child: Text(
                                                textAlign: TextAlign
                                                    .center,
                                                Area_Maharashtra[
                                                index],
                                                style: TextStyle(
                                                  fontSize:
                                                  Get.width /
                                                      28,
                                                  color: (Maharastrya ==
                                                      index)
                                                      ? AppColor
                                                      .Full_body_color
                                                      : AppColor
                                                      .black_all,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                                    : const SizedBox(),
                              ],
                            )
                                : const SizedBox(),
                          ],
                        ),
                        (State == 0 || State == 1 || State == 2 || State == 3)
                            ? InkWell(
                          onTap: () {
                            setState(() {
                              Gujarat = 0;
                              Get.back();
                            });
                          },
                          child: OnButtons(
                            Button_Color: AppColor.Button_color,
                            btn_name: Location_text.Save,
                          ),
                        )
                            : const SizedBox(),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Buttingchang = Provider.of<SearchButtonsController>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: const Text(
          Search_text.Search_Jobss,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Text(
              Search_text.cancel,
              style: TextStyle(
                color: AppColor.Error_color,
                fontWeight: FontWeight.w600,
                fontSize: Get.width / 23,
              ),
            ),
          ),
          SizedBox(width: Get.width / 40),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: Search_text.Keyword,
                      hintStyle: TextStyle(
                        color: AppColor.subcolor,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColor.subcolor,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  Consumer<SearchButtonsController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return InkWell(
                        onTap: () {
                          showbottming();
                          Buttingchang.Savebuttons_fun();
                          setState(() {});
                        },
                        child: Container(
                          height: Get.height / 15,
                          width: Get.width,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColor.Bottam_color,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: Get.width / 30),
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColor.subcolor,
                              ),
                              SizedBox(width: Get.width / 40),
                              ValueListenableBuilder(
                                valueListenable: selectboll,
                                builder: (BuildContext context, value,
                                    Widget? child) {
                                  return (value)
                                      ? Text(
                                    select,
                                    style: TextStyle(
                                      color: AppColor.black_all,
                                      fontSize: Get.width / 24,
                                    ),
                                  )
                                      : Text(
                                    Search_text.Select_Location,
                                    style: TextStyle(
                                      color: AppColor.subcolor,
                                      fontSize: Get.width / 24,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
              Consumer<SearchButtonsController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    children: [
                      (Buttingchang.Savebutton)
                          ? const Search_find()
                          : const SizedBox(),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
