import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constant/color_helper.dart';

class ToastMsg {
  ToastMsg._();

  static showToast({required String msg}) {
    Fluttertoast.showToast(
        msg: msg,
        backgroundColor: ColorHelper.buttonColor,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG);
  }
}
