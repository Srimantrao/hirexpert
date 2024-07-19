// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, annotate_overrides, file_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Animationcontrollers extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<double> slideAnimation;
  late Animation<double> opacityAnimations;

  void onInit() {
    super.onInit();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    slideAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    opacityAnimations = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    animationController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
