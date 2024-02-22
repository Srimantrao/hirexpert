// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../modal/bottamsheet/Location_list.dart';
import '../../../app_String.dart';
import '../../../app_color.dart';
import '../../../app_icon.dart';
import '../../Buttons/wideButtons.dart';

ValueNotifier<bool> isState = ValueNotifier<bool>(false);

void ValueNotif() {
  isState.value = true;
}

int State = -1;
int Gujarat = -1;
int Maharastrya = -1;

String ontext = "";
class Bottomsheet {
  static void appModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
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
                                      State = index;
                                      setState(() {});
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
                                                        ValueNotif();
                                                        ontext =
                                                            Area_Gujarat[index];
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
                                                        child: Text(
                                                          Area_Gujarat[index],
                                                          style: TextStyle(
                                                            fontSize:
                                                                Get.width / 28,
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
                                                        ValueNotif();
                                                        ontext =
                                                            Area_Maharashtra[
                                                                index];
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
                                                        child: Text(
                                                          Area_Maharashtra[
                                                              index],
                                                          style: TextStyle(
                                                            fontSize:
                                                                Get.width / 28,
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
}
