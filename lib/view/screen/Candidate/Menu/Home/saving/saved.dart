// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/isFavration_Controllers.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Search/Search_Hendal.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/common/List/Saved.dart';

class Saved extends StatelessWidget {
  final SearchHendal Searchings = Get.put(SearchHendal());
  final IsfavrationControllers isfavication = Get.put(IsfavrationControllers());
  final OptionApiController login = Get.put(OptionApiController());
  Saved({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(My_Jobs_Screen.Saved, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [Icon(Icons.notifications), SizedBox(width: size.width / 50)],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 50),
          child: (isfavication.isFavration.value.status)
              ? Center(child: Text("File is Empty !"))
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width / 30),
                  child: Seved_List(),
                ),
        ),
      ),
    );
  }
}
