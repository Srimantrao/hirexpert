// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Location/jobtype_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Location/preferencetype_API_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/showpop/showdialog.dart';
import 'package:provider/provider.dart';
import '../../../../../controller/User_Controller/Candidate_Controller/DropdownController/PreferenceController.dart';
import '../../../../../modal/bottamsheet/Location_list.dart';

//Job type Preference?
class Preference extends StatefulWidget {
  const Preference({super.key});

  @override
  State<Preference> createState() => _PreferenceState();
}
class _PreferenceState extends State<Preference> {
  JobtypeApiController Jobtype = Get.put(JobtypeApiController());

  @override
  void initState() {
    Future.microtask(() {
      Jobtype.JobtypeApiController_Fuction();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Perfernce = Provider.of<PreferenceController>(
      context,
      listen: false,
    );
    return Consumer<PreferenceController>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            Perfernce.isselect_true();
            Showdialog.showdialod(
                height: Get.height / 3,
                context: context,
                colamWidget: Obx(() {
                  if (Jobtype.isloding.value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (Jobtype.jobtype_data == null) {
                    return const Center(
                      child: Text("No Data"),
                    );
                  } else {
                    return SizedBox(
                      height: Get.height / 3,
                      child: ListView.builder(
                        itemCount: Jobtype.jobtype_data['data'].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Get.width / 30,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 50),
                                GestureDetector(
                                  onTap: () {
                                    Perfernce.Select(
                                        Jobtype.jobtype_data['data'][index]);
                                  },
                                  child: Text(
                                    Jobtype.jobtype_data['data'][index],
                                    style: TextStyle(
                                      fontSize: Get.width / 27,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }
                }),
                hedingtext: Location_text.preference,
                onTabs: () {
                  Perfernce.isselect_false();
                });
          },
          child: Container(
            height: Get.height / 17,
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
                Row(
                  children: [
                    Text(
                      (Perfernce.isselect)
                          ? Location_text.Select
                          : Perfernce.select,
                      style: TextStyle(
                        fontSize: Get.width / 23,
                      ),
                    ),
                  ],
                ),
                (Perfernce.isselect)
                    ? SvgPicture.asset(
                        AppIcons.Right,
                        color: AppColor.Bottam_color,
                      )
                    : SvgPicture.asset(
                        AppIcons.down,
                        color: AppColor.Bottam_color,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//Current Working Location?
class Location_fild extends StatefulWidget {
  const Location_fild({super.key});

  @override
  State<Location_fild> createState() => _Location_fildState();
}
class _Location_fildState extends State<Location_fild> {
  int State = -1;
  int Gujarat = -1;
  int Maharastrya = -1;

  String ontext = "";

  ValueNotifier<bool> isState = ValueNotifier<bool>(false);

  void ValueNotif() {
    isState.value = true;
  }

  void Showbottem() async {
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
                        Text(Location_text.Location, style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 23)),
                        InkWell(onTap: () {Get.back();},
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
                                      onTap: () {State = index;setState(() {});},
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
                                                  itemBuilder: (BuildContext context, int index) {
                                                    return InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          Gujarat = index;
                                                          ValueNotif();
                                                          ontext = Area_Gujarat[index];
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
                                                          color: (Gujarat == index)
                                                              ? AppColor.Button_color
                                                              : AppColor.Full_body_color,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            Area_Gujarat[index],
                                                            style: TextStyle(
                                                              fontSize: Get.width / 28,
                                                              color: (Gujarat == index)
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
                                            : const SizedBox(),
                                        (State == 1)
                                            ? SizedBox(
                                                height: Get.height / 3,
                                                width: Get.width / 4,
                                                child: ListView.builder(
                                                  itemCount: Area_Maharashtra.length,
                                                  itemBuilder: (BuildContextcontext, int index) {
                                                    return InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          Maharastrya = index;
                                                          ValueNotif();
                                                          ontext = Area_Maharashtra[index];
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
                                                          color: (Maharastrya == index)
                                                              ? AppColor.Button_color
                                                              : AppColor.Full_body_color,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            Area_Maharashtra[index],
                                                            style: TextStyle(
                                                              fontSize:
                                                                  Get.width / 28,
                                                              color: (Maharastrya == index)
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
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Showbottem();
      },
      child: Container(
        height: Get.height / 17,
        width: Get.width,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.Bottam_color,
            ),
          ),
        ),
        child: ValueListenableBuilder(
          valueListenable: isState,
          builder: (BuildContext context, value, Widget? child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (value)
                    ? Text(
                        ontext,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                        ),
                      )
                    : Text(
                        Location_text.Select,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                        ),
                      ),
                SvgPicture.asset(
                  AppIcons.down,
                  color: AppColor.Bottam_color,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

//Preffered Work Preffered?
class Preffered extends StatefulWidget {
  const Preffered({super.key});

  @override
  State<Preffered> createState() => _PrefferedState();
}
class _PrefferedState extends State<Preffered> {
  int State = -1;

  int Gujarat = -1;
  List<bool> selectedGujaratAreas =
      List.generate(Area_Gujarat.length, (index) => false);

  int Maharastrya = -1;
  List<bool> selectedMaharashtraAreas =
      List.generate(Area_Maharashtra.length, (index) => false);

  String ontext = "";
  String ontext2 = "";

  ValueNotifier<bool> isArea = ValueNotifier<bool>(false);

  void isArea_fun() {
    isArea.value = true;
  }

  void ShowBottam() async {
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
                                                        if (State == 0) {
                                                          selectedGujaratAreas[
                                                                  index] =
                                                              !selectedGujaratAreas[
                                                                  index];
                                                          isArea_fun();
                                                          ontext = Area_Gujarat[
                                                              index];
                                                          ontext2 =
                                                              Area_Gujarat[
                                                                  index];
                                                        }
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
                                                        color: (selectedGujaratAreas[
                                                                index])
                                                            ? AppColor
                                                                .Button_color
                                                            : AppColor
                                                                .Full_body_color,
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          Area_Gujarat[index],
                                                          style: TextStyle(
                                                            fontSize:
                                                                Get.width / 28,
                                                            color: (selectedGujaratAreas[
                                                                    index])
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
                                                        isArea_fun();
                                                        ontext =
                                                            Area_Maharashtra[
                                                                index];
                                                        if (State == 1) {
                                                          selectedMaharashtraAreas[
                                                                  index] =
                                                              !selectedMaharashtraAreas[
                                                                  index];
                                                        }
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
                                                        color: (selectedMaharashtraAreas[
                                                                index])
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
                                                            color: (selectedMaharashtraAreas[
                                                                    index])
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
                                    selectedGujaratAreas[0];
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
    return InkWell(
      onTap: () {
        ShowBottam();
      },
      child: Container(
        height: Get.height / 17,
        width: Get.width,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.Bottam_color,
            ),
          ),
        ),
        child: ValueListenableBuilder(
          valueListenable: isArea,
          builder: (BuildContext context, value, Widget? child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (value)
                    ? Row(
                        children: [
                          Container(
                            width: Get.width / 4,
                            height: Get.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Get.width / 60,
                              ),
                              color: AppColor.Button_color,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    ontext,
                                    style: TextStyle(
                                      color: AppColor.Full_body_color,
                                      fontSize: Get.width / 28,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      AppIcons.cancel,
                                      color: AppColor.Full_body_color,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: Get.width / 50),
                          Container(
                            width: Get.width / 4,
                            height: Get.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Get.width / 60,
                              ),
                              color: AppColor.Button_color,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    ontext2,
                                    style: TextStyle(
                                      color: AppColor.Full_body_color,
                                      fontSize: Get.width / 28,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      AppIcons.cancel,
                                      color: AppColor.Full_body_color,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Text(
                        Location_text.Select,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                        ),
                      ),
                SvgPicture.asset(
                  AppIcons.down,
                  color: AppColor.Bottam_color,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

//Your Perferred Setup?
class Setup extends StatefulWidget {
  const Setup({super.key});

  @override
  State<Setup> createState() => _SetupState();
}
class _SetupState extends State<Setup> {
  bool isselect = true;
  String select = "";

  PreferencetypeApiController Preferencetype =
      Get.put(PreferencetypeApiController());

  @override
  void initState() {
    Future.microtask(() {
      Preferencetype.PreferencetypeApiController_fuction();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Setup = Provider.of<SetupController>(context, listen: false);
    return Consumer<SetupController>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            Setup.isselect_true();
            Showdialog.showdialod(
              height: Get.height / 5,
              context: context,
              colamWidget: Obx(() {
                if (Preferencetype.islodind.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (Preferencetype.Preferencetype_data == null) {
                  return const Center(
                    child: Text("No Data"),
                  );
                } else {
                  return SizedBox(
                    height: Get.height / 5,
                    child: ListView.builder(
                      itemCount:
                          Preferencetype.Preferencetype_data['data'].length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: Get.height / 50),
                            GestureDetector(
                              onTap: () {
                                Setup.Select(Preferencetype
                                    .Preferencetype_data['data'][index]);
                              },
                              child: Text(
                                Preferencetype.Preferencetype_data['data']
                                    [index],
                                style: TextStyle(
                                  fontSize: Get.width / 27,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                }
              }),
              hedingtext: Location_text.Work,
              onTabs: () {
                Setup.isselect_false();
              },
            );
          },
          child: Container(
            height: Get.height / 17,
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
                (Setup.isselect)
                    ? Text(
                        Location_text.Select,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                        ),
                      )
                    : Text(
                        Setup.select,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                        ),
                      ),
                (Setup.isselect)
                    ? SvgPicture.asset(
                        AppIcons.Right,
                        color: AppColor.Bottam_color,
                      )
                    : SvgPicture.asset(
                        AppIcons.down,
                        color: AppColor.Bottam_color,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
