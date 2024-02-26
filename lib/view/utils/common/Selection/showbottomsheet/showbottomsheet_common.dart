// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../modal/bottamsheet/Location_list.dart';
import '../../../app_String.dart';
import '../../../app_color.dart';
import '../../../app_icon.dart';
import '../../Buttons/wideButtons.dart';
import '../../List/Area_List.dart';

// ValueNotifier<bool> isState = ValueNotifier<bool>(false);

// void ValueNotif() {
//   ValueIsState.isState.value = true;
// }

class ValueIsState {
  static ValueNotifier<bool> isState = ValueNotifier<bool>(false);
}
class ValueNotifierHelper {
  static void setValue(bool value) {
    ValueIsState.isState.value = value;
  }
}
class States {
  static int State = -1;
}
class Gujarat {
  static int Gujarats = -1;
}
class Maharastrys {
  static int Maharastrya = -1;
}
class ontexts {
  static String ontext = "";
}

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
                  builder: (
                    BuildContext context,
                    void Function(void Function()) setState,
                  ) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //State List
                            SizedBox(
                              height: Get.height / 2.5,
                              width: Get.width / 4,
                              child: Area_List(
                                itemCount: State_list.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Area_Containers(
                                    onTap: () {
                                      setState(() {
                                        States.State = index;
                                      });
                                    },
                                    Listing: State_list[index],
                                    Button_color: (States.State == index)
                                        ? AppColor.Button_color
                                        : AppColor.Full_body_color,
                                    text_color: (States.State == index)
                                        ? AppColor.Full_body_color
                                        : AppColor.black_all,
                                  );
                                },
                              ),
                            ),

                            //Aria List
                            (States.State == 0 || States.State == 1)
                                ? Row(
                                    children: [
                                      (States.State == 0)
                                          ? SizedBox(
                                              height: Get.height / 3,
                                              width: Get.width / 4,
                                              child: Area_List(
                                                itemCount: Area_Gujarat.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Area_Containers(
                                                    onTap: () {
                                                      setState(() {
                                                        Gujarat.Gujarats =
                                                            index;
                                                        ValueNotifierHelper
                                                            .setValue(true);
                                                        ontexts.ontext =
                                                            Area_Gujarat[index];
                                                        print(Area_Gujarat[
                                                            index]);
                                                      });
                                                    },
                                                    Listing:
                                                        Area_Gujarat[index],
                                                    Button_color: (Gujarat
                                                                .Gujarats ==
                                                            index)
                                                        ? AppColor.Button_color
                                                        : AppColor
                                                            .Full_body_color,
                                                    text_color: (Gujarat
                                                                .Gujarats ==
                                                            index)
                                                        ? AppColor
                                                            .Full_body_color
                                                        : AppColor.black_all,
                                                  );
                                                },
                                              ),
                                            )
                                          : const SizedBox(),
                                      (States.State == 1)
                                          ? SizedBox(
                                              height: Get.height / 3,
                                              width: Get.width / 4,
                                              child: Area_List(
                                                itemCount:
                                                    Area_Maharashtra.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Area_Containers(
                                                    onTap: () {
                                                      setState(() {
                                                        Maharastrys
                                                                .Maharastrya =
                                                            index;
                                                        ValueNotifierHelper
                                                            .setValue(true);
                                                        ontexts.ontext =
                                                            Area_Maharashtra[
                                                                index];
                                                      });
                                                    },
                                                    Listing:
                                                        Area_Maharashtra[index],
                                                    Button_color: (Maharastrys
                                                                .Maharastrya ==
                                                            index)
                                                        ? AppColor.Button_color
                                                        : AppColor
                                                            .Full_body_color,
                                                    text_color: (Maharastrys
                                                                .Maharastrya ==
                                                            index)
                                                        ? AppColor
                                                            .Full_body_color
                                                        : AppColor.black_all,
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
                        (States.State == 0 ||
                                States.State == 1 ||
                                States.State == 2 ||
                                States.State == 3)
                            ? InkWell(
                                onTap: () {
                                  setState(() {
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
