// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Listing

class Area_List extends StatelessWidget {
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  const Area_List({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: itemCount, itemBuilder: itemBuilder);
  }
}

class Area_Containers extends StatefulWidget {
  final void Function()? onTap;
  final String Listing;
  final Color Button_color;
  final Color text_color;

  const Area_Containers({
    super.key,
    this.onTap,
    required this.Listing,
    required this.Button_color,
    required this.text_color,
  });

  @override
  State<Area_Containers> createState() => _Area_ContainersState();
}

class _Area_ContainersState extends State<Area_Containers> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
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
          color: widget.Button_color,
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            widget.Listing,
            style: TextStyle(
              fontSize: Get.width / 28,
              color: widget.text_color,
            ),
          ),
        ),
      ),
    );
  }
}