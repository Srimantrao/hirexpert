// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastificationError{
  static void Error(String description){
    toastification.show(
        dragToClose: true,
        description: Text(description),
        dismissDirection: DismissDirection.startToEnd,
        type: ToastificationType.error,
        style: ToastificationStyle.minimal,
        autoCloseDuration: Duration(seconds: 5),
        boxShadow: kElevationToShadow[2]
    );
  }
}