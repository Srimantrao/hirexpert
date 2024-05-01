// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import '../../../../../../modal/Job/jobSearch_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/common/List/Saved.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          My_Jobs_Screen.Saved,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          const Icon(Icons.notifications),
          SizedBox(width: size.width / 50),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 50),
          child: (saveshowjob.isEmpty)
              ? const Center(
                  child: Text("File is Empty !"),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width / 30,
                  ),
                  child: const Seved_List(),
                ),
        ),
      ),
    );
  }
}