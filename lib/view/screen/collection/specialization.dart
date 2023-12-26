// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:provider/provider.dart';
import '../../../controller/DropdownController/Specialization_con.dart';

class Specialization extends StatefulWidget {
  const Specialization({super.key});

  @override
  State<Specialization> createState() => _SpecializationState();
}

class _SpecializationState extends State<Specialization> {
  @override
  Widget build(BuildContext context) {
    final Special = Provider.of<SpecializationController>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height / 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 70),
                  ],
                ),
                SizedBox(height: Get.height / 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HI,",
                      style: TextStyle(
                        fontSize: Get.width / 18,
                      ),
                    ),
                    Text(
                      "HI,",
                      style: TextStyle(
                        fontSize: Get.width / 18,
                      ),
                    ),
                    Text(
                      "HI,",
                      style: TextStyle(
                        fontSize: Get.width / 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height / 20),
                Text(
                  Specialization_text.area,
                  style: TextStyle(
                    fontSize: Get.width / 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.Bottam_color,
                      ),
                    ),
                  ),
                  child: Consumer<SpecializationController>(
                    builder: (
                      BuildContext context,
                      value,
                      Widget? child,
                    ) {
                      return DropdownButton<String>(
                        icon: const Icon(Icons.downloading),
                        isExpanded: true,
                        value: Special.Selectitem,
                        items: Special.item.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (value) {
                          Special.Functional(value!);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
